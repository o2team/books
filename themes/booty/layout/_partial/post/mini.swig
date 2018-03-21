<article class="tile is-child post {{ classes }}" itemscope itemtype="http://schema.org/Article">
  <h3 class="title" itemprop="name headline"><a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">{{ post.title }}</a></h3>
  <p class="subtitle" itemprop="about">{{ post.subtitle }}</p>
  <figure class="image is-4by3">
    <img src="{{ post.banner }}" alt="{{ post.title }}" />
  </figure>
</article>
