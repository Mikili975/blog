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

    public function show($name)
    {

        $tag = Tag::find(Tag::where('name',$name)->value('id'));

        //dd($tag);

        return view('tags.show', compact('tag'));
    }
}
