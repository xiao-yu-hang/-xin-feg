<template>
<div class="container"> 
  <table class="table table-hover">
    <thead>
      <tr>
        <td>图片</td>
        <td>ID</td>
        <td>地址</td>
        <td>是否已占用</td>
        <td>标签</td>
        <td>点赞人数</td>
      </tr>
    </thead>
      <tbody>
        <tr v-for="(item,index) in img" :key="index">
          <td><img :src="item[1]"></td>
          <td>{{item[0]}}</td>
          <td>{{item[1]}}</td>
          <td>{{item[2]}}</td>
          <td>{{item[3]}}</td>
          <td>{{item[4]}}</td>
        </tr>
      </tbody>
  </table>
</div>
</template>
<script>
export default {
  data(){
    return {
      img:[["022","https://pic.superbed.cn/item/5d521203451253d178641c5b.jpg","false","清新,自然",0],
      ["023","https://pic.superbed.cn/item/5d521203451253d178641c5b.jpg","false","清新,自然",0]],
    }
  }
}
</script>
<style scoped>
td img{
  width: 50px;
  height: 50px;
}
td+td img{
  width: 25px;
  height: 25px;
  border: 1px solid red;
}
</style>