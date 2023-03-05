@extends('shuixing.home')

@section('title', $the_tag->tags_name . ' - 话题')
@section('description', $the_tag->tag_introduce ?? \App\Wen\Utils\Settings::get('app_title'))

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
        <div class="container pt-50">
            <div class="row mb-30">
                <div class="tag-tagcloud">
                    <a class="tag-cloud-link {{$type == 0 ?'active':''}}" href="/tag/0">
                        #全部</a>
                    @foreach ($tag as $item)
                        <a class="tag-cloud-link {{$type == $item->id ?'active':''}}" href="/tag/{{$item->id}}">
                            #{{$item->tags_name}}</a>
                    @endforeach
                </div>
            </div>
            <!--Loop Masonry-->
            <div class="grid row mb-30">
                <div class="grid-sizer"></div>
                @foreach ($data as $item)
                    <article class="grid-item col pb-50 wow fadeIn animated">
                        <div class="post-card-1 border-radius-10 hover-up">
                            <div class="post-thumb thumb-overlay img-hover-slide position-relative"
                                 style="background-image: url({{$item['img']}})">
                                <a class="img-link" target="_blank" href="/single/{{$item['id']}}"></a>
                            </div>
                            <div class="post-content p-20">
                                <div class="entry-meta meta-0 font-small mb-15">
                                    <a href="/circle/{{$item['circle_id']}}"><span
                                            class="post-cat">{{$item['circle_name']}}</span></a>
                                    @foreach ($item['tags'] as $tag)
                                        <a href="/tag/{{$tag['id']}}"><span>#{{$tag['tags_name']}}</span></a>
                                    @endforeach
                                </div>
                                <div class="d-flex post-card-content">
                                    <h5 class="post-title mb-20 font-weight-900 wlc2">
                                        <a target="_blank" href="/single/{{$item['id']}}">{!! $item['posts_content'] !!}</a>
                                    </h5>
                                    <div class="post-user-box">
                                        <img class="author-avatar" src="{{$item['user']->user_avatar}}" alt="">
                                        <span
                                            class="author-name font-weight-bold wlc1">{{$item['user']->user_name}}</span>
                                        @if ($item['user']->is_member == 1)
                                            <img src="/assets/shuixing/imgs/icon/vip.png"
                                                 class="user_icon"/>
                                        @endif
                                        @if ($item['user']->is_authentication == 1)
                                            <img src="/assets/shuixing/imgs/icon/authentication.png"
                                                 class="user_icon"/>
                                        @endif
                                        @if ($item['user']->is_official == 1)
                                            <img src="/assets/shuixing/imgs/icon/official.png"
                                                 class="user_icon"/>
                                        @endif
                                    </div>
                                    <div class="entry-meta meta-1 pt-15 float-left font-x-small text-uppercase">
                                        <span class="post-on">{{$item['format_time']}}</span>
                                        <span class="time-reading has-dot">{{$item['comment_count']}} 评论</span>
                                        <span class="post-by has-dot">{{$item['like_count']}} 喜欢</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                @endforeach
            </div>
            <!-- is NULL -->
            @if (count($data) <= 0)
                <div class="container pt-30 pb-80">
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
                                             src="{{ \App\Wen\Utils\Utils::getMiniCode('pages/tags/tags', $tag_id) }}"
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
