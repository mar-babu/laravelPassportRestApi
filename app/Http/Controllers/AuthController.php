<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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
}
