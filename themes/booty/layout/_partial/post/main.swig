<section class="section main post-main">
  <div class="container">
    <article class="post typo">
      <div class="post-cover">
        <img class="lozad post-pic" data-src="{{url_for(post.banner)}}" alt="{{post.title}}" />
      </div>
      <div class="post-content">
        {{ post.content}}
      </div>
      <h2 id="书中示例"><a href="#名人推荐" class="headerlink" title="名人推荐"></a>书中示例</h2>
      <div class="post-demos">
        <div class="columns is-multiline">
          {% for demo in post.demos %}
          <div class="column is-3">
            <div class="demo is--{{demo.type}}" data-chapter="{{demo.chapter}}" target="_blank">
              {% if demo.preview_pic %}
              <div class="demo-cover">
                <img class="lozad demo-pic" data-src="{{demo.preview_pic}}" alt="{{demo.name}}" />
              </div>
              {% endif %}
              <div class="demo-metas">
                {% if demo.preview_txt %}
                <div class="demo-cover">
                  <span class="demo-pic">{{demo.preview_txt}}</span>
                </div>
                {% endif %}
                <div class="demo-name">{{demo.name}}</div>
                <div class="demo-desc">{{demo.desc}}</div>
                <div class="demo-actions">
                  <div class="buttons">
                    {% if demo.type === "file" %}
                    <a class="button is-primary is-small demo-preview" href="{{demo.preview}}" target="_blank">下载源文件</a>
                    {% elif demo.type === "video" %}
                    <a class="button is-primary is-small demo-preview" href="{{demo.preview}}" target="_blank">观看小视频</a>
                    {% else %}
                    <a class="button is-primary is-small demo-preview" href="{{demo.preview}}" target="_blank">体验 DEMO</a>
                    {% endif %}
                    {% if demo.link %}
                    <a class="button is-primary is-small demo-link" href="{{demo.link}}" target="_blank">查看源文件</a>
                    {% endif %}
                    {% if demo.rel_url %}
                    <a class="button is-primary is-small demo-rel-link" href="{{demo.rel_url}}" target="_blank" title="{{demo.rel_title}}">查看原示例</a>
                    {% endif %}
                  </div>
                </div>
                <div class="demo-tags">
                  {% if demo.type === "file" %}
                  <span class="tag tag-file">文件</span>
                  {% elif demo.type === "video" %}
                  <span class="tag tag-video">视频</span>
                  {% elif demo.type === "codepen" %}
                  <span class="tag tag-codepen">codepen</span>
                  {% else %}
                  <span class="tag tag-src">源码</span>
                  {% endif %}
                </div>
              </div>
            </div>
          </div>
          {% endfor %}
        </div>
      </div>
    </article>
    {% include '../common/comment.swig' %}
  </div>
</section>
