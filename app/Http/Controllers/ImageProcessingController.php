<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\Models\Image as ImageModel;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Symfony\Component\Process\Process;

class ImageProcessingController extends Controller
{
    public function processImages(Request $request)
    {
        $images = $request->input('images');
        $userId = Auth::user()->id; // Ensure user_id is provided
        $predictions = [];

        // Full path to the model file
        $modelPath = public_path('saved_model.h5');

        foreach ($images as $index => $base64Image) {
            // Decode and save the original image
            $decodedImage = base64_decode($base64Image);
            $originalImageName = 'original_image_' . $index . '.jpg';
            $originalImagePath = storage_path('app/public/originals/' . $originalImageName);
            Storage::put('public/originals/' . $originalImageName, $decodedImage);

            // Preprocess the image (resize) using GD Library
            $processedImageName = 'processed_image_' . $index . '.jpg';
            $processedImagePath = storage_path('app/public/processed/' . $processedImageName);

            $this->resizeImage($originalImagePath, $processedImagePath, 224, 224);

            // Store the image details in the database
            $image = new ImageModel();
            $image->user_id = $userId;
            $image->image_path = 'public/processed/' . $processedImageName;
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

    private function resizeImage($sourcePath, $destPath, $width, $height)
    {
        $imageType = exif_imagetype($sourcePath);
        dd($imageType);
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

        switch ($imageType) {
            case IMAGETYPE_JPEG:
                imagejpeg($image_p, $destPath, 90);
                break;
            case IMAGETYPE_PNG:
                imagepng($image_p, $destPath);
                break;
            case IMAGETYPE_GIF:
                imagegif($image_p, $destPath);
                break;
        }

        // Free up memory
        imagedestroy($image);
        imagedestroy($image_p);
    }
}


