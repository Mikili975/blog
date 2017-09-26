<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class RegisterController extends Controller
{
    //Akcija za kreiranje user-a
    public function create()
    {
        return view('/users/new');
    }

    public function signin ()
    {
        return view('/users/signin');
    }

    public function store()
    {
        //validacija

        $this->validate(
            request(),
            [
                'firstName' => 'required',
                'lastName' => 'required',
                'username' => 'required',
                'email' => 'required|email',
                'password' => 'required|confirmed',
            ]
        );

        // napravi korisnika

        $user = new User();

        $user->name = request('username');
        $user->email = request('email');
        $user->password = request('password');

        $user->save();

        //uloguj korisnika

        // redirekcija na home page
    }

    public function login()
    {
        return view('/users/new');
    }
}
