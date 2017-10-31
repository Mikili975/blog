<?php

namespace App\Http\Controllers;

use App\Mail\CommentsReceived;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Post;
use App\Comment;
use App\User;
use Illuminate\Support\Facades\Mail;

class PostsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth', ['only' =>
            [
                'create',
                'store'
            ]
        ]);

    }

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

        $user = Auth::user();

        $user->addPost();


//        $post = new Post();
//
//        $post->createPost();

        return redirect('/');
    }

    public function storeComment( Post $post )
    {

        $this->validate( request(), [  'body' => 'required' ] );

        /*$comment = new Comment();

        $comment->user = request('user');
        $comment->body = request('body');
        $comment->post_id = request('post_id');

        $comment->save();*/


        $comment = $post->addComment(request());


        Mail::to($post->user)->send(new CommentsReceived($comment));

        return redirect('/posts/'.$post->id);
        /*return redirect('/');*/

    }
}
