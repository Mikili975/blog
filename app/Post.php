<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model

{

    public function user()
    {

        //

    }


    public function comments()
    {

        return $this->hasMany(Comment::class);

    }

    public function addComment($request)
    {
        // iskoristis relaciju ka komentarima i da snimis jedan komentar

        /*dd($request->all());*/
        /*$comment  = new Comment([
            'user' => $request->user,
            'body' => $request->body]);*/

        $this->comments()->create([
            'user' => $request->user,
            'body' => $request->body
        ]);

    }

    public static function published()
    {

        return static::where('published', '1')->get();

    }

    public static function unpublished()
    {

        return static::where('published', '0')->get();

    }


}


