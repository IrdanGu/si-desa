<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\strukturdesaController;




Route::get('/', function () {
    return view('frontend/index', [
        "title" => "Home"
    ]);
});

Route::get('/kontak', function () {
    return view('frontend/kontak', [
       "title" => "KOntak kami"
    ]);
});

Route::get('/detailberita', function () {
    return view('frontend/detail_berita', [
       "title" => "detail berita"
    ]);
});

Route::get('/aparatur', [strukturdesaController::class, 'index']);






Route::get('/visimisi', function () {
    return view('frontend/visimisi', [
        "title" => "Visi dan Misi"
    ]);
});


Route::get('/login', function () {
    return view('auth/login', [
        "title" => "login"
    ]);
});

Route::get('/dashboard', function () {
    return view('dashboard', [
        "title" => "dashboard"
    ]);
});


Auth::routes(['register' => false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
