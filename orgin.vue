<template>
  <div class="container">
    <fieldset>
      <legend>个人仓库</legend>
    <div class="orgin row">
    <div class="col-1"></div>
    <div class="col-2 border-light"  v-for="(item,index) in userImg" :key="index" @click="replace">
      <img :src="item.src" >
      <span style="display:none;">{{item.id}}</span>
    </div>
    <div class="col-1"></div>
    <h5 class="col-12 mt-2 text-info">请选择你要替换的图片</h5>
  </div>
  </fieldset>
  </div>
</template>
<script>
export default {
  data(){
    return{
      userImg:[{src:"https://pic.superbed.cn/item/5d521079451253d17863fa82.jpg",id:14},
      {src:"https://pic.superbed.cn/item/5d521079451253d17863fa80.jpg",id:12},
      {src:"https://pic.superbed.cn/item/5d52107e451253d17863fb5d.jpg",id:17},
      {src:"https://pic.superbed.cn/item/5d52106b451253d17863f916.jpg",id:16},
      {src:"https://pic.superbed.cn/item/5d52106b451253d17863f911.jpg",id:19}],
    }
  },
  methods:{
    replace(e){
      var id2=this.$route.query.img_id;
      var id1=e.currentTarget.lastElementChild.textContent;
      var name=1212;
      // var name=this.$store.getters.getState;
      console.log(name);
      console.log(id1);
      var url="/put/v1/putImg";
      var obj={imgId1:id1,userName:name,imgId2:id2}
      this.axios.get(url,{params:obj}).then(
        res=>{}
      );
    },
  }
}
</script>
<style scoped>
fieldset{
  border: 1px solid #bbb;
}
.col-2 img{
width:100%;
height:120px;
}
.col-2 h5{
  text-align: center;
}
legend{
  width: 100px;
  color: aquamarine;
  font-size: 20px;
  font-weight: bolder;
}
</style>