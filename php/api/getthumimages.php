<?php
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $conn = mysqli_connect('localhost', 'root', '', 'vue_cni');
    $conn->query('SET NAMES utf8');
    $id = $_GET['id'];
    $sql = "SELECT img_url as src FROM images where title = (select title from images WHERE id=$id)";
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
