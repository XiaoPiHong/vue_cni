<!--
 * @Author: your name
 * @Date: 2020-08-22 12:04:19
 * @LastEditTime: 2020-08-23 09:29:20
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
      <div class="mui-card-header">{{goodsinfo.title}}</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <p class="price">
            市场价：
            <del>￥{{goodsinfo.market_price}}</del>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销售价：
            <span
              class="now_price"
            >￥{{goodsinfo.sell_price}}</span>
          </p>
          <p>
            购买数量：
            <numbox></numbox>
          </p>
          <p>
            <mt-button type="primary" size="small">立即购买</mt-button>
            <mt-button type="danger" size="small">加入购物车</mt-button>
          </p>
        </div>
      </div>
    </div>
    <!-- 商品参数区域 -->
    <div class="mui-card">
      <div class="mui-card-header">商品参数</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <p>商品货号：{{goodsinfo.goods_no}}</p>
          <p>库存情况：{{goodsinfo.stock_quantity}}件</p>
          <p>上架时间：{{goodsinfo.add_time | dateFormat}}</p>
        </div>
      </div>
      <div class="mui-card-footer">
        <mt-button type="primary" size="large" plain @click="goDesc(id)">图文介绍</mt-button>
        <mt-button type="danger" size="large" plain @click="goComment(id)">商品评论</mt-button>
      </div>
    </div>
  </div>
</template>
<script>
//导入轮播图组件
import swiper from "../subcomponents/swiper.vue";
//导入数字选择框组件
import numbox from "../subcomponents/goodsinfo_numbox.vue";

export default {
  data() {
    return {
      id: this.$route.params.id, //将路由参数对象中的 id 挂载到 data上，方便后期调用
      lunbotu: [],
      goodsinfo: {},
    };
  },
  created() {
    this.getLunbotu();
    this.getGoodsInfo();
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
    getGoodsInfo() {
      //获取商品的信息
      this.$http.get("api/getinfo.php?id=" + this.id).then((result) => {
        if (result.body.status === 0) {
          this.goodsinfo = result.body.message[0];
        }
      });
    },
    goDesc(id) {
      //点击使用编程式导航跳转到 图文介绍页面
      this.$router.push({
        name: "goodsdesc",
        params: {
          id,
        },
      });
    },
    goComment(id) {
      //点击跳转到 评论页面
      this.$router.push({
        name: "goodscomment",
        params: {
          id,
        },
      });
    },
  },
  components: {
    swiper,
    numbox,
  },
};
</script>
<style lang="scss" scoped>
.goodsinfo-container {
  background-color: #eee;
  /* 解决块级元素嵌套设置垂直外边导致距塌陷的问题 */
  overflow: hidden;

  .now_price {
    color: red;
    font-size: 16px;
    font-weight: bold;
  }

  .mui-card-footer,
  .mui-card-header {
    //去掉flex布局，使它能上下排列
    display: block;

    button {
      margin: 15px 0;
    }
  }
}
</style>
