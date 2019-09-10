<template>
  <div class="container">
    <fieldset>
      <legend>注意事项</legend>
      <div class="content">
    <div class="msg">
       <div v-for="(item,index) in msg" :key="index">
         <label>留言人:</label><span>{{item[0]}}</span>
         <label>内容:</label><span>{{item[1]}}</span>
         <label>留言时间:</label><span>{{item[2]}}</span>
       </div>
    </div>
    <div class="input">
    <textarea name="" id="" cols="30" rows="10"></textarea>
    <br>
    <button class="btn btn-primary">提交</button>
    </div>
    </div>
    </fieldset>
  </div>
</template>
<script>
export default {
  data(){
    return{
      msg:[["xiaoyuhang","不要乱删","2019-9-4"],["xiaoyuhang","不要乱删","2019-9-4"],["xiaoyuhang","不要乱删","2019-9-4"],["xiaoyuhang","不要乱删","2019-9-4"]]
    }
  }
}
</script>
<style scoped>
.msg{
border: 1px solid bisque;
width: 50%;
}
label+span{
  margin-right:20px;
}
.content{
  display: flex;
  justify-content: space-around;
  margin-bottom: 20px;
}
fieldset{
  border:1px solid #bbb;
  width: 100%;
}
legend{
  width: 100px;
}
</style>