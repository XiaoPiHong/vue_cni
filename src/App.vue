<!--
 * @Author: your name
 * @Date: 2020-08-09 13:47:05
 * @LastEditTime: 2020-08-09 15:47:13
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\App.vue
-->

<template>
  <div class="app-container">
    <!-- 顶部 Header 区域 -->
    <mt-header fixed title="vue-中文资讯"></mt-header>

    <!-- 中间的 路由 router-view 区域 -->

    <!-- 底部 Tabbar 区域 -->
    <nav class="mui-bar mui-bar-tab">
      <a class="mui-tab-item mui-active" href="#tabbar">
        <span class="mui-icon mui-icon-home"></span>
        <span class="mui-tab-label">首页</span>
      </a>
      <a class="mui-tab-item" href="#tabbar-with-contact">
        <span class="mui-icon mui-icon-contact"></span>
        <span class="mui-tab-label">会员</span>
      </a>
      <a class="mui-tab-item" href="#tabbar-with-chat">
        <span class="mui-icon mui-icon-extra mui-icon-extra-cart">
          <span class="mui-badge">0</span>
        </span>
        <span class="mui-tab-label">购物车</span>
      </a>
      <a class="mui-tab-item" href="#tabbar-with-map">
        <span class="mui-icon mui-icon-search"></span>
        <span class="mui-tab-label">搜索</span>
      </a>
    </nav>
  </div>
</template>

<script>
</script>

<style lang="scss" scoped>
.app-container {
  padding-top: 40px;
}
</style>

