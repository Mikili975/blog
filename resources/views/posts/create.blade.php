@extends ('layouts.master')

@section ('title')

    Napisi blog

@endsection

@section('content')


    @includeWhen($errors->any(), 'posts.error')



    <div class="container">


        <h2 class="form-signin-heading">Napisi blog</h2>

        <form action="/posts" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputTitle" class="sr-only">Naslov</label>
            <input type="text" name="title" id="inputTitle" class="form-control" placeholder="Naslov" >

            <label for="inputBody" class="sr-only">Sadrzaj</label>
            <textarea name="body" id="inputBody" class="form-control" placeholder="Blog" rows="5" cols="40" ></textarea>

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
        </form>

    </div> <!-- /container -->

    <br>

@endsection