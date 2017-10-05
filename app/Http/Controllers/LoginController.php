<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login ()
    {
        return view('/users/login');
    }

    public function logout()
    {
        Auth::logout();

        return redirect('/');
    }

    public function check()
    {
        if (Auth::attempt(['name' => request('name'), 'password' => request('password')])) {
            // Authentication passed...
            return redirect('/');
        } else {
            return 'greska';
        }
    }
}
