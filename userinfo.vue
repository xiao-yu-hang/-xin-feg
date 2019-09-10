<template>
  <div class="container">
    <div class="user pl-1" v-for="(item,index) in user" :key="index"> 
      <el-collapse v-model="activeNames" @change="handleChange" >
        <el-collapse-item name="1" class="first">
          <span><img :src="item[4].src"></span>
          <span>{{item[0]}}</span>
          <span>{{item[1]}}</span>
          <span>{{item[2]}}</span>
          <span>{{item[3]}}</span>
          <span>{{item[6]}}</span>
          <span><img src="../../public/img/delete.png"></span>
        </el-collapse-item>
        <el-collapse-item title="用户留言" name="2">
          <div><span>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</span><span><img src="../../public/img/delete.png"></span></div>
          <div><span>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</span><span><img src="../../public/img/delete.png"></span></div>
          <div><span>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</span><span><img src="../../public/img/delete.png"></span></div>
        </el-collapse-item>
        <el-collapse-item title="用户图片" name="3" class="userimg">
          <span v-for="(item1,index) in item[5]" :key="index">
          <img :src="item1.src">
          </span>
        </el-collapse-item>
      </el-collapse>
    </div>
  </div>
</template>
<style scoped>
span>img, .first span+span img{
    width: 20px;
    height: 20px;
    margin-left: 5px;
    border: 1px solid #bbb;
  }
.userimg img{
  width: 80px;
  height: 80px;
} 
.userimg span{
  margin: 0 10px;
}
.first span img{
  width: 40px;
  height: 40px;
}
.first span{
  margin: 0 5px;
}
.container .user{
  border:1px solid #ccc;
}
</style>
<script>
  export default {
    data() {
      return {
        activeNames: ['1'],
        user:[["xiaoyuhang","男","181********","注册用户",
        [{src:"https://pic.superbed.cn/item/5d521203451253d178641c57.jpg"}],
        [{ src:"https://pic.superbed.cn/item/5d521203451253d178641c57.jpg"},
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c59.jpg" },
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c55.jpg" },
        { src:"https://pic.superbed.cn/item/5d5211ef451253d178641a4f.jpg" },
        { src:"https://pic.superbed.cn/item/5d5211c1451253d1786416ca.jpg" },
        { src:"https://pic.superbed.cn/item/5d520d57451253d17863c0de.jpg" }],"我好困"]]
      };
    },
    methods: {
      handleChange(val) {
        console.log(val);
      }
    }
  }
</script>