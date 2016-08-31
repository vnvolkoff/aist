var pageHtml = $('html');
var ua = navigator.userAgent.toLowerCase(), isAndroid = ua.indexOf("android") > -1;
isAndroid && pageHtml.addClass("android");
var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
iOS && pageHtml.addClass("ios");
browserDetect = {
    matchGroups: [[{uaString: 'win', className: 'win'}, {
        uaString: 'mac',
        className: 'mac'
    }, {uaString: ['linux', 'x11'], className: 'linux'}], [{
        uaString: 'msie',
        className: 'trident'
    }, {uaString: 'applewebkit', className: 'webkit'}, {uaString: 'gecko', className: 'gecko'}, {
        uaString: 'opera',
        className: 'presto'
    }], [{uaString: 'msie 9.0', className: 'ie9'}, {uaString: 'msie 8.0', className: 'ie8'}, {
        uaString: 'msie 7.0',
        className: 'ie7'
    }, {uaString: 'msie 6.0', className: 'ie6'}, {uaString: 'firefox/2', className: 'ff'}, {
        uaString: 'firefox/3',
        className: 'ff'
    }, {uaString: 'firefox/4', className: 'ff'}, {
        uaString: ['opera', 'version/11'],
        className: 'opera'
    }, {uaString: ['opera', 'version/10'], className: 'opera'}, {
        uaString: 'opera/9',
        className: 'opera9'
    }, {uaString: ['safari', 'version/3'], className: 'safari'}, {
        uaString: ['safari', 'version/4'],
        className: 'safari4'
    }, {uaString: ['safari', 'version/5'], className: 'safari'}, {
        uaString: 'chrome',
        className: 'chrome'
    }, {uaString: 'safari', className: 'safari'}, {uaString: 'unknown', className: 'unknown'}]],
    init: function () {
        return this.detect(), this
    },
    addClass: function (a) {
        this.pageHolder = document.documentElement, document.documentElement.className += ' ' + a
    },
    detect: function () {
        for (var a, s = 0; s < this.matchGroups.length; s++) {
            a = this.matchGroups[s];
            for (var e, i = 0; i < a.length; i++)if (e = a[i], 'string' == typeof e.uaString) {
                if (this.uaMatch(e.uaString)) {
                    this.addClass(e.className);
                    break
                }
            } else {
                for (var t = 0, r = !0; t < e.uaString.length; t++)if (!this.uaMatch(e.uaString[t])) {
                    r = !1;
                    break
                }
                if (r) {
                    this.addClass(e.className);
                    break
                }
            }
        }
    },
    uaMatch: function (a) {
        return this.ua || (this.ua = navigator.userAgent.toLowerCase()), -1 != this.ua.indexOf(a)
    }
}.init();

/*!
 * fullPage 2.6.6
 * https://github.com/alvarotrigo/fullPage.js
 * @license MIT licensed
 *
 * Copyright (C) 2015 alvarotrigo.com - A project by Alvaro Trigo
 */
(function (c, l) {
    "function" === typeof define && define.amd ? define(["jquery"], function (k) {
        return l(k, c, c.document, c.Math)
    }) : "undefined" !== typeof exports ? module.exports = l(require("jquery"), c, c.document, c.Math) : l(jQuery, c, c.document, c.Math)
})("undefined" !== typeof window ? window : this, function (c, l, k, n, H) {
    var m = c(l), r = c(k);
    c.fn.fullpage = function (d) {
        function Ia(a) {
            a.find(".fp-slides").after('<div class="fp-controlArrow fp-prev"></div><div class="fp-controlArrow fp-next"></div>');
            "#fff" != d.controlArrowColor && (a.find(".fp-controlArrow.fp-next").css("border-color",
                "transparent transparent transparent " + d.controlArrowColor), a.find(".fp-controlArrow.fp-prev").css("border-color", "transparent " + d.controlArrowColor + " transparent transparent"));
            d.loopHorizontal || a.find(".fp-controlArrow.fp-prev").hide()
        }

        function Ja() {
            p.append('<div id="fp-nav"><ul></ul></div>');
            z = c("#fp-nav");
            z.addClass(function () {
                return d.showActiveTooltip ? "fp-show-active " + d.navigationPosition : d.navigationPosition
            });
            for (var a = 0; a < c(".fp-section").length; a++) {
                var b = "";
                d.anchors.length && (b = d.anchors[a]);
                var b = '<li><a href="#' + b + '"><span></span></a>', g = d.navigationTooltips[a];
                "undefined" !== typeof g && "" !== g && (b += '<div class="fp-tooltip ' + d.navigationPosition + '">' + g + "</div>");
                b += "</li>";
                z.find("ul").append(b)
            }
        }

        function da() {
            c(".fp-section").each(function () {
                var a = c(this).find(".fp-slide");
                a.length ? a.each(function () {
                    I(c(this))
                }) : I(c(this))
            });
            ea()
        }

        function ea() {
            var a = c(".fp-section.active"), b = a.find("SLIDES_WRAPPER"), g = a.find(".fp-scrollable");
            b.length && (g = b.find(".fp-slide.active"));
            g.mouseover();
            fa(a);
            c.isFunction(d.afterLoad) && d.afterLoad.call(a, a.data("anchor"), a.index(".fp-section") + 1);
            c.isFunction(d.afterRender) && d.afterRender.call(this)
        }

        function ga() {
            var a;
            if (!d.autoScrolling || d.scrollBar) {
                for (var b = m.scrollTop(), g = 0, J = n.abs(b - k.querySelectorAll(".fp-section")[0].offsetTop), e = k.querySelectorAll(".fp-section"), f = 0; f < e.length; ++f) {
                    var h = n.abs(b - e[f].offsetTop);
                    h < J && (g = f, J = h)
                }
                a = c(e).eq(g)
            }
            if (!d.autoScrolling || d.scrollBar) {
                if (!a.hasClass("active")) {
                    U = !0;
                    b = c(".fp-section.active");
                    g = b.index(".fp-section") +
                        1;
                    J = V(a);
                    e = a.data("anchor");
                    f = a.index(".fp-section") + 1;
                    h = a.find(".fp-slide.active");
                    if (h.length)var l = h.data("anchor"), p = h.index();
                    u && (a.addClass("active").siblings().removeClass("active"), c.isFunction(d.onLeave) && d.onLeave.call(b, g, f, J), c.isFunction(d.afterLoad) && d.afterLoad.call(a, e, f), K(e, f - 1), d.anchors.length && (A = e, W(p, l, e, f)));
                    clearTimeout(ha);
                    ha = setTimeout(function () {
                        U = !1
                    }, 100)
                }
                d.fitToSection && (clearTimeout(ia), ia = setTimeout(function () {
                    u && (c(".fp-section.active").is(a) && (v = !0), B(a), v = !1)
                }, 1E3))
            }
        }

        function ja(a) {
            return a.find(".fp-slides").length ? a.find(".fp-slide.active").find(".fp-scrollable") : a.find(".fp-scrollable")
        }

        function L(a, b) {
            if (h.m[a]) {
                var d, c;
                "down" == a ? (d = "bottom", c = e.moveSectionDown) : (d = "top", c = e.moveSectionUp);
                if (0 < b.length)if (d = "top" === d ? !b.scrollTop() : "bottom" === d ? b.scrollTop() + 1 + b.innerHeight() >= b[0].scrollHeight : void 0, d)c(); else return !0; else c()
            }
        }

        function Ka(a) {
            var b = a.originalEvent;
            if (!ka(a.target) && X(b)) {
                d.autoScrolling && a.preventDefault();
                a = c(".fp-section.active");
                var g =
                    ja(a);
                u && !w && (b = la(b), D = b.y, M = b.x, a.find(".fp-slides").length && n.abs(N - M) > n.abs(E - D) ? n.abs(N - M) > m.width() / 100 * d.touchSensitivity && (N > M ? h.m.right && e.moveSlideRight() : h.m.left && e.moveSlideLeft()) : d.autoScrolling && n.abs(E - D) > m.height() / 100 * d.touchSensitivity && (E > D ? L("down", g) : D > E && L("up", g)))
            }
        }

        function ka(a, b) {
            b = b || 0;
            var g = c(a).parent();
            return b < d.normalScrollElementTouchThreshold && g.is(d.normalScrollElements) ? !0 : b == d.normalScrollElementTouchThreshold ? !1 : ka(g, ++b)
        }

        function X(a) {
            return "undefined" === typeof a.pointerType ||
                "mouse" != a.pointerType
        }

        function La(a) {
            a = a.originalEvent;
            d.fitToSection && x.stop();
            X(a) && (a = la(a), E = a.y, N = a.x)
        }

        function ma(a, b) {
            for (var d = 0, c = a.slice(n.max(a.length - b, 1)), e = 0; e < c.length; e++)d += c[e];
            return n.ceil(d / b)
        }

        function t(a) {
            var b = (new Date).getTime();
            if (d.autoScrolling && !O) {
                a = l.event || a;
                var g = a.wheelDelta || -a.deltaY || -a.detail, e = n.max(-1, n.min(1, g));
                149 < C.length && C.shift();
                C.push(n.abs(g));
                d.scrollBar && (a.preventDefault ? a.preventDefault() : a.returnValue = !1);
                a = c(".fp-section.active");
                a = ja(a);
                g =
                    b - na;
                na = b;
                200 < g && (C = []);
                u && (b = ma(C, 10), g = ma(C, 70), b >= g && (0 > e ? L("down", a) : L("up", a)));
                return !1
            }
            d.fitToSection && x.stop()
        }

        function oa(a) {
            var b = c(".fp-section.active").find(".fp-slides"), g = b.find(".fp-slide").length;
            if (!(!b.length || w || 2 > g)) {
                var g = b.find(".fp-slide.active"), e = null, e = "prev" === a ? g.prev(".fp-slide") : g.next(".fp-slide");
                if (!e.length) {
                    if (!d.loopHorizontal)return;
                    e = "prev" === a ? g.siblings(":last") : g.siblings(":first")
                }
                w = !0;
                F(b, e)
            }
        }

        function pa() {
            c(".fp-slide.active").each(function () {
                Y(c(this),
                    "internal")
            })
        }

        function B(a, b, g) {
            var e = a.position();
            if ("undefined" !== typeof e && (b = {
                    element: a,
                    callback: b,
                    isMovementUp: g,
                    dest: e,
                    dtop: e.top,
                    yMovement: V(a),
                    anchorLink: a.data("anchor"),
                    sectionIndex: a.index(".fp-section"),
                    activeSlide: a.find(".fp-slide.active"),
                    activeSection: c(".fp-section.active"),
                    leavingSection: c(".fp-section.active").index(".fp-section") + 1,
                    localIsResizing: v
                }, !(b.activeSection.is(a) && !v || d.scrollBar && m.scrollTop() === b.dtop))) {
                if (b.activeSlide.length)var f = b.activeSlide.data("anchor"), h =
                    b.activeSlide.index();
                d.autoScrolling && d.continuousVertical && "undefined" !== typeof b.isMovementUp && (!b.isMovementUp && "up" == b.yMovement || b.isMovementUp && "down" == b.yMovement) && (b.isMovementUp ? c(".fp-section.active").before(b.activeSection.nextAll(".fp-section")) : c(".fp-section.active").after(b.activeSection.prevAll(".fp-section").get().reverse()), y(c(".fp-section.active").position().top), pa(), b.wrapAroundElements = b.activeSection, b.dest = b.element.position(), b.dtop = b.dest.top, b.yMovement = V(b.element));
                if (c.isFunction(d.onLeave) && !b.localIsResizing) {
                    if (!1 === d.onLeave.call(b.activeSection, b.leavingSection, b.sectionIndex + 1, b.yMovement))return;
                    Ma(b.activeSection)
                }
                a.addClass("active").siblings().removeClass("active");
                u = !1;
                W(h, f, b.anchorLink, b.sectionIndex);
                Na(b);
                A = b.anchorLink;
                K(b.anchorLink, b.sectionIndex)
            }
        }

        function Na(a) {
            if (d.css3 && d.autoScrolling && !d.scrollBar)qa("translate3d(0px, -" + a.dtop + "px, 0px)", !0), d.scrollingSpeed ? setTimeout(function () {
                Z(a)
            }, d.scrollingSpeed) : Z(a); else {
                var b = Oa(a);
                c(b.element).animate(b.options,
                    d.scrollingSpeed, d.easing).promise().done(function () {
                    Z(a)
                })
            }
        }

        function Oa(a) {
            var b = {};
            d.autoScrolling && !d.scrollBar ? (b.options = {top: -a.dtop}, b.element = ".fullpage-wrapper") : (b.options = {scrollTop: a.dtop}, b.element = "html, body");
            return b
        }

        function Z(a) {
            a.wrapAroundElements && a.wrapAroundElements.length && (a.isMovementUp ? c(".fp-section:first").before(a.wrapAroundElements) : c(".fp-section:last").after(a.wrapAroundElements), y(c(".fp-section.active").position().top), pa());
            a.element.find(".fp-scrollable").mouseover();
            c.isFunction(d.afterLoad) && !a.localIsResizing && d.afterLoad.call(a.element, a.anchorLink, a.sectionIndex + 1);
            fa(a.element);
            Pa(a.element);
            u = !0;
            c.isFunction(a.callback) && a.callback.call(this)
        }

        function fa(a) {
            a.find("img[data-src], video[data-src], audio[data-src]").each(function () {
                c(this).attr("src", c(this).data("src"));
                c(this).removeAttr("data-src")
            })
        }

        function Pa(a) {
            a.find("video, audio").each(function () {
                var a = c(this).get(0);
                a.hasAttribute("autoplay") && "function" === typeof a.play && a.play()
            })
        }

        function Ma(a) {
            a.find("video, audio").each(function () {
                var a =
                    c(this).get(0);
                a.hasAttribute("data-ignore") || "function" !== typeof a.pause || a.pause()
            })
        }

        function ra() {
            if (!U && !d.lockAnchors) {
                var a = l.location.hash.replace("#", "").split("/"), b = a[0], a = a[1];
                if (b.length) {
                    var c = "undefined" === typeof A, e = "undefined" === typeof A && "undefined" === typeof a && !w;
                    (b && b !== A && !c || e || !w && aa != a) && ba(b, a)
                }
            }
        }

        function Qa(a) {
            u && (a.pageY < P ? e.moveSectionUp() : a.pageY > P && e.moveSectionDown());
            P = a.pageY
        }

        function F(a, b) {
            var g = b.position(), e = b.index(), f = a.closest(".fp-section"), h = f.index(".fp-section"),
                k = f.data("anchor"), l = f.find(".fp-slidesNav"), m = sa(b), p = v;
            if (d.onSlideLeave) {
                var t = f.find(".fp-slide.active"), q = t.index(), r;
                r = q == e ? "none" : q > e ? "left" : "right";
                if (!p && "none" !== r && c.isFunction(d.onSlideLeave) && !1 === d.onSlideLeave.call(t, k, h + 1, q, r, e)) {
                    w = !1;
                    return
                }
            }
            b.addClass("active").siblings().removeClass("active");
            !d.loopHorizontal && d.controlArrows && (f.find(".fp-controlArrow.fp-prev").toggle(0 !== e), f.find(".fp-controlArrow.fp-next").toggle(!b.is(":last-child")));
            f.hasClass("active") && W(e, m, k, h);
            var u =
                function () {
                    p || c.isFunction(d.afterSlideLoad) && d.afterSlideLoad.call(b, k, h + 1, m, e);
                    w = !1
                };
            d.css3 ? (g = "translate3d(-" + n.round(g.left) + "px, 0px, 0px)", ta(a.find(".fp-slidesContainer"), 0 < d.scrollingSpeed).css(ua(g)), setTimeout(function () {
                u()
            }, d.scrollingSpeed, d.easing)) : a.animate({scrollLeft: n.round(g.left)}, d.scrollingSpeed, d.easing, function () {
                u()
            });
            l.find(".active").removeClass("active");
            l.find("li").eq(e).find("a").addClass("active")
        }

        function va() {
            wa();
            if (Q) {
                var a = c(k.activeElement);
                a.is("textarea") ||
                a.is("input") || a.is("select") || (a = m.height(), n.abs(a - ca) > 20 * n.max(ca, a) / 100 && (e.reBuild(!0), ca = a))
            } else clearTimeout(xa), xa = setTimeout(function () {
                e.reBuild(!0)
            }, 350)
        }

        function wa() {
            var a = d.responsive || d.responsiveWidth, b = d.responsiveHeight;
            a && e.setResponsive(m.width() < a);
            b && (f.hasClass("fp-responsive") || e.setResponsive(m.height() < b))
        }

        function ta(a) {
            var b = "all " + d.scrollingSpeed + "ms " + d.easingcss3;
            a.removeClass("fp-notransition");
            return a.css({"-webkit-transition": b, transition: b})
        }

        function Ra(a, b) {
            if (825 >
                a || 900 > b) {
                var d = n.min(100 * a / 825, 100 * b / 900).toFixed(2);
                p.css("font-size", d + "%")
            } else p.css("font-size", "100%")
        }

        function K(a, b) {
            d.menu && (c(d.menu).find(".active").removeClass("active"), c(d.menu).find('[data-menuanchor="' + a + '"]').addClass("active"));
            d.navigation && (c("#fp-nav").find(".active").removeClass("active"), a ? c("#fp-nav").find('a[href="#' + a + '"]').addClass("active") : c("#fp-nav").find("li").eq(b).find("a").addClass("active"))
        }

        function V(a) {
            var b = c(".fp-section.active").index(".fp-section");
            a = a.index(".fp-section");
            return b == a ? "none" : b > a ? "up" : "down"
        }

        function I(a) {
            a.css("overflow", "hidden");
            var b = a.closest(".fp-section"), c = a.find(".fp-scrollable"), e;
            c.length ? e = c.get(0).scrollHeight : (e = a.get(0).scrollHeight, d.verticalCentered && (e = a.find(".fp-tableCell").get(0).scrollHeight));
            b = q - parseInt(b.css("padding-bottom")) - parseInt(b.css("padding-top"));
            e > b ? c.length ? c.css("height", b + "px").parent().css("height", b + "px") : (d.verticalCentered ? a.find(".fp-tableCell").wrapInner('<div class="fp-scrollable" />') : a.wrapInner('<div class="fp-scrollable" />'),
                a.find(".fp-scrollable").slimScroll({
                    allowPageScroll: !0,
                    height: b + "px",
                    size: "10px",
                    alwaysVisible: !0
                })) : ya(a);
            a.css("overflow", "")
        }

        function ya(a) {
            a.find(".fp-scrollable").children().first().unwrap().unwrap();
            a.find(".slimScrollBar").remove();
            a.find(".slimScrollRail").remove()
        }

        function za(a) {
            a.addClass("fp-table").wrapInner('<div class="fp-tableCell" style="height:' + Aa(a) + 'px;" />')
        }

        function Aa(a) {
            var b = q;
            if (d.paddingTop || d.paddingBottom)b = a, b.hasClass("fp-section") || (b = a.closest(".fp-section")), a = parseInt(b.css("padding-top")) +
                parseInt(b.css("padding-bottom")), b = q - a;
            return b
        }

        function qa(a, b) {
            b ? ta(f) : f.addClass("fp-notransition");
            f.css(ua(a));
            setTimeout(function () {
                f.removeClass("fp-notransition")
            }, 10)
        }

        function Ba(a) {
            var b = c('.fp-section[data-anchor="' + a + '"]');
            b.length || (b = c(".fp-section").eq(a - 1));
            return b
        }

        function ba(a, b) {
            var d = Ba(a);
            "undefined" === typeof b && (b = 0);
            a === A || d.hasClass("active") ? Ca(d, b) : B(d, function () {
                Ca(d, b)
            })
        }

        function Ca(a, b) {
            if ("undefined" !== typeof b) {
                var d = a.find(".fp-slides"), c;
                c = a.find(".fp-slides");
                var e =
                    c.find('.fp-slide[data-anchor="' + b + '"]');
                e.length || (e = c.find(".fp-slide").eq(b));
                c = e;
                c.length && F(d, c)
            }
        }

        function Sa(a, b) {
            a.append('<div class="fp-slidesNav"><ul></ul></div>');
            var c = a.find(".fp-slidesNav");
            c.addClass(d.slidesNavPosition);
            for (var e = 0; e < b; e++)c.find("ul").append('<li><a href="#"><span></span></a></li>');
            c.css("margin-left", "-" + c.width() / 2 + "px");
            c.find("li").first().find("a").addClass("active")
        }

        function W(a, b, c, e) {
            e = "";
            d.anchors.length && !d.lockAnchors && (a ? ("undefined" !== typeof c && (e = c),
            "undefined" === typeof b && (b = a), aa = b, Da(e + "/" + b)) : ("undefined" !== typeof a && (aa = b), Da(c)));
            Ea()
        }

        function Da(a) {
            if (d.recordHistory)location.hash = a; else if (Q || R)history.replaceState(H, H, "#" + a); else {
                var b = l.location.href.split("#")[0];
                l.location.replace(b + "#" + a)
            }
        }

        function sa(a) {
            var b = a.data("anchor");
            a = a.index();
            "undefined" === typeof b && (b = a);
            return b
        }

        function Ea() {
            var a = c(".fp-section.active"), b = a.find(".fp-slide.active"), e = a.data("anchor"), f = sa(b), a = a.index(".fp-section"), a = String(a);
            d.anchors.length &&
            (a = e);
            b.length && (a = a + "-" + f);
            a = a.replace("/", "-").replace("#", "");
            p[0].className = p[0].className.replace(RegExp("\\b\\s?fp-viewing-[^\\s]+\\b", "g"), "");
            p.addClass("fp-viewing-" + a)
        }

        function Ta() {
            var a = k.createElement("p"), b, c = {
                webkitTransform: "-webkit-transform",
                OTransform: "-o-transform",
                msTransform: "-ms-transform",
                MozTransform: "-moz-transform",
                transform: "transform"
            };
            k.body.insertBefore(a, null);
            for (var d in c)a.style[d] !== H && (a.style[d] = "translate3d(1px,1px,1px)", b = l.getComputedStyle(a).getPropertyValue(c[d]));
            k.body.removeChild(a);
            return b !== H && 0 < b.length && "none" !== b
        }

        function Ua() {
            if (Q || R) {
                var a = Fa();
                c(".fullpage-wrapper").off("touchstart " + a.down).on("touchstart " + a.down, La);
                c(".fullpage-wrapper").off("touchmove " + a.move).on("touchmove " + a.move, Ka)
            }
        }

        function Va() {
            if (Q || R) {
                var a = Fa();
                c(".fullpage-wrapper").off("touchstart " + a.down);
                c(".fullpage-wrapper").off("touchmove " + a.move)
            }
        }

        function Fa() {
            return l.PointerEvent ? {down: "pointerdown", move: "pointermove"} : {
                down: "MSPointerDown",
                move: "MSPointerMove"
            }
        }

        function la(a) {
            var b =
                [];
            b.y = "undefined" !== typeof a.pageY && (a.pageY || a.pageX) ? a.pageY : a.touches[0].pageY;
            b.x = "undefined" !== typeof a.pageX && (a.pageY || a.pageX) ? a.pageX : a.touches[0].pageX;
            R && X(a) && (b.y = a.touches[0].pageY, b.x = a.touches[0].pageX);
            return b
        }

        function Y(a, b) {
            e.setScrollingSpeed(0, "internal");
            "undefined" !== typeof b && (v = !0);
            F(a.closest(".fp-slides"), a);
            "undefined" !== typeof b && (v = !1);
            e.setScrollingSpeed(G.scrollingSpeed, "internal")
        }

        function y(a) {
            d.scrollBar ? f.scrollTop(a) : d.css3 ? qa("translate3d(0px, -" + a + "px, 0px)",
                !1) : f.css("top", -a)
        }

        function ua(a) {
            return {"-webkit-transform": a, "-moz-transform": a, "-ms-transform": a, transform: a}
        }

        function Ga(a, b, c) {
            switch (b) {
                case "up":
                    h[c].up = a;
                    break;
                case "down":
                    h[c].down = a;
                    break;
                case "left":
                    h[c].left = a;
                    break;
                case "right":
                    h[c].right = a;
                    break;
                case "all":
                    "m" == c ? e.setAllowScrolling(a) : e.setKeyboardScrolling(a)
            }
        }

        function Wa() {
            y(0);
            c("#fp-nav, .fp-slidesNav, .fp-controlArrow").remove();
            c(".fp-section").css({height: "", "background-color": "", padding: ""});
            c(".fp-slide").css({width: ""});
            f.css({height: "", position: "", "-ms-touch-action": "", "touch-action": ""});
            c(".fp-section, .fp-slide").each(function () {
                ya(c(this));
                c(this).removeClass("fp-table active")
            });
            f.addClass("fp-notransition");
            f.find(".fp-tableCell, .fp-slidesContainer, .fp-slides").each(function () {
                c(this).replaceWith(this.childNodes)
            });
            x.scrollTop(0)
        }

        function S(a, b, c) {
            d[a] = b;
            "internal" !== c && (G[a] = b)
        }

        function T(a, b) {
            console && console[a] && console[a]("fullPage: " + b)
        }

        var x = c("html, body"), p = c("body"), e = c.fn.fullpage;
        d = c.extend({
            menu: !1,
            anchors: [],
            lockAnchors: !1,
            navigation: !1,
            navigationPosition: "right",
            navigationTooltips: [],
            showActiveTooltip: !1,
            slidesNavigation: !1,
            slidesNavPosition: "bottom",
            scrollBar: !1,
            css3: !0,
            scrollingSpeed: 700,
            autoScrolling: !0,
            fitToSection: !0,
            easing: "easeInOutCubic",
            easingcss3: "ease",
            loopBottom: !1,
            loopTop: !1,
            loopHorizontal: !0,
            continuousVertical: !1,
            normalScrollElements: null,
            scrollOverflow: !1,
            touchSensitivity: 5,
            normalScrollElementTouchThreshold: 5,
            keyboardScrolling: !0,
            animateAnchor: !0,
            recordHistory: !0,
            controlArrows: !0,
            controlArrowColor: "#fff",
            verticalCentered: !0,
            resize: !1,
            sectionsColor: [],
            paddingTop: 0,
            paddingBottom: 0,
            fixedElements: null,
            responsive: 0,
            responsiveWidth: 0,
            responsiveHeight: 0,
            sectionSelector: ".section",
            slideSelector: ".slide",
            afterLoad: null,
            onLeave: null,
            afterRender: null,
            afterResize: null,
            afterReBuild: null,
            afterSlideLoad: null,
            onSlideLeave: null
        }, d);
        (function () {
            d.continuousVertical && (d.loopTop || d.loopBottom) && (d.continuousVertical = !1, T("warn", "Option `loopTop/loopBottom` is mutually exclusive with `continuousVertical`; `continuousVertical` disabled"));
            d.continuousVertical && d.scrollBar && (d.continuousVertical = !1, T("warn", "Option `scrollBar` is mutually exclusive with `continuousVertical`; `continuousVertical` disabled"));
            c.each(d.anchors, function (a, b) {
                (c("#" + b).length || c('[name="' + b + '"]').length) && T("error", "data-anchor tags can not have the same value as any `id` element on the site (or `name` element for IE).")
            })
        })();
        c.extend(c.easing, {
            easeInOutCubic: function (a, b, c, d, e) {
                return 1 > (b /= e / 2) ? d / 2 * b * b * b + c : d / 2 * ((b -= 2) * b * b + 2) + c
            }
        });
        c.extend(c.easing, {
            easeInQuart: function (a,
                                   b, c, d, e) {
                return d * (b /= e) * b * b * b + c
            }
        });
        e.setAutoScrolling = function (a, b) {
            S("autoScrolling", a, b);
            var g = c(".fp-section.active");
            d.autoScrolling && !d.scrollBar ? (x.css({
                overflow: "hidden",
                height: "100%"
            }), e.setRecordHistory(d.recordHistory, "internal"), f.css({
                "-ms-touch-action": "none",
                "touch-action": "none"
            }), g.length && y(g.position().top)) : (x.css({
                overflow: "visible",
                height: "initial"
            }), e.setRecordHistory(!1, "internal"), f.css({
                "-ms-touch-action": "",
                "touch-action": ""
            }), y(0), g.length && x.scrollTop(g.position().top))
        };
        e.setRecordHistory = function (a, b) {
            S("recordHistory", a, b)
        };
        e.setScrollingSpeed = function (a, b) {
            S("scrollingSpeed", a, b)
        };
        e.setFitToSection = function (a, b) {
            S("fitToSection", a, b)
        };
        e.setLockAnchors = function (a) {
            d.lockAnchors = a
        };
        e.setMouseWheelScrolling = function (a) {
            a ? k.addEventListener ? (k.addEventListener("mousewheel", t, !1), k.addEventListener("wheel", t, !1), k.addEventListener("DOMMouseScroll", t, !1)) : k.attachEvent("onmousewheel", t) : k.addEventListener ? (k.removeEventListener("mousewheel", t, !1), k.removeEventListener("wheel",
                t, !1), k.removeEventListener("DOMMouseScroll", t, !1)) : k.detachEvent("onmousewheel", t)
        };
        e.setAllowScrolling = function (a, b) {
            "undefined" !== typeof b ? (b = b.replace(/ /g, "").split(","), c.each(b, function (b, c) {
                Ga(a, c, "m")
            })) : a ? (e.setMouseWheelScrolling(!0), Ua()) : (e.setMouseWheelScrolling(!1), Va())
        };
        e.setKeyboardScrolling = function (a, b) {
            "undefined" !== typeof b ? (b = b.replace(/ /g, "").split(","), c.each(b, function (b, c) {
                Ga(a, c, "k")
            })) : d.keyboardScrolling = a
        };
        e.moveSectionUp = function () {
            var a = c(".fp-section.active").prev(".fp-section");
            a.length || !d.loopTop && !d.continuousVertical || (a = c(".fp-section").last());
            a.length && B(a, null, !0)
        };
        e.moveSectionDown = function () {
            var a = c(".fp-section.active").next(".fp-section");
            a.length || !d.loopBottom && !d.continuousVertical || (a = c(".fp-section").first());
            !a.length || d.onBeforeMoveSection && c.isFunction(d.onBeforeMoveSection) && !1 === d.onBeforeMoveSection.call(this, direction, currentSlide, destiny, slides, activeSection) || B(a, null, !1)
        };
        e.silentMoveTo = function (a, b) {
            e.setScrollingSpeed(0, "internal");
            e.moveTo(a,
                b);
            e.setScrollingSpeed(G.scrollingSpeed, "internal")
        };
        e.moveTo = function (a, b) {
            var c = Ba(a);
            "undefined" !== typeof b ? ba(a, b) : 0 < c.length && B(c)
        };
        e.moveSlideRight = function () {
            oa("next")
        };
        e.moveSlideLeft = function () {
            oa("prev")
        };
        e.reBuild = function (a) {
            if (!f.hasClass("fp-destroyed")) {
                v = !0;
                var b = m.width();
                q = m.height();
                d.resize && Ra(q, b);
                c(".fp-section").each(function () {
                    var a = c(this).find(".fp-slides"), b = c(this).find(".fp-slide");
                    d.verticalCentered && c(this).find(".fp-tableCell").css("height", Aa(c(this)) + "px");
                    c(this).css("height",
                        q + "px");
                    d.scrollOverflow && (b.length ? b.each(function () {
                        I(c(this))
                    }) : I(c(this)));
                    1 < b.length && F(a, a.find(".fp-slide.active"))
                });
                (b = c(".fp-section.active").index(".fp-section")) && e.silentMoveTo(b + 1);
                v = !1;
                c.isFunction(d.afterResize) && a && d.afterResize.call(f);
                c.isFunction(d.afterReBuild) && !a && d.afterReBuild.call(f)
            }
        };
        e.setResponsive = function (a) {
            var b = f.hasClass("fp-responsive");
            a ? b || (e.setAutoScrolling(!1, "internal"), e.setFitToSection(!1, "internal"), c("#fp-nav").hide(), f.addClass("fp-responsive")) : b && (e.setAutoScrolling(G.autoScrolling,
                "internal"), e.setFitToSection(G.autoScrolling, "internal"), c("#fp-nav").show(), f.removeClass("fp-responsive"))
        };
        var w = !1, Q = navigator.userAgent.match(/(iPhone|iPod|iPad|Android|playbook|silk|BlackBerry|BB10|Windows Phone|Tizen|Bada|webOS|IEMobile|Opera Mini)/), R = "ontouchstart" in l || 0 < navigator.msMaxTouchPoints || navigator.maxTouchPoints, f = c(this), q = m.height(), v = !1, A, aa, u = !0, C = [], z, O, h = {
            m: {
                up: !0,
                down: !0,
                left: !0,
                right: !0
            }
        };
        h.k = c.extend(!0, {}, h.m);
        var G = c.extend(!0, {}, d);
        c(this).length ? (f.css({
            height: "100%",
            position: "relative"
        }), f.addClass("fullpage-wrapper"), c("html").addClass("fp-enabled")) : T("error", "Error! Fullpage.js needs to be initialized with a selector. For example: $('#myContainer').fullpage();");
        d.css3 && (d.css3 = Ta());
        e.setAllowScrolling(!0);
        f.removeClass("fp-destroyed");
        c(d.sectionSelector).each(function () {
            c(this).addClass("fp-section")
        });
        c(d.slideSelector).each(function () {
            c(this).addClass("fp-slide")
        });
        d.navigation && Ja();
        c(".fp-section").each(function (a) {
            var b = c(this), e = c(this).find(".fp-slide"),
                f = e.length;
            a || 0 !== c(".fp-section.active").length || c(this).addClass("active");
            c(this).css("height", q + "px");
            d.paddingTop && c(this).css("padding-top", d.paddingTop);
            d.paddingBottom && c(this).css("padding-bottom", d.paddingBottom);
            "undefined" !== typeof d.sectionsColor[a] && c(this).css("background-color", d.sectionsColor[a]);
            "undefined" !== typeof d.anchors[a] && (c(this).attr("data-anchor", d.anchors[a]), c(this).hasClass("active") && K(d.anchors[a], a));
            if (0 < f) {
                a = 100 * f;
                var h = 100 / f;
                e.wrapAll('<div class="fp-slidesContainer" />');
                e.parent().wrap('<div class="fp-slides" />');
                c(this).find(".fp-slidesContainer").css("width", a + "%");
                1 < f && (d.controlArrows && Ia(c(this)), d.slidesNavigation && Sa(c(this), f));
                e.each(function (a) {
                    c(this).css("width", h + "%");
                    d.verticalCentered && za(c(this))
                });
                b = b.find(".fp-slide.active");
                b.length ? Y(b) : e.eq(0).addClass("active")
            } else d.verticalCentered && za(c(this))
        }).promise().done(function () {
            e.setAutoScrolling(d.autoScrolling, "internal");
            var a = c(".fp-section.active").find(".fp-slide.active");
            a.length && (0 !==
            c(".fp-section.active").index(".fp-section") || 0 === c(".fp-section.active").index(".fp-section") && 0 !== a.index()) && Y(a);
            d.fixedElements && d.css3 && c(d.fixedElements).appendTo(p);
            d.navigation && (z.css("margin-top", "-" + z.height() / 2 + "px"), z.find("li").eq(c(".fp-section.active").index(".fp-section")).find("a").addClass("active"));
            d.menu && d.css3 && c(d.menu).closest(".fullpage-wrapper").length && c(d.menu).appendTo(p);
            d.scrollOverflow ? ("complete" === k.readyState && da(), m.on("load", da)) : ea();
            wa();
            if (!d.animateAnchor &&
                (a = l.location.hash.replace("#", "").split("/")[0], a.length)) {
                var b = c('[data-anchor="' + a + '"]');
                b.length && (d.autoScrolling ? y(b.position().top) : (y(0), x.scrollTop(b.position().top)), K(a, null), c.isFunction(d.afterLoad) && d.afterLoad.call(b, a, b.index(".fp-section") + 1), b.addClass("active").siblings().removeClass("active"))
            }
            Ea();
            m.on("load", function () {
                var a = l.location.hash.replace("#", "").split("/"), b = a[0], a = a[1];
                b && ba(b, a)
            })
        });
        var ha, ia, U = !1;
        m.on("scroll", ga);
        var E = 0, N = 0, D = 0, M = 0, na = (new Date).getTime();
        m.on("hashchange",
            ra);
        r.keydown(function (a) {
            clearTimeout(Ha);
            var b = c(":focus");
            b.is("textarea") || b.is("input") || b.is("select") || !d.keyboardScrolling || !d.autoScrolling || (-1 < c.inArray(a.which, [40, 38, 32, 33, 34]) && a.preventDefault(), Ha = setTimeout(function () {
                var b = a.shiftKey;
                O = a.ctrlKey;
                switch (a.which) {
                    case 38:
                    case 33:
                        h.k.up && e.moveSectionUp();
                        break;
                    case 32:
                        if (b && h.k.up) {
                            e.moveSectionUp();
                            break
                        }
                    case 40:
                    case 34:
                        h.k.down && e.moveSectionDown();
                        break;
                    case 36:
                        h.k.up && e.moveTo(1);
                        break;
                    case 35:
                        h.k.down && e.moveTo(c(".fp-section").length);
                        break;
                    case 37:
                        h.k.left && e.moveSlideLeft();
                        break;
                    case 39:
                        h.k.right && e.moveSlideRight()
                }
            }, 150))
        });
        r.keyup(function (a) {
            O = a.ctrlKey
        });
        c(l).blur(function () {
            O = !1
        });
        var Ha;
        f.mousedown(function (a) {
            2 == a.which && (P = a.pageY, f.on("mousemove", Qa))
        });
        f.mouseup(function (a) {
            2 == a.which && f.off("mousemove")
        });
        var P = 0;
        r.on("click touchstart", "#fp-nav a", function (a) {
            a.preventDefault();
            a = c(this).parent().index();
            B(c(".fp-section").eq(a))
        });
        r.on("click touchstart", ".fp-slidesNav a", function (a) {
            a.preventDefault();
            a = c(this).closest(".fp-section").find(".fp-slides");
            var b = a.find(".fp-slide").eq(c(this).closest("li").index());
            F(a, b)
        });
        d.normalScrollElements && (r.on("mouseenter", d.normalScrollElements, function () {
            e.setMouseWheelScrolling(!1)
        }), r.on("mouseleave", d.normalScrollElements, function () {
            e.setMouseWheelScrolling(!0)
        }));
        c(".fp-section").on("click touchstart", ".fp-controlArrow", function () {
            c(this).hasClass("fp-prev") ? h.m.left && e.moveSlideLeft() : h.m.right && e.moveSlideRight()
        });
        m.resize(va);
        var ca = q, xa;
        e.destroy = function (a) {
            e.setAutoScrolling(!1, "internal");
            e.setAllowScrolling(!1);
            e.setKeyboardScrolling(!1);
            f.addClass("fp-destroyed");
            m.off("scroll", ga).off("hashchange", ra).off("resize", va);
            r.off("click", "#fp-nav a").off("mouseenter", "#fp-nav li").off("mouseleave", "#fp-nav li").off("click", ".fp-slidesNav a").off("mouseover", d.normalScrollElements).off("mouseout", d.normalScrollElements);
            c(".fp-section").off("click", ".fp-controlArrow");
            a && Wa()
        }
    }
});

/*!
 * Chart.js
 * http://chartjs.org/
 * Version: 1.0.2
 *
 * Copyright 2015 Nick Downie
 * Released under the MIT license
 * https://github.com/nnnick/Chart.js/blob/master/LICENSE.md
 */


(function () {

    "use strict";

    //Declare root variable - window in the browser, global on the server
    var root = this,
        previous = root.Chart;

    //Occupy the global variable of Chart, and create a simple base class
    var Chart = function (context) {
        var chart = this;
        this.canvas = context.canvas;

        this.ctx = context;

        //Variables global to the chart
        var computeDimension = function (element, dimension) {
            if (element['offset' + dimension]) {
                return element['offset' + dimension];
            }
            else {
                return document.defaultView.getComputedStyle(element).getPropertyValue(dimension);
            }
        };

        var width = this.width = computeDimension(context.canvas, 'Width') || context.canvas.width;
        var height = this.height = computeDimension(context.canvas, 'Height') || context.canvas.height;

        width = this.width = context.canvas.width;
        height = this.height = context.canvas.height;
        this.aspectRatio = this.width / this.height;
        //High pixel density displays - multiply the size of the canvas height/width by the device pixel ratio, then scale.
        helpers.retinaScale(this);

        return this;
    };
    //Globally expose the defaults to allow for user updating/changing
    Chart.defaults = {
        global: {
            // Boolean - Whether to animate the chart
            animation: true,

            // Number - Number of animation steps
            animationSteps: 60,

            // String - Animation easing effect
            animationEasing: "easeOutQuart",

            // Boolean - If we should show the scale at all
            showScale: true,

            // Boolean - If we want to override with a hard coded scale
            scaleOverride: false,

            // ** Required if scaleOverride is true **
            // Number - The number of steps in a hard coded scale
            scaleSteps: null,
            // Number - The value jump in the hard coded scale
            scaleStepWidth: null,
            // Number - The scale starting value
            scaleStartValue: null,

            // String - Colour of the scale line
            scaleLineColor: "rgba(0,0,0,.1)",

            // Number - Pixel width of the scale line
            scaleLineWidth: 1,

            // Boolean - Whether to show labels on the scale
            scaleShowLabels: true,

            // Interpolated JS string - can access value
            scaleLabel: "<%=value%>",

            // Boolean - Whether the scale should stick to integers, and not show any floats even if drawing space is there
            scaleIntegersOnly: true,

            // Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
            scaleBeginAtZero: false,

            // String - Scale label font declaration for the scale label
            scaleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

            // Number - Scale label font size in pixels
            scaleFontSize: 12,

            // String - Scale label font weight style
            scaleFontStyle: "normal",

            // String - Scale label font colour
            scaleFontColor: "#666",

            // Boolean - whether or not the chart should be responsive and resize when the browser does.
            responsive: false,

            // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio: true,

            // Boolean - Determines whether to draw tooltips on the canvas or not - attaches events to touchmove & mousemove
            showTooltips: true,

            // Boolean - Determines whether to draw built-in tooltip or call custom tooltip function
            customTooltips: false,

            // Array - Array of string names to attach tooltip events
            tooltipEvents: ["mousemove", "touchstart", "touchmove", "mouseout"],

            // String - Tooltip background colour
            tooltipFillColor: "rgba(0,0,0,0.8)",

            // String - Tooltip label font declaration for the scale label
            tooltipFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

            // Number - Tooltip label font size in pixels
            tooltipFontSize: 14,

            // String - Tooltip font weight style
            tooltipFontStyle: "normal",

            // String - Tooltip label font colour
            tooltipFontColor: "#fff",

            // String - Tooltip title font declaration for the scale label
            tooltipTitleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

            // Number - Tooltip title font size in pixels
            tooltipTitleFontSize: 14,

            // String - Tooltip title font weight style
            tooltipTitleFontStyle: "bold",

            // String - Tooltip title font colour
            tooltipTitleFontColor: "#fff",

            // String - Tooltip title template
            tooltipTitleTemplate: "<%= label%>",

            // Number - pixel width of padding around tooltip text
            tooltipYPadding: 6,

            // Number - pixel width of padding around tooltip text
            tooltipXPadding: 6,

            // Number - Size of the caret on the tooltip
            tooltipCaretSize: 8,

            // Number - Pixel radius of the tooltip border
            tooltipCornerRadius: 6,

            // Number - Pixel offset from point x to tooltip edge
            tooltipXOffset: 10,

            // String - Template string for single tooltips
            tooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>",

            // String - Template string for single tooltips
            multiTooltipTemplate: "<%= value %>",

            // String - Colour behind the legend colour block
            multiTooltipKeyBackground: '#fff',

            // Array - A list of colors to use as the defaults
            segmentColorDefault: ["#A6CEE3", "#1F78B4", "#B2DF8A", "#33A02C", "#FB9A99", "#E31A1C", "#FDBF6F", "#FF7F00", "#CAB2D6", "#6A3D9A", "#B4B482", "#B15928"],

            // Array - A list of highlight colors to use as the defaults
            segmentHighlightColorDefaults: ["#CEF6FF", "#47A0DC", "#DAFFB2", "#5BC854", "#FFC2C1", "#FF4244", "#FFE797", "#FFA728", "#F2DAFE", "#9265C2", "#DCDCAA", "#D98150"],

            // Function - Will fire on animation progression.
            onAnimationProgress: function () {
            },

            // Function - Will fire on animation completion.
            onAnimationComplete: function () {
            }

        }
    };

    //Create a dictionary of chart types, to allow for extension of existing types
    Chart.types = {};

    //Global Chart helpers object for utility methods and classes
    var helpers = Chart.helpers = {};

    //-- Basic js utility methods
    var each = helpers.each = function (loopable, callback, self) {
            var additionalArgs = Array.prototype.slice.call(arguments, 3);
            // Check to see if null or undefined firstly.
            if (loopable) {
                if (loopable.length === +loopable.length) {
                    var i;
                    for (i = 0; i < loopable.length; i++) {
                        callback.apply(self, [loopable[i], i].concat(additionalArgs));
                    }
                }
                else {
                    for (var item in loopable) {
                        callback.apply(self, [loopable[item], item].concat(additionalArgs));
                    }
                }
            }
        },
        clone = helpers.clone = function (obj) {
            var objClone = {};
            each(obj, function (value, key) {
                if (obj.hasOwnProperty(key)) {
                    objClone[key] = value;
                }
            });
            return objClone;
        },
        extend = helpers.extend = function (base) {
            each(Array.prototype.slice.call(arguments, 1), function (extensionObject) {
                each(extensionObject, function (value, key) {
                    if (extensionObject.hasOwnProperty(key)) {
                        base[key] = value;
                    }
                });
            });
            return base;
        },
        merge = helpers.merge = function (base, master) {
            //Merge properties in left object over to a shallow clone of object right.
            var args = Array.prototype.slice.call(arguments, 0);
            args.unshift({});
            return extend.apply(null, args);
        },
        indexOf = helpers.indexOf = function (arrayToSearch, item) {
            if (Array.prototype.indexOf) {
                return arrayToSearch.indexOf(item);
            }
            else {
                for (var i = 0; i < arrayToSearch.length; i++) {
                    if (arrayToSearch[i] === item) return i;
                }
                return -1;
            }
        },
        where = helpers.where = function (collection, filterCallback) {
            var filtered = [];

            helpers.each(collection, function (item) {
                if (filterCallback(item)) {
                    filtered.push(item);
                }
            });

            return filtered;
        },
        findNextWhere = helpers.findNextWhere = function (arrayToSearch, filterCallback, startIndex) {
            // Default to start of the array
            if (!startIndex) {
                startIndex = -1;
            }
            for (var i = startIndex + 1; i < arrayToSearch.length; i++) {
                var currentItem = arrayToSearch[i];
                if (filterCallback(currentItem)) {
                    return currentItem;
                }
            }
        },
        findPreviousWhere = helpers.findPreviousWhere = function (arrayToSearch, filterCallback, startIndex) {
            // Default to end of the array
            if (!startIndex) {
                startIndex = arrayToSearch.length;
            }
            for (var i = startIndex - 1; i >= 0; i--) {
                var currentItem = arrayToSearch[i];
                if (filterCallback(currentItem)) {
                    return currentItem;
                }
            }
        },
        inherits = helpers.inherits = function (extensions) {
            //Basic javascript inheritance based on the model created in Backbone.js
            var parent = this;
            var ChartElement = (extensions && extensions.hasOwnProperty("constructor")) ? extensions.constructor : function () {
                return parent.apply(this, arguments);
            };

            var Surrogate = function () {
                this.constructor = ChartElement;
            };
            Surrogate.prototype = parent.prototype;
            ChartElement.prototype = new Surrogate();

            ChartElement.extend = inherits;

            if (extensions) extend(ChartElement.prototype, extensions);

            ChartElement.__super__ = parent.prototype;

            return ChartElement;
        },
        noop = helpers.noop = function () {
        },
        uid = helpers.uid = (function () {
            var id = 0;
            return function () {
                return "chart-" + id++;
            };
        })(),
        warn = helpers.warn = function (str) {
            //Method for warning of errors
            if (window.console && typeof window.console.warn === "function") console.warn(str);
        },
        amd = helpers.amd = (typeof define === 'function' && define.amd),
    //-- Math methods
        isNumber = helpers.isNumber = function (n) {
            return !isNaN(parseFloat(n)) && isFinite(n);
        },
        max = helpers.max = function (array) {
            return Math.max.apply(Math, array);
        },
        min = helpers.min = function (array) {
            return Math.min.apply(Math, array);
        },
        cap = helpers.cap = function (valueToCap, maxValue, minValue) {
            if (isNumber(maxValue)) {
                if (valueToCap > maxValue) {
                    return maxValue;
                }
            }
            else if (isNumber(minValue)) {
                if (valueToCap < minValue) {
                    return minValue;
                }
            }
            return valueToCap;
        },
        getDecimalPlaces = helpers.getDecimalPlaces = function (num) {
            if (num % 1 !== 0 && isNumber(num)) {
                var s = num.toString();
                if (s.indexOf("e-") < 0) {
                    // no exponent, e.g. 0.01
                    return s.split(".")[1].length;
                }
                else if (s.indexOf(".") < 0) {
                    // no decimal point, e.g. 1e-9
                    return parseInt(s.split("e-")[1]);
                }
                else {
                    // exponent and decimal point, e.g. 1.23e-9
                    var parts = s.split(".")[1].split("e-");
                    return parts[0].length + parseInt(parts[1]);
                }
            }
            else {
                return 0;
            }
        },
        toRadians = helpers.radians = function (degrees) {
            return degrees * (Math.PI / 180);
        },
    // Gets the angle from vertical upright to the point about a centre.
        getAngleFromPoint = helpers.getAngleFromPoint = function (centrePoint, anglePoint) {
            var distanceFromXCenter = anglePoint.x - centrePoint.x,
                distanceFromYCenter = anglePoint.y - centrePoint.y,
                radialDistanceFromCenter = Math.sqrt(distanceFromXCenter * distanceFromXCenter + distanceFromYCenter * distanceFromYCenter);


            var angle = Math.PI * 2 + Math.atan2(distanceFromYCenter, distanceFromXCenter);

            //If the segment is in the top left quadrant, we need to add another rotation to the angle
            if (distanceFromXCenter < 0 && distanceFromYCenter < 0) {
                angle += Math.PI * 2;
            }

            return {
                angle: angle,
                distance: radialDistanceFromCenter
            };
        },
        aliasPixel = helpers.aliasPixel = function (pixelWidth) {
            return (pixelWidth % 2 === 0) ? 0 : 0.5;
        },
        splineCurve = helpers.splineCurve = function (FirstPoint, MiddlePoint, AfterPoint, t) {
            //Props to Rob Spencer at scaled innovation for his post on splining between points
            //http://scaledinnovation.com/analytics/splines/aboutSplines.html
            var d01 = Math.sqrt(Math.pow(MiddlePoint.x - FirstPoint.x, 2) + Math.pow(MiddlePoint.y - FirstPoint.y, 2)),
                d12 = Math.sqrt(Math.pow(AfterPoint.x - MiddlePoint.x, 2) + Math.pow(AfterPoint.y - MiddlePoint.y, 2)),
                fa = t * d01 / (d01 + d12),// scaling factor for triangle Ta
                fb = t * d12 / (d01 + d12);
            return {
                inner: {
                    x: MiddlePoint.x - fa * (AfterPoint.x - FirstPoint.x),
                    y: MiddlePoint.y - fa * (AfterPoint.y - FirstPoint.y)
                },
                outer: {
                    x: MiddlePoint.x + fb * (AfterPoint.x - FirstPoint.x),
                    y: MiddlePoint.y + fb * (AfterPoint.y - FirstPoint.y)
                }
            };
        },
        calculateOrderOfMagnitude = helpers.calculateOrderOfMagnitude = function (val) {
            return Math.floor(Math.log(val) / Math.LN10);
        },
        calculateScaleRange = helpers.calculateScaleRange = function (valuesArray, drawingSize, textSize, startFromZero, integersOnly) {

            //Set a minimum step of two - a point at the top of the graph, and a point at the base
            var minSteps = 2,
                maxSteps = Math.floor(drawingSize / (textSize * 1.5)),
                skipFitting = (minSteps >= maxSteps);

            // Filter out null values since these would min() to zero
            var values = [];
            each(valuesArray, function (v) {
                v == null || values.push(v);
            });
            var minValue = min(values),
                maxValue = max(values);

            // We need some degree of separation here to calculate the scales if all the values are the same
            // Adding/minusing 0.5 will give us a range of 1.
            if (maxValue === minValue) {
                maxValue += 0.5;
                // So we don't end up with a graph with a negative start value if we've said always start from zero
                if (minValue >= 0.5 && !startFromZero) {
                    minValue -= 0.5;
                }
                else {
                    // Make up a whole number above the values
                    maxValue += 0.5;
                }
            }

            var valueRange = Math.abs(maxValue - minValue),
                rangeOrderOfMagnitude = calculateOrderOfMagnitude(valueRange),
                graphMax = Math.ceil(maxValue / (1 * Math.pow(10, rangeOrderOfMagnitude))) * Math.pow(10, rangeOrderOfMagnitude),
                graphMin = (startFromZero) ? 0 : Math.floor(minValue / (1 * Math.pow(10, rangeOrderOfMagnitude))) * Math.pow(10, rangeOrderOfMagnitude),
                graphRange = graphMax - graphMin,
                stepValue = Math.pow(10, rangeOrderOfMagnitude),
                numberOfSteps = Math.round(graphRange / stepValue);

            //If we have more space on the graph we'll use it to give more definition to the data
            while ((numberOfSteps > maxSteps || (numberOfSteps * 2) < maxSteps) && !skipFitting) {
                if (numberOfSteps > maxSteps) {
                    stepValue *= 2;
                    numberOfSteps = Math.round(graphRange / stepValue);
                    // Don't ever deal with a decimal number of steps - cancel fitting and just use the minimum number of steps.
                    if (numberOfSteps % 1 !== 0) {
                        skipFitting = true;
                    }
                }
                //We can fit in double the amount of scale points on the scale
                else {
                    //If user has declared ints only, and the step value isn't a decimal
                    if (integersOnly && rangeOrderOfMagnitude >= 0) {
                        //If the user has said integers only, we need to check that making the scale more granular wouldn't make it a float
                        if (stepValue / 2 % 1 === 0) {
                            stepValue /= 2;
                            numberOfSteps = Math.round(graphRange / stepValue);
                        }
                        //If it would make it a float break out of the loop
                        else {
                            break;
                        }
                    }
                    //If the scale doesn't have to be an int, make the scale more granular anyway.
                    else {
                        stepValue /= 2;
                        numberOfSteps = Math.round(graphRange / stepValue);
                    }

                }
            }

            if (skipFitting) {
                numberOfSteps = minSteps;
                stepValue = graphRange / numberOfSteps;
            }

            return {
                steps: numberOfSteps,
                stepValue: stepValue,
                min: graphMin,
                max: graphMin + (numberOfSteps * stepValue)
            };

        },
    /* jshint ignore:start */
    // Blows up jshint errors based on the new Function constructor
    //Templating methods
    //Javascript micro templating by John Resig - source at http://ejohn.org/blog/javascript-micro-templating/
        template = helpers.template = function (templateString, valuesObject) {

            // If templateString is function rather than string-template - call the function for valuesObject

            if (templateString instanceof Function) {
                return templateString(valuesObject);
            }

            var cache = {};

            function tmpl(str, data) {
                // Figure out if we're getting a template, or if we need to
                // load the template - and be sure to cache the result.
                var fn = !/\W/.test(str) ?
                    cache[str] = cache[str] :

                    // Generate a reusable function that will serve as a template
                    // generator (and which will be cached).
                    new Function("obj",
                        "var p=[],print=function(){p.push.apply(p,arguments);};" +

                            // Introduce the data as local variables using with(){}
                        "with(obj){p.push('" +

                            // Convert the template into pure JavaScript
                        str
                            .replace(/[\r\t\n]/g, " ")
                            .split("<%").join("\t")
                            .replace(/((^|%>)[^\t]*)'/g, "$1\r")
                            .replace(/\t=(.*?)%>/g, "',$1,'")
                            .split("\t").join("');")
                            .split("%>").join("p.push('")
                            .split("\r").join("\\'") +
                        "');}return p.join('');"
                    );

                // Provide some basic currying to the user
                return data ? fn(data) : fn;
            }

            return tmpl(templateString, valuesObject);
        },
    /* jshint ignore:end */
        generateLabels = helpers.generateLabels = function (templateString, numberOfSteps, graphMin, stepValue) {
            var labelsArray = new Array(numberOfSteps);
            if (templateString) {
                each(labelsArray, function (val, index) {
                    labelsArray[index] = template(templateString, {value: (graphMin + (stepValue * (index + 1)))});
                });
            }
            return labelsArray;
        },
    //--Animation methods
    //Easing functions adapted from Robert Penner's easing equations
    //http://www.robertpenner.com/easing/
        easingEffects = helpers.easingEffects = {
            linear: function (t) {
                return t;
            },
            easeInQuad: function (t) {
                return t * t;
            },
            easeOutQuad: function (t) {
                return -1 * t * (t - 2);
            },
            easeInOutQuad: function (t) {
                if ((t /= 1 / 2) < 1) {
                    return 1 / 2 * t * t;
                }
                return -1 / 2 * ((--t) * (t - 2) - 1);
            },
            easeInCubic: function (t) {
                return t * t * t;
            },
            easeOutCubic: function (t) {
                return 1 * ((t = t / 1 - 1) * t * t + 1);
            },
            easeInOutCubic: function (t) {
                if ((t /= 1 / 2) < 1) {
                    return 1 / 2 * t * t * t;
                }
                return 1 / 2 * ((t -= 2) * t * t + 2);
            },
            easeInQuart: function (t) {
                return t * t * t * t;
            },
            easeOutQuart: function (t) {
                return -1 * ((t = t / 1 - 1) * t * t * t - 1);
            },
            easeInOutQuart: function (t) {
                if ((t /= 1 / 2) < 1) {
                    return 1 / 2 * t * t * t * t;
                }
                return -1 / 2 * ((t -= 2) * t * t * t - 2);
            },
            easeInQuint: function (t) {
                return 1 * (t /= 1) * t * t * t * t;
            },
            easeOutQuint: function (t) {
                return 1 * ((t = t / 1 - 1) * t * t * t * t + 1);
            },
            easeInOutQuint: function (t) {
                if ((t /= 1 / 2) < 1) {
                    return 1 / 2 * t * t * t * t * t;
                }
                return 1 / 2 * ((t -= 2) * t * t * t * t + 2);
            },
            easeInSine: function (t) {
                return -1 * Math.cos(t / 1 * (Math.PI / 2)) + 1;
            },
            easeOutSine: function (t) {
                return 1 * Math.sin(t / 1 * (Math.PI / 2));
            },
            easeInOutSine: function (t) {
                return -1 / 2 * (Math.cos(Math.PI * t / 1) - 1);
            },
            easeInExpo: function (t) {
                return (t === 0) ? 1 : 1 * Math.pow(2, 10 * (t / 1 - 1));
            },
            easeOutExpo: function (t) {
                return (t === 1) ? 1 : 1 * (-Math.pow(2, -10 * t / 1) + 1);
            },
            easeInOutExpo: function (t) {
                if (t === 0) {
                    return 0;
                }
                if (t === 1) {
                    return 1;
                }
                if ((t /= 1 / 2) < 1) {
                    return 1 / 2 * Math.pow(2, 10 * (t - 1));
                }
                return 1 / 2 * (-Math.pow(2, -10 * --t) + 2);
            },
            easeInCirc: function (t) {
                if (t >= 1) {
                    return t;
                }
                return -1 * (Math.sqrt(1 - (t /= 1) * t) - 1);
            },
            easeOutCirc: function (t) {
                return 1 * Math.sqrt(1 - (t = t / 1 - 1) * t);
            },
            easeInOutCirc: function (t) {
                if ((t /= 1 / 2) < 1) {
                    return -1 / 2 * (Math.sqrt(1 - t * t) - 1);
                }
                return 1 / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1);
            },
            easeInElastic: function (t) {
                var s = 1.70158;
                var p = 0;
                var a = 1;
                if (t === 0) {
                    return 0;
                }
                if ((t /= 1) == 1) {
                    return 1;
                }
                if (!p) {
                    p = 1 * 0.3;
                }
                if (a < Math.abs(1)) {
                    a = 1;
                    s = p / 4;
                } else {
                    s = p / (2 * Math.PI) * Math.asin(1 / a);
                }
                return -(a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * 1 - s) * (2 * Math.PI) / p));
            },
            easeOutElastic: function (t) {
                var s = 1.70158;
                var p = 0;
                var a = 1;
                if (t === 0) {
                    return 0;
                }
                if ((t /= 1) == 1) {
                    return 1;
                }
                if (!p) {
                    p = 1 * 0.3;
                }
                if (a < Math.abs(1)) {
                    a = 1;
                    s = p / 4;
                } else {
                    s = p / (2 * Math.PI) * Math.asin(1 / a);
                }
                return a * Math.pow(2, -10 * t) * Math.sin((t * 1 - s) * (2 * Math.PI) / p) + 1;
            },
            easeInOutElastic: function (t) {
                var s = 1.70158;
                var p = 0;
                var a = 1;
                if (t === 0) {
                    return 0;
                }
                if ((t /= 1 / 2) == 2) {
                    return 1;
                }
                if (!p) {
                    p = 1 * (0.3 * 1.5);
                }
                if (a < Math.abs(1)) {
                    a = 1;
                    s = p / 4;
                } else {
                    s = p / (2 * Math.PI) * Math.asin(1 / a);
                }
                if (t < 1) {
                    return -0.5 * (a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * 1 - s) * (2 * Math.PI) / p));
                }
                return a * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * 1 - s) * (2 * Math.PI) / p) * 0.5 + 1;
            },
            easeInBack: function (t) {
                var s = 1.70158;
                return 1 * (t /= 1) * t * ((s + 1) * t - s);
            },
            easeOutBack: function (t) {
                var s = 1.70158;
                return 1 * ((t = t / 1 - 1) * t * ((s + 1) * t + s) + 1);
            },
            easeInOutBack: function (t) {
                var s = 1.70158;
                if ((t /= 1 / 2) < 1) {
                    return 1 / 2 * (t * t * (((s *= (1.525)) + 1) * t - s));
                }
                return 1 / 2 * ((t -= 2) * t * (((s *= (1.525)) + 1) * t + s) + 2);
            },
            easeInBounce: function (t) {
                return 1 - easingEffects.easeOutBounce(1 - t);
            },
            easeOutBounce: function (t) {
                if ((t /= 1) < (1 / 2.75)) {
                    return 1 * (7.5625 * t * t);
                } else if (t < (2 / 2.75)) {
                    return 1 * (7.5625 * (t -= (1.5 / 2.75)) * t + 0.75);
                } else if (t < (2.5 / 2.75)) {
                    return 1 * (7.5625 * (t -= (2.25 / 2.75)) * t + 0.9375);
                } else {
                    return 1 * (7.5625 * (t -= (2.625 / 2.75)) * t + 0.984375);
                }
            },
            easeInOutBounce: function (t) {
                if (t < 1 / 2) {
                    return easingEffects.easeInBounce(t * 2) * 0.5;
                }
                return easingEffects.easeOutBounce(t * 2 - 1) * 0.5 + 1 * 0.5;
            }
        },
    //Request animation polyfill - http://www.paulirish.com/2011/requestanimationframe-for-smart-animating/
        requestAnimFrame = helpers.requestAnimFrame = (function () {
            return window.requestAnimationFrame ||
                window.webkitRequestAnimationFrame ||
                window.mozRequestAnimationFrame ||
                window.oRequestAnimationFrame ||
                window.msRequestAnimationFrame ||
                function (callback) {
                    return window.setTimeout(callback, 1000 / 60);
                };
        })(),
        cancelAnimFrame = helpers.cancelAnimFrame = (function () {
            return window.cancelAnimationFrame ||
                window.webkitCancelAnimationFrame ||
                window.mozCancelAnimationFrame ||
                window.oCancelAnimationFrame ||
                window.msCancelAnimationFrame ||
                function (callback) {
                    return window.clearTimeout(callback, 1000 / 60);
                };
        })(),
        animationLoop = helpers.animationLoop = function (callback, totalSteps, easingString, onProgress, onComplete, chartInstance) {

            var currentStep = 0,
                easingFunction = easingEffects[easingString] || easingEffects.linear;

            var animationFrame = function () {
                currentStep++;
                var stepDecimal = currentStep / totalSteps;
                var easeDecimal = easingFunction(stepDecimal);

                callback.call(chartInstance, easeDecimal, stepDecimal, currentStep);
                onProgress.call(chartInstance, easeDecimal, stepDecimal);
                if (currentStep < totalSteps) {
                    chartInstance.animationFrame = requestAnimFrame(animationFrame);
                } else {
                    onComplete.apply(chartInstance);
                }
            };
            requestAnimFrame(animationFrame);
        },
    //-- DOM methods
        getRelativePosition = helpers.getRelativePosition = function (evt) {
            var mouseX, mouseY;
            var e = evt.originalEvent || evt,
                canvas = evt.currentTarget || evt.srcElement,
                boundingRect = canvas.getBoundingClientRect();

            if (e.touches) {
                mouseX = e.touches[0].clientX - boundingRect.left;
                mouseY = e.touches[0].clientY - boundingRect.top;

            }
            else {
                mouseX = e.clientX - boundingRect.left;
                mouseY = e.clientY - boundingRect.top;
            }

            return {
                x: mouseX,
                y: mouseY
            };

        },
        addEvent = helpers.addEvent = function (node, eventType, method) {
            if (node.addEventListener) {
                node.addEventListener(eventType, method);
            } else if (node.attachEvent) {
                node.attachEvent("on" + eventType, method);
            } else {
                node["on" + eventType] = method;
            }
        },
        removeEvent = helpers.removeEvent = function (node, eventType, handler) {
            if (node.removeEventListener) {
                node.removeEventListener(eventType, handler, false);
            } else if (node.detachEvent) {
                node.detachEvent("on" + eventType, handler);
            } else {
                node["on" + eventType] = noop;
            }
        },
        bindEvents = helpers.bindEvents = function (chartInstance, arrayOfEvents, handler) {
            // Create the events object if it's not already present
            if (!chartInstance.events) chartInstance.events = {};

            each(arrayOfEvents, function (eventName) {
                chartInstance.events[eventName] = function () {
                    handler.apply(chartInstance, arguments);
                };
                addEvent(chartInstance.chart.canvas, eventName, chartInstance.events[eventName]);
            });
        },
        unbindEvents = helpers.unbindEvents = function (chartInstance, arrayOfEvents) {
            each(arrayOfEvents, function (handler, eventName) {
                removeEvent(chartInstance.chart.canvas, eventName, handler);
            });
        },
        getMaximumWidth = helpers.getMaximumWidth = function (domNode) {
            var container = domNode.parentNode,
                padding = parseInt(getStyle(container, 'padding-left')) + parseInt(getStyle(container, 'padding-right'));
            // TODO = check cross browser stuff with this.
            return container.clientWidth - padding;
        },
        getMaximumHeight = helpers.getMaximumHeight = function (domNode) {
            var container = domNode.parentNode,
                padding = parseInt(getStyle(container, 'padding-bottom')) + parseInt(getStyle(container, 'padding-top'));
            // TODO = check cross browser stuff with this.
            return container.clientHeight - padding;
        },
        getStyle = helpers.getStyle = function (el, property) {
            return el.currentStyle ?
                el.currentStyle[property] :
                document.defaultView.getComputedStyle(el, null).getPropertyValue(property);
        },
        getMaximumSize = helpers.getMaximumSize = helpers.getMaximumWidth, // legacy support
        retinaScale = helpers.retinaScale = function (chart) {
            var ctx = chart.ctx,
                width = chart.canvas.width,
                height = chart.canvas.height;

            if (window.devicePixelRatio) {
                ctx.canvas.style.width = width + "px";
                ctx.canvas.style.height = height + "px";
                ctx.canvas.height = height * window.devicePixelRatio;
                ctx.canvas.width = width * window.devicePixelRatio;
                ctx.scale(window.devicePixelRatio, window.devicePixelRatio);
            }
        },
    //-- Canvas methods
        clear = helpers.clear = function (chart) {
            chart.ctx.clearRect(0, 0, chart.width, chart.height);
        },
        fontString = helpers.fontString = function (pixelSize, fontStyle, fontFamily) {
            return fontStyle + " " + pixelSize + "px " + fontFamily;
        },
        longestText = helpers.longestText = function (ctx, font, arrayOfStrings) {
            ctx.font = font;
            var longest = 0;
            each(arrayOfStrings, function (string) {
                var textWidth = ctx.measureText(string).width;
                longest = (textWidth > longest) ? textWidth : longest;
            });
            return longest;
        },
        drawRoundedRectangle = helpers.drawRoundedRectangle = function (ctx, x, y, width, height, radius) {
            ctx.beginPath();
            ctx.moveTo(x + radius, y);
            ctx.lineTo(x + width - radius, y);
            ctx.quadraticCurveTo(x + width, y, x + width, y + radius);
            ctx.lineTo(x + width, y + height - radius);
            ctx.quadraticCurveTo(x + width, y + height, x + width - radius, y + height);
            ctx.lineTo(x + radius, y + height);
            ctx.quadraticCurveTo(x, y + height, x, y + height - radius);
            ctx.lineTo(x, y + radius);
            ctx.quadraticCurveTo(x, y, x + radius, y);
            ctx.closePath();
        };


    //Store a reference to each instance - allowing us to globally resize chart instances on window resize.
    //Destroy method on the chart will remove the instance of the chart from this reference.
    Chart.instances = {};

    Chart.Type = function (data, options, chart) {
        this.options = options;
        this.chart = chart;
        this.id = uid();
        //Add the chart instance to the global namespace
        Chart.instances[this.id] = this;

        // Initialize is always called when a chart type is created
        // By default it is a no op, but it should be extended
        if (options.responsive) {
            this.resize();
        }
        this.initialize.call(this, data);
    };

    //Core methods that'll be a part of every chart type
    extend(Chart.Type.prototype, {
        initialize: function () {
            return this;
        },
        clear: function () {
            clear(this.chart);
            return this;
        },
        stop: function () {
            // Stops any current animation loop occuring
            Chart.animationService.cancelAnimation(this);
            return this;
        },
        resize: function (callback) {
            this.stop();
            var canvas = this.chart.canvas,
                newWidth = getMaximumWidth(this.chart.canvas),
                newHeight = this.options.maintainAspectRatio ? newWidth / this.chart.aspectRatio : getMaximumHeight(this.chart.canvas);

            canvas.width = this.chart.width = newWidth;
            canvas.height = this.chart.height = newHeight;

            retinaScale(this.chart);

            if (typeof callback === "function") {
                callback.apply(this, Array.prototype.slice.call(arguments, 1));
            }
            return this;
        },
        reflow: noop,
        render: function (reflow) {
            if (reflow) {
                this.reflow();
            }

            if (this.options.animation && !reflow) {
                var animation = new Chart.Animation();
                animation.numSteps = this.options.animationSteps;
                animation.easing = this.options.animationEasing;

                // render function
                animation.render = function (chartInstance, animationObject) {
                    var easingFunction = helpers.easingEffects[animationObject.easing];
                    var stepDecimal = animationObject.currentStep / animationObject.numSteps;
                    var easeDecimal = easingFunction(stepDecimal);

                    chartInstance.draw(easeDecimal, stepDecimal, animationObject.currentStep);
                };

                // user events
                animation.onAnimationProgress = this.options.onAnimationProgress;
                animation.onAnimationComplete = this.options.onAnimationComplete;

                Chart.animationService.addAnimation(this, animation);
            }
            else {
                this.draw();
                this.options.onAnimationComplete.call(this);
            }
            return this;
        },
        generateLegend: function () {
            return template(this.options.legendTemplate, this);
        },
        destroy: function () {
            this.clear();
            unbindEvents(this, this.events);
            var canvas = this.chart.canvas;

            // Reset canvas height/width attributes starts a fresh with the canvas context
            canvas.width = this.chart.width;
            canvas.height = this.chart.height;

            // < IE9 doesn't support removeProperty
            if (canvas.style.removeProperty) {
                canvas.style.removeProperty('width');
                canvas.style.removeProperty('height');
            } else {
                canvas.style.removeAttribute('width');
                canvas.style.removeAttribute('height');
            }

            delete Chart.instances[this.id];
        },
        showTooltip: function (ChartElements, forceRedraw) {
            // Only redraw the chart if we've actually changed what we're hovering on.
            if (typeof this.activeElements === 'undefined') this.activeElements = [];

            var isChanged = (function (Elements) {
                var changed = false;

                if (Elements.length !== this.activeElements.length) {
                    changed = true;
                    return changed;
                }

                each(Elements, function (element, index) {
                    if (element !== this.activeElements[index]) {
                        changed = true;
                    }
                }, this);
                return changed;
            }).call(this, ChartElements);

            if (!isChanged && !forceRedraw) {
                return;
            }
            else {
                this.activeElements = ChartElements;
            }
            this.draw();
            if (this.options.customTooltips) {
                this.options.customTooltips(false);
            }
            if (ChartElements.length > 0) {
                // If we have multiple datasets, show a MultiTooltip for all of the data points at that index
                if (this.datasets && this.datasets.length > 1) {
                    var dataArray,
                        dataIndex;

                    for (var i = this.datasets.length - 1; i >= 0; i--) {
                        dataArray = this.datasets[i].points || this.datasets[i].bars || this.datasets[i].segments;
                        dataIndex = indexOf(dataArray, ChartElements[0]);
                        if (dataIndex !== -1) {
                            break;
                        }
                    }
                    var tooltipLabels = [],
                        tooltipColors = [],
                        medianPosition = (function (index) {

                            // Get all the points at that particular index
                            var Elements = [],
                                dataCollection,
                                xPositions = [],
                                yPositions = [],
                                xMax,
                                yMax,
                                xMin,
                                yMin;
                            helpers.each(this.datasets, function (dataset) {
                                dataCollection = dataset.points || dataset.bars || dataset.segments;
                                if (dataCollection[dataIndex] && dataCollection[dataIndex].hasValue()) {
                                    Elements.push(dataCollection[dataIndex]);
                                }
                            });

                            helpers.each(Elements, function (element) {
                                xPositions.push(element.x);
                                yPositions.push(element.y);


                                //Include any colour information about the element
                                tooltipLabels.push(helpers.template(this.options.multiTooltipTemplate, element));
                                tooltipColors.push({
                                    fill: element._saved.fillColor || element.fillColor,
                                    stroke: element._saved.strokeColor || element.strokeColor
                                });

                            }, this);

                            yMin = min(yPositions);
                            yMax = max(yPositions);

                            xMin = min(xPositions);
                            xMax = max(xPositions);

                            return {
                                x: (xMin > this.chart.width / 2) ? xMin : xMax,
                                y: (yMin + yMax) / 2
                            };
                        }).call(this, dataIndex);

                    new Chart.MultiTooltip({
                        x: medianPosition.x,
                        y: medianPosition.y,
                        xPadding: this.options.tooltipXPadding,
                        yPadding: this.options.tooltipYPadding,
                        xOffset: this.options.tooltipXOffset,
                        fillColor: this.options.tooltipFillColor,
                        textColor: this.options.tooltipFontColor,
                        fontFamily: this.options.tooltipFontFamily,
                        fontStyle: this.options.tooltipFontStyle,
                        fontSize: this.options.tooltipFontSize,
                        titleTextColor: this.options.tooltipTitleFontColor,
                        titleFontFamily: this.options.tooltipTitleFontFamily,
                        titleFontStyle: this.options.tooltipTitleFontStyle,
                        titleFontSize: this.options.tooltipTitleFontSize,
                        cornerRadius: this.options.tooltipCornerRadius,
                        labels: tooltipLabels,
                        legendColors: tooltipColors,
                        legendColorBackground: this.options.multiTooltipKeyBackground,
                        title: template(this.options.tooltipTitleTemplate, ChartElements[0]),
                        chart: this.chart,
                        ctx: this.chart.ctx,
                        custom: this.options.customTooltips
                    }).draw();

                } else {
                    each(ChartElements, function (Element) {
                        var tooltipPosition = Element.tooltipPosition();
                        new Chart.Tooltip({
                            x: Math.round(tooltipPosition.x),
                            y: Math.round(tooltipPosition.y),
                            xPadding: this.options.tooltipXPadding,
                            yPadding: this.options.tooltipYPadding,
                            fillColor: this.options.tooltipFillColor,
                            textColor: this.options.tooltipFontColor,
                            fontFamily: this.options.tooltipFontFamily,
                            fontStyle: this.options.tooltipFontStyle,
                            fontSize: this.options.tooltipFontSize,
                            caretHeight: this.options.tooltipCaretSize,
                            cornerRadius: this.options.tooltipCornerRadius,
                            text: template(this.options.tooltipTemplate, Element),
                            chart: this.chart,
                            custom: this.options.customTooltips
                        }).draw();
                    }, this);
                }
            }
            return this;
        },
        toBase64Image: function () {
            return this.chart.canvas.toDataURL.apply(this.chart.canvas, arguments);
        }
    });

    Chart.Type.extend = function (extensions) {

        var parent = this;

        var ChartType = function () {
            return parent.apply(this, arguments);
        };

        //Copy the prototype object of the this class
        ChartType.prototype = clone(parent.prototype);
        //Now overwrite some of the properties in the base class with the new extensions
        extend(ChartType.prototype, extensions);

        ChartType.extend = Chart.Type.extend;

        if (extensions.name || parent.prototype.name) {

            var chartName = extensions.name || parent.prototype.name;
            //Assign any potential default values of the new chart type

            //If none are defined, we'll use a clone of the chart type this is being extended from.
            //I.e. if we extend a line chart, we'll use the defaults from the line chart if our new chart
            //doesn't define some defaults of their own.

            var baseDefaults = (Chart.defaults[parent.prototype.name]) ? clone(Chart.defaults[parent.prototype.name]) : {};

            Chart.defaults[chartName] = extend(baseDefaults, extensions.defaults);

            Chart.types[chartName] = ChartType;

            //Register this new chart type in the Chart prototype
            Chart.prototype[chartName] = function (data, options) {
                var config = merge(Chart.defaults.global, Chart.defaults[chartName], options || {});
                return new ChartType(data, config, this);
            };
        } else {
            warn("Name not provided for this chart, so it hasn't been registered");
        }
        return parent;
    };

    Chart.Element = function (configuration) {
        extend(this, configuration);
        this.initialize.apply(this, arguments);
        this.save();
    };
    extend(Chart.Element.prototype, {
        initialize: function () {
        },
        restore: function (props) {
            if (!props) {
                extend(this, this._saved);
            } else {
                each(props, function (key) {
                    this[key] = this._saved[key];
                }, this);
            }
            return this;
        },
        save: function () {
            this._saved = clone(this);
            delete this._saved._saved;
            return this;
        },
        update: function (newProps) {
            each(newProps, function (value, key) {
                this._saved[key] = this[key];
                this[key] = value;
            }, this);
            return this;
        },
        transition: function (props, ease) {
            each(props, function (value, key) {
                this[key] = ((value - this._saved[key]) * ease) + this._saved[key];
            }, this);
            return this;
        },
        tooltipPosition: function () {
            return {
                x: this.x,
                y: this.y
            };
        },
        hasValue: function () {
            return isNumber(this.value);
        }
    });

    Chart.Element.extend = inherits;


    Chart.Point = Chart.Element.extend({
        display: true,
        inRange: function (chartX, chartY) {
            var hitDetectionRange = this.hitDetectionRadius + this.radius;
            return ((Math.pow(chartX - this.x, 2) + Math.pow(chartY - this.y, 2)) < Math.pow(hitDetectionRange, 2));
        },
        draw: function () {
            if (this.display) {
                var ctx = this.ctx;
                ctx.beginPath();

                ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
                ctx.closePath();

                ctx.strokeStyle = this.strokeColor;
                ctx.lineWidth = this.strokeWidth;

                ctx.fillStyle = this.fillColor;

                ctx.fill();
                ctx.stroke();
            }


            //Quick debug for bezier curve splining
            //Highlights control points and the line between them.
            //Handy for dev - stripped in the min version.

            // ctx.save();
            // ctx.fillStyle = "black";
            // ctx.strokeStyle = "black"
            // ctx.beginPath();
            // ctx.arc(this.controlPoints.inner.x,this.controlPoints.inner.y, 2, 0, Math.PI*2);
            // ctx.fill();

            // ctx.beginPath();
            // ctx.arc(this.controlPoints.outer.x,this.controlPoints.outer.y, 2, 0, Math.PI*2);
            // ctx.fill();

            // ctx.moveTo(this.controlPoints.inner.x,this.controlPoints.inner.y);
            // ctx.lineTo(this.x, this.y);
            // ctx.lineTo(this.controlPoints.outer.x,this.controlPoints.outer.y);
            // ctx.stroke();

            // ctx.restore();


        }
    });

    Chart.Arc = Chart.Element.extend({
        inRange: function (chartX, chartY) {

            var pointRelativePosition = helpers.getAngleFromPoint(this, {
                x: chartX,
                y: chartY
            });

            // Normalize all angles to 0 - 2*PI (0 - 360°)
            var pointRelativeAngle = pointRelativePosition.angle % (Math.PI * 2),
                startAngle = (Math.PI * 2 + this.startAngle) % (Math.PI * 2),
                endAngle = (Math.PI * 2 + this.endAngle) % (Math.PI * 2) || 360;

            // Calculate wether the pointRelativeAngle is between the start and the end angle
            var betweenAngles = (endAngle < startAngle) ?
            pointRelativeAngle <= endAngle || pointRelativeAngle >= startAngle :
            pointRelativeAngle >= startAngle && pointRelativeAngle <= endAngle;

            //Check if within the range of the open/close angle
            var withinRadius = (pointRelativePosition.distance >= this.innerRadius && pointRelativePosition.distance <= this.outerRadius);

            return (betweenAngles && withinRadius);
            //Ensure within the outside of the arc centre, but inside arc outer
        },
        tooltipPosition: function () {
            var centreAngle = this.startAngle + ((this.endAngle - this.startAngle) / 2),
                rangeFromCentre = (this.outerRadius - this.innerRadius) / 2 + this.innerRadius;
            return {
                x: this.x + (Math.cos(centreAngle) * rangeFromCentre),
                y: this.y + (Math.sin(centreAngle) * rangeFromCentre)
            };
        },
        draw: function (animationPercent) {

            var easingDecimal = animationPercent || 1;

            var ctx = this.ctx;

            ctx.beginPath();

            ctx.arc(this.x, this.y, this.outerRadius < 0 ? 0 : this.outerRadius, this.startAngle, this.endAngle);

            ctx.arc(this.x, this.y, this.innerRadius < 0 ? 0 : this.innerRadius, this.endAngle, this.startAngle, true);

            ctx.closePath();
            ctx.strokeStyle = this.strokeColor;
            ctx.lineWidth = this.strokeWidth;

            ctx.fillStyle = this.fillColor;

            ctx.fill();
            ctx.lineJoin = 'bevel';

            if (this.showStroke) {
                ctx.stroke();
            }
        }
    });

    Chart.Rectangle = Chart.Element.extend({
        draw: function () {
            var ctx = this.ctx,
                halfWidth = this.width / 2,
                leftX = this.x - halfWidth,
                rightX = this.x + halfWidth,
                top = this.base - (this.base - this.y),
                halfStroke = this.strokeWidth / 2;

            // Canvas doesn't allow us to stroke inside the width so we can
            // adjust the sizes to fit if we're setting a stroke on the line
            if (this.showStroke) {
                leftX += halfStroke;
                rightX -= halfStroke;
                top += halfStroke;
            }

            ctx.beginPath();

            ctx.fillStyle = this.fillColor;
            ctx.strokeStyle = this.strokeColor;
            ctx.lineWidth = this.strokeWidth;

            // It'd be nice to keep this class totally generic to any rectangle
            // and simply specify which border to miss out.
            ctx.moveTo(leftX, this.base);
            ctx.lineTo(leftX, top);
            ctx.lineTo(rightX, top);
            ctx.lineTo(rightX, this.base);
            ctx.fill();
            if (this.showStroke) {
                ctx.stroke();
            }
        },
        height: function () {
            return this.base - this.y;
        },
        inRange: function (chartX, chartY) {
            return (chartX >= this.x - this.width / 2 && chartX <= this.x + this.width / 2) && (chartY >= this.y && chartY <= this.base);
        }
    });

    Chart.Animation = Chart.Element.extend({
        currentStep: null, // the current animation step
        numSteps: 60, // default number of steps
        easing: "", // the easing to use for this animation
        render: null, // render function used by the animation service

        onAnimationProgress: null, // user specified callback to fire on each step of the animation
        onAnimationComplete: null, // user specified callback to fire when the animation finishes
    });

    Chart.Tooltip = Chart.Element.extend({
        draw: function () {

            var ctx = this.chart.ctx;

            ctx.font = fontString(this.fontSize, this.fontStyle, this.fontFamily);

            this.xAlign = "center";
            this.yAlign = "above";

            //Distance between the actual element.y position and the start of the tooltip caret
            var caretPadding = this.caretPadding = 2;

            var tooltipWidth = ctx.measureText(this.text).width + 2 * this.xPadding,
                tooltipRectHeight = this.fontSize + 2 * this.yPadding,
                tooltipHeight = tooltipRectHeight + this.caretHeight + caretPadding;

            if (this.x + tooltipWidth / 2 > this.chart.width) {
                this.xAlign = "left";
            } else if (this.x - tooltipWidth / 2 < 0) {
                this.xAlign = "right";
            }

            if (this.y - tooltipHeight < 0) {
                this.yAlign = "below";
            }


            var tooltipX = this.x - tooltipWidth / 2,
                tooltipY = this.y - tooltipHeight;

            ctx.fillStyle = this.fillColor;

            // Custom Tooltips
            if (this.custom) {
                this.custom(this);
            }
            else {
                switch (this.yAlign) {
                    case "above":
                        //Draw a caret above the x/y
                        ctx.beginPath();
                        ctx.moveTo(this.x, this.y - caretPadding);
                        ctx.lineTo(this.x + this.caretHeight, this.y - (caretPadding + this.caretHeight));
                        ctx.lineTo(this.x - this.caretHeight, this.y - (caretPadding + this.caretHeight));
                        ctx.closePath();
                        ctx.fill();
                        break;
                    case "below":
                        tooltipY = this.y + caretPadding + this.caretHeight;
                        //Draw a caret below the x/y
                        ctx.beginPath();
                        ctx.moveTo(this.x, this.y + caretPadding);
                        ctx.lineTo(this.x + this.caretHeight, this.y + caretPadding + this.caretHeight);
                        ctx.lineTo(this.x - this.caretHeight, this.y + caretPadding + this.caretHeight);
                        ctx.closePath();
                        ctx.fill();
                        break;
                }

                switch (this.xAlign) {
                    case "left":
                        tooltipX = this.x - tooltipWidth + (this.cornerRadius + this.caretHeight);
                        break;
                    case "right":
                        tooltipX = this.x - (this.cornerRadius + this.caretHeight);
                        break;
                }

                drawRoundedRectangle(ctx, tooltipX, tooltipY, tooltipWidth, tooltipRectHeight, this.cornerRadius);

                ctx.fill();

                ctx.fillStyle = this.textColor;
                ctx.textAlign = "center";
                ctx.textBaseline = "middle";
                ctx.fillText(this.text, tooltipX + tooltipWidth / 2, tooltipY + tooltipRectHeight / 2);
            }
        }
    });

    Chart.MultiTooltip = Chart.Element.extend({
        initialize: function () {
            this.font = fontString(this.fontSize, this.fontStyle, this.fontFamily);

            this.titleFont = fontString(this.titleFontSize, this.titleFontStyle, this.titleFontFamily);

            this.titleHeight = this.title ? this.titleFontSize * 1.5 : 0;
            this.height = (this.labels.length * this.fontSize) + ((this.labels.length - 1) * (this.fontSize / 2)) + (this.yPadding * 2) + this.titleHeight;

            this.ctx.font = this.titleFont;

            var titleWidth = this.ctx.measureText(this.title).width,
            //Label has a legend square as well so account for this.
                labelWidth = longestText(this.ctx, this.font, this.labels) + this.fontSize + 3,
                longestTextWidth = max([labelWidth, titleWidth]);

            this.width = longestTextWidth + (this.xPadding * 2);


            var halfHeight = this.height / 2;

            //Check to ensure the height will fit on the canvas
            if (this.y - halfHeight < 0) {
                this.y = halfHeight;
            } else if (this.y + halfHeight > this.chart.height) {
                this.y = this.chart.height - halfHeight;
            }

            //Decide whether to align left or right based on position on canvas
            if (this.x > this.chart.width / 2) {
                this.x -= this.xOffset + this.width;
            } else {
                this.x += this.xOffset;
            }


        },
        getLineHeight: function (index) {
            var baseLineHeight = this.y - (this.height / 2) + this.yPadding,
                afterTitleIndex = index - 1;

            //If the index is zero, we're getting the title
            if (index === 0) {
                return baseLineHeight + this.titleHeight / 3;
            } else {
                return baseLineHeight + ((this.fontSize * 1.5 * afterTitleIndex) + this.fontSize / 2) + this.titleHeight;
            }

        },
        draw: function () {
            // Custom Tooltips
            if (this.custom) {
                this.custom(this);
            }
            else {
                drawRoundedRectangle(this.ctx, this.x, this.y - this.height / 2, this.width, this.height, this.cornerRadius);
                var ctx = this.ctx;
                ctx.fillStyle = this.fillColor;
                ctx.fill();
                ctx.closePath();

                ctx.textAlign = "left";
                ctx.textBaseline = "middle";
                ctx.fillStyle = this.titleTextColor;
                ctx.font = this.titleFont;

                ctx.fillText(this.title, this.x + this.xPadding, this.getLineHeight(0));

                ctx.font = this.font;
                helpers.each(this.labels, function (label, index) {
                    ctx.fillStyle = this.textColor;
                    ctx.fillText(label, this.x + this.xPadding + this.fontSize + 3, this.getLineHeight(index + 1));

                    //A bit gnarly, but clearing this rectangle breaks when using explorercanvas (clears whole canvas)
                    //ctx.clearRect(this.x + this.xPadding, this.getLineHeight(index + 1) - this.fontSize/2, this.fontSize, this.fontSize);
                    //Instead we'll make a white filled block to put the legendColour palette over.

                    ctx.fillStyle = this.legendColorBackground;
                    ctx.fillRect(this.x + this.xPadding, this.getLineHeight(index + 1) - this.fontSize / 2, this.fontSize, this.fontSize);

                    ctx.fillStyle = this.legendColors[index].fill;
                    ctx.fillRect(this.x + this.xPadding, this.getLineHeight(index + 1) - this.fontSize / 2, this.fontSize, this.fontSize);


                }, this);
            }
        }
    });

    Chart.Scale = Chart.Element.extend({
        initialize: function () {
            this.fit();
        },
        buildYLabels: function () {
            this.yLabels = [];

            var stepDecimalPlaces = getDecimalPlaces(this.stepValue);

            for (var i = 0; i <= this.steps; i++) {
                this.yLabels.push(template(this.templateString, {value: (this.min + (i * this.stepValue)).toFixed(stepDecimalPlaces)}));
            }
            this.yLabelWidth = (this.display && this.showLabels) ? longestText(this.ctx, this.font, this.yLabels) + 10 : 0;
        },
        addXLabel: function (label) {
            this.xLabels.push(label);
            this.valuesCount++;
            this.fit();
        },
        removeXLabel: function () {
            this.xLabels.shift();
            this.valuesCount--;
            this.fit();
        },
        // Fitting loop to rotate x Labels and figure out what fits there, and also calculate how many Y steps to use
        fit: function () {
            // First we need the width of the yLabels, assuming the xLabels aren't rotated

            // To do that we need the base line at the top and base of the chart, assuming there is no x label rotation
            this.startPoint = (this.display) ? this.fontSize : 0;
            this.endPoint = (this.display) ? this.height - (this.fontSize * 1.5) - 5 : this.height; // -5 to pad labels

            // Apply padding settings to the start and end point.
            this.startPoint += this.padding;
            this.endPoint -= this.padding;

            // Cache the starting endpoint, excluding the space for x labels
            var cachedEndPoint = this.endPoint;

            // Cache the starting height, so can determine if we need to recalculate the scale yAxis
            var cachedHeight = this.endPoint - this.startPoint,
                cachedYLabelWidth;

            // Build the current yLabels so we have an idea of what size they'll be to start
            /*
             *	This sets what is returned from calculateScaleRange as static properties of this class:
             *
             this.steps;
             this.stepValue;
             this.min;
             this.max;
             *
             */
            this.calculateYRange(cachedHeight);

            // With these properties set we can now build the array of yLabels
            // and also the width of the largest yLabel
            this.buildYLabels();

            this.calculateXLabelRotation();

            while ((cachedHeight > this.endPoint - this.startPoint)) {
                cachedHeight = this.endPoint - this.startPoint;
                cachedYLabelWidth = this.yLabelWidth;

                this.calculateYRange(cachedHeight);
                this.buildYLabels();

                // Only go through the xLabel loop again if the yLabel width has changed
                if (cachedYLabelWidth < this.yLabelWidth) {
                    this.endPoint = cachedEndPoint;
                    this.calculateXLabelRotation();
                }
            }

        },
        calculateXLabelRotation: function () {
            //Get the width of each grid by calculating the difference
            //between x offsets between 0 and 1.

            this.ctx.font = this.font;

            var firstWidth = this.ctx.measureText(this.xLabels[0]).width,
                lastWidth = this.ctx.measureText(this.xLabels[this.xLabels.length - 1]).width,
                firstRotated,
                lastRotated;


            this.xScalePaddingRight = lastWidth / 2 + 3;
            this.xScalePaddingLeft = (firstWidth / 2 > this.yLabelWidth) ? firstWidth / 2 : this.yLabelWidth;

            this.xLabelRotation = 0;
            if (this.display) {
                var originalLabelWidth = longestText(this.ctx, this.font, this.xLabels),
                    cosRotation,
                    firstRotatedWidth;
                this.xLabelWidth = originalLabelWidth;
                //Allow 3 pixels x2 padding either side for label readability
                var xGridWidth = Math.floor(this.calculateX(1) - this.calculateX(0)) - 6;

                //Max label rotate should be 90 - also act as a loop counter
                while ((this.xLabelWidth > xGridWidth && this.xLabelRotation === 0) || (this.xLabelWidth > xGridWidth && this.xLabelRotation <= 90 && this.xLabelRotation > 0)) {
                    cosRotation = Math.cos(toRadians(this.xLabelRotation));

                    firstRotated = cosRotation * firstWidth;
                    lastRotated = cosRotation * lastWidth;

                    // We're right aligning the text now.
                    if (firstRotated + this.fontSize / 2 > this.yLabelWidth) {
                        this.xScalePaddingLeft = firstRotated + this.fontSize / 2;
                    }
                    this.xScalePaddingRight = this.fontSize / 2;


                    this.xLabelRotation++;
                    this.xLabelWidth = cosRotation * originalLabelWidth;

                }
                if (this.xLabelRotation > 0) {
                    this.endPoint -= Math.sin(toRadians(this.xLabelRotation)) * originalLabelWidth + 3;
                }
            }
            else {
                this.xLabelWidth = 0;
                this.xScalePaddingRight = this.padding;
                this.xScalePaddingLeft = this.padding;
            }

        },
        // Needs to be overidden in each Chart type
        // Otherwise we need to pass all the data into the scale class
        calculateYRange: noop,
        drawingArea: function () {
            return this.startPoint - this.endPoint;
        },
        calculateY: function (value) {
            var scalingFactor = this.drawingArea() / (this.min - this.max);
            return this.endPoint - (scalingFactor * (value - this.min));
        },
        calculateX: function (index) {
            var isRotated = (this.xLabelRotation > 0),
            // innerWidth = (this.offsetGridLines) ? this.width - offsetLeft - this.padding : this.width - (offsetLeft + halfLabelWidth * 2) - this.padding,
                innerWidth = this.width - (this.xScalePaddingLeft + this.xScalePaddingRight),
                valueWidth = innerWidth / Math.max((this.valuesCount - ((this.offsetGridLines) ? 0 : 1)), 1),
                valueOffset = (valueWidth * index) + this.xScalePaddingLeft;

            if (this.offsetGridLines) {
                valueOffset += (valueWidth / 2);
            }

            return Math.round(valueOffset);
        },
        update: function (newProps) {
            helpers.extend(this, newProps);
            this.fit();
        },
        draw: function () {
            var ctx = this.ctx,
                yLabelGap = (this.endPoint - this.startPoint) / this.steps,
                xStart = Math.round(this.xScalePaddingLeft);
            if (this.display) {
                ctx.fillStyle = this.textColor;
                ctx.font = this.font;
                each(this.yLabels, function (labelString, index) {
                    var yLabelCenter = this.endPoint - (yLabelGap * index),
                        linePositionY = Math.round(yLabelCenter),
                        drawHorizontalLine = this.showHorizontalLines;

                    ctx.textAlign = "right";
                    ctx.textBaseline = "middle";
                    if (this.showLabels) {
                        ctx.fillText(labelString, xStart - 10, yLabelCenter);
                    }

                    // This is X axis, so draw it
                    if (index === 0 && !drawHorizontalLine) {
                        drawHorizontalLine = true;
                    }

                    if (drawHorizontalLine) {
                        ctx.beginPath();
                    }

                    if (index > 0) {
                        // This is a grid line in the centre, so drop that
                        ctx.lineWidth = this.gridLineWidth;
                        ctx.strokeStyle = this.gridLineColor;
                    } else {
                        // This is the first line on the scale
                        ctx.lineWidth = this.lineWidth;
                        ctx.strokeStyle = this.lineColor;
                    }

                    linePositionY += helpers.aliasPixel(ctx.lineWidth);

                    if (drawHorizontalLine) {
                        ctx.moveTo(xStart, linePositionY);
                        ctx.lineTo(this.width, linePositionY);
                        ctx.stroke();
                        ctx.closePath();
                    }

                    ctx.lineWidth = this.lineWidth;
                    ctx.strokeStyle = this.lineColor;
                    ctx.beginPath();
                    ctx.moveTo(xStart - 5, linePositionY);
                    ctx.lineTo(xStart, linePositionY);
                    ctx.stroke();
                    ctx.closePath();

                }, this);

                each(this.xLabels, function (label, index) {
                    var xPos = this.calculateX(index) + aliasPixel(this.lineWidth),
                    // Check to see if line/bar here and decide where to place the line
                        linePos = this.calculateX(index - (this.offsetGridLines ? 0.5 : 0)) + aliasPixel(this.lineWidth),
                        isRotated = (this.xLabelRotation > 0),
                        drawVerticalLine = this.showVerticalLines;

                    // This is Y axis, so draw it
                    if (index === 0 && !drawVerticalLine) {
                        drawVerticalLine = true;
                    }

                    if (drawVerticalLine) {
                        ctx.beginPath();
                    }

                    if (index > 0) {
                        // This is a grid line in the centre, so drop that
                        ctx.lineWidth = this.gridLineWidth;
                        ctx.strokeStyle = this.gridLineColor;
                    } else {
                        // This is the first line on the scale
                        ctx.lineWidth = this.lineWidth;
                        ctx.strokeStyle = this.lineColor;
                    }

                    if (drawVerticalLine) {
                        ctx.moveTo(linePos, this.endPoint);
                        ctx.lineTo(linePos, this.startPoint - 3);
                        ctx.stroke();
                        ctx.closePath();
                    }


                    ctx.lineWidth = this.lineWidth;
                    ctx.strokeStyle = this.lineColor;


                    // Small lines at the bottom of the base grid line
                    ctx.beginPath();
                    ctx.moveTo(linePos, this.endPoint);
                    ctx.lineTo(linePos, this.endPoint + 5);
                    ctx.stroke();
                    ctx.closePath();

                    ctx.save();
                    ctx.translate(xPos, (isRotated) ? this.endPoint + 12 : this.endPoint + 8);
                    ctx.rotate(toRadians(this.xLabelRotation) * -1);
                    ctx.font = this.font;
                    ctx.textAlign = (isRotated) ? "right" : "center";
                    ctx.textBaseline = (isRotated) ? "middle" : "top";
                    ctx.fillText(label, 0, 0);
                    ctx.restore();
                }, this);

            }
        }

    });

    Chart.RadialScale = Chart.Element.extend({
        initialize: function () {
            this.size = min([this.height, this.width]);
            this.drawingArea = (this.display) ? (this.size / 2) - (this.fontSize / 2 + this.backdropPaddingY) : (this.size / 2);
        },
        calculateCenterOffset: function (value) {
            // Take into account half font size + the yPadding of the top value
            var scalingFactor = this.drawingArea / (this.max - this.min);

            return (value - this.min) * scalingFactor;
        },
        update: function () {
            if (!this.lineArc) {
                this.setScaleSize();
            } else {
                this.drawingArea = (this.display) ? (this.size / 2) - (this.fontSize / 2 + this.backdropPaddingY) : (this.size / 2);
            }
            this.buildYLabels();
        },
        buildYLabels: function () {
            this.yLabels = [];

            var stepDecimalPlaces = getDecimalPlaces(this.stepValue);

            for (var i = 0; i <= this.steps; i++) {
                this.yLabels.push(template(this.templateString, {value: (this.min + (i * this.stepValue)).toFixed(stepDecimalPlaces)}));
            }
        },
        getCircumference: function () {
            return ((Math.PI * 2) / this.valuesCount);
        },
        setScaleSize: function () {
            /*
             * Right, this is really confusing and there is a lot of maths going on here
             * The gist of the problem is here: https://gist.github.com/nnnick/696cc9c55f4b0beb8fe9
             *
             * Reaction: https://dl.dropboxusercontent.com/u/34601363/toomuchscience.gif
             *
             * Solution:
             *
             * We assume the radius of the polygon is half the size of the canvas at first
             * at each index we check if the text overlaps.
             *
             * Where it does, we store that angle and that index.
             *
             * After finding the largest index and angle we calculate how much we need to remove
             * from the shape radius to move the point inwards by that x.
             *
             * We average the left and right distances to get the maximum shape radius that can fit in the box
             * along with labels.
             *
             * Once we have that, we can find the centre point for the chart, by taking the x text protrusion
             * on each side, removing that from the size, halving it and adding the left x protrusion width.
             *
             * This will mean we have a shape fitted to the canvas, as large as it can be with the labels
             * and position it in the most space efficient manner
             *
             * https://dl.dropboxusercontent.com/u/34601363/yeahscience.gif
             */


            // Get maximum radius of the polygon. Either half the height (minus the text width) or half the width.
            // Use this to calculate the offset + change. - Make sure L/R protrusion is at least 0 to stop issues with centre points
            var largestPossibleRadius = min([(this.height / 2 - this.pointLabelFontSize - 5), this.width / 2]),
                pointPosition,
                i,
                textWidth,
                halfTextWidth,
                furthestRight = this.width,
                furthestRightIndex,
                furthestRightAngle,
                furthestLeft = 0,
                furthestLeftIndex,
                furthestLeftAngle,
                xProtrusionLeft,
                xProtrusionRight,
                radiusReductionRight,
                radiusReductionLeft,
                maxWidthRadius;
            this.ctx.font = fontString(this.pointLabelFontSize, this.pointLabelFontStyle, this.pointLabelFontFamily);
            for (i = 0; i < this.valuesCount; i++) {
                // 5px to space the text slightly out - similar to what we do in the draw function.
                pointPosition = this.getPointPosition(i, largestPossibleRadius);
                textWidth = this.ctx.measureText(template(this.templateString, {value: this.labels[i]})).width + 5;
                if (i === 0 || i === this.valuesCount / 2) {
                    // If we're at index zero, or exactly the middle, we're at exactly the top/bottom
                    // of the radar chart, so text will be aligned centrally, so we'll half it and compare
                    // w/left and right text sizes
                    halfTextWidth = textWidth / 2;
                    if (pointPosition.x + halfTextWidth > furthestRight) {
                        furthestRight = pointPosition.x + halfTextWidth;
                        furthestRightIndex = i;
                    }
                    if (pointPosition.x - halfTextWidth < furthestLeft) {
                        furthestLeft = pointPosition.x - halfTextWidth;
                        furthestLeftIndex = i;
                    }
                }
                else if (i < this.valuesCount / 2) {
                    // Less than half the values means we'll left align the text
                    if (pointPosition.x + textWidth > furthestRight) {
                        furthestRight = pointPosition.x + textWidth;
                        furthestRightIndex = i;
                    }
                }
                else if (i > this.valuesCount / 2) {
                    // More than half the values means we'll right align the text
                    if (pointPosition.x - textWidth < furthestLeft) {
                        furthestLeft = pointPosition.x - textWidth;
                        furthestLeftIndex = i;
                    }
                }
            }

            xProtrusionLeft = furthestLeft;

            xProtrusionRight = Math.ceil(furthestRight - this.width);

            furthestRightAngle = this.getIndexAngle(furthestRightIndex);

            furthestLeftAngle = this.getIndexAngle(furthestLeftIndex);

            radiusReductionRight = xProtrusionRight / Math.sin(furthestRightAngle + Math.PI / 2);

            radiusReductionLeft = xProtrusionLeft / Math.sin(furthestLeftAngle + Math.PI / 2);

            // Ensure we actually need to reduce the size of the chart
            radiusReductionRight = (isNumber(radiusReductionRight)) ? radiusReductionRight : 0;
            radiusReductionLeft = (isNumber(radiusReductionLeft)) ? radiusReductionLeft : 0;

            this.drawingArea = largestPossibleRadius - (radiusReductionLeft + radiusReductionRight) / 2;

            //this.drawingArea = min([maxWidthRadius, (this.height - (2 * (this.pointLabelFontSize + 5)))/2])
            this.setCenterPoint(radiusReductionLeft, radiusReductionRight);

        },
        setCenterPoint: function (leftMovement, rightMovement) {

            var maxRight = this.width - rightMovement - this.drawingArea,
                maxLeft = leftMovement + this.drawingArea;

            this.xCenter = (maxLeft + maxRight) / 2;
            // Always vertically in the centre as the text height doesn't change
            this.yCenter = (this.height / 2);
        },

        getIndexAngle: function (index) {
            var angleMultiplier = (Math.PI * 2) / this.valuesCount;
            // Start from the top instead of right, so remove a quarter of the circle

            return index * angleMultiplier - (Math.PI / 2);
        },
        getPointPosition: function (index, distanceFromCenter) {
            var thisAngle = this.getIndexAngle(index);
            return {
                x: (Math.cos(thisAngle) * distanceFromCenter) + this.xCenter,
                y: (Math.sin(thisAngle) * distanceFromCenter) + this.yCenter
            };
        },
        draw: function () {
            if (this.display) {
                var ctx = this.ctx;
                each(this.yLabels, function (label, index) {
                    // Don't draw a centre value
                    if (index > 0) {
                        var yCenterOffset = index * (this.drawingArea / this.steps),
                            yHeight = this.yCenter - yCenterOffset,
                            pointPosition;

                        // Draw circular lines around the scale
                        if (this.lineWidth > 0) {
                            ctx.strokeStyle = this.lineColor;
                            ctx.lineWidth = this.lineWidth;

                            if (this.lineArc) {
                                ctx.beginPath();
                                ctx.arc(this.xCenter, this.yCenter, yCenterOffset, 0, Math.PI * 2);
                                ctx.closePath();
                                ctx.stroke();
                            } else {
                                ctx.beginPath();
                                for (var i = 0; i < this.valuesCount; i++) {
                                    pointPosition = this.getPointPosition(i, this.calculateCenterOffset(this.min + (index * this.stepValue)));
                                    if (i === 0) {
                                        ctx.moveTo(pointPosition.x, pointPosition.y);
                                    } else {
                                        ctx.lineTo(pointPosition.x, pointPosition.y);
                                    }
                                }
                                ctx.closePath();
                                ctx.stroke();
                            }
                        }
                        if (this.showLabels) {
                            ctx.font = fontString(this.fontSize, this.fontStyle, this.fontFamily);
                            if (this.showLabelBackdrop) {
                                var labelWidth = ctx.measureText(label).width;
                                ctx.fillStyle = this.backdropColor;
                                ctx.fillRect(
                                    this.xCenter - labelWidth / 2 - this.backdropPaddingX,
                                    yHeight - this.fontSize / 2 - this.backdropPaddingY,
                                    labelWidth + this.backdropPaddingX * 2,
                                    this.fontSize + this.backdropPaddingY * 2
                                );
                            }
                            ctx.textAlign = 'center';
                            ctx.textBaseline = "middle";
                            ctx.fillStyle = this.fontColor;
                            ctx.fillText(label, this.xCenter, yHeight);
                        }
                    }
                }, this);

                if (!this.lineArc) {
                    ctx.lineWidth = this.angleLineWidth;
                    ctx.strokeStyle = this.angleLineColor;
                    for (var i = this.valuesCount - 1; i >= 0; i--) {
                        var centerOffset = null, outerPosition = null;

                        if (this.angleLineWidth > 0) {
                            centerOffset = this.calculateCenterOffset(this.max);
                            outerPosition = this.getPointPosition(i, centerOffset);
                            ctx.beginPath();
                            ctx.moveTo(this.xCenter, this.yCenter);
                            ctx.lineTo(outerPosition.x, outerPosition.y);
                            ctx.stroke();
                            ctx.closePath();
                        }

                        if (this.backgroundColors && this.backgroundColors.length == this.valuesCount) {
                            if (centerOffset == null)
                                centerOffset = this.calculateCenterOffset(this.max);

                            if (outerPosition == null)
                                outerPosition = this.getPointPosition(i, centerOffset);

                            var previousOuterPosition = this.getPointPosition(i === 0 ? this.valuesCount - 1 : i - 1, centerOffset);
                            var nextOuterPosition = this.getPointPosition(i === this.valuesCount - 1 ? 0 : i + 1, centerOffset);

                            var previousOuterHalfway = {
                                x: (previousOuterPosition.x + outerPosition.x) / 2,
                                y: (previousOuterPosition.y + outerPosition.y) / 2
                            };
                            var nextOuterHalfway = {
                                x: (outerPosition.x + nextOuterPosition.x) / 2,
                                y: (outerPosition.y + nextOuterPosition.y) / 2
                            };

                            ctx.beginPath();
                            ctx.moveTo(this.xCenter, this.yCenter);
                            ctx.lineTo(previousOuterHalfway.x, previousOuterHalfway.y);
                            ctx.lineTo(outerPosition.x, outerPosition.y);
                            ctx.lineTo(nextOuterHalfway.x, nextOuterHalfway.y);
                            ctx.fillStyle = this.backgroundColors[i];
                            ctx.fill();
                            ctx.closePath();
                        }
                        // Extra 3px out for some label spacing
                        var pointLabelPosition = this.getPointPosition(i, this.calculateCenterOffset(this.max) + 5);
                        ctx.font = fontString(this.pointLabelFontSize, this.pointLabelFontStyle, this.pointLabelFontFamily);
                        ctx.fillStyle = this.pointLabelFontColor;

                        var labelsCount = this.labels.length,
                            halfLabelsCount = this.labels.length / 2,
                            quarterLabelsCount = halfLabelsCount / 2,
                            upperHalf = (i < quarterLabelsCount || i > labelsCount - quarterLabelsCount),
                            exactQuarter = (i === quarterLabelsCount || i === labelsCount - quarterLabelsCount);
                        if (i === 0) {
                            ctx.textAlign = 'center';
                        } else if (i === halfLabelsCount) {
                            ctx.textAlign = 'center';
                        } else if (i < halfLabelsCount) {
                            ctx.textAlign = 'left';
                        } else {
                            ctx.textAlign = 'right';
                        }

                        // Set the correct text baseline based on outer positioning
                        if (exactQuarter) {
                            ctx.textBaseline = 'middle';
                        } else if (upperHalf) {
                            ctx.textBaseline = 'bottom';
                        } else {
                            ctx.textBaseline = 'top';
                        }

                        ctx.fillText(this.labels[i], pointLabelPosition.x, pointLabelPosition.y);
                    }
                }
            }
        }
    });

    Chart.animationService = {
        frameDuration: 17,
        animations: [],
        dropFrames: 0,
        addAnimation: function (chartInstance, animationObject) {
            for (var index = 0; index < this.animations.length; ++index) {
                if (this.animations[index].chartInstance === chartInstance) {
                    // replacing an in progress animation
                    this.animations[index].animationObject = animationObject;
                    return;
                }
            }

            this.animations.push({
                chartInstance: chartInstance,
                animationObject: animationObject
            });

            // If there are no animations queued, manually kickstart a digest, for lack of a better word
            if (this.animations.length == 1) {
                helpers.requestAnimFrame.call(window, this.digestWrapper);
            }
        },
        // Cancel the animation for a given chart instance
        cancelAnimation: function (chartInstance) {
            var index = helpers.findNextWhere(this.animations, function (animationWrapper) {
                return animationWrapper.chartInstance === chartInstance;
            });

            if (index) {
                this.animations.splice(index, 1);
            }
        },
        // calls startDigest with the proper context
        digestWrapper: function () {
            Chart.animationService.startDigest.call(Chart.animationService);
        },
        startDigest: function () {

            var startTime = Date.now();
            var framesToDrop = 0;

            if (this.dropFrames > 1) {
                framesToDrop = Math.floor(this.dropFrames);
                this.dropFrames -= framesToDrop;
            }

            for (var i = 0; i < this.animations.length; i++) {

                if (this.animations[i].animationObject.currentStep === null) {
                    this.animations[i].animationObject.currentStep = 0;
                }

                this.animations[i].animationObject.currentStep += 1 + framesToDrop;
                if (this.animations[i].animationObject.currentStep > this.animations[i].animationObject.numSteps) {
                    this.animations[i].animationObject.currentStep = this.animations[i].animationObject.numSteps;
                }

                this.animations[i].animationObject.render(this.animations[i].chartInstance, this.animations[i].animationObject);

                // Check if executed the last frame.
                if (this.animations[i].animationObject.currentStep == this.animations[i].animationObject.numSteps) {
                    // Call onAnimationComplete
                    this.animations[i].animationObject.onAnimationComplete.call(this.animations[i].chartInstance);
                    // Remove the animation.
                    this.animations.splice(i, 1);
                    // Keep the index in place to offset the splice
                    i--;
                }
            }

            var endTime = Date.now();
            var delay = endTime - startTime - this.frameDuration;
            var frameDelay = delay / this.frameDuration;

            if (frameDelay > 1) {
                this.dropFrames += frameDelay;
            }

            // Do we have more stuff to animate?
            if (this.animations.length > 0) {
                helpers.requestAnimFrame.call(window, this.digestWrapper);
            }
        }
    };

    // Attach global event to resize each chart instance when the browser resizes
    helpers.addEvent(window, "resize", (function () {
        // Basic debounce of resize function so it doesn't hurt performance when resizing browser.
        var timeout;
        return function () {
            clearTimeout(timeout);
            timeout = setTimeout(function () {
                each(Chart.instances, function (instance) {
                    // If the responsive flag is set in the chart instance config
                    // Cascade the resize event down to the chart.
                    if (instance.options.responsive) {
                        instance.resize(instance.render, true);
                    }
                });
            }, 50);
        };
    })());


    if (amd) {
        define(function () {
            return Chart;
        });
    } else if (typeof module === 'object' && module.exports) {
        module.exports = Chart;
    }

    root.Chart = Chart;

    Chart.noConflict = function () {
        root.Chart = previous;
        return Chart;
    };

}).call(this);

(function () {
    "use strict";

    var root = this,
        Chart = root.Chart,
        helpers = Chart.helpers;


    var defaultConfig = {
        //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
        scaleBeginAtZero: true,

        //Boolean - Whether grid lines are shown across the chart
        scaleShowGridLines: true,

        //String - Colour of the grid lines
        scaleGridLineColor: "rgba(0,0,0,.05)",

        //Number - Width of the grid lines
        scaleGridLineWidth: 1,

        //Boolean - Whether to show horizontal lines (except X axis)
        scaleShowHorizontalLines: true,

        //Boolean - Whether to show vertical lines (except Y axis)
        scaleShowVerticalLines: true,

        //Boolean - If there is a stroke on each bar
        barShowStroke: true,

        //Number - Pixel width of the bar stroke
        barStrokeWidth: 2,

        //Number - Spacing between each of the X value sets
        barValueSpacing: 5,

        //Number - Spacing between data sets within X values
        barDatasetSpacing: 1,

        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"><%if(datasets[i].label){%><%=datasets[i].label%><%}%></span></li><%}%></ul>"

    };


    Chart.Type.extend({
        name: "Bar",
        defaults: defaultConfig,
        initialize: function (data) {

            //Expose options as a scope variable here so we can access it in the ScaleClass
            var options = this.options;

            this.ScaleClass = Chart.Scale.extend({
                offsetGridLines: true,
                calculateBarX: function (datasetCount, datasetIndex, barIndex) {
                    //Reusable method for calculating the xPosition of a given bar based on datasetIndex & width of the bar
                    var xWidth = this.calculateBaseWidth(),
                        xAbsolute = this.calculateX(barIndex) - (xWidth / 2),
                        barWidth = this.calculateBarWidth(datasetCount);

                    return xAbsolute + (barWidth * datasetIndex) + (datasetIndex * options.barDatasetSpacing) + barWidth / 2;
                },
                calculateBaseWidth: function () {
                    return (this.calculateX(1) - this.calculateX(0)) - (2 * options.barValueSpacing);
                },
                calculateBarWidth: function (datasetCount) {
                    //The padding between datasets is to the right of each bar, providing that there are more than 1 dataset
                    var baseWidth = this.calculateBaseWidth() - ((datasetCount - 1) * options.barDatasetSpacing);

                    return (baseWidth / datasetCount);
                }
            });

            this.datasets = [];

            //Set up tooltip events on the chart
            if (this.options.showTooltips) {
                helpers.bindEvents(this, this.options.tooltipEvents, function (evt) {
                    var activeBars = (evt.type !== 'mouseout') ? this.getBarsAtEvent(evt) : [];

                    this.eachBars(function (bar) {
                        bar.restore(['fillColor', 'strokeColor']);
                    });
                    helpers.each(activeBars, function (activeBar) {
                        activeBar.fillColor = activeBar.highlightFill;
                        activeBar.strokeColor = activeBar.highlightStroke;
                    });
                    this.showTooltip(activeBars);
                });
            }

            //Declare the extension of the default point, to cater for the options passed in to the constructor
            this.BarClass = Chart.Rectangle.extend({
                strokeWidth: this.options.barStrokeWidth,
                showStroke: this.options.barShowStroke,
                ctx: this.chart.ctx
            });

            //Iterate through each of the datasets, and build this into a property of the chart
            helpers.each(data.datasets, function (dataset, datasetIndex) {

                var datasetObject = {
                    label: dataset.label || null,
                    fillColor: dataset.fillColor,
                    strokeColor: dataset.strokeColor,
                    bars: []
                };

                this.datasets.push(datasetObject);

                helpers.each(dataset.data, function (dataPoint, index) {
                    //Add a new point for each piece of data, passing any required data to draw.
                    datasetObject.bars.push(new this.BarClass({
                        value: dataPoint,
                        label: data.labels[index],
                        datasetLabel: dataset.label,
                        strokeColor: dataset.strokeColor,
                        fillColor: dataset.fillColor,
                        highlightFill: dataset.highlightFill || dataset.fillColor,
                        highlightStroke: dataset.highlightStroke || dataset.strokeColor
                    }));
                }, this);

            }, this);

            this.buildScale(data.labels);

            this.BarClass.prototype.base = this.scale.endPoint;

            this.eachBars(function (bar, index, datasetIndex) {
                helpers.extend(bar, {
                    width: this.scale.calculateBarWidth(this.datasets.length),
                    x: this.scale.calculateBarX(this.datasets.length, datasetIndex, index),
                    y: this.scale.endPoint
                });
                bar.save();
            }, this);

            this.render();
        },
        update: function () {
            this.scale.update();
            // Reset any highlight colours before updating.
            helpers.each(this.activeElements, function (activeElement) {
                activeElement.restore(['fillColor', 'strokeColor']);
            });

            this.eachBars(function (bar) {
                bar.save();
            });
            this.render();
        },
        eachBars: function (callback) {
            helpers.each(this.datasets, function (dataset, datasetIndex) {
                helpers.each(dataset.bars, callback, this, datasetIndex);
            }, this);
        },
        getBarsAtEvent: function (e) {
            var barsArray = [],
                eventPosition = helpers.getRelativePosition(e),
                datasetIterator = function (dataset) {
                    barsArray.push(dataset.bars[barIndex]);
                },
                barIndex;

            for (var datasetIndex = 0; datasetIndex < this.datasets.length; datasetIndex++) {
                for (barIndex = 0; barIndex < this.datasets[datasetIndex].bars.length; barIndex++) {
                    if (this.datasets[datasetIndex].bars[barIndex].inRange(eventPosition.x, eventPosition.y)) {
                        helpers.each(this.datasets, datasetIterator);
                        return barsArray;
                    }
                }
            }

            return barsArray;
        },
        buildScale: function (labels) {
            var self = this;

            var dataTotal = function () {
                var values = [];
                self.eachBars(function (bar) {
                    values.push(bar.value);
                });
                return values;
            };

            var scaleOptions = {
                templateString: this.options.scaleLabel,
                height: this.chart.height,
                width: this.chart.width,
                ctx: this.chart.ctx,
                textColor: this.options.scaleFontColor,
                fontSize: this.options.scaleFontSize,
                fontStyle: this.options.scaleFontStyle,
                fontFamily: this.options.scaleFontFamily,
                valuesCount: labels.length,
                beginAtZero: this.options.scaleBeginAtZero,
                integersOnly: this.options.scaleIntegersOnly,
                calculateYRange: function (currentHeight) {
                    var updatedRanges = helpers.calculateScaleRange(
                        dataTotal(),
                        currentHeight,
                        this.fontSize,
                        this.beginAtZero,
                        this.integersOnly
                    );
                    helpers.extend(this, updatedRanges);
                },
                xLabels: labels,
                font: helpers.fontString(this.options.scaleFontSize, this.options.scaleFontStyle, this.options.scaleFontFamily),
                lineWidth: this.options.scaleLineWidth,
                lineColor: this.options.scaleLineColor,
                showHorizontalLines: this.options.scaleShowHorizontalLines,
                showVerticalLines: this.options.scaleShowVerticalLines,
                gridLineWidth: (this.options.scaleShowGridLines) ? this.options.scaleGridLineWidth : 0,
                gridLineColor: (this.options.scaleShowGridLines) ? this.options.scaleGridLineColor : "rgba(0,0,0,0)",
                padding: (this.options.showScale) ? 0 : (this.options.barShowStroke) ? this.options.barStrokeWidth : 0,
                showLabels: this.options.scaleShowLabels,
                display: this.options.showScale
            };

            if (this.options.scaleOverride) {
                helpers.extend(scaleOptions, {
                    calculateYRange: helpers.noop,
                    steps: this.options.scaleSteps,
                    stepValue: this.options.scaleStepWidth,
                    min: this.options.scaleStartValue,
                    max: this.options.scaleStartValue + (this.options.scaleSteps * this.options.scaleStepWidth)
                });
            }

            this.scale = new this.ScaleClass(scaleOptions);
        },
        addData: function (valuesArray, label) {
            //Map the values array for each of the datasets
            helpers.each(valuesArray, function (value, datasetIndex) {
                //Add a new point for each piece of data, passing any required data to draw.
                this.datasets[datasetIndex].bars.push(new this.BarClass({
                    value: value,
                    label: label,
                    datasetLabel: this.datasets[datasetIndex].label,
                    x: this.scale.calculateBarX(this.datasets.length, datasetIndex, this.scale.valuesCount + 1),
                    y: this.scale.endPoint,
                    width: this.scale.calculateBarWidth(this.datasets.length),
                    base: this.scale.endPoint,
                    strokeColor: this.datasets[datasetIndex].strokeColor,
                    fillColor: this.datasets[datasetIndex].fillColor
                }));
            }, this);

            this.scale.addXLabel(label);
            //Then re-render the chart.
            this.update();
        },
        removeData: function () {
            this.scale.removeXLabel();
            //Then re-render the chart.
            helpers.each(this.datasets, function (dataset) {
                dataset.bars.shift();
            }, this);
            this.update();
        },
        reflow: function () {
            helpers.extend(this.BarClass.prototype, {
                y: this.scale.endPoint,
                base: this.scale.endPoint
            });
            var newScaleProps = helpers.extend({
                height: this.chart.height,
                width: this.chart.width
            });
            this.scale.update(newScaleProps);
        },
        draw: function (ease) {
            var easingDecimal = ease || 1;
            this.clear();

            var ctx = this.chart.ctx;

            this.scale.draw(easingDecimal);

            //Draw all the bars for each dataset
            helpers.each(this.datasets, function (dataset, datasetIndex) {
                helpers.each(dataset.bars, function (bar, index) {
                    if (bar.hasValue()) {
                        bar.base = this.scale.endPoint;
                        //Transition then draw
                        bar.transition({
                            x: this.scale.calculateBarX(this.datasets.length, datasetIndex, index),
                            y: this.scale.calculateY(bar.value),
                            width: this.scale.calculateBarWidth(this.datasets.length)
                        }, easingDecimal).draw();
                    }
                }, this);

            }, this);
        }
    });


}).call(this);

(function () {
    "use strict";

    var root = this,
        Chart = root.Chart,
    //Cache a local reference to Chart.helpers
        helpers = Chart.helpers;

    var defaultConfig = {
        //Boolean - Whether we should show a stroke on each segment
        segmentShowStroke: true,

        //String - The colour of each segment stroke
        segmentStrokeColor: "#fff",

        //Number - The width of each segment stroke
        segmentStrokeWidth: 2,

        //The percentage of the chart that we cut out of the middle.
        percentageInnerCutout: 50,

        //Number - Amount of animation steps
        animationSteps: 100,

        //String - Animation easing effect
        animationEasing: "easeOutBounce",

        //Boolean - Whether we animate the rotation of the Doughnut
        animateRotate: true,

        //Boolean - Whether we animate scaling the Doughnut from the centre
        animateScale: false,

        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"><%if(segments[i].label){%><%=segments[i].label%><%}%></span></li><%}%></ul>"

    };

    Chart.Type.extend({
        //Passing in a name registers this chart in the Chart namespace
        name: "Doughnut",
        //Providing a defaults will also register the deafults in the chart namespace
        defaults: defaultConfig,
        //Initialize is fired when the chart is initialized - Data is passed in as a parameter
        //Config is automatically merged by the core of Chart.js, and is available at this.options
        initialize: function (data) {

            //Declare segments as a static property to prevent inheriting across the Chart type prototype
            this.segments = [];
            this.outerRadius = (helpers.min([this.chart.width, this.chart.height]) - this.options.segmentStrokeWidth / 2) / 2;

            this.SegmentArc = Chart.Arc.extend({
                ctx: this.chart.ctx,
                x: this.chart.width / 2,
                y: this.chart.height / 2
            });

            //Set up tooltip events on the chart
            if (this.options.showTooltips) {
                helpers.bindEvents(this, this.options.tooltipEvents, function (evt) {
                    var activeSegments = (evt.type !== 'mouseout') ? this.getSegmentsAtEvent(evt) : [];

                    helpers.each(this.segments, function (segment) {
                        segment.restore(["fillColor"]);
                    });
                    helpers.each(activeSegments, function (activeSegment) {
                        activeSegment.fillColor = activeSegment.highlightColor;
                    });
                    this.showTooltip(activeSegments);
                });
            }
            this.calculateTotal(data);

            helpers.each(data, function (datapoint, index) {
                if (!datapoint.color) {
                    datapoint.color = 'hsl(' + (360 * index / data.length) + ', 100%, 50%)';
                }
                this.addData(datapoint, index, true);
            }, this);

            this.render();
        },
        getSegmentsAtEvent: function (e) {
            var segmentsArray = [];

            var location = helpers.getRelativePosition(e);

            helpers.each(this.segments, function (segment) {
                if (segment.inRange(location.x, location.y)) segmentsArray.push(segment);
            }, this);
            return segmentsArray;
        },
        addData: function (segment, atIndex, silent) {
            var index = atIndex !== undefined ? atIndex : this.segments.length;
            if (typeof(segment.color) === "undefined") {
                segment.color = Chart.defaults.global.segmentColorDefault[index % Chart.defaults.global.segmentColorDefault.length];
                segment.highlight = Chart.defaults.global.segmentHighlightColorDefaults[index % Chart.defaults.global.segmentHighlightColorDefaults.length];
            }
            this.segments.splice(index, 0, new this.SegmentArc({
                value: segment.value,
                outerRadius: (this.options.animateScale) ? 0 : this.outerRadius,
                innerRadius: (this.options.animateScale) ? 0 : (this.outerRadius / 100) * this.options.percentageInnerCutout,
                fillColor: segment.color,
                highlightColor: segment.highlight || segment.color,
                showStroke: this.options.segmentShowStroke,
                strokeWidth: this.options.segmentStrokeWidth,
                strokeColor: this.options.segmentStrokeColor,
                startAngle: Math.PI * 1.5,
                circumference: (this.options.animateRotate) ? 0 : this.calculateCircumference(segment.value),
                label: segment.label
            }));
            if (!silent) {
                this.reflow();
                this.update();
            }
        },
        calculateCircumference: function (value) {
            if (this.total > 0) {
                return (Math.PI * 2) * (value / this.total);
            } else {
                return 0;
            }
        },
        calculateTotal: function (data) {
            this.total = 0;
            helpers.each(data, function (segment) {
                this.total += Math.abs(segment.value);
            }, this);
        },
        update: function () {
            this.calculateTotal(this.segments);

            // Reset any highlight colours before updating.
            helpers.each(this.activeElements, function (activeElement) {
                activeElement.restore(['fillColor']);
            });

            helpers.each(this.segments, function (segment) {
                segment.save();
            });
            this.render();
        },

        removeData: function (atIndex) {
            var indexToDelete = (helpers.isNumber(atIndex)) ? atIndex : this.segments.length - 1;
            this.segments.splice(indexToDelete, 1);
            this.reflow();
            this.update();
        },

        reflow: function () {
            helpers.extend(this.SegmentArc.prototype, {
                x: this.chart.width / 2,
                y: this.chart.height / 2
            });
            this.outerRadius = (helpers.min([this.chart.width, this.chart.height]) - this.options.segmentStrokeWidth / 2) / 2;
            helpers.each(this.segments, function (segment) {
                segment.update({
                    outerRadius: this.outerRadius,
                    innerRadius: (this.outerRadius / 100) * this.options.percentageInnerCutout
                });
            }, this);
        },
        draw: function (easeDecimal) {
            var animDecimal = (easeDecimal) ? easeDecimal : 1;
            this.clear();
            helpers.each(this.segments, function (segment, index) {
                segment.transition({
                    circumference: this.calculateCircumference(segment.value),
                    outerRadius: this.outerRadius,
                    innerRadius: (this.outerRadius / 100) * this.options.percentageInnerCutout
                }, animDecimal);

                segment.endAngle = segment.startAngle + segment.circumference;

                segment.draw();
                if (index === 0) {
                    segment.startAngle = Math.PI * 1.5;
                }
                //Check to see if it's the last segment, if not get the next and update the start angle
                if (index < this.segments.length - 1) {
                    this.segments[index + 1].startAngle = segment.endAngle;
                }
            }, this);

        }
    });

    Chart.types.Doughnut.extend({
        name: "Pie",
        defaults: helpers.merge(defaultConfig, {percentageInnerCutout: 0})
    });

}).call(this);

(function () {
    "use strict";

    var root = this,
        Chart = root.Chart,
        helpers = Chart.helpers;

    var defaultConfig = {

        ///Boolean - Whether grid lines are shown across the chart
        scaleShowGridLines: true,

        //String - Colour of the grid lines
        scaleGridLineColor: "rgba(0,0,0,.05)",

        //Number - Width of the grid lines
        scaleGridLineWidth: 1,

        //Boolean - Whether to show horizontal lines (except X axis)
        scaleShowHorizontalLines: true,

        //Boolean - Whether to show vertical lines (except Y axis)
        scaleShowVerticalLines: true,

        //Boolean - Whether the line is curved between points
        bezierCurve: true,

        //Number - Tension of the bezier curve between points
        bezierCurveTension: 0.4,

        //Boolean - Whether to show a dot for each point
        pointDot: true,

        //Number - Radius of each point dot in pixels
        pointDotRadius: 4,

        //Number - Pixel width of point dot stroke
        pointDotStrokeWidth: 1,

        //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
        pointHitDetectionRadius: 20,

        //Boolean - Whether to show a stroke for datasets
        datasetStroke: true,

        //Number - Pixel width of dataset stroke
        datasetStrokeWidth: 2,

        //Boolean - Whether to fill the dataset with a colour
        datasetFill: true,

        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"><%if(datasets[i].label){%><%=datasets[i].label%><%}%></span></li><%}%></ul>",

        //Boolean - Whether to horizontally center the label and point dot inside the grid
        offsetGridLines: false

    };


    Chart.Type.extend({
        name: "Line",
        defaults: defaultConfig,
        initialize: function (data) {
            //Declare the extension of the default point, to cater for the options passed in to the constructor
            this.PointClass = Chart.Point.extend({
                offsetGridLines: this.options.offsetGridLines,
                strokeWidth: this.options.pointDotStrokeWidth,
                radius: this.options.pointDotRadius,
                display: this.options.pointDot,
                hitDetectionRadius: this.options.pointHitDetectionRadius,
                ctx: this.chart.ctx,
                inRange: function (mouseX) {
                    return (Math.pow(mouseX - this.x, 2) < Math.pow(this.radius + this.hitDetectionRadius, 2));
                }
            });

            this.datasets = [];

            //Set up tooltip events on the chart
            if (this.options.showTooltips) {
                helpers.bindEvents(this, this.options.tooltipEvents, function (evt) {
                    var activePoints = (evt.type !== 'mouseout') ? this.getPointsAtEvent(evt) : [];
                    this.eachPoints(function (point) {
                        point.restore(['fillColor', 'strokeColor']);
                    });
                    helpers.each(activePoints, function (activePoint) {
                        activePoint.fillColor = activePoint.highlightFill;
                        activePoint.strokeColor = activePoint.highlightStroke;
                    });
                    this.showTooltip(activePoints);
                });
            }

            //Iterate through each of the datasets, and build this into a property of the chart
            helpers.each(data.datasets, function (dataset) {

                var datasetObject = {
                    label: dataset.label || null,
                    fillColor: dataset.fillColor,
                    strokeColor: dataset.strokeColor,
                    pointColor: dataset.pointColor,
                    pointStrokeColor: dataset.pointStrokeColor,
                    points: []
                };

                this.datasets.push(datasetObject);


                helpers.each(dataset.data, function (dataPoint, index) {
                    //Add a new point for each piece of data, passing any required data to draw.
                    datasetObject.points.push(new this.PointClass({
                        value: dataPoint,
                        label: data.labels[index],
                        datasetLabel: dataset.label,
                        strokeColor: dataset.pointStrokeColor,
                        fillColor: dataset.pointColor,
                        highlightFill: dataset.pointHighlightFill || dataset.pointColor,
                        highlightStroke: dataset.pointHighlightStroke || dataset.pointStrokeColor
                    }));
                }, this);

                this.buildScale(data.labels);


                this.eachPoints(function (point, index) {
                    helpers.extend(point, {
                        x: this.scale.calculateX(index),
                        y: this.scale.endPoint
                    });
                    point.save();
                }, this);

            }, this);


            this.render();
        },
        update: function () {
            this.scale.update();
            // Reset any highlight colours before updating.
            helpers.each(this.activeElements, function (activeElement) {
                activeElement.restore(['fillColor', 'strokeColor']);
            });
            this.eachPoints(function (point) {
                point.save();
            });
            this.render();
        },
        eachPoints: function (callback) {
            helpers.each(this.datasets, function (dataset) {
                helpers.each(dataset.points, callback, this);
            }, this);
        },
        getPointsAtEvent: function (e) {
            var pointsArray = [],
                eventPosition = helpers.getRelativePosition(e);
            helpers.each(this.datasets, function (dataset) {
                helpers.each(dataset.points, function (point) {
                    if (point.inRange(eventPosition.x, eventPosition.y)) pointsArray.push(point);
                });
            }, this);
            return pointsArray;
        },
        buildScale: function (labels) {
            var self = this;

            var dataTotal = function () {
                var values = [];
                self.eachPoints(function (point) {
                    values.push(point.value);
                });

                return values;
            };

            var scaleOptions = {
                templateString: this.options.scaleLabel,
                height: this.chart.height,
                width: this.chart.width,
                ctx: this.chart.ctx,
                textColor: this.options.scaleFontColor,
                offsetGridLines: this.options.offsetGridLines,
                fontSize: this.options.scaleFontSize,
                fontStyle: this.options.scaleFontStyle,
                fontFamily: this.options.scaleFontFamily,
                valuesCount: labels.length,
                beginAtZero: this.options.scaleBeginAtZero,
                integersOnly: this.options.scaleIntegersOnly,
                calculateYRange: function (currentHeight) {
                    var updatedRanges = helpers.calculateScaleRange(
                        dataTotal(),
                        currentHeight,
                        this.fontSize,
                        this.beginAtZero,
                        this.integersOnly
                    );
                    helpers.extend(this, updatedRanges);
                },
                xLabels: labels,
                font: helpers.fontString(this.options.scaleFontSize, this.options.scaleFontStyle, this.options.scaleFontFamily),
                lineWidth: this.options.scaleLineWidth,
                lineColor: this.options.scaleLineColor,
                showHorizontalLines: this.options.scaleShowHorizontalLines,
                showVerticalLines: this.options.scaleShowVerticalLines,
                gridLineWidth: (this.options.scaleShowGridLines) ? this.options.scaleGridLineWidth : 0,
                gridLineColor: (this.options.scaleShowGridLines) ? this.options.scaleGridLineColor : "rgba(0,0,0,0)",
                padding: (this.options.showScale) ? 0 : this.options.pointDotRadius + this.options.pointDotStrokeWidth,
                showLabels: this.options.scaleShowLabels,
                display: this.options.showScale
            };

            if (this.options.scaleOverride) {
                helpers.extend(scaleOptions, {
                    calculateYRange: helpers.noop,
                    steps: this.options.scaleSteps,
                    stepValue: this.options.scaleStepWidth,
                    min: this.options.scaleStartValue,
                    max: this.options.scaleStartValue + (this.options.scaleSteps * this.options.scaleStepWidth)
                });
            }


            this.scale = new Chart.Scale(scaleOptions);
        },
        addData: function (valuesArray, label) {
            //Map the values array for each of the datasets

            helpers.each(valuesArray, function (value, datasetIndex) {
                //Add a new point for each piece of data, passing any required data to draw.
                this.datasets[datasetIndex].points.push(new this.PointClass({
                    value: value,
                    label: label,
                    datasetLabel: this.datasets[datasetIndex].label,
                    x: this.scale.calculateX(this.scale.valuesCount + 1),
                    y: this.scale.endPoint,
                    strokeColor: this.datasets[datasetIndex].pointStrokeColor,
                    fillColor: this.datasets[datasetIndex].pointColor
                }));
            }, this);

            this.scale.addXLabel(label);
            //Then re-render the chart.
            this.update();
        },
        removeData: function () {
            this.scale.removeXLabel();
            //Then re-render the chart.
            helpers.each(this.datasets, function (dataset) {
                dataset.points.shift();
            }, this);
            this.update();
        },
        reflow: function () {
            var newScaleProps = helpers.extend({
                height: this.chart.height,
                width: this.chart.width
            });
            this.scale.update(newScaleProps);
        },
        draw: function (ease) {
            var easingDecimal = ease || 1;
            this.clear();

            var ctx = this.chart.ctx;

            // Some helper methods for getting the next/prev points
            var hasValue = function (item) {
                    return item.value !== null;
                },
                nextPoint = function (point, collection, index) {
                    return helpers.findNextWhere(collection, hasValue, index) || point;
                },
                previousPoint = function (point, collection, index) {
                    return helpers.findPreviousWhere(collection, hasValue, index) || point;
                };

            if (!this.scale) return;
            this.scale.draw(easingDecimal);


            helpers.each(this.datasets, function (dataset) {
                var pointsWithValues = helpers.where(dataset.points, hasValue);

                //Transition each point first so that the line and point drawing isn't out of sync
                //We can use this extra loop to calculate the control points of this dataset also in this loop

                helpers.each(dataset.points, function (point, index) {
                    if (point.hasValue()) {
                        point.transition({
                            y: this.scale.calculateY(point.value),
                            x: this.scale.calculateX(index)
                        }, easingDecimal);
                    }
                }, this);


                // Control points need to be calculated in a separate loop, because we need to know the current x/y of the point
                // This would cause issues when there is no animation, because the y of the next point would be 0, so beziers would be skewed
                if (this.options.bezierCurve) {
                    helpers.each(pointsWithValues, function (point, index) {
                        var tension = (index > 0 && index < pointsWithValues.length - 1) ? this.options.bezierCurveTension : 0;
                        point.controlPoints = helpers.splineCurve(
                            previousPoint(point, pointsWithValues, index),
                            point,
                            nextPoint(point, pointsWithValues, index),
                            tension
                        );

                        // Prevent the bezier going outside of the bounds of the graph

                        // Cap puter bezier handles to the upper/lower scale bounds
                        if (point.controlPoints.outer.y > this.scale.endPoint) {
                            point.controlPoints.outer.y = this.scale.endPoint;
                        }
                        else if (point.controlPoints.outer.y < this.scale.startPoint) {
                            point.controlPoints.outer.y = this.scale.startPoint;
                        }

                        // Cap inner bezier handles to the upper/lower scale bounds
                        if (point.controlPoints.inner.y > this.scale.endPoint) {
                            point.controlPoints.inner.y = this.scale.endPoint;
                        }
                        else if (point.controlPoints.inner.y < this.scale.startPoint) {
                            point.controlPoints.inner.y = this.scale.startPoint;
                        }
                    }, this);
                }


                //Draw the line between all the points
                ctx.lineWidth = this.options.datasetStrokeWidth;
                ctx.strokeStyle = dataset.strokeColor;
                ctx.beginPath();

                helpers.each(pointsWithValues, function (point, index) {
                    if (index === 0) {
                        ctx.moveTo(point.x, point.y);
                    }
                    else {
                        if (this.options.bezierCurve) {
                            var previous = previousPoint(point, pointsWithValues, index);

                            ctx.bezierCurveTo(
                                previous.controlPoints.outer.x,
                                previous.controlPoints.outer.y,
                                point.controlPoints.inner.x,
                                point.controlPoints.inner.y,
                                point.x,
                                point.y
                            );
                        }
                        else {
                            ctx.lineTo(point.x, point.y);
                        }
                    }
                }, this);

                if (this.options.datasetStroke) {
                    ctx.stroke();
                }

                if (this.options.datasetFill && pointsWithValues.length > 0) {
                    //Round off the line by going to the base of the chart, back to the start, then fill.
                    ctx.lineTo(pointsWithValues[pointsWithValues.length - 1].x, this.scale.endPoint);
                    ctx.lineTo(pointsWithValues[0].x, this.scale.endPoint);
                    ctx.fillStyle = dataset.fillColor;
                    ctx.closePath();
                    ctx.fill();
                }

                //Now draw the points over the line
                //A little inefficient double looping, but better than the line
                //lagging behind the point positions
                helpers.each(pointsWithValues, function (point) {
                    point.draw();
                });
            }, this);
        }
    });


}).call(this);

(function () {
    "use strict";

    var root = this,
        Chart = root.Chart,
    //Cache a local reference to Chart.helpers
        helpers = Chart.helpers;

    var defaultConfig = {
        //Boolean - Show a backdrop to the scale label
        scaleShowLabelBackdrop: true,

        //String - The colour of the label backdrop
        scaleBackdropColor: "rgba(255,255,255,0.75)",

        // Boolean - Whether the scale should begin at zero
        scaleBeginAtZero: true,

        //Number - The backdrop padding above & below the label in pixels
        scaleBackdropPaddingY: 2,

        //Number - The backdrop padding to the side of the label in pixels
        scaleBackdropPaddingX: 2,

        //Boolean - Show line for each value in the scale
        scaleShowLine: true,

        //Boolean - Stroke a line around each segment in the chart
        segmentShowStroke: true,

        //String - The colour of the stroke on each segment.
        segmentStrokeColor: "#fff",

        //Number - The width of the stroke value in pixels
        segmentStrokeWidth: 2,

        //Number - Amount of animation steps
        animationSteps: 100,

        //String - Animation easing effect.
        animationEasing: "easeOutBounce",

        //Boolean - Whether to animate the rotation of the chart
        animateRotate: true,

        //Boolean - Whether to animate scaling the chart from the centre
        animateScale: false,

        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"><%if(segments[i].label){%><%=segments[i].label%><%}%></span></li><%}%></ul>"
    };


    Chart.Type.extend({
        //Passing in a name registers this chart in the Chart namespace
        name: "PolarArea",
        //Providing a defaults will also register the deafults in the chart namespace
        defaults: defaultConfig,
        //Initialize is fired when the chart is initialized - Data is passed in as a parameter
        //Config is automatically merged by the core of Chart.js, and is available at this.options
        initialize: function (data) {
            this.segments = [];
            //Declare segment class as a chart instance specific class, so it can share props for this instance
            this.SegmentArc = Chart.Arc.extend({
                showStroke: this.options.segmentShowStroke,
                strokeWidth: this.options.segmentStrokeWidth,
                strokeColor: this.options.segmentStrokeColor,
                ctx: this.chart.ctx,
                innerRadius: 0,
                x: this.chart.width / 2,
                y: this.chart.height / 2
            });
            this.scale = new Chart.RadialScale({
                display: this.options.showScale,
                fontStyle: this.options.scaleFontStyle,
                fontSize: this.options.scaleFontSize,
                fontFamily: this.options.scaleFontFamily,
                fontColor: this.options.scaleFontColor,
                showLabels: this.options.scaleShowLabels,
                showLabelBackdrop: this.options.scaleShowLabelBackdrop,
                backdropColor: this.options.scaleBackdropColor,
                backdropPaddingY: this.options.scaleBackdropPaddingY,
                backdropPaddingX: this.options.scaleBackdropPaddingX,
                lineWidth: (this.options.scaleShowLine) ? this.options.scaleLineWidth : 0,
                lineColor: this.options.scaleLineColor,
                lineArc: true,
                width: this.chart.width,
                height: this.chart.height,
                xCenter: this.chart.width / 2,
                yCenter: this.chart.height / 2,
                ctx: this.chart.ctx,
                templateString: this.options.scaleLabel,
                valuesCount: data.length
            });

            this.updateScaleRange(data);

            this.scale.update();

            helpers.each(data, function (segment, index) {
                this.addData(segment, index, true);
            }, this);

            //Set up tooltip events on the chart
            if (this.options.showTooltips) {
                helpers.bindEvents(this, this.options.tooltipEvents, function (evt) {
                    var activeSegments = (evt.type !== 'mouseout') ? this.getSegmentsAtEvent(evt) : [];
                    helpers.each(this.segments, function (segment) {
                        segment.restore(["fillColor"]);
                    });
                    helpers.each(activeSegments, function (activeSegment) {
                        activeSegment.fillColor = activeSegment.highlightColor;
                    });
                    this.showTooltip(activeSegments);
                });
            }

            this.render();
        },
        getSegmentsAtEvent: function (e) {
            var segmentsArray = [];

            var location = helpers.getRelativePosition(e);

            helpers.each(this.segments, function (segment) {
                if (segment.inRange(location.x, location.y)) segmentsArray.push(segment);
            }, this);
            return segmentsArray;
        },
        addData: function (segment, atIndex, silent) {
            var index = atIndex || this.segments.length;

            this.segments.splice(index, 0, new this.SegmentArc({
                fillColor: segment.color,
                highlightColor: segment.highlight || segment.color,
                label: segment.label,
                value: segment.value,
                outerRadius: (this.options.animateScale) ? 0 : this.scale.calculateCenterOffset(segment.value),
                circumference: (this.options.animateRotate) ? 0 : this.scale.getCircumference(),
                startAngle: Math.PI * 1.5
            }));
            if (!silent) {
                this.reflow();
                this.update();
            }
        },
        removeData: function (atIndex) {
            var indexToDelete = (helpers.isNumber(atIndex)) ? atIndex : this.segments.length - 1;
            this.segments.splice(indexToDelete, 1);
            this.reflow();
            this.update();
        },
        calculateTotal: function (data) {
            this.total = 0;
            helpers.each(data, function (segment) {
                this.total += segment.value;
            }, this);
            this.scale.valuesCount = this.segments.length;
        },
        updateScaleRange: function (datapoints) {
            var valuesArray = [];
            helpers.each(datapoints, function (segment) {
                valuesArray.push(segment.value);
            });

            var scaleSizes = (this.options.scaleOverride) ?
            {
                steps: this.options.scaleSteps,
                stepValue: this.options.scaleStepWidth,
                min: this.options.scaleStartValue,
                max: this.options.scaleStartValue + (this.options.scaleSteps * this.options.scaleStepWidth)
            } :
                helpers.calculateScaleRange(
                    valuesArray,
                    helpers.min([this.chart.width, this.chart.height]) / 2,
                    this.options.scaleFontSize,
                    this.options.scaleBeginAtZero,
                    this.options.scaleIntegersOnly
                );

            helpers.extend(
                this.scale,
                scaleSizes,
                {
                    size: helpers.min([this.chart.width, this.chart.height]),
                    xCenter: this.chart.width / 2,
                    yCenter: this.chart.height / 2
                }
            );

        },
        update: function () {
            this.calculateTotal(this.segments);

            helpers.each(this.segments, function (segment) {
                segment.save();
            });

            this.reflow();
            this.render();
        },
        reflow: function () {
            helpers.extend(this.SegmentArc.prototype, {
                x: this.chart.width / 2,
                y: this.chart.height / 2
            });
            this.updateScaleRange(this.segments);
            this.scale.update();

            helpers.extend(this.scale, {
                xCenter: this.chart.width / 2,
                yCenter: this.chart.height / 2
            });

            helpers.each(this.segments, function (segment) {
                segment.update({
                    outerRadius: this.scale.calculateCenterOffset(segment.value)
                });
            }, this);

        },
        draw: function (ease) {
            var easingDecimal = ease || 1;
            //Clear & draw the canvas
            this.clear();
            helpers.each(this.segments, function (segment, index) {
                segment.transition({
                    circumference: this.scale.getCircumference(),
                    outerRadius: this.scale.calculateCenterOffset(segment.value)
                }, easingDecimal);

                segment.endAngle = segment.startAngle + segment.circumference;

                // If we've removed the first segment we need to set the first one to
                // start at the top.
                if (index === 0) {
                    segment.startAngle = Math.PI * 1.5;
                }

                //Check to see if it's the last segment, if not get the next and update the start angle
                if (index < this.segments.length - 1) {
                    this.segments[index + 1].startAngle = segment.endAngle;
                }
                segment.draw();
            }, this);
            this.scale.draw();
        }
    });

}).call(this);

(function () {
    "use strict";

    var root = this,
        Chart = root.Chart,
        helpers = Chart.helpers;


    Chart.Type.extend({
        name: "Radar",
        defaults: {
            //Boolean - Whether to show lines for each scale point
            scaleShowLine: true,

            //Boolean - Whether we show the angle lines out of the radar
            angleShowLineOut: true,

            //Boolean - Whether to show labels on the scale
            scaleShowLabels: false,

            // Boolean - Whether the scale should begin at zero
            scaleBeginAtZero: true,

            //String - Colour of the angle line
            angleLineColor: "rgba(0,0,0,.1)",

            //Number - Pixel width of the angle line
            angleLineWidth: 1,

            //String - Point label font declaration
            pointLabelFontFamily: "'Arial'",

            //String - Point label font weight
            pointLabelFontStyle: "normal",

            //Number - Point label font size in pixels
            pointLabelFontSize: 10,

            //String - Point label font colour
            pointLabelFontColor: "#666",

            //Boolean - Whether to show a dot for each point
            pointDot: true,

            //Number - Radius of each point dot in pixels
            pointDotRadius: 3,

            //Number - Pixel width of point dot stroke
            pointDotStrokeWidth: 1,

            //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
            pointHitDetectionRadius: 20,

            //Boolean - Whether to show a stroke for datasets
            datasetStroke: true,

            //Number - Pixel width of dataset stroke
            datasetStrokeWidth: 2,

            //Boolean - Whether to fill the dataset with a colour
            datasetFill: true,

            //String - A legend template
            legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"><%if(datasets[i].label){%><%=datasets[i].label%><%}%></span></li><%}%></ul>"

        },

        initialize: function (data) {
            this.PointClass = Chart.Point.extend({
                strokeWidth: this.options.pointDotStrokeWidth,
                radius: this.options.pointDotRadius,
                display: this.options.pointDot,
                hitDetectionRadius: this.options.pointHitDetectionRadius,
                ctx: this.chart.ctx
            });

            this.datasets = [];

            this.buildScale(data);

            //Set up tooltip events on the chart
            if (this.options.showTooltips) {
                helpers.bindEvents(this, this.options.tooltipEvents, function (evt) {
                    var activePointsCollection = (evt.type !== 'mouseout') ? this.getPointsAtEvent(evt) : [];

                    this.eachPoints(function (point) {
                        point.restore(['fillColor', 'strokeColor']);
                    });
                    helpers.each(activePointsCollection, function (activePoint) {
                        activePoint.fillColor = activePoint.highlightFill;
                        activePoint.strokeColor = activePoint.highlightStroke;
                    });

                    this.showTooltip(activePointsCollection);
                });
            }

            //Iterate through each of the datasets, and build this into a property of the chart
            helpers.each(data.datasets, function (dataset) {

                var datasetObject = {
                    label: dataset.label || null,
                    fillColor: dataset.fillColor,
                    strokeColor: dataset.strokeColor,
                    pointColor: dataset.pointColor,
                    pointStrokeColor: dataset.pointStrokeColor,
                    points: []
                };

                this.datasets.push(datasetObject);

                helpers.each(dataset.data, function (dataPoint, index) {
                    //Add a new point for each piece of data, passing any required data to draw.
                    var pointPosition;
                    if (!this.scale.animation) {
                        pointPosition = this.scale.getPointPosition(index, this.scale.calculateCenterOffset(dataPoint));
                    }
                    datasetObject.points.push(new this.PointClass({
                        value: dataPoint,
                        label: data.labels[index],
                        datasetLabel: dataset.label,
                        x: (this.options.animation) ? this.scale.xCenter : pointPosition.x,
                        y: (this.options.animation) ? this.scale.yCenter : pointPosition.y,
                        strokeColor: dataset.pointStrokeColor,
                        fillColor: dataset.pointColor,
                        highlightFill: dataset.pointHighlightFill || dataset.pointColor,
                        highlightStroke: dataset.pointHighlightStroke || dataset.pointStrokeColor
                    }));
                }, this);

            }, this);

            this.render();
        },
        eachPoints: function (callback) {
            helpers.each(this.datasets, function (dataset) {
                helpers.each(dataset.points, callback, this);
            }, this);
        },

        getPointsAtEvent: function (evt) {
            var mousePosition = helpers.getRelativePosition(evt),
                fromCenter = helpers.getAngleFromPoint({
                    x: this.scale.xCenter,
                    y: this.scale.yCenter
                }, mousePosition);

            var anglePerIndex = (Math.PI * 2) / this.scale.valuesCount,
                pointIndex = Math.round((fromCenter.angle - Math.PI * 1.5) / anglePerIndex),
                activePointsCollection = [];

            // If we're at the top, make the pointIndex 0 to get the first of the array.
            if (pointIndex >= this.scale.valuesCount || pointIndex < 0) {
                pointIndex = 0;
            }

            if (fromCenter.distance <= this.scale.drawingArea) {
                helpers.each(this.datasets, function (dataset) {
                    activePointsCollection.push(dataset.points[pointIndex]);
                });
            }

            return activePointsCollection;
        },

        buildScale: function (data) {
            this.scale = new Chart.RadialScale({
                display: this.options.showScale,
                fontStyle: this.options.scaleFontStyle,
                fontSize: this.options.scaleFontSize,
                fontFamily: this.options.scaleFontFamily,
                fontColor: this.options.scaleFontColor,
                showLabels: this.options.scaleShowLabels,
                showLabelBackdrop: this.options.scaleShowLabelBackdrop,
                backdropColor: this.options.scaleBackdropColor,
                backgroundColors: this.options.scaleBackgroundColors,
                backdropPaddingY: this.options.scaleBackdropPaddingY,
                backdropPaddingX: this.options.scaleBackdropPaddingX,
                lineWidth: (this.options.scaleShowLine) ? this.options.scaleLineWidth : 0,
                lineColor: this.options.scaleLineColor,
                angleLineColor: this.options.angleLineColor,
                angleLineWidth: (this.options.angleShowLineOut) ? this.options.angleLineWidth : 0,
                // Point labels at the edge of each line
                pointLabelFontColor: this.options.pointLabelFontColor,
                pointLabelFontSize: this.options.pointLabelFontSize,
                pointLabelFontFamily: this.options.pointLabelFontFamily,
                pointLabelFontStyle: this.options.pointLabelFontStyle,
                height: this.chart.height,
                width: this.chart.width,
                xCenter: this.chart.width / 2,
                yCenter: this.chart.height / 2,
                ctx: this.chart.ctx,
                templateString: this.options.scaleLabel,
                labels: data.labels,
                valuesCount: data.datasets[0].data.length
            });

            this.scale.setScaleSize();
            this.updateScaleRange(data.datasets);
            this.scale.buildYLabels();
        },
        updateScaleRange: function (datasets) {
            var valuesArray = (function () {
                var totalDataArray = [];
                helpers.each(datasets, function (dataset) {
                    if (dataset.data) {
                        totalDataArray = totalDataArray.concat(dataset.data);
                    }
                    else {
                        helpers.each(dataset.points, function (point) {
                            totalDataArray.push(point.value);
                        });
                    }
                });
                return totalDataArray;
            })();


            var scaleSizes = (this.options.scaleOverride) ?
            {
                steps: this.options.scaleSteps,
                stepValue: this.options.scaleStepWidth,
                min: this.options.scaleStartValue,
                max: this.options.scaleStartValue + (this.options.scaleSteps * this.options.scaleStepWidth)
            } :
                helpers.calculateScaleRange(
                    valuesArray,
                    helpers.min([this.chart.width, this.chart.height]) / 2,
                    this.options.scaleFontSize,
                    this.options.scaleBeginAtZero,
                    this.options.scaleIntegersOnly
                );

            helpers.extend(
                this.scale,
                scaleSizes
            );

        },
        addData: function (valuesArray, label) {
            //Map the values array for each of the datasets
            this.scale.valuesCount++;
            helpers.each(valuesArray, function (value, datasetIndex) {
                var pointPosition = this.scale.getPointPosition(this.scale.valuesCount, this.scale.calculateCenterOffset(value));
                this.datasets[datasetIndex].points.push(new this.PointClass({
                    value: value,
                    label: label,
                    datasetLabel: this.datasets[datasetIndex].label,
                    x: pointPosition.x,
                    y: pointPosition.y,
                    strokeColor: this.datasets[datasetIndex].pointStrokeColor,
                    fillColor: this.datasets[datasetIndex].pointColor
                }));
            }, this);

            this.scale.labels.push(label);

            this.reflow();

            this.update();
        },
        removeData: function () {
            this.scale.valuesCount--;
            this.scale.labels.shift();
            helpers.each(this.datasets, function (dataset) {
                dataset.points.shift();
            }, this);
            this.reflow();
            this.update();
        },
        update: function () {
            this.eachPoints(function (point) {
                point.save();
            });
            this.reflow();
            this.render();
        },
        reflow: function () {
            helpers.extend(this.scale, {
                width: this.chart.width,
                height: this.chart.height,
                size: helpers.min([this.chart.width, this.chart.height]),
                xCenter: this.chart.width / 2,
                yCenter: this.chart.height / 2
            });
            this.updateScaleRange(this.datasets);
            this.scale.setScaleSize();
            this.scale.buildYLabels();
        },
        draw: function (ease) {
            var easeDecimal = ease || 1,
                ctx = this.chart.ctx;
            this.clear();
            this.scale.draw();

            helpers.each(this.datasets, function (dataset) {

                //Transition each point first so that the line and point drawing isn't out of sync
                helpers.each(dataset.points, function (point, index) {
                    if (point.hasValue()) {
                        point.transition(this.scale.getPointPosition(index, this.scale.calculateCenterOffset(point.value)), easeDecimal);
                    }
                }, this);


                //Draw the line between all the points
                ctx.lineWidth = this.options.datasetStrokeWidth;
                ctx.strokeStyle = dataset.strokeColor;
                ctx.beginPath();
                helpers.each(dataset.points, function (point, index) {
                    if (index === 0) {
                        ctx.moveTo(point.x, point.y);
                    }
                    else {
                        ctx.lineTo(point.x, point.y);
                    }
                }, this);
                ctx.closePath();
                ctx.stroke();

                ctx.fillStyle = dataset.fillColor;
                if (this.options.datasetFill) {
                    ctx.fill();
                }
                //Now draw the points over the line
                //A little inefficient double looping, but better than the line
                //lagging behind the point positions
                helpers.each(dataset.points, function (point) {
                    if (point.hasValue()) {
                        point.draw();
                    }
                });

            }, this);

        }

    });
}).call(this);


/* Lettering.JS 0.6.1 by Dave Rupert  - http://daverupert.com */
(function ($) {
    function injector(t, splitter, klass, after) {
        var a = t.text().split(splitter), inject = '';
        if (a.length) {
            $(a).each(function (i, item) {
                inject += '<span class="' + klass + (i + 1) + '">' + item + '</span>' + after
            });
            t.empty().append(inject)
        }
    }

    var methods = {
        init: function () {
            return this.each(function () {
                injector($(this), '', 'char', '')
            })
        }, words: function () {
            return this.each(function () {
                injector($(this), ' ', 'word', ' ')
            })
        }, lines: function () {
            return this.each(function () {
                var r = "eefec303079ad17405c889e092e105b0";
                injector($(this).children("br").replaceWith(r).end(), r, 'line', '')
            })
        }
    };
    $.fn.lettering = function (method) {
        if (method && methods[method]) {
            return methods[method].apply(this, [].slice.call(arguments, 1))
        } else if (method === 'letters' || !method) {
            return methods.init.apply(this, [].slice.call(arguments, 0))
        }
        $.error('Method ' + method + ' does not exist on jQuery.lettering');
        return this
    }
})(jQuery);

/*
 * textillate.js
 * http://jschr.github.com/textillate
 * MIT licensed
 *
 * Copyright (C) 2012-2013 Jordan Schroter
 */

(function ($) {
    "use strict";

    function isInEffect(effect) {
        return /In/.test(effect) || $.inArray(effect, $.fn.textillate.defaults.inEffects) >= 0;
    };

    function isOutEffect(effect) {
        return /Out/.test(effect) || $.inArray(effect, $.fn.textillate.defaults.outEffects) >= 0;
    };


    function stringToBoolean(str) {
        if (str !== "true" && str !== "false") return str;
        return (str === "true");
    };

    // custom get data api method
    function getData(node) {
        var attrs = node.attributes || []
            , data = {};

        if (!attrs.length) return data;

        $.each(attrs, function (i, attr) {
            var nodeName = attr.nodeName.replace(/delayscale/, 'delayScale');
            if (/^data-in-*/.test(nodeName)) {
                data.in = data.in || {};
                data.in[nodeName.replace(/data-in-/, '')] = stringToBoolean(attr.nodeValue);
            } else if (/^data-out-*/.test(nodeName)) {
                data.out = data.out || {};
                data.out[nodeName.replace(/data-out-/, '')] = stringToBoolean(attr.nodeValue);
            } else if (/^data-*/.test(nodeName)) {
                data[nodeName.replace(/data-/, '')] = stringToBoolean(attr.nodeValue);
            }
        })

        return data;
    }

    function shuffle(o) {
        for (var j, x, i = o.length; i; j = parseInt(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
        return o;
    }

    function animate($t, effect, cb) {
        $t.addClass('animated ' + effect)
            .css('visibility', 'visible')
            .show();

        $t.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
            $t.removeClass('animated ' + effect);
            cb && cb();
        });
    }

    function animateTokens($tokens, options, cb) {
        var that = this
            , count = $tokens.length;

        if (!count) {
            cb && cb();
            return;
        }

        if (options.shuffle) $tokens = shuffle($tokens);
        if (options.reverse) $tokens = $tokens.toArray().reverse();

        $.each($tokens, function (i, t) {
            var $token = $(t);

            function complete() {
                if (isInEffect(options.effect)) {
                    $token.css('visibility', 'visible');
                } else if (isOutEffect(options.effect)) {
                    $token.css('visibility', 'hidden');
                }
                count -= 1;
                if (!count && cb) cb();
            }

            var delay = options.sync ? options.delay : options.delay * i * options.delayScale;

            $token.text() ?
                setTimeout(function () {
                    animate($token, options.effect, complete)
                }, delay) :
                complete();
        });
    };

    var Textillate = function (element, options) {
        var base = this
            , $element = $(element);

        base.init = function () {
            base.$texts = $element.find(options.selector);

            if (!base.$texts.length) {
                base.$texts = $('<ul class="texts"><li>' + $element.html() + '</li></ul>');
                $element.html(base.$texts);
            }

            base.$texts.hide();

            base.$current = $('<span>')
                .html(base.$texts.find(':first-child').html())
                .prependTo($element);

            if (isInEffect(options.in.effect)) {
                base.$current.css('visibility', 'hidden');
            } else if (isOutEffect(options.out.effect)) {
                base.$current.css('visibility', 'visible');
            }

            base.setOptions(options);

            base.timeoutRun = null;

            setTimeout(function () {
                base.options.autoStart && base.start();
            }, base.options.initialDelay)
        };

        base.setOptions = function (options) {
            base.options = options;
        };

        base.triggerEvent = function (name) {
            var e = $.Event(name + '.tlt');
            $element.trigger(e, base);
            return e;
        };

        base.in = function (index, cb) {
            index = index || 0;

            var $elem = base.$texts.find(':nth-child(' + ((index || 0) + 1) + ')')
                , options = $.extend(true, {}, base.options, $elem.length ? getData($elem[0]) : {})
                , $tokens;

            $elem.addClass('current');

            base.triggerEvent('inAnimationBegin');

            base.$current
                .html($elem.html())
                .lettering('words');

            // split words to individual characters if token type is set to 'char'
            if (base.options.type == "char") {
                base.$current.find('[class^="word"]')
                    .css({
                        'display': 'inline-block',
                        // fix for poor ios performance
                        '-webkit-transform': 'translate3d(0,0,0)',
                        '-moz-transform': 'translate3d(0,0,0)',
                        '-o-transform': 'translate3d(0,0,0)',
                        'transform': 'translate3d(0,0,0)'
                    })
                    .each(function () {
                        $(this).lettering()
                    });
            }

            $tokens = base.$current
                .find('[class^="' + base.options.type + '"]')
                .css('display', 'inline-block');

            if (isInEffect(options.in.effect)) {
                $tokens.css('visibility', 'hidden');
            } else if (isOutEffect(options.in.effect)) {
                $tokens.css('visibility', 'visible');
            }

            base.currentIndex = index;

            animateTokens($tokens, options.in, function () {
                base.triggerEvent('inAnimationEnd');
                if (options.in.callback) options.in.callback();
                if (cb) cb(base);
            });
        };

        base.out = function (cb) {
            var $elem = base.$texts.find(':nth-child(' + ((base.currentIndex || 0) + 1) + ')')
                , $tokens = base.$current.find('[class^="' + base.options.type + '"]')
                , options = $.extend(true, {}, base.options, $elem.length ? getData($elem[0]) : {})

            base.triggerEvent('outAnimationBegin');

            animateTokens($tokens, options.out, function () {
                $elem.removeClass('current');
                base.triggerEvent('outAnimationEnd');
                if (options.out.callback) options.out.callback();
                if (cb) cb(base);
            });
        };

        base.start = function (index) {
            setTimeout(function () {
                base.triggerEvent('start');

                (function run(index) {
                    base.in(index, function () {
                        var length = base.$texts.children().length;

                        index += 1;

                        if (!base.options.loop && index >= length) {
                            if (base.options.callback) base.options.callback();
                            base.triggerEvent('end');
                        } else {
                            index = index % length;

                            base.timeoutRun = setTimeout(function () {
                                base.out(function () {
                                    run(index)
                                });
                            }, base.options.minDisplayTime);
                        }
                    });
                }(index || 0));
            }, base.options.initialDelay);
        };

        base.stop = function () {
            if (base.timeoutRun) {
                clearInterval(base.timeoutRun);
                base.timeoutRun = null;
            }
        };

        base.init();
    }

    $.fn.textillate = function (settings, args) {
        return this.each(function () {
            var $this = $(this)
                , data = $this.data('textillate')
                , options = $.extend(true, {}, $.fn.textillate.defaults, getData(this), typeof settings == 'object' && settings);

            if (!data) {
                $this.data('textillate', (data = new Textillate(this, options)));
            } else if (typeof settings == 'string') {
                data[settings].apply(data, [].concat(args));
            } else {
                data.setOptions.call(data, options);
            }
        })
    };

    $.fn.textillate.defaults = {
        selector: '.texts',
        loop: false,
        minDisplayTime: 2000,
        initialDelay: 0,
        in: {
            effect: 'fadeInLeftBig',
            delayScale: 1.5,
            delay: 50,
            sync: false,
            reverse: false,
            shuffle: false,
            callback: function () {
            }
        },
        out: {
            effect: 'hinge',
            delayScale: 1.5,
            delay: 50,
            sync: false,
            reverse: false,
            shuffle: false,
            callback: function () {
            }
        },
        autoStart: true,
        inEffects: [],
        outEffects: ['hinge'],
        callback: function () {
        },
        type: 'char'
    };

}(jQuery));


/*page section scroll*/
$('#main').fullpage({
    //Navigation
    menu: false,
    anchors: ['hero-page', 'result-page', 'benefits-page', 'about-page', 'contacts-page'],
    navigation: true,
    navigationPosition: 'right',
    navigationTooltips: ['О нас', 'Результаты', 'Условия', 'Порядок работы', 'Контакты'],
    showActiveTooltip: true,
    slidesNavigation: false,
    slidesNavPosition: 'bottom',
    scrollBar: false,

    //scrolling
    css3: true,
    scrollingSpeed: 800,
    autoScrolling: true,
    fitToSection: true,
    easing: 'easeInOutCubic',
    easingcss3: 'ease',
    loopBottom: false,
    loopTop: false,
    loopHorizontal: false,
    continuousVertical: false,
    normalScrollElements: '.security_block',
    scrollOverflow: false,
    touchSensitivity: 10,
    normalScrollElementTouchThreshold: 5,

    //Accessibility
    keyboardScrolling: true,
    animateAnchor: true,
    recordHistory: false,

    //Design
    controlArrows: false,
    verticalCentered: true,
    resize: false,
    sectionsColor: [],
    paddingTop: '0',
    paddingBottom: '0',
    fixedElements: 'header',
    responsiveWidth: 1025,
    responsiveHeight: 721,

    //Custom selectors
    sectionSelector: '.page-section',
    slideSelector: '.slide',

    //events
    afterLoad: function (anchorLink) {
        if (!$('html').is('.safari, .ios, .android')) {
            $('.animate-text').textillate({
                in: {
                    delayScale: 1,
                    delay: 20
                }
            });
        }

        if (anchorLink == 'benefits-page') {
            $('.benefits-list').addClass('animate');
        }

        if (anchorLink == 'about-page') {
            $('.about').addClass('animate');
        }
    },
    afterResize: null,
    afterReBuild: null,
    afterSlideLoad: null,
    onLeave: function (index, nextIndex, direction) {
        if (index == 2 && direction == 'down') {
            if (!$('html').is('.safari, .ios, .android')) {
                $('.animate-text-2').textillate({
                    in: {
                        delayScale: 1,
                        delay: 20,
                        callback: function () {
                            $('.benefits-list').addClass('animate')
                        }
                    }
                });
            }
        }
        if (index == 3 && direction == 'down') {
            $('.about').addClass('animate');
        }
    },
    onSlideLeave: function (anchorLink, index, slideIndex, direction, nextSlideIndex) {
        if (nextSlideIndex == 1 && direction == 'right') {

        }
    }
});

$(document).on('click', '.slide-right', function () {
    $.fn.fullpage.moveSlideRight();
});

$(document).on('click', '.slide-left', function () {
    $.fn.fullpage.moveSlideLeft();
});
/* end of page section scroll*/

/*chart*/

/*
var randomScalingFactor = function () {
    return Math.round(Math.random() * 70)
};
var dataA = {
    labels: ["Январь 2015", "Февраль 2015", "Март 2015", "Апрель 2015", "Май 2015", "Июнь 2015", "Июль 2015", "Август 2015", "Сентябрь 2015", "Октябрь 2015", "Ноябрь 2015", "Декабрь 2015","Январь 2016", "Февраль 2016", "Март 2016"],
    datasets: [
        {
            label: "За месяц",
            fillColor: "rgba(166,107,179,0.2)",
            strokeColor: "rgba(166,107,179,1)",
            pointColor: "#A66BB3",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(166,107,179,1)",
            data: [12.42, -3.61, 6.68, 16.98, 4.02, 3.95, 4.49, 12.41, -10.87, 17.01, -10.24, 6.43, 15.22, 3.47, -7.54]
        }
    ]

};
var dataB = {
    labels: ["Январь 2015", "Февраль 2015", "Март 2015", "Апрель 2015", "Май 2015", "Июнь 2015", "Июль 2015", "Август 2015", "Сентябрь 2015", "Октябрь 2015", "Ноябрь 2015", "Декабрь 2015","Январь 2016", "Февраль 2016", "Март 2016"],
    datasets: [
        {
            label: "За месяц",
            fillColor: "rgba(166,107,179,0.2)",
            strokeColor: "rgba(166,107,179,1)",
            pointColor: "#A66BB3",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(166,107,179,1)",
            data: [12.42, -3.61, 6.68, 16.98, 4.02, 3.95, 4.49, 12.41, -10.87, 17.01, -10.24, 6.43, 15.22, 3.47, -7.54]
        },
        {
            label: "После 30% комиссии	",
            fillColor: "rgba(165,161,166,0.2)",
            strokeColor: "rgba(165,161,166,1)",
            pointColor: "#A5A1A6",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(165,161,166,1)",
            data: [8.69, -3.61, 4.68, 11.89, 2.81, 2.77, 3.14, 8.69, -10.87, 15.17, -10.24, 6.43, 11.80, 2.43, -7.54]        }
    ]

};
var dataC = {
    labels: ["Январь 2015", "Февраль 2015", "Март 2015", "Апрель 2015", "Май 2015", "Июнь 2015", "Июль 2015", "Август 2015", "Сентябрь 2015", "Октябрь 2015", "Ноябрь 2015", "Декабрь 2015","Январь 2016", "Февраль 2016", "Март 2016"],
    datasets: [
        {
            label: "Ноль",
            scaleLineWidth: 0,
            fillColor: "rgba(166,107,179,0)",
            strokeColor: "rgba(255,0,0,1)",
            pointColor: "rgba(255,0,0,0)",
            pointStrokeColor: "rgba(255,0,0,0)",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(166,107,179,1)",
            data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        },
        {
            label: "За месяц",
            fillColor: "rgba(166,107,179,0)",
            strokeColor: "rgba(166,107,179,1)",
            pointColor: "#A66BB3",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(166,107,179,1)",
            data: [12.42, -3.61, 6.68, 16.98, 4.02, 3.95, 4.49, 12.41, -10.87, 17.01, -10.24, 6.43, 15.22, 3.47, -7.54]
        },
        {
            label: "После 30% комиссии",
            fillColor: "rgba(165,161,166,0)",
            strokeColor: "rgba(165,161,166,1)",
            pointColor: "#A5A1A6",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(165,161,166,1)",
            data: [8.69, -3.61, 4.68, 11.89, 2.81, 2.77, 3.14, 8.69, -10.87, 15.17, -10.24, 6.43, 11.80, 2.43, -7.54]
        },
        {
            label: "В долларах",
            fillColor: "rgba(31,20,34,0)",
            strokeColor: "rgba(31,20,34,0.3)",
            pointColor: "#1F1422",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(31,20,34,1)",
            data: [-9.38, 5.12, 12.63, 24.86, 3.54, -5.24, -3.78, -2.53, -10.53, 18.50, -12.76, -3.28, 8.39, 2.54, 2.70]
        }
    ]

};


$(function(){
    var myLineChart = document.getElementById("canvas").getContext("2d");
    window.myLine = new Chart(myLineChart).Bar(dataA, {
        responsive: true
    });

    $(document).on('click', '.chart-a', function () {
        window.myLine = new Chart(myLineChart).Bar(dataA, {
            responsive: true
        });
    });

    $(document).on('click', '.chart-b', function () {
        window.myLine = new Chart(myLineChart).Bar(dataB, {
            responsive: true
        });
    });

    $(document).on('click', '.chart-c', function () {
        window.myLine = new Chart(myLineChart).Bar(dataC, {
            responsive: true
        });
    });
});
*/
/* end of chart*/
