<?php
namespace App\Admin\Controllers\Traits\WxSettingTraits;

use App\Wen\Utils\FieldUtils;
use App\Wen\Utils\Settings;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Widgets\Form;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

trait formPublishTrait{
    public function index_publish(Content $content)
    {
        return $content->title('发布配置')
//            ->body($this->buildPreviewButton())
//            ->body($this->newline())
            ->body(
                <<<HTML
<div class="card">{$this->form_publish()->render()}</div>
HTML
            );
    }
    protected function form_publish(){
        $form = new Form();
        $form->confirm('您确定要提交表单吗？', 'content');
        $form->disableResetButton();
        $form->html(function () {
            return '';
        }, '<b>一、上传限制</b>');
        $form->html(function () {
            return '<div style="background-color: powderblue;padding: 10px;border-radius: 5px;">小提示: 最大上传附件数为0时可以关闭附件上传功能</div>';
        }, '');
        $form->number('app_upload_max_files', '最大上传附件数')->help('不包活图片，仅指附件doc, xls, ppt, pdf, docx, xlsx, pptx等')->default(Settings::get('app_upload_max_files', 5));
        $form->number('app_upload_max_sounds', '最大上传音频数')->default(Settings::get('app_upload_max_sounds', 1));
        $form->html(function () {
            return '';
        }, '<b>二、媒体优化</b>');
        $form->switch('app_upload_video_compress', '上传视频是否压缩')->help('压缩会牺牲画质，但减少空间')->default(Settings::get('app_upload_video_compress', 1));
        $form->html(function () {
            return '<div style="background-color: powderblue;padding: 10px;border-radius: 5px;">小提示: 你可以将此值设置为10000，则默认关闭该功能，因为图片应该达不到这么大的宽度</div>';
        }, '');
        $form->number('app_upload_image_max_width', '图片最大宽度')->help('如果用户上传的图片大于该宽度，则自动等比缩小到该宽度，后台上传的图片不影响。')->default(Settings::get('app_upload_image_max_width', 800));
        $form->rate('app_upload_image_slimming', '图片保存质量')->default(Settings::get('app_upload_image_slimming', 100));
        $form->html(function () {
            return '';
        }, '<b>三、水印处理</b>');
        $form->html(function () {
            return '<div style="background-color: powderblue;padding: 10px;border-radius: 5px;">特别注意：<br/>1、后台上传的图片不会处理<br/>2、这种方式处理之后，查看原图，列表页等所有场景都会存在水印，且需要php安装imagemagick扩展（记得重启PHP）</div>';
        }, '');
        $form->radio('app_upload_image_mask_type', '水印类型')->options([0=>'无', 1=> '图片', 2=>'文字(未开发)'])->when(1, function (Form $form){
            $form->rate('app_upload_image_mask_rate', '水印大小')->help('相对于上传的图片的百分比，然后对水印图片进行放缩到该大小，比如上传了很小的图片，水印也会相应的变小')->default(Settings::get('app_upload_image_mask_rate', 5));
            $form->rate('app_upload_image_mask_opacity', '水印透明度')->help('1-100')->default(Settings::get('app_upload_image_mask_opacity', 100));
            $form->text('app_upload_image_mask_img', '水印图片地址')->help('填例如: mask/mask.png，同时把水印文件上传到storage/mask目录下，点击查看<a href="https://img.mini.chongyeapp.com/images/hbx/mask_tip.jpg" target="_blank">教程图</a>')->default(Settings::get('app_upload_image_mask_img', ''));
            $form->radio('app_upload_image_mask_pos', '水印位置')->options(['1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5, '6'=>6, '7'=>7, '8'=>8, '9'=>9])->help('1-9分包对应9个位置宫格，默认5代表中间')->default(Settings::get('app_upload_image_mask_pos', 5));
        })->default(Settings::get('app_upload_image_mask_type', 0));
        $form->html(function () {
            return '';
        }, '<b>三、付费限制</b>');
        $form->html(function () {
            return '<div style="background-color: powderblue;padding: 10px;border-radius: 5px;">小提示: 开源版本将[最大金币付费]设为0时，代表关闭付费贴，私密版需要[最大余额付费]同时为0</div>';
        }, '');
        $form->number('app_pay_max_coins', '最大金币付费')->default(Settings::get('app_pay_max_coins', 10000));
        $form->number('app_pay_max_balance', '最大余额付费')->help(__system__paycode__tip__(7))->default(Settings::get('app_pay_max_balance', 1000));
        $form->html(function () {
            return '';
        }, '<b>四、发布数量</b>');
        $form->number('app_publish_times_max', '每天最多发布数量')->default(Settings::get('app_publish_times_max', 3));
        $form->html(function () {
            return '';
        }, '<b>五、发布频率</b>');
        $form->number('app_publish_frequency_min', '距上次发布最小分钟')->default(Settings::get('app_publish_frequency_min', 10));
        $form->html(function () {
            return '';
        }, '<b>六、发布类型</b>');
        $form->listbox('app_publish_words_types', '发动态')->options([
            0 => '图片',
            1 => '视频',
            2 => '链接',
            3 => '商品',
            4 => '投票',
            5 => '录音'
         ])->customFormat(function ($value){
            return Settings::get('app_publish_words_types', [0,1,2,3,4,5]);
        })->help('右边代表选中');
        $form->listbox('app_publish_imgtext_types', '写图文')->options([
            0 => '文字',
            1 => '图片',
            2 => '视频',
            3 => '链接',
            4 => '音频',
            5 => '表格',
            6 => '撤销',
        ])->customFormat(function ($value){
            return Settings::get('app_publish_imgtext_types', [0,1,2,3,4,5,6]);
        })->help('右边代表选中');
        $form->html(function () {
            return '';
        }, '<b>七、发布权限</b>');
        $form->html(function () {
            return '<div style="background-color: powderblue;padding: 10px;border-radius: 5px;">小提示: 在用户点击发布之后才会检测用户的权限</div>';
        }, '');
        $form->radio('app_publish_permissions', '发布权限')->options(FieldUtils::userPermissions())->default(Settings::get('app_publish_permissions', 0));
        $form->action('settings/action/publish');
        return $form;
    }

    public function publish(Request $request){
        Cache::forget('configData');
        Settings::set('app_upload_max_files', $request->input('app_upload_max_files'), true);
        Settings::set('app_upload_max_sounds', $request->input('app_upload_max_sounds'), true);
        Settings::set('app_upload_video_compress', $request->input('app_upload_video_compress'), true);
        Settings::set('app_upload_image_max_width', $request->input('app_upload_image_max_width'), true);
        Settings::set('app_upload_image_slimming', $request->input('app_upload_image_slimming'), true);

        // 水印
        Settings::set('app_upload_image_mask_type', $request->input('app_upload_image_mask_type'), true);
        Settings::set('app_upload_image_mask_opacity', $request->input('app_upload_image_mask_opacity'), true);
        Settings::set('app_upload_image_mask_rate', $request->input('app_upload_image_mask_rate'), true);
        Settings::set('app_upload_image_mask_img', $request->input('app_upload_image_mask_img'), true);
        Settings::set('app_upload_image_mask_pos', $request->input('app_upload_image_mask_pos'), true);

        $app_publish_words_types = $request->input('app_publish_words_types');
        $app_publish_words_types_ = [];
        if($app_publish_words_types){
            foreach ($app_publish_words_types as $type){
                if($type != null){
                    $app_publish_words_types_[] = (int)$type;
                }
            }
        }
        // ["1", "2"] => [1, 2]
        $app_publish_imgtext_types = $request->input('app_publish_imgtext_types');
        $app_publish_imgtext_types_ = [];
        if($app_publish_imgtext_types){
            foreach ($app_publish_imgtext_types as $type){
                if($type != null){
                    $app_publish_imgtext_types_[] = (int)$type;
                }
            }
        }
        Settings::set('app_publish_words_types', $app_publish_words_types_, true);
        Settings::set('app_publish_imgtext_types', $app_publish_imgtext_types_, true);

        Settings::set('app_publish_times_max', $request->input('app_publish_times_max'), true);
        Settings::set('app_publish_frequency_min', $request->input('app_publish_frequency_min'), true);

        Settings::set('app_pay_max_coins', $request->input('app_pay_max_coins'), true);
        Settings::set('app_pay_max_balance', $request->input('app_pay_max_balance'), true);

        Settings::set('app_publish_permissions', $request->input('app_publish_permissions'), true);
        return $this->response()->success('成功！');
    }

}
