<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    use AuthenticatesUsers;

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

            return response()->json(['message' => 'Successfully Logged in !'], 200);
        } else {
            return redirect()->back();
        }
    }

    public function logout() {
        Session::flush();
        Auth::logout();

        return redirect('/login');
    }
}
