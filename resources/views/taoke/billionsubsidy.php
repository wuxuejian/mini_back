<?php ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
        name="App-Config"
        content="fullscreen=yes,useHistoryState=yes,transition=yes"
    />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="yes" name="apple-touch-fullscreen" />
    <meta content="telephone=no,email=no" name="format-detection" />
    <meta
        name="viewport"
        content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover"
    />

    <link rel="stylesheet" href="/assets/css/message.css">
    <script type='text/javascript' src='/assets/js/message.min.js' id='message'></script>


    <script
        type="text/javascript"
        src="https://public.ffquan.cn/lib/jquery-1.12.4.min.js"
    ></script>
    <script
        type="text/javascript"
        src="https://cdn.staticfile.org/vue/2.6.11/vue.min.js"
    ></script>
    <script
        type="text/javascript"
        src="https://public.ffquan.cn/lib/vue-lazyload.js"
    ></script>
    <script
        type="text/javascript"
        src="https://public.ffquan.cn/lib/swiper/js/swiper.min.js"
    ></script>
    <script
        type="text/javascript"
        src="https://public.ffquan.cn/lib/clipboard.min.js"
    ></script>
    <script
        type="text/javascript"
        src="https://p1static.dataoke.com/web/js/layer/layer.js?t=202104191256"
    ></script>

    <title>百亿补贴</title>
    <!--webview与app通信-->
    <!-- uni 的 SDK -->
    <!-- 需要把 uni.webview.1.5.4.js 下载到自己的服务器 -->
    <script type="text/javascript" src="/assets/js/qqjssdk-1.0.0.js"></script>
    <script type="text/javascript" src="/assets/js/jweixin-1.4.0.js"></script>
    <script type="text/javascript" src="/assets/js/uni-webview-js@0.0.3.js"></script>
    <script type="text/javascript">
        // 待触发 `UniAppJSBridgeReady` 事件后，即可调用 uni 的 API。
        document.addEventListener('UniAppJSBridgeReady', function() {
            console.log('=====================uni.postMessage开始=====================')
        });
    </script>
    <!--webview与app通信结束-->
    <script>
        function isWxClient(){var ua=window.navigator.userAgent.toLowerCase();if(ua.match(/qq/i)=="qq" || ua.match(/MicroMessenger/i)=="micromessenger"||ua.match(/miniProgram/i)=="miniprogramenv/windows"||ua.match(/miniProgram/i)=="miniprogramenv/mac"){return true}else{return false}};
        function isUniApp(){var ua=window.navigator.userAgent.toLowerCase();if(ua.match(/uni-app/i)=="uni-app"){return true;}else{return false;}}
        function isIos(){var ua=window.navigator.userAgent.toLowerCase();if(ua.match(/ipod/i)=="ipod" || ua.match(/iphone/i)=="iphone" || ua.match(/ipad/i)=="ipad"){return true;}else{return false;}}

        function isFrame(){ if (window.frames.length != parent.frames.length) { return true; }else{return false;}}

        var isApp = isUniApp();
        var isWx = isWxClient();
        var isIos = isIos();
        var isH5 = isFrame();
        //     Qmsg.warning('右上角浏览器内打开',{
        //         html:true
        //     })
        var _config = {
            appKey: '<?php echo $dataoke_appkey; ?>', //此处替换成用户appKey
            // 需要自行接入点击商品后的逻辑 （非必填）
            jumpGoodsUrl: function (items) {   // 替换为详细页面的地址或转链逻辑
                // window.open('https://xxxx&gid=' + items.goodsid);
                console.log(JSON.stringify(items));
                // 0: 未知 1: 淘宝 2：天猫
                var platform = 0;

                if(items.istmall){
                    if(items.istmall == 0){
                        platform = 1;
                    }else if(items.istmall == 1){
                        platform = 2;
                    }
                }


                if(isH5){
                    //window.open('<?php //echo $h5_home . '/#/pages/shop/goods-details/goods-details?'; ?>//' + 'dtk_id=' + items.id
                    //    + '&tk_goodsid=' + items.goodsId + '&tk_platform=' + platform);
                }else{
                    // uni.postMessage({
                    //     data: {
                    //         action: 'toShopGoods',
                    //         goodsid: items.goodsid,
                    //         platform: platform,
                    //         id: items.id
                    //     }
                    // });
                    // if(isWx){
                    //     uni.navigateBack();
                    // }
                }


                return false;
            }
        };
    </script>
    <style>
        a,
        abbr,
        acronym,
        address,
        applet,
        article,
        aside,
        audio,
        b,
        big,
        blockquote,
        body,
        canvas,
        caption,
        center,
        cite,
        code,
        dd,
        del,
        details,
        dfn,
        div,
        dl,
        dt,
        em,
        embed,
        fieldset,
        figcaption,
        figure,
        footer,
        form,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        header,
        hgroup,
        html,
        i,
        iframe,
        img,
        ins,
        kbd,
        label,
        legend,
        li,
        mark,
        menu,
        nav,
        object,
        ol,
        output,
        p,
        pre,
        q,
        ruby,
        s,
        samp,
        section,
        small,
        span,
        strike,
        strong,
        sub,
        summary,
        sup,
        table,
        tbody,
        td,
        tfoot,
        th,
        thead,
        time,
        tr,
        tt,
        u,
        ul,
        var,
        video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
            -webkit-tap-highlight-color: transparent;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            tap-highlight-color: transparent;
            box-sizing: border-box;
        }
        article,
        aside,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        menu,
        nav,
        section {
            display: block;
        }
        html {
            font-family: Arial, PingFang SC, -apple-system, BlinkMacSystemFont,
            Segoe UI, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica,
            sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
        }
        ol,
        ul {
            list-style: none;
        }
        blockquote,
        q {
            quotes: none;
        }
        blockquote:after,
        blockquote:before,
        q:after,
        q:before {
            content: '';
            content: none;
        }
        #appMain {
            position: relative;
            margin: auto;
            font-size: 0.28rem;
            font-family: PingFangSC-Regular;
            z-index: 1;
            overflow: hidden;
        }
        .bybt-layout {
            min-height: 100vh;
            width: 100%;
            background: #f5f5f5;
            text-align: center;
        }
        .bybt-layout .banner {
            background: url('https://sr.ffquan.cn/dtk_yunying/20210730/c41pb1v6vrk9djn36m000.png')
            no-repeat center top #f52157;
            background-size: 100% auto;
            width: 100%;
            text-align: center;
            padding-top: 2.56rem;
        }
        .goodslist {
            width: 100%;
            padding: 0.24rem 0.25rem 0.1rem;
            margin: 0;
        }
        .goodslist .list {
            width: 100%;
            background: #fff;
            border-radius: 0.08rem;
            overflow: hidden;
            display: flex;
            margin-bottom: 0.25rem;
        }
        .goodslist .list .pic {
            width: 2.72rem;
            height: 2.72rem;
        }
        .goodslist .list .pic img {
            width: 100%;
            display: block;
        }
        .goodslist .list .center {
            width: calc(100% - 2.89rem);
            position: relative;
            z-index: 0;
            margin-left: 0.17rem;
            padding-top: 0.18rem;
            text-align: left;
        }
        .goodslist .list .center h4 {
            height: 0.37rem;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            font-size: 0.26rem;
            font-family: PingFangSC-Regular, PingFang SC;
            font-weight: 400;
            color: #17233d;
            line-height: 0.37rem;
            margin-bottom: 0.16rem;
        }
        .goodslist .list .center h4 img {
            width: 0.24rem;
            height: 0.24rem;
            position: relative;
            top: 0.02rem;
            margin-right: 0.1rem;
        }
        .goodslist .list .center .tag {
            height: 0.32rem;
            margin-bottom: 0.24rem;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .goodslist .list .center .tag span {
            height: 0.3rem;
            display: inline-block;
            padding: 0 0.1rem;
            background: #fff2ed;
            border: 1px solid #ffccba;
            border-radius: 0.03rem;
            font-family: PingFangSC-Regular;
            font-size: 0.24rem;
            color: #ff4400;
            letter-spacing: 0;
            line-height: 0.32rem;
            text-align: center;
            margin-right: 0.1rem;
        }
        .goodslist .list .center .tag img {
            height: 0.3rem;
            display: inline-block;
            margin-right: 0.1rem;
        }
        .goodslist .list .center .coupon {
            height: 0.33rem;
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }
        .goodslist .list .center .coupon span {
            /* width: 0.94rem;
            height: 0.32rem; */
            /* width: 1.45rem; */
            display: block;
            float: left;
            /* padding-left: 0.3rem; */
            font-family: PingFangSC-Regular;
            font-size: 0.24rem;
            color: #333;
            letter-spacing: 0;
            line-height: 0.32rem;
            text-align: center;
        }
        .goodslist .list .center .coupon .border {
            width: 0.02rem;
            height: 0.24rem;
            float: left;
            margin: 0 0.24rem;
            background: #d8d8d8;
        }

        .goodslist .list .center .btns {
            position: absolute;
            bottom: 0.22rem;
            left: 0;
            z-index: 10;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
        }

        .goodslist .list .center .btns .sales {
            color: #17233d;
            font-size: 0.24rem;
            line-height: 0.33rem;
            padding-top: 0.11rem;
        }
        .goodslist .list .center .btns .sales span {
            color: #808695;
        }
        .goodslist .list .center .btns .ml {
            color: #ff4443;
            font-size: 0.26rem;
            line-height: 0.37rem;
            padding-top: 0.21rem;
            white-space: nowrap;
        }
        .goodslist .list .center .btns .ml b {
            margin-left: 0.04rem;
            font-size: 0.4rem;
            font-family: Arial-BoldMT;
        }
        .goodslist .list .center .btns .ml small {
            font-size: 0.22rem;
            font-family: PingFangSC-Semibold;
        }
        .goodslist .list .center .btns .go {
            width: 1.45rem;
            height: 0.66rem;
            line-height: 0.66rem;
            background: #ffd676;
            border-radius: 1rem 0px 0px 1rem;
            color: #8f2121;
            font-size: 0.28rem;
            font-weight: bold;
            font-family: PingFangSC-Medium;
            text-align: left;
            text-indent: 0.28rem;
        }

        .loading {
            line-height: 1rem;
            text-align: center;
            font-size: 0.3rem;
            color: #999;
        }
        .sys {
            width: 100%;
            height: 100vh;
            position: fixed;
            z-index: 9999999;
            background: rgba(0, 0, 0, 0.6)
            url('https://sr.ffquan.cn/dtk_yunying/20210803/c44albf6vrkd4bd59itg0.png')
            center center no-repeat;
            background-size: 2.4rem auto;
        }
        #shareID {
            position: fixed;
            left: 0;
            bottom: 0;
            z-index: 500;
            background: transparent;
            padding: 0.13rem 0;
            width: 100%;
        }
        #shareID a {
            display: block;
            height: 0.8rem;
            margin: 0 0.56rem;
            box-sizing: content-box;
            border: 0.06rem solid #ffffff;
            border-radius: 0.43rem;
            line-height: 0.8rem;
            background: #ff6a37;
            text-align: center;
            color: #ffeddf;
            font-size: 0.32rem;
            font-family: PingFangSC-Semibold;
        }

        .back_home {
            width: 30px;
            height: 30px;
            position: fixed;
            right: 0.3rem;
            bottom: 1.2rem;
            border-radius: 50%;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .back_home img {
            width: 15px;
            height: 15px;
        }
    </style>
</head>

<body>
<script
    type="text/javascript"
    src="https://public.ffquan.cn/lib/taobaoCode/taobaoCode.js?v=1.3.2"
></script>
<div id="appMain">
    <div v-if="sys == null" class="sys"></div>

    <div class="bybt-layout">
        <div class="banner"></div>
        <div class="goodslist">
            <div
                v-for="(item, index) in goodsList1"
                :key="index"
                class="list"
                :id="'goodsList'+index"
            >
                <div class="pic"><img :src="imgFomate(item.pictUrl)" /></div>
                <div class="center">
                    <h4>
                        <img
                            src="https://sr.ffquan.cn/dtk_yunying/20210730/c41pb7v6vrk9djn36m0g0.png"
                            alt=""
                        />{{item.title}}
                    </h4>
                    <div class="tag">
                        <img
                            v-for="(item_tag, index) in item.bybtInfo.bybtItemTags"
                            :src="item_tag"
                            alt=""
                        />
                    </div>
                    <div class="coupon">
                        <span>已补贴{{item.bybtInfo.bybtCouponAmount || 0}}元</span>
                        <div class="border"></div>
                        <span
                        >已售{{digitalAbbNumber({ num: item.volume, unit:
                                    '万'})}}件</span
                        >
                    </div>

                    <div class="btns">
                        <div>
                            <div class="ml">
                                补贴抢购价 ¥<b
                                >{{item.bybtInfo.bybtShowPrice.split('.')[0]}}</b
                                ><small v-if="item.bybtInfo.bybtShowPrice.split('.')[1]"
                                >.{{item.bybtInfo.bybtShowPrice.split('.')[1]}}</small
                                >
                            </div>
                        </div>
                        <div class="go">去抢购</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="share" id="shareID"><a>立即分享</a></div>
    <div ref="reference" class="loading">加载中...</div>

    <div class="back_home" v-if="scrollTop>=230" @click="back_home">
        <img
            src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADEAAAAwCAYAAAC4wJK5AAACs0lEQVRoQ+3ZTYhOURzH8e9vYWFnqcTGQsnaxmJY2WFD3kkk8pKXRFIGpSkJk5KSlBRjIkqkiNSUUoqNTCmhFClJKfXT0X007pznuc9zn3Onmeme3XNfzvl/7jnn/s+5j5gERZPAwF+E7R3AOmB+hno8jnGLgLfAoKRDIU7ZPgYcGcdBtwrtjqSlAfETmDpBESHsBQFxBtg9QRFPJfU05sRxYAMwcwTmzTiEzcli+gHcBPZL+lrZ28n2UaAHWAj0Sgq/KymVIJq8LAYkrahCkRxh+wRwuEmwlUCSImyfBA4WPO3kkGQI233AgTaHS1JIEoTtU8C+NgGNy5JBukbYPg3s6RCQFNIVwvZZYFcE8BqYlzs+ACyPXNt1j5RG2O4HwsIxX15mPZNfRPYCc6uAlELYPg9sjwBeAGuB6cAoREh4tm+khnSMsH0B2BoBPAfWSBq2HbJ0FBHuSw3pCGH7IrAlAhjKAO+yIFsiUkPaRti+BGyKAJ5lgPeNc0U9MeK6JEOrLYTty8DGCOBJBvg48ly7iFQ9UoiwfQVYHwE8AlZL+pw/1wkiBaQlwvbV8KQjgIcZ4EssyXWK6BbSFGH7GrAqEuSDcFzSt2ZZugyiG0gUYfs6EFv738sA31stM8oiykJGIWzvBM5FgrwLrJQUPiy0LN0gCiDRHWIMcQtYlovydgb4VQRoN08U1dMkIX6SNCN/bwyR3xcMZoDfRQ13mieK6otA+iWNWnDGELOy3dk2IHxh65PkogbL5omiem3vBcIQfyVpSez6wjxR1EiqV2yZdhr31IjUeaJsb9Q9UfdE2bETua8eTvVwqofT/0+gnhP1nKjnxNjMidnAcO5hb5YUvl0lL5VM7Gx3dx9Y/G+5LFXWVmUV256W/XM6BRiS9CF5F2QVVoaoKuAx29mNJSC09QfRuW93lvvKnQAAAABJRU5ErkJggg=="
            alt=""
        />
    </div>
</div>
</body>
</html>

<script>
    (function () {
        var size =
            document.body.clientWidth || document.documentElement.clientWidth;
        document.documentElement.style.fontSize =
            (size > 750 ? 750 : size) / 7.5 + 'px';
    })();

    Vue.use(VueLazyload, {
        preLoad: 1.3, //
        error: 'https://sr.ffquan.cn/cms_pic/20200622/bro7s7f6vrkd3jat4ujg0.png',
        loading: 'https://sr.ffquan.cn/cms_pic/20200612/brhjkf76vrkcrfpi79eg0.png',
        attempt: 1,
    });
    new Vue({
        el: '#appMain',
        data: {
            sys: false,
            time: '',
            goodsList1: [],
            loading: false,
            linkKZL: '',
            scrollTop: 0,
            canScroll: false,
            loadData: false,
            nowPage: 1,
        },
        methods: {
            isStart(item) {
                if (this.getTime(item.activityStartTime) >= new Date()) {
                    layer.msg('抢购暂未开始');
                    return false;
                }
            },
            back_home() {
                $(document).scrollTop(0);
            },
            digitalAbbNumber: function ({ num = 0, unit }) {
                var param = {};
                var k = 10000,
                    sizes = ['', '万', '亿', '万亿'],
                    i;
                if (num < k) {
                    return num;
                } else {
                    i = Math.floor(Math.log(num) / Math.log(k));
                    param.value = parseFloat((num / Math.pow(k, i)).toFixed(1));
                    param.unit = sizes[i];
                }
                return param.value + (unit || param.unit);
            },
            getTime: function (time) {
                var newTime = new Date(time.replace(/-/g, '/'));
                return newTime;
            },
            handleClipboard: function (event, res, isGoods, text) {
                var _this = this;
                // console.log(event, res, isGoods, text);
                if (event.getAttribute('isCopy')) {
                    return false;
                }
                event.setAttribute('isCopy', true);
                // @ts-ignore
                var clipboardImg = new window.ClipboardJS(event, {
                    text: function (trigger)  {
                        return text || _this.handleChange(res, isGoods);
                    },
                });
                clipboardImg.on('success', function (e) {
                    layer.msg(
                        text ? '复制成功，快分享给小伙伴吧~' : '口令复制成功，打开手淘抢购'
                    );
                    e.clearSelection();
                });

                clipboardImg.on('error', function (e) {
                    layer.msg('口令复制失败，请联系推择者');
                });
            },

            // 活动专链接
            handleChange: function (res, isGoods) {
                // 普通商品转连逻辑
                var _this = this;
                var result = '';

                $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/api/tb/activity/promote/bybt/tkl',
                    // url: 'https://dtkapi.buydance.com/dtk_java_views_api/api/tb/activity/promote/bybt/tkl',
                    type: 'get',
                    data: {
                        itemId: res.itemId,
                        appKey: _config.appKey,
                    },
                    async: false,
                }).done(function (res) {
                    // const {
                    //   code,
                    //   msg,
                    //   data: { longTpwd },
                    // } = res;

                    var code = res.code ;
                    var msg = res.msg;
                    var longTpwd = res.data.longTpwd;

                    if (code == 200) {
                        result = longTpwd;
                    } else {
                        layer.msg(msg);
                    }
                });
                return result;
            },

            getGoodsList: function (page) {
                var _this = this;
                page = page || 1;

                $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_java_views_api/api/tb/activity/promote/bybt',
                    // url: 'https://dtkapi.buydance.com/dtk_java_views_api/api/tb/activity/promote/bybt',
                    type: 'get',
                    data: {
                        pageId: page,
                        pageSize: 20,
                        appKey: _config.appKey,
                    },
                }).done(function (res) {
                    // var {
                    //   code,
                    //   data: { kzWebsite, list, pageId, sys },
                    // } = res;
                    var code = res.code ;
                    var kzWebsite = res.data.kzWebsite;
                    var list = res.data.list;
                    var pageId = res.data.pageId;
                    var sys = res.data.sys;
                    if (code != 200) {
                        _this.sys = null;
                        return;
                    }

                    _this.time = res.time;
                    _this.sys = sys || null;
                    _this.linkKZ = kzWebsite;

                    if (_this.loadData == true) {
                        res.data
                            ? (_this.goodsList1 = _this.goodsList1.concat(res.data.list))
                            : '';
                    } else {
                        res.data ? (_this.goodsList1 = res.data.list) : '';
                    }

                    _this.loadData = false;
                    if (res.data && res.data.list.length != 0) {
                        _this.canScroll = true;
                    }

                    setTimeout(function () {
                        for (var i = 0; i < _this.goodsList1.length; i++) {
                            _this.handleClipboard(
                                document.getElementById('goodsList' + i),
                                _this.goodsList1[i],
                                true
                            );
                        }

                        if (code == 200) {
                            $.ajax({
                                url: 'https://dtkapi.ffquan.cn/taobaoapi/kz-create-short',
                                // url: 'http://dtkapi.buydance.com/taobaoapi/kz-create-short',
                                type: 'get',
                                data: {
                                    url: _this.linkKZ + '#/bybt?app_key='+_config.appKey,
                                },
                            }).done(function (res) {
                                _this.handleClipboard(
                                    document.getElementById('shareID'),
                                    {},
                                    false,
                                    '聚划算发补贴福利了，大牌正品，买贵必陪，小伙伴们快来抢购吧~'+res.data
                                );
                            });
                        }
                    }, 500);
                });
            },

            scrollLoad: function () {
                //
                var _this = this;
                var range = 70; //距下边界长度/单位px
                var totalheight = 0;
                $(window).scroll(function () {
                    var srollPos = $(window).scrollTop(); //滚动条距顶部距离(页面超出窗口的高度)
                    totalheight = parseFloat($(window).height()) + parseFloat(srollPos);
                    if ($(document).height() - range <= totalheight) {
                        if (_this.canScroll) {
                            _this.nowPage++;
                            _this.canScroll = false;
                            _this.loadData = true;
                            _this.getGoodsList(_this.nowPage);
                        }
                    }
                });
            },
            imgFomate: function (img) {
                if (img.indexOf('http') != '-1') {
                    return img;
                } else {
                    return 'https:' + img;
                }
            },
        },
        mounted: function () {
            var _this = this;

            _this.getGoodsList();
            _this.scrollLoad();
            window.onscroll = function () {
                _this.scrollTop =
                    document.documentElement.scrollTop || document.body.scrollTop;
            };
        },
    });
</script>

