<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AuthController extends Controller
{
    public function showLoginForm()
    {
        return view('backend.auth.login');
    }

    public function showRegistrationForm()
    {
        return view('backend.auth.registration');
    }

    public function signout() {
        Session::flush();
        Auth::logout();

        return redirect('/login');
    }
}
