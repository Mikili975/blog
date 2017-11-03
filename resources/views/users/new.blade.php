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

            <label for="inputUsername" class="sr-only">Korisnicko ime</label>
            <input type="text" name="username" id="inputTitle" class="form-control" placeholder="Korisnicko ime" >

            <p>Datum i godina rodjenja</p>

            {{--@php--}}

            {{--use Carbon\Carbon;--}}

            {{--dd(Carbon::now()->year);--}}




            {{--@endphp--}}


            <span>
                <select name="day">


                    @for ( $i = 1; $i<=31; $i++ )

                    <option value={{$i}}>{{$i}}</option>

                    @endfor

                </select>
            </span>

            <span>
                <select name="month">
                    <option value="1">Januar</option>
                    <option value="2">Februar</option>
                    <option value="3">Mart</option>
                    <option value="4">April</option>
                    <option value="5">Maj</option>
                    <option value="6">Jun</option>
                    <option value="7">Juli</option>
                    <option value="8">August</option>
                    <option value="9">Septembar</option>
                    <option value="10">Oktobar</option>
                    <option value="11">Novembar</option>
                    <option value="12">Decembar</option>
                </select>
            </span>

            <select name="year">


                @for ( $i = \Carbon\Carbon::now()->year; $i>=-100+\Carbon\Carbon::now()->year; $i-- )

                    <option value={{$i}}>{{$i}}</option>

                @endfor

            </select>


            {{--<label for="inputAge" class="sr-only">Age</label>--}}
            {{--<input type="text" name="age" id="inputAge" class="form-control" placeholder="age" >--}}

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