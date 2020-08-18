<?php
/*
 * @Author: your name
 * @Date: 2020-08-17 15:58:15
 * @LastEditTime: 2020-08-17 23:27:51
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getcomments.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    //设置插入数据库数据的编码
    $conn->query('SET NAMES utf8');
    $num_rec_per_page = 5; // 每页显示数量
    $page = $_GET["pageindex"]; //页数
    $start_from = ($page - 1) * $num_rec_per_page;
    $sql = "SELECT * FROM comments  ORDER BY  add_time DESC LIMIT $start_from, $num_rec_per_page";
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
