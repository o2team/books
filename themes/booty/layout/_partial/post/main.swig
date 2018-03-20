<!-- Post -->
<article class="post" style="display:none">
    <div class="post-content">
        {{ post.content}}
    </div>
</article>

<div id="slider" class="sl-slider-wrapper">

    <div class="sl-slider">

        <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-45" data-slice2-rotation="-10" data-slice1-scale="1.5" data-slice2-scale="1">
            <div class="sl-slide-inner">
                <div class="ecard">
                    <div class="deco" data-icon=""><img src="{{post.logo}}" alt="{{config.subtitle}}"/></div>
                    <h2>{{post.shorttitle}}</h2>
                    <blockquote><div class="quote-inner">{{post.subtitle}}</div><cite class="cl-effect-circle"><a href="//aotu.io" target="_blank">{{post.copyright}}</a></cite></blockquote>
                </div>
            </div>
        </div>

        <div class="sl-slide sl-slide-list" data-orientation="vertical" data-slice1-rotation="15" data-slice2-rotation="8" data-slice1-scale="1.5" data-slice2-scale="1">
            <div class="sl-slide-inner">
                <div id="album" class="album ani-fade">
                    <h2 class="album-hd">分享嘉宾</h2>
                    <div class="album-bd">
                        {% for slide in post.slides %}
                        {% if slide.author %}
                        <div class="album-grid">
                            <div class="album-grid-bd">
                                <div class="album-item">
                                    <img class="album-img" src="{{slide.avatar}}" alt="{{slide.author}}"/>
                                </div>
                                <div class="album-tit">
                                    <div class="album-tit-bd">
                                        <div class="album-tit-text">[&nbsp;{{slide.title}}&nbsp;]</div>
                                        <div class="album-author">{{slide.author}}&nbsp;&nbsp;<span class="album-comp">({{slide.company}})</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {% endif %}
                        {% endfor %}
                    </div>
                </div>
            </div>
        </div>

        {% for slide in post.slides %}
        <div class="sl-slide sl-slide-{{loop.index}} {{slide.xclass}}"
            data-orientation="{{slide.orientation}}"
            data-slice1-rotation="{{slide.slice1.rotation}}"
            data-slice2-rotation="{{slide.slice2.rotation}}"
            data-slice1-scale="{{slide.slice1.scale}}"
            data-slice2-scale="{{slide.slice2.scale}}">
            <div class="sl-slide-inner">
                <div class="ecard">
                    {% if slide.ficon %}
                    <div class="deco" data-ficon="&{{slide.ficon}}"></div>
                    {% else %}
                    <div class="deco"><img src="{{slide.avatar}}" alt="{{slide.author}}"/></div>
                    {% endif %}
                    {% if slide.title %}
                    <h2>{{slide.title}}</h2>
                    {% endif %}
                    <blockquote><p>{{slide.desc}}</p><cite><i class="fa fa-long-arrow-right" aria-hidden="true"></i>{{slide.author}} <i class="fa fa-heart" aria-hidden="true"></i> with {{slide.company}}</cite></blockquote>
                </div>
            </div>
        </div>
        {% endfor %}

    </div><!-- /sl-slider -->

    <nav id="nav-arrows" class="nav-arrows">
        <span class="nav-arrow-prev">Previous</span>
        <span class="nav-arrow-next">Next</span>
    </nav>

    <nav id="nav-dots" class="nav-dots">
        <span class="nav-dot-current"></span>
        <span></span>
        {% for slide in post.slides %}
        <span></span>
        {% endfor %}
    </nav>

</div><!-- /slider-wrapper -->

<div class="c-flex sl-back">
    <a href="{{url_for('notes')}}" title="Back to Notes" class="sl-back-btn">
        <svg class="sl-back-ico ico-home" viewBox="63 65 895 895" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 41.1 (35376) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="list" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(63.000000, 65.000000)">
                <path d="M447.641049,894.828468 C201.068257,894.828468 0.475683,694.232824 0.475683,447.672312 C0.475683,201.095427 201.069281,0.499783 447.641049,0.499783 C694.202584,0.499783 894.806415,201.095427 894.806415,447.672312 C894.807439,694.232824 694.202585,894.828468 447.641049,894.828468 Z M447.641049,54.589702 C230.89968,54.589702 54.563556,230.927873 54.563556,447.671289 C54.563556,664.423915 230.89968,840.737526 447.641049,840.737526 C664.382418,840.737526 840.718542,664.399355 840.718542,447.671289 C840.718543,230.939129 664.383442,54.589702 447.641049,54.589702 Z" id="Shape" fill="#6190e8"></path>
                <polygon id="Shape" fill="#6190e8" points="365.872744 420.626329 651.165396 420.626329 651.165396 474.710108 365.872744 474.710109"></polygon>
                <polygon id="Shape" fill="#6190e8" points="365.859441 276.725942 651.152093 276.725942 651.152093 330.818931 365.859441 330.818931"></polygon>
                <polygon id="Shape" fill="#6190e8" points="365.846138 564.508297 651.152093 564.508297 651.152093 618.601286 365.846138 618.601286"></polygon>
                <polygon id="Shape" fill="#6190e8" points="257.692906 420.61098 313.104937 420.61098 313.104937 474.710109 257.692906 474.710109"></polygon>
                <polygon id="Shape" fill="#6190e8" points="257.67858 276.714685 313.090611 276.714685 313.090611 330.804604 257.67858 330.804604"></polygon>
                <polygon id="Shape" fill="#6190e8" points="257.667324 564.508297 313.090611 564.508297 313.090611 618.601286 257.667324 618.601286"></polygon>
            </g>
        </svg>
    </a>
    <a href="//aotu.io" title="Back to aotu.io" class="sl-back-btn"><img class="sl-back-ico" src="{{url_for('img/logo-o2.png')}}" alt="aotu.io"/></a>
</div>
