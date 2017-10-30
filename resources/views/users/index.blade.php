@extends ('layouts.master')

@section ('title')

    Autori

@endsection

@section('content')

    <h1>Autori</h1>

    <ul>

        @foreach($users as $user)

            <li>
                <p>
                    <a href="/users/{{$user->name}}">{{$user->name}}</a>
                </p>
            </li>

        @endforeach

    </ul>

@endsection