<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory('App\User',20)->create()->
        each(function ($u)
            {
            for ($i = 1; $i <= 5; $i++) {

                $u->posts()->save(factory('App\Post')->make());

                }

            }
        );
    }
}

