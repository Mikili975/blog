@extends ('layouts.master')

@section ('title')

    Napisi blog

@endsection

@section('content')

    <div class="container">

        <form action="/posts" method="post"  class="form-signin">
            <h2 class="form-signin-heading">Napisi blog</h2>

            {!! Form::token() !!}

            <br>

            <label for="inputTitle" class="sr-only">Naslov</label>
            <input type="text" id="inputTitle" class="form-control" placeholder="Naslov" required autofocus>

            <br>

            <label for="inputBody" class="sr-only">Sadrzaj</label>
            <textarea type="text" id="inputBody" class="form-control" placeholder="Blog" rows="5" cols="40" required></textarea>

            <br>

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
        </form>

    </div> <!-- /container -->

    <br>

@endsection