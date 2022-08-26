<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use \App\Http\Controllers\DashboardController;
use \App\Http\Controllers\Productcontroller;
use \Illuminate\Support\Facades\Auth;
use \App\Http\Controllers\RoleController;
use \App\Http\Controllers\UserController;

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

Route::middleware(['middleware' => 'auth:web'])->group(function () {
    Route::get('/home', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/signout', [AuthController::class, 'signout'])->name('signout');

    Route::get('/product-filter', [ProductController::class, 'filter']);
    Route::resource('/product', ProductController::class);
    // UserRole Routes
    Route::get('/user/role', [RoleController::class, "index"])->name('role.index');
    Route::get('/user/role/create', [RoleController::class, "create"])->name('role.create');
    Route::post("/user/role/store", [RoleController::class, 'store'])->name('role.store');
    Route::get('/user/role/{id}/edit', [RoleController::class, 'edit'])->name('role.edit');
    Route::post("/user/role/update", [RoleController::class, 'update'])->name('role.update');
    Route::get('/user/role/{id}/destroy/', [RoleController::class, 'destroy'])->name('role.destroy');

    // User Routes
    Route::get('/user/index', [UserController::class, 'index'])->name('user.index');
    Route::get('/user/create', [UserController::class, 'create'])->name('user.create');
    Route::post('/user/store', [UserController::class, 'store'])->name('user.store');
    Route::get('/user/{id}/edit', [UserController::class, 'edit'])->name('user.edit');
    Route::put('/user/update', [UserController::class, 'update'])->name('user.update');
    Route::get('/user/{id}/destroy', [UserController::class, 'destroy'])->name('user.destroy');
    Route::get('/user/{id}/status', [UserController::class, 'status'])->name('user.status');
});

