<template>
  <div class="container row p-0 pictures">
    <div class="col-12 mb-2 mt-2">
       <el-breadcrumb separator="/">
         <el-breadcrumb-item><a href="">首页</a></el-breadcrumb-item>
         <el-breadcrumb-item><a href="/">图片搜索</a></el-breadcrumb-item>
         <el-breadcrumb-item>清新</el-breadcrumb-item>  
        </el-breadcrumb>
    </div>
    <div class="col-4 mt-2"><img src="https://pic.superbed.cn/item/5d52114c451253d178640d59.jpg"></div>
    <div class="col-4 mt-2"><img src="https://pic.superbed.cn/item/5d521149451253d178640cbf.jpg"></div>
    <div class="col-4 mt-2"><img src="https://pic.superbed.cn/item/5d521149451253d178640cbd.jpg"></div>
    <div class="col-4 mt-2"><img src="https://pic.superbed.cn/item/5d521149451253d178640cbd.jpg"></div>
    <div class="col-4 mt-2"><img src="https://pic.superbed.cn/item/5d521149451253d178640cbd.jpg"></div>
    <div class="col-4 mt-2"><img src="https://pic.superbed.cn/item/5d521149451253d178640cbd.jpg"></div>
    <div class="col-3"></div>
    <div class="col-6 btn1 mt-2">
      <button class="btn btn-primary">上一页</button>
      <div>1</div>
      <div>2</div>
      <div>3</div>
      <div>4</div>
      <button class="btn btn-primary">下一页</button>
    </div>
    <div class="col-3"></div>
  </div>
</template>
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
</style>