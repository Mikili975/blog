<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Comment;
use App\User;

class Post extends Model

{

    protected $fillable = [
        'title', 'body', 'user_id','published'
    ];

    public function user()
    {

        return $this->belongsTo(User::class);

    }


    public function comments()
    {

        return $this->hasMany(Comment::class);

    }

    public function tags()
    {

        return $this->belongsToMany(Tag::class);

    }

    public function addComment($request)
    {
        // iskoristis relaciju ka komentarima i da snimis jedan komentar

        /*dd($request->all());*/
        /*$comment  = new Comment([
            'user' => $request->user,
            'body' => $request->body]);*/

        $comment = $this->comments()->create([
            'user_id' => Auth::user()->id,
            'body' => $request->body
        ]);

        return $comment;


//        $this->comments()->create([
//            'user_id' => Auth::user()->id,
//            'body' => $request->body
//        ]);

    }

    public static function published()
    {

        return static::where('published', '1')->get();

    }

    public static function unpublished()
    {

        return static::where('published', '0')->get();

    }

//    public function createPost() {
//
//
//
//        $this->title = request('title');
//        $this->body = request('body');
//        $this->user_id = Auth::user()->id;
//        $this->published = false;  // Dok administrator ne odobri blog, vodi se kao unpublished
//
//        /* Moze i ovako, ali je ovo ispod verovatno bolje...
//
//           DB::insert('insert into posts (title, body, author, published) values (?, ?, ?, ?)',
//                            [$post->title, $post->body, $post->author, $post->published]);
//        */
//
//        $this->save();
//    }


}