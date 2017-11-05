<?php

namespace App\Http\Controllers;

use App\Tag;
use Illuminate\Http\Request;

class TagsController extends Controller
{

    /**
     * Samo registrovani korisnici mogu kreirati i upisivati tagove
     *
     * TagsController constructor.
     */
    public function __construct()
    {
        $this->middleware('auth', ['only' =>
            [
                'create',
                'store'
            ]
        ]);

    }

    public function index()
    {

        $tags = Tag::all();


        return view('tags.index', compact('tags'));

    }
}
