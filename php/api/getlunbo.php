<?php
/*
 * @Author: your name
 * @Date: 2020-08-12 21:37:12
 * @LastEditTime: 2020-08-17 20:49:18
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getlunbo.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
$data = array(
    array('url' => 'http://localhost:8888/Vue/vue_cni/src/images/lunbo/0864-iuzasxs3787467.jpg',
    ),
    array('url' => 'http://localhost:8888/Vue/vue_cni/src/images/lunbo/35f3-ixeeirz8368672.jpg',
    ),
    array('url' => 'http://localhost:8888/Vue/vue_cni/src/images/lunbo/1503-iwasyeh7453594.jpg',
    ),
    array('url' => 'http://localhost:8888/Vue/vue_cni/src/images/lunbo/9432-iwtqvyk4634526.jpg',
    ),
);
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $data = array('status' => 0, 'message' => $data);
    $json = json_encode($data);
    echo $json;
} else {
    echo '该访问方式不能获取数据';
}
