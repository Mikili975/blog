<?php

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

use App\Post;

Route::get('/', 'PostsController@index');

Route::get('/posts/create', 'PostsController@create');

Route::get('/posts/{id}', 'PostsController@show');

Route::get('/published', 'PostsController@publishedBlogs');

Route::get('/unpublished', 'PostsController@unpublishedBlogs');

Route::post('/posts', 'PostsController@store');

Route::post('posts/{post}/comments', 'PostsController@storeComment');

Route::get('/users/register', 'RegisterController@create');

Route::get('/users/login', 'RegisterController@#');

Route::post('user/store', 'RegisterController@store');