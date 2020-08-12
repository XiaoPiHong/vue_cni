<?php
/*
 * @Author: your name
 * @Date: 2020-08-12 20:37:39
 * @LastEditTime: 2020-08-12 22:13:16
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getnewslist.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $data = array(
        array('id' => 1, 'title' => '绿水青山，就是金山银山', 'add_time' => '2020年12月12日 12:00', 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4',
        ),
        array('id' => 2, 'title' => '绿水青山，就是金山银山', 'add_time' => '2020年12月12日 12:00', 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 2, 'img_url' => 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4',
        ),
        array('id' => 3, 'title' => '绿水青山，就是金山银山', 'add_time' => '2020年12月12日 12:00', 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 0, 'img_url' => 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4',
        ),
        array('id' => 4, 'title' => '绿水青山，就是金山银山', 'add_time' => '2020年12月12日 12:00', 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4',
        ),
    );
    $data = array('status' => 0, 'message' => $data);
    $json = json_encode($data);
    echo $json;
} else {
    echo '该访问方式不能获取数据';
}
