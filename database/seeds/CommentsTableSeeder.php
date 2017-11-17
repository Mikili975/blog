<?php

use App\Post;
use App\User;
use Illuminate\Database\Seeder;

class CommentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //$userIds = App\User::all()->pluck('id');
        //dd($userIds);

        for ($k = 1; $k <= Post::count(); $k++) {

            for ($j = 1; $j <= 6; $j++) {

                factory('App\Comment')->create([
                    'user_id' => random_int(1, User::count()),
                    'post_id' => $k
                ]);

            }
        }
    }
}
// Za Tagove koristi rutinu za postojece tagove - sa attach!!
// sa $tags = Tags::all(); dovuces sve tagove, a onda ih random attach-ujes na postove...