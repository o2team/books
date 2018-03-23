<section class="section main post-main">
  <div class="container">
    <article class="post">
      <div class="post-cover">
        <img class="lozad post-pic" data-src="{{url_for(post.cover)}}" alt="{{post.title}}" />
      </div>
      <div class="post-content">
        {{ post.content}}
      </div>
      <div class="post-demos">
        {% for demo in post.demos %}
        <div class="demo is--{{demo.type}}" data-chapter="{{demo.chapter}}" target="_blank">
          {% if demo.preview_pic %}
          <div class="demo-cover">
            <img class="lozad demo-pic" data-src="{{demo.preview_pic}}" alt="{{demo.name}}" />
          </div>
          {% endif %}
          {% if demo.preview_txt %}
          <div class="demo-txt">
            <span class="demo-pic">{{demo.preview_txt}}</span>
          </div>
          {% endif %}
          <div class="demo-name">{{demo.name}}</div>
          <div class="demo-desc">{{demo.desc}}</div>
          <div class="demo-actions">
            {% if demo.type === "file" %}
            <a class="demo-preview" href="{{demo.preview}}" target="_blank">下载源文件</a>
            {% elif demo.type === "video" %}
            <a class="demo-preview" href="{{demo.preview}}" target="_blank">观看小视频</a>
            {% else %}
            <a class="demo-preview" href="{{demo.preview}}" target="_blank">体验 DEMO</a>
            {% endif %}
            {% if demo.link %}
            <a class="demo-link" href="{{demo.link}}" target="_blank">查看源文件</a>
            {% endif %}
            {% if demo.rel_url %}
            <a class="demo-rel-link" href="{{demo.rel_url}}" target="_blank" title="{{demo.rel_title}}">查看原示例</a>
            {% endif %}
          </div>
          <div class="demo-tags">
            {% if demo.type === "file" %}
            <span class="label label-file">文件</span>
            {% elif demo.type === "video" %}
            <span class="label label-video">视频</span>
            {% elif demo.type === "codepen" %}
            <span class="label label-codepen">codepen</span>
            {% else %}
            <span class="label label-src">源码</span>
            {% endif %}
          </div>
        </div>
        {% endfor %}
      </div>
    </article>
  </div>
</section>
