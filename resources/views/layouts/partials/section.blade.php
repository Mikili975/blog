<div class="sidebar-module sidebar-module-inset">
    <h4>Svi tagovi</h4>
    @foreach($tags as $tag)
        <a href="/tags/{{$tag}}">{{$tag}}</a>
    @endforeach
</div>