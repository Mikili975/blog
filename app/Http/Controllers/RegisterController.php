<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class RegisterController extends Controller
{
    //Akcija za kreiranje user-a
    public function create()
    {
        return view('/users/create');
    }

    public function store(User $user)
    {
        dd($user);
    }
}
