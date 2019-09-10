<template>
  <div class="container row p-0 pictures">
    <div class="col-12 mb-2 mt-2">
       <el-breadcrumb separator="/">
         <el-breadcrumb-item><router-link to="">首页</router-link></el-breadcrumb-item>
         <el-breadcrumb-item>图片搜索</el-breadcrumb-item>
         <el-breadcrumb-item>{{$store.getters.getimgIcon}}</el-breadcrumb-item>  
        </el-breadcrumb>
    </div>
    <div class="col-4 mt-2" v-for="(item,index) in $store.getters.getpicList" :key="index" @click="picture">
      <img :src="item.inde">
      <h1 class="H1">{{item.id}}</h1>
      </div>
    <div class="col-12"></div>
    <div class="col-6 btn1 mt-2 mb-2">
      <button class="btn btn-primary" @click="pre">上一页</button>
    </div>
    <div class="col-6 btn1 mt-2 mb-2">
      <button class="btn btn-primary" @click="next">下一页</button>
    </div>
  </div>
</template>
<script>
export default{
  data(){
    return{
      arr:[],
      start:0,
      num:0,
    }
  },
  methods:{
    allpic(){
      var url="/get/v1/setImg";
      var icon=this.$store.getters.getimgIcon;
       var obj1={imgIcon1:icon};
       this.axios.get(url,{params:obj1}).then(
         res=>{
           this.num=res.data.length;
         }
       );
    },
    next(){
       $("button:first").attr("disabled",false);
       var url="/get/v1/setImg";
       this.allpic();
       var icon=this.$store.getters.getimgIcon;
       this.start+=9;
       if(this.start<this.num){
       var obj={imgIcon:icon,start:this.start};
       this.axios.get(url,{params:obj}).then(
         res=>{         
           var pic1=res.data;
           this.$store.commit("setPic",pic1);
         }
       );
       }
      else{
         $("button:last").attr("disabled","ture");
       }
    },
    pre(){
      $("button:last").attr("disabled",false);
      var url="/get/v1/setImg";
       this.allpic();
       var icon=this.$store.getters.getimgIcon;
       if(this.start>0){
       this.start-=9;  
       var obj={imgIcon:icon,start:this.start};
       this.axios.get(url,{params:obj}).then(
         res=>{         
           var pic1=res.data;
           this.$store.commit("setPic",pic1);
        }); 
    }else{
         $("button:first").attr("disabled","ture");
       }
    },
    picture(event){
       var node=event.currentTarget.lastElementChild;
       var  id=node.textContent;
       console.log(id);             
       this.$router.push({path:'/detail',query:{img_id:id}});
    }
  }
}
</script>
<style scoped>
.pictures{
  background-color: #fff;
  border: 1px solid #ccc;
}
.btn1{
  display:flex;
  /* justify-content:space-around; */
  justify-content: center;
}
.btn1 div{
  border: 1px solid #007bff;
  margin: 0 2px; 
  width: 30px;
  line-height: 39px;
  border-radius: 5px;
}
H1{
  margin-top:10px; 
  background-color:bisque;
  border-radius: 5%;
}
</style>