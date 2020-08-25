<?php
/*
 * @Author: your name
 * @Date: 2020-08-12 20:37:39
 * @LastEditTime: 2020-08-25 09:47:44
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getnewslist.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    $conn->query('SET NAMES utf8');
    $sql = "SELECT id,title,add_time,zhaiyao,click,img_url FROM news";
    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
    $data = array('status' => 0, 'message' => $data);
    $json = json_encode($data);
    echo $json;
    mysqli_close($conn);
} else {
    echo '该访问方式不能获取数据';
}
