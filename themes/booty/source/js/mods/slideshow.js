(function($, App) {

    if(App.isHome) return;

      var slides = $('.sl-slide').not('.sl-slide-list');
      slides.each(function(i) {
        slides[i].addEventListener('touchmove', function (e) { e.preventDefault(); }, false);;
      })
      

    $(function() {

        var Page = (function() {

            var isPopState = false,
                $navArrows = $( '#nav-arrows' ),
                $nav = $( '#nav-dots > span' ),
                slitslider = $( '#slider' ).slitslider( {
                    onBeforeChange : function( slide, pos ) {

                        $nav.removeClass( 'nav-dot-current' );
                        $nav.eq( pos ).addClass( 'nav-dot-current' );

                    },
                    onAfterChange : function($slide,pos){
                        if(isPopState){
                            isPopState = false;
                            return false;
                        }
                        setHistory(pos+1);
                        return false;
                    }
                } ),

                init = function() {

                    initEvents();
                    initGesture();
                    initAlbum();

                    initHistory();

                },
                initEvents = function() {

                    // add navigation events
                    $navArrows.children( ':last' ).on( 'click', function() {

                        slitslider.next();
                        return false;

                    } );

                    $navArrows.children( ':first' ).on( 'click', function() {

                        slitslider.previous();
                        return false;

                    } );

                    $nav.each( function( i ) {

                        $( this ).on( 'click', function( event ) {

                            var $dot = $( this );

                            if( !slitslider.isActive() ) {

                                $nav.removeClass( 'nav-dot-current' );
                                $dot.addClass( 'nav-dot-current' );

                            }

                            slitslider.jump( i + 1 );
                            return false;

                        } );

                    } );

                },
                initHistory = function(){
                    if(!supportHistoryApi()) return;

                    // Revert to a previously saved state
                    window.addEventListener('popstate', function(evt) {
                        if( !evt.state || ( evt.state.idx== (slitslider.current+1) ) ) return false;
                        isPopState = true;
                        slitslider.jump(evt.state.idx);

                    });

                    var hash = location.hash,
                        hash = hash.length>0 && hash.replace('#p','');

                    try{
                        hash = parseInt(hash);
                    }catch(e){
                        hash = 1;
                    }

                    // Store the initial content so we can revisit it later
                    history.replaceState({
                        idx: hash
                    }, document.title, document.location.href);

                    if(hash>1){
                        isPopState = true;
                        slitslider.jump(hash);
                    }
                },
                initGesture = function(){
                  var slides = $('.sl-slide').not('.sl-slide-list');
                  slides.hammer({

                  }).on('panup',function(e){
                      slitslider.next();

                  }).on('pandown',function(e){
                      slitslider.previous();
                  });
                  // slitslider.$el.hammer({
                  //
                  // }).on('panup',function(e){
                  //     slitslider.next();
                  //     console.log("test");
                  // }).on('pandown',function(e){
                  //     slitslider.previous();
                  // });
                },
                initAlbum = function(){
                    var idxCache = {},
                        $album = $('#album'),
                        $albumBd = $('.album-bd'),
                        $items = $album.find('.album-grid'),
                        len = $items.length;

                    if(len === 0) {
                        return;
                    }

                    if(len>3) {
                        $albumBd.css({
                            top: 0,
                            overflow: 'auto',
                            padding: '5% 0',
                            height: '100%'
                        })
                    }

                    $items.css({
                        height: ('33.33%')
                    });

                    $items.each(function(i,o){
                        idxCache[(o.id = 'albumGrid'+i)]=i+3;
                        $(o).on('click',function(ev){
                            slitslider.jump(idxCache[this.id]);
                        });
                    });
                },
                supportHistoryApi = function(){
                    if(window['history'] && history.pushState){
                        return true;
                    }
                    return false;
                },
                setHistory = function(idx){
                    if(!supportHistoryApi()) return;

                    var hash = '#p'+idx,
                        href = location.href.replace(location.hash, '');

                    // Add an item to the history log
                    history.pushState({idx:idx}, document.title/*title*/, href + hash);

                };

                return { init : init };

        })();

        Page.init();

        /**
         * Notes:
         *
         * example how to add items:
         */

        /*

        var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');

        // call the plugin's add method
        ss.add($items);

        */

    });

})(jQuery, App);
