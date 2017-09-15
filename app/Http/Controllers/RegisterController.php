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

    public function store()
    {
        //validacija
       /* dd(request());*/
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
        dd(request());
    }
}
