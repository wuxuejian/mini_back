<style>
    .dashboard-title .links {
        text-align: center;
        margin-bottom: 2.5rem;
    }
    .dashboard-title .links > a {
        padding: 0 25px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: .1rem;
        text-decoration: none;
        text-transform: uppercase;
        color: #fff;
    }
    .dashboard-title h1 {
        font-weight: 200;
        font-size: 2.5rem;
    }
    .dashboard-title .avatar {
        background: #fff;
        border: 2px solid #fff;
        width: 70px;
        height: 70px;
    }
</style>

<div class="dashboard-title card bg-primary">
    <div class="card-body">
        <div class="text-center ">

            <img class="avatar img-circle shadow mt-1" src="{{config('admin.logo_url')}}">

            <div class="text-center mb-1">
                <h1 class="mb-3 mt-2 text-white">{{config('admin.name')}}<span style="font-size: 16px; margin-left: 10px;">v{{ $version  }}</span></h1>
                <div class="links">
                    <a href="https://www.minisns.cn" target="_blank">MiniSNS官网</a>
                    <a  id="doc-link" target="_blank" style="text-decoration: line-through;">代理商</a>
                    <a  id="demo-link" target="_blank" style="text-decoration: line-through;">定制服务</a>
                    <a href="https://doc.chongyeapp.com" id="demo-link" target="_blank">教程文档</a>
                </div>
            </div>
        </div>
    </div>
</div>
