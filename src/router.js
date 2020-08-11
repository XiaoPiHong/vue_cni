/*
 * @Author: your name
 * @Date: 2020-08-09 13:47:05
 * @LastEditTime: 2020-08-11 23:38:00
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\router.js
 */
// 路由入口文件
// 导入路由的包
import VueRouter from 'vue-router';


// 导入对应的路由组件
import HomeContainer from './components/tabbar/HomeContainer.vue';
import MemberContainer from './components/tabbar/MemberContainer.vue';
import ShopcarContainer from './components/tabbar/ShopcarContainer.vue';
import SearchContainer from './components/tabbar/SearchContainer.vue';
import NewsList from './components/news/NewsList.vue';


//创建路由对象
var router = new VueRouter({
    routes: [{
            path: '/',
            redirect: '/home'
        },
        {
            path: '/home',
            component: HomeContainer
        },
        {
            path: '/member',
            component: MemberContainer
        },
        {
            path: '/shopcar',
            component: ShopcarContainer
        },
        {
            path: '/search',
            component: SearchContainer
        },
        {
            path: '/home/newslist',
            component: NewsList
        }
    ],
    linkActiveClass: 'mui-active' // 覆盖默认的路由高亮的类，默认的类叫做 router-link-active
});

//把路由对象暴露出去
export default router;