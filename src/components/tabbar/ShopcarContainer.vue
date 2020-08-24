<!--
 * @Author: your name
 * @Date: 2020-08-09 16:22:07
 * @LastEditTime: 2020-08-24 15:56:39
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\tabbar\ShopcarContainer.vue
-->
<template>
  <div class="shopcar-container">
    <div class="goods-list">
      <!-- 商品列表项区域 -->
      <div class="mui-card">
        <div class="mui-card-content">
          <div class="mui-card-content-inner">
            <mt-switch></mt-switch>
            <img
              src="https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mg1Xl81WoTSE2MfOQ_!!2201702082835.jpg_430x430q90.jpg"
            />
            <div class="info">
              <h1>4G全网通学生价超长待机安卓八核128G游戏智能手机</h1>
              <p>
                <span class="price">￥2199</span>
                <numbox></numbox>
                <a href="javascript:;">删除</a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <!-- 结算区域 -->
      <div class="mui-card">
        <div class="mui-card-content">
          <div
            class="mui-card-content-inner"
          >这是一个最简单的卡片视图控件；卡片视图常用来显示完整独立的一段信息，比如一篇文章的预览图、作者信息、点赞数量等</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import numbox from "../subcomponents/shopcar_numbox.vue";

export default {
  components: {
    numbox,
  },
};
</script>

<style lang="scss" scoped>
.shopcar-container {
  background-color: #eee;
  overflow: hidden;

  .goods-list {
    .mui-card-content-inner {
      display: flex;
      align-items: center;
    }

    img {
      width: 60px;
      height: 60px;
      margin-left: 5px;
    }
    h1 {
      font-size: 13px;
    }

    .info {
      padding-left: 5px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      .price {
        color: red;
        font-weight: bold;
      }
    }
  }
}
</style>
