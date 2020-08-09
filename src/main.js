/*
 * @Author: your name
 * @Date: 2020-08-09 13:47:05
 * @LastEditTime: 2020-08-09 16:47:54
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\main.js
 */
//js入口文件
import Vue from 'vue';
// 1.1 导入路由的包
import VueRouter from 'vue-router';
// 1.2 安装路由
Vue.use(VueRouter);



//导入 MUI的样式
import './lib/mui/css/mui.min.css';
// 导入扩展图标样式
import './lib/mui/css/icons-extra.css';
//按需导入Mint-UI 中的组件
import {
    Header,
    Swipe,
    SwipeItem
} from 'mint-ui';
Vue.component(Header.name, Header);
Vue.component(Swipe.name, Swipe);
Vue.component(SwipeItem.name, SwipeItem);


// 1.3 导入自己的 router.js 路由模块
import router from './router.js';


//导入 App 根组件
import app from './App.vue';






var vm = new Vue({
    el: '#app',
    render: e => e(app), //render函数将App组件渲染到index.html
    router // 1.4 挂载路由对象到 VM 实例上
});