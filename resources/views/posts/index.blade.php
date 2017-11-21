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

        @foreach($posts as $post)

            {{--@php(dd($post->comments->last()->user->name))--}}
                {{--@endphp--}}


            <li>
                <p>
                    <a href="/posts/{{$post->id}}">{{$post->title}}</a>
                    <p>{{$post->created_at->diffForHumans()}}</p>
                    <p>by <a href="/users/{{$post->user->name}}">{{$post->user->name}}</a></p>
                    <p>Poslednji komentar... </p>
                    <p>{{$post->comments->last()->body}}</p>
                    <p>by <a href="/users/{{$post->comments->last()->user->name}}">{{$post->comments->last()->user->name}}</a></p>
                </p>
            </li>

        @endforeach

    </ul>

    {{--{{ $posts->links() }}--}}

    {{--Laravel bootstrap pagination ili neki pagination probaj--}}

@endsection