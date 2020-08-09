<!--
 * @Author: your name
 * @Date: 2020-08-09 16:21:22
 * @LastEditTime: 2020-08-09 16:51:08
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\tabbar\HomeContainer.vue
-->
<template>
  <div>
    <!-- 轮播图区域 -->
    <mt-swipe :auto="4000">
      <mt-swipe-item>1</mt-swipe-item>
      <mt-swipe-item>2</mt-swipe-item>
      <mt-swipe-item>3</mt-swipe-item>
    </mt-swipe>

    <h3>HomeContainer</h3>
  </div>
</template>

<script>
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
  }
}
</style>
