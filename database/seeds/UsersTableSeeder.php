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
            each(function ($u) {
               $u->save(factory('App\Post',5)->make());
        });
    }
}