<section class="main notes-main">
  <div class="container">
    <div id="bookList" class="tile is-ancestor book-list">
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
      {% else %}
      <div class="tile is-parent">
      {% include '../post/mini.swig' with {classes: "", post: post, author: author} %}
      </div>
      {% endif %}
      {% endfor%}
    </div>

    {% if post.posts.length < 2 %}
    <div class="tile is-ancestor">
      {% for post in page.posts %}
      {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
      <div class="tile is-parent">
      {% include '../post/mini.swig' with {classes: "is-warning", post: post, author: author} %}
      </div>
      {% endfor%}
    </div>
    {% else %}
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
      {% else %}
      <div class="tile is-parent">
      {% include '../post/mini.swig' with {classes: "", post: post, author: author} %}
      </div>
      {% endif %}
      {% endfor%}
    </div>
    {% endif %}

  </div>
</section>
