@extends ('layouts.master')

@section ('title')

    Napisi blog

@endsection

@section('content')

    <div class="container">

        <form class="form-signin">

            <h2 class="form-signin-heading">Napisi novi blog</h2>




            <div class="checkbox">

                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>

            </div>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

        </form>

    </div> <!-- /container -->

@endsection