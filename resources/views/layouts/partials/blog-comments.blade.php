<nav class="blog-comments">

    @foreach ($post->comments as $comment)

        <li>{{$comment->body}}</li>

    @endforeach
</nav>