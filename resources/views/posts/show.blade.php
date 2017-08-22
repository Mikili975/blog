@extends ('layouts.master')

@section ('title')

    {{ $post->title }}

@endsection

@section('content')

    <div class="blog-post">

        <h2 class="blog-post-title">{{ $post->title }}</h2>
        <p class="blog-post-meta">{{ $post->created_at }} by <a href="#">{{$post->author}}</a></p>
        <p>{{ substr($post->body, 0, 30) . '...' }}</p>
        <hr>
        <p>{{ $post->body }}</p>

    </div>

    @include('layouts.partials.errors')
    @include('layouts.partials.create-comment',['blogId'=>$post->id])
    @include('layouts.partials.blog-comments')

@endsection