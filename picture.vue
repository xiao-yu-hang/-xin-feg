<template>
<div class="picture  container">
  <fieldset class="fl">
			<legend>
        <el-breadcrumb separator="/" class="el">
        <el-breadcrumb-item v-for="(item,index) in page" :key="index"><a href="">{{item}}</a></el-breadcrumb-item>
        </el-breadcrumb>
      </legend>	
      <back></back>
	    <div class="row m-3 mt-3">
          <div class="col-md-1"></div>
          <div class="image col-md-6">
            <img :src="imgindex">
          </div>
          <div class="col-md-1"></div>
          <div class="info col-md-4">
            <el-breadcrumb separator="/">
              <el-breadcrumb-item v-for="(item,index) in icon" :key="index"><a href="">{{item}}</a></el-breadcrumb-item>
            </el-breadcrumb>
            <fieldset>
			        <legend>图片介绍</legend>	
			        <h5>
                大地与海洋交界，蓝色的海水，绿色的草地，棕色的土壤，蜿蜒的小路......
              </h5>
	          </fieldset>
            <button class="btn btn-primary">确认过眼神</button>
            <div class="mt-2">
              <template>
              <el-carousel :interval="3000" type="card" height="100px">
              <el-carousel-item v-for="(item,index) in img" :key="index">
              <img :src="item.src">
              </el-carousel-item>
              </el-carousel>
              </template>
            </div>
          </div>
      </div>		
	</fieldset>
</div>
</template>
<script>
export default{
  data(){
    return{
      icon:[],
      page:['首页','图片商城','图片详情'],
      img:[
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c57.jpg" },
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c59.jpg" },
        { src:"https://pic.superbed.cn/item/5d521203451253d178641c55.jpg" },
        { src:"https://pic.superbed.cn/item/5d5211ef451253d178641a4f.jpg" },
        { src:"https://pic.superbed.cn/item/5d5211c1451253d1786416ca.jpg" },
        { src:"https://pic.superbed.cn/item/5d520d57451253d17863c0de.jpg" }
      ],
      imgindex:""
    }
  },
  created(){
    this.loadpic();
  },
  methods:{
    loadpic(){
      var id=this.$route.query;
      var uid=id.img_id;
      console.log(uid);
      var obj={imgId:uid};
      var url="/get/v1/setImg";
      this.axios.get(url,{params:obj}).then(
        res=>{
          this.imgindex=res.data[0].img_index;
          console.log(res.data);
          this.icon=res.data[0].img_icon.split(","); 
          console.log(this.icon);
        }
      );
    }
  }
}
</script>
<style>
@import url("../assets/css/picture.css");
</style>