(function (a) {
    var d = a(".main-wrapper");
    var b = a(".page-wrapper");
    var c = a(".slimscroll");
    var g = function () {
        this.$menuItem = a("#sidebar-menu a")
    };

    function f() {
        var i = g;
        a("#sidebar-menu a").on("click", function (j) {
            if (a(this).parent().hasClass("submenu")) {
                j.preventDefault()
            }
            if (!a(this).hasClass("subdrop")) {
                a("ul", a(this).parents("ul:first")).slideUp(350);
                a("a", a(this).parents("ul:first")).removeClass("subdrop");
                a(this).next("ul").slideDown(350);
                a(this).addClass("subdrop")
            } else {
                if (a(this).hasClass("subdrop")) {
                    a(this).removeClass("subdrop");
                    a(this).next("ul").slideUp(350)
                }
            }
        });
        a("#sidebar-menu ul li.submenu a.active").parents("li:last").children("a:first").addClass("active").trigger("click")
    }

    f();
    a("body").append('<div class="sidebar-overlay"></div>');
    a(document).on("click", "#mobile_btn", function () {
        d.toggleClass("slide-nav");
        a(".sidebar-overlay").toggleClass("opened");
        a("html").addClass("menu-opened");
        return false
    });
    a(".sidebar-overlay").on("click", function () {
        d.removeClass("slide-nav");
        a(".sidebar-overlay").removeClass("opened");
        a("html").removeClass("menu-opened")
    });
    if (a(".page-wrapper").length > 0) {
        var e = a(window).height();
        a(".page-wrapper").css("min-height", e)
    }
    a(window).resize(function () {
        if (a(".page-wrapper").length > 0) {
            var i = a(window).height();
            a(".page-wrapper").css("min-height", i)
        }
    });
    if (a(".select").length > 0) {
        a(".select").select2({minimumResultsForSearch: -1, width: "100%"})
    }
    if (a(".datetimepicker").length > 0) {
        a(".datetimepicker").datetimepicker({
            format: "DD-MM-YYYY",
            icons: {
                up: "fas fa-angle-up",
                down: "fas fa-angle-down",
                next: "fas fa-angle-right",
                previous: "fas fa-angle-left"
            }
        });
        a(".datetimepicker").on("dp.show", function () {
            a(this).closest(".table-responsive").removeClass("table-responsive").addClass("temp")
        }).on("dp.hide", function () {
            a(this).closest(".temp").addClass("table-responsive").removeClass("temp")
        })
    }
    if (a('[data-toggle="tooltip"]').length > 0) {
        a('[data-toggle="tooltip"]').tooltip()
    }
    if (a(".datatable").length > 0) {
        a(".datatable").DataTable({bFilter: false,})
    }
    a(document).on("click", "#check_all", function () {
        a(".checkmail").click();
        return false
    });
    if (a(".checkmail").length > 0) {
        a(".checkmail").each(function () {
            a(this).on("click", function () {
                if (a(this).closest("tr").hasClass("checked")) {
                    a(this).closest("tr").removeClass("checked")
                } else {
                    a(this).closest("tr").addClass("checked")
                }
            })
        })
    }
    a(document).on("click", ".mail-important", function () {
        a(this).find("i.fa").toggleClass("fa-star").toggleClass("fa-star-o")
    });
    if (a(".summernote").length > 0) {
        a(".summernote").summernote({height: 200, minHeight: null, maxHeight: null, focus: false})
    }
    if (c.length > 0) {
        c.slimScroll({
            height: "auto",
            width: "100%",
            position: "right",
            size: "7px",
            color: "#ccc",
            allowPageScroll: false,
            wheelStep: 10,
            touchScrollStep: 100
        });
        var h = a(window).height() - 60;
        c.height(h);
        a(".sidebar .slimScrollDiv").height(h);
        a(window).resize(function () {
            var i = a(window).height() - 60;
            c.height(i);
            a(".sidebar .slimScrollDiv").height(i)
        })
    }
    a(document).on("click", "#toggle_btn", function () {
        if (a("body").hasClass("mini-sidebar")) {
            a("body").removeClass("mini-sidebar");
            a(".subdrop + ul").slideDown()
        } else {
            a("body").addClass("mini-sidebar");
            a(".subdrop + ul").slideUp()
        }
        setTimeout(function () {
            mA.redraw();
            mL.redraw()
        }, 300);
        return false
    });
    a(document).on("mouseover", function (i) {
        i.stopPropagation();
        if (a("body").hasClass("mini-sidebar") && a("#toggle_btn").is(":visible")) {
            var j = a(i.target).closest(".sidebar").length;
            if (j) {
                a("body").addClass("expand-menu");
                a(".subdrop + ul").slideDown()
            } else {
                a("body").removeClass("expand-menu");
                a(".subdrop + ul").slideUp()
            }
            return false
        }
    })
})(jQuery);