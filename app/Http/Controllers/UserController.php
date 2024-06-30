<?php

namespace App\Http\Controllers;

use App\Models\Report;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'severity_level' => 'required|string',
            'ex_percentage' => 'required',
            'exercise' => 'required|string',
            'content_instructions' => 'string',
        ]);
        if ($validator->fails()) {
            $data['data'] = null;
            $data['status'] =false;
            $data['message'] =$validator->errors()->first();
            return response()->json($data, 200);
        }
        $report = Report::create([
            'user_id' => Auth::id(),
            'severity_level' => $request->severity_level,
            'ex_percentage' => $request->ex_percentage,
            'exercise' => $request->exercise,
            'content_instructions' => $request->content_instructions ?? null,
        ]);
        $data['data']=$report;
        $data['status'] = true;
        $data['message'] = 'Report created successfully.';
        return response()->json($data, 200);
    }

    public function index()
    {
        $reports = Report::where('user_id', Auth::id())->get();
        if(count($reports) > 0)
        {
            $data['data']=$reports;
            $data['status'] = true;
            $data['message'] = 'Reports List fetch successfully.';
        }else{
            $data['data']=null;
            $data['status'] = false;
            $data['message'] = 'No reports find against this User.';
        }
        return response()->json($data, 200);
    }

    public function show($id)
    {
        $report = Report::where('user_id', Auth::id())->find($id);

        if($report)
        {
            $data['data']=$report;
            $data['status'] = true;
            $data['message'] = 'Report detail fetch successfully.';
        }else{
            $data['data']=null;
            $data['status'] = false;
            $data['message'] = 'No report find.';
        }
        return response()->json($data, 200);
    }

    public  function profile()
    {
        $user = Auth::user();
        $data['data']=$user;
        $data['status'] = true;
        $data['message'] = 'User profile fetch successfully.';
        return response()->json($data, 200);
    }
    //
}
