/*
 * @Author: your name
 * @Date: 2020-08-09 13:47:05
 * @LastEditTime: 2020-08-24 21:12:33
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

//注册 vuex
import Vuex from 'vuex';
Vue.use(Vuex);

// 每次刚进入 网站，肯定会 调用 main.js 在刚调用的时候，先从本地存储中，把 购物车的数据读出来，放到 store 中
var car = JSON.parse(localStorage.getItem('car') || '[]');

var store = new Vuex.Store({
    state: { //this.$store.state.***来调用这里面数据
        car: car //将 购物车中商品的数据，用一个数组存起来，在car数组中存储一些商品的对象，我们可以暂时将这个商品对象，设计成这个样子 {id:商品的id,count:要购买的数量,price:商品的单价,selected:false}
    },
    mutations: { //this.$store.commit('方法的名称','按需传递唯一的参数');
        addToCar(state, goodsinfo) {
            //点击加入购物车，把商品信息，保存到 store 中的car上，这里的商品信息是：{id: this.id,count: this.selectedCount,price: this.goodsinfo.sell_price,selected: true}

            // 分析：
            // 1. 如果购物车中，之前就已经有这个对应的商品了，那么，只需要更新数量
            // 2. 如果没有，则直接把 商品数据，push 到 car 中即可

            // 假设 在购物车中，没有找到对应的商品
            var flag = false;

            state.car.some(item => {
                if (item.id == goodsinfo.id) {
                    item.count += parseInt(goodsinfo.count);
                    flag = true;
                    return true;
                    //return true用于终止some方法的循环
                }
            });

            // 如果最终，循环完毕，得到的 flag 还是 false，则把商品数据直接 push 到 购物车中
            if (!flag) {
                state.car.push(goodsinfo);
            }
            // 当 更新 car 之后，把 car 数组，存储到 本地的 localStorage 中
            localStorage.setItem("car", JSON.stringify(state.car));
        },
        updateGoodsInfo(state, goodsinfo) {
            //修改购物车中商品的数量值
            //分析：用于在购物车修改数量时调用的方法
            //1.这里的goodsinfo是调用该方法时候传进来的参数 {id: 修改商品的id值,count: 修改后的数量值}
            //2.用some方法去匹配在 state的car数组中 商品id值相同的 商品，将它的数量改为 修改后的数量值
            //3.修改完后再将这个car数组放进 本地存储中，覆盖掉之前的
            state.car.some(item => {
                if (item.id === goodsinfo.id) {
                    item.count = parseInt(goodsinfo.count);
                    return true;
                }
            });
            // 当修改完商品的数量，把最新的购物车数据，保存到 本地存储中
            localStorage.setItem('car', JSON.stringify(state.car));
        },
    },
    getters: { //this.$store.getters.***
        //相当于 计算属性，也相当于 filters
        getAllCount(state) {
            //这个方法在 App.vue 使用
            var c = 0;
            state.car.forEach(item => {
                c += item.count;
            })
            return c;
        },
        getGoodsCount(state) {
            // 在ShopcarContainer.vue使用，该方法是用来计算加入购物车商品每样的数量是多少的
            var o = {};
            state.car.forEach(item => {
                o[item.id] = item.count;
            });
            return o;
        }
    }
});


// 导入格式化时间的插件 先 cnpm i moment@2.19.1 -S 这里格式化时间使用的是moment插件
import moment from 'moment';
// 定义全局的过滤器
Vue.filter('dateFormat', function (dataStr, pattern = "YYYY-MM-DD HH:mm:ss") {
    return moment(dataStr).format(pattern);
});


// 2.1 导入 vue-resource
import VueResource from 'vue-resource';
// 2.2 安装 vue-resource
Vue.use(VueResource);
// 设置请求的根路径
Vue.http.options.root = 'http://localhost:8888/Vue/vue_cni/php';
// 全局设置 post 时候表单数据格式组织形式   application/x-www-form-urlencoded
Vue.http.options.emulateJSON = true;


//导入 MUI的样式
import './lib/mui/css/mui.min.css';
// 导入扩展图标样式
import './lib/mui/css/icons-extra.css';
/* //按需导入Mint-UI 中的组件
import {
    Header,
    Swipe,
    SwipeItem,
    Button,
    Lazyload
} from 'mint-ui';
Vue.component(Header.name, Header);
Vue.component(Swipe.name, Swipe);
Vue.component(SwipeItem.name, SwipeItem);
Vue.component(Button.name, Button);
Vue.use(Lazyload); */
//因为懒加载需要某些功能才能完成，所以需要全局导入Mint-UI 中的组件
import MintUI from 'mint-ui';
Vue.use(MintUI);
import 'mint-ui/lib/style.css';

// 安装 图片预览插件
import VuePreview from 'vue-preview';
Vue.use(VuePreview);



// 1.3 导入自己的 router.js 路由模块
import router from './router.js';


//导入 App 根组件
import app from './App.vue';






var vm = new Vue({
    el: '#app',
    render: e => e(app), //render函数将App组件渲染到index.html
    router, // 1.4 挂载路由对象到 VM 实例上
    store // 挂载 store 状态管理对象
});