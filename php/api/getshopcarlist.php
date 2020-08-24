<?php
/*
 * @Author: your name
 * @Date: 2020-08-24 16:48:49
 * @LastEditTime: 2020-08-24 17:34:56
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getshopcarlist.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $idArr = $_GET['idArr'];
    $idArray = explode(",", $idArr);
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    $conn->query('SET NAMES utf8');
    foreach ($idArray as $value) {
        $value = intval($value);
        $sql = "SELECT  cou,id,title,sell_price,img_url AS thumb_path FROM goods where id=$value";
        $result = mysqli_query($conn, $sql);
        if (!$result) {
            printf("Error: %s\n", mysqli_error($conn));
            exit();
        }
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
    }
    $data = array('status' => 0, 'message' => $data);
    $json = json_encode($data);
    echo $json;
    mysqli_close($conn);
} else {
    echo '该访问方式不能获取数据';
}
