@extends ('layouts.master')

@section ('title')

    Napisi blog

@endsection

@section('content')


    {{--@includeWhen($errors->any(), 'posts.error')--}}



    <div class="container">


        <h2 class="form-signin-heading">Napisi blog</h2>

        @include('layouts.partials.errors')


        <form action="/posts" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputTitle" class="sr-only">Naslov</label>
            <input type="text" name="title" id="inputTitle" class="form-control" placeholder="Naslov" >

            <label for="inputBody" class="sr-only">Sadrzaj</label>
            <textarea name="body" id="inputBody" class="form-control" placeholder="Blog" rows="5" cols="40" ></textarea>

            <label for="input tags" class="sr-only">Tagovi</label>
            <input type="text" name="tagsCommaSeparated" id="inputTitle" class="form-control" placeholder="Tagovi" >

            <button class="btn btn-lg btn-primary btn-block" type="submit">Objavi</button>
        </form>

    </div> <!-- /container -->

    <br>

@endsection