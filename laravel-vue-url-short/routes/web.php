<?php

use App\Http\Controllers\LinkController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::view('/', 'index')->name('index');
// Route::view('/{any?}', 'index')->where('any', '.*');


Route::post('/links', [LinkController::class, 'store']);
Route::post('/redirect', [LinkController::class, 'redirect']);