@extends ('layouts.master')

@section ('title')

    Blogovi

@endsection

@section('content')

    <h1>Blogovi</h1>

    {{--<h2>--}}

        {{--@php(dd(session()->all()))--}}

            {{--@endphp--}}

    {{--</h2>--}}

    <ul>

        @foreach($posts->sortByDesc('updated_at') as $post)

            <li>
                <p>
                    <a href="/posts/{{$post->id}}">{{$post->title}}</a>
                    <p>{{$post->created_at->diffForHumans()}}</p>
                    <p>by <a href="/users/{{$post->user->name}}">{{$post->user->name}}</a></p>
                </p>
            </li>

        @endforeach

    </ul>

@endsection