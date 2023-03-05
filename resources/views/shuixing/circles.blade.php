@extends('shuixing.home')

@section('title', '圈子')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'圈子')

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
        <!-- Features Section -->
        <div class="container pt-60">
            <div class="row justify-content-md-between">
                <div class="col-md-3 col-xs-3 col-sm-3 mb-30">
                    <div class="tab-vertical-md">
                        <!-- Tab Nav -->
                        <div class="nav flex-column">
                            <a class="tab-vertical__nav-link fadeInUp animated hover-up {{$type == -1?'active':''}}"
                               href="/circles/-1">
                                最火
                            </a>
                            <a class="tab-vertical__nav-link fadeInUp animated hover-up {{$type == 0?'active':''}}"
                               href="/circles/0">
                                最新
                            </a>
                            @foreach ($plate as $item)
                                <a class="tab-vertical__nav-link fadeInUp animated hover-up {{$type == $item->id?'active':''}}"
                                   href="/circles/{{$item->id}}">
                                    {{$item->plate_name}}
                                </a>
                            @endforeach
                        </div>
                        <!-- End Tab Nav -->
                    </div>
                </div>
                <div class="col-md-8 col-xs-8 col-sm-8">
                    <!-- slideshow -->
                    @if ($type == -1)
                        <div class="featured-slider-3 position-relative mb-40">
                            <div class="slider-3-arrow-cover"></div>
                            <div class="featured-slider-3-items">
                                @foreach ($sdata as $item)
                                    <div class="slider-single overflow-hidden border-radius-10">
                                        <div class="post-thumb position-relative">
                                            <div class="thumb-overlay position-relative"
                                                 style="background-image: url({{$item->poster}})">
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endif
                <!-- End feature -->
                    <div class="loop-list loop-list-style-1 pb-50">
                        <div class="row">
                            @foreach ($data as $item)
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
                                                    <span class="post-by has-dot">{{$item->user_count}} 讨论</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            @endforeach
                        </div>
                    </div>
                    @if (count($data) <= 0)
                        <div class="container pb-80">
                            <div class="row text-center">
                                <div class="container">
                                    <img class="col-md-8"
                                         src="https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/Circles-pana.png"
                                         alt="">
                                    <h1 class="font-weight-900">空</h1>
                                </div>
                            </div>
                        </div>
                    @endif
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
        <!-- End Features Section -->
    </main>
    <!-- End Main content -->
@endsection
