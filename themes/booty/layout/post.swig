{% extends '_layout.swig' %}

{% block page_class %}post-detail{% endblock %}

{% block main %}

{% set author = page.author|default({github_name:config.github.user, nick:config.author}) %}
{{ partial('_partial/post/main', {post: page, author: author}) }}
{% include '_partial/common/copyright.swig' %}

{% endblock %}


{% block pagejs %}
{{ js('js/post_wx_share') }}
{% endblock %}
