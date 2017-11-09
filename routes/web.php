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

Route::post('/posts/{post}/comments', 'PostsController@storeComment');

Route::get('/login', 'LoginController@login')->name('login');

Route::get('/logout', 'LoginController@logout');

Route::post('/check', 'LoginController@checkCredentials');

Route::get('/register', 'RegisterController@create');

Route::post('/store', 'RegisterController@store');

Route::get('/users', 'UsersController@index');

Route::get('/users/{name}', 'UsersController@show');

Route::get('/forbidden', 'UsersController@forbidden');

Route::get('/tags', 'TagsController@index');

Route::get('/tags/{name}', 'TagsController@show');