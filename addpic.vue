<template>
  <div class="container">
    <fieldset>
      <legend>上传图片</legend>
    <div class="img">
      <img src="../../public/img/pic.png">
    </div>
    <label for="index">图片地址:</label><input type="text" id="index" class="input">
    <br>
    <label for="index">图片标签:</label><input type="text" id="index" class="input">
    <br>
    <label for="index">图片介绍:</label><input type="text" id="index" class="input">
    <br>
    <button class="btn btn-primary mb-2">确认添加</button>
    </fieldset>
  </div>
</template>
<style scoped>
.img{
  border:1px dotted #bbbbbb;
  width: 100px;
  height: 100px;
  padding:5px;
  margin: 10px auto;
}
 .img img{
   width: 90px;
   height: 90px;
 }
 fieldset{
   border: 1px solid #bbb;
 }
 legend{
   width: 100px;
   color: aquamarine;
 }
</style>