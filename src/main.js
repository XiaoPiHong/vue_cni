/*
 * @Author: your name
 * @Date: 2020-08-09 13:47:05
 * @LastEditTime: 2020-08-09 14:23:27
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\main.js
 */
//入口文件
import Vue from 'vue';

//导入 App 根组件
import app from './App.vue';

//导入 MUI的样式
import './lib/mui/css/mui.min.css'

//按需导入Mint-UI 中的组件
import {
    Header
} from 'mint-ui'; //导入header组件
Vue.component(Header.name, Header);





var vm = new Vue({
    el: '#app',
    render: e => e(app) //render函数将App组件渲染到index.html
});