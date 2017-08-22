<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model

{
    public function comments()
    {

        return $this->hasMany(Comment::class);

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


