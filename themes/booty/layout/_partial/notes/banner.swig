<header class="head head-notes">
    <div class="container">
        <a class="logo" href="{{url_for('/')}}"><span class="logo-pic"></span></a>
    </div>
</header>
<div class="main-notes">
    <div class="container">
        <div id="evtList" class="evt-list clearfix">
            {% for post in page.posts %}
            {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
            {% include '../post/mini.swig' with {post:post, author:author} %}
            {% endfor%}
        </div>
    </div>
</div>
<div class="foot">
    <p>Copyright © 2017. All Rights Reserved.</p>
    <p>粤ICP备15077732号-2</p>
</div>
