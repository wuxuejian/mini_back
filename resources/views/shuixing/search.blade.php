@extends('shuixing.home')

@section('title', '搜索')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'搜索')

@section('progress')
    @parent
{{--    <div class="scroll-progress primary-bg"></div>--}}
    <!-- Start Preloader -->
    <!-- <div class="preloader text-center">
        <div class="circle"></div>
    </div> -->
@endsection

@section('main')
    @parent
    <!-- Start Main content -->
    <main class="">
        <div class="archive-header pt-30">
            <div class="container">
                <div class="row nav search-tab">
                    <div class="search-tab__nav-link">
                        <a class="{{$type == 0?'active':''}}"
                           href="/search/0/{{$keyword}}">内容 {{$data['posts_count']}}</a>
                    </div>
                    <div class="search-tab__nav-link">
                        <a class="{{$type == 1?'active':''}}"
                           href="/search/1/{{$keyword}}">圈子 {{$data['circle_count']}}</a>
                    </div>
                    <div class="search-tab__nav-link">
                        <a class="{{$type == 2?'active':''}}"
                           href="/search/2/{{$keyword}}">用户 {{$data['user_count']}}</a>
                    </div>
                </div>

                <div class="container mt-40 pb-50">
                    <div class="tab-content">
                        @if ($type == 0)
                            <div class="post-module-3">
                                <div class="loop-list loop-list-style-1">
                                    @foreach ($pdata as $item)
                                        <article class="wow fadeInUp animated bg-white border-radius-5">
                                            <div class="hover-up-2 transition-normal row mb-40 list-style-2 p-20">
                                                @if ($item->image != '')
                                                    <div class="col-md-4">
                                                        <div
                                                            class="post-thumb hover-tt3 position-relative border-radius-5">
                                                            <div
                                                                class="img-hover-slide border-radius-5 position-relative"
                                                                style="background-image: url({{$item->image}})">
                                                                <a class="img-link" target="_blank"
                                                                   href="/single/{{$item->id}}"></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @elseif ($item->vimage != '')
                                                    <div class="col-md-4">
                                                        <div
                                                            class="post-thumb hover-tt3 position-relative border-radius-5">
                                                            <div
                                                                class="img-hover-slide border-radius-5 position-relative"
                                                                style="background-image: url({{$item->vimage}})">
                                                                <a class="img-link" target="_blank"
                                                                   href="/single/{{$item->id}}"></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endif
                                                <div
                                                    class="{{$item->image != '' || $item->vimage != '' ?'col-md-8':'col-md-12'}} align-self-center">
                                                    <div class="post-content">
                                                        <div class="entry-meta meta-0 font-small mb-20">
                                                            <a href="/circle/{{$item->circle_id}}"><span
                                                                    class="post-cat text-primary">{{$item->circle_name}}</span></a>
                                                            @foreach ($item->tags as $items)
                                                                <a href="/tag/{{$items->id}}"><span
                                                                        class="text-dark">#{{$items->tags_name}}</span></a>
                                                            @endforeach
                                                        </div>
                                                        <h5 class="post-title font-weight-900 mb-10 wlc2">
                                                            <a target="_blank" href="/single/{{$item->id}}">
                                                                {!! $item->posts_content_raw !!}
                                                            </a>
                                                        </h5>
                                                        <div class="entry-post-user mb-20">
                                                            <img class="author-avatar"
                                                                 src="{{$item->user->user_avatar}}"
                                                                 alt="">
                                                            <span
                                                                class="author-name font-weight-bold wlc1">{{$item->user->user_name}}</span>
                                                        </div>
                                                        <div
                                                            class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                            <span class="post-on">{{$item->format_time}}</span>
                                                            <span
                                                                class="time-reading has-dot">{{$item->comment_count}} 评论</span>
                                                            <span
                                                                class="post-by has-dot">{{$item->like_count}} 喜欢</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    @endforeach
                                </div>
                            </div>
                            @if (count($pdata) <= 0)
                                <div class="container pb-80">
                                    <div class="row text-center">
                                        <div class="container">
                                            <img class="col-md-6"
                                                 src="https://img.mini.chongyeapp.com/icons/abp.png"
                                                 alt="">
                                            <h1 class="font-weight-900">空</h1>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @elseif ($type == 1)
                            <div class="loop-list loop-list-style-1">
                                <div class="row">
                                    @foreach ($cdata as $item)
                                        <article class="col-md-6 mb-40 wow fadeInUp animated">
                                            <div class="post-card-1 border-radius-10">
                                                <div class="thumb-overlay-circle img-hover-slide position-relative"
                                                     style="background-image: url({{$item->background_maps}})">
                                                    <a class="img-link" href="/circle/{{$item->id}}"></a>
                                                </div>
                                                <div class="post-content circle-p">
                                                    <div class="circle-box mb-20">
                                                        <img class="img-ofc" src="{{$item->head_portrait}}"/>
                                                        <h6 class="font-weight-900 ml-15 wlc1 mb-5">
                                                            {{$item->circle_name}}</h6>
                                                    </div>
                                                    <div class="circle-introduce mb-15">
                                                        <span class="topt mr-5">简介</span>
                                                        <a class="wlc1"
                                                           href="/circle/{{$item->id}}">{{$item->circle_introduce}}</a>
                                                    </div>
                                                    <div class="d-flex">
                                                        <div
                                                            class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                            <span class="time-reading">{{$item->posts_count}} 篇内容</span>
                                                            <span
                                                                class="post-by has-dot">{{$item->user_count}} 讨论</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    @endforeach
                                </div>
                            </div>
                            @if (count($cdata) <= 0)
                                <div class="container pb-80">
                                    <div class="row text-center">
                                        <div class="container">
                                            <img class="col-md-6"
                                                 src="https://img.mini.chongyeapp.com/icons/abp.png"
                                                 alt="">
                                            <h1 class="font-weight-900">空</h1>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @elseif ($type == 2)
                            <div class="container">
                                <ul class="list-post">
                                    @foreach($udata as $item)
                                        <li class="bg-white mb-30 p-30">
                                            <div class="d-flex align-items-center">
                                                <div
                                                    class="post-thumb post-thumb-88 d-flex mr-15 img-circle img-hover-scale overflow-hidden">
                                                    <a class="color-white">
                                                        <img class="img-ofc" src="{{$item->user_avatar}}" alt="">
                                                    </a>
                                                </div>
                                                <div class="post-content media-body">
                                                    <h6 class="post-title mt-10 mb-10 wlc1 font-medium"><a
                                                        >{{$item->user_name}}</a></h6>
                                                    <p class="text-muted font-small wlc1">
                                                        @if ($item->user_introduce != '')
                                                            {{$item->user_introduce}}
                                                        @else
                                                            这个人太懒什么也没说...
                                                        @endif
                                                    </p>
                                                    <div
                                                        class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                        <span class="post-on">{{$item->posts_count}} 条动态</span>
                                                        <span class="post-by has-dot">{{$item->fans_count}} 粉丝</span>
                                                    </div>
                                                </div>
                                                <div class="pl-30">
                                                    <button data-trigger="hover" data-placement="top"
                                                            data-toggle="popoverxcx" class="btn bg-primary text-white">
                                                        +关注
                                                    </button>
                                                </div>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            @if (count($udata) <= 0)
                                <div class="container pb-80">
                                    <div class="row text-center">
                                        <div class="container">
                                            <img class="col-md-6"
                                                 src="https://img.mini.chongyeapp.com/icons/abp.png"
                                                 alt="">
                                            <h1 class="font-weight-900">空</h1>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endif
                    </div>
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
    </main>
    <!-- End Main content -->
@endsection
