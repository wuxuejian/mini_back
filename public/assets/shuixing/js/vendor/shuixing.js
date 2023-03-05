$(function () {

    // viewer
    $('#image').viewer();
    // View a list of images
    $('#images').viewer();
    // Get the Viewer.js instance after initialized
    // var viewer = $image.data('viewer');

    //搜索
    $('#keyword').bind('keyup', function (event) {
        if (event.keyCode == "13") {
            var keyword = search.keyword.value;
            window.location.href = "/search/0/" + keyword;
        }
    });
    $("form").submit(function (e) {
        var keyword = search.keyword.value;
        window.location.href = "/search/0/" + keyword;
    });

});

//退出登录
function logOut() {
    localStorage.removeItem("userinfo");
    $('#userinfo').toggleClass("display-none");
    $('body').removeClass("canvas-opened");
    $.showToast({
        "title": "操作成功",
        "duration": 1500,
    });
};

//测试操作
function textCS() {
    console.log("来了来了！");
}

console.log('\n' + ' %c MiniSNS® %c https://mini.chongyeapp.com ' + '\n', 'color: #ffffff; background: #5869DA; padding:5px 0; font-size:18px;', 'background: #5869DA; padding:5px 0; font-size:18px;');



