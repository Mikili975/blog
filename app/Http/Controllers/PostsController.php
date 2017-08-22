<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Post;
use App\Comment;

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

       /* $comments = Comment::where('post_id',$id)->get();*/


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

        return view('posts.create', compact('request'));

    }

    public function store( Request $request )
    {

        $this->validate( $request, [ 'title' => 'required', 'body' => 'required' ] );

        $post = new Post;

        $post->title = request('title');
        $post->body = request('body');
        $post->author = 'Mickey';  // Za sada je author hardcoded, dok ne resimo vezu sa tabelom users
        $post->published = false;  // Dok administrator ne odobri blog, vodi se kao unpublished

        /* Moze i ovako, ali je ovo ispod verovatno bolje...

           DB::insert('insert into posts (title, body, author, published) values (?, ?, ?, ?)',
                            [$post->title, $post->body, $post->author, $post->published]);
        */

        $post->save();

        return redirect('/');
    }

    public function storeComment( Request $request )
    {

        $this->validate( $request, [ 'user' => 'required', 'body' => 'required' ] );

        $comment = new Comment();

        $comment->user = request('user');
        $comment->body = request('body');
        $comment->post_id = request('post_id');

        /*dd($comment);*/

        /*$post->title = request('title');
        $post->body = request('body');
        $post->author = 'Mickey';  // Za sada je author hardcoded, dok ne resimo vezu sa tabelom users
        $post->published = false;  // Dok administrator ne odobri blog, vodi se kao unpublished*/

        /* Moze i ovako, ali je ovo ispod verovatno bolje...

           DB::insert('insert into posts (title, body, author, published) values (?, ?, ?, ?)',
                            [$post->title, $post->body, $post->author, $post->published]);
        */

        $comment->save();

        return redirect('/posts/'.$comment->post_id);
        /*return redirect('/');*/
    }
}
