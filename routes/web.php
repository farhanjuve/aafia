<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\PasienController;

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
Route::post('/RegisDokter', [App\Http\Controllers\Auth\RegisterController::class, 'daftarDokter'])->name('daftarDokter');
Route::post('/RegisPasien', [PasienController::class, 'daftarPasien'])->name('daftarPasien');
//Route::get('/RegisPasien', [App\Http\Controllers\PasienController::class, 'daftarPasien'])->name('daftarPasienIndex');

Route::get('/', [HomeController::class, 'index']);
Route::get('/welcome', [HomeController::class, 'index'])->name('welcome');
Route::get('/home', [HomeController::class, 'index']);

Route::get('/dashboard', [HomeController::class, 'dashboard'])->name('home');
Route::get('/RegisPasien', [HomeController::class, 'RegisPasien'])->name('RegisPasien');
Route::get('/RegisTransaksi', [TransactionController::class, 'index'])->name('RegisTransaksi');
Route::get('/DokterTransaksi', [TransactionController::class, 'dokter'])->name('DokterTransaksi');
Route::get('/TindakanTransaksi/', [TransactionController::class, 'tindakan']);
Route::get('/TindakanTransaksi/{created_at}', [TransactionController::class, 'tindakan_transaksi'])->name('TindakanTransaksi');
Route::get('/Kasir/{created_at}', [TransactionController::class, 'kasirBayar'])->name('BayarBeneran');
Route::post('/BayarTransaksi', [TransactionController::class, 'bayar'])->name('BayarTransaksi');
Route::post('/RegisTransaksi', [TransactionController::class, 'index'])->name('Registernew');
Route::delete('delete/pasien/{id}', [PasienController::class, 'hapusPasien'])->name('hapus-pasien');
