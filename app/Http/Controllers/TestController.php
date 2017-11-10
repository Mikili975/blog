<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index() {

        return view('test.index');

    }

    public function storeUsers() {

        //dd(request('numberOfUsers'));

    }

    public function storePosts() {

        //dd(request('numberOfPosts'));

    }

    public function storeComments() {

       //dd(request('numberOfComments'));

    }
}
