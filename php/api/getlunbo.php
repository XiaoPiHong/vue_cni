<?php
/*
 * @Author: your name
 * @Date: 2020-08-12 21:37:12
 * @LastEditTime: 2020-08-25 10:02:59
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getlunbo.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    $conn->query('SET NAMES utf8');
    $sql = "SELECT * FROM lunbotu";
    $result = mysqli_query($conn, $sql);
    /* 下面这段代码能显示sql语法错误 */
    if (!$result) {
        printf("Error: %s\n", mysqli_error($conn));
        exit();
    }
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
