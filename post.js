const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//返回值1：成功 0：失败

//注册路由
router.post("/v1/postSet",(req,res)=>{
  var obj=req.body;
  var sql="INSERT INTO user_info SET ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0)
    {
    res.send("1");
    // res.writeHead(301, {'Location':""});
    }else{
    res.send("0");
    }
  });
});

//添加留言
router.post("/v1/postMsg",(req,res)=>{
  var obj=req.body;
  var sql="INSERT INTO user_msg SET ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0)
    {
      res.send("1");
    }else{
      res.send("0");
    }
  });
});

//插入图片到仓库
router.post("/v1/postImg",(req,res)=>{
  let obj=req.body;
  let $uname=obj.uname;
  let arr= new Array(5);
  arr[0]=obj.imgId1;
  arr[1]=obj.imgId2;
  arr[2]=obj.imgId3;
  arr[3]=obj.imgId4;
  arr[4]=obj.imgId5;
  var sql="INSERT INTO　img set user_name = ? where img_id = ?";
  for(let i=0;i<5;i++){
  pool.query(sql,[$uname,arr[i]],(err,result)=>{
    if(err) throw err;
    let arr1=[];
    if(result.affectedRows==0)
    {
      arr1[arr1.length]=i;
    }
  });
  }
  if(arr1[0]==undefined)
    {
      res.send('1');
    }else{
      for(var key in arr1){
      res.write(`${arr[arr1[key]]}图片选择失败`);
      }
    }
});

//点赞
router.post("/v1/likeImg",(req,res)=>{
  var obj=req.body;
  var $imgId=obj.imgId;
  var $userLikedNum=parseInt(obj.likedNum) + 1;
  var sql="INSERT INTO　img set user_liked_num = ? where img_id = ?";
  pool.query(sql,[$imgId,$userLikedNum],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0)
    {
      res.send("1");
    }else{
      res.send("0");
    }
  });
});

module.exports=router;