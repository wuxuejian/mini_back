<?php
?>

<!--
 * @Author: your name
 * @Date: 2021-02-26 14:25:42
 * @LastEditTime: 2021-04-09 16:12:04
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /www/dtk_static_www_user_center/html/单页html/首页.html
-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="App-Config" content="fullscreen=yes,useHistoryState=yes,transition=yes">
    <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=0.5,maximum-scale=0.5,minimum-scale=0.5,viewport-fit=cover">
    <meta content="yes" name="apple-mobile-web-app-capable"><meta content="yes" name="apple-touch-fullscreen">
    <meta content="telephone=no,email=no" name="format-detection">

    <link rel="stylesheet" href="/assets/css/message.css">
    <script type='text/javascript' src='/assets/js/message.min.js' id='message'></script>

    <script type="text/javascript" src="https://public.ffquan.cn/lib/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/vue/vue@2.6.11.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/vue-lazyload.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/swiper/js/swiper.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/taobaoCode/taobaoCode.js?v=1.2.1"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/clipboard.min.js"></script>

    <title>咚咚抢</title>
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
            appKey: '<?php echo $dataoke_appkey; ?>',//此处替换成用户appKey
            // 需要自行接入点击商品后的逻辑 （非必填）
            jumpGoodsUrl: function (items) {   // 替换为详细页面的地址或转链逻辑
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
                    window.open('<?php echo $h5_home . '/#/pages/shop/goods-details/goods-details?'; ?>' + 'dtk_id=' + items.id
                        + '&tk_goodsid=' + items.goodsId + '&tk_platform=' + platform);
                }else{
                    uni.postMessage({
                        data: {
                            action: 'toShopGoods',
                            goodsid: items.goodsId,
                            platform: platform,
                            id: items.id
                        }
                    });
                    if(isWx){
                        uni.navigateBack();
                    }
                }

                return false;
            }
        };
    </script>
    <style>
        a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;-webkit-tap-highlight-color:transparent;-webkit-tap-highlight-color:rgba(0,0,0,0);tap-highlight-color:transparent;box-sizing:border-box}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}html{font-family:Arial,PingFang SC,-apple-system,BlinkMacSystemFont,Segoe UI,Hiragino Sans GB,Microsoft YaHei,Helvetica Neue,Helvetica,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:"";content:none}
        #appMain{
            margin: auto; max-width: 800px; font-size: .28rem; overflow: hidden; position: relative; z-index: 1;
            overflow: hidden;
            background: url('https://img.alicdn.com/imgextra/i2/2053469401/O1CN01cCtTUR2JJi1LrmC96_!!2053469401.png') no-repeat center top #f5f5f5;
            background-size: 100% auto;
        }
        .act_header{
            z-index: 200; width: 100%; background: no-repeat top; background-size: 100% auto;
            display: flex; align-items: center; justify-content: space-between;
            position: fixed;
            background: url('https://img.alicdn.com/imgextra/i2/2053469401/O1CN01cCtTUR2JJi1LrmC96_!!2053469401.png') no-repeat center top;
            height:1.18rem ; color: #fff;
            background-size: 100% auto;
            max-width: 800px;
        }
        .act_header > div{ min-width: 4.5em;}
        .act_header .centent{
            text-align: center;
        }
        .act_header .centent img{
            width:1.3rem;
        }
        .act_header .share a{
            text-decoration: none;
            position: relative;
            top: -.2rem;
            height: 2em;color: #fff;width: 100%;line-height: 2em;text-align: center;display: block;margin-bottom: 1px;background: rgba(0,0,0,.3);border-radius: 0 0 .1rem .1rem;
        }
        .act_header .share a::before{
            content: ''; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADQAAAA0CAMAAADypuvZAAAAdVBMVEUAAAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////li2ZAAAAAJnRSTlMA+z+lT+K/8lPr5pVEHO91X0s2MwTIsmUmDNmBSS6HbFnR2LSvggRdL7IAAAGQSURBVEjH5ZbZloIwDIa7UBg2QRYFUUdn8f0fcRrsORWCP861/4Wek/QjXdKk4l1UDTo8ROb4OqHS5HaXeRWpwzvgoUsSXb/T4qNuniC5vnm56cU3p83n8sxi59al6npnNP4zS9Rejq5dNplI5qmYM+fR0So+6eriVnpiccgqC7GkD3mHgvl6yB5tAcMXlcfEnJ4zkmaYTh2a7FvABKX9/ZmeKQUvECOU/btOPBS7hYzI53uuKJACjEuN5NGV0pkihhQk8eXRR3mdQYaronxrIMP1a316neGHVGKGK1zauwAz4mDd3cy2XWCO5qFuRNbfzyDDGbIZDHGmp5yG08sMK2GdHfbFNwKLki3kW45VTo5zmB0uOM6BpRFWs7HDKpawWJkdlPCrgbXzRQJfQjaGX3eoljYcFhaugkbUqyWM568WoFhynSg941yAsszjECPZTsEGUEjy7ZkdtBrVjo6zt6w1tSbbjUbp48D22Xeq1BvXAyk+bNRcOl97EjCF9WuPD68kVf955kSHUA+VeBP9AQg5RZhPUvaEAAAAAElFTkSuQmCC) center center no-repeat;
            width: 1.1em;height: 1.1em;display: inline-block;position: relative;top: .15em;margin-right: .4em;
            background-size: 100% auto;
        }

        .bannerBox{
            padding-top: 1.34rem;height: 4rem;position: relative;overflow: hidden;transition: all .2s linear;
        }
        .bannerBox .userBox  {
            height: .92rem;margin: .85rem .36rem 0 .18rem;position: relative;overflow: hidden
        }
        .bannerBox .pic{
            width: .88rem;height: .88rem;display: -webkit-flex;display: flex;-webkit-justify-content: center;justify-content: center;-webkit-align-items: center;align-items: center;position: relative;z-index: 9;
        }
        .bannerBox .pic img{
            width: .52rem;height: .52rem;position: absolute;border-radius: .26rem;top: 48%;left: .19rem;-webkit-transform: translateY(-50%);transform: translateY(-50%);background: url(https://cmsstatic.ffquan.cn//wap_new/home/images/user_head.png);background-size: 100%
        }
        .bannerBox .box{
            position: absolute;overflow: hidden;top: 50%;right: 0;
            width: calc(100% - .5rem);-webkit-transform: translateY(-50%);transform: translateY(-50%);height: .44rem;background: linear-gradient(270deg,rgba(255,244,210,.62),#ffeea7),linear-gradient(270deg,#fff,hsla(0,0%,100%,.41));border-radius: 0 .22rem 0 0;

        }
        .bannerBox .box .swiper-container{
            height: .44rem; overflow: hidden;
        }

        .bannerBox .box .list{
            font-size: .24rem;font-weight: 400;color: #d1062f;height: .44rem; align-items: center;margin-left: .3rem;
            overflow: hidden;text-overflow: ellipsis;display: block;
            white-space: nowrap; line-height: .44rem;
        }
        .bannerBox .user{width: .88rem;height: .88rem;background: url('data:image/png;base64,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');background-size: 100%;display: -webkit-flex;display: flex;-webkit-justify-content: center;justify-content: center;-webkit-align-items: center;align-items: center;position: relative;z-index: 9
        }

        .wrapBox {
            position: relative;overflow: hidden;width: 7.5rem;height: 1rem;padding: .07rem 0;background: #f5f5f5;z-index: 888
        }

        .hotBox {
            position: absolute;left: 0;top: -.02rem;padding-left: .2rem;width: 1.64rem;height: .86rem;z-index: 9999;display: -webkit-flex;display: flex;-webkit-justify-content: center;justify-content: center;-webkit-align-content: center;align-content: center;-webkit-flex-direction: column;flex-direction: column;background: #f5f5f5
        }

        .hotBox .time {
            width: 100%;height: .44rem;font-size: .3rem;font-family: PingFangSC-Medium,PingFang SC;font-weight: 500;color: #333;line-height: .44rem;text-align: center
        }

        .hotBox .status {
            width: 100%;height: .34rem;font-size: .24rem;border-radius: .17rem;font-weight: 400;color: #777;line-height: .34rem;text-align: center
        }

        .hotBox.active .time {
            color: #f92a54
        }

        .hotBox.active .status {
            background: linear-gradient(90deg,#ff2c76,#ff3f3e);
            box-shadow: 0 1px .03rem 0 rgba(255,62,64,.4);
            color: #fff
        }

        .tabBox {height: .86rem;position: absolute;top: 0;left: 0;z-index: 999;width: 7.1rem;margin: 0 .2rem .2rem;background: #f5f5f5
        }

        .tabBox .list {display: inline-block;height: .86rem;margin-right: 0!important
        }

        .tabBox .list .padding {height: .86rem;padding: 0 .1rem;display: -webkit-flex;display: flex;-webkit-justify-content: center;justify-content: center;-webkit-align-content: center;align-content: center;-webkit-flex-direction: column;flex-direction: column;background: #f5f5f5
        }

        .tabBox .list .padding .time {height: .44rem;font-size: .3rem;font-family: PingFangSC-Medium,PingFang SC;font-weight: 500;color: #333;line-height: .44rem;text-align: center
        }

        .tabBox .list .padding .status {height: .34rem;width: 1.24rem;line-height: .34rem;font-size: .24rem;font-weight: 400;color: #777;text-align: center;border-radius: .17rem
        }

        .tabBox .list.active .padding .time {color: #f92a54
        }

        .tabBox .list.active .padding .status {background: linear-gradient(90deg,#ff2c76,#ff3f3e);box-shadow: 0 1px .03rem 0 rgba(255,62,64,.4);color: #fff
        }

        .tabBox .swiper-wrapper {white-space: nowrap
        }


        .lists {
            margin: 0 .2rem .2rem
        }

        .lists li {
            width: 7.1rem;height: 2.48rem;background: #fff;border-radius: .16rem;padding: .1rem;margin: .2rem auto 0
        }

        .lists li .productImg {float: left;margin-right: .2rem;position: relative
        }

        .lists li .productImg .imgPerch {width: 2.2rem;height: 2.2rem;border-radius: .1rem
        }

        .lists li .productImg img {width: 2.2rem;height: 2.2rem;border-radius: .1rem
        }

        .lists li .productInfo {position: relative
        }

        .lists li .productInfo .title {height: .36rem;font-size: .26rem;font-family: PingFangSC-Regular,PingFang SC;color: #333;line-height: .36rem;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;margin-top: .08rem;margin-bottom: .08rem!important;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center
        }

        .lists li .productInfo .title span {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;margin-left: .05rem;font-size: .28rem;font-weight: 400;color: #333
        }

        .lists li .productInfo h2 {margin-top: .05rem;height: .28rem;font-size: .22rem;font-weight: 400;color: #fd1e60;line-height: .28rem;overflow: hidden;text-overflow: ellipsis;white-space: nowrap
        }

        .lists li .productInfo .wrap {display: -webkit-flex;display: flex;margin-top: .16rem;-webkit-justify-content: flex-start;justify-content: flex-start
        }

        .lists li .productInfo .coupon {margin-bottom: .2rem
        }

        .lists li .productInfo .sale {display: -webkit-flex;display: flex;-webkit-justify-content: flex-start;justify-content: flex-start;-webkit-align-items: center;align-items: center;margin-top: .1rem
        }

        .lists li .productInfo .sale span {font-size: .22rem;font-family: PingFangSC-Regular,PingFang SC;font-weight: 400;color: #777;margin-left: .1rem
        }

        .lists li .productInfo .sale span .wan {color: #ff6a00
        }

        .lists li .productInfo .sale .fire {width: .22rem;color: #ff1e6a
        }

        .lists li .productInfo .btn {position: absolute;right: .1rem;bottom: 0
        }

        .lists li .productInfo .btn .willStart {width: 1.52rem;height: .5rem;background: linear-gradient(90deg,#2eb751,#3bae59);box-shadow: 0 .02rem .04rem 0 rgba(74,190,43,.4);border-radius: .1rem;line-height: .5rem;text-align: center;color: #fff
        }

        .lists {
            margin: 0 .2rem .2rem
        }

        .lists li {
            width: 7.1rem;
            height: 2.48rem;
            background: #fff;
            border-radius: .16rem;
            padding: .1rem;
            margin: .2rem auto 0
        }

        .lists li .productImg {
            float: left;
            margin-right: .2rem;
            position: relative
        }

        .lists li .productImg .imgPerch {
            width: 2.2rem;
            height: 2.2rem;
            border-radius: .1rem
        }

        .lists li .productImg img {
            width: 2.2rem;
            height: 2.2rem;
            border-radius: .1rem
        }

        .lists li .productInfo {
            position: relative
        }

        .lists li .productInfo .title {
            height: .36rem;
            font-size: .26rem;
            font-family: PingFangSC-Regular,PingFang SC;
            color: #333;
            line-height: .36rem;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: .08rem;
            margin-bottom: .08rem!important;
            display: -webkit-flex;
            display: flex;
            -webkit-align-items: center;
            align-items: center
        }

        .lists li .productInfo .title span {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-left: .05rem;
            font-size: .28rem;
            font-weight: 400;
            color: #333
        }

        .lists li .productInfo h2 {
            margin-top: .05rem;
            height: .28rem;
            font-size: .22rem;
            font-weight: 400;
            color: #fd1e60;
            line-height: .28rem;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .lists li .productInfo .wrap {
            display: -webkit-flex;
            display: flex;
            margin-top: .16rem;
            -webkit-justify-content: flex-start;
            justify-content: flex-start
        }

        .lists li .productInfo .coupon {
            margin-bottom: .2rem
        }

        .lists li .productInfo .sale {
            display: -webkit-flex;
            display: flex;
            -webkit-justify-content: flex-start;
            justify-content: flex-start;
            -webkit-align-items: center;
            align-items: center;
            margin-top: .1rem
        }

        .lists li .productInfo .sale span {
            font-size: .22rem;
            font-family: PingFangSC-Regular,PingFang SC;
            font-weight: 400;
            color: #777;
            margin-left: .1rem
        }

        .lists li .productInfo .sale span .wan {
            color: #ff6a00
        }

        .lists li .productInfo .sale .fire {
            width: .22rem;
            color: #ff1e6a
        }

        .lists li .productInfo .btn {
            position: absolute;
            right: .1rem;
            bottom: 0
        }

        .lists li .productInfo .btn .willStart {
            width: 1.52rem;
            height: .5rem;
            background: linear-gradient(90deg,#2eb751,#3bae59);
            box-shadow: 0 .02rem .04rem 0 rgba(74,190,43,.4);
            border-radius: .1rem;
            line-height: .5rem;
            text-align: center;
            color: #fff
        }

        .lists li .wrap{
            display: -webkit-flex;
            display: flex;
            margin-top: .16rem;
            -webkit-justify-content: flex-start;
            justify-content: flex-start;
        }


        .shoplabel {
            height: .26rem;
            float: left
        }

        .shoplabel img {
            height: 100%;
            display: block
        }

        .coupon {
            height: .24rem;
            background: linear-gradient(90deg,#ff8873,#ff4f4f);
            border-radius: .04rem;
            display: inline-block;
            line-height: .24rem;
            padding: 0 .06rem 0 .02rem;
            font-size: .19rem;
            font-family: PingFangSC-Regular,PingFang SC;
            color: #fff;
            display: -webkit-flex;
            display: flex;
            -webkit-align-items: center;
            align-items: center;
            width: -webkit-max-content;
            width: -moz-max-content;
            width: max-content
        }

        .coupon span {
            display: inline-block;
            font-size: .18rem;
            font-family: PingFangSC-Regular,PingFang SC;
            font-weight: 400;
            color: #ff5351;
            line-height: .19rem;
            padding: 1px .04rem;
            background: #fff;
            border-radius: .02rem 0 0 .02rem;
            text-align: center;
            margin-right: .06rem
        }


        .Trend {
            height: .28rem;
            padding: 1px .04rem .02rem;
            border-radius: .04rem;
            border: 1px solid #ff6a00;
            display: -webkit-flex;
            display: flex;
            -webkit-justify-content: flex-start;
            justify-content: flex-start;
            -webkit-align-items: center;
            align-items: center;
            margin-right: .12rem
        }

        .Trend .qushitubeifen {
            width: .22rem;
            font-size: .22rem;
            color: #ff7200
        }

        .Trend span {
            margin-left: .07rem;
            height: .28rem;
            font-size: .2rem;
            font-family: PingFangSC-Regular,PingFang SC;
            font-weight: 400;
            color: #ff7200;
            line-height: .28rem
        }
        .prices {
            font-size: .2rem;
            font-family: PingFangSC-Regular,PingFang SC;
            color: #fe3738
        }

        .prices .currency {
            font-size: .24rem;
            font-weight: 500;
            font-family: PingFangSC-Medium,PingFang SC;
            color: #fe3738;
            margin: 0 .02rem 0 .06rem
        }

        .prices .juanPrice {
            font-size: .34rem;
            font-weight: 500;
            color: #fe3738;
            margin-right: .04rem;
            font-family: PingFangSC-Medium,PingFang SC
        }

        .prices .originPrice {
            text-decoration: line-through;
            height: .26rem;
            font-size: .2rem;
            font-family: PingFangSC-Regular,PingFang SC;
            color: #999;
            line-height: .26rem;
            margin-left: .1rem
        }

        .onSale {
            width: 1.5rem;
            height: .72rem;
            background: linear-gradient(90deg,#ff2c76,#ff3f3e);
            box-shadow: 0 .02rem .04rem 0 rgba(255,62,64,.4);
            border-radius: .1rem;
            color: #fff;
            display: -webkit-flex;
            display: flex;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-align-content: center;
            align-content: center;
            -webkit-flex-direction: column;
            flex-direction: column;
            padding: 0 .14rem;
            overflow: hidden
        }

        .onSale span {
            margin-bottom: .1rem;
            font-size: .18rem;
            text-align: center
        }

        .onSale .am-progress-outer {
            background: hsla(0,0%,100%,.71);
            border-radius: .07rem;
            overflow: hidden
        }

        .onSale .am-progress-outer .am-progress-bar {
            border: .04rem solid #fff;
            transition: all .3s linear 0s;
            border-radius: .06rem
        }

        .juhuasuan {
            width: 26px;
            height: 26px;
            overflow: hidden;
            display: none;
            margin-right: 8px;
        }
        .juhuasuan.ju {
            background: url(https://sr.ffquan.cn/dtk_www/20210309/c13j48n6vrkc38d4mlt03.png) no-repeat center;
            background-size: contain;
            display: inline-block;
        }
        .juhuasuan.qiang {
            background: url(https://sr.ffquan.cn/dtk_www/20210309/c13j48n6vrkc38d4mlt01.png) no-repeat center;
            background-size: 100%;display: inline-block;
        }
        .juhuasuan:after {
            content: '';
            display: block;
            overflow: hidden;
            height: 0;
            clear: both;display: inline-block;
        }

        .brand {
            width: 1.26rem;
            height: .28rem;
            background: linear-gradient(270deg,#7301ba,#a121f2 49%,#6900ad);
            position: absolute;
            left: 0;
            bottom: 0;
            border-radius: 0 .14rem 0 .14rem;
            display: -webkit-flex;
            display: flex;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-align-items: center;
            align-items: center
        }

        .brand i {
            font-size: .26rem;
            color: #fff
        }

        .brand span {
            padding-left: .05rem;
            color: #fff;
            font-size: .2rem
        }
        .am-list-footer {
            padding: .18rem .3rem .3rem;
            font-size: .28rem;
            color: #888
        }
        .top {
            width: .46rem;
            height: .52rem;
            line-height: .52rem;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAuCAYAAABeUotNAAAFSUlEQVRYR7VZzWtdVRD/TYxWECsuFFx0Ky5cCKKIG0VCLFTsy8vLS1KtUBf9H1rRPlQarF+0+Bm0D7V+EGwUMaAlCG5EBMWFC3Gpi4IbaaU0pbln5H6fM2fOufe+1EAg7917zpkz85vf/GZCAMBPbdyJJFkBeAZsdgMMMKdPil9jfTb5d87z9HPxfbkme55+l75uP1PWV+8W+1J23kUAmwCO0BdH/6DMyO3kR8Dc6hpgbS43qi5QGGMbXf3dcn11Ce1SmeH/gK57gPiJr86CTb82Uh5QekZ40TY+Mzz1Quo+zeN2RJR3swgVhjrrK1vWiQ98eQHgItwBI1OjyDZUHJw9l9+JvbL1bff33r1IfGCdfbxZXnTw2MZbEYOi2C/yQcU6g3j5bLpznTgeHkNJoiScTBwPHuWawIXlRSyjiZc/LwyNhK4xyyUGQyygJJ+GaeWCxMtrSuilFzWga9QVCp8WlUCSZknpUyPx0hpXmeq9JBKo8mxLZlDf72p0ziTES59ZhsrMtuhG0k/U6ECIW/GtHhXipU9yjEqitjmxmecaKpdCZyX3OhcuHKNUPeKljy2MtqWfCL4imVuxS4hPvfJbO5B48Uyd9RPxXAfMSY6sIlWG20pQx+iURxc/FKHX8KXRjZZQAREjQymT1hYwHl3lsCFe/MDHqKQHL5yicqmesWDklF+F9NXy6q4nXhwHSmjhxWqTrOwU4sMOVRuqCiqjWsRES3VKT8NxTU+yIsQ0afXMVkw7gEOgxpfOIR6+X4Q+dIgmdEUCtcKcVd26QivD6PA99tW5tmngIC+TS86UnBiReI1CPA39wmpYPTXgJt6yiKSJcKTKr6LyES+864d+opoekYPywhOFfuFtN+tVtS4qUWe1r1UyrQoqUSigRTx4yw19jBOb1L4qlNsmqSLvrPOIB28W9CTbWu12osRFu1O7mpWNn9bitFH7aTIN3sgN9dSTLV5jil2W3FBIbQzb59nsEPB+Rk+DUwVGIyFqpSMDBgY51u7TQtWtvgTx/MmAcA4NFyYtmaG+X+5XXtgW7alH51+vk8kOv6d4ZBssCkBnJhAGNvT9xPOv7Uw4d+ZcrWONzBEKhxH3Xw33TGqbLDeNEH1XYpeXttYT919WQq9kuZcUIWXforGTXN2iVBP3TxSiRNGbUn9W9VoaaeG1czsTgoJdzVIe7b/k0lNrTRoTz22YIbRejxTx3IrV3InqFJx1TjiaCQrxUJ9We5V47rilnuR8s61nOmZyIzwE5yLl0bkX89DbPBgMf6AuKwODWmOKOZIcOASFt9tCE/deEMK5g65s9EzDVK9JjVlMQ9x7vqNwnoB+on29AhtFHxD3Rv4AIjiADSilnfT9YiKStzeyvKb01Dsm+np9PulOpUM8ylcA82shGe8B8y5vtm8b4rBKXA8T73+upic1KdowAX4CmTG2kk9pc/VCVjpmDt+CG7aXARwCm/tVT1Xdp0xSHw7EvWcTsJlyprxtWgrivwE+A07GtPHOb/l/vvQf3nfwbiR0COAnAXN7fpYWFTksK9+DId7/zJ9g3lP9l02dOlebbgPmG2DqNM5vfU0/r16NGSif8b2Hr8dtlx4DJ08DvBfgad1oMWwj/ov48aPHAT7i3NDvhX4HeIyrWx/Rt6vnuxgX9PKj/TuA6YOASaFxl8u7AgqEFeKHRzdi99YGYB5x+yb8C/AaTHKaNk79cC2MCxo9O3gQ2E69PASbm53BBvN3SC7vowz4o9EUfrk8BCczuWfN97gyvU7nXrn0fxroQWN29ibwrj5gHsqMJdrEufvWCCPzH3osW4WFuCAWAAAAAElFTkSuQmCC) no-repeat 50%;
            background-size: .46rem .52rem;
            position: absolute;
            top: 0;
            left: 0;
            display: -webkit-flex;
            display: flex;
            -webkit-flex-direction: column;
            flex-direction: column;
            -webkit-align-items: center;
            align-items: center;
            color: #fff;
            padding-top: .02rem
        }

        .top span {
            font-size: .24rem!important;
            font-family: ArialMT;
            text-align: center
        }

        .top span:last-child {
            font-size: .2rem;
            -webkit-transform: translateY(-.03rem);
            transform: translateY(-.03rem)
        }

        .loading{
            line-height: 1rem; text-align: center; font-size: .3rem; color: #999;
        }
        .sys{
            width: 100%;
            height: 100vh;
            position: fixed;
            z-index: 9999999;
            background: rgba(0, 0, 0, 0.6)
            url('https://sr.ffquan.cn/dtk_yunying/20210803/c44albf6vrkd4bd59itg0.png')
            center center no-repeat;
            background-size: 2.4rem auto;
        }
    </style>
</head>

<body >
<div id="appMain" >
    <div v-if="sys == null" class="sys"></div>
    <header class="act_header">
        <div></div>
        <div class="centent"><img src="https://sr.ffquan.cn/dtk_user_pmc/20210309/c13er2f6vrkc38d4mlr00.png" alt=""></div>
        <div class="share">
            <!-- <a href="">分享</a> -->
        </div>
    </header>
    <div class="bannerBox height">

        <div class="userBox">
            <div class="user pic">
                <img src="https://cmsstatic.ffquan.cn//wap_new/home/images/user_head.png">
            </div>
            <div class="box" v-if="newsList.length != 0" >
                <div class="swiper-container" id="boxSwiper" >
                    <div class="swiper-wrapper">
                        <p class="list swiper-slide" v-for="(item,key) in newsList" :key="key" >{{item}}</p>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>

            </div>
        </div>
    </div>
    <div class="wrapBox " v-if="loading">
        <div :class="`hotBox ${active == 0 ? 'active' :''}`" v-on:click="handleSwiperNav(0)">
            <div class="time ">今日热抢</div>
            <div class="status ">实时爆款</div>
        </div>
        <div class="tabBox">
            <div id="ddqSwiper" class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode swiper-container-ios">
                <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">


                    <div v-for="(item, index) in items" v-on:click="handleSwiperNav(index)" :key="item.id" :class="`swiper-slide list swiper-slide-active ${active && active == index ? 'active' : ''}`" :style="{visibility:item.status == -2 ? 'hidden' : 'visible'}">
                        <div class="padding">
                            <div class="time ">{{item.timeDesc}}</div>
                            <div class="status ">{{item.status == -1 ? '已开抢':item.status == -2 ? '今日热抢':item.status == 0 ? '疯抢中':'即将开始'}}</div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="goods-list">
        <ul class="wrap lists"  v-for="(item,key) in items" :key="key" v-show="key == active" >
            <li v-for="(data,index) in item.list" :key="data.id"   >
                <a v-on:click="handleCdetailFavorite(data,item.status)" >
                    <div class="productImg">
                        <div class="imgPerch">
                            <img v-lazy="`${data.pic}_310x310.jpg`" class="fadeIn " height="200" width="200">
                        </div>
                        <div class="top" v-if="item.status == -2">
                            <span>{{formatNumber(index+1)}}</span>
                        </div>
                        <div class="brand" v-if="data.tubiao !== '0'">
                            <Icons type=“zuanshi” />
                            <span>{{data.tubiao == 1 ? '折上折' : data.tubiao == 1 ? '年货' :data.tubiao == 5 ? '品牌抢购' :'' }}</span>
                        </div>
                        <Brand type={tubiao} />
                    </div>
                    <div class="productInfo">
                        <div class="title">
                            <div class="shoplabel undefined">
                                <img v-if="data.label == '淘宝'" src="https://sr.ffquan.cn/dtk_www/20210309/c13j1n76vrkc38d4mlsg3.png">
                                <img v-if="data.label == '天猫'" src="https://sr.ffquan.cn/dtk_www/20210309/c13j1n76vrkc38d4mlsg2.png">
                            </div>
                            <span>{{data.dtitle}}</span>
                        </div>
                        <h2>{{data.newWords}}</h2>
                        <div class="wrap">
                            <div :class="`juhuasuan ${data.activeType === 2 ? 'qiang' : data.activeType === 3 ? 'ju' : ''}`"></div>
                            <div class="Trend" v-if="data.historyMinPriceDay > 0 ">
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAUCAYAAACXtf2DAAACJklEQVRIS92TT0hUURTGf99z0LKsJBAcLYoowkJilIIWIy0EiSCjKPoDualNFDlMZkQwqxbVONHSXdCiqEULCa2WKS0ysyJaFG1UZBIqilKbNyfmZpE5jM+hVRfe4t7vnvN753znigLL4lThE1GK3kL3CmnKJ1qCEJ85gZEAKoA2dXGjGMgcgMXYgbiGsRm4jxECmoAjSnFzoZDfAIuxCkgC+zBe4NGhJH3WzmKgBxFFHFSSOwuByNpYRCVxRCfwEeMCy7muBNlfiew45SzlHrAdsV9J7gaFyNq5hWgBLvGFlLr5mteXOEvIOrO3AnvVRU8QiCzuep3WFdJ/Btib4SrK/ANMjndr/c6pnGYdVODThxHBaA0yXXNNnnhWwzf/DHAMKHdGl9gehRtdZXaSZZQ68+sRu5XkQaAxtfHhtXzPdIKOgpXNChKPmLJdWtf4yUFOswLPJa5DdOHTyyiPdRv/b5hs7PlGsplzmB0CN5L5lzSIl21RuHHCQTqpZJqHQMQFiA+Y2/di9CnFqDu2kadDmG0JYhjoFUazVkfGHCSX9ix1ZGjCiIL7qn9KvMQ4vECA+423+Jlmrdn2Lu+0xdgw8zCjlHKqGECu8BFKQs0K17+er/IiATmG0mSzl/G8fmrKBqVN0/lgxQNmZ5vEbBCV9OMxgGcDqo68L8Lk+Royo0sGFlNtw9V/VcFcsjiv2oaL/wNgbKgV31YG7G7wa+KJaiPDPwAMR946bWQp1gAAAABJRU5ErkJggg==" class="qushitubeifen">
                                <span>{{data.historyMinPriceDay}}天最低价</span>
                            </div>
                            <div class="coupon" style="margin-bottom: 12px;">
                                <span>券</span>{{data.couponPrice}}元
                            </div>
                        </div>
                        <div class="prices">
                            <span class="currency">¥</span>
                            <span class="juanPrice">¥{{data.price}}</span>
                            <span class="originPrice">¥{{data.orginPrice}}</span>
                        </div>
                        <div class="sale">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAaCAYAAACzdqxAAAACpElEQVRIS63VX0hTURwH8O93amZZYlBSUlQYBEFtd8MEd1c+VA8RRpBF9tRDlFQPvUgEYgURUg8GQRDUQ38MISp8KKG03TkzZPc6yMiMjAqyCCkhyNzuL+4d5pZza3Pn8dzf+dzzO/d3fpf4zyHBge0w5SwoDnqVynTLmC5A2tvzsHxdK4gGiFjxI1SVtenWpYc14xYo9dMQX1B1Vc0JFk0/DuJyAkJo9Cpbsoalt3cJooXvAS5KQAT99M3hjEXTm0CcSbKzj1SVVVPzEjScEGxDtfMiSZman/WMpUc3IHAmgU0U/C5lVdW4BMKbgWg3gCIUmUvp8XxLCUswvAxmdBRA8heb3Ikvw51YUfEaggobE2ygT3k1AxZ/vwtm/ghrXN8lqPtgwp/iA90EzRsQR9d0jByj6r6SAIs/vAaO6BCA61SVI+IP7YODd2eH5ZcVC7AhDn6Jpx2b2NxsWnN2qhLQWwGcAPAVkR/lyC/ZC+BOypIiTYg4EkuRB+l13bZhGRych7EJ6zxL7SDKfkjeT8DsSFerM5/LEFX3+hijhXaAfBx3s95B5BCIZ5nDdv4equ4QpUc/D8Gpf5AQAHdWMB1H6XVeteAHENRmhSRbRJyjV2mi9BhdEKnJGQy2UHU1UgL6PQB7cgaLNNLnbqEEBloB0yq1XI0DVJU2imbsBuV+TlSrticny1lTOUrp7i5GfsknACVzxgUafbFeHbt5s7fIzN4l2EqfYveYGNwZXogF0V4AGzOT4qPlGlX34amZv21RnhurERENwMos8EcoMmvp8UzOgO2dP+krw/zCtgzqOgLgEj6/Pc26umj8hpI2cgmEdgE8CaAaQEGSDMYAPgR4garzTfILmCJv6RtejIlxDwpYhgiLQdP69XyAVzFolVaK8QeN1fEbQR5URQAAAABJRU5ErkJggg==" class="fire"><span>月销<span class="wan">3.9万 </span>件</span>
                        </div>
                        <div class="btn">
                            <div class="onSale" v-if="item.status != 1">
                                <span>已抢{{digitalAbbNumber({ num: data.salesNum, unit: '万' })}}件</span>
                                <div class="am-progress-outer" role="progressbar" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100">
                                    <div class="am-progress-bar" :style="`width: ${parseInt(data.showSaleNum / data.couponNum *100)}%; height: 0px;`"></div>
                                </div>
                            </div>
                            <div class="willStart" v-if="item.status == 1">即将开始</div>
                        </div>
                    </div>
                </a>
            </li>
            <div class="am-list-footer"><div style="padding: 30px; text-align: center;"> 本场精选宝贝已为您全部加载完毕～</div></div>
        </ul>
    </div>
    <!-- <div ref="reference" class="loading">加载中...</div> -->
</div>
</body>

</html>

<script>
    (function(){
        var size = (document.body.clientWidth || document.documentElement.clientWidth);
        document.documentElement.style.fontSize = (size > 750 ? 750 : size) / 7.5 + 'px';
    })();

    Vue.use(VueLazyload, {
        preLoad: 1.3,//
        error: 'https://sr.ffquan.cn/cms_pic/20200622/bro7s7f6vrkd3jat4ujg0.png',
        loading: 'https://sr.ffquan.cn/cms_pic/20200612/brhjkf76vrkcrfpi79eg0.png',
        attempt: 1
    })
    new Vue({
        el: '#appMain',
        data: {
            sys:false,
            hotGoodsItem:{
                goodsList:[],
                robbingNum:0,
            },
            goodsItem: [],
            nav:[],
            active:false,
            twoNav:false,
            activeTwo:undefined,
            loading:false,
            newsList:[],
            items:[]
        },
        methods: {
            formatNumber:function(num){
                return num < 10 ? `0${num}` : num;
            },
            accSub:function({ num }){
                var r1, r2, m, n;
                try {
                    r1 = num[0].toString().split('.')[1].length;
                } catch (e) {
                    r1 = 0;
                }
                try {
                    r2 = num[1].toString().split('.')[1].length;
                } catch (e) {
                    r2 = 0;
                }
                m = Math.pow(10, Math.max(r1, r2)); //last modify by deeka //动态控制精度长度
                n = r1 >= r2 ? r1 : r2;
                return ((num[0] * m - num[1] * m) / m).toFixed(n);
            },
            digitalAbbNumber :function({ num = 0, unit }){
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
            initSwiper:function(){
                var swiperConfig = {
                    slidesPerView: 'auto',
                    freeMode: true,
                    paginationClickable: true,
                    observer:true,
                    observeParents:true,
                };
                this.swiperInit = new Swiper(`#ddqSwiper`,swiperConfig);
                var swiper = new Swiper('#boxSwiper', {
                    autoplay: true,//可选选项，自动滑动
                    direction: 'vertical',
                });
                this.swiperInit.slideTo(4 - this.active, 600, false)
            },
            handleIntersectionObserver:function(){
                var _this = this;
                var intersectionObserver = new IntersectionObserver(function (entries) {

                    entries.forEach(function (element, index) {
                        if(element.isIntersecting && _this.loading){

                            // var items = this.nav[this.active];
                            _this.loading = false;
                            _this.getGoodsList()
                        }
                    });
                });
                intersectionObserver.observe(this.$refs.reference);

            },
            getGoodsNineCate:function(){
                var _this = this;
                _this.getGoodsList();
                // setTimeout(function(){
                //     _this.handleIntersectionObserver();
                // },10)

            },


            handleSwiperNav:function(key,event){
                var _this = this;
                $(document).scrollTop(0);
                this.active = key;
                this.swiperInit.slideTo(key - 2, 600, false);
            },
            handleCdetailFavorite: function (items,status) {
                if(status == 1){
                    return false;
                }
                if(_config.jumpGoodsUrl){
                    _config.jumpGoodsUrl(items);
                }
                var params = {
                    site_id:this.sys.uid,

                    pid:this.sys.pid,
                    goodsid:items.goodsId,
                    need_tpwd:1,
                    // gid:items.id,
                    is_auto_quan:1,
                    d_title:items.dtitle,
                    need_short_link:1,
                };
                if(this.sys.channel_id){
                    params.relationId =this.sys.channel_id;
                }
                return new taobaoCode({
                    type:1, // type=>1 商品转链  2 活动转链  3自定义跳转
                    ua:['MicroMessenger','WeiBo'], // 定制 UA  ua => [true]不跳转复制淘口令模式
                    modelType:0 , // 0 => 默认成功失败提示 modelType => 1 超级红包 2 =>会场弹窗 （判断类型 默认不传，用途复制成功提示文案判断）
                    isRedPacket:false, // isRedPacket => true 开启红包流程  isRedPacket=> 关闭红包流程 （是否开启红包弹窗流程）
                    params:params,
                    regCode:/\#(.*?)\#/, //替换正则 默认 #淘口令#
                    template:"优惠已生成，复制本段文字¥#淘口令#¥，打开淘宝APP领券购买",//替换模版
                });
            },
            getGoodsList:function(){
                var _this = this;
                function getMoble() {
                    var prefixArray = new Array("130", "131", "132", "133", "135", "137", "138", "170", "187", "189");

                    var i = parseInt(10 * Math.random());

                    var prefix = prefixArray[i];
                    var out = '';
                    for (var j = 0; j < 4; j++) {
                        out += Math.floor(Math.random() * 10);
                    }
                    return prefix +'******'+ out ;
                }
                $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/v1/page-goods-ddq',
                    type:"get",
                    data:{
                        app_key: _config.appKey,
                    }
                }).done(function(res){
                    var items = res.data.data;
                    _this.itemsOne = items.ddqSessions[0];
                    _this.items = items.ddqSessions;
                    _this.active = items.ddqSessions.map(function(res,key){
                        return res.status == 0 ? key: false;
                    }).filter(function(res){
                        return res;
                    })[0];
                    var newitem = items.ddqSessions.map(function(res,key){
                        return res.status == 0 ? res: false;
                    }).filter(function(res){
                        return res;
                    })[0];
                    _this.newsList = newitem ? newitem.list.map(function(res,key){
                        return `${getMoble()} 刚刚抢到了：${res.dtitle}`;
                    }) : [] ;
                    _this.loading = true;
                    _this.sys = res.data && res.data.sys ? res.data.sys : null;
                    setTimeout(_this.initSwiper.bind(_this,),50);
                })
            },
            getTimeActive:function(item){

            },
        },
        mounted: function () {
            this.getGoodsNineCate();

        },
    })
</script>
