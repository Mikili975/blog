<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = [
        'name', 'post_id', 'tag_id'
    ];

    public function posts() {

        return $this->belongsToMany(Post::class);

    }

    public function addTag($tag) {

        return $this->create([
            'name' => $tag->name,
        ]);

    }
}
