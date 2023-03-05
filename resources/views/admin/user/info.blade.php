<style>
    .info—box{
        display: flex;
    }
</style>
<div>

    <div class="info—box">
        <h5>昵称：</h5>
        <p>{{$user['user_name']}}</p>
    </div>
    <div class="info—box">
        <h5>背景：</h5>
        <p><img src="{{$user['user_background_maps']}}" alt="" width="159"></p>
    </div>
    <div class="info—box">
        <h5>简介：</h5>
        <p>{{$user['user_introduce']}}</p>
    </div>
    <div class="info—box">
        <h5>手机：</h5>
        <p>{{$user['phone']}}</p>
    </div>
    <div class="info—box">
        <h5>邮箱：</h5>
        <p>{{$user['email']}}</p>
    </div>


</div>

