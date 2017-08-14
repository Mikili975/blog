<html>
<title>
    <h1>
        Naslov
    </h1>
</title>
<body>

<h1>Neobjavljeni blogovi</h1>
<ul>

    @foreach($posts as $post)

        <li>
            <p>
                <a href="/posts/{{$post->id}}">{{$post->title}}</a>
            </p>
        </li>

    @endforeach

</ul>

</body>
</html>