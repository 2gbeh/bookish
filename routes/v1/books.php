<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\BookController;

Route::apiResource('/books',BookController::class);

// Route::group([
//     'controller' => 'App\Http\Controllers\Api\BookController',
//     'prefix' => 'books/',
//     'as' => 'books.',
// ], function () {
//     Route::get('', 'index')->name('index');
//     Route::post('', 'store')->name('store');
//     Route::get('/{book}', 'show')->name('show');
//     Route::patch('/{book}', 'update')->name('update');
//     Route::delete('/{book}', 'destroy')->name('destroy');
// });
