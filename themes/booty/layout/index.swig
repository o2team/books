{% extends '_layout.swig' %}

{% block page_class %}page-full page-index{% endblock %}

{% block prebody %}
<div style="display:none">
  <img src="{{ url_for('/img/logo-sq300.jpg') }}" alt="wx" />
</div>
{% endblock %}

{% block main %}

  {% include '_partial/index/banner.swig' %}
  {% include '_partial/common/copyright.swig' %}

{% endblock %}

{% block footer %}
  {% parent %}
{% endblock %}

{% block pagejs %}
{{ js('js/index') }}
{% endblock%}
