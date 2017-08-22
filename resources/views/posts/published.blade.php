@extends ('layouts.master')

@section ('title')

    Blogovi

@endsection

@section('content')

    <h1>Objavljeni blogovi</h1>

    <ul>

        @foreach($posts as $post)

            <li>
                <p>
                    <a href="/posts/{{$post->id}}">{{$post->title}}</a>
                </p>
            </li>

        @endforeach

    </ul>


@endsection