@extends ('layouts.master')

@section ('title')

    {{ $tag->name }}

@endsection

@section('content')

    <div class="blog-post">

        <h2 class="blog-post-title">{{ $tag->name }}</h2>
        @foreach ($tag->posts->sortByDesc('updated_at') as $post)

            {{--{{dd($post)}}--}}

            <div class="com_comment ">
                <div class="comName">
                    <h4>
                        <a href="/posts/{{$post->id}}">{{$post->title}}</a>
                    </h4>
                    <span>{{$post->updated_at->diffForHumans()}}</span>
                </div>

            </div>

        @endforeach

    </div>



@endsection