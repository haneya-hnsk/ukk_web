<?php

use App\Http\Controllers\BukuController;
use App\Http\Controllers\KategoriBukuController;
use App\Http\Controllers\KoleksiPribadiController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\LibrarianController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\PeminjamanController;
use App\Http\Controllers\UlasanBukuController;
use App\Http\Controllers\UserController;
use App\Models\Buku;
use App\Models\KoleksiPribadi;
use App\Models\Peminjaman;
use App\Models\User;
use Illuminate\Support\Facades\Route;

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

//librarian


//Route ini me redirect admin ke tampilan admin dan member ke tampilan member 
Route::get('/', function () {
    // dd(date('y-m-d'));
    return view('layout.app');
})->middleware(['auth', 'redirectLogin']);

// Route::group(miff/)

//Kumpulan routing yang bisa dibuka oleh pustakawan
Route::group(['middleware' => ['auth', "isLibrarian"]], function () {  
    Route::resource('librarian/kategori', KategoriBukuController::class);
    Route::resource('librarian/buku', BukuController::class);
    Route::resource('librarian/laporan', LaporanController::class);

    Route::get('librarian/ulasan',[LibrarianController::class, 'ulasan']);
    Route::post('librarian/hapusUlasan/{id}',[LibrarianController::class, 'hapusUlasan']);
    Route::post('librarian/hapusPinjam/{id}',[LibrarianController::class, 'hapusPinjam']);
    Route::get('librarian/peminjaman',[LibrarianController::class, 'peminjaman']);
    
});
//route yang hanya bisa dibuka oleh admin
Route::resource('librarian/user', UserController::class)->middleware(['auth', 'isAdmin']);


// Route yang hanya bisa dibuka oleh member
Route::group(['middleware' => ['auth', 'isMember']],function(){
    Route::get('buku/{id}',[ MemberController::class, 'lihatBuku'])->middleware('auth');
    Route::post('ulasan/update/{id}', [UlasanBukuController::class, 'update']);
    Route::post('ulasan/{id}', [UlasanBukuController::class, 'store']);
    
    Route::post('tambahKoleksi/{id}', [KoleksiPribadiController::class, 'store']);
    Route::post('hapusKoleksi/{id}/{user}', [KoleksiPribadiController::class, 'delete']);
    
    Route::get('koleksiPribadi', [MemberController::class, 'koleksiPribadi']);
    Route::get('lihatTerpinjam', [MemberController::class, 'lihatTerpinjam']);
    
    Route::post('pinjamBuku/{id}',[ PeminjamanController::class, 'store']);
    Route::post('kembalikanBuku/{id}',[ PeminjamanController::class, 'pengembalian']);

    //baca buku ini hanya bisa dibuka jika user sudah meminjam bukunya
    Route::get('bacaBuku/{id}', function($id){
        return view('member/bacaBuku', [
            'book' => Buku::where('id', $id)->get()->first(),
        ]);
    })->middleware(['dipinjam']);
    
    Route::get('buku', [MemberController::class, 'index']);
});



//route tampilan login
Route::get('login', function() {
    return view('login');
})->name('login');

//route menjalanakan login
Route::post('login', [LoginController::class, 'authenticate']);

//route logout
Route::post('logout', [LoginController::class, 'logout'])->name('logout');


//route registrasi
Route::get('registrasi', function() {
    return view('registrasi');
})->name('registrasi');
Route::post('registrasi', [LoginController::class, 'registrasi']);

//route ke tampilan pustakawan 
Route::get('/pustakawan', function(){
    return view('pustakawan', [
        'librarians' => User::where('level' , '!=', 'member')->get()
    ]);
});