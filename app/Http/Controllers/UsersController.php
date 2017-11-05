<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UsersController extends Controller

{

    public function index()
    {
        $users = User::all();

//        dd($users);


        return view('users.index', compact('users'));
    }

    public function show($name)
    {
        $id = User::where('name',$name)->value('id');

        $user = User::find($id);

        //   dd($id);

        //   dd($user);

        //   $user = User::find($name);


        return view('users.show', compact('user'));
    }

    public function forbidden()
    {

        return view('register.forbidden-under-18');
    }
}


