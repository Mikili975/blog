<?php

namespace App\Http\Controllers;

use App\Mail\CommentsReceived;
use App\Mail\PostCreated;
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

        $posts = Post::with(['comments.user', 'user'])->paginate(10)->sortByDesc('created_at');
        //dd($posts);
        //dd($comments);

        //Dovuci postove i za njih zalepi poslednji komentar za svaki post i usera koji ga je napisao
        //Pogledaj u dokumentaciji kako ces da resis

        //dd($posts);

        //namesti da prikazuje najnovije postove gore

        //dd($posts);
        // Promeni index view za postove tako da prikazuje  naslov, autora i poslednji komentar


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

        return view('posts.create'/*, compact('request')*/);

    }

    public function store( Request $request )
    {

        $this->validate( $request, [ 'title' => 'required', 'body' => 'required' ] );

        $user = Auth::user();

        $post = $user->addPost();


        //SREDI TAGOVE!!!
        //Od commaSeparated napravi array

        $newTags = array_map('trim', explode(',', request('tagsCommaSeparated')));

        $post->addTags($newTags);

        Mail::to($user)->send(new PostCreated($post));

        //redirektuj na taj novi post
        return redirect('/');
    }

    public function storeComment( Post $post )
    {

        $this->validate( request(), [  'body' => 'required' ] );

        $comment = $post->addComment(request());


        Mail::to($post->user)->send(new CommentsReceived($comment));

        return redirect('/posts/'.$post->id);
        /*return redirect('/');*/

    }
}
