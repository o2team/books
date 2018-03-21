{% if page.comments and theme.gitalk and theme.gitalk.client_id %}
<script src="https://unpkg.com/gitalk/dist/gitalk.min.js"></script>
<!-- build:js /js/bundle/gitalk.js -->
{{ js('js/mods/gitalk') }}
<!-- endbuild -->
{% endif %}