<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PassportAuthController extends Controller
{
    /**
     * Registration
     */
    public function register(Request $request)
    {
//        dd($request->all());
/*        $this->validate($request, [
            'name' => 'required|min:4',
            'email' => 'required|email',
            'phone' => 'required|phone',
            'password' => 'required|min:8',
            'confirm_password' => 'required|min:8',
        ]);*/

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => bcrypt($request->password)
        ]);

        $token = $user->createToken('LaravelPassportRestApiApp')->accessToken;

        return response()->json(['token' => $token], 200);
    }

    /**
     * Login
     */
    public function login(Request $request)
    {
        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($data)) {
            $token = auth()->user()->createToken('LaravelPassportRestApiApp')->accessToken;
//            return redirect('/dashboard');
            return response()->json(['token' => $token, 'message' => 'Successfully Logged in !', 'redirect_url' => '/home'], 200);
        } else {
            return response()->json(['error' => 'Unauthorised'], 401);
        }
    }
}
