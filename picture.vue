<template>
<div class="picture  container">
  <fieldset class="fl">
			<legend>
        <el-breadcrumb separator="/" class="el">
        <el-breadcrumb-item v-for="(item,index) in page" :key="index" ><a href="">{{item}}</a></el-breadcrumb-item>
        </el-breadcrumb>
      </legend>	
      <back></back>
	    <div class="row m-3 mt-3">
          <div class="col-md-1"></div>
          <div class="image col-md-6">
            <img :src="imgindex" @click="big">
          </div>
          <div class="col-md-1"></div>
          <div class="info col-md-4">
            <el-breadcrumb separator="/">
              <el-breadcrumb-item v-for="(item,index) in icon" :key="index" ><span @click="icon1">{{item}}</span></el-breadcrumb-item>
            </el-breadcrumb>
            <fieldset>
			        <legend>图片介绍</legend>	
			        <h5>
              {{intr}}
              </h5>
	          </fieldset>
            <button class="btn btn-primary mb-3 mt-2" @click="orgin">确认过眼神</button>
            <div class="mt-2">
              <template>
              <el-carousel :interval="3000" type="card" height="100px">
              <el-carousel-item v-for="(item,index) in img" :key="index" >
              <img :src="item.img_index" @click="picture">
              <span style="display:none;">{{item.img_id}}</span>
              </el-carousel-item>
              </el-carousel>
              </template>
            </div>
          </div>
      </div>		
	</fieldset>
  <orgin class="in"></orgin>
  <!-- <div class="orgin row in">
    <div class="col-1"></div>
    <div class="col-2"  v-for="(item,index) in userImg" :key="index">
      <img :src="item.img_index" style="width:100%;height:100px">
    </div>
    <div class="col-1"></div>
  </div> -->
</div>
</template>
<script>
export default{
  data(){
    return{
      icon:[],
      page:['首页','图片商城','图片详情'],
      img:[],
      imgindex:"",
      intr:"",
      Icon:"",
      
    }
  },
  created(){
    this.loadpic();
    // this.hot();
  },
  methods:{
    loadpic(){
      var id=this.$route.query;
      var uid=id.img_id;
      var obj={imgId:uid};
      var url="/get/v1/setImg";
      this.axios.get(url,{params:obj}).then(
        res=>{
          this.imgindex=res.data[0].img_index;
          // console.log(res.data);
          this.icon=res.data[0].img_icon.split(","); 
          this.intr=res.data[0].img_introduct;
          var arr=[];
          arr=this.icon;
          console.log(arr.length);
          for(var i=0;i<arr.length;i++)
             {
                if(arr[i]=="动漫"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="萌宠"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="风格"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="女孩"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="自然"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="清新"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="简约"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="风景"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="暗黑"){
                this.Icon=arr[i];
                this.hot();
                }else if(arr[i]=="电影"){
                this.Icon=arr[i];
                this.hot();
                }
              }
        }
      );
    },
    picture(event){
       var node=event.currentTarget.nextElementSibling;
       var  id=node.textContent;
       console.log(id);             
       this.$router.push({path:'/detail',query:{img_id:id}});
       this.loadpic();
    },
    hot(){
      var url="/get/v1/setImg";
      var obj={imgIcon:this.Icon};
          this.axios.get(url,{params:obj}).then(
              res=>{
                console.log(res.data);
                this.img=res.data;
                    }
          );
    },
    icon1(event){
      var icon=event.currentTarget.textContent;
      console.log(icon);
      this.$router.push({path:'/search',query:{img_icon:icon}});
    },
    big(e){
      var style=getComputedStyle(e.currentTarget)
      if(style.cursor=="zoom-in"){
      if(e.target.requestFullscreen) 
        { 
         e.target.requestFullscreen();
         e.target.style.cursor="zoom-out";
        } else if(e.target.mozRequestFullScreen) 
        { 
         e.target.mozRequestFullScreen(); 
         e.target.style.cursor="zoom-out";
        } else if(e.target.webkitRequestFullscreen) 
        { 
         e.target.webkitRequestFullscreen();
         e.target.style.cursor="zoom-out"; 
        } else if(e.target.msRequestFullscreen) 
        { 
         e.msRequestFullscreen(); 
         e.target.style.cursor="zoom-out";
        } 
      }else{
        if(document.exitFullscreen)
         { 
           document.exitFullscreen(); 
           e.target.style.cursor="zoom-in";
         } else if(document.mozExitFullScreen) 
         { 
           document.mozExitFullScreen(); 
           e.target.style.cursor="zoom-in";
         } else if(document.webkitExitFullscreen) 
         { 
           document.webkitExitFullscreen(); 
           e.target.style.cursor="zoom-in";
         } 
      }
    },
    orgin(){
      var state=this.$store.getters.getState;
      console.log(state);
      if(state=="1"){
        $("orgin").toggleClass("in");
      }else{
        alert("请先登录，再执行后操作。");
      }
      }

      }  
  }
</script>
<style>
@import url("../assets/css/picture.css");
</style>