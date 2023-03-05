@extends('shuixing.home')

@section('title', '资源导航')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'资源导航')

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
    <main class="pb-50">
        <!--archive header-->
        <div class="archive-header pt-50 text-center">
            <div class="container">
                <h2 class="font-weight-900">为互联网工作者而设计</h2>
                <div class="breadcrumb mb-20">
                    产品/设计师/独立开发者的资源素材库
                </div>
                <button data-trigger="hover" data-placement="bottom" data-toggle="popoverqywx"
                        class="btn bg-primary text-white btn-fang-box" type="submit">
                    我要推荐
                    <img class="ml-5" src="/assets/shuixing/imgs/icon/recommended.svg"/>
                </button>
                <div class="bt-1 border-color-1 mt-80 mb-50"></div>
            </div>
        </div>

        @foreach ($data as $item)
            <div class="container mb-20">
                <div class="sidebar-widget widget-latest-posts mb-50 wow fadeInUp animated">
                    <div class="widget-header-1 position-relative mb-30">
                        <p class="mb-0">{{ $item->introduce }}</p>
                        <h2 class="mb-30">{{ $item->name }}</h2>
                    </div>
                    <div class="row">
                        @foreach ($item->list as $items)
                            <article class="col-md-3 mb-30 wow">
                                <div class="hover-tt3 bg-white border-radius-10">
                                    <a href="{{ $items->link }}" target="_blank" class="design-box">
                                        <img class="img-ofc design-icon" src="{{ $items->icon }}"/>
                                        <div class="ml-15">
                                            <h5 class="wlc1">{{ $items->name }}</h5>
                                            <p class="wlc1 mb-0">{{ $items->introduce }}</p>
                                        </div>
                                    </a>
                                </div>
                            </article>
                        @endforeach
                    </div>
                </div>
            </div>
        @endforeach
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
