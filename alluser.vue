<template>
  <div class="container">
    <table class="table table-hover">
      <thead>
        <tr>
          <td>账号</td>
          <td>性别</td>
          <td>个人介绍</td>
          <td>手机号</td>
          <td>邮箱</td>
          <td>出生年月</td>
          <td>用户类型</td>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item,index) in user" :key="index">
          <td>{{item[0]}}</td>
          <td>{{item[1]}}</td>
          <td>{{item[2]}}</td>
          <td>{{item[3]}}</td>
          <td>{{item[4]}}</td>
          <td>{{item[5]}}</td>
          <td>{{item[6]}}</td>
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
      user:[["xiaoyuhang","男","好困","181**********","31564@163.com","1995-6-10","管理员用户"],["xiaoyuhang","男","好困","181**********","31564@163.com","1995-6-10","管理员用户"]],
    }
  }
}
</script>
<style scoped>
table{
  border:1px solid #bbbbbb;
  margin: 0 auto;
}
td{
  width: 30px;
  height:20px;
  font-size:14px;
  padding: 0;
}
td img{
  width: 25px;
  height: 25px;
  border:1px solid red;
}
</style>