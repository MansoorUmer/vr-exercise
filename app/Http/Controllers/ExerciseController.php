<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Exercise;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ExerciseController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'exercise_video' => 'required', // 20MB limit, adjust as needed
            'severity_level' => 'required', //
            'level_index' => 'required', //
        ]);
        if ($validator->fails()) {
            $data['data'] = null;
            $data['status'] =false;
            $data['message'] =$validator->errors()->first();
            return response()->json($data, 200);
        }

        if ($request->hasFile('exercise_video'))
        {
            $uploadedFiles = $request->file('exercise_video');

            $file = $uploadedFiles; // Handle a single file
            $filename = time() . '_' . $file->getClientOriginalName();
            if (!file_exists(public_path('uploads/videos/'))) {
                mkdir(public_path('uploads/videos/'), 0777, true);
            }
            $file->storeAs('uploads/' . $request->severity_level ,$filename);
            $folderPath = "uploads/media/" . $filename;

                // Store the file details in the database
            $exercise = Exercise::create([
                'name' => $request->name ?? '',
                'filename' => $folderPath,
                'severity_level' => $request->severity_level,
                'level_index' => $request->level_index,
            ]);
        }

        $data['data']=$exercise;
        $data['status'] = true;
        $data['message'] = 'Exercise Created Successfully.';
        return response()->json($data, 200);
    }

    public function index()
    {
        $exercises = Exercise::all();
        $data['data']=$exercises;
        $data['status'] = true;
        $data['message'] = 'Exercise List fetch successfully.';
        return response()->json($data, 200);
    }

    public function setCurrentExercise(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'exercise_id' => 'required|exists:exercises,id',
        ]);
        if ($validator->fails()) {
            $data['data'] = null;
            $data['status'] =false;
            $data['message'] =$validator->errors()->first();
            return response()->json($data, 200);
        }
        $user = Auth::user();
        $user->current_exercise_id = $request->exercise_id;
        $user->save();
        $user = User::where('id',$user->id)->get();

        $data['data'] = $user;
        $data['status'] =true;
        $data['message'] ='Current exercise set successfully';
        return response()->json($data, 200);
    }
}

