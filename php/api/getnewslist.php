<?php
/*
 * @Author: your name
 * @Date: 2020-08-12 20:37:39
 * @LastEditTime: 2020-08-17 11:20:30
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\php\api\getnewslist.php
 */
header('Access-Control-Allow-Origin:*');
header('Content-Type:application/json;charset=utf-8');
// $_SERVER包含了诸多头信息、路径、以及脚本位置等等信息的数组，这个数组中的项目有web服务器创建
if ($_SERVER['REQUEST_METHOD'] == 'GET' ? true : false) {
    $data = array(
        array('id' => 1, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4',
        ),
        array('id' => 2, 'title' => '美国加州多地发生山火 高温加剧火势蔓延', 'add_time' => date("Y-m-d"), 'zhaiyao' => '美国加州多地发生山火 高温加剧火势蔓延', 'click' => 2, 'img_url' => 'https://avatars2.githubusercontent.com/u/5764308?s=460&u=7707aefa69917fd11bf5a7a72681d01bb8608f7c&v=4',
        ),
        array('id' => 3, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 0, 'img_url' => 'https://avatars2.githubusercontent.com/u/7135988?s=460&u=4722fd6290a4c88624f97ee42d10fb984cc5abde&v=4',
        ),
        array('id' => 4, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars1.githubusercontent.com/u/4433217?s=460&v=4',
        ),
        array('id' => 5, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars2.githubusercontent.com/u/7064796?s=460&u=f863f160fc06de465d103cde42555bab20c20905&v=4',
        ),
        array('id' => 6, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars2.githubusercontent.com/u/20425044?s=460&u=3f22544bbd61b329c2c0bd969792894a40bd1bfc&v=4',
        ),
        array('id' => 7, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4',
        ),
        array('id' => 8, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars2.githubusercontent.com/u/5764308?s=460&u=7707aefa69917fd11bf5a7a72681d01bb8608f7c&v=4',
        ),
        array('id' => 9, 'title' => '绿水青山，就是金山银山', 'add_time' => date("Y-m-d"), 'zhaiyao' => '对于人类来说，绿水青山，就是金山银山', 'click' => 1, 'img_url' => 'https://avatars2.githubusercontent.com/u/7064796?s=460&u=f863f160fc06de465d103cde42555bab20c20905&v=4',
        ),
    );
    $data = array('status' => 0, 'message' => $data);
    $json = json_encode($data);
    echo $json;
} else {
    echo '该访问方式不能获取数据';
}
