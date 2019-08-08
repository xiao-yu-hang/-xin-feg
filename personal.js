const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

// 用户个人信息,头像图片地址、用户名、用户背景图片。
router.get("/v1/info/",(req,res)=>{
  var $uid=req.query;
  sql="select * from user_info where uid = ?";
  pool.query(sql,[$uid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
//用户好友列表，是否在线，用户名，用户头像，这是用户自己看到的界面
router.get("/v1/friend/",(req,res)=>{
  var $uid=req.query;
  var sql="select * from user_friend where uid = ?";
  pool.query(sql,[$uid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//用户图片仓库信息
router.get("/v1/displayImg/",(req,res)=>{
  var $uid=req.query;
  var sql="select * from user_home_img where uid = ?";
  pool.query(sql,[$uid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//设置个人信息
//1、异步查询可选图像
router.get("/v1/headerImg/",(req,res)=>{
  var sql="select * from user_header_img";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//设置个人信息
router.put("/v1/setInfo/",(req,res)=>{
  var $uid=req.body.uid;
  var $introduce=req.body.introduce;
  var $name=req.body.uname;
  var $icon=req.body.icon;
  user
});

module.exports=router;