<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Post;
use App\Comment;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'age', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function posts()
    {

        return $this->hasMany(Post::class);

    }

    public function addPost() {

        return $this->posts()->create([
            'title' => request('title'),
            'body' => request('body'),
            'user_id' => Auth::user()->id,
            'published' => false,

        ]);

//SREDI TAGOVE!!!
        //Od commaSeparated napravi array

        $tags = array_map('trim', explode(',', request('tagsCommaSeparated')));

        //Proveri da li neki od tagova vec postoji u bazi,
        //ako postoji, onda samo upisi njegov id u tag_id kolonu i povezi ga sa id od ovog posta
        //ako ne postoji, onda ga upisi u tabelu tags, pa onda odradi prethodno kao da postoji u bazi

        $post = $this->posts();
        dd($post);

        foreach ($tags as $tag) {

            $existingTags = Tag::all();
            dd($existingTags);
            foreach ($existingTags as $existingTag) {

                if ($tag == $existingTag) {

                    //Ako tag vec postoji, onda se upisuje samo u pivot tabelu
                    //id ovog posta kao post_id i id tog taga kao tag_id

                    return $this->posts();

                }
                else {

                    //Ako tag ne postoji, onda se upisuje u bazu tags, a nakon toga se
                    //uradi isti postupak kao i u if-u iznad


                }
            }

        }

    }
}
