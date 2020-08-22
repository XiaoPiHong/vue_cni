<!--
 * @Author: your name
 * @Date: 2020-08-22 12:04:19
 * @LastEditTime: 2020-08-22 18:54:04
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\goods\GoodsInfo.vue
-->
<template>
  <div class="goodsinfo-container">
    <!-- 商品轮播图区域 -->
    <div class="mui-card">
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <swiper :lunbotuList="lunbotu" :isfull="false"></swiper>
        </div>
      </div>
    </div>
    <!-- 商品购买区域 -->
    <div class="mui-card">
      <div class="mui-card-header">页眉</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">包含页眉页脚的卡片，页眉常用来显示面板标题，页脚用来显示额外信息或支持的操作（比如点赞、评论等）</div>
      </div>
    </div>
    <!-- 商品参数区域 -->
    <div class="mui-card">
      <div class="mui-card-header">页眉</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">包含页眉页脚的卡片，页眉常用来显示面板标题，页脚用来显示额外信息或支持的操作（比如点赞、评论等）</div>
      </div>
      <div class="mui-card-footer">页脚</div>
    </div>
  </div>
</template>
<script>
//导入轮播图组件
import swiper from "../subcomponents/swiper.vue";

export default {
  data() {
    return {
      id: this.$route.params.id, //将路由参数对象中的 id 挂载到 data上，方便后期调用
      lunbotu: [],
    };
  },
  created() {
    this.getLunbotu();
  },
  methods: {
    getLunbotu() {
      this.$http
        .get("api/getgoodthumimages.php?id=" + this.id)
        .then((result) => {
          if (result.body.status === 0) {
            //先循环轮播图数组每一项，为item添加img属性，因为轮播图组件中只认识item.img,不认识item.src
            result.body.message.forEach((item) => {
              item.url = item.src;
            });
            this.lunbotu = result.body.message;
          }
        });
    },
  },
  components: {
    swiper,
  },
};
</script>
<style lang="scss" scoped>
.goodsinfo-container {
  background-color: #eee;
  /* 解决块级元素嵌套设置垂直外边导致距塌陷的问题 */
  overflow: hidden;
}
</style>
