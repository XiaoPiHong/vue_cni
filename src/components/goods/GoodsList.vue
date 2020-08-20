<!--
 * @Author: your name
 * @Date: 2020-08-20 09:44:41
 * @LastEditTime: 2020-08-20 10:33:00
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\goods\GoodsList.vue
-->
<template>
  <div class="goods-list">
    <div class="goods-item">
      <img
        src="https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mg1Xl81WoTSE2MfOQ_!!2201702082835.jpg_430x430q90.jpg"
      />
      <h1 class="title">上海中兴守护宝F6S正品4G全网通学生价超长待机大字大声老年安卓八核128G游戏智能手机双卡电信指纹老人手机</h1>
      <div class="info">
        <p class="price">
          <span class="now">￥899</span>
          <span class="old">￥999</span>
        </p>
        <p class="sell">
          <span>热卖中</span>
          <span>剩余60件</span>
        </p>
      </div>
    </div>
    <div class="goods-item">
      <img
        src="https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mg1Xl81WoTSE2MfOQ_!!2201702082835.jpg_430x430q90.jpg"
      />
      <h1 class="title">上海中兴守护宝F6S正品4G全网通学生价超长待机大字大声老年安卓八核128G游戏智能手机双卡电信指纹老人手机</h1>
      <div class="info">
        <p class="price">
          <span class="now">￥899</span>
          <span class="old">￥999</span>
        </p>
        <p class="sell">
          <span>热卖中</span>
          <span>剩余60件</span>
        </p>
      </div>
    </div>
    <div class="goods-item">
      <img
        src="https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mg1Xl81WoTSE2MfOQ_!!2201702082835.jpg_430x430q90.jpg"
      />
      <h1 class="title">上海中兴守护宝F6S正品4G全网通学生价超长待机大字大声老年安卓八核128G游戏智能手机双卡电信指纹老人手机</h1>
      <div class="info">
        <p class="price">
          <span class="now">￥899</span>
          <span class="old">￥999</span>
        </p>
        <p class="sell">
          <span>热卖中</span>
          <span>剩余60件</span>
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {};
</script>
<style lang="scss" scoped>
.goods-list {
  display: flex;
  //使每个商品换行
  flex-wrap: wrap;
  padding: 7px;
  justify-content: space-between;

  .goods-item {
    width: 49%;
    border: 1px solid #ccc;
    box-shadow: 0 0 8px #ccc;
    margin: 1px 0 4px 0;
    padding: 2px;
    display: flex;
    //解决每个商品高度不一导致某些商品下面有空白
    flex-direction: column;
    justify-content: space-between;
    min-height: 293px;
    img {
      width: 100%;
    }

    .title {
      font-size: 14px;
    }

    .info {
      background-color: #eee;
      p {
        margin: 0;
        padding: 5px;
      }
      .price {
        .now {
          color: red;
          font-weight: bold;
          font-size: 16px;
        }
        .old {
          text-decoration: line-through;
          font-size: 12px;
          margin: 10px;
        }
      }
      .sell {
        display: flex;
        justify-content: space-between;
        font-size: 13px;
      }
    }
  }
}
</style>