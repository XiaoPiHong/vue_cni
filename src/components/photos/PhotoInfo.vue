<!--
 * @Author: your name
 * @Date: 2020-08-19 15:13:39
 * @LastEditTime: 2020-08-19 16:59:45
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\photos\PhotoInfo.vue
-->
<template>
  <div class="photoinfo-container">
    <h3>{{photoinfo.title}}</h3>
    <p class="subtitle">
      <span>发表时间：{{photoinfo.add_time}}</span>
      <span>点击：{{photoinfo.click}}次</span>
    </p>
    <hr />

    <!-- 缩略图区域 -->

    <!-- 图片内容区域 -->
    <div class="content" v-html="photoinfo.content"></div>

    <!-- 放置一个现成的 评论子组件 -->
    <cmt-box :id="id"></cmt-box>
  </div>
</template>
<script>
// 1. 导入评论子组件
import comment from "../subcomponents/comment.vue";

export default {
  data() {
    return {
      id: this.$route.params.id, // 从路由中获取到的 图片Id
      photoinfo: {}, // 图片详情
      list: [], // 缩略图的数组
    };
  },
  created() {
    this.getPhotoInfo();
  },
  methods: {
    getPhotoInfo() {
      // 获取图片的详情
      this.$http.get("api/getimageInfo.php?id=" + this.id).then((result) => {
        if (result.body.status === 0) {
          this.photoinfo = result.body.message[0];
        }
      });
    },
  },
  components: {
    // 注册 评论子组件
    "cmt-box": comment,
  },
};
</script>
<style lang="scss" scoped>
.photoinfo-container {
  padding: 3px;
  h3 {
    color: #26a2ff;
    font-size: 15px;
    text-align: center;
    margin: 15px 0;
  }
  .subtitle {
    display: flex;
    justify-content: space-between;
    font-size: 13px;
  }

  .content {
    font-size: 13px;
    line-height: 30px;
  }
}
</style>