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

        $postIds = Post::all()->pluck('id');  //->id->pluck();
        //dd($postIds);

        $tagIds = Tag::all()->pluck('id')->toArray();
        //dd($tagIds);

        foreach ($postIds as $postId) {

            $post = Post::find($postId);

            $tag1 = Tag::find(array_rand($tagIds));

            $tag2 = Tag::find(array_rand($tagIds));

//            var_dump($tag1->id);
//            var_dump($tag2->id);
//            die();

            $post->tags()->attach($tag1);

            $post->tags()->attach($tag2);

        }


    }
}
// $this->tags()->attach($tag->id);