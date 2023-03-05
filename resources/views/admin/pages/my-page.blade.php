<?php
?>
<div class="mini-extension-page">
    <li class="cell upload"><i class="fa fa-cloud-upload"><span>上传模块</span></i>
        <input class="mini-upload-file" type="file" accept="" name="file">
    </li>
</div>

<style>
    input.mini-upload-file {
        display: none!important;
        opacity: .01;
        filter: Alpha(opacity=1);
    }
    .mini-extension-page li.cell{
        width: 120px;
        height: 120px;
        text-align: center;
        cursor: pointer;
        margin-right: 0;
        margin-bottom: 15px;
        float: left;
    }
    .mini-extension-page li.cell>i{
        width: 100px;
        height: 100px;
        font-size: 30px;
        background-color: #eee;
        color: #888;
        border-radius: 4px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-flow: column;
        margin: auto;
    }
    .mini-extension-page li.cell>i>span{
        font-size: 12px;
        display: block;
    }
</style>
