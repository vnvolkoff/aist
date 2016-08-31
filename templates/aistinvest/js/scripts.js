$(function () {

    function stopEvents(e) {
        e.stopPropagation();
        e.preventDefault();
    }

    function initFunc(parent) {
        /*hide after load*/
        var hideItem = $('.hide');
        hideItem.each(function () {
            $(this).delay(100).hide();
            $(this).delay(200).addClass('visible');
        });
        /* end of hide after load*/

        /*radio & checkbox*/
        var checkBox = $('input:checkbox'),
            radioBtn = $('input.radio-btn');

        parent.find(checkBox).each(function () {
            $(this).wrap('<span class="checkbox"></span>');
            $(this).change(function () {
                if ($(this).is(':checked')) {
                    $(this).parent().addClass('checked');
                } else {
                    $(this).parent().removeClass('checked');
                }
            });
            if ($(this).is(':checked')) {
                $(this).parent().addClass('checked');
            } else {
                $(this).parent().removeClass('checked');
            }
        });

        parent.find(radioBtn).each(function () {
            var groupName = $(this).attr('name') + '-radio';
            $(this).wrap('<span class="radio' + ' ' + groupName + '"></span>');
            $(this).change(function () {
                if ($(this).is(':checked')) {
                    $('.' + groupName).removeClass('checked');
                    $(this).parent().addClass('checked');
                } else {
                    $(this).parent().removeClass('checked');
                }
            });
            if ($(this).is(':checked')) {
                $(this).parent().addClass('checked');
            } else {
                $(this).parent().removeClass('checked');
            }
        });
        /* end of radio & checkbox*/

    }

    initFunc($(document));

    /*modal*/
    var header = $('header'),
        footer = $('footer'),
        pageHtml = $('html'),
        pageBody = $('body'),
        scrollBarW = 0;

    function getScrollBarWidth() {
        var inner = document.createElement('p');
        inner.style.width = "100%";
        inner.style.height = "200px";

        var outer = document.createElement('div');
        outer.style.position = "absolute";
        outer.style.top = "0px";
        outer.style.left = "0px";
        outer.style.visibility = "hidden";
        outer.style.width = "200px";
        outer.style.height = "150px";
        outer.style.overflow = "hidden";
        outer.appendChild(inner);

        document.body.appendChild(outer);
        var w1 = inner.offsetWidth;
        outer.style.overflow = 'scroll';
        var w2 = inner.offsetWidth;
        if (w1 == w2) w2 = outer.clientWidth;

        document.body.removeChild(outer);

        scrollBarW = (w1 - w2);
    }

    getScrollBarWidth();

    var modalHolder = $('#modal-holder');
    $(document).on('click', '.modal-trigger', function (e) {
        var target = 'templates/aistinvest/modals/' + $(this).attr('data-target') + '.html';
        modalHolder.empty().removeClass('active');
        modalHolder.load(target, function () {
            var mod = $('.modal');
            initFunc(mod);
            $(this).addClass('active');
        });
        stopEvents(e);
    });

    $(document).on('click', '[class*="modal-close"]', function (e) {
        modalHolder.empty().removeClass('active');
        stopEvents(e);
    });
    /* end of modal*/

    /*forms*/
    $('#subscribe-form').validate({
        errorPlacement: function (error, element) {
        }, /*disable error label*/
        rules: {
            email: {
                required: true,
                email: true
            }
        },
        highlight: function (element) {
            $(element).parent().addClass('error');
            $(element).addClass('error');
        },
        unhighlight: function (element) {
            $(element).parent().removeClass('error');
            $(element).removeClass('error');
        },
        submitHandler: function () {
            pageBody.addClass('modal-open');
            modalHolder.load('templates/aistinvest/modals/subscribe-modal.html', function () {
                $(this).addClass('active');
            });
        },
        invalidHandler: function (event, validator) {

        }
    });
    /* end of forms*/

    /*faq scroll block height*/
    $(window).on('load resize', function () {
        if ($(window).width() <= 640) {
            $('.faq-scroll').height($(window).height() - 120);
        } else {
            $('.faq-scroll').height($(window).height() - 220);
        }
    });
    /* end of faq scroll block height*/

    /*Browser And Platform Detect_______________*/
    /*pixel ratio*/
    var retina = window.devicePixelRatio > 1 ? "retina" : "no-retina";
    pageHtml.addClass(retina);
    /* end of pixel ratio*/

    if (pageHtml.is('.ie8, .ie9')) {
        modalHolder.load('templates/aistinvest/modals/warning-modal.html');
    }

    /*modalHolder.load('modals/map-modal.html', function () {
        var mod = $('.modal');
        initFunc(mod);
        $(this).addClass('active');
        
        
    });*/
    /* end of Browser And Platform Detect_______*/

    /*page bg*/
    var pageBg = $('.page-bg');
    if (!pageHtml.is('.ios, .android')) {
        pageBg.html('<video preload="auto" autoplay="autoplay" loop="loop"><source src="templates/aistinvest/video/aist-bg.mp4" type="video/mp4"><source src="video/aist-bg.ogv" type="video/ogv"><source src="templates/aistinvest/video/aist-bg.webm" type="video/webm"></video>');
    }
    pageBg.height($(window).height() + 80);
    /* end of page bg*/

});

$(window).load(function () {
    var pageHtml = $('html');
    pageHtml.addClass('loaded');
});