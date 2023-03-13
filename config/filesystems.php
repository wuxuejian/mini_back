<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Default Filesystem Disk
    |--------------------------------------------------------------------------
    |
    | Here you may specify the default filesystem disk that should be used
    | by the framework. The "local" disk, as well as a variety of cloud
    | based disks are available to your application. Just store away!
    |
    */

    'default' => env('FILESYSTEM_DRIVER', 'local'),

    /*
    |--------------------------------------------------------------------------
    | Filesystem Disks
    |--------------------------------------------------------------------------
    |
    | Here you may configure as many filesystem "disks" as you wish, and you
    | may even configure multiple disks of the same driver. Defaults have
    | been setup for each driver as an example of the required options.
    |
    | Supported Drivers: "local", "ftp", "sftp", "s3"
    |
    */

    'disks' => [

        'local' => [
            'driver' => 'local',
            'root' => public_path('storage'),
            'url' => env('APP_URL').'/storage',
        ],

//        'public' => [
//            'driver' => 'local',
//            'root' => storage_path('app/public'),
//            'url' => env('APP_URL').'/storage',
//            'visibility' => 'public',
//        ],

        'public' => [
            'driver' => 'local',
            'root' => public_path('storage'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',
        ],


        's3' => [
            'driver' => 's3',
            'key' => env('AWS_ACCESS_KEY_ID'),
            'secret' => env('AWS_SECRET_ACCESS_KEY'),
            'region' => env('AWS_DEFAULT_REGION'),
            'bucket' => env('AWS_BUCKET'),
            'url' => env('AWS_URL'),
            'endpoint' => env('AWS_ENDPOINT'),
        ],
        'qiniu' => [
            'driver'  => 'qiniu',
            'domains' => [
                'default'   => 'qingniuhr-oss.qingniuhr.com', //你的七牛域名
                'https'     => 'https://qingniuhr-oss.qingniuhr.com/',         //你的HTTPS域名
                'custom'    => 'qingniuhr-oss.qingniuhr.com',                //你的自定义域名
            ],
            'access_key'=> 'h52xKPvFJ2r2CjkENmLHUko62Z5eOIAqi7u0z7At',  //AccessKey
            'secret_key'=> 'rpLAGAiiZKe8nHzOsOkwzI8tkG5HSu-Un23eW5yw',  //SecretKey
            'bucket'    => 'qingniuhr',  //Bucket名字
            //'notify_url'=> '',  //持久化处理回调地址
            'url'       => 'https://qingniuhr-oss.qingniuhr.com',  // 填写文件访问根url
        ],

        'cosv5' => [
            'driver' => 'cosv5',
            'region'          => env('COSV5_REGION', 'ap-guangzhou'),
            'credentials'     => [
                'appId'     => env('COSV5_APP_ID'),
                'secretId'  => env('COSV5_SECRET_ID'),
                'secretKey' => env('COSV5_SECRET_KEY'),
                'token'     => env('COSV5_TOKEN'),
            ],
            'timeout'         => env('COSV5_TIMEOUT', 60),
            'connect_timeout' => env('COSV5_CONNECT_TIMEOUT', 60),
            'bucket'          => env('COSV5_BUCKET'),
            'cdn'             => env('COSV5_CDN'),
            'url'             => env('COSV5_CDN'),
            'scheme'          => env('COSV5_SCHEME', 'https'),
            'read_from_cdn'   => env('COSV5_READ_FROM_CDN', false),
            'cdn_key'         => env('COSV5_CDN_KEY'),
            'encrypt'         => env('COSV5_ENCRYPT', false),
        ],

    ],

    /*
    |--------------------------------------------------------------------------
    | Symbolic Links
    |--------------------------------------------------------------------------
    |
    | Here you may configure the symbolic links that will be created when the
    | `storage:link` Artisan command is executed. The array keys should be
    | the locations of the links and the values should be their targets.
    |
    */

    'links' => [
        public_path('storage') => storage_path('app/public'),
    ],

];
