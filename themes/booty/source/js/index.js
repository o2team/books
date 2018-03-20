(function($, App) {
    var ani = {
        init: function() {
            this.$d = $('#evt');
            this.$header = this.$d.find('.evt-header');
            this.$list = this.$d.find('.evt-list');

            App.$win.on('siteLoaded', function() {
                ani.run();
            });
        },
        run: function() {
        }
    };

    ani.init();

})(jQuery, App);
