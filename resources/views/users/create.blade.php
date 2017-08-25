@extends ('layouts.master')

@section ('title')

    Napisi blog

@endsection

@section('content')


    {{--@includeWhen($errors->any(), 'posts.error')--}}



    <div class="container">


        <h2 class="form-signin-heading">Napisi blog</h2>

        @include('layouts.partials.errors')


        <form action="/user/store" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputFirstName" class="sr-only">Ime</label>
            <input type="text" name="title" id="inputTitle" class="form-control" placeholder="Ime" >

            <label for="inputLastName" class="sr-only">Prezime</label>
            <input type="text" name="title" id="inputTitle" class="form-control" placeholder="Prezime" >

            <label for="inputUsername" class="sr-only">Prezime</label>
            <input type="text" name="title" id="inputTitle" class="form-control" placeholder="Korisnicko ime" >

            <label for="inputFirstName" class="sr-only">e-mail</label>
            <input type="email" name="title" id="inputTitle" class="form-control" placeholder="e-mail" >

            <label for="inputPassword" class="sr-only">Sifra</label>
            <input type="password" name="title" id="inputTitle" class="form-control" placeholder="Sifra" >

            <label for="inputPasswordAgain" class="sr-only">Ponovi sifru</label>
            <input type="password" name="title" id="inputTitle" class="form-control" placeholder="Ponovi sifru" >

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
        </form>

    </div> <!-- /container -->

    <br>

@endsection