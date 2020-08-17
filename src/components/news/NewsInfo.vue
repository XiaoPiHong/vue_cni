<!--
 * @Author: your name
 * @Date: 2020-08-17 09:25:13
 * @LastEditTime: 2020-08-17 09:48:42
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\news\NewsInfo.vue
-->
<template>
  <div>
    <h3>新闻标题---{{id}}</h3>
  </div>
</template>
<script>
export default {
  data() {
    return {
      id: this.$route.params.id, // 将 URL 地址中传递过来的 Id值，挂载到 data上，方便以后调用
    };
  },
};
</script>
<style lang="scss" scoped></style>