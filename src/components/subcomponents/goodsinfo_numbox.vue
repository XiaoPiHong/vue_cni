<!--
 * @Author: your name
 * @Date: 2020-08-22 22:45:59
 * @LastEditTime: 2020-08-22 23:36:25
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\subcomponents\goodsinfo_numbox.vue
-->
<template>
  <div class="mui-numbox" data-numbox-min="1" data-numbox-max="9">
    <button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
    <input id="test" class="mui-input-numbox" type="number" value="1" />
    <button class="mui-btn mui-btn-numbox-plus" type="button">+</button>
  </div>
</template>
<script>
import mui from "../../lib/mui/js/mui.min.js";

export default {
  mounted() {
    //初始化数字选择框组件
    mui(".mui-numbox").numbox();
  },
};
</script>
<style lang="scss" scoped>
</style>