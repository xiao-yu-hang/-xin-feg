<template>
  <el-carousel height="300px" direction="vertical" :autoplay="true" class="Item">
    <el-carousel-item v-for="(item,index) in img" :key="index">
     <div class="cover">
       <img :src="item.src">
       </div>
    </el-carousel-item>
  </el-carousel>
</template>
<script>
export default{
  data(){
    return {
      img:[
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c57.jpg" },
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c59.jpg" },
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c55.jpg" },
        { src:"https://pic.superbed.cn/item/5d5211ef451253d178641a4f.jpg" },
        { src:"https://pic.superbed.cn/item/5d5211c1451253d1786416ca.jpg" },
        { src:"https://pic.superbed.cn/item/5d520d57451253d17863c0de.jpg" }
      ]
      }
    }
  }
</script>
<style>
  
  /* .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  } */
  img{
    width: 100%;
    height: 300px;
    border-radius: 5px;
  }
  .cover {
    position: relative;
}
.cover:after {
    position: absolute;
    content: '';
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    box-shadow:0 0 35px 5px #ffffff inset;
}
/* .Item{
  width: 30% !important;
} */
</style>