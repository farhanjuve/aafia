<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/', function () {
    return view('auth.login');
});
*/


Auth::routes();

//Route::get('/', [LoginController::class])->name('home');

Route::get('/', [App\Http\Controllers\HomeController::class, 'index']);
Route::get('/welcome', [App\Http\Controllers\HomeController::class, 'index'])->name('welcome');
Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'dashboard'])->name('home');
Route::get('/RegisPasien', [App\Http\Controllers\HomeController::class, 'RegisPasien'])->name('RegisPasien');
