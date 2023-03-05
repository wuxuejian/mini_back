


<div class="container">
    <div class="row">
        <div class="col">
            <p>MiniSNS，专注于社区带货。</p>
            <p class="text-red">更新前建议做好数据库的备份，以免数据丢失</p>
            <button id="checkUpdate" class="btn btn-primary pull-left">在线更新</button>
        </div>
        <div class="col">
            <div id="show-box">

            </div>
        </div>

    </div>
    <div class="row mt-5">
        <div class="col">
            <div id="version-box">

            </div>
        </div>

    </div>
</div>



<script>

    $("#checkUpdate").click(function(){
        alert('还没有写好');
        return;
        var index = layer.load(1, {
            shade: [0.1,''] //0.1透明度的白色背景
        });
        $.ajax({
            url: 'check',
            datatype: "json",
            type: 'get',
            success: function (res) {   //成功后回调
                console.log(res)
                if(res.code == 200){
                    var str = '<h2>发现最新版本：'+res.version+'</h2>\n' +
                        '<p>'+res.msg+'</p>'+
                        '<button onclick="nowUpdate()" class="btn btn-primary pull-left">立即更新</button> ';
                    $('#version-box').html(str);
                    layer.close(index);
                }else if (res.code == 400){
                    var str = '<h2>错误:</h2>\n' +
                        '<p>'+res.msg+'</p>';
                    $('#version-box').html(str);
                    layer.close(index);
                }else{
                    var str = '没有发现新版本';
                    $('#version-box').html(str);
                    layer.close(index);
                }


            },
            error: function(e){    //失败后回调

            },
            beforeSend: function(){  //发送请求前调用，可以放一些"正在加载"之类额话

            }
        })
    });
    function nowUpdate(){
        // var timeId = setInterval("showTip()",1000);
        $.ajax({
            url: 'downloadFile',
            datatype: "json",
            type: 'get',
            success: function (res) {   //成功后回调
                if (res){
                    var html = "下载文件...</br>";
                    $('#show-box').append(html);
                    unzip()
                }else{
                    var str = '没有发现新版本哦';
                    $('#version-box').html(str);
                    layer.close(index);
                }


            },
            error: function(e){    //失败后回调
                console.log(e)
            },
            beforeSend: function(){  //发送请求前调用，可以放一些"正在加载"之类额话

            }
        })
    }


    function unzip()
    {


        $.ajax({
            url: 'unzip',
            datatype: "json",
            type: 'get',
            success: function (res) {   //成功后回调
                // console.log(res)

                var html = "解压文件...</br>";
                $('#show-box').append(html);

                updateSql()

            },
            error: function(e){    //失败后回调
                console.log(e)
            },
            beforeSend: function(){  //发送请求前调用，可以放一些"正在加载"之类额话

            }
        })

    }


    function updateSql(){

        $.ajax({
            url: 'updateSql',
            datatype: "json",
            type: 'get',
            success: function (res) {   //成功后回调
                // console.log(res)

                var html = "更新数据库...</br>";
                $('#show-box').append(html);

                var html = "更新完成</br>";
                $('#show-box').append(html);



            },
            error: function(e){    //失败后回调
                console.log(e)
            },
            beforeSend: function(){  //发送请求前调用，可以放一些"正在加载"之类额话

            }
        })
    }

</script>

