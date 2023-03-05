<?php
function my_encode($t, $d){
    return urlencode(base64_encode( urlencode(base64_encode($t)) . ':' . urlencode(base64_encode($d)) ));
}
function my_decode($str){
    $f = base64_decode(urldecode($str));
    $f_arr = explode(':', $f);
    return ['t'=>base64_decode(urldecode($f_arr[0])), 'd'=>base64_decode(urldecode($f_arr[1]))];
}
echo my_encode(time() + rand(1, 5), 'mini.chongyeapp.com');

var_dump(my_decode('TVRZM056azBOelEwTUElM0QlM0Q6ZEdWemRDNWphRzl1WjNsbFlYQndMbU52YlElM0QlM0Q%3D'));
