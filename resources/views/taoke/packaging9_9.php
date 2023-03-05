<?php ?>
<!--
 * @Author: your name
* @Date: 2021-02-26 14:25:42
* @LastEditTime: 2021-10-20 16:31:36
* @LastEditors: Please set LastEditors
* @Description: In User Settings Edit
* @FilePath: /www/dtk_static_www_user_center/html/单页html/首页.html
-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="App-Config" content="fullscreen=yes,useHistoryState=yes,transition=yes">
    <meta content="yes" name="apple-mobile-web-app-capable"><meta content="yes" name="apple-touch-fullscreen">
    <meta content="telephone=no,email=no" name="format-detection">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover">
    <script type="text/javascript" src="https://public.ffquan.cn/lib/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/vue/vue@2.6.11.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/vue-lazyload.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/swiper/js/swiper.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/taobaoCode/taobaoCode.js?v=1.2.1"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/clipboard.min.js"></script>

    <title>9块9包邮</title>
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

                if(items.shopLable){
                    if(items.shopLable == '天猫'){
                        platform = 2;
                    }else if(items.shopLable == '淘宝'){
                        platform = 1;
                    }else{
                        platform = 1;
                    }
                }


                if(isH5){
                    window.open('<?php echo $h5_home . '/#/pages/shop/goods-details/goods-details?'; ?>' + 'dtk_id=' + items.id
                        + '&tk_goodsid=' + items.goodsid + '&tk_platform=' + platform);
                }else{
                    uni.postMessage({
                        data: {
                            action: 'toShopGoods',
                            goodsid: items.goodsid,
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
        }
        #appMain:before {
            content: "";display: block;position: absolute;top: 0;left: -20%;height: 3.88rem;width: 140%;background: linear-gradient(90deg,#ffa033,#ff8030) no-repeat;background-size: 100%;
            border-radius: 0 0 50% 50%;z-index: -1;
        }

        .h3bt {
    width: 1.66rem;
            height: .7rem;
            background: url('https://sr.ffquan.cn/dtk_www/20210226/c0sbpgn6vrkfhsos6qvg0.png') no-repeat 50%;
            background-size: 100% auto;
            margin: 0 auto .1rem;
        }
        .act_header{
    z-index: 200; width: 100%; background: no-repeat top; background-size: 100% auto;
            display: flex; align-items: center; justify-content: space-between;
            position: fixed;background: linear-gradient(90deg, rgb(255, 160, 51) 0%, rgb(255, 128, 48) 100%) 0% 0% / 100%;
            height:.88rem ; color: #fff;
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

        .act_nav {
    background: linear-gradient(90deg,#ffa033,#ff8030) no-repeat;background-size: 100%;min-height: .7rem;margin-top: 1px;position: fixed;width: 100%;top: 0;z-index: 999;padding-top: 5px;
            max-width: 800px;
        }
        .act_nav .swiper-wrapper{white-space: nowrap;display: -webkit-flex;display: flex;}
        .act_nav .tab{
    padding: 0 .2rem;font-weight: 500;font-size: .3rem;color: hsla(0,0%,100%,.6);position: relative;
        }
        .act_nav .tab.active{
    color: #fff;
}
        .act_nav .tab.active:after {
    height: .04rem;border-radius: .02rem;content: "";overflow: hidden;width: 0;background: #fff;display: block;position: absolute;z-index: 1;zoom: 1;margin: auto;transition: all .3s;left: 0;bottom: -.12rem;right: 0;
            width: 50%;
        }
        .reclassify_swiper{
    margin: .33rem 0 .22rem;padding: 0 .14rem;
        }
        .reclassify_swiper .swiper-wrapper{white-space: nowrap;display: -webkit-flex;display: flex;}
        .reclassify_swiper .reclassify{
    height: .4rem;background: hsla(0,0%,100%,.6);border-radius: .2rem;padding: 0 .24rem;line-height: .4rem;font-size: .26rem;color: #ff7300;margin-right: .2rem;
        }
        .reclassify_swiper .reclassify.active{
    background: #fff;
}

        .hot_goods{

}
        .goods_hot .bt{
    height: .42rem;font-size: .3rem;font-family: PingFangSC-Medium,PingFang SC;font-weight: 500;color: #fff;display: -webkit-flex;display: flex;-webkit-justify-content: space-between;justify-content: space-between;-webkit-align-items: center;align-items: center;padding: 0 .14rem 0 .16rem;
        }
        .goods_hot .bt > div:last-child {
    height: .36rem;
            font-size: .26rem;
            font-family: PingFangSC-Regular,PingFang SC;
            font-weight: 400;
            color: #fff;
            display: flex;
        }
        .hot_goods_list{
    white-space: nowrap;display: -webkit-flex;display: flex;padding: 0 .14rem;margin: .24rem 0;
            overflow: hidden; overflow-x: auto;
        }
        .hot_goods_list .listTmp{
    width: 2.2rem;background: #fff;border-radius: .16rem;padding: .1rem;margin-right: .1rem;box-sizing: border-box;
        }
        .hot_goods_list .listTmp .productImg {
    width: 2rem;height: 2rem;border-radius: .1rem;position: relative;margin-bottom: .34rem
        }

        .hot_goods_list .listTmp .productImg img {
    width: 100%; height: 100%
        }

        .hot_goods_list .listTmp .productImg .topMsg {
    padding: 0 .16rem;height: .28rem;line-height: .26rem;background: linear-gradient(90deg,#ffedc9,#ffe3af);font-size: .2rem;color: #cc600e;text-align: center;position: absolute;right: 0;top: 0;border-radius: 0 0 0 .1rem;max-width: 100%;overflow: hidden;white-space: pre-wrap;max-height: .28rem
        }

        .hot_goods_list .listTmp .productImg .scale {
    width: 1.72rem;height: .36rem;background: linear-gradient(270deg,#ffbe50,#ff570c);box-shadow: 0 .04rem .06rem 0 rgba(255,153,67,.33);border-radius: .36rem;text-align: center;position: absolute;bottom: -.18rem;left: 0;right: 0;margin: auto;font-size: .22rem;color: #fff;line-height: .39rem
        }


        .hot_goods_list .listTmp .title {
    width: 100%;height: .32rem;font-size: .22rem;color: #333;line-height: .32rem;overflow: hidden;margin-bottom: .05rem;white-space: pre-wrap;max-height: .32rem
        }

        .hot_goods_list .listTmp .price .juanPrice {
    font-size: .34rem;font-weight: 500;color: #fe3738;font-family: PingFangSC-Medium,PingFang SC
        }

        .hot_goods_list .listTmp .price .originPrice {
    text-decoration: line-through;height: .26rem;font-size: .2rem;font-family: PingFangSC-Regular,PingFang SC;color: #999;line-height: .26rem;margin-left: .05rem
        }

        .hot_goods_list .listTmp .price .currency {
    font-size: .24rem;font-weight: 500;font-family: PingFangSC-Medium,PingFang SC;color: #fe3738;margin: 0 .02rem 0 .06rem
        }


        .list-section{
    display: -webkit-flex;display: flex;-webkit-flex-wrap: wrap;flex-wrap: wrap;-webkit-justify-content: space-between;justify-content: space-between;padding: 0 1.87%;
        }
        .list-section .listTmp{
    width: 49%;background: #fff;border-radius: .08rem;margin-bottom: .14rem;box-sizing: border-box;
}
        .list-section .listTmp .productImg {
    border-radius: .08rem .08rem 0 0;position: relative
        }

        .list-section .listTmp .productImg img {width: 100%;height: 100%;border-radius: .08rem .08rem 0 0
        }

        .list-section .listTmp .productInfo {padding: .18rem .2rem .2rem;position: relative
        }

        .list-section .listTmp .title {width: 100%;white-space: nowrap;margin-bottom: .16rem;height: .36rem;font-size: .26rem;color: #333;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center;font-family: PingFangSC-Regular,PingFang SC;font-weight: 400
        }

        .list-section .listTmp .title span {margin-left: .05rem;overflow: hidden;text-overflow: ellipsis
        }

        .list-section .listTmp .price {font-size: .2rem;font-family: PingFangSC-Regular,PingFang SC;font-weight: 400;color: #666
        }

        .list-section .listTmp .price .juanPrice {font-size: .38rem;font-weight: 500;color: #fe3738;font-family: PingFangSC-Medium,PingFang SC
        }

        .list-section .listTmp .price .currency {font-size: .24rem;font-weight: 500;font-family: PingFangSC-Medium,PingFang SC;color: #fe3738;margin: 0 .02rem 0 .06rem
        }

        .list-section .listTmp .labels {margin-top: .05rem;display: -webkit-flex;display: flex;min-height: .24rem
        }

        .list-section .listTmp .scale {font-size: .2rem;color: #888;margin-top: .12rem;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center;font-family: PingFangSC-Regular,PingFang SC;font-weight: 400
        }

        .list-section .listTmp .scale .divider {width: .02rem;height: .18rem;background: #b3b3b3;margin: 0 .06rem
        }

        .list-section .listTmp .scale span:last-child {max-width: 2rem;overflow: hidden;text-overflow: ellipsis;white-space: nowrap
        }
        .list-section .listTmp .label {
    margin-top: .05rem;display: -webkit-flex;display: flex;min-height: .24rem
        }
        .list-section .listTmp .tag{
    font-size: .19rem;color: #ff6305;border-radius: .04rem;border: 1px solid #f57224;padding: 0 .08rem;height: .24rem;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center
        }
        .list-section .listTmp .coupon {
    height: .24rem;background: linear-gradient(90deg,#ff8873,#ff4f4f);border-radius: .04rem;display: inline-block;line-height: .24rem;padding: 0 .06rem 0 .02rem;font-size: .19rem;font-family: PingFangSC-Regular,PingFang SC;color: #fff;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center;width: -webkit-max-content;width: -moz-max-content;width: max-content
        }

        .list-section .listTmp .coupon span {
    display: inline-block;font-size: .18rem;font-family: PingFangSC-Regular,PingFang SC;font-weight: 400;color: #ff5351;line-height: .19rem;padding: 1px .04rem;background: #fff;border-radius: .02rem 0 0 .02rem;text-align: center;margin-right: .06rem
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
<!--    <header class="act_header">-->
<!--        <div></div>-->
<!--        <div class="centent"><img src="https://sr.ffquan.cn/dtk_www/20210226/c0s9jnv6vrka51tkv8qg0.png" alt=""></div>-->
<!--        <div class="share">-->
<!--        </div>-->
<!--    </header>-->
    <nav class="act_nav">
        <div id="nineSwiper" class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode swiper-container-ios">
            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                <span :class="'tab swiper-slide ' + (key == active ? 'active' :'') "  v-for="(item,key) in nav" :key="item.id" v-on:click="handleSwiperNav(key)"  >{{item.title}}</span>
            </div>
            <div class="swiper-pagination"></div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
        <div id="twoSwiper" v-if="twoNav && twoNav.length > 0" class="reclassify_swiper swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode swiper-container-ios">
            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                <span :class="'reclassify swiper-slide ' + (item.id == activeTwo ? 'active' :'')"  v-for="(item,key) in twoNav" :key="item.id" v-on:click="handleSwiperNav(active,item)"  >{{item.title}}</span>

            </div>
            <div class="swiper-pagination"></div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
    </nav>
<!--    <div :style="{ height: (twoNav && twoNav.length > 0) ? '2.3rem' : '1.6rem'}"></div>-->
    <div class="goods_hot" v-if="active == 0">
        <div class="bt">
            <div class="ti">
近1小时疯抢
            </div>
            <div class="pic_info">
                <ul class="pic_list">
                    <li><img src="" alt=""></li>
                    <li><img src="" alt=""></li>
                </ul>
                {{digitalAbbNumber({num:hotGoodsItem.robbingNum})}}人正在抢
</div>
        </div>
        <div class="hot_goods">
        <div class="hot_goods_list">
            <div class="listTmp swiper-slide" v-for="(data,key) in hotGoodsItem.goodsList" :key="key" v-on:click="handleCdetailFavorite(data)"  >
                <div class="productImg">
                    <img  :src="data.pic+'_310x310.jpg'"
                        class="fadeIn " height="200" width="200">

                         <div v-if="data.special && data.special.length < 9" class="topMsg" >{{data.special}}</div>


                    <div class="scale">疯抢{{digitalAbbNumber({num: data.xiaoliang})}}件</div>
                </div>
                <div>
                    <div class="title">{{data.dtitle}}</div>
                    <div class="price"><span class="currency">¥</span><span
                            class="juanPrice">{{data.jiage}}</span><span class="originPrice">¥{{data.yuanjia}}</span></div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <h3 class="h3bt"  v-if="active == 0"></h3>
    <div v-if="nav && nav[active]" style="min-height: 100vh;" class=" swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode swiper-container-ios">
            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                    <div class="swiper-slide list-section" v-if="i == active" v-for="(d,i) in nav" :key="i"  >

                            <div class="listTmp " v-for="(data,key) in d.lists" :key="key" v-on:click="handleCdetailFavorite(data)">
                                    <div class="productImg">
                                        <img :src="data.pic + '_310x310.jpg'" class="fadeIn " height="200" width="200">
                                    </div>
                                    <div class="productInfo">
                                        <div class="title">
                                            <div class="shoplabel ">
                                                <img src="">
                                            </div>
                                            <span>{{data.dtitle}}</span>
                                        </div>
                                        <div class="price">
                                            <span>券后</span>
                                            <span class="currency">¥</span>
                                            <span class="juanPrice">{{accSub({num: [data.yuanjia, data.quanJine]})}}</span>
                                        </div>
                                        <div class="label">
                                            <span class="tag" v-if="data.labelOne && data.labelOne!='' " style="color: rgb(255, 53, 96); border-color: rgb(255, 1, 55); margin-right: 10px;">{{data.labelOne}}</span>
                                            <div class="coupon">
                                                <span>券</span>{{data.quanJine}}元
</div>
                                        </div>
                                        <div class="scale"><span>已售{{digitalAbbNumber({num: data.xiaoliang})}}</span><span class="divider"></span><span>评论{{digitalAbbNumber({num: data.comment})}}</span></div>
                                    </div>
                                </div>
                    </div>


                <!-- <span :class="`reclassify swiper-slide ${item.id == activeTwo ? 'active' :''}`"  v-for="(item,key) in twoNav" :key="item.id" v-on:click="handleSwiperNavTwo(key,item)"  >{{item.title}}</span> -->

            </div>
            <div class="swiper-pagination"></div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
        <div ref="reference" class="loading">加载中...</div>

    <!-- <div class="list-section">
        <div class="listTmp" v-if="nav && nav[active]"  v-for="(data,key) in nav[active].lists" :key="key">
            <div class="productImg">
                <img v-lazy="`${data.pic}_310x310.jpg`" class="fadeIn " height="200" width="200">
            </div>
            <div class="productInfo">
                <div class="title">
                    <div class="shoplabel ">
                        <img src="">
                    </div>
                    <span>{{data.dtitle}}</span>
                </div>
                <div class="price">
                    <span>券后</span>
                    <span class="currency">¥</span>
                    <span class="juanPrice">{{accSub({num: [data.yuanjia, data.quanJine]})}}</span>
                </div>
                <div class="label">
                    <span class="tag" v-if="data.labelOne && data.labelOne!='' " style="color: rgb(255, 53, 96); border-color: rgb(255, 1, 55); margin-right: 10px;">{{data.labelOne}}</span>
                    <div class="coupon">
                        <span>券</span>{{data.quanJine}}元
</div>
                </div>
                <div class="scale"><span>已售{{digitalAbbNumber({num: data.xiaoliang})}}</span><span class="divider"></span><span>评论{{digitalAbbNumber({num: data.comment})}}</span></div>
            </div>
        </div>

    </div> -->

</div>
</body>

</html>
<script src="https://polyfill.io/v2/polyfill.min.js?features=IntersectionObserver"></script>
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
            active:0,
            twoNav:false,
            activeTwo:undefined,
            loading:false,
        },
        methods: {
        accSub:function(data){
            var num = data.num;
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
        digitalAbbNumber :function(data){
            var num = data.num || 0;
            var unit = unit;
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
                var swiperInit = new Swiper('#nineSwiper',swiperConfig);
                var twoSwiper = new Swiper('#twoSwiper',swiperConfig);
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
            $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/v1/page-goods-nine-cate',
                    type:"get",
                }).done(function(res){
                _this.nav = res.data.map(function(res){
                        var ret = res;
                        ret.page = 1;
                        return ret;
                    });
                _this.twoNav = res.data[0] && res.data[0].navList;
                _this.getGoodsList();
                setTimeout(function(){
                    _this.handleIntersectionObserver();
                },10)
                })
                $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/v1/page-goods-nine-top',
                    type:"get",
                }).done(function(res){
                _this.hotGoodsItem = res.data;
            })

            },

        handleSwiperNav:function(key,event){
            var _this = this;
            $(document).scrollTop(0);

            this.nav = this.nav.map(function(r,k){
                    // (r,k)=>({...r,...(k==key ? {page:1} : {})})
                    if(k == key){
                        r.page = 1;
                    }
                    return r;
                })

                var navEvent = this.nav[key];
                this.twoNav = navEvent.navList && navEvent.navList.length > 0 ? [].concat([{id:undefined,title:"全部"}],navEvent.navList) : [];
                this.activeTwo = event ? event.id : this.twoNav[0] ? this.twoNav[0].id : undefined ;
                this.active = key;
                setTimeout(function(){
                    _this.initSwiper();
                    _this.getGoodsList();
                },200)

            },
        handleSwiperNavTwo:function(key,event){
            this.activeTwo = event.id;
            this.getGoodsList();
        },
        handleCdetailFavorite: function (items) {
            if(_config.jumpGoodsUrl){
                _config.jumpGoodsUrl(items);
                return false;
            }
            var params = {
                site_id:this.sys.uid,

                        pid:this.sys.pid,
                        goodsid:items.goodsid,
                        need_tpwd:1,
                        gid:items.gid,
                        is_auto_quan:1,
                        d_title:items.title,
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
            var items = this.nav[this.active];
            // this.loading = false;
            if(items.totalCount && items.page > items.totalCount / 10){
                return false;
            }

            $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/v1/page-goods-nine',
                    type:"get",
                    data:{
                aid:_this.activeTwo,
                        cid: _this.activeTwo || items.id,
                        pageNo: items.page,
                        pageSize: 10,
                        app_key: _config.appKey,
                    }
                }).done(function(res){

                _this.nav = _this.nav.map(function(r,k){
                        var ret = r;
                        if(k == _this.active){
                            ret.lists = r.lists && items.page != 1 ? r.lists : [];
                            ret.lists = [].concat(ret.lists,res.data.data.lists);
                        }
                        ret.currentPage = res.data.data.currentPage;
                        ret.totalCount = res.data.data.totalCount;
                        ret.page = items.page+1;
                        return ret;
                    })

                    // debugger
                    // _this.nav = _this.nav.map((r,k)=>({...r,...(k == _this.active ? {
                    //     lists:[...(r.lists && items.page != 1 ? r.lists:[]),...res.data.data.lists],
                    //     currentPage:res.data.data.currentPage,
                    //     totalCount:res.data.data.totalCount,
                    //     page:items.page+1,
                    // }: {})
                    // }))
                    _this.loading = true;
                    // debugger
                    _this.sys = res.data && res.data.sys ? res.data.sys : null;
                })
            },
    },
        mounted: function () {
        this.getGoodsNineCate();

    },
    })
</script>
