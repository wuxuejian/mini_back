(function($) {
    $.showToast = function(options) {
        var dft = {
            title: "",
            duration: 1500
        };
        var ops = $.extend(dft, options || {});
        var box = $("<div>").css({
            "padding-left": '25px',
            "padding-right": '25px',
            "padding-top": '10px',
            "padding-bottom": '10px',
            "border-radius": "10px",
            "position": "fixed",
            "left": "50%",
            "top": "50%",
            "background-color": '#444444',
            "color": '#ffffff',
            "font-size": '16px',
            "z-index": 999
        }).html(ops.title).appendTo($("body"));
        box.css({
            "margin-left": -(box.outerWidth(true) / 2),
            "margin-top": -box.outerHeight(true) / 2
        });
        setTimeout(function() {
            box.remove();
        }, ops.duration);
    };
    $.showLoading = function(options) {
        var dft = {
            title: "",
            loading: 'true'
        };
        var ops = $.extend(dft, options || {});
        if (ops.loading) {
            var box = $("<div id='showLoading'>").css({
                "padding-left": '25px',
                "padding-right": '25px',
                "padding-top": '10px',
                "padding-bottom": '10px',
                "border-radius": "10px",
                "position": "fixed",
                "left": "50%",
                "top": "50%",
                "background-color": '#444444',
                "color": '#ffffff',
                "font-size": '16px',
                "z-index": 999,
            }).html(ops.title).appendTo($("body"));
            box.css({
                "margin-left": -(box.outerWidth(true) / 2),
                "margin-top": -(box.outerHeight(true) / 2)
            });
        } else {
            $("#showLoading").remove();
        }
    }

    $.hideLoading = function() {
        $.showLoading({
            "loading": false
        });
    }

})(jQuery);
