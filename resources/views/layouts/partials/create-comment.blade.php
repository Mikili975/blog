{{--{{dd($blogId)}}--}}
<h6>Unesi komentar</h6>
<form action="/comments" method="post"  class="create_comment">

    {{ csrf_field() }}

    <input type="hidden" name="post_id" value={{$blogId}}>

    <label for="inputName" class="sr-only">Ime</label>
    <input type="text" name="user" id="inputTitle" class="form-control" placeholder="Ime" >

    <label for="inputBody" class="sr-only">Tekst komentara</label>
    <textarea name="body" id="inputBody" class="form-control" placeholder="Tekst komentara" rows="5" cols="40" ></textarea>

    <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
</form>