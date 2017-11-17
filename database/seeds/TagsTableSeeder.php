<?php

use App\Post;
use App\Tag;
use Illuminate\Database\Seeder;

class TagsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory('App\Tag')->create([
            'name' => 'Blogging'
        ]);

        factory('App\Tag')->create([
            'name' => 'Freelancing'
        ]);

        factory('App\Tag')->create([
            'name' => 'How to Succeed'
        ]);

        factory('App\Tag')->create([
            'name' => 'Internet Marketing'
        ]);

        factory('App\Tag')->create([
            'name' => 'Miscellaneous'
        ]);

        //$postIds = Post::all()->pluck('id');  //->id->pluck();
        //dd($postIds);

        $tagIds = Tag::all()->pluck('id');
        //dd($tagIds);

//        $tags = Tag::all();

        $posts = Post::all();

        $posts->each(function($post) use($tagIds) {
            $post->tags()->attach($tagIds->random(2));
        });

//        foreach ($postIds as $postId) {
//
//            $post = Post::find($postId);
//
//            $a1 = array_rand($tagIds);
//            $a2 = array_rand($tagIds);
//
//            var_dump($a1, $a2);
//
//
//            $tag1 = Tag::find($a1);
//
//            $tag2 = Tag::find($a2);
//
//            dd($tag1->id,$tag2->id);
//
//
//            $post->tags()->attach($tag1);
//
//            $post->tags()->attach($tag2);
//
//        }


    }
}
// $this->tags()->attach($tag->id);