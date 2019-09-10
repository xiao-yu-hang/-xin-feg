<template>
  <div class="container row header p-0">
    <div class=" col-md-1 logo p-0 col-sm-12"> 
      <img src="../../public/img/logo.png" alt="logo">
    </div>
    <div class=" col-md-7 p-0 pl-md-5 col-sm-12 mt-md-4
    mt-sm-2">
      <input type="text" value="请输入要搜索的关键词，如:清新 自然" onfocus="this.value=''" 
      class="btn btn-light" @keydown="search1">
      <img src="../../public/img/search.png" alt="搜索" @click="search">
    </div>
    <div class="icon col-md-4 col-sm-12 mt-md-4 pr-0 pl-5 mt-sm-2 dsp in">
      <router-link to="#"><img src="../../public/img/home.png" alt="主页"></router-link>
      <router-link to="#"><img src="../../public/img/personal.png" alt="个人"></router-link> 
    </div>
    <div class="icon1 col-md-4 col-sm-12 mt-md-4 pr-0 pl-5 mt-sm-2 dip">
      <span class=" text-danger">您还未登录，请登录后操作。</span>
    </div>
  </div>
</template>
<script>
export default{
  data(){
    return{
      imgindex:"",
      imgid:"",
      word:"",
  }
  }, 
  created(){
    this.loadword();
  },
  methods:{
    loadword(){
      var url="/get/v1/getState";
      this.axios.get(url).then(
        res=>{
          var state=res.data.code;
          if(state==1){
            $(".dip").addClass("in");
            $(".dsp").removeClass("in");
          }       
          }
      );
    },
    search(){
       var $val=$(":text").val().trim();
       this.$store.commit("setimgIcon",$val);
       if(!$val){
         alert("关键词不能为空");
         return;
       }
       var url="/get/v1/setImg";
       var obj={imgIcon:$val};
       this.axios.get(url,{params:obj}).then(
         res=>{
          //  console.log(res);
          //  var imgindex=res.data[0].img_index;
          //  var imgid=res.data[0].img_id;
           var pic1=res.data;
          //  console.log(this.imgindex);
           this.$store.commit("setPic",pic1);
         }
       );
    },
    search1(e){
      var keyCode=window.event?e.keyCode:e.which;
        if(event.keyCode==13){
         this.search();
        }
      }
    }
  }
</script>
<style scoped>
@import url("../assets/css/header.css");
</style>>