<div class="blog-masthead">
    <div class="container">
        <nav class="nav blog-nav">
            <a class="nav-link active" href="/">Home</a>
            {{--<a class="nav-link" href="/published">Published</a>--}}
            {{--<a class="nav-link" href="/unpublished">Unpublished</a>--}}
            <a class="nav-link" href="/posts/create">Napisi blog</a>
            <a class="nav-link" href="/users">Autori</a>
            {{--ovo cemo kasnije dozvoliti samo administratoru--}}
            <a class="nav-link" href="/test">Test(Admin only)</a>
            <a class="nav-link" href="#">About</a>
            @if (Auth::user())
            <a class="nav-link" href="/logout">Logout</a>
            @else
            <a class="nav-link" href="/login">Login</a>
            @endif

        </nav>
    </div>
</div>