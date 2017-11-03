@extends ('layouts.master')

@section ('title')

    {{ $user->name }}

@endsection

@section('content')

    <div class="blog-post">

        {{--{{dd($user->posts)}}--}}

        <h2 class="blog-post-title">{{ $user->name }}</h2>
        @foreach ($user->posts->sortByDesc('updated_at') as $post)

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