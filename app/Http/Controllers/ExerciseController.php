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
        ]);
        if ($validator->fails()) {
            $data['data'] = null;
            $data['status'] =false;
            $data['message'] =$validator->errors()->first();
            return response()->json($data, 200);
        }
        $exercise = Exercise::create([
            'name' => $request->name,
        ]);
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

