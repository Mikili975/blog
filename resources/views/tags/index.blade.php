@extends ('layouts.master')

@section ('title')

    Tagovi

@endsection

@section('content')

    <h1>Tagovi</h1>


    <ul>

        @foreach($tags->sortByDesc('updated_at') as $tag)

            <li>
                <p>
                    <a href="/tags/{{$tag->id}}">{{$tag->name}}</a>
                </p>
            </li>

        @endforeach

    </ul>

@endsection