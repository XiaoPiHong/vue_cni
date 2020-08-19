<?php
/*
 * @Author: your name
 * @Date: 2020-08-19 09:26:37
 * @LastEditTime: 2020-08-19 12:04:19
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getimages.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    $conn->query('SET NAMES utf8');
    $cateId = $_GET['id'];
    $sql = $cateId == 0 ? 'select * from images' : "select * from images where category=$cateId";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result)) {
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
        $data = array('status' => 0, 'message' => $data);
    } else if (mysqli_num_rows($result) == 0) {
        $data = array('status' => 0, 'message' => null);
    }
    $json = json_encode($data);
    echo $json;
    mysqli_close($conn);
} else {
    echo '该访问方式不能获取数据';
}
