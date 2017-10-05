@extends ('layouts.master')

@section ('title')

    Prijava

@endsection

@section('content')


    {{--@includeWhen($errors->any(), 'posts.error')--}}



    <div class="container">

        <h4 class="form-signin-heading">Novi korisnik</h4>

        @include('layouts.partials.errors')


        <form action="/store" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputFirstName" class="sr-only">Ime</label>
            <input type="text" name="firstName" id="inputTitle" class="form-control" placeholder="Ime" >

            <label for="inputLastName" class="sr-only">Prezime</label>
            <input type="text" name="lastName" id="inputTitle" class="form-control" placeholder="Prezime" >

            <label for="inputUsername" class="sr-only">Prezime</label>
            <input type="text" name="username" id="inputTitle" class="form-control" placeholder="Korisnicko ime" >

            <label for="inputEmail" class="sr-only">e-mail</label>
            <input type="text" name="email" id="inputTitle" class="form-control" placeholder="e-mail" >

            <label for="inputPassword" class="sr-only">Sifra</label>
            <input type="password" name="password" id="inputTitle" class="form-control" placeholder="Sifra" >

            <label for="inputPasswordAgain" class="sr-only">Ponovi sifru</label>
            <input type="password" name="password_confirmation" id="inputTitle" class="form-control" placeholder="Ponovi sifru" >

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
        </form>

    </div> <!-- /container -->

    <br>

@endsection