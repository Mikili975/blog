@extends ('layouts.master')

@section ('title')

    Prijava

@endsection

@section('content')


    {{--@includeWhen($errors->any(), 'posts.error')--}}



    <div class="container">

        <h4 class="form-signin-heading">Postojeci korisnik</h4>

        @include('layouts.partials.errors')


        <form action="/users/login" method="post"  class="form-signin">

            {{ csrf_field() }}

            <label for="inputUsername" class="sr-only">Korisnicko ime</label>
            <input type="text" name="name" id="inputTitle" class="form-control" placeholder="Korisnicko ime" >

            <label for="inputPassword" class="sr-only">Sifra</label>
            <input type="password" name="password" id="inputTitle" class="form-control" placeholder="Sifra" >

            <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
        </form>


        <h4 class="form-signin-heading">Nemate nalog?  <a href="/users/register">Registrujte se</a></h4>


    </div> <!-- /container -->

    <br>

@endsection