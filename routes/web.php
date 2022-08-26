<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use \App\Http\Controllers\DashboardController;
use \App\Http\Controllers\Productcontroller;

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
Route::middleware('auth:api')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    
});

