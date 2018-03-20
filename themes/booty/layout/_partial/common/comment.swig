{% if page.comments && theme.gitalk && theme.gitalk.client_id %}
{% if page.author && page.author.github_name %}
{% set adminUser = page.author.github_name %}
{% else %}
{% set adminUser = "mamboer" %}
{% endif %}
<div class="post-comments" id="comments"></div>
<script>
  var gitalkOpts = {
    id: '{{ post_key(page.path, page.ckey) }}',
    owner: '{{ theme.gitalk.owner }}',
    repo: '{{ theme.gitalk.repo }}',
    title: '{{ page.title }}',
    body: '{{url}}\n\n{{ page.subtitle }}',
    clientID: '{{ theme.gitalk.client_id }}',
    clientSecret: '{{ theme.gitalk.client_secret }}',
    admin: ['{{ adminUser }}']
  };
</script>
{% endif %}