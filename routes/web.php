<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use \App\Http\Controllers\DashboardController;
use \App\Http\Controllers\Productcontroller;
use \Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('login');
});


Route::group(["middleware" => "web"], function() {
    Route::get('/login', [AuthController::class ,'showLoginForm'])->name('login');
    Route::get('/registration', [AuthController::class ,'showRegistrationForm'])->name('registration');

});

Route::get('/signout', [AuthController::class, 'signout'])->name('signout');
//Route::middleware('client')->group(function () {
    Route::get('/home', [DashboardController::class, 'index'])->name('dashboard');
    Route::resource('/product', ProductController::class);
//});

