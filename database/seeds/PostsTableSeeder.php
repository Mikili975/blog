<?php

use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= App\User::count(); $i++) {

            factory('App\Post', 5)->create([
                'user_id' => $i
            ]);
        }

    }
}
