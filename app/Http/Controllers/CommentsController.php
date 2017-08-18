<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function show($id)
    {
        $comment = Post::find($id);


        return view('comments.show', compact('comment'));
    }
}