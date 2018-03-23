<article class="tile is-child" itemscope itemtype="http://schema.org/Article">
  <a class="mpost {{ classes }}" href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}" target="_blank">
    <h3 class="title is-spaced" itemprop="name headline">{{ post.title }}</h3>
    <p class="subtitle" itemprop="about">{{ post.subtitle }}</p>
    <figure class="image is-4by3">
      <img src="{{ post.banner }}" alt="{{ post.title }}" />
    </figure>
  </a>
</article>
