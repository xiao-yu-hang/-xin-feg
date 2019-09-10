<template>
<div class="container"> 
  <table class="table table-hover">
    <thead>
      <tr>
        <td>图片</td>
        <td>ID</td>
        <td>地址</td>
        <td>删除</td>
      </tr>
    </thead>
      <tbody>
        <tr v-for="(item,index) in img" :key="index">
          <td><img :src="item[1]"></td>
          <td>{{item[0]}}</td>
          <td>{{item[1]}}</td>
          <td><img src="../../public/img/delete.png"></td>
        </tr>
      </tbody>
  </table>
</div>
</template>
<script>
export default {
  data(){
    return {
      img:[["022","https://pic.superbed.cn/item/5d521203451253d178641c5b.jpg"],
      ["023","https://pic.superbed.cn/item/5d521203451253d178641c5b.jpg"]],
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