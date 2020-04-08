/**
 * Theme functions file
 */
(function ($) {
    'use strict';

    var $document = $(document);
    var $window = $(window);


    /**
    * Document ready (jQuery)
    */
    $(function () {


        /**
         * Activate superfish menu.
         */
        $('.sf-menu').superfish({
            'speed': 'fast',
            'delay' : 0,
            'animation': {
                'height': 'show'
            }
        });


        /**
         * Activate jQuery.mmenu.
         */
        $("#menu-top-slide").mmenu({
            "slidingSubmenus": false,
            "extensions": [
                "theme-dark",
                "pageshadow",
                "border-full"
            ]
        });

        $("#menu-main-slide").mmenu({
            "slidingSubmenus": false,
            "extensions": [
                "theme-dark",
                "pageshadow",
                "border-full"
            ]
        });


        $(".sb-search").sbSearch();


        /**
         * Activate FitVids.
         */
        $(".entry-content, .video_cover").fitVids();


        /**
         * News ticker.
         */
        $('#ticker').ticker();


    });


    $.fn.ticker = function() {
        return this.each(function () {
            var $this = $(this);

            var _scroll = {
                delay: 1000,
                easing: 'linear',
                items: 1,
                duration: 0.05,
                timeoutDuration: 0,
                pauseOnHover: 'immediate'
            };

            $this.carouFredSel({
                width: 1000,
                align: false,
                items: {
                    width: 'variable',
                    height: 35,
                    visible: 1
                },
                scroll: _scroll
            });

            $this.parent('.caroufredsel_wrapper').css('width', '100%');
        }) ;
    };


    $.fn.sbSearch = function() {
       return this.each(function() {
           new UISearch( this );
       });
   };



})(jQuery);



/**
 * Homepage Slider & Video API Integration
 */

var fp_vimeoPlayers = [],fp_youtubeIDs = [], fp_youtubePlayers = [];
var vimeoPlayers = [], youtubeIDs = [], youtubePlayers = [];

function onYouTubePlayerAPIReady() {
    jQuery(document).ready(function($) {
        $.fn.fp_youtubeStateChange = function(event) {
            if (featured_flex === undefined) return;

            if (event.data === 1) {
                featured_flex.flexslider('stop');
            }
        }

        $(youtubeIDs).each(function(index, value) {
            youtubePlayers.push(new YT.Player(value));
        });

        $(fp_youtubeIDs).each(function(index, value) {
            fp_youtubePlayers.push(new YT.Player(value, {
                events: {
                    'onStateChange' : $.fn.fp_youtubeStateChange
                }
            }));
        });
    });
}

(function($) {
    $.fn.stopDontMove = function() {
        $(vimeoPlayers).each(function(i, el) {
            if ($(el).attr('src') != '') {
                $f(el).api('pause');
            }
        });

        $(youtubePlayers).each(function() {
            if ($.isFunction(this.stopVideo)) {
                this.stopVideo();
            }
        });
    }


    $.fn.fp_vimeoReady = function(playerID) {
        if (featured_flex === undefined) return;

        $f(playerID).addEvent('play', function() {
            featured_flex.flexslider('stop');
        });
    }
})(jQuery);

jQuery(document).ready(function($) {
    var selectors = [
        "iframe[src*='player.vimeo.com']",
        "iframe[src*='youtube.com']",
        "iframe[src*='youtube-nocookie.com']"
    ];


    $('#slider').find(selectors.join(',')).each(function() {
        var $this = $(this);
        var src = $this.prop('src');

        if (!$this.attr('id')) {
            $this.attr('id', 'ai' + Math.floor(Math.random() * 999999));
        }

        if (src.indexOf('vimeo') !== -1) {
            $(this).prop('src', src + '&api=1&player_id=' + $(this).prop('id'));
            fp_vimeoPlayers.push($this.get(0));
            $f(this).addEvent('ready', $.fn.fp_vimeoReady);
        }

        if (src.indexOf('youtube') !== -1) {
            $(this).prop('src', src + '&enablejsapi=1');
            fp_youtubeIDs.push($this.prop('id'));
        }
    });
});