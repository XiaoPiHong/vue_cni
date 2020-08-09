<!--
 * @Author: your name
 * @Date: 2020-08-09 16:21:22
 * @LastEditTime: 2020-08-09 19:09:12
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\tabbar\HomeContainer.vue
-->
<template>
  <div>
    <!-- 轮播图区域 -->
    <!--    <mt-swipe :auto="4000">
      <mt-swipe-item>1</mt-swipe-item>
      <mt-swipe-item>2</mt-swipe-item>
      <mt-swipe-item>3</mt-swipe-item>
    </mt-swipe>-->
    <mt-swipe :auto="4000">
      <!-- 在组件中，使用v-for循环的话，一定要使用 key -->
      <mt-swipe-item v-for="item in lunbotuList" :key="item.url">
        <img :src="item.url" alt=" " />
      </mt-swipe-item>
    </mt-swipe>

    <h3>HomeContainer</h3>
  </div>
</template>

<script>
import { Toast } from "mint-ui";

export default {
  data() {
    return {
      lunbotuList: [], // 保存轮播图的数组
    };
  },
  created() {
    this.getLunbotu();
  },
  methods: {
    getLunbotu() {
      // 获取轮播图数据的方法
      this.$http
        .get("http://localhost:8888/Vue/vue_cni/php/api/getlunbo.php")
        .then((result) => {
          // console.log(result.body);
          if (result.body.status === 0) {
            // 成功了
            this.lunbotuList = result.body.message;
          } else {
            // 失败的
            Toast("加载轮播图失败!");
          }
        });
    },
  },
};
</script>

<style lang="scss" scoped>
.mint-swipe {
  height: 200px;

  //嵌套写法
  .mint-swipe-item {
    //&是交集选择器的意思
    &:nth-child(1) {
      background-color: red;
    }
    &:nth-child(2) {
      background-color: blue;
    }
    &:nth-child(3) {
      background-color: cyan;
    }

    img {
      width: 100%;
      height: 100%;
    }
  }
}
</style>
