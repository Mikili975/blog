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

    public function show($id)
    {
        $user = User::find($id);


        return view('users.show', compact('user'));
    }

}
