var Utility = function() {
    var $body = $('body'),
        $window = $(window);
    /*Detect IE*/
    var detectIE = function(callback)
    {
        isIE8 = !!navigator.userAgent.match(/MSIE 8.0/);
        isIE9 = !!navigator.userAgent.match(/MSIE 9.0/);
        isIE10 = !!navigator.userAgent.match(/MSIE 10.0/);
        isIE11 = !!navigator.userAgent.match(/rv:11.0/);

        if (isIE10) {
            $('html').addClass('ie10'); // detect IE10 version
        }

        if (isIE11) {
            $('html').addClass('ie11'); // detect IE11 version
        }

        if (isIE11 || isIE10 || isIE9 || isIE8)
        {
            $('html').addClass('ie'); // detect IE version
            if(typeof callback != 'undefined') callback();
        }
    };

    /*Scroll to top*/
    var scrollToTop = function(event)
    {
        if(event) event.preventDefault();
        $('html, body').stop().animate({
            scrollTop: 0
        }, 800);
    };

    /*Handle scroll to top*/
    var handleScroll = function()
    {
        $body.on('click', '[data-toggle="scroll-to-top"]', function(event){
            event.preventDefault();
            scrollToTop();
        });
        $window.trigger('scroll');
    };
    return {
        detectIE: function(callback){
            detectIE(callback);
        },
        handleScroll: function(){
            handleScroll();
        },
        scrollToTop: function(event){
            scrollToTop(event);
        },
        initAdmin: function() {
            function layoutFixed() {
                topOffset = 50;
                width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
                if (width < 768) {
                    $('div.navbar-collapse').addClass('collapse');
                    topOffset = 100; // 2-row-menu
                } else {
                    $('div.navbar-collapse').removeClass('collapse');
                }

                height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
                height = height - topOffset;
                if (height < 1) height = 1;
                if (height > topOffset) {
                    $("#page-wrapper").css("min-height", (height) + "px");
                }
            }
            $window = $(window);
            $('#side-menu').metisMenu();
            layoutFixed();
            $window.resize(function(){
                layoutFixed();
            });
        }
    };
}();