{% if page.comments and theme.gitalk and theme.gitalk.client_id %}
<!-- build:js /js/bundle/gitalk.js -->
{{ js('js/libs/gitalk') }}
{{ js('js/mods/gitalk') }}
<!-- endbuild -->
{% endif %}