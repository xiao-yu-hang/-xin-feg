<template>
<div class="back" @click="goback">
  <img src="../../public/img/back.png" id="back" ><label for="back">返回</label> 
</div>
</template>
<script>
  export default {
    methods: {
      goback() {
        if(history.length!=0)
        history.go(-1);
      }
    }
  }
</script>
<style scoped>
.back{
  margin-left:20px;
  width: 80px;
  color:rgb(162, 241, 166);
  border:1px solid rgb(203, 217, 226);
  border-radius: 2px;
}
.back img{
  width: 20px;
  height: 20px;
  margin:0 5px 8px 0;
}
.back label{
  color: rgb(233, 154, 57);
  font-size: 20px;
  margin: 0;
}
</style>