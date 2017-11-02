{{--{{dd($blogId)}}--}}

@if (Auth::user())

    <h6>Unesi komentar</h6>

    <form action="/posts/{{$post->id}}/comments" method="post"  class="create_comment">

        {{ csrf_field() }}


        <label for="inputBody" class="sr-only">Tekst komentara</label>
        <textarea name="body" id="inputBody" class="form-control" placeholder="Tekst komentara" rows="5" cols="40" ></textarea>

        <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
    </form>

@else

    <h4>Samo registrovani korisnici mogu ostavljati komentare</h4>

    <p><a href="/login">Prijavi se</a> </p>



@endif