/* global App */
(function($, App) {

  $.extend(App, {
    $win: $(window),
    $doc: $(document),
    $body: $('body'),
    $htmlBody: $('html, body'),
    $fullPages: $('.fullscreen')
  });

  function onResize() {
    App.winH = App.$win.height();
    App.winW = App.$win.width();
    App.$fullPages.height(App.winH);
  }

  var loader = {
    destroy: function() {
      var $dom = $("#maskLoader").delay(500).fadeOut('slow', function() {
        $dom.remove();
        App.$win.trigger('loaderGone');
      });
    }
  };

  var menu = {
    init: function () {
      $('#navBurger').on('click', function () {
        this.classList.toggle('is-active');
        document.querySelector('#navMenu').classList.toggle('is-active');
        return false;
      });
    }
  };

  // https://github.com/ApoorvSaxena/lozad.js
  lozad().observe();

  App.$win.on('resize', function() {
    onResize();
    App.$win.trigger('siteResized');
  }).on('load', function() {
    onResize();
    loader.destroy();
    menu.init();
    App.$win.trigger('siteLoaded');
  }).on('loaderGone', function() {
    App.$htmlBody.removeClass('ovf-hidden');
  });

  onResize();

})(jQuery, App);