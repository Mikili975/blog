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

    public function addTags($post, $newTags)
    {

        //Proveri da li neki od tagova vec postoji u bazi,
        //ako postoji, onda samo upisi njegov id u tag_id kolonu i povezi ga sa id od ovog posta
        //ako ne postoji, onda ga upisi u tabelu tags, pa onda odradi prethodno kao da postoji u bazi


        foreach ($newTags as $newTag) {

            foreach (Tag::all() as $existingTag) {
                    //dd($existingTag->name);
                if ($newTag == $existingTag->name) {

                    //dd('tu smo');
                    //Ako tag vec postoji, onda se upisuje samo u pivot tabelu
                    //id ovog posta kao post_id i id tog taga kao tag_id
                    $post->tags()->attach($post->id);

                    dd($post->tags());

                }

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