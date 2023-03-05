<?php ?>
<!--
 * @Author: your name
* @Date: 2021-02-26 14:25:42
* @LastEditTime: 2021-04-09 16:24:10
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

    <link rel="stylesheet" href="/assets/css/message.css">
    <script type='text/javascript' src='/assets/js/message.min.js' id='message'></script>

    <script type="text/javascript" src="https://public.ffquan.cn/lib/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.staticfile.org/vue/2.6.11/vue.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/vue-lazyload.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/swiper/js/swiper.min.js"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/taobaoCode/taobaoCode.js?v=1.2.0"></script>
    <script type="text/javascript" src="https://public.ffquan.cn/lib/clipboard.min.js"></script>
    <script src="https://cdn.staticfile.org/moment.js/2.29.1/moment.min.js"></script>
    <link rel="stylesheet" href="https://public.ffquan.cn/lib/swiper/css/swiper.min.css">
    <title>实时疯抢榜</title>
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

        console.log(isApp);
        console.log(isWx);
        console.log(isIos);
        console.log(isH5);
        //     Qmsg.warning('右上角浏览器内打开',{
        //         html:true
        //     })

        var _config = {
    appKey: '<?php echo $dataoke_appkey; ?>',//此处替换成用户appKey
            jumpGoodsUrl: function (items) {   //默认直接转链
                // 0: 未知 1: 淘宝 2：天猫
                var platform = 0;

                if(items.mallDesc){
                    if(items.mallDesc == '淘宝'){
                        platform = 1;
                    }else if(items.mallDesc == '天猫'){
                        platform = 2;
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
body{
    margin: 0;padding: 0;
}
        a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;-webkit-tap-highlight-color:transparent;-webkit-tap-highlight-color:rgba(0,0,0,0);tap-highlight-color:transparent;box-sizing:border-box}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}html{font-family:Arial,PingFang SC,-apple-system,BlinkMacSystemFont,Segoe UI,Hiragino Sans GB,Microsoft YaHei,Helvetica Neue,Helvetica,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:"";content:none}
        .list-container{
    position: relative;
    padding-top: 10px;
        }
        .top-bg{
    width: 100%;position: absolute;top:0;
}
        .list-container .tit-img{
    width: 1.84rem;height: 0.36rem;position: relative;margin:.1rem auto .3rem;display: block;
        }
        .list-container .top-nav{
    position: relative;
}
        .list-container .top-nav .swiper-slide{
    padding: 0 .2rem;font-weight: 500;font-size: .3rem;color: hsla(0,0%,100%,.6);position: relative;width: auto;padding-bottom: 8px;
        }
        .list-container .top-nav .swiper-slide.act{
    color:#fff;
}
        .list-container .top-nav .swiper-slide.act::after{
    content: '';width: 50%;border-bottom: 2px solid #fff;position: absolute;bottom: 0px;left: 25%;
        }
        .list-container .updateTime{
    height: .4rem;background: rgba(255,129,70,.9);border-radius: .2rem;display: table;margin: .3rem auto;padding: 0 .2rem;font-size: .22rem;color: #fff;line-height: .4rem;
        }
        .list-container .topThree{
    display: -webkit-flex;display: flex;-webkit-justify-content: center;justify-content: center;
        }
        .list-container .topThree>div {
    width: 2.2rem;height: 3.4rem;background: #fff;border-radius: .14rem;padding: .1rem;position: relative;
        }
        .list-container .topThree>div:nth-child(2) {
-webkit-transform: scale(1.08);transform: scale(1.08);-webkit-transform-origin: bottom;transform-origin: bottom;margin: 0 .2rem;
        }
        .list-container .topThree>div  .productImg {
    position: relative; margin-bottom: .28rem;
        }

        .list-container .topThree>div  .productImg img {
    width: 2rem;height: 2rem;border-radius: .1rem;
        }

        .list-container .topThree>div .sales {
    width: 2rem;height: .34rem; border-radius: .17rem;text-align: center;background: linear-gradient(270deg,#ffa700,#ff4728);box-shadow: 0 0.04rem 0.08rem 0 rgba(255,133,0,.4);
            line-height: .34rem;padding: 0 .18rem;font-size: .2rem;font-family: PingFangSC-Regular,PingFang SC;color: #fff;position: absolute;bottom: -.15rem;
        }

        .list-container .topThree>div  .title {
    white-space: nowrap;text-overflow: ellipsis;overflow: hidden;height: .34rem;font-size: .24rem;font-family: PingFangSC-Regular,PingFang SC;
            color: #333;line-height: .34rem;margin-bottom: .05rem;
        }

        .list-container .topThree>div  .price {
    font-size: .2rem;font-family: PingFangSC-Regular,PingFang SC;color: #fe3738;
        }

        .list-container .topThree>div .currency {
    font-size: .24rem;font-weight: 500;font-family: PingFangSC-Medium,PingFang SC;color: #fe3738;margin: 0 .02rem 0 .06rem;
        }

        .list-container .topThree>div .juanPrice{
    font-size: .34rem;font-weight: 500;color: #fe3738;margin-right: .04rem;font-family: PingFangSC-Medium,PingFang SC;
        }

        .list-container .topThree>div .top{
    width: .46rem;height: .56rem;position: absolute;left: .1rem;top: -.05rem;
        }
        .list-container .topThree>div .top1{
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAA6CAYAAADybArcAAAHi0lEQ…Ob+CHwGmMcUU8zyv9Bk5+SSxFfQ9iKYkMMkRMonlffo/nfFXjFsJKeCaEAAAAASUVORK5CYII=) no-repeat 50%;
            background-size: 100%;
        }
        .list-container .topThree>div .top2 {
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAA4CAYAAACCNsqxAAAHnUlEQ…nzBJLFlsbvxWST+DYHuY6XfIG5mPwQwQILeD2Cx8RaWv8PpV9fimlJ+gQAAAAASUVORK5CYII=) no-repeat 50%;
            background-size: 100%;
        }
        .list-container .topThree>div .top3{
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAA4CAYAAACCNsqxAAAH3ElEQ…DMBiTLTYv/NwZbxHc4wjUs8iWqMfgRgmWm4HUI1otH6PgfnT2F8XyX3WAAAAAASUVORK5CYII=) no-repeat 50%;
            background-size: 100%;
        }

        .list-container .lists li {
    width: 7.1rem;height: 2.4rem;background: #fff;border-radius: .16rem;padding: .1rem;margin: .2rem auto 0;
        }

        .list-container .lists li .productImg{
    float: left;margin-right: .2rem;position: relative;
        }

        .list-container .lists li .productImg .imgPerch {
    width: 2.2rem;height: 2.2rem;border-radius: .1rem;
        }

        .list-container .lists li .productImg img {
    width: 2.2rem;height: 2.2rem;border-radius: .1rem;
        }

        .list-container .lists li .productImg .top{
    width: .5rem;height: .7rem;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAA0CAMAAADCKvr4AAABrVBMVEUAAAD/AAD/f3//Zmb/gGb/b2T/emT/aWH/eGH/f2n/Zmb/fGb/hmX/mmv/oWv/c2f/eWf/a2L/eWL/Z2P/gGf/aWX/fmX/cWT/d2T/e2X/amT/b2T/eGT/aWP/e2X/dmT/dmb/dGX/d2X/bWP/e2X/g2b/hmf/nGn/cGX/eGX/a2T/e2X/ZmT/f2X/dGX/d2X/bmT/eGX/Z2T/fWb/aGT/fGX/cmX/eGX/hGb/nGj/bGP/emb/gmb/hWf/nGj/aGT/gGb/cGT/eGX/Z2T/fmb/aWP/emX/ZmP/Z2P/Z2T/aGP/aGT/aWP/aWT/amT/a2T/bGT/bWT/bmT/b2T/cGT/cWT/cmT/c2T/c2X/dGT/dGX/dWT/dWX/dmT/dmX/d2T/d2X/eGX/eWX/emX/e2X/fGX/fWX/fmX/f2X/gGX/gGb/gWX/gWb/gmX/gmb/g2X/g2b/hGX/hGb/hWb/hmb/h2b/iGb/iWb/imb/i2b/jGb/jWb/jWf/jmb/jmf/j2b/j2f/kGb/kGf/kWb/kWf/kmf/k2f/lGf/lWf/lmf/l2f/mGf/mWf/mmf/m2fu0pAeAAAAR3RSTlMAAQQKChcXIiIiIyMmJiYqKjk5Pj5JSU9PXV51dYODioqLi5qara2tsbG/v8DAysrW1tzc4eHo6O7u8fHx8fH29/r6+/v+/tE6UUEAAALTSURBVEjHlZbLil1FFIa/ZUpyAW9tOoegImYmOgg+gW/gyKlv5GsFHCUDCQ5tpQ2dQ7c2KIJx/b+Dql2X3UG0zmhXrb1qrf+y9gnefnj4CmNs2k+RIQth0/e/u/jl93jr86+9i8YZiYRp0W37yfe3PvlmjTa2ERLs0vjDF+XQt+opCiOhrYot1mEd4tu6Nd2ZkQjtC5RtlXHVtqtQzE3WAyWhKLWGKUeQZG8Sg7FwOMky34exW93LpVuFLvOJbW8A9miwnWGEmbLXF8QNAJFqbjy3mqEp94asZdOiXUbmGFR6ajXDFqrPpXOkSk5DoxckktF8K0ZYe8rBtkIKxfbccW9IecdDZJCo3deQychI0TgZ0RlZC9zeLmzRcEPIGVlx7wIstk3WC9c2M8SaG5fWZo8e6sFbO6P9YoUqwSwmSUJzdMNdZCNhBRF10Xdd4lLrYzYfqvxq50rkNwiE7VkpkbJCU17b4HBZNNXulCLJOXejXpPeh6HUFTgJDlkULXpn09UCYM1t06ztQV2GquR2nk+EVcbrYNS0NmhvZrWI1Kb3gbs2Aa4zqfKw6Z1u1T3cXdxa9F7r3SbjMktUZTz0vk3BKrVVVRixXTnjLtaJRLPO5OHiLojVUH02RsZoZ8PdEhnchHtkNrQ5Q4YIcke7yUCRY+5U3FOxzMaGe6IQORmy1G6wbsKtWsxsp0LHdc5bVbLyUHEXiv5NZMhNkdFhHXOmz9f1RB6VDCaKpvk6GwonWjIYU3L+NnfcZdUiZ5OACnrNvHt67Xc+i6nEhnsUkV4+/Tw/Xv0GnJ2cfsw6CK0ilip+fPHrSwFwfX129t7Dk0nGyPHlp9N/hKfHl38xrzcfnD6q5wpLf5bLTtsPF1dX7Nar8/Ozk8MpdbBxGfcfP8L4p/Or49+8ft06vPvBHdl+9Sx48NEXPLu4/IN/W/feP9z38ecjEHfv8B/W7dv87/UPTd+XB6c88FYAAAAASUVORK5CYII=) no-repeat 50%;
            background-size: .5rem .7rem;position: absolute;top: 0;left: 0;display: -webkit-flex;display: flex;-webkit-flex-direction: column;
            flex-direction: column;-webkit-align-items: center;align-items: center;color: #fff;padding-top: .02rem;line-height: .27rem;
        }
        .list-container .lists li .productImg .top span {
    font-size: .16rem;font-family: ArialMT;
        }
        .list-container .lists li .title{
    height: .36rem;font-size: .26rem;font-family: PingFangSC-Regular,PingFang SC;color: #333;line-height: .36rem;overflow: hidden;text-overflow: ellipsis;
            white-space: nowrap; margin-bottom: .22rem;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center;
        }
        .list-container .lists li .title .shoplabel {
    height: .26rem;float: left;
        }

        .list-container .lists li .title .shoplabel img {
    height: 100%;display: block;
}
        .list-container .lists li .title span {
    overflow: hidden;text-overflow: ellipsis;white-space: nowrap;margin-left: .05rem;
        }

        .list-container .lists li .lable{
    display: -webkit-flex;display: flex;-webkit-flex-direction: row;flex-direction: row;-webkit-flex-wrap: nowrap;flex-wrap: nowrap;-webkit-align-items: center;
            align-items: center;-webkit-justify-content: flex-start;justify-content: flex-start;
        }

        .list-container .lists li .lable .coupon{
    height: .3rem;background: linear-gradient(90deg,#ff8873,#ff4f4f);border-radius: .04rem;display: inline-block;line-height: .3rem;padding: 0 .06rem 0 .02rem;
            font-size: .19rem;font-family: PingFangSC-Regular,PingFang SC;color: #fff;display: -webkit-flex;display: flex;-webkit-align-items: center;align-items: center;
            width: -webkit-max-content;width: -moz-max-content;width: max-content;
        }

        .list-container .lists li .lable .coupon span {
    display: inline-block;font-size: .18rem;font-family: PingFangSC-Regular,PingFang SC;font-weight: 400;color: #ff5351;line-height: .19rem;padding: 2px .04rem;background: #fff;
            border-radius: .02rem 0 0 .02rem;text-align: center;margin-right: .06rem;
        }

        .list-container .lists li .price{
    font-size: .2rem;font-family: PingFangSC-Regular,PingFang SC;color: #fe3738;
        }

        .list-container .lists li .price .currency{
    font-size: .24rem;font-weight: 500;font-family: PingFangSC-Medium,PingFang SC;color: #fe3738;margin: 0 .02rem 0 .06rem;
        }

        .list-container .lists li .price .juanPrice {
    font-size: .34rem;font-weight: 500;color: #fe3738;margin-right: .04rem;font-family: PingFangSC-Medium,PingFang SC;
        }
        .list-container .lists li .price .originPrice {
    text-decoration: line-through;height: .26rem;font-size: .2rem;font-family: PingFangSC-Regular,PingFang SC;color: #999;line-height: .26rem;margin-left: .1rem;
        }

        .list-container .lists li .btn{
    width: 4.4rem;height: .56rem;background: #ffeee6;border-radius: 0 2rem 2rem 0;margin-left: 2.4rem;font-size: .22rem;font-family: PingFangSC-Regular,PingFang SC;color: #893c11;
            line-height: .56rem;padding-left: .22rem;position: relative;
        }

        .list-container .lists li .btn span {
    height: .36rem;font-size: .26rem;font-family: PingFangSC-Medium,PingFang SC;font-weight: 500;color: #ff5b00;line-height: .36rem;margin: 0 .04rem;display: inline-block;
        }

        .list-container .lists li .btn .suffix{
    background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKQAAABICAYAAAB4M164AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAApKADAAQAAAABAAAASAAAAADMQLJYAAAhqUlEQVR4Ae1dW8xlSVWu81+6e7rn0jNDD2TApJGrTMAEImhGiUDU6CsZXiUaefDFxCdDTEATefABE0hQ0MT4YDBiwgPGBEkICkpCREUciAyXEbAz0NNz6Xv/l3P8vlVrrbNq7ar9/91zY4auP/vUqnX51qraa9feu/Y+51+Up7GsVmXxNMLdhHqORmCxKKvnyHXZeqqOu0n4B4PEfHDAf6pB3LS//hG4b5x02Kfd8mwk6g3PaJNEtCS0pLsvJN+ZQHe7epP5nI/AvSFBH1Q6Ju37glyDfSYS9OlJSCYjE1GTcPG+ss+Yw4G29vOJ60jOTzznu+mZDYD9ewDbs9/PsGu8iyvsJOevHiib5c6yUZioOUFTcj6diblOFI/rYKKZHVMylgdPHSvnTn6sLDZOl+VygS7VQk/mTWr0PcqoZfINyIzOtdgsISfBmoYom7WSz0WwNx8UmC5r4wtP9U1uMsOnrw34skI9tyOR+mI4Vhue2ygQ+abD2uQkJmOg/rMNocxuQwi0EQ+ZrIf6UKlxXS2L5UUony+LxXcxpt8oq9XD5cLyofL+x84AZSko78EI5+R8BhJTe8BeHb54QsZkfBDdewAz40d/8o1lufX5srE4KohxcOjNNu5E8248q2loSZV1zG6iC4b4Uh+CYTR9Qc6dHPmCrXEIrfqZz3YjDzgZT3SDfGJLg+CzkSs/Ygp9gH4Tm+GDGcfD/Ihux4/JOUa73MOL7yDOr2FS+cdypXymvPfcQ1DZX72nbEtifg5+TqEjPK0/jYkp4bEL11MkIXMynkBC/lrZLX/2qt/Cnv9TOa6kk4PO02E36aBvR7cNkujyAzKZBTqYoqN865XZN23io0xkyq+zxlpOn6Yb7SQWQRrI6SPbdnzH2KKvxidxVHGCqX5ibBEzJ6XraWzeJoFCW45B3Jblh5g1P1d2yl+WL579p8UnyhWc0o/glL4qj/M0gpIS80ZP4zb8gnmYD58daxC8dtwoTMZ9TOlfw9GzWr2t4ujgHwo0Kckg6qhGGO4UBNAv5KtNVhATfqhtVFOWmJDvbScy2ro9q6LCRgcOou81UqUs6Yzf2JI5YajmLCh0BvIRHPk8Ue9h22VjdU/ZXryrHF19qrzt1CdXf3Lnr5azSMSPSTJuyr0D7yE4SWlhnjS5YoID6utOSMGz2ZF3zy/BdgQJuY3tSydfXFaLN9VxY2zszCGKd0N1xeyQtg6fQVyA/UGsIJ9ATxjVOCZ/o9I0giOSkNHO3FmdtKQ5gZkwelYd3kF2B8kzZNLnHLhD3mILC4W/Um7Z+mR54O6Plg/c9grckO1CsCE3QKzfhS0lZkafa99YQhKRd9SPY3sEAexhdrwLR8vera9D0C/rzmJxx6T+zgXoO5ZKMUGykeDPAQ9kMa4GE4I8Y7l8aKQakA/crTPVwdbErA2EB7k1pAanaZhGrXP/HN+JVp9QnDFXq6Pl6MZvlLuOfbp86NQ7y/txfmQu8GzJvOjMli3QuHXjCUlMzo7HEMQFbPzbPfIz2Il6M5OczozLdOcNBiQPYHLRb3IATdLDdaEpresoyqY5lpEu+VHGhmGxbmQmWIfgVMZxOydc1fHJyWJ34cTaLuuuJS1FPc6YG+V0Obb66/KRu/+wnDp1pHwb3p5iUl5XQvo1AY8Anq4vYLtNur9ZvleOltXmL3jkc52TUygVdFCasWFjxth0Z1Q8BiPE5gDcRjeHYE5NCc5ltlZ+E0vyk00J0eij7TceWRD85QPARBzDbOZtELTr2kLmeg6mhAk0eGuKNPjbF4wjmC3fW16//HD5pTtulaQ8hzMm1zBvYKa8roSUeHh9YKdrXjs+ie12SC6cfCmuH3GvpdFrX2rScVC0r9YpqVU3djjS0cRoLt+yNHhk0JDMLEBbbDq+aJZtzL/AWEMUwweEspNVTl3RDypDMil6M2CZrctIjGIBv5twBjKyA6bjq663QUQz51MvCrTJm59ji3eXl2/9eXnr7beVz0LpKPKik5TqaVhdf0IaFE/XV7DxZmYf14/XTvL68SUmrjV7gmCZpKkfrV5oSefDCEzsJozqw0f3AHmAFq+i3rMJMU2Cp36wSc1oKXT2GRXElgq2ReEM3WCGWBoTVbJJopGxMbIDX0x78sZxRaQab22OLN5ZXr39wfJ2XMh9FQidpEQoHYAKw89DJ6QDxdM1k/EStiWm6P2Nt2CNcP2eSOxLN4TADORkkKKMA9udDaAk/qLTdSfXNhFM5cJSPs2jSvblMhBRl3yXEXfCIBMFRjk5oh1lxO2WEWYEUMMOyyEd3wkXrX13ACIrjwsRCLeH7dji18t9d75XloV4w3svBiPd6Hgu0S6VQydkY8c7qkvYrmHbgtMrOCL2Nn+uGWy7LmoMc0N72YwNeHGZJso4EHmHOiQV46i5QHcy5QoW1Rr8tYrrBpiGlFgiUCNdA0V8xjdnknd0Y0v8CUOdzoJCpycHbwQnqMlGdGcNgAc5ryu3N363/Pad78SS0B6uIzf9RkejZTVKyutLSLt+tLtrzpBYCi8X7zmNTr+y6WC8bguBtKR2MPW94ow6n5UNccSHPCY41SfQE0YFjclPFVcDQVn3oDNZhejmgorWeAOGd8kdm2Kqb0Q+Z0PZSD4nQ8B4fQFnpO1yZOOPyx/d+ppyEedPPjjh3TfPyGGNMnVCmteXkIbAu+ur2HawnYDD3WOvw8sOd41nLxj64IIe9VXwk7CxmxkM0Uu2Fq84H8jELjoxI/DyjGUi68wAUjo7J3OcRGQbbzM+NHphCkQSuB2FTUO0/SP3z2GccNVKjPimRl/YOEsexXr0qaO/V/4P59AzmCU5iXFlJtx592bJQyWkG9r1I0/XXO7h6ZqPDPe275fZIsYbacY7My5TWTbWDucBVPZ8Bcfuu4frwimMzJBqk01zLBEm6pIfZWyYnHUjM8E0FNGLuk47sTaKMLYqYVKXTZynWMzggLpxD0zD5wL6Fp7b/ObJX8ZS0F55GHli15MzkIdKSLG3qZbXj3di42L4FWznj91alhv1cWEMLtIEsECFppCbMqNMeNmYRlpMd0bFVL0WG34cwmiCH+J0QPBisjaw5keBWBmm2Ud9kSujewlAI8jzAWBYBI94ql7FtAPVtYUs2zmmCTRwa4o8+RN8N6Sz2qDNFk7dxzd/p7y5HJcHKA8jXw6YJQ+fkHTDuyVb7jkB+nbMj4/d9SpcGrx80jmNS0ekBumfJtSexg5HmvqTttoahGNSkcwsQFswFGiEZzgmzzAmlxpC2cmqTN2JvgFBFsiOoiJTibjaZOU0iQYkKIHveoHt5MgORjlRHQdENHM+QaPAnShBWZBzfXK73F/efMfbyxeRK1y35lIQ82hQri8h7ekMrx+53MOyf/QN6NgJCSS6kbjIAMHZRNpiMf8hGBEoq/eAyDObA+Sm1sD2bKJClrMdeKkZLYXu+lQtsaVCRym4mMccKSqmzOYTBDBGduCLaU/eidOhk4wvZWzgxH1i693l9UhNvvPApSDe4IRrSTcX9djq0OhL9UIAlnj9yPXHvc2fd7Ne/BSmOKt+YAZyMkhRxoHNR7WAQUl8DwJwmwhWo6ixKZ/mUcXtoi5p9We6rI0W1QlDuBJkTo5oR1nsQpSJg4ahmB1eh6XKAT86WodXqQ5AZOVxiVCRpg2/zLK1ur+89fhryvdxA8x3H3iWDbOk5xhUDzdD9q4fGfmjt92N68c3+N11E3SMjMq9ogaNKnhxmSbKOBB5hzosFWMALtCdQLmCRbUGf63iugGmISWWCNRI10ARn/HNmcztaIFvwILDWVDo9eTgjeAEOdmI7qxBiEdJqnOW3FrcWU4efQdmR57C+TLO5I5bLQ6ZkNTO14/H4erKydegsy8zsKaD+e7OlUB4v5RIfa9yV4qWoLOyiUd8mhAryCfQE0YFjclPFVcDQdnoJkRkFSK6rZzriMNV3bGC5upG5HM2lB0kzzFY24M2Rq23Fu/AK4rbcjPMa8nBHffhZkieru36kcs9dv24u/1GnEKPzM9aGtcgzjZqttJARDtJkCQ3ANEbyCQrBjKxi04CYJ6xTGRZ1oUkE3hdmQP0iWzjbcaHRi9MQUoCt6OwaYi2f+T+OYwTrloJ8mfwRBbkBlOvJV9bfvHWl+G9yYJtA8tA6ztuouql4WxCmpIEY48L+XYP1x8vI9uXW/eLzEbKAiAz0myHONlsykSWjVU7D2ADMmoA3PF7uC6cAsgBoDbZNMcSYaIu+VHGhslZNzITTEMRvajrtBNrowiTz1QumzhPsazhZqnGPTAdP1gxIbkKefviFXhNcSlr2LwXYU6lMpuQomuPC+9Di+uPfDrDx4VPnOKXIl/XzI4xuEgTKLr2U50yo6xRlAjaD9PN+K1W2xIbfhzCaIJPG2MaLHgxWY0ttelqzcpYphfDiHIfF1MMdT4AXASAiOd8EhAIfg5AZXN2EafRS1iCH5WTXF3hOhJLPpuncZNT17CZS8wpXgraPQqaByek+ToHQ061vCjl48Krx38KvX2xiSeD4nFNIoYJeeyl9jR2WOjACKT4siPe8YWrWANfEXOEF2FIT/BNQYWSIAGs0Sc/yALZBzZ9gEScSEc8DaFGBNtGr3XdxFEN9JO+kqE3QUjMynA+TSEQWQMWGkkYbbcWr8Qd9qbkEHOJOZXKwb/tw+tHmxl5/bgHIKbx/tZb0KENmSkIa5s5YFziLnRg4t6UQy06/Egdc5Ue350N7EyOuhtDD9MddjChb5BUM/MuNuQjvttCoacTfVB3WCyArEBQyDibT/BHNsQw/Z6OYmZXozYh7KZyY/FSWRi/Al592lffGKunbnE2TMjJ9eNVpOHt6NYS2zmsuS83f3bayRyVBj8ZDOqFjk3kYSCijANr38tuXEHJO94IasNnguDT1ARf+cSI54zhLKj6Ygsb1kYLrjVCP4SPtsQpjfphqmzJZQBq41ktmtbImORnnhj0P7L/qOWyDqa5F/0kdzsII+3Y0Ce/4OpxByN8DC2+usjLP15LhhKHP7CVtOtHLmSexGavm527B48KMf2Kl+ppYjx3PeTKGkuGEHZHxgSxneYYRnRHogoFnx/qSKFFqCyhyY9tYQ4+JJYIFPQEQ4EaPOgPTMTaDxzFamzJmzBUMYGmZt8plEZwgppAom4SaRDTKtpQynfDuOSzB4rJyFkyleEM2ejZ62bbALgDc+T+CbxuttDXzYipnlmZC17rGU2wSLue2kUZdUWuMrabQuWOLO/MaCP4wU7wo0KPhlLW87bKhocz5NYnq91FiMN5RtBBKG6b+EHlYHLkjzHOyLrAjGNkYwZBTlKK2cGYNzXHsN2iIt7YELTe2Ky6Q+qna1t/5LTK68cVLkj5utkulnvEGTtFZ6MyJzukjXcK+jI7zmHegCziNyFBEJO8gVajhmfGZELelZmO1hOdFIzLlZ/ECW3ddDuymsZap0c5vhNJi/w5PMp6csVb4QR9XCE5Q/I7WenGppuQYmK34vF1Mwri62Y1K8FUh7EfkaZdL07yuyUbq9IwQbogiUnMAW7SlKaMLT/UJpvGWGgQ+xd1I9+ATW618BOG8azmGSdiRdp0rI64tioxkVEpgaSmmczWjQ0wo+9suFpdkhnSTtlJzolwnJBUjo8Lef3Ix4Xyulk5XTuDaGJAI5pYMVCfVSOTSiw9XpVU8QHyoFrJuaCoEeVoTuApz0zwZLYOfCeN0NqadGUluXR4HxdTDHUPx8QZz/jsG+3ywSNy9sEVE5EETTMFIvjRPMlNRPZSnmYbp1uPryHzcg/vivj9651bfhodvFV2CDsq/rVzMb09LiW4Axte6CVJkwk9kLELpmv65EkxARvBnsDRd1QTVchjIphc8PlBRsSjkdko38RiQ7kxSKOw6TLDFImqQkHk+IixuE3CU9NamW1guj/15e2gI31gO2C7PxAyZmrvfNXPeN4OWOZKbFVhZ/lt3F13lEyZL5mngjjW7uv60ALfueVXXbmBxutma431YEeeY5IJ/xqPs+cIwVE76k1we/2hDyjGnTnxoZgZL7cndj1GL4aenvIO9GEKCZdNEwkR5M6f8XugKOBR1/2BEPwgd38kAv8gH1TlUt3ealkur77n15ADu0lCip4t97DBlyoY3lVE8cTdp0DjdTMKOoV8CzzSxmtMyFSgRm6GQW52PGpH65Cm06vllGW46rPRU18UdWd5VfY4QUgsge8y8qyRfaFNlomjKmlTN7nVlEkhw5SU5WCBP2fn/oO+QXnd8+NCxD8jd/ygzzHdW/ygPL77MBZ+NjEN7uJzhevJpgC2f5ftWrwD4iOei9j4uPDC8Vdjj+F1s9iZSLslgh7wg4rvmawabaOMA8FE6BbyJ3uiarqJElHNZWrubSfW3iJLYolAa7U6PqocbRjfyITmsqMDTmNL/oQRlEfkyCH4s3DJTnTNwOqRT+WbGqGWy2+W/77yCBKxHvJ4RwxLP6tydxtFnA+4r2sUttzD9Ucu9/DtHt6m7x55Ez75akUtUqfAVdT8no7xJrUCZQhhm5NgNOcPgQ1HWBI8OJlATxjVaUz+RgUNyuKB42FShoa5s9rlgaBeUxJjznbOLsH0x2WiFBApG8lHfDPvBE3W5eW/YF6sMyPPtnwNjeVB2fxnoZuEFIW43MNVdd7M7EoabuHrCvc3cXKHxJ0SY4k0gWP7oD5F5WgnvgbGUU86kj+u1w6AecZySJUNIMVuJGPfRrFmG2/TAI1o5zIPak1EvWaHQSXKcv9c5sQaU6gRP6jlfGCG7Zbz5ezu5/Ecm09oVpjgVnhiw6Sc9GKakMTOyz2cE7/zIpyqF3jDJxYEKJCdQLOr2M7qURbhJ3QwPLQNFEWXtsHesQdAZMsMqTbZNM6exBrACL+RoWFtYhpNjG58IoAelBtd5feZJqx261agJs4H+MFEyDQQTUxJRn3+d4y95ZfL1y8/hCc0m0hKvCmGoPHjjbgMXOHxYYPQT0h7O9y+XciE3Dn2WkDjJ5ujvdFaW5OB5NiaNhW5NUxa6QBGoMr2TzuqO6au0yXU5wy0mBmu1PzoxWk8VbamAwSG4XVjUqbNKlZPdIE3lEGZ7mLxttrZmEUdGuVFc5cbQOify0CYmDyqNH1sGvyS1xI3M3+Hry7s4WIPj52x3YLtAlBuw8a3avmD+Vo8IZFnFYnXjyz2uPAWtPnsce8o3u7JC+lQtc4SMsUiOMKEwF2Sa4oNs6rnz6yS265PAXEN2wS5bXyt807p4mcmMCVBAj+QFXnCUIedeESVH8RVNVaRDuwJOdRTQTOJmDVk2c7bIGL4zqdtFCiWs0h4g1/u4i/t/nt58OIXMBNuwN8+0hI/vYPtTmzphoZo7bJPvH7kmxi8w95C/UNOsJtvib40lOqfATdBo824JFlBCO0W84Tg8EM7lnGN36DQBxTnZhEJEHoZL7czbtO2Bv2BjraRNjWrGxkNczGFhNv4oE6wNZMMdVDbMQPWxAYywQ867i/FQVuXgTZ88vZX+CGJvb/CT/NdklOzzY5bSEZeP9Ybm1X523XHfIYkrpR4/XgCrvi48Il7T+NXrV7Vnq7NINQh/sBtA3ZB6EUga4+sV65cCR7pNiM3ogagkUjDDoxm5KKa2me32Ze7UcLaVjskGRMmeHBAH7FEtTmZ2ERlA+n4mqhNGGbc1u7/AP08Lm4X4Dg7Xll9pnzp/OfwhI9XknzPp86QPF13rh9p3c6Q5PD6kUs8XO45ixnyRTDeO4o0xXdrbepv4mU0ZKCOfJmtIoPguaidQZhYzLSXUcaBkKQ0xVibotr1RJYNMSwzo76GU/sRBRFMaYmFNh1/5oeqDQwcdPUD5tDWwFT30FXsbDQCfziW1LPBUBvph3Wm1+eAvQnbneWj5buXPoIU5G/r7uNGhu+J8ete9XR9r9D1GhJMDKeASkIirhp1vX4kXR8Xcv0RX1Iouxv1dTOLI8YlR4sKjA+AegoloaV6sJbWatfI0BgNlOBTWe0iWowj8kn7waF2ghOVOngUxzhMRWJFg+3p+aWCRlnTN4pD/NRr5GSE0sgCf0Imu4Nwxd6Ukq3LJk4OZhCKybjCY8LH9j9YvnbtIbw/y1/W5TOZut2GRNzBdgYjyNN2fR/SsddDGh8X2ndoqPbDY7fjgc4bezkgOzoe8XEAhe51FpgDdo2KwgAUyJpYs8YVovs5sIv4jR0EkuQNUxsq60KCSbuubG3eQ53c9ToGgyRusHJZ4BkZ9XIgURZp2nrbCUPUmvwZxxTz5Hxx+fHyr0/+PW6G8a9ikI472PCjO5BwvuTXYNd31+n/JK4TEtpS+HUF+zF7Xj+ev+sVmArwlYVeIIhA2J0OZPXYzupRZnF062B4aBsoii5tg73jD4DIlj6rTTbN4zGAEd+NDA1rE9Noj2dAPB/WIbfRoYv7ny7/dvHDcmZlAloikubseBXbI+i1/ctjdBfHr4/C+hqSp2ubGfnuI9cg+SXXa/K6GS5B3SaMmPG0ZmU7zmrTbtqmSCboKDvobtlOzdHGfIxq0e3E2NM3XKn5YbGqvdgYjw3QbPqhHQEgsKbYDT7skiKebRrVORw44L7p+iEfAhuzjDkca9hJIShoNrv4yqdsG9ul5RfKf174QDm/dxmzI++pd2SGtKTcAu8l4OIXoaDtjwtBe9lAX9au+LoZ1x/tx+z5kyn8dTOLz82MgKl0Fu1h0IRfu6iWbNNAgYf4a5Vq12k3goGvWfwU25yu+4KNJE9QDmTTN7cxIvkztg1gFEfa9ZRwGRzbPjCdSSwmiDUAHCNjQhAxGj0IsozT2gX8G+OvnP/9cnbvCdwqL/HH59Z7oLkgXk/XvHa8hi3MjjEi0nWGjNeP30IS8o2MJdyevfUefL4hGzVtBseAm6DRNj4J60DWaYC0ITr8UKOJjYFFY/qA4nCGoa5iZrzcjrAWg9cmpD+FNNYcTiPrxC+xEyjhNj4I0rEV/yO+2sQZ1DFHNhqHxBx0vA8hjnpWWJYn9/+mfPnCR8rlvYvyFGYTM+NVJCQXefANLDy35l32EjcwdWbk0xm9dsSxFJxYQkqn8GFfuOGyD79deOb2V2NH/8R4IMxQa++s8TV474zxWYeONXKLL8jNjAP7rL4PmWLwOJVvbastTj86rS8mQJusqB/pOZlAUDljGkDmm0/WPbsoV9r9H6DPGZmn6F1kzGPXPlT+4/w/8FwqiYcFH2TOLtavd5CGvKXZh2y/nMY2uLOOkdQZMl8/LgDBL3Pv3vImJACeQKbOMl4v1gvUkW/XRa7XI2gAO4MwFcEhEyXKOBDxaK8a+mmKahdlJhIwCGKcLlO+t52ISGtaYqEN9VKJMTYwcNzTN3NiWozkNbbGYH1Aif1rOhvtoBTjjCKhO7FwRmTG8IR8cfnZ8r3Lf1G+eeUb8hY4VqslEZmmnCGvoX0CGxOS31XljQyfWc/MjnRbE5KUfV3hCHrAryo8Chi+btYrNlBSh8CNTxs/DSlAHCTXI4ESZWyMBir7q9b1M+/MRmYO1Z81XUf53lYixmEqEisabPuNTDZE2/pktauQoWCsGrnyTXdOZjpSJ7uDcM1mOGYJj3HwycsSA3Jt9V/l0WsfL1+/8M9Is2s4RfOkuwMNblwErzPjCdCPQeMotkvIqHq6XtqpGnrdsqVf0K7C+vya7nFdcIqvm/ENn3Hh0R4HbUKnjo2RgsRGU20bzBvBM+iBbcQ3VakhEFnPTmUxYd0W+jJ7snZmS4z4+TqYrkWXHwnPZS20tBp8KobSyAKfpMtA8GBjm+uKu/j66tX9r5Rze58qD1/6YrmAa0W+cMM84UojT9F8vmcJyZsYnqb5JYX7sFGPNzJhERxDlAKDFkqdIfn8muWMfPL/YO+Vrx6H+eJe4ciRpDKraGFHmNBsqzDWJqNI6DCwtJ/IDSPLaIdRslMe7VhkljLMYGO4op/4tDO57OggN5nUxO3IPAaVmY1hSs0PFOM5rZjeJqHxiwk+zEbaEMuBr/xoJ/IQI2U2awsGZAQTmkIUo62OcvJoz398tI/rw+Xyf8uV/S+VcztfLN+/9C3cmNQZke8y8rTM0/QeknFbk5KtO0AfR30WCKeRiOvrxuGNDMOysj5l84aGC+IsXPZZbd2LgfgfOX2u8N2bhcrYpfpXMWznsMX+s0MVBTUZnWLyiQg3Yfyaz4I3YyjRXGzAII+01VSVNhisRU/lpoPmWqZ6xmO8opf4Jo+1940GKNGf0MQgoXLXN10GSybqaGt6cbwoZ4l6Jqc+SyPTtvFZb8z1iTECYGPFmxDs+dVlfDPwkbK3/92ys3+mPLn3nfKDKz+AZEfe7t6EMhORsyBvYJiIXNbhQ2b+cXnnDmyXsCGVC5ORSzyPY+O14+CummHGsli9X0aIv9W3CYBNAGwDnJPuUaF4FYB/PAsav3gGCTfe9HDjGmZcx4zIPy40V9hYeGgbLYwf0Y98qmSbe5JpuZJtH3Mbv2LA3wLlscWjqD6HZiLyCpE1Z0XeQ9s64xXQ+Besurxjd9RNMnJEcLzq0crWtKxnSL4syVP2EdT8iiLfzGAofMuXmc5VpVpWImVK/rgnI8djPYItrYP1I19xL/JA4rcCSHMvc4UFayygmQNtQtb/NlOfTzNR+YuhTGE+meHdtEz/sKkvTvjMyHE4KBmpsx5OfvuLxwMffHMRk+A8AjhV81fPeNTUS1xyeIzYiUMMb348T0eAs2P9jnSdKfkFrJqG9XzIPc/ErKfn+k5jfa+x3rTwvMC3v3k3XZd27AbmupORI1gTkndA/LINL1PrPROD2cdWT851buSRwmc49RcseAFC+c3y/BoBJiAL74m5vFf3Zv3S1TXw7J1FzpicAXe15rdh2Ob3YXgHzRdvWHPiuhc0b154rVjvpm8oGYGvCUmKhbPjIwA/BSeXJdm4JsnC0NfJyLVKHis3y/NvBOwKjteHLEw4nqp5BUkeZ0fOkpwVuZFmInLZmzXvIjhp8ZqTL0pwVqQVT9Fc9A5fRwD/UKdp6llZYCnNfiyy/g86vn7Gmxu+nHsWNY8Z0tx4T8W0ZM1yMyllGJ5XHzw953IMCXUJTCYfNyYfZ8gr2PiLJZaAvLbk5ZwlIs+qvItmCXfSbB7mepF6ucRrSE65PP/zf9HV6wEGwJsa/itifsmbCcglIa7O3ywvjBFg0jEZmYC8oWWxWZL3FLxS5Gx4AnU9g/LnT5blq6JZT9O6pCMcfNxoMtK+zpCk+MYPn2lzkZzfq+G/keVPqfB1ND7B4Rol35Hkd21ulhfOCHDSOYvusGbh7+2w8BQck5CzIU/J9upYmhFp8lQSkfYs6xmSLTrh3TYf8ZzBUXAENROSsyNXI5mgdYKufLBulufhCDDRrFwGcQIbZz8WLv8xB5iA1n4ENL+yyoRkbjyNM6L4CB/rGdKYnClZOFuyrB8r3pwZZUBeoB9MNitxFjReSkKyn44Z0eCtliSTGxvjWG2JaW2rLVGtfbN+fo4Az4aj0kk+qj4TCZhDmMx63eTMVjfbL+gReDYSbzSA/w8L2cE70HorewAAAABJRU5ErkJggg==) no-repeat 50%;
            background-size: 100%;width: 1.64rem;height: .72rem;position: absolute;right: -.1rem;top: -.05rem;font-size: .24rem;font-family: PingFangSC-Medium,PingFang SC;
            font-weight: 500;color: #fff;line-height: .65rem;text-align: center;
        }
        .list-container .card-block{
    padding-top: 15px;
        }
        .sys{
    width: 100%;
    height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            z-index: 9999999;
            background: rgba(0, 0, 0, 0.6)
            url('https://sr.ffquan.cn/dtk_yunying/20210803/c44albf6vrkd4bd59itg0.png')
            center center no-repeat;
            background-size: 2.4rem auto;
        }
    </style>
</head>

<body>

    <img src="https://jpdy.ffquan.cn/static/header_bg.12963398.png" class="top-bg" alt="">

    <div class="list-container" id="fqList">
        <div v-if="sys == null" class="sys"></div>
<!--        <img src="data:image/png;base64,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" class="tit-img" alt="">-->

        <div class="swiper-container top-nav">
            <div class="swiper-wrapper">
                <div class="swiper-slide" :class="actIndex==index?'act':''" v-for="(item,index) in cateList" :key="index" @click="chooseCate(index,item.id,item.type)">{{item.title}}</div>
</div>
</div>

<div class="updateTime"><i type="shizhong" class="DTKiconfont shizhong shizhong___3DUi1"></i>距离下次排名更新还有 {{mins}} 分 {{ss}} 秒</div>



<div class="swiper-container card-block">
    <div class="swiper-wrapper">
        <div class="swiper-slide swiper-no-swiping">
            <div class="topThree">
                <div v-for="(item,index) in goodsList" :key = "index" v-if="index==1"  @click="handleCdetailFavorite(item)">
                    <a>
                        <div class="productImg">
                            <img :src="imgFomate(item.pic)" class="fadeIn ">
                            <div class="sales" style="padding: 0px;">2小时疯抢{{digitalAbbNumber({num:item.salesNum})}}</div>
                        </div>
                        <div class="title">{{item.dtitle}}</div>
                        <div class="price">
                            <span class="currency">¥</span>
                            <span class="juanPrice">{{item.jiage}}</span>
                            <span>券后</span>
                        </div>
                        <div class="top top2"></div>
                    </a>
                </div>

                <div v-for="(item,index) in goodsList" :key = "index" v-if="index==0"  @click="handleCdetailFavorite(item)">
                    <a>
                        <div class="productImg">
                            <img :src="imgFomate(item.pic)" class="fadeIn ">
                            <div class="sales" style="padding: 0px;">2小时疯抢{{digitalAbbNumber({num:item.salesNum})}}</div>
                        </div>
                        <div class="title">{{item.dtitle}}</div>
                        <div class="price">
                            <span class="currency">¥</span>
                            <span class="juanPrice">{{item.jiage}}</span>
                            <span>券后</span>
                        </div>
                        <div class="top top1"></div>
                    </a>
                </div>

                <div v-for="(item,index) in goodsList" :key = "index" v-if="index==2"  @click="handleCdetailFavorite(item)">
                    <a>
                        <div class="productImg">
                            <img :src="imgFomate(item.pic)" class="fadeIn ">
                            <div class="sales" style="padding: 0px;">2小时疯抢{{digitalAbbNumber({num:item.salesNum})}}</div>
                        </div>
                        <div class="title">{{item.dtitle}}</div>
                        <div class="price">
                            <span class="currency">¥</span>
                            <span class="juanPrice">{{item.jiage}}</span>
                            <span>券后</span>
                        </div>
                        <div class="top top3"></div>
                    </a>
                </div>

            </div>

            <ul class="lists">
                <li v-for="(item,index) in goodsList" :key = "index" v-if="index > 2" @click="handleCdetailFavorite(item)">
                    <a>
                        <div class="productImg">
                            <div class="imgPerch">
                                <img :src="imgFomate(item.pic)" class="fadeIn" height="200" width="200">
                            </div>
                            <div class="top">
                                <span>TOP</span><span v-html="(index+1).toString().length>1?(index+1):'0'+(index+1)"></span>
                            </div>
                        </div>
                        <div>
                            <div class="title">
                                <div class="shoplabel" v-if="item.mallDesc!='淘宝'">
                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAaCAYAAADIUm6MAAAE60lEQVRYw9WYbVBUVRjHz+gH/OCHdCY/WE1OGTNWU40ibIqSE6IGZpoGgrGUyAjrYkrI2yqIKGjN+FLONOk4aI6azZqZmu+ama9oElmOGApqvrK6KjBp8uvDc5a7d3eBJZsp78xv9p7/eZ7/8+y95yxnUEopRZ4tFIfdicPuxjGFoCnQODqKXdOhHDcOu5M8W6hqaTonw0VOBo8ILvJsoYqsdCfTJ/NIkZXuVNjT3NgnEZg0H9qLm/Qv01r9NLdi8kRMzMyFBw/+OWfPGF6VJ6GpEepqwbkebGnmWtVnAKCsxKzv3in6mi/w60+jmPgeJvJyeKjrbLXhVVVlnvthv+hfroWfK+HuXdGrq2Xs4fp10S9elHHpXHz7VCRbwZpsJiUlMA6HGNbVtR5jTYHkZMFqhdRUKJsPDY3Q3AxTbHDgQMcexpIlkGz1IhlF4gRaGN8OM/LEqLaONvMSA3DqlOQWzobsXJhXBnUXRCtfJWMPRytE37ZdxpMz/HwV4xIJmiy9jM7XBp8TPwFWrITGRsktKjHmDh6CK1fhw1xzzrqvRF+8tFVfxVsJ+BOv8dGnZkvxc7UEzvMhv0i+pPflKG7dv736Xihix2HiSAVU/WrmF03171K8qSnwvIdl5eK1co3EX7gEly7LfV4RrHNCzbngKSiG2He8GIci5m1MuG/z0Nem78QrNgE+WQax8VBxUuayC2Hnvo75FX+Eb5+KIaMxYcuBzHxhqsYz3uFVsHSRofuSlG72HJ4A1TWSN20mbN8r95+VQ4pdOHRMtKUrDO3Icb2h5+PbpyJyFEExaBTUeK3Xz1d7zb/pg5deUAqXrxp59nzYtkdv1I+NWM9DmbXA0HbtF62gzFxn0CgUEXFgaYUIjSUO8krFpEH/OtTfhOh4HTvSB52zeoPRcHOzfKbnwtbdcj9zgeG/Tb+F/DIjf4duPHeeX1+Kfm/QLjFJcL1eP6WFcPiE3G/Z03ZeUibccEHxIjiq13jqDNi8S+5dt+CPq0JjU+ta9lw/b8VLw2mTV8dA1WkxOHgcXh4Bce/DnQbRPl3Zdn7YSPk8Vinx1izYtKtjm3P6HD9fRZ+h0CdGM9TM4Hij6TPnYMBYWuJthXD/L73e18LzAfI9vBIHt/Sv1ZBE2KgPUcVLICoBosbDTn0MKFyktQTYfVC0zNk+njEoer9OQJKy4Io+7FSfB8tY/5hpc+HefYnZexgiAsQ8Fw3rt0pMRZVoX++Q8QclRtw3+i1kFhvaZr2JbUV+voqnh2DixTgo3yBHVIDvj0Lf0fjFeUiYJusS4MZNmFoCvfTcC7HwrS5+pwFGpIq+aqNoC8sNH89byJgt42ejoVK/7Xez/eoqeg6GnlEGx/Vh6N59mL8cnnzNPN8zCsnxou8Y2HfM68/6Yolbu0XGN90wxg5PRAmj7fJgmpvly15zQdOfEuu+A9fq4bY+8l68Ar2H+dVX9IikhccjIXUW/PgTRE6QcSC841u0QWCbA7/VQO8RMm8ZDwdOQP94THV6RMKUEqi/1famrDwNUdaA9RXdBrjpNgAzA/HXvHhME2iu+0D/uNbiuw+EXsPgmeH+PBXdVg9uRVeLk64WhAiN5T8i6PpORUh4KF3CXYT0xyDch/7tEGxcsP5tzHcJdxESrv+3EhIeSucwJ53C3HTqx/+TMDedw5yepv8GV1+TBUuIRhcAAAAASUVORK5CYII=">
                                </div>
                                <span>{{item.dtitle}}</span>
                            </div>
                            <div class="lable" style="margin-bottom: 12px;">
                                <div class="coupon" style="display: inline-flex;">
                                    <span>券</span>{{item.quanJine}}元
                                </div>
                            </div>
                            <div class="price">
                                <span class="currency">¥</span>
                                <span class="juanPrice">{{item.jiage}}</span>
                                <span>券后</span><span class="originPrice">¥{{item.yuanjia}}</span>
                            </div>
                            <div class="btn">近2小时疯抢<span>{{digitalAbbNumber({num:item.salesNum})}}</span><div class="suffix">立即抢</div>
                            </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>



</div>

</body>

<script>
    (function(){
        var size = (document.body.clientWidth || document.documentElement.clientWidth);
        document.documentElement.style.fontSize = (size > 750 ? 750 : size) / 7.5 + 'px';
    })();



    new Vue({
        el: '#fqList',
        data:{
            cateList:[],
            goodsList:[],
            localGoodsList:[],
            actIndex:0,
            sys:false,
            nowTime:0,
            mins:0,
            ss:0,
            cid:0,
            type:1
        },
        methods:{
            handleCdetailFavorite: function (items) {
                if(_config.jumpGoodsUrl){
                    _config.jumpGoodsUrl(items);
                }
                var params = {
                    site_id:this.sys.uid,
                    auth_id:this.sys.auth_id,
                    pid:this.sys.pid,
                    goodsid:items.goodsid,
                    need_tpwd:1,
                    gid:items.gid,
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
            cateRender:function(){//渲染nav swiper
                mySwiper = new Swiper ('.top-nav', {
                    slidesPerView: 'auto',
                    initialSlide: 1,
                    paginationClickable: true,
                    observer:true,//修改swiper自己或子元素时，自动初始化swiper
                    observeParents:true,//修改swiper的父元素时，自动初始化swiper
                })

            },
            goodsListRender:function(){
                listSwiper = new Swiper ('.card-block', {
                    initialSlide: 1,
                    paginationClickable: true,
                    observer:true,//修改swiper自己或子元素时，自动初始化swiper
                    observeParents:true,//修改swiper的父元素时，自动初始化swiper
                })
            },
            chooseCate:function(index,cid,type){//选择分类
                mySwiper.slideTo(index-2, 1000, false)
                this.actIndex = index;
                this.getGoodsList(cid,type)
                this.cid = cid;
                this.type = type;
            },
            getCateList:function(){//获取分类列表
                var _this = this;
                $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/v1/page-goods-ranking-cate',
                    type:"get",
                }).done(function(res){
                    if(res.code == 1){
                        _this.cateList = res.data
                    }
                    setTimeout(function(){
                        _this.cateRender();
                        mySwiper.slideTo(0, 0, false)
                    },10)
                })
            },
            getNowTime:function(){//获取当前时间
                var _this = this;
                $.ajax({
                    url:'https://cmsstatic.dataoke.com/now',
                    type:"get",
                }).done(function(res){
                    res = JSON.parse(res)
                    if(res.status == 0){

                        var time =  res.data.time;

                        var start = new Date(time * 1000);
                        var minute = start.getMinutes();
                        var $nowNode = Math.ceil((minute + 1) / 20);
                        var $nextNode = 20 * $nowNode - 1;
                        if ($nextNode > 59) {
                            $nextNode = 59;
                        }

                        start.setMinutes($nextNode);
                        var $rankTime = start.getTime() + 59000;
                        start = time * 1000;
                        var end = $rankTime;
                        _this.nowTime = end - start;

                        var timer = setInterval(() => {
                            _this.nowTime -= 1000;
                            var du = moment.duration(_this.nowTime, 'ms');
                            _this.mins = du.get('minutes');
                            _this.ss = du.get('seconds');

                            if (_this.nowTime <= 0 && _this.nowTime !== '') {
                                _this.mins = '00';
                                _this.ss = '00';
                                _this.getGoodsList(_this.cid,_this.type);
                                clearInterval(timer)
                                _this.getNowTime();
                                return;
                            }
                        }, 1000);

                    }

                })
            },
            getGoodsList:function(cid,type){//获取商品列表
                cid = cid || 0;
                type = type!=undefined?type:1;
                var _this = this;
                $.ajax({
                    url:'https://dtkapi.ffquan.cn/dtk_go_app_api/v1/page-goods-ranking',
                    type:"get",
                    data:{
                        cId:cid,
                        type:type,
                        app_key: _config.appKey,
                    }
                }).done(function(res){
                    if(res.code == 1){
                        _this.goodsList = res.data.data;
                        _this.sys = (res.data && res.data.sys) ? res.data.sys : null;
                    }
                    else {
                        _this.sys = null;
                    }
                })


            },
            addLocalList:function(cid,type){
                var _this = this;
                cid = cid || 0;
                type = type!=undefined?type:1;

                if(_this.localGoodsList.length<1){
                    var fn = function(){
                        _this.localGoodsList.push(_this.goodsList);
                    }
                    _this.getGoodsList(cid,type,fn);

                }else{
                    for(var i=0; i<_this.localGoodsList.length; i++){


                        if(_this.localGoodsList[i].cid == cid){
                            return false

                        }else{
                            var fn = function(){
                                _this.localGoodsList.push(_this.goodsList)
                            }
                            _this.getGoodsList(cid,type,fn);
                        }

                    }
                }

                // _this.goodsListRender()
            },
            getDateNow:function(){
                var _this = this;
                $.ajax({
                    url:'https://cmsstatic.dataoke.com/now',
                    type:"get",
                }).done(function(res){
                    data = JSON.parse(res).data;
                    var start = new Date(data.time * 1000);
                    var minute = start.getMinutes();
                    var $nowNode = Math.ceil((minute + 1) / 20);
                    var $nextNode = 20 * $nowNode - 1;
                    if ($nextNode > 59) {
                        $nextNode = 59;
                    }


                    start.setMinutes($nextNode);
                    var $rankTime = start.getTime() + 59000;
                    start = data.time * 1000;
                    var end = $rankTime;

                    // setDownTime(end - start);
                    // clearInterval(timerRef.current)
                    // enterDownTime()
                })
            },
            imgFomate:function(img){
                if(img.indexOf('http')!='-1'){
                    return img+'_310x310.jpg'
                }else{
                    return 'https:'+img+'_310x310.jpg'
                }
            }
        },
        mounted:function(){
            this.getCateList();
            this.cateRender();
            // this.getDateNow();
            this.getGoodsList();
            this.getNowTime();
        }
    })
</script>



</html>
