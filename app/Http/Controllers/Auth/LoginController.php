<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    
    public function showLoginForm()
    {
        return view('backend.auth.login');
    }

    public function showRegistrationForm()
    {
        return view('backend.auth.registration');
    }

    public function loginProcess(Request $request)
    {
        $this->validate($request, [
//            'name' => 'required|min:4',
            'email' => 'required|email',
//            'phone' => 'required|phone',
            'password' => 'required|min:8',
        ]);

        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($data)) {
            $user = User::where('email', request('email'))->first();
            Auth::login($user, true);
            Session::flash('alert-success', 'Data Stored Successfully!!');

            return response()->json(['message' => 'Successfully Logged in !', 'redirect_url' => '/home'], 200);
        } else {
            Session::flash('alert-danger', 'Data Store failed!!');
            return redirect()->back();
        }
    }

    public function logout() {
        Session::flush();
        Auth::logout();

        return redirect('/login');
    }
}
