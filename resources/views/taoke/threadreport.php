<?php
?>
<!--
 * @Author: your name
 * @Date: 2021-02-26 14:25:42
 * @LastEditTime: 2021-06-17 10:56:43
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /www/dtk_static_www_user_center/html/单页html/首页.html
-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="App-Config" content="fullscreen=yes,useHistoryState=yes,transition=yes">
    <meta name="viewport"
          content="width=device-width,user-scalable=no,initial-scale=0.5,maximum-scale=0.5,minimum-scale=0.5,viewport-fit=cover">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta content="telephone=no,email=no" name="format-detection">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/vant@2.12/lib/index.css" />
    <script type="text/javascript" src="https://public.ffquan.cn/lib/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vant@2.12/lib/vant.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/vue-lazyload.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/swiper/js/swiper.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/taobaoCode/taobaoCode.js?v=1.2.1"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/clipboard.min.js"></script>
    <title>线报中心</title>
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
        var _config = {
            appKey: '<?php echo $dataoke_appkey; ?>',//此处替换成用户appKey
            // 需要自行接入点击商品后的逻辑 （非必填）
            jumpGoodsUrl: function (items) {   // 替换为详细页面的地址或转链逻辑

                // 0: 未知 1: 淘宝 2：天猫
                var platform = 0;

                if(items.type){
                    if(items.type == 'tmall'){
                        platform = 1;
                    }else if(items.mallDesc == 'taobao'){
                        platform = 2;
                    }
                }


                if(isH5){
                    window.open('<?php echo $h5_home . '/#/pages/shop/goods-details/goods-details?'; ?>' + 'dtk_id=' + items.itemId
                        + '&tk_goodsid=&tk_platform=' + platform);
                }else{
                    uni.postMessage({
                        data: {
                            action: 'toShopGoods',
                            goodsid: '',
                            platform: platform,
                            id: items.itemId
                        }
                    });
                    if(isWx){
                        uni.navigateBack();
                    }
                }
                return false;
            }
        }
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
            font: inherit;
            vertical-align: baseline;
            -webkit-tap-highlight-color: transparent;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            tap-highlight-color: transparent;
            box-sizing: border-box
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
            display: block
        }

        html {
            font-family: Arial, PingFang SC, -apple-system, BlinkMacSystemFont, Segoe UI, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol
        }

        ol,
        ul {
            list-style: none
        }

        blockquote,
        q {
            quotes: none
        }

        blockquote:after,
        blockquote:before,
        q:after,
        q:before {
            content: "";
            content: none
        }

        .myswiper {
            width: 100%;
            height: 1rem;
            background: #f5f5f5
        }

        .myswiper .list {
            display: inline-block;
            margin-right: 0 !important
        }

        .myswiper .swiper-wrapper,
        .myswiperTwo .swiper-wrapper {
            white-space: nowrap
        }

        .top-off-layout {
            min-height: 100vh;
            width: 100%;
            /* text-align: center; */
            background: #f5f5f5;
            overflow: hidden;
        }

        .top-off-layout .banner {
            width: 100%;
            display: block;
        }

        .myswiper {
            overflow: hidden;
            background: #fff;
            font-size: 0;
        }

        .myswiper .list {
            padding: 0 0.24rem;
            color: #999;
            font-size: 0.28rem;
            line-height: 0.88rem;
        }

        .myswiper .list.active {
            color: #fa6400;
            font-weight: bold;
        }

        .myswiperTwo {
            height: 1rem;
            background: #131415;
            font-size: 0;
        }

        .myswiperTwo>div>div {
            height: 1rem;
        }

        .myswiperTwo .list {
            height: 1rem;
            color: #fff;
            width: 1.35rem;
            text-align: center;
            display: inline-block;
            padding-top: 0.13rem;
        }

        .myswiperTwo .list p {
            color: #fff;
            font-size: 0.26rem;
        }

        .myswiperTwo .list span {
            font-size: 0.22rem;
            color: #999;
        }

        .myswiperTwo .list span img {
            width: 0.24rem;
            top: 0.03rem;
            position: relative;
            z-index: 0;
        }

        .myswiperTwo .list.active {
            background: linear-gradient(180deg, #fd9d00 0%, #fa6400 100%);
            border-radius: 0.1rem;
            position: relative;
            z-index: 0;
        }

        .myswiperTwo .list.active::before {
            content: '';
            width: 0;
            height: 0;
            overflow: hidden;
            display: block;
            position: absolute;
            z-index: 0;
            top: 100%;
            left: 50%;
            margin-left: -0.15rem;
            border-left: 0.15rem solid transparent;
            border-right: 0.15rem solid transparent;
            border-top: 0.15rem solid #fa6400;
        }

        .myswiperTwo .list.active span {
            color: #fff;
        }

        .goodslist {
            margin: 0;
            padding-bottom: 0.1rem;
            display: block;
            position: relative;
        }

        .goodslist .lineBox {
            height: 101%;
            position: absolute;
            top: -0.39rem;
            left: 0.71rem;
            border-right: 0.02rem dashed #f6523a;
        }

        .goodslist .list {
            margin-left: 0.44rem;
            display: flex;
            z-index: 99;
            margin-top: 0.41rem;
        }

        .goodslist .list img {
            width: 0.56rem;
            height: 0.56rem;
            z-index: 66;
        }

        .goodslist .list .listRight {
            text-align: start;
            margin-left: 0.21rem;
        }

        .goodslist .list .listRight .listRight_top {
            font-weight: 500;
            font-size: 0.32rem;
            color: #333333;
            margin-bottom: 0.2rem;
            line-height: 1.7;
        }

        .goodslist .list .listRight .listRight_context {
            width: 4.8rem;
            background: #E5EAF6;
            border-radius: 0.2rem;
        }

        .goodslist .list .listRight .listRight_context .listRight_context_top {
            background: #fff;
            border-radius: 0.2rem;
            padding: 0.2rem;
            box-sizing: border-box;
        }

        .goodslist .list .listRight .listRight_context .listRight_context_bottom {
            height: 0.6rem;
            display: flex;
            justify-content: space-between;
            flex-grow: 1;
        }

        .goodslist .list .listRight .listRight_context .listRight_context_bottom>div {
            font-size: 0.24rem;
            line-height: 0.6rem;
            color: #1E6FFF;
            text-align: center;
            width: 2.66rem;
        }

        .goodslist .list .listRight .listRight_context .listRight_context_bottom .line {
            width: 0.01rem;
            height: 0.32rem;
            background: #D8D8D8;
            margin-top: 0.15rem;
        }

        .goodslist .list .listRight .listRight_context img {
            width: 1.84rem;
            height: 1.84rem;
        }

        .goodslist .list .listRight .listRight_context .title {
            font-size: 0.24rem;
            color: #333333;
        }

        /* .goodslist .list .pic {
      width: 1.86rem;
      height: 1.86rem;
    } */
        /* .goodslist .list .pic img {
      width: 100%;
      display: block;
    }
    .goodslist .list .center {
      width: calc(100% - 1.86rem);
      text-align: left;
      margin-left: 0.26rem;
      position: relative;
      z-index: 0;
      padding-top: 0.1rem;
    }
    .goodslist .list .center h4 {
      text-overflow: ellipsis;
      -webkit-box-orient: vertical;
      -webkit-line-clamp: 2;
      overflow: hidden;
      display: -webkit-box;
      word-wrap: break-word;
      white-space: normal;
      word-break: break-all;
      font-size: 0.26rem;
      font-family: PingFangSC-Regular, PingFang SC;
      font-weight: 400;
      color: #17233d;
      line-height: 0.37rem;
      margin-bottom: 0.1rem;
      height: 0.75rem;
    }

    .goodslist .list .center .coupon {
      display: inline-flex;
      justify-items: center;
      align-items: center;
      background: #ff4f4f;
      color: #fff;
      padding: 0.02rem;
      font-size: 0.3rem;
      border-radius: 0.05rem;
    }
    .goodslist .list .center .coupon span {
      background: #fff;
      height: 0.3rem;
      border-radius: 0.05rem;
      color: #ff4f4f;
      font-size: 0.2rem;
      padding: 0 0.1rem;
    }
    .goodslist .list .center .coupon i {
      font-size: 0.2rem;
      padding: 0 0.05rem;
    }

    .goodslist .list .center .btns {
      position: absolute;
      bottom: 0.1rem;
      left: 0;
      z-index: 10;
      width: 100%;
      display: flex;
      justify-content: space-between;
    }

    .goodslist .list .center .btns .ml {
      line-height: 0.32rem;
      color: #999;
      padding-top: 0.05rem;
    }

    .goodslist .list .center .btns .ml img {
      width: 0.32rem;
    } */
        .time {
            display: inline-flex;
            align-items: center;
        }

        .time::before {
            content: '';
            background: url(https://sr.ffquan.cn/dtk_www/20210414/c1r8kaf6vrke67sn1td00.png) no-repeat;
            background-size: 100% auto;
            width: 0.32rem;
            height: 0.32rem;
            display: inline-block;
        }

        .time i {
            color: #666;
            margin-left: 5px;
        }

        .goodslist .list .center .btns .go {
            width: 1.46rem;
            height: 0.42rem;
            background: #fa6400;
            border-radius: 0.21rem;
            color: #fff;
            text-align: center;
        }

        .share {
            position: fixed;
            left: 0;
            bottom: 0;
            z-index: 500;
            background: #fff;
            border-top: 1px solid #eee;
            padding: 13px 0;
            width: 100%;
        }

        .share a {
            display: block;
            background: #fa6400;
            border-radius: 0.38rem;
            line-height: 0.76rem;
            height: 0.76rem;
            text-align: center;
            color: #fff;
            margin: 0 0.12rem;
            font-size: 0.26rem;
        }

        .fixed,
        .fixedTwo {
            position: fixed;
            top: 0;
            left: 0;
            background: #fff;
            z-index: 999;
        }

        .fixedTwo {
            background: #131415;
        }

        .loading {
            line-height: 1rem;
            text-align: center;
            font-size: .3rem;
            color: #999;
        }

        .van-toast {
            font-size: 30px;
            min-height: 80px;
        }

        .am-modal-mask {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            height: 100%;
            z-index: 999;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .am-modal-wrap {
            position: fixed;
            overflow: auto;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            height: 100%;
            z-index: 999;
            -webkit-overflow-scrolling: touch;
            outline: 0;
            display: -webkit-flex;
            display: flex;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-transform: translateZ(1px);
            transform: translateZ(1px);
        }

        .am-modal {
            position: relative;
        }

        .am-modal-transparent {
            width: 5.4rem;
        }

        .am-modal-content {
            position: relative;
            background-color: #fff;
            border: 0;
            background-clip: padding-box;
            text-align: center;
            height: 100%;
            overflow: hidden;
        }

        .am-modal-transparent .am-modal-content {
            border-radius: 0.14rem;
            padding-top: 0.3rem;
        }

        .am-modal-header {
            padding: 0.12rem 0.3rem 0.3rem;
        }

        .am-modal-title {
            margin: 0;
            font-size: 0.36rem;
            line-height: 1;
            color: #000;
            text-align: center;
        }

        .am-modal-body {
            font-size: 0.3rem;
            color: #888;
            height: 100%;
            line-height: 1.5;
            overflow: auto;
        }

        .am-modal-transparent .am-modal-content .am-modal-body {
            padding: 0 0.3rem 0.3rem;
        }

        .am-modal-button-group-h {
            position: relative;
            border-top: 1PX solid #ddd;
            display: -webkit-flex;
            display: flex;
        }

        .am-modal-button-group-h .am-modal-button {
            -webkit-touch-callout: none;
            -webkit-flex: 1 1;
            flex: 1 1;
            box-sizing: border-box;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #e93b3d;
            font-size: 0.36rem;
            height: 1rem;
            line-height: 1rem;
            display: block;
            width: auto;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .am-modal-button-group-h .am-modal-button:last-child {
            position: relative;
            border-left: 1PX solid #ddd;
        }

        [v-cloak] {
            opacity: 0 !important;
        }

        .back_home {
            width: 60px;
            height: 60px;
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
            width: 30px;
            height: 30px;
        }
    </style>
</head>

<body>
<div id="appMain">
    <div class="top-off-layout">
        <img src="https://sr.ffquan.cn/dtk_www/20210414/c1r4aiv6vrkae65jvbs00.png" class="banner"></img>
        <block class="wrapBox">
            <div class="myswiper" :class="{fixed:scrollTop>=230&&active!=3}">
                <div id="swiperOne"
                     class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode swiper-container-ios">
                    <div class="swiper-wrapper">
                        <div v-for="(item, index) in shopType" :key="index" @click="handleChangeOne(index)"
                             :class="`swiper-slide list swiper-slide-active ${active == index ? 'active' : ''}`"
                             :style="{visibility:item.status == -2 ? 'hidden' : 'visible'}">
                            {{item}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="myswiperTwo"  style="display: none;" :class="{fixedTwo:scrollTop>=430&&active===3}">
                <div id="swiperTwo"
                     class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode swiper-container-ios">
                    <div class="swiper-wrapper">
                        <div @click="handleChangeTwo(index,item)"
                             :class="`swiper-slide list swiper-slide-active ${activeTwo == index ? 'active' : ''}`"
                             v-for="(item, index) in timeList" :key="index">
                            <p>{{item.label}}</p>
                            <span>{{item.status===2?'已开抢':(item.status===3?'开抢中':'未开抢')}}<img v-if="item.status===3"
                                                                                              src="https://sr.ffquan.cn/dtk_www/20210414/c1r80dn6vrke67sn1tag0.png"></img></span>
                        </div>
                    </div>
                </div>
            </div>
        </block>
        <div ref="scrollRef" :style="{height:height + 'px',overflow:'hidden',overflowY:'auto'}"
             :id="'wrapper' + DOMScroll.current">
            <div ref="pullDownEl" :style="{position:'relative',zIndex:50,overflow:'hidden',top:'20vh',height:'0px'}"></div>
            <div class="goodslist" ref="goodslist">
                <div class="lineBox"></div>
                <div class="list" v-for="(item, index) in newsList" :key="'goodsList' + index"
                     :id="'goodsList' + item.itemId">
                    <img src="https://sr.ffquan.cn/dtk_zhonghe/20220214/c84t5q14ol59btokel0g0.png" alt="">
                    <div class="listRight">
                        <div class="listRight_top" v-if="item.updateTime">{{item.updateTime | dataFormat}}</div>
                        <div class="listRight_top" v-else>{{item.createTime | dataFormat}}</div>
                        <div class="listRight_context">
                            <div class="listRight_context_top">
                                <img :src="item.mainPic" v-if="item.mainPic" alt="">
                                <div class="title" v-html="item.title"></div>
                            </div>
                            <div class="listRight_context_bottom">
                                <div @click="copyTkl(item,false,false)" id="copy">复制淘口令</div>
                                <div class="line"></div>
                                <div @click="handleTwd(item,false,true,false,false)">去购买 </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class='pic'><img :src="item.mainPic || 'https://sr.ffquan.cn/dtk_www/20210414/c1r8db76vrke67sn1tb00.png'"></img></div>
                            <div class='center'>
                              <h4>{{item.title}}</h4>
                              <div class='btns'>
                                <div class='ml'><img :src="icon[item.type]" /> <span class='time'> 发布于
                                  <i v-if="item.updateTime">{{item.updateTime | dataFormat}}</i>
                                  <i v-else="item.createTime">{{item.createTime | dataFormat}}</i>
                                </span></div>
                                <div class='go' :id="'goodsList' + index + active + activeTwo">去抢购 > </div>
                              </div>
                            </div> -->
                </div>
                <!-- <div class="loading" v-if="status">
                    {{status==='loading'?'加载中...':'没有更多了'}}
                  </div> -->
            </div>
        </div>
        <div class='share' id="share"><a>立即分享</a></div>
        <div class="back_home" v-if="scrollTop>=230" @click="back_home">
            <img
                src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADEAAAAwCAYAAAC4wJK5AAACs0lEQVRoQ+3ZTYhOURzH8e9vYWFnqcTGQsnaxmJY2WFD3kkk8pKXRFIGpSkJk5KSlBRjIkqkiNSUUoqNTCmhFClJKfXT0X007pznuc9zn3Onmeme3XNfzvl/7jnn/s+5j5gERZPAwF+E7R3AOmB+hno8jnGLgLfAoKRDIU7ZPgYcGcdBtwrtjqSlAfETmDpBESHsBQFxBtg9QRFPJfU05sRxYAMwcwTmzTiEzcli+gHcBPZL+lrZ28n2UaAHWAj0Sgq/KymVIJq8LAYkrahCkRxh+wRwuEmwlUCSImyfBA4WPO3kkGQI233AgTaHS1JIEoTtU8C+NgGNy5JBukbYPg3s6RCQFNIVwvZZYFcE8BqYlzs+ACyPXNt1j5RG2O4HwsIxX15mPZNfRPYCc6uAlELYPg9sjwBeAGuB6cAoREh4tm+khnSMsH0B2BoBPAfWSBq2HbJ0FBHuSw3pCGH7IrAlAhjKAO+yIFsiUkPaRti+BGyKAJ5lgPeNc0U9MeK6JEOrLYTty8DGCOBJBvg48ly7iFQ9UoiwfQVYHwE8AlZL+pw/1wkiBaQlwvbV8KQjgIcZ4EssyXWK6BbSFGH7GrAqEuSDcFzSt2ZZugyiG0gUYfs6EFv738sA31stM8oiykJGIWzvBM5FgrwLrJQUPiy0LN0gCiDRHWIMcQtYlovydgb4VQRoN08U1dMkIX6SNCN/bwyR3xcMZoDfRQ13mieK6otA+iWNWnDGELOy3dk2IHxh65PkogbL5omiem3vBcIQfyVpSez6wjxR1EiqV2yZdhr31IjUeaJsb9Q9UfdE2bETua8eTvVwqofT/0+gnhP1nKjnxNjMidnAcO5hb5YUvl0lL5VM7Gx3dx9Y/G+5LFXWVmUV256W/XM6BRiS9CF5F2QVVoaoKuAx29mNJSC09QfRuW93lvvKnQAAAABJRU5ErkJggg=="
                alt="">
        </div>
    </div>

    <div v-if="isShowAlert" v-cloak>
        <div class="am-modal-mask" @click="isShowAlert = false">
            <div class="am-modal-wrap " role="dialog" aria-labelledby="[object Object]">
                <div role="document" class="am-modal am-modal-transparent">
                    <div class="am-modal-content" v-if="isShowAlert">
                        <div class="am-modal-header">
                            <div class="am-modal-title">
                                <p style="line-height: 50px;">1、领券 <br>2、复制下单口令并下单 <br>3、查看买返红包</p>
                            </div>
                        </div>
                        <div class="am-modal-body">
                            <div class="am-modal-alert-content">
                                <p>商品有超值买返字样才能领红包<br>（活动随时会结束，下单前需确认）</p>
                            </div>
                        </div>
                        <div class="am-modal-footer">
                            <div class="am-modal-button-group-h am-modal-button-group-normal" role="group">
                                <a class="am-modal-button" role="button">先领券</a>
                                <a class="am-modal-button" role="button">再下单</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

<script>
    (function () {
        var size = (document.body.clientWidth || document.documentElement.clientWidth);
        document.documentElement.style.fontSize = (size > 750 ? 750 : size) / 7.5 + 'px';
    })();

    // YYY-MM-DD HH:mm:ss
    function dateFormat(fmt, date) {
        let ret;
        const time = typeof date == 'number' ? new Date(date) : new Date(`${date}`.replace(/-/g, '/'));
        const opt = {
            'Y+': time.getFullYear().toString(), // 年
            'M+': (time.getMonth() + 1).toString(), // 月
            'D+': time.getDate().toString(), // 日
            'H+': time.getHours().toString(), // 时
            'm+': time.getMinutes().toString(), // 分
            's+': time.getSeconds().toString(), // 秒
            // 有其他格式化字符需求可以继续添加，必须转化成字符串
        };

        for (let k in opt) {
            ret = new RegExp('(' + k + ')').exec(fmt);
            if (ret) {
                fmt = fmt.replace(ret[1], ret[1].length == 1 ? opt[k] : opt[k].padStart(ret[1].length, '0'));
            }
        }
        return fmt;
    };

    // 字典
    var type = {
        0: 'news',
        1: 'tmcs',
        2: 'taobao',
        // 3: 'rush',
        3: 'halfPrice',
        4: 'seckill',
    }

    Vue.use(VueLazyload, {
        preLoad: 1.3,//
        error: 'https://sr.ffquan.cn/cms_pic/20200622/bro7s7f6vrkd3jat4ujg0.png',
        loading: 'https://sr.ffquan.cn/cms_pic/20200612/brhjkf76vrkcrfpi79eg0.png',
        attempt: 1
    })
    new Vue({
        el: '#appMain',
        data: {
            active: 0,
            activeTwo: 0,
            loading: false,
            newsList: [],
            // shopType:['天猫','猫超','超值买返','整点抢','半价','秒杀'],
            shopType: ['天猫', '猫超', '淘宝', '半价', '秒杀'],
            scrollTop: 0,
            scrollRef: "",
            height: 'auto',
            DOMScroll: +(new Date()),
            pullDownEl: "",
            Tpwd: "",
            status: '',
            isShowServer: false,
            params: {
                appKey: _config.appKey,
                dataType: 'news',
                pageId: 1,
                pageSize: 10
            },
            timeList: [],
            kzWebsite: '',
            sys: {},
            icon: {
                'jd': 'https://sr.ffquan.cn/dtk_www/20210414/c1r8jkv6vrke67sn1tcg0.png',
                'tmall': 'https://sr.ffquan.cn/dtk_www/20210419/c1ukrbf6vrkephsd2ql00天猫.svg',
                'tb': 'https://p1static.dataoke.com/web/images/tipsection/ico_tb.png',
                'qiang': 'https://p1static.dataoke.com/web/images/tipsection/ico_tb.png',
                'tmcs': 'https://p1static.dataoke.com/web/images/tipsection/ico_tm.png',
            },
            isShowAlert: false
        },
        methods: {
            // 回到顶部
            back_home() {
                $(document).scrollTop(0);
            },
            // 初始化swiper
            initSwiper: function () {
                var swiperConfig = {
                    slidesPerView: 'auto',
                    freeMode: true,
                    paginationClickable: true,
                    observer: true,
                    observeParents: true,
                };
                this.swiperInit = new Swiper(`#swiperOne`, swiperConfig);
                this.swiperInitTwo = new Swiper(`#swiperTwo`, swiperConfig);
            },
            handleChangeOne: function (key, event) {
                this.newsList = []
                $(document).scrollTop(0); // 滚动归0
                var _this = this;
                this.active = key;
                this.swiperInit.slideTo(key, 600, false);
                this.params = {
                    appKey: _config.appKey,
                    dataType: type[key],
                    dataSource: 'dktPlatform',
                    pageId: 1,
                    pageSize: 10
                }
                this.getGoodsList(this.params)
            },
            // 数据获取
            getGoodsList: function (params, then) {
                var _this = this;
                var pageId = params.pageId
                // 正式 http://bx.ffquan.cn/api/tipOff/informer/data
                // 测试 http://view.haojiequ.com/api/tipOff/informer/data

                $.ajax({
                    url: 'https://dtkapi.ffquan.cn/dtk_java_views_api/api/tipOff/informer/data',
                    type: "get",
                    data: params,
                }).done(function (res) {
                    _this.status = 'loading'
                    var data = res.data
                    var list = data.list.reverse()
                    var totalNum = data.totalNum
                    if (_this.timeList.length === 0 && params.dataType === 'rush') _this.timeList = data.timeList
                    if (!_this.kzWebsite) _this.kzWebsite = data.kzWebsite
                    if (!Object.keys(_this.sys).length) _this.sys = data.sys


                    if (pageId == 1) {
                        _this.newsList = list
                    } else {
                        _this.newsList = list.concat(_this.newsList)
                    }
                    if (data.totalNum === 0) {
                        _this.status = 'noData'
                    } else if (_this.newsList.length >= totalNum) {
                        _this.status = 'noMore'
                    }
                    // 设置滚动条距离
                    setTimeout(function () {
                        if (then) {
                            then()
                        } else {
                            _this.$refs.scrollRef.scrollTo(0, 10000)
                        }
                    }, 10);
                })
            },
            handleChangeTwo: function (key, item, event) {
                $(document).scrollTop(0); // 滚动归0
                var _this = this;
                this.activeTwo = key;
                this.swiperInitTwo.slideTo(key, 600, false);
                this.params.time = item.value
                this.getGoodsList(this.params)
            },
            handleClipboard: function (event, res, isGoods, text) {
                var that = this
                if (event.getAttribute("isCopy")) {
                    return false;
                }
                event.setAttribute("isCopy", true)

                // if (_config.jumpGoodsUrl && res && res.itemId) {
                //   $(event).on('click', function () {
                //     _config.jumpGoodsUrl(res);
                //   });
                // }

                var clipboardImg = new window.ClipboardJS(event, {
                    text: function (trigger) {
                        return text || that.handleTwd(res, isGoods);
                    }
                });
                clipboardImg.on('success', function (e) {
                    vant.Toast(text ? '复制成功，快分享给小伙伴吧~' : '口令复制成功，打开手淘抢购');
                    e.clearSelection();
                });

                clipboardImg.on('error', function (e) {
                    vant.Toast('口令复制失败，请联系推荐者');
                });
            },
            copyTkl: function (res,isGoods,text) {
                var that = this;

                var clipboardImg = new window.ClipboardJS("#copy", {
                    text: function (trigger) {
                        return text || that.handleTwd(res, isGoods, true, true,);
                    }
                });
                clipboardImg.on('success', function (e) {
                    vant.Toast(text ? '复制成功，快分享给小伙伴吧~' : '口令复制成功，打开手淘抢购');
                    e.clearSelection();
                });

                clipboardImg.on('error', function (e) {
                    vant.Toast('口令复制失败，请联系推荐者');
                });
            },
            Offset: function (event) {
                var pos = new Object();
                pos.x = event.offsetLeft;
                pos.y = event.offsetTop;
                while ((event = event.offsetParent)) {
                    pos.x += event.offsetLeft;
                    pos.y += event.offsetTop;
                }
                return pos;
            },
            handleScroll: function (event) {
                var _this = this;
                var scrollH = event.scrollHeight;
                // 分页
                _this.params.pageId = _this.params.pageId + 1
                _this.getGoodsList(_this.params, function (item) {
                    // 计算加载数据后的滚动条位置
                    event.scrollTo(0, event.scrollHeight - scrollH)
                })
            },
            initIsScrill: function () {
                var _this = this;
                var offset = this.Offset(_this.$refs.scrollRef);
                var bottom = document.getElementById('share').offsetHeight;
                _this.height = window.innerHeight - offset.y - bottom;
                _this.handleInitIscroll(_this.$refs.scrollRef)
            },
            // 同步滚动条容器示例
            handleInitIscroll: function (event) {
                var that = this
                that.$refs.scrollRef = event;
            },
            // 转链
            handleTwd: function (res, isGoods, isQuan, linQuan, isTaobao) {
                var _this = this;
                if(_config.jumpGoodsUrl){
                    _config.jumpGoodsUrl(res);
                    return false;
                }
                if (!isTaobao) {
                    isQuan = isQuan || false;
                    linQuan = linQuan || false;
                }
                // 普通商品转连逻辑
                if (!window.taobaoCode) return false;
                var sys = this.sys
                var resCodeEvent = new window.taobaoCode({
                    type: 1, // type=>1 商品转链  2 活动转链
                    modelType: 2, // 0 => 默认成功失败提示 modelType => 1 超级红包 2 =>会场弹窗 （判断类型 默认不传，用途复制成功提示文案判断）
                    isRedPacket: false, // isRedPacket => true 开启红包流程  isRedPacket=> 关闭红包流程 （是否开启红包弹窗流程）
                    params: {
                        ...{
                            site_id: sys.uid,
                            pid: sys.pid,
                            auth_id:this.sys.auth_id,
                            need_tpwd: 1,
                            gid: res.itemId,
                            goodsid: res.itemId,
                            is_auto_quan: isQuan ? 0 : 1,
                            pic: res.mainPic || 'https://sr.ffquan.cn/dtk_www/20210414/c1r8db76vrke67sn1tb00.png',
                            need_item_link: isQuan ? 0 : 1,
                            d_title: res.title,
                        },

                        ...(sys.channelId != "" ? { relationId: sys.channelId } : {})
                    },
                    //参数 具体参数参照  http://wiki.haojiequ.com/?dir=interface%2F%E5%85%AC%E5%85%B1%E6%8E%A5%E5%8F%A3%E6%96%87%E6%A1%A3-go&file=1.index.md
                    regCode: /\#(.*?)\#/, //替换正则 默认 #淘口令#
                    async: false, // 同步还是异步  将不会执行弹窗逻辑需要自己判断 并示例中会返回 （items=>接口专链后地址）
                    template: `复制本段(#淘口令#)，打开手淘APP领取福利`,//替换模版
                });

                if (resCodeEvent.items.code != 1) {
                    return false;
                }

                // 券地址
                if (isQuan && linQuan) {
                    _this.Tpwd = resCodeEvent.items.data.TpwdNew
                    return resCodeEvent.items.data.TpwdNew
                    // return resCodeEvent.items.data.TpwdNew;
                }
                // 下单地址
                if (isQuan && !linQuan) {
                    window.open(resCodeEvent.items.data.Link)
                    return resCodeEvent.items.data.Link;
                }
                // copyFun(event1,res,isGoods,true,false)

                if (_this.active == 2 && resCodeEvent.items.data.SysQuanInfo != '' && !isQuan && !linQuan && !isTaobao) {
                    _this.showAlert(res, isGoods)
                } else {
                    return isGoods ? `${resCodeEvent.items.data.TpwdNew} :/` : `0每天10点，20点抢1元爆品，复制${resCodeEvent.items.data.Tpwd}，打开手淘APP，立即抢购:/`;
                }

            },
            showAlert: function (res, isGoods) {
                this.isShowAlert = true;
                setTimeout(() => {
                    const event = document.getElementsByClassName('am-modal-button')[0];
                    const event1 = document.getElementsByClassName('am-modal-button')[1];
                    this.copyFun(event, res, isGoods, true, true)
                    this.copyFun(event1, res, isGoods, false, false, true)
                }, 100);
            },
            copyFun: function (event, res, isGoods, isQuan, linQuan, isTaobao) {
                var _this = this;
                const clipboardImg = new window.ClipboardJS(event, {
                    text: (trigger) => {
                        return this.handleTwd(res, isGoods, isQuan, linQuan, isTaobao);
                    }
                });

                clipboardImg.on('success', function (e) {
                    vant.Toast(linQuan ? '口令复制成功，打开手淘领券' : '口令复制成功，打开手淘抢购')
                    e.clearSelection();
                    _this.isShowAlert = false;
                });

                clipboardImg.on('error', function (e) {
                    vant.Toast('口令复制失败，请联系推荐者')
                    _this.isShowAlert = false;
                });

            },
            intersectionObserverFuc: function () {
                var that = this;
                if (!window.IntersectionObserver) {
                    return false;
                }
                var intersectionObserver = new IntersectionObserver(function (entries) {
                    entries.forEach(function (element, index) {
                        if (element.isIntersecting && that.isShowServer) {
                            that.handleScroll(that.$refs.scrollRef)
                        } else {
                            that.isShowServer = true;
                        }
                    });
                });
                // debugger
                intersectionObserver.observe(this.$refs.pullDownEl);
            },
        },


        mounted: function () {
            var that = this
            this.initSwiper();
            this.initIsScrill();
            this.intersectionObserverFuc();
            this.getGoodsList(this.params);
            window.onscroll = function () {
                that.scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
            }
            // 监听触底
            // window.addEventListener('scroll',function(){
            //     var h = window.innerHeight;
            //     var bottom = that.$refs.goodslist.getBoundingClientRect().bottom;
            //     if (bottom -h < 1) {
            //         that.params.pageId = that.params.pageId + 1
            //         that.getGoodsList(that.params);
            //     }
            // })
        },
        filters: {
            dataFormat: function (val) {
                return dateFormat('MM月DD日 HH:mm', val)
            }
        },
        watch: {
            kzWebsite: function (newVal) {
                if (newVal) {
                    var that = this
                    $.ajax({
                        url: 'https://dtkapi.ffquan.cn/taobaoapi/kz-create-short',
                        type: "get",
                        data: {
                            url: `${newVal}#/tipOff?app_key=${_config.appKey}`
                        },
                    }).done(function (res) {
                        that.$nextTick(function () {
                            that.handleClipboard(document.getElementById(`share`), {}, false, '全网最新优惠信息，小伙伴们快来褥羊毛吧~ ' + res.data)
                        })
                    })
                }
            },
            newsList: {
                deep: true,
                handler: function (newVal) {
                    if (newVal) {
                        var that = this
                        for (let index = 0; index < newVal.length; index++) {
                            that.$nextTick(function () {
                                that.handleClipboard(document.getElementById('copy'), newVal[index], true)
                            })
                        }
                    }
                }
            }
        }
    })
</script>

