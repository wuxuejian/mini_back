@extends('shuixing.home')

@section('title', '登录')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'登录')

@section('progress')
    @parent
    <!-- <div class="scroll-progress primary-bg"></div> -->
    <!-- Start Preloader -->
    <!-- <div class="preloader text-center">
        <div class="circle"></div>
    </div> -->
@endsection

@section('main')
    @parent
    <!-- Start Main content -->
    <main class="pt-80 pb-80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <img class="col-md-11"
                         src="{{ \App\Wen\Utils\Settings::get('pc_login_bg', '') }}" alt="">
                </div>
                <div class="col-xl-6">
                    <div class="login_wrap widget-taber-content p-30 bg-white border-radius-10">
                        <div class="padding_eight_all bg-white">
                            <div class="heading_s1 text-center">
                                <h3 class="mb-30 font-weight-900">微信扫码登录</h3>
                            </div>
                            <form method="post">
                                <div class="row justify-content-center pb-30">
                                    <img class="login_qrcode_url animation_1" src="{{$qrcodeurl}}" alt=""/>
                                </div>
                                <div class="login_footer form-group">
                                    <div class="chek-form">
                                        <div class="custome-checkbox">
                                            登录即代表您同意
                                            <span><a target="_blank"
                                                     href="/clause/21" rel="nofollow">《用户协议》</a>&amp;<a target="_blank"
                                                                                         href="/clause/22" rel="nofollow">《隐私条款》</a></span>
                                        </div>
                                    </div>
                                    <div class="chek-form">
                                        <div class="custome-checkbox">
                                            <div data-trigger="hover" data-placement="top" data-toggle="popoverxcx"
                                                 class="text-muted text-center">还没{{ \App\Wen\Utils\Settings::get('app_title') }}? 快速注册
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="divider-text-center mt-15 mb-15">
                                <span>其它登录方式</span>
                            </div>
                            <ul class="btn-login list_none text-center mb-15">
                                <li><a href="#" class="btn btn-weixin">小程序
                                    </a></li>
                                <li><a href="#" class="btn btn-facebook">
                                        {{ \App\Wen\Utils\Settings::get('app_title') }}APP</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- End Main content -->
@endsection

@section('js')
    @parent
    <script>
        window.setInterval(myFunction, 1000 * 2);

        function myFunction() {
            axios.get('/pc_login').then(function (response) {
                if (response.data.scene == '{{$scene}}') {
                    $.showLoading({
                        "title": "登录中..."
                    });
                    axios.get('/pc_userinfo', {
                        headers: {
                            token: response.data.token
                        }
                    }).then(function (res) {
                        if (res.status == 200) {
                            var userinfo = JSON.stringify(res.data)
                            localStorage.setItem('userinfo', userinfo);
                            $.hideLoading();
                            window.history.go(-1);
                        }
                    }).catch(function (err) {
                        console.log("err", err);
                    });
                }
            }).catch(function (error) {
                console.log("error", error);
            });
        }
    </script>
@endsection

