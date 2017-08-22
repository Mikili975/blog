<nav class="blog-comments">

    @foreach ($post->comments->sortByDesc('updated_at') as $comment)

        <div class="com_comment ">
                <div class="comName">
                        <h4>{{$comment->user}}</h4>
                        <span>{{$comment->updated_at}}</span>
                </div>


                <div class="comTxt">{{$comment->body}}</div>
                {{--<div class="comTools fixed">
                        <button class="com_vote com_vote_p">+ <span>56</span></button>
                        <button class="com_vote com_vote_n">- <span>96</span></button>
                </div>--}}
        </div>

    @endforeach
</nav>