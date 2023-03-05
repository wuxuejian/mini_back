@extends('shuixing.home')

@section('title', '联系我们')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'联系我们')

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
        <div class="featured-slider-2">
            <div class="featured-slider-2-items">
                <div class="slider-single">
                    <div class="post-thumb position-relative">
                        <div class="thumb-overlay position-relative"
                             style="background-image: url(https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/about.jpg)">
                            <div class="post-content-overlay">
                                <div class="container">
                                    <h1 class="post-title mb-20 font-weight-900 text-white">
                                        <a class="text-white" href="single.html" tabindex="0">
                                            欢迎各位创作者、开发者、投资者或媒体与我们联系</a>
                                    </h1>
                                    <div class="entry-meta meta-1 font-small text-white mt-10 pr-5 pl-5">
											<span class="post-on">We welcome creators, developers,
												investors or media to contact us</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-single">
                    <div class="post-thumb position-relative">
                        <div class="thumb-overlay position-relative"
                             style="background-image: url(https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/fauxels.jpg)">
                            <div class="post-content-overlay">
                                <div class="container">
                                    <h1 class="post-title mb-20 font-weight-900 text-white">
                                        <a class="text-white" href="single.html" tabindex="0">
                                            加入我们<br>和我们一起探索未来
                                        </a>
                                    </h1>
                                    <div class="entry-meta meta-1 font-small text-white mt-10 pr-5 pl-5">
                                        <span class="post-on">Join us as we explore the future</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-single">
                    <div class="post-thumb position-relative">
                        <div class="thumb-overlay position-relative"
                             style="background-image: url(https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/vlada-karpovich.jpg)">
                            <div class="post-content-overlay">
                                <div class="container">
                                    <h1 class="post-title mb-20 font-weight-900 text-white">
                                        <a class="text-white" href="single.html" tabindex="0">
                                            反馈意见和建议，让我们听到你的声音</a>
                                    </h1>
                                    <div class="entry-meta meta-1 font-small text-white mt-10 pr-5 pl-5">
											<span class="post-on">Give feedback and suggestions
												and let us hear your voice</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container position-relative">
                <div class="arrow-cover color-white"></div>
                <div class="featured-slider-2-nav-cover">
                    <div class="featured-slider-2-nav">
                        <div class="slider-post-thumb mr-15 mt-20 position-relative">
                            <div class="d-flex hover-up-2 transition-normal">
                                <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5">
                                    <img class="border-radius-5"
                                         src="https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/about.jpg"
                                         alt="">
                                </div>
                                <div class="post-content media-body text-white">
                                    <h5 class="post-title mb-15 text-limit-2-row">
                                        欢迎各位创作者、开发者、投资者或媒体与我们联系
                                    </h5>
                                    <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                        <span class="post-on text-white">Welcome to contact</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slider-post-thumb mr-15 mt-20 position-relative">
                            <div class="d-flex hover-up-2 transition-normal">
                                <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5">
                                    <img class="border-radius-5"
                                         src="https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/fauxels.jpg"
                                         alt="">
                                </div>
                                <div class="post-content media-body text-white">
                                    <h5 class="post-title text-limit-2-row">加入我们
                                        <br>让我们一起探索未来
                                    </h5>
                                    <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                        <span class="post-on text-white">Join us</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slider-post-thumb mr-15 mt-20 position-relative">
                            <div class="d-flex hover-up-2 transition-normal">
                                <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5">
                                    <img class="border-radius-5"
                                         src="https://qinghang-1305480232.cos.ap-guangzhou.myqcloud.com/pc/vlada-karpovich.jpg"
                                         alt="">
                                </div>
                                <div class="post-content media-body text-white">
                                    <h5 class="post-title mb-15 text-limit-2-row">反馈意见和建议，让我们听到你的声音</h5>
                                    <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                        <span class="post-on text-white">feedback</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- End feature -->
        <div class="container single-content">
            <div class="entry-wraper mt-50">
                <p><span class="mr-5">
							<ion-icon name="location-outline" role="img" class="md hydrated"
                                      aria-label="location outline"></ion-icon>
						</span><strong>地址</strong>: {{ \App\Wen\Utils\Settings::get('about_address') }}
                </p>
                <p><span class="mr-5">
							<ion-icon name="planet-outline" role="img" class="md hydrated" aria-label="planet outline">
							</ion-icon>
						</span><strong>邮箱</strong>: {{ \App\Wen\Utils\Settings::get('about_sms') }}
                </p>
                <h3 class="mt-30">商务合作</h3>
                <hr class="wp-block-separator is-style-wide">
                <p><span class="mr-5">
							<ion-icon name="location-outline" role="img" class="md hydrated"
                                      aria-label="location outline"></ion-icon>
						</span><strong>电话</strong>: {{ \App\Wen\Utils\Settings::get('about_phone') }}
                </p>
                <h1 class="mt-30">社区反馈</h1>
                <hr class="wp-block-separator is-style-wide">
                <form class="form-contact comment_form" action="#" id="commentForm">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <input class="form-control" name="name" id="name" type="text" placeholder="名称">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <input class="form-control" name="email" id="email" type="email" placeholder="邮箱">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <input class="form-control" name="website" id="website" type="text"
                                       placeholder="电话">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                    									<textarea class="form-control w-100" name="comment" id="comment"
                                                                  cols="30" rows="9"
                                                                  placeholder="反馈内容"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <button data-trigger="hover" data-placement="top" data-toggle="popoverqywx" type="submit"
                                class="button button-contactForm">发送
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!--container-->
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
