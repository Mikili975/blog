<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->userName,
        'dob' => $faker->dateTimeBetween($startDate = '-65 years', $endDate = '-18 years', $timezone = date_default_timezone_get()),
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\Post::class, function (Faker\Generator $faker) {

    return [
        'title' => $faker->sentence(),
        'body' => $faker->paragraph(),
        'published' => $faker->boolean,
    ];

});


$factory->define(App\Comment::class, function (Faker\Generator $faker) {

    return [
        'body' => $faker->text(),
    ];
});

$factory->define(App\Tag::class, function (Faker\Generator $faker) {

    return [
        'name' => $faker->word(),
    ];
});
