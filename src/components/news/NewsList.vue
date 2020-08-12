<!--
 * @Author: your name
 * @Date: 2020-08-11 23:32:14
 * @LastEditTime: 2020-08-12 23:21:01
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \vue_cni\src\components\news\NewsList.vue
-->
<template>
  <div>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media" v-for="item in newslist" :key="item.id">
        <a href="javascript:;">
          <img
            class="mui-media-object mui-pull-left"
            src="https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4"
          />
          <div class="mui-media-body">
            <h1>{{item.title}}</h1>
            <p class="mui-ellipsis">
              <span>发表时间：{{new Date() | dateFormat }}</span>
              <span>点击：{{item.click}}次</span>
            </p>
          </div>
        </a>
      </li>
    </ul>
  </div>
</template>

<script>
import { Toast } from "mint-ui";

export default {
  data() {
    return {
      newslist: [], // 新闻列表
    };
  },
  created() {
    this.getNewsList();
  },
  methods: {
    getNewsList() {
      // 获取新闻列表
      this.$http.get("api/getnewslist.php").then((result) => {
        if (result.body.status === 0) {
          // 如果没有失败，应该把数据保存到 data 上
          this.newslist = result.body.message;
          console.log(this.newslist);
        } else {
          Toast("获取新闻列表失败！");
        }
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.mui-table-view {
  li {
    h1 {
      font-size: 14px;
    }
    .mui-ellipsis {
      font-size: 12px;
      color: #226aff;
      display: flex;
      justify-content: space-between;
    }
  }
}
</style>