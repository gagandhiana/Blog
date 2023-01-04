<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__.'/auth.php';

// Display Home Page
Route::get('/',[\App\Http\Controllers\BlogController::class,'home']);

Route::get('displaycategory/{id}',[\App\Http\Controllers\BlogController::class,'display_category']);

// Detailed Blog
Route::get('detailed-blog/{id}',[\App\Http\Controllers\BlogController::class,'detailed_blog']);

// Add Comment
Route::get('comment-box/{id}',[\App\Http\Controllers\BlogController::class,'comment_box'])->middleware(['auth', 'verified'])->name('add_comment');

Route::post('add-comment',[\App\Http\Controllers\BlogController::class,'add_comment']);

// Display Comment
Route::get('show-comment',[\App\Http\Controllers\BlogController::class,'show_comment']);

//Search Record
Route::post('search-post',[\App\Http\Controllers\BlogController::class,'search_post']);

//Delete Comment
Route::get('delete-comment/{id}',[\App\Http\Controllers\BlogController::class,'delete_comment']);
