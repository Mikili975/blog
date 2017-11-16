<?php

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
        $userIds = User::all()->pluck('id');
        $tags = Tags::all();

        for ($k = 1; $k <= App\Post::count(); $k++) {

            factory('App\Comment', 6)->create([
                'user_id' => random_int(1, App\User::count()),
                'post_id' => $k
            ]);
        }
    }
}
// Nije dobro, treba 5 random usera ali razlicitih da da komentar. Znaci, prvo random user, pa da udje u loop...

// Za Tagove koristi rutinu za postojece tagove - sa attach!!!