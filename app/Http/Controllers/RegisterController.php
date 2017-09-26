<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


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
        $user->password = Hash::make(request('password'));

        $user->save();

        //uloguj korisnika
        if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
            // Authentication passed...
            return redirect('/');
        } else {
          return 'greska';
        }
        // redirekcija na home page
    }

    public function login()
    {
        if (Auth::attempt(['name' => request('name'), 'password' => request('password')])) {
            // Authentication passed...
            return redirect('/');
        } else {
            return 'greska';
        }
    }

    public function logout()
    {
        Auth::logout();

        return redirect('/');
    }
}
