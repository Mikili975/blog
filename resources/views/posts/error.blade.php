@extends ('layouts.master')

@section ('title')

    Greska

@endsection

@section('content')
    <h1>Alo, majstore upisi nesto!!!</h1>
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>

    <a href="/">Pocetna</a>

@endsection