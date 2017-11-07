<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Comment;
use App\User;
use App\Tag;

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

    public function addTags($newTags)
    {

        //Proveri da li neki od tagova vec postoji u bazi,
        //ako postoji, onda samo upisi njegov id u tag_id kolonu i povezi ga sa id od ovog posta
        //ako ne postoji, onda ga upisi u tabelu tags, pa onda odradi prethodno kao da postoji u bazi


        foreach ($newTags as $newTag) {

            $existingTags = Tag::all()->pluck('name')->toArray();

            //dd($existingTags, $newTag);


            if (!(in_array($newTag, $existingTags))) {

                //dd('ne postoji');

                //upisi novi tag u bazu

                $this->tags()->create([
                    'name' => $newTag
                ]);
            }

            else {

                //"samo" povezes postojeci tag sa trenutnim postom
                //select id from blog.tags where name = newTag

                $tag = Tag::where('name',$newTag)->first();

                //update blog.post_tag values (post_id,tag_id)

                $this->tags()->attach($tag->id);

            }

        }
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