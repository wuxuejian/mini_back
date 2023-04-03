<!DOCTYPE html>
<html class="no-js" lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ \App\Wen\Utils\Settings::get('app_title') }} - @yield('title')</title>
    <meta name="keywords" content="{{ \App\Wen\Utils\Settings::get('app_title') }},{{ \App\Wen\Utils\Settings::get('app_title') }}社区,{{ \App\Wen\Utils\Settings::get('app_title') }}小程序,@yield('keywords')">
    <meta name="description" content="@yield('description'){{ ' - '.\App\Wen\Utils\Settings::get('app_intro') }}">
    <link rel="shortcut icon" type="image/x-icon" href="{{ \App\Wen\Utils\Settings::get('browser_favicon_ico') }}">
    <!-- NewsBoard CSS  -->
    <style>
        :root {
            --color-mode: "light";
            --color-primary: {{ \App\Wen\Utils\Settings::get('--color-primary') }};
            --color-secondary: {{ \App\Wen\Utils\Settings::get('--color-secondary') }};
            --color-success: {{ \App\Wen\Utils\Settings::get('--color-success') }};
            --color-danger: {{ \App\Wen\Utils\Settings::get('--color-danger') }};
            --color-warning: {{ \App\Wen\Utils\Settings::get('--color-warning') }};
            --color-info: {{ \App\Wen\Utils\Settings::get('--color-info') }};
            --color-light: {{ \App\Wen\Utils\Settings::get('--color-light') }};
            --color-grey: {{ \App\Wen\Utils\Settings::get('--color-grey') }};
            --color-dark: {{ \App\Wen\Utils\Settings::get('--color-dark') }};
            --color-muted: {{ \App\Wen\Utils\Settings::get('--color-muted') }};
            --color-white: {{ \App\Wen\Utils\Settings::get('--color-white') }};
            --primary-border-color: {{ \App\Wen\Utils\Settings::get('--primary-border-color') }};
            --secondary-border-color: {{ \App\Wen\Utils\Settings::get('--secondary-border-color') }};
            --mutted-border-color: {{ \App\Wen\Utils\Settings::get('--mutted-border-color') }};
            --box-shadow-normal: 0 10px 10px rgba(0, 0, 0, 0.08);
            --box-shadow-hover: 0 4px 60px 0 rgba(0, 0, 0, 0.2);
            --button-shadow-color-normal: hsla(0, 0%, 42.4%, 0.2);
            --button-shadow-color-hover: hsla(0, 0%, 42.4%, 0.3);
        }
    </style>
    <link rel="stylesheet" href="/assets/shuixing/css/style.css">
    <link rel="stylesheet" href="/assets/shuixing/css/widgets.css">
    <link rel="stylesheet" href="/assets/shuixing/css/responsive.css">
</head>
<body>

@section('progress')
{{--    顶部进度条--}}
@show
<!--Offcanvas sidebar-->
<aside id="sidebar-wrapper" class="custom-scrollbar offcanvas-sidebar">
    <button class="off-canvas-close"><i class="elegant-icon icon_close"></i></button>
    <div class="sidebar-inner">
        <div id="not-log" class="row pt-80 text-center display-none">
            <div class="container p-0">
                <img class="col-md-12"
                     src="{{ \App\Wen\Utils\Settings::get('pc_login_bg', '') }}"
                     alt="">
                <button class="btn btn-radius bg-primary ml-15 mt-30">
                    <a class="text-white" href="/login">立即登录</a>
                </button>
            </div>
        </div>
        <div id="userinfo" class="sidebar-user-box mt-30 bg-white display-none">
            <img id="user_bg" class="user-box-bg" src=""/>
            <img id="user_avatar" class="user-box-tx" src=""/>
            <h5 id="user_name" class="ml-20 mr-20 mt-15 wlc1"></h5>
            <div class="user-box-list mt-10">
                <div class="user-box-list-attribute">
                    <h5 id="follow_total" class="mb-0"></h5>
                    <p>关注</p>
                </div>
                <div class="user-box-list-attribute">
                    <h5 id="fans_total" class="mb-0"></h5>
                    <p>粉丝</p>
                </div>
                <div class="user-box-list-attribute">
                    <h5 id="like_total" class="mb-0"></h5>
                    <p>获赞</p>
                </div>
            </div>
            <div class="row pl-30 pr-30 pb-30">
                <div class="col-md-6">
                    <div class="function-box mt-20" data-trigger="hover" data-placement="top" data-toggle="popoverxcx">
                        <img src="/assets/shuixing/imgs/icon/wallet-line.svg"/>
                        <span>收益</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="function-box mt-20" data-trigger="hover" data-placement="top" data-toggle="popoverxcx">
                        <img src="/assets/shuixing/imgs/icon/shopping-bag-3-line.svg"/>
                        <span>订单</span>
                    </div>
                </div>
                <div class="col-md-6 mt-20">
                    <div class="function-box" data-trigger="hover" data-placement="top" data-toggle="popoverxcx">
                        <img src="/assets/shuixing/imgs/icon/draft-line.svg"/>
                        <span>编辑资料</span>
                    </div>
                </div>
                <div class="col-md-6 mt-20">
                    <div class="function-box" onclick="logOut()">
                        <img src="/assets/shuixing/imgs/icon/logout-box-r-line.svg"/>
                        <span>退出登录</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</aside>
<!-- Start Header -->
<header class="main-header header-style-1 font-heading">
    <div class="header-sticky">
        <div class="container align-self-center">
            <div class="mobile_menu d-lg-none d-block"></div>
            <div class="main-nav d-none d-lg-block float-left">
                <nav>
                    <!--Desktop menu-->
                    <ul class="main-menu d-none d-lg-inline">
                        @foreach ($menus['menus'] as $menu)
                            @if($menus['id'] == $menu['id'])

                            @elseif(!$menu['sub'])
                            <li class="{{$menus['path'] == $menu['url'] ? 'current-item':''}}"><a class="{{$menus['path'] == $menu['url'] ? 'text-primary':''}}"
                                                                                         href="{{ $menu['url'] }}">{{ $menu['title'] }}</a></li>
                            @else
                                <li class="menu-item-has-children"><a class="{{$menus['path'] == $menu['url'] ? 'text-primary':''}}" href="{{ $menu['url'] }}">{{ $menu['title'] }}</a>
                                    <ul class="sub-menu design-container">
                                        <div class="design-tagcloud">
                                            @foreach ($menu['sub'] as $sub_menu)
                                                <a class="design-cloud-link {{$menus['path'] == $sub_menu['url'] ?'active':''}}"
                                                   href="{{ $sub_menu['url'] }}">
                                                    {{ $sub_menu['title'] }}
                                                </a>
                                            @endforeach
                                        </div>
                                    </ul>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                    <!--Mobile menu-->
                    <ul id="mobile-menu" class="d-block d-lg-none text-muted">
                        @foreach ($menus['menus'] as $menu)
                            @if($menus['id'] == $menu['id'])

                            @elseif(!$menu['sub'])
                                <li class="menu-item-has-children {{$menus['path'] == $menu['url'] ? 'current-item':''}}">
                                    <a href="{{ $menu['url'] }}">{{ $menu['title'] }}</a>
                                </li>
                            @else
                                <li class="menu-item-has-children {{$menus['path'] == $menu['url'] ? 'current-item':''}}">
                                    <a href="{{ $menu['url'] }}">{{ $menu['title'] }}</a>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </nav>
            </div>
            <div class="float-right header-tools text-muted font-small">
                <ul class="header-social-network d-inline-block list-inline mr-15">
                    <button class="search-icon d-none d-md-inline"><span class="mr-15 text-muted font-small"><i
                                class="elegant-icon icon_search mr-5"></i>搜索</span></button>
                    <button data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                            class="btn btn-radius bg-primary text-white ml-15 font-small box-shadow">创作中心
                    </button>
                </ul>
                <span class="vertical-divider mr-20 ml-20 d-none d-md-inline"></span>
                <div class="off-canvas-toggle-cover d-inline-block">
                    <div class="off-canvas-toggle hidden d-inline-block" id="off-canvas-toggle">
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</header>
<!--Start search form-->
<div class="main-search-form">
    <div class="container">
        <div class=" pt-50 pb-50 ">
            <div class="row mb-20">
                <div class="col-12 align-self-center main-search-form-cover m-auto">
                    <p class="text-center"><span class="search-text-bg">搜索</span></p>
                    <form name="search" class="search-header">
                        <div class="input-group w-100">
                            <input type="text" id="keyword" class="form-control" placeholder="{{ \App\Wen\Utils\Settings::get('pc_search_input_placeholder', '') }}">
                            <div class="input-group-append">
                                <button class="btn btn-search bg-white" type="submit">
                                    <i class="elegant-icon icon_search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row mt-80 text-center">
                <div class="col-12 font-small suggested-area">
                    <h5 class="suggested font-heading mb-20 text-muted"><strong>热门搜索</strong>
                    </h5>
                    <ul class="list-inline d-inline-block">
                        @foreach($search['hot_search_keywords'] as $search_content)
                            <li class="list-inline-item"><a
                                    href="/search/0/{{$search_content}}">{{$search_content}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Main content -->

@section('main')
{{--    内容--}}
@show

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
                        <div class="footer-about-logo"><img
                                src="{{ \App\Wen\Utils\Settings::get('about_logo') }}"/><strong
                                class="color-black">{{ \App\Wen\Utils\Settings::get('about_title') }}
                                </strong></div>
                        <br>
                        <p>{{ \App\Wen\Utils\Settings::get('app_intro') }}</p>
                    </div>
                    <p><strong class="color-black">关注我们</strong></p>
                    <ul class="header-social-network d-inline-block list-inline mb-20">
                        <li data-trigger="hover" data-placement="top" data-toggle="popovergzh"
                            class="list-inline-item"><a class="sx">
                                <img src="/assets/shuixing/imgs/icon/wechat-fill.svg"/></a></li>
                        <li class="list-inline-item"><a target="_blank" class="sx"
                                                        href="#" rel="nofollow">
                                <img src="/assets/shuixing/imgs/icon/weibo-fill.svg"/></a></li>
                        <li class="list-inline-item"><a target="_blank" class="sx"
                                                        href="#" rel="nofollow">
                                <img src="/assets/shuixing/imgs/icon/zhihu-line.svg"/></a>
                        </li>
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverdy"
                            class="list-inline-item"><a class="sx">
                                <img src="/assets/shuixing/imgs/icon/douyin.svg"/></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-6">
                <div class="sidebar-widget widget_categories wow fadeInUp animated mb-30" data-wow-delay="0.1s">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">{{ $menus['foot_menus']['foot_menu_1']['menus'][$menus['foot_menus']['foot_menu_1']['id']]['title'] }}</h5>
                    </div>
                    <ul class="font-small">
                        @foreach($menus['foot_menus']['foot_menu_1']['menus'] as $item)
                            @if($menus['foot_menus']['foot_menu_1']['id'] == $item['id'])
                            @else
                            <li class="cat-item cat-item-4"><a rel="nofollow" href="{{ $item['url'] }}">{{ $item['title'] }}</a></li>
                            @endif
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="sidebar-widget widget_tagcloud wow fadeInUp animated mb-30" data-wow-delay="0.2s">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">{{ $menus['foot_menus']['foot_menu_2']['menus'][$menus['foot_menus']['foot_menu_2']['id']]['title'] }}</h5>
                    </div>
                    <div class="tagcloud mt-10">
                        @foreach($menus['foot_menus']['foot_menu_2']['menus'] as $item)
                            @if($menus['foot_menus']['foot_menu_2']['id'] == $item['id'])
                            @else
                                <a class="tag-cloud-link" rel="nofollow" target="_blank" href="{{ $item['url'] }}">
                                    {{ $item['title'] }}</a>
                            @endif
                        @endforeach
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
                            <a target="_blank" href="/contact">
                                联系我们（工作时间：10:00-22:00）</a>
                        </p>
                        <p><strong class="color-black">违法和不良信息举报（24小时）</strong></p>
                        <p><a href="mailto:{{ \App\Wen\Utils\Settings::get('about_sms') }}"><i class="bi bi-envelope-fill"></i>
                                {{ \App\Wen\Utils\Settings::get('about_sms') }}</a></p>
                        <p class="float-md-left font-small">
                            <a target="_blank" href="/clause/21" rel="nofollow">
                                《用户协议》</a>
                            <a target="_blank" href="/clause/22" rel="nofollow">
                                《隐私条款》</a>
                            <a target="_blank" href="/clause/23" rel="nofollow">
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
<script src="/assets/shuixing/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/assets/shuixing/js/vendor/popper.min.js"></script>
<script src="/assets/shuixing/js/vendor/bootstrap.min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.slicknav.js"></script>
<script src="/assets/shuixing/js/vendor/slick.min.js"></script>
<script src="/assets/shuixing/js/vendor/wow.min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.ticker.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.vticker-min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.scrollUp.min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.nice-select.min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.magnific-popup.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.sticky.js"></script>
<script src="/assets/shuixing/js/vendor/perfect-scrollbar.js"></script>
<script src="/assets/shuixing/js/vendor/waypoints.min.js"></script>
<script src="/assets/shuixing/js/vendor/jquery.theia.sticky.js"></script>
<script src="/assets/shuixing/js/vendor/imagesloaded.pkgd.min.js"></script>
<script src="/assets/shuixing/js/vendor/masonry.pkgd.min.js"></script>
<script src="/assets/shuixing/js/vendor/viewer.js"></script>
<script src="/assets/shuixing/js/vendor/interaction.js"></script>
<script src="/assets/shuixing/js/vendor/axios.min.js"></script>
<script src="/assets/shuixing/js/vendor/shuixing.js"></script>
<!-- NewsBoard JS -->
<script src="/assets/shuixing/js/main.js"></script>
<script>
    $(function () {
// popover
        $("[data-toggle='popoverxcx']").popover({
            animation: true,
            html: true,
            container: "body",
            content: "<img class='img-popover' src='{{ $mini_code }}' />",
        });

        $("[data-toggle='popovergzh']").popover({
            animation: true,
            html: true,
            container: "body",
            content: "<img class='img-popover' src='{{ \App\Wen\Utils\Settings::get('app_mp_code') }}' />",
        });

        $("[data-toggle='popoverdy']").popover({
            animation: true,
            html: true,
            container: "body",
            content: "<img class='img-popover' src='{{ \App\Wen\Utils\Settings::get('app_douyin_code') }}' />",
        });

        $("[data-toggle='popoverqywx']").popover({
            animation: true,
            html: true,
            container: "body",
            content: "<img class='img-popover' src='{{ \App\Wen\Utils\Settings::get('app_mp_code') }}' />",
        });
        $("[data-toggle='popoverapp']").popover({
            animation: true,
            html: true,
            container: "body",
            content: "<img class='img-popover' src='{{ \App\Wen\Utils\Settings::get('app_app_code') }}' />",
        });
    });
</script>
@section('js')
    <!-- External JS -->
@show
</body>
</html>
