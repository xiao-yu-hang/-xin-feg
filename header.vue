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
      <span class="login">您还未 <a href="">登录</a>,如您还没有账号,请先 <a href="">注册</a> 。</span>
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
          var state=res.data.id;
          this.$store.commit("setState",state);
          if(state!=0){
            $(".dip").addClass("in");
            $(".dsp").removeClass("in");
          }       
          }
      );
      var imgicon=this.$route.query.img_icon; 
      if(imgicon!=""){
      var obj={imgIcon:imgicon}
      this.$store.commit("setimgIcon",imgicon);
      this.axios.get("/get/v1/setImg",{params:obj}).then(
        res=>{
           var pic1=res.data;
           this.$store.commit("setPic",pic1);
        }
      );
      }
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
           var pic1=res.data;
           this.$store.commit("setPic",pic1);
           this.$router.push({path:'/search'});
         }
       );
    },
    search1(e){
      var keyCode=window.event?e.keyCode:e.which;
        if(event.keyCode==13){
         this.search();
        }
      },
    
    }
  }
</script>
<style scoped>
@import url("../assets/css/header.css");
</style>>