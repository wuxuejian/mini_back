@extends('shuixing.home')

@section('title', $seo_title)
@section('description', $seo_description )
{{--@section('keywords', $data->posts_content_raw)--}}

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
    <main class="pb-30">
        <div class="container single-content">
            <div class="entry-header entry-header-style-1 mb-50 pt-30">
                <h6 class="mt-30">
                    {!! $data->posts_content !!}
                </h6>
            </div>
            <!--figure-->
            <article class="entry-wraper mb-50">
                <div class="entry-main-content dropcap wow fadeIn animated">
                    <!-- picture-->
                    <figure class="wp-block-gallery columns-3 wp-block-image">
                        @if (count($data->image) > 0)
                            @if (count($data->image) == 1)
                                <img id="image" class="border-radius-10" src="{{$data->image[0]->img_url}}" alt=""/>
                            @else
                                <div id="images" class="shuixing-masonry">
                                    @foreach ($data->image as $item)
                                        <div class="shuixing-item">
                                            <img class="border-radius-5"
                                                 src="{{$item->img_url}}" alt=""></div>
                                    @endforeach
                                </div>
                            @endif
                        @elseif ($data->video != '' && $data->video != null)
                            <video class="border-radius-10" controls="controls" controls="controls"
                                   src="{{$data->video->video_url}}"
                                   poster="{{$data->video->video_thumb_url}}">
                            </video>
                        @endif
                    </figure>
                    <p style="font-size: 14px" class="font-weight-bold">{{$data->format_time}}</p>
                    <hr class="section-divider">
                </div>
                <div class="entry-bottom mt-50 mb-30 wow fadeIn animated">
                    <div class="entry-meta meta-0 font-small mb-10 wlc1">
                        <a href="/circle/{{$data->circle_id}}"><span class="post-cat">{{$data->circle_name}}</span></a>
                        @foreach ($data->tags as $item)
                            <a href="/tag/{{$item->id}}"><span>#{{$item->tags_name}}</span></a>
                        @endforeach
                    </div>
                </div>
                <div class="single-social-share clearfix wow fadeIn animated">
                    <div class="entry-meta meta-1 font-small color-grey float-left mt-10">
							<span class="hit-count mr-15"><i class="bi bi-chat mr-5"></i>{{$data->comment_count}}
								评论</span>
                        <span class="hit-count mr-15"><i class="bi bi-heart mr-5"></i>{{$data->like_count}} 喜欢</span>
                    </div>
                    <ul class="header-social-network d-inline-block list-inline float-md-right mt-md-0 mt-4">
                        <li class="list-inline-item text-muted"><span>分享</span></li>
                        <li data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                            class="list-inline-item"><a class="sx">
                                <img src="/assets/shuixing/imgs/icon/wechat-fill.svg"/></a></li>
                        <li class="list-inline-item"><a onclick="copy_share()" class="sx">
                                <textarea id="copy_link"></textarea>
                                <img src="/assets/shuixing/imgs/icon/link-white.svg"/></a></li>
                    </ul>
                </div>
                <!--author box-->
                <div class="author-bio p-30 mt-50 border-radius-10 bg-white wow fadeIn animated">
                    <div class="author-image mb-30">
                        <a><img src="{{$data->user->user_avatar}}" alt="" class="avatar"></a>
                    </div>
                    <div class="author-info">
                        <h4 class="font-weight-bold mb-20"><span class="vcard author"><span class="fn">
										<a title="{{$data->user->user_name}}"
                                           rel="author">{{$data->user->user_name}}</a></span></span>
                        </h4>
                        <div class="author-description text-muted">
                            @if ($data->user->user_introduce != '')
                                {{$data->user->user_introduce}}
                            @else
                                这个人好像还没有{{ \App\Wen\Utils\Settings::get('app_title') }}，没有个人简介
                            @endif
                        </div>
                        <a data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                           class="author-bio-link mb-md-0 mb-3">查看TA的全部内容</a>
                    </div>
                    <div class="ml-15 d-flex align-items-center">
                        <button data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                                class="btn bg-primary text-white" type="submit">
                            +关注
                        </button>
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
                                                 src="{{ \App\Wen\Utils\Utils::getMiniCode('pages/sticky/sticky', $post_id) }}"
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
                <!--Comments-->
                <div class="comments-area">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">评论 {{$data->comment_count}}</h5>
                    </div>
                    @foreach ($comment as $item)
                        <div class="comment-list wow fadeIn animated">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="{{$item->user_avatar}}" alt="">
                                </div>
                                <div class="desc">
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <h5>
                                                @if ($item->user_id == $data->user_id)
                                                    <span class="circle-master">作者</span>
                                                @endif
                                                <a class="{{$item->user_id == $data->user_id?'ml-40':''}}">
                                                    {{$item->user_name}}
                                                </a>
                                            </h5>
                                            <p class="date">{{$item->format_time}}</p>
                                        </div>
                                        <div class="reply-btn">
                                            <i class="bi bi-heart mr-5"></i>
                                            <a>{{$item->like_count}}</a>
                                        </div>
                                    </div>
                                    <p class="comment mt-15">
                                        {{$item->comment_content}}
                                    </p>
                                    @if ($item->comment_img_url != '')
                                        <img id="image" class="comment_img mt-10"
                                             src="{{$item->comment_img_url}}"
                                             alt=""/>
                                    @endif
                                </div>
                            </div>
                            @foreach ($item->child as $items)
                                <div class="single-comment depth-2 justify-content-between d-flex mt-50">
                                    <div class="thumb">
                                        <img src="{{$items->user_avatar}}" alt="">
                                    </div>
                                    <div class="desc">
                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5>
                                                    @if ($items->user_id == $data->user_id)
                                                        <span class="circle-master">作者</span>
                                                    @endif
                                                    <a class="{{$items->user_id == $data->user_id?'ml-40':''}}">
                                                        {{$items->user_name}}
                                                    </a>
                                                </h5>
                                                <p class="date">
                                                    {{$items->format_time}}
                                                </p>
                                            </div>
                                            <div class="reply-btn">
                                                <i class="bi bi-heart mr-5"></i>
                                                <a>{{$items->like_count}}</a>
                                            </div>
                                        </div>
                                        <div class="comment mt-15 d-flex">
                                            <div class="d-flex">
                                                @if ($item->user_id != $items->comment_agent_id)
                                                    回复
                                                    <P class="ml-5">{{$items->comment_agent_name}}</P>：
                                                @endif
                                            </div>
                                            {{$items->comment_content}}
                                        </div>
                                        @if ($items->comment_img_url != '')
                                            <img id="image" class="comment_img mt-10"
                                                 src="{{$items->comment_img_url}}"
                                                 alt=""/>
                                        @endif
                                    </div>
                                </div>
                            @endforeach
                        </div>
                @endforeach
                <!--comment form-->
                    <div class="pt-30 wow fadeIn animated">
                        <button data-trigger="hover" data-placement="top" data-toggle="popoverxcx" type="submit"
                                class="btn button button-contactForm">我也来讲两句
                        </button>
                    </div>
            </article>
        </div>
        <!--container-->
    </main>
    <!-- End Main content -->
@endsection

@section('js')
    @parent
    <script>
        function copy_share() {
            var link = document.getElementById("copy_link");
            link.value = '{{$link}}';
            link.select();
            document.execCommand("Copy");
            $.showToast({
                "title": "链接复制成功",
                "duration": 2000,
            });
        }
    </script>
@endsection
