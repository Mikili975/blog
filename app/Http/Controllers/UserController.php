<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Post;
use App\Comment;
use App\User;

class UserController extends Controller
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

}
