@extends('shuixing.home')

@section('title', '条款')
@section('keywords', \App\Wen\Utils\Settings::get('app_title').'条款')

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
    <main class="pt-50 pb-50">
        <div class="container p-30 bg-white border-radius-10">
            {!! $content !!}
        </div>
        <!--container-->
    </main>
    <!-- End Main content -->
@endsection
