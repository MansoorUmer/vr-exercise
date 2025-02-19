<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\Models\Image as ImageModel;
use Intervention\Image\Facades\Image as ImageFacade;
//use Intervention\Image\Image;
//use Intervention\Image\Facades\Image;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Symfony\Component\Process\Process;

class ImageProcessingController extends Controller
{
    public function processImagesold(Request $request)
    {
        $images = $request->input('images');
        $userId = Auth::user()->id; // Ensure user_id is provided
        $predictions = [];

        // Full path to the model file
        $modelPath = public_path('saved_model.h5');

        foreach ($images as $index => $base64Image) {
            // Decode and upload the original image
            $originalImagePath = $this->uploadImage($base64Image, 'originals/');
            // Preprocess the image (resize)
            $processedImagePath = $this->resizeImage($originalImagePath, 224, 224, 'processed/');

            // Store the image details in the database
            $image = new ImageModel();
            $image->user_id = $userId;
            $image->image_path = $processedImagePath;
            $image->save();

            // Call Python script to make prediction
            $process = new Process(['python3', base_path('/var/www/vr-excercise/predict.py'), $modelPath, $processedImagePath]);
            $process->run();

            if (!$process->isSuccessful()) {
                throw new ProcessFailedException($process);
            }

            $result = $process->getOutput();
            $predictions[] = ["image" => $index + 1, "result" => trim($result)];
        }

        return response()->json(['predictions' => $predictions], 200);
    }

    private function uploadImage($base64Image, $directory = '')
    {
            if (!empty($base64Image)) {
                $base64Image = explode(";base64,", $base64Image);
                $image_base64 = base64_decode($base64Image[1]);
                $filename = uniqid() . '.jpg';

                //Image Intervation
                $imageData = Image::make($image_base64)->resize(224,224);//->resize(500,500);
                $imageData->save(public_path('uploads/'.$filename));

                return 'uploads/' .$filename;
            }

        return '';
    }

    private function resizeImage($sourcePath, $width, $height, $directory)
    {
        if (!file_exists($sourcePath)) {
            throw new \Exception("Source file not found: $sourcePath");
        }

        $imageType = exif_imagetype($sourcePath);

        if ($imageType === false) {
            throw new \Exception("Unable to determine image type for file: $sourcePath");
        }

        switch ($imageType) {
            case IMAGETYPE_JPEG:
                $image = imagecreatefromjpeg($sourcePath);
                break;
            case IMAGETYPE_PNG:
                $image = imagecreatefrompng($sourcePath);
                break;
            case IMAGETYPE_GIF:
                $image = imagecreatefromgif($sourcePath);
                break;
            default:
                throw new \Exception('Unsupported image type.');
        }

        $originalWidth = imagesx($image);
        $originalHeight = imagesy($image);
        $image_p = imagecreatetruecolor($width, $height);

        if ($imageType == IMAGETYPE_PNG) {
            // Preserve transparency for PNG images
            imagealphablending($image_p, false);
            imagesavealpha($image_p, true);
            $transparent = imagecolorallocatealpha($image_p, 0, 0, 0, 127);
            imagefilledrectangle($image_p, 0, 0, $width, $height, $transparent);
        }

        imagecopyresampled($image_p, $image, 0, 0, 0, 0, $width, $height, $originalWidth, $originalHeight);

        $processedImageName = uniqid() . '.jpg';
        $processedImagePath = storage_path('app/public/' . $directory . $processedImageName);

        switch ($imageType) {
            case IMAGETYPE_JPEG:
                imagejpeg($image_p, $processedImagePath, 90);
                break;
            case IMAGETYPE_PNG:
                imagepng($image_p, $processedImagePath);
                break;
            case IMAGETYPE_GIF:
                imagegif($image_p, $processedImagePath);
                break;
        }

        // Free up memory
        imagedestroy($image);
        imagedestroy($image_p);

        return 'public/' . $directory . $processedImageName;
    }

    public function processImagesOldd(Request $request)
    {
        $images = $request->input('images');

        $tempDir = public_path('uploads');

        $predictions = [];
        foreach ($images as $index => $base64Image) {
            // Decode base64 image
            $imageBinary = base64_decode($base64Image);

            $filename = uniqid() . '.jpg';

            // Store image temporarily

            $imageData = Image::make($imageBinary);//->resize(500,500);
            $imageData->save(public_path('uploads/'.$filename));

//            $imagePath = $tempDir . '/' . $filename;
//            file_put_contents($imagePath, $imageBinary);

            // Call Python script for prediction
//            $command = 'python model.py ' . $imagePath;
            $process = new Process(['python3', base_path('predict.py'), $imageData]);
            $process->run();

//            $output = shell_exec($command);
//            $prediction = json_decode($output, true);

//            $predictions[] = ['image' => $index + 1, 'result' => $prediction['result']];
            if (!$process->isSuccessful()) {
                throw new ProcessFailedException($process);
            }

            $result = $process->getOutput();
            $predictions[] = ["image" => $index + 1, "result" => trim($result)];
            // Delete temporary image
//            unlink($imagePath);
        }

        return response()->json(['predictions' => $predictions]);
    }

    public function processImages(Request $request)
    {
        $images = $request->input('images');
        $userId = Auth::user()->id;
        $predictions = [];

        // Full path to the model file and virtual environment
        $modelPath = public_path('saved_model.h5');
        $venvPath = base_path('venv/bin/python3'); // Adjust the path to your venv's Python executable

        foreach ($images as $index => $base64Image) {
            // Decode the base64 image and save the original image
            $base64Image = explode(";base64,", $base64Image);
            $decodedImage = base64_decode($base64Image[1]);
            $originalImageName = 'original_image_' . $index . '.jpg';
            $originalImagePath = 'uploads/originals/' . $originalImageName;
            file_put_contents(public_path($originalImagePath), $decodedImage);

            // Preprocess the image (resize)
            $processedImage = ImageFacade::make(public_path($originalImagePath))->resize(224, 224)->encode('jpg');
            $processedImageName = 'processed_image_' . $index . '.jpg';
            $processedImagePath = 'uploads/processed/' . $processedImageName;
            file_put_contents(public_path($processedImagePath), (string) $processedImage);

            // Store the image details in the database
            $image = new \App\Models\Image();
            $image->user_id = $userId;
            $image->image_path = $processedImagePath;
            $image->save();

            // Call Python script to make prediction
            $process = new Process([$venvPath, base_path('predict.py'), $modelPath, public_path($processedImagePath)]);
            $process->run();

            // Log the output and error messages
            $processOutput = $process->getOutput();
            $processError = $process->getErrorOutput();

            if (!$process->isSuccessful()) {
                // Log the error for debugging
                \Log::error('Python Process Failed', [
                    'output' => $processOutput,
                    'error' => $processError,
                ]);

                throw new ProcessFailedException($process);
            }

            $result = trim($processOutput);
            $predictions[] = ["image" => $index + 1, "result" => $result];
        }

        return response()->json(['predictions' => $predictions], 200);
    }


}
