<?php
/*
 * @Author: your name
 * @Date: 2020-08-17 21:39:19
 * @LastEditTime: 2020-08-17 22:19:35
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\postcomment.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'POST' ? true : false) {
    $content = $_POST['content'];
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    //设置插入数据库数据的编码
    $conn->query('SET NAMES utf8');
    $sql = "INSERT INTO comments (content) VALUES ('$content')";
    if ($conn->query($sql) === true) {
        $data = array(
            'status' => 0,
            'message' => '评论发表成功');
        $json = json_encode($data);
        echo $json;
    } else {
        echo '插入错误： ' . $conn->error;
    }
    mysqli_close($conn);
} else {
    echo '请求方式错误';
}
