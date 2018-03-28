<section class="section main notes-main">
  <div class="container">
    {% set itemSize = page.posts.length %}

    {% if itemSize < 2 %}
    <div class="tile is-ancestor">
      {% for post in page.posts %}
      {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
      <div class="tile is-parent">
      {% include '../post/mini.swig' with {classes: "is-warning", post: post, author: author} %}
      </div>
      {% endfor%}
    </div>
    {% endif %}

    <!--First two items-->
    {% if itemSize >= 2 %}
    <div class="tile is-ancestor">
      {% for post in page.posts %}
      {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
      {% if loop.index === 1 %}
      <div class="tile is-parent is-8">
      {% include '../post/mini.swig' with {classes: "is-warning", post: post, author: author} %}
      </div>
      {% elif loop.index === 2 %}
      <div class="tile is-parent">
      {% include '../post/mini.swig' with {classes: "is-info", post: post, author: author} %}
      </div>
      {% endif %}
      {% endfor%}
    </div>
    {% endif %}

    <!--Other items-->
    {% if itemSize > 2 %}
    <div class="columns is-multiline">
      {% for post in page.posts %}
      {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
      {% if loop.index > 2 %}
      <div class="column is-4">
      {% include '../post/mini.swig' with {classes: "mpost-his", post: post, author: author} %}
      </div>
      {% endif %}
      {% endfor%}
    </div>
    {% endif %}
  </div>
</section>
