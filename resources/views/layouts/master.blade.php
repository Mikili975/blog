<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>
        @yield ('title')
    </title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="/css/blog.css" rel="stylesheet">
</head>

<body>

@include ('layouts.partials.navbar')

@include ('layouts.partials.blog-header')

{{--@include ('layouts.partials.errors')--}}

@if(session('message'))

<div class="alert-success" role="alert">

    {{session('message')}}

</div>

@endif

<div class="container">

    <div class="row">

        <div class="col-sm-8 blog-main">



                {{-- Ovde sve sto treba vuces iz baze--}}

                @yield ('content')



            @include ('layouts.partials.blog-pagination')

        </div><!-- /.blog-main -->

        <div class="col-sm-3 offset-sm-1 blog-sidebar">

            @include ('layouts.partials.section')

            @include ('layouts.partials.archive')

            @include ('layouts.partials.sidebar-module')

        </div><!-- /.blog-sidebar -->

    </div><!-- /.row -->

</div><!-- /.container -->

@include ('layouts.partials.footer')



</body>
</html>
