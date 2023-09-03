<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email'    => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(
                [
                    'success' => false,
                    'message' => $validator->errors(),
                    'data' => [],
                ],
                422
            );
        }

        $usersExist = User::where('email', $request->email)->exists();

        return response()->json([
            'success' => $usersExist,
            'message' => $usersExist == true ? 'Success' : 'User Not Found',
            'data' => [],
        ], 200);
    }
}
