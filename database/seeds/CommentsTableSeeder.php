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
        dd($userIds);

        for ($k = 1; $k <= App\Post::count(); $k++) {

            $randomUserId = random_int(1, App\User::count());

            factory('App\Comment', 6)->create([
                'user_id' => $randomUserId,
                'post_id' => $k
            ]);
        }
    }
}
// Nije dobro, treba 5 random usera ali razlicitih da da komentar. Znaci, prvo random user, pa da udje u loop...

// Za Tagove koristi rutinu za postojece tagove - sa attach!!
// sa $tags = Tags::all(); dovuces sve tagove, a onda ih random attach-ujes na postove...