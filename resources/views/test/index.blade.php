@extends ('layouts.master')

@section ('title')

    Database test page

@endsection

@section('content')


    {{--@includeWhen($errors->any(), 'posts.error')--}}



    <div class="container">

        <h4 class="form-signin-heading">Novi korisnik</h4>

        @include('layouts.partials.errors')


        <p>Dummy Users</p>

        <form action="/test/users" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputNumber" class="sr-only">Ime</label>
            <input type="text" name="numberOfUsers" id="inputTitle" class="form-control" placeholder="Input number of users">

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>


        </form>

        <p>Dummy Posts</p>

        <form action="/test/posts" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputNumber" class="sr-only">Ime</label>
            <input type="text" name="numberOfPosts" id="inputTitle" class="form-control" placeholder="Input number of posts">

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>


        </form>

        <p>Dummy Comments</p>

        <form action="/test/comments" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputNumber" class="sr-only">Ime</label>
            <input type="text" name="numberOfComments" id="inputTitle" class="form-control" placeholder="Input number of comments" >

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>


        </form>

    </div> <!-- /container -->

    <br>

@endsection