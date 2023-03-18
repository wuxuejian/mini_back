@extends('shuixing.home')

@section('title', \App\Wen\Utils\Settings::get('app_intro'))
@section('description', \App\Wen\Utils\Settings::get('app_title'))
@section('progress')
    @parent
{{--        <div class="scroll-progress primary-bg"></div>--}}
    <!-- Start Preloader -->
{{--    <div class="preloader text-center">--}}
{{--        <div class="circle"></div>--}}
{{--    </div>--}}
@endsection

@section('main')
    @parent
    <!-- Start Main content -->
    <main>
                <div class="featured-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 align-self-center">
                                <p class="text-muted">
        								<span class="typewrite d-inline" data-period="2000"
                                              data-type='{{ json_encode(explode('|', \App\Wen\Utils\Settings::get('pc_index_effect_character', '')))  }}'></span>
                                </p>
                                <h2>Hello, <span>{{ \App\Wen\Utils\Settings::get('app_title') }}</span></h2>
                                <h4 class="mb-30">{{ \App\Wen\Utils\Settings::get('app_intro') }}</h4>
                                <h6 class="text-muted">
                                    {{ \App\Wen\Utils\Settings::get('about_title') }}</h6>
                                <div class="mt-80 d-flex">
                                    <button data-trigger="hover" data-placement="top" data-toggle="popovergzh"
                                            class="btn bg-primary text-white btn-wx-box" type="submit">
                                        <img class="mr-5" src="/assets/shuixing/imgs/icon/wechat-fill.svg"/>
                                        公众号
                                    </button>
                                    <button data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                                            class="btn bg-primary text-white btn-wx-box ml-15" type="submit">
                                        <img class="mr-5" src="/assets/shuixing/imgs/icon/xcx-xicon.svg"/>
                                        小程序
                                    </button>
                                </div>
                            </div>
                            <div class="col-lg-6 pl-60 text-right d-none d-lg-block">
                                <img src="{{ \App\Wen\Utils\Settings::get('pc_index_right_banner', '') }}" alt="">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="hot-tags pt-30 pb-30 font-small align-self-center">
                        <div class="widget-header-3">
                            <div class="row align-self-center">
                                <div class="col-md-4 align-self-center">
                                    <h5 class="widget-title">精彩内容</h5>
                                </div>
                                <div class="col-md-8 text-md-right font-small align-self-center">
                                    <p class="d-inline-block mr-5 mb-0"><i class="bi bi-tag-fill"></i> 热门标签:</p>
                                    <ul class="list-inline d-inline-block tags">
                                        @foreach($hottag as $tag)
                                            <li class="list-inline-item"><a href="{{ '/tag/'.$tag->id }}">#{{ $tag->tags_name }}</a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="loop-grid mb-30">
                        <div class="row">
                            <div class="col-lg-8 mb-30">
                                <div
                                    class="carausel-post-1 hover-up border-radius-10 overflow-hidden transition-normal position-relative wow fadeInUp animated">
                                    <div class="arrow-cover"></div>
                                    <div class="slide-fade">
                                        @foreach ($lpdata as $item)
                                            <div class="position-relative post-thumb">
                                                <div class="thumb-overlay img-hover-slide position-relative"
                                                     style="background-image: url({{$item->main_image}})">
                                                    <a class="img-link" target="_blank" href="/single/{{$item->id}}"></a>
                                                    <span class="top-left-icon bg-primary"><i class="bi bi-heart"></i></span>
                                                    <div class="post-content-overlay text-white ml-30 mr-30 pb-30">
                                                        <div class="entry-meta meta-0 font-small mb-20 wlc1">
                                                            <a href="/circle/{{$item->circle_id}}"><span
                                                                    class="post-cat text-white">{{$item->circle_name}}</span></a>
                                                            @foreach ($item->tags as $items)
                                                                <a href="/tag/{{$items->id}}"><span
                                                                        class="text-white">#{{$items->tags_name}}</span></a>
                                                            @endforeach
                                                        </div>
                                                        <h3 class="post-title font-weight-900 mb-20 wlc2">
                                                            <a class="text-white" target="_blank"
                                                               href="/single/{{$item->id}}">{!! $item->posts_content !!}</a>
                                                        </h3>
                                                        <div class="df-al-cer-box mt-10">
                                                            <div class="post-user-box">
                                                                <img class="author-avatar" src="{{$item->user->user_avatar}}"
                                                                     alt="">
                                                                <span
                                                                    class="author-name text-white font-weight-bold wlc1">{{$item->user->user_name}}</span>
                                                                @if ($item->user->is_member == 1)
                                                                    <img src="/assets/shuixing/imgs/icon/vip.png"
                                                                         class="user_icon"/>
                                                                @endif
                                                                @if ($item->user->is_authentication == 1)
                                                                    <img src="/assets/shuixing/imgs/icon/authentication.png"
                                                                         class="user_icon"/>
                                                                @endif
                                                                @if ($item->user->is_official == 1)
                                                                    <img src="/assets/shuixing/imgs/icon/official.png"
                                                                         class="user_icon"/>
                                                                @endif
                                                            </div>
                                                            <div class="entry-meta meta-1 font-small text-white pr-5 pl-5">
                                                                <span class="post-on">{{$item->format_time}}</span>
                                                                <span
                                                                    class="time-reading has-dot">{{$item->comment_count}} 评论</span>
                                                                <span class="hit-count has-dot">{{$item->like_count}} 喜欢</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            @foreach ($tpdata as $item)
                                <article class="col-lg-4 col-md-6 mb-30 wow fadeInUp animated" data-wow-delay="0.2s">
                                    <div class="post-card-1 border-radius-10 hover-up">
                                        @if ($item->image != '')
                                            <div class="post-thumb thumb-overlay img-hover-slide position-relative"
                                                 style="background-image: url({{$item->image}})">
                                                <a class="img-link" target="_blank" href="/single/{{$item->id}}"></a>
                                                                                    <span class="top-left-icon bg-primary"><i class="bi bi-heart"></i></span>
                                            </div>
                                        @elseif ($item->vimage != '')
                                            <div class="post-thumb thumb-overlay img-hover-slide position-relative"
                                                 style="background-image: url({{$item->vimage}})">
                                                <a class="img-link" target="_blank" href="/single/{{$item->id}}"></a>
                                                                                    <span class="top-left-icon bg-primary"><i class="bi bi-heart"></i></span>
                                            </div>
                                        @endif
                                        <div class="post-content p-30">
                                            <div class="entry-meta meta-0 font-small mb-10 wlc1">
                                                <a href="/circle/{{$item->circle_id}}"><span
                                                        class="post-cat">{{$item->circle_name}}</span></a>
                                                @foreach ($item->tags as $items)
                                                    <a href="/tag/{{$items->id}}"><span>#{{$items->tags_name}}</span></a>
                                                @endforeach
                                            </div>
                                            <div class="d-flex post-card-content">
                                                <h5 class="post-title h48 mb-20 font-weight-900 wlc2">
                                                    <a target="_blank"
                                                       href="/single/{{$item->id}}">{!! $item->posts_content !!}</a>
                                                </h5>
                                                <div class="post-user-box">
                                                    <img class="author-avatar" src="{{$item->user->user_avatar}}" alt="">
                                                    <span
                                                        class="author-name font-weight-bold wlc1">{{$item->user->user_name}}</span>
                                                    @if ($item->user->is_member == 1)
                                                        <img src="/assets/shuixing/imgs/icon/vip.png"
                                                             class="user_icon"/>
                                                    @endif
                                                    @if ($item->user->is_authentication == 1)
                                                        <img src="/assets/shuixing/imgs/icon/authentication.png"
                                                             class="user_icon"/>
                                                    @endif
                                                    @if ($item->user->is_official == 1)
                                                        <img src="/assets/shuixing/imgs/icon/official.png"
                                                             class="user_icon"/>
                                                    @endif
                                                </div>
                                                <div class="entry-meta meta-1 float-left pt-15 font-x-small text-uppercase">
                                                    <span class="post-on">{{$item->format_time}}</span>
                                                    <span class="time-reading has-dot">{{$item->comment_count}} 评论</span>
                                                    <span class="post-by has-dot">{{$item->like_count}} 喜欢</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            @endforeach
                        </div>
                    </div>
                </div>
    </main>
    <!-- End Main content -->
    <!--site-bottom-->
    <div class="site-bottom pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="sidebar-widget widget-latest-posts mb-30 wow fadeInUp animated">
                        <div class="widget-header-2 position-relative mb-30">
                            <h5 class="mt-5 mb-30">推荐圈子</h5>
                        </div>
                        <div class="post-block-list post-module-1">
                            <ul class="list-post">
                                @foreach ($tcdata as $item)
                                    <li class="mb-30">
                                        <div class="d-flex hover-up-2 transition-normal">
                                            <div
                                                class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                                <a class="color-white" href="/circle/{{$item->id}}">
                                                    <img class="img-ofc" src="{{$item->head_portrait}}" alt="">
                                                </a>
                                            </div>
                                            <div class="post-content media-body">
                                                <h6 class="post-title mt-5 mb-10 wlc1 font-medium"><a
                                                        href="/circle/{{$item->id}}">{{$item->circle_name}}</a></h6>
                                                <p class="text-muted font-small wlc1">{{$item->circle_introduce}}</p>
                                                <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                    <span class="post-on">{{$item->posts_count}} 条动态</span>
                                                    <span
                                                        class="post-by has-dot">{{$item->user_circle_count}} 人在讨论</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="sidebar-widget widget-latest-posts mb-30 wow fadeInUp animated"
                         data-wow-delay="0.2s">
                        <div class="widget-header-2 position-relative mb-30">
                            <h5 class="mt-5 mb-30">最火圈子</h5>
                        </div>
                        <div class="post-block-list post-module-1">
                            <ul class="list-post">
                                @foreach ($hcdata as $item)
                                    <li class="mb-30">
                                        <div class="d-flex hover-up-2 transition-normal">
                                            <div
                                                class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                                <a class="color-white" href="/circle/{{$item->id}}">
                                                    <img class="img-ofc" src="{{$item->head_portrait}}" alt="">
                                                </a>
                                            </div>
                                            <div class="post-content media-body">
                                                <h6 class="post-title mt-5 mb-10 wlc1 font-medium"><a
                                                        href="/circle/{{$item->id}}">{{$item->circle_name}}</a></h6>
                                                <p class="text-muted font-small wlc1">{{$item->circle_introduce}}</p>
                                                <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                    <span class="post-on">{{$item->posts_count}} 条动态</span>
                                                    <span
                                                        class="post-by has-dot">{{$item->user_circle_count}} 人在讨论</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar-widget widget-latest-posts mb-30 wow fadeInUp animated"
                         data-wow-delay="0.4s">
                        <div class="widget-header-2 position-relative mb-30">
                            <h5 class="mt-5 mb-30">最新圈子</h5>
                        </div>
                        <div class="post-block-list post-module-1">
                            <ul class="list-post">
                                @foreach ($xcdata as $item)
                                    <li class="mb-30">
                                        <div class="d-flex hover-up-2 transition-normal">
                                            <div
                                                class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                                <a class="color-white" href="/circle/{{$item->id}}">
                                                    <img class="img-ofc" src="{{$item->head_portrait}}" alt="">
                                                </a>
                                            </div>
                                            <div class="post-content media-body">
                                                <h6 class="post-title mt-5 mb-10 wlc1 font-medium"><a
                                                        href="/circle/{{$item->id}}">{{$item->circle_name}}</a></h6>
                                                <p class="text-muted font-small wlc1">{{$item->circle_introduce}}</p>
                                                <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                    <span class="post-on">{{$item->posts_count}} 条动态</span>
                                                    <span
                                                        class="post-by has-dot">{{$item->user_circle_count}} 人在讨论</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar-widget widget-latest-posts mb-30 mt-20 wow fadeInUp animated">
                <div class="widget-header-2 position-relative mb-30">
                    <h5 class="mt-5 mb-30">社区贡献者</h5>
                </div>
                <div class="carausel-3-columns">
                    @foreach ($userdata as $item)
                        <div
                            class="carausel-3-columns-item d-flex bg-white has-border p-20 hover-up-2 transition-normal border-radius-5">
                            <div
                                class="post-thumb post-thumb-64 df-al-cer-box mr-10 border-radius-5 img-hover-scale overflow-hidden">
                                <a class="color-white">
                                    <img src="{{$item->user_avatar}}" alt="">
                                </a>
                            </div>
                            <div class="post-content media-body pt-15">
                                <h6 class="wlc1 d-flex align-items-center"><a class="mr-5" data-trigger="hover" data-placement="top" data-toggle="popoverxcx">{{$item->user_name}}
                                    </a>
                                    @if ($item->is_member == 1)
                                        <img src="/assets/shuixing/imgs/icon/vip.png"
                                             class="user_icon"/>
                                    @endif
                                    @if ($item->is_authentication == 1)
                                        <img src="/assets/shuixing/imgs/icon/authentication.png"
                                             class="user_icon"/>
                                    @endif
                                    @if ($item->is_official == 1)
                                        <img src="/assets/shuixing/imgs/icon/official.png"
                                             class="user_icon"/>
                                    @endif</h6>
                                @if ($item->user_introduce == '')
                                    <p class="text-muted font-small wlc1">这个人太懒什么也没说...</p>
                                @else
                                    <p class="text-muted font-small wlc1">{{$item->user_introduce}}</p>
                                @endif
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!--container-->
    </div>
    <!--end site-bottom-->
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
@endsection
