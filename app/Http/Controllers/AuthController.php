<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function signup(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'age' => 'required',
            'gender' => 'required|string|max:10',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);
        if ($validator->fails()) {
            $data['data'] = null;
            $data['status'] =false;
            $data['message'] =$validator->errors()->first();
            return response()->json($data, 200);
        }
        $userCount = User::all();
        if(count($userCount) > 0)
        {
            $role = 'admin';
        }else{
            $role = 'user';

        }
        $user = User::create([
            'name' => $request->name,
            'age' => $request->age,
            'gender' => $request->gender,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => $role, // Add this line
        ]);
        $token = $user->createToken('auth_token')->plainTextToken;
        $user['token'] = $token;
        $user['token_type'] = 'Bearer';
        $data['data']=$user;
        $data['status'] = true;
        $data['message'] = 'User created successfully.';
        return response()->json($data, 200);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);
        if ($validator->fails()) {
            $data['data'] = null;
            $data['status'] =false;
            $data['message'] =$validator->errors()->first();
            return response()->json($data, 200);
        }
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(['message' => 'Invalid login details'], 401);
        }

        $user = Auth::user();
        $token = $user->createToken('auth_token')->plainTextToken;
        $user['token'] = $token;
        $user['token_type'] = 'Bearer';
        $data['data']=$user;
        $data['status'] = true;
        $data['message'] = 'User created successfully.';
        return response()->json($data, 200);
    }
    //
}
