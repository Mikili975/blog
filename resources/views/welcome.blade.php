<!DOCTYPE html>
<html>
<title>
    <h1>
        Naslov
    </h1>
</title>
<body>

<h1>Blogovi</h1>
<p>
    @foreach($posts as $post)

    <ul>

        <li>
            <p3>{{$post->title}}</p3>
        </li>

    </ul>

    @endforeach

</p>

</body>
</html>