<article class="post" itemscope itemtype="http://schema.org/Article">
    <a class="post-cover" href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">
        <img src="{{ post.cover }}" alt="{{ post.title }}" />
        <span class="post-ovl"></span>
    </a>
    <div class="post-info">
        <h3 class="post-tit" itemprop="name headline"><a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">{{ post.title }}</a></h3>
        <p class="post-desc" itemprop="about">{{ post.subtitle }}</p>
    </div>
</article>
