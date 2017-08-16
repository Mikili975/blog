<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostsController extends Controller
{
    public function index()
    {
        $posts = Post::all();


        return view('posts.index', compact('posts'));
    }

    public function show($id)
    {
        $post = Post::find($id);


        return view('posts.show', compact('post'));
    }

    public function publishedBlogs()
    {
        $posts = Post::published();


        return view('posts.published', compact('posts'));
    }

    public function unpublishedBlogs()
    {
        $posts = Post::unpublished();


        return view('posts.unpublished', compact('posts'));
    }

    public function create()
    {

        return view('posts.create');

    }
}
