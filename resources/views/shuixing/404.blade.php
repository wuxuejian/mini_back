<!DOCTYPE html>
<html class="no-js" lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ \App\Wen\Utils\Settings::get('app_title') }} - 404</title>
    <meta name="keywords" content="{{ \App\Wen\Utils\Settings::get('app_title') }}，{{ \App\Wen\Utils\Settings::get('app_title') }}小程序，{{ \App\Wen\Utils\Settings::get('app_intro') }}，{{ \App\Wen\Utils\Settings::get('app_title') }}社区，{{ \App\Wen\Utils\Settings::get('app_title') }}404">
    <meta name="description" content="{{ \App\Wen\Utils\Settings::get('about_title') }}">
    <link rel="shortcut icon" type="image/x-icon" href="assets/imgs/theme/bitbug_favicon.ico">
    <!-- NewsBoard CSS  -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/widgets.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body>
<!-- <div class="scroll-progress primary-bg"></div> -->
<!-- Start Preloader -->
<!--     <div class="preloader text-center">
<div class="circle"></div>
</div> -->
<!-- Start Main content -->
<main class="pt-30 pb-50">
    <div class="container">
        <div class="row pt-50">
            <div class="col-lg-6 col-md-12 d-lg-block d-none pr-50"><img
                    src="https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/404.png"
                    alt=""></div>
            <div class="col-lg-6 col-md-12 pl-50 text-md-center text-lg-left">
                <h1 class="mb-30 pt-80 font-weight-900 page-404">沉入梦境...</h1>
                <form action="#" method="get" class="search-form d-lg-flex open-search mb-30">
                    <i class="icon-search"></i>
                    <input class="form-control" name="name" id="name" type="text" placeholder="搜索">
                </form>
                <p class="">糟糕，好像走丢了！<br> 返回
                    <a href="index.html">首页</a> or <a href="page-contact.html">联系我们</a> 进行反馈
                </p>
                <div class="form-group">
                    <button type="submit" class="button button-contactForm mt-30"><a class="text-white"
                                                                                     href="index.html">{{ \App\Wen\Utils\Settings::get('app_title') }}</a></button>
                </div>
            </div>
        </div>
        <!--More posts-->
        <div class="single-more-articles border-radius-5">
            <div class="widget-header-2 position-relative mb-30">
                <h5 class="mt-5 mb-30">{{ \App\Wen\Utils\Settings::get('app_title') }}</h5>
                <button class="single-more-articles-close"><i class="elegant-icon icon_close"></i></button>
            </div>
            <div class="post-block-list post-module-1 post-module-5">
                <h4>去发现更多有趣内容</h4>
                <ul class="list-post">
                    <li class="mt-20 mb-10">
                        <div class="d-flex transition-normal">
                            <div
                                class="post-thumb post-thumb-88 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                <a class="color-white">
                                    <img id="image"
                                         src="{{ \App\Wen\Utils\Settings::get('app_mini_code') }}"
                                         alt="">
                                </a>
                            </div>
                            <div class="post-content media-body">
                                <h6 class="post-title mt-15 mb-20 text-limit-2-row font-medium"><a
                                    >微信扫码打开{{ \App\Wen\Utils\Settings::get('app_title') }}小程序</a></h6>
                                <h6 class="post-title mb-15 text-limit-2-row font-medium"><a
                                    >体验更多「{{ \App\Wen\Utils\Settings::get('app_title') }}」新功能</a></h6>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</main>
<!-- End Main content -->
<!-- Footer Start-->
<footer class="pt-50 pb-20">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="sidebar-widget wow fadeInUp animated mb-30">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">{{ \App\Wen\Utils\Settings::get('app_title') }}</h5>
                    </div>
                    <div class="textwidget">
                        <div class="footer-about-logo"><img src="assets/imgs/theme/sx-logo.png"/><strong
                                class="color-black">{{ \App\Wen\Utils\Settings::get('about_title') }}</strong></div>
                        <br>
                        <p>{{ \App\Wen\Utils\Settings::get('app_intro') }}</p>
                    </div>
                    <p><strong class="color-black">关注我们</strong></p>
                    <ul class="header-social-network d-inline-block list-inline mb-20">
                        <li data-trigger="hover" data-placement="top" data-toggle="popovergzh"
                            class="list-inline-item"><a class="sx">
                                <img src="assets/imgs/icon/wechat-fill.svg"/></a></li>
                        <li class="list-inline-item"><a class="sx">
                                <img src="assets/imgs/icon/weibo-fill.svg"/></a></li>
                        <li class="list-inline-item"><a class="sx">
                                <img src="assets/imgs/icon/zhihu-line.svg"/></a>
                        </li>
                        <li class="list-inline-item"><a class="sx">
                                <img src="assets/imgs/icon/douyin.svg"/></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-6">
                <div class="sidebar-widget widget_categories wow fadeInUp animated mb-30" data-wow-delay="0.1s">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">认证&合作</h5>
                    </div>
                    <ul class="font-small">
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                            class="cat-item cat-item-4"><a href="#">账号认证</a></li>
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverqywx"
                            class="cat-item cat-item-4"><a href="#">广告/赞助</a></li>
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverqywx"
                            class="cat-item cat-item-6"><a href="#">创作者入驻</a></li>
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverqywx"
                            class="cat-item cat-item-6"><a href="#">成为运营者</a></li>
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverqywx"
                            class="cat-item cat-item-6"><a href="#">提供技术支持</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="sidebar-widget widget_tagcloud wow fadeInUp animated mb-30" data-wow-delay="0.2s">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">赞助商&技术支持</h5>
                    </div>
                    <div class="tagcloud mt-10">
                        <a class="tag-cloud-link" target="_blank" href="https://cloud.tencent.com/">
                            腾讯云</a>
                        <a class="tag-cloud-link" target="_blank" href="https://www.bt.cn/">
                            宝塔Linux面板</a>
                        <a class="tag-cloud-link" target="_blank" href="http://www.dcatadmin.com/">
                            Dcat-Admin</a>
                        <a class="tag-cloud-link" target="_blank" href="https://www.bootcss.com/">
                            Bootstrap</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="sidebar-widget widget_newsletter wow fadeInUp animated mb-30" data-wow-delay="0.3s">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">关于 about</h5>
                    </div>
                    <div class="newsletter">
                        <p class="footer-information-a">
                            <a href="page-about.html">
                                公司介绍</a>
                            <a href="page-contact.html">
                                联系我们</a>
                        </p>
                        <p><strong class="color-black">违法和不良信息举报（24小时）</strong></p>
                        <p><a href="mailto:{{ \App\Wen\Utils\Settings::get('about_sms') }}"><i class="bi bi-envelope-fill"></i>
                                {{ \App\Wen\Utils\Settings::get('about_sms') }}</a></p>
                        <p class="float-md-left font-small">
                            <a target="_blank" href="http://beian.miit.gov.cn/">
                                《用户协议》</a>
                            <a target="_blank" href="http://beian.miit.gov.cn/">
                                《隐私条款》</a>
                            <a target="_blank" href="http://beian.miit.gov.cn/">
                                《免责声明》</a>
                        </p>
                        <div class="float-md-left font-small"><strong class="color-black">
                                {{ \App\Wen\Utils\Settings::get('about_copyright') }}.
                                <a target="_blank" href="http://beian.miit.gov.cn/" rel="nofollow">
                                    {{ \App\Wen\Utils\Settings::get('about_icp') }}</a>
                            </strong></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer -->
<div class="dark-mark"></div>
<!-- Vendor JS-->
<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/vendor/popper.min.js"></script>
<script src="./assets/js/vendor/bootstrap.min.js"></script>
<script src="./assets/js/vendor/jquery.slicknav.js"></script>
<script src="./assets/js/vendor/slick.min.js"></script>
<script src="./assets/js/vendor/wow.min.js"></script>
<script src="./assets/js/vendor/jquery.ticker.js"></script>
<script src="./assets/js/vendor/jquery.vticker-min.js"></script>
<script src="./assets/js/vendor/jquery.scrollUp.min.js"></script>
<script src="./assets/js/vendor/jquery.nice-select.min.js"></script>
<script src="./assets/js/vendor/jquery.magnific-popup.js"></script>
<script src="./assets/js/vendor/jquery.sticky.js"></script>
<script src="./assets/js/vendor/perfect-scrollbar.js"></script>
<script src="./assets/js/vendor/waypoints.min.js"></script>
<script src="./assets/js/vendor/jquery.theia.sticky.js"></script>
<!-- NewsBoard JS -->
<script src="./assets/js/main.js"></script>
</body>

</html>
