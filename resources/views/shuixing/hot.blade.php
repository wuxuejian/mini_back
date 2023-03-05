@extends('shuixing.home')

@section('title', '热榜')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'热榜')

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
    <main>
        <div class="pt-50 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="post-module-3">
                            <div class="loop-list loop-list-style-1">
                                @foreach ($data as $item)
                                    <article class="wow fadeInUp animated bg-white">
                                        <div class="hover-up-2 transition-normal row mb-40 list-style-2 p-20">
                                            @if ($item->image != '')
                                                <div class="col-md-4">
                                                    <div class="post-thumb hover-tt3 position-relative border-radius-5">
                                                        <div class="img-hover-slide border-radius-5 position-relative"
                                                             style="background-image: url({{$item->image}})">
                                                            <a class="img-link" target="_blank"
                                                               href="/single/{{$item->id}}"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            @elseif ($item->vimage != '')
                                                <div class="col-md-4">
                                                    <div class="post-thumb hover-tt3 position-relative border-radius-5">
                                                        <div class="img-hover-slide border-radius-5 position-relative"
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
                                                            class="author-name font-weight-bold wlc1 mr-5">{{$item->user->user_name}}</span>
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
                        <div class="pagination-area mb-30 wow fadeInUp animated">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-start">
                                    <li class="page-item"><a class="page-link"
                                                             href="{{$data->previousPageUrl()}}"><i
                                                class="elegant-icon arrow_left"></i></a></li>
                                    @foreach ($data->getUrlRange($data->currentPage()-1, $data->currentPage()+2) as $key=> $item)
                                        @if ($key != 0 && $key < $data->lastPage())
                                            <li class="page-item {{$key == $data->currentPage() ?'active':'' }}"><a
                                                    class="page-link" href="{{$item}}">{{$key}}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                    @if ($data->currentPage()+3 < $data->lastPage())
                                        <li class="page-item">
                                            <a class="page-link">...</a>
                                        </li>
                                    @endif
                                    <li class="page-item {{$data->lastPage() == $data->currentPage() ?'active':'' }}">
                                        <a class="page-link"
                                           href="/hot?page={{$data->lastPage()}}">{{$data->lastPage()}}</a>
                                    </li>
                                    <li class="page-item"><a class="page-link"
                                                             href="{{$data->nextPageUrl()}}"><i
                                                class="elegant-icon arrow_right"></i></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="widget-area">
                            <div class="sidebar-widget widget_tagcloud mb-50">
                                <div class="widget-header-1 position-relative mb-30">
                                    <h5 class="mt-5 mb-30">热门标签</h5>
                                </div>
                                <div class="tagcloud mt-10">
                                    @foreach ($tags as $item)
                                        <a class="tag-cloud-link bg-white" href="/tag/{{$item->id}}">
                                            #{{$item->tags_name}}</a>
                                    @endforeach
                                </div>
                            </div>

                            <div class="sidebar-widget widget-latest-posts mb-50 wow fadeInUp animated">
                                <div class="widget-header-1 position-relative mb-30">
                                    <h5 class="mt-5 mb-30">及时热榜</h5>
                                </div>
                                <div class="post-block-list post-module-1">
                                    <ul class="list-post">
                                        @foreach ($hot_posts as $item)
                                            <li class="mb-30 wow fadeInUp animated">
                                                <div
                                                    class="d-flex bg-white has-border p-25 hover-up transition-normal border-radius-5">
                                                    <div class="post-content media-body">
                                                        <h6 class="post-title mb-15 text-limit-2-row font-medium wlc1">
                                                            <a target="_blank"
                                                               href="/single/{{$item->id}}">{!! $item->posts_content_raw !!}</a>
                                                        </h6>
                                                        <div class="entry-post-user mb-10">
                                                            <img class="author-avatar"
                                                                 src="{{$item->user->user_avatar}}" alt="">
                                                            <span
                                                                class="author-name font-weight-bold wlc1 mr-5">{{$item->user->user_name}}</span>
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
                                                        <div
                                                            class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                            <span class="post-on">{{$item->comment_count}} 评论</span>
                                                            <span
                                                                class="post-by has-dot">{{$item->like_count}} 喜欢</span>
                                                        </div>
                                                    </div>
                                                    @if ($item->image != '')
                                                        <div
                                                            class="post-thumb post-thumb-80 d-flex ml-15 border-radius-5 img-hover-scale overflow-hidden">
                                                            <a class="color-white" target="_blank"
                                                               href="/single/{{$item->id}}">
                                                                <img class="img-ofc" src="{{$item->image}}" alt="">
                                                            </a>
                                                        </div>
                                                    @elseif ($item->vimage != '')
                                                        <div
                                                            class="post-thumb post-thumb-80 d-flex ml-15 border-radius-5 img-hover-scale overflow-hidden">
                                                            <a class="color-white" target="_blank"
                                                               href="/single/{{$item->id}}">
                                                                <img class="img-ofc" src="{{$item->vimage}}" alt="">
                                                            </a>
                                                        </div>
                                                    @endif
                                                </div>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>

                            <div class="sidebar-widget widget-latest-posts mb-50 wow fadeInUp animated">
                                <div class="widget-header-1 position-relative mb-30">
                                    <h5 class="mt-5 mb-30">热门用户</h5>
                                </div>
                                <div class="post-block-list post-module-2">
                                    <ul class="list-post">
                                        @foreach ($user as $item)
                                            <li class="mb-30 wow fadeInUp animated">
                                                <div
                                                    class="d-flex bg-white has-border p-25 hover-up transition-normal border-radius-5">
                                                    <div
                                                        class="post-thumb post-thumb-64 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                                        <a class="color-white">
                                                            <img class="img-ofc" src="{{$item->user_avatar}}" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="post-content media-body">
                                                        <p class="mb-10"><a><strong>{{$item->user_name}}</strong></a>
                                                            <span class="ml-15 font-small text-muted has-dot">
																{{$item->posts_count}} 篇内容</span>
                                                        </p>
                                                        @if ($item->user_introduce == '')
                                                            <p class="text-muted font-small">这个人太懒什么也没说...</p>
                                                        @else
                                                            <p class="text-muted font-small">{{$item->user_introduce}}</p>
                                                        @endif
                                                    </div>
                                                </div>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>

                            <div class="sidebar-widget widget_instagram wow fadeInUp animated">
                                <div class="widget-header-1 position-relative mb-30">
                                    <h5 class="mt-5 mb-30">热门圈子</h5>
                                </div>
                                <div class="instagram-gellay">
                                    <ul class="insta-feed">
                                        @foreach ($circle as $item)
                                            <li>
                                                <a href="/circle/{{$item->id}}"
                                                   class="img-hover-scale overflow-hidden"
                                                   data-animate="zoomIn" data-duration="1.5s" data-delay="0.1s">
                                                    <img class="border-radius-5 img-ofc " src="{{$item->head_portrait}}"
                                                         alt=""></a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
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
