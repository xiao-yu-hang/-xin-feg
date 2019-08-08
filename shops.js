const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//热门图片
   router.get("/v1/hotTops/",(req,res)=>{
     var statu=1;
     var sql="select user_liked_num,img_index,user_img_introduce from user_home_img where img_id = (select img_id from img where img_statu = ?) ORDER BY user_liked_num DESC LIMIT 0,10";
     pool.query(sql,[statu],(err,result)=>{
       if(err) throw err;
       res.send(result);
     });
   });

//根据标签风格随机获取图片，包含图片介绍。
  router.get("/v1/shop/",(req,res)=>{
  var obj=req.query;
  var $img_icon="%"+obj+"%";
  var $uid=Math.floor(Math.random()*123);
  var sql="select img_index，img_introduce from img where img_icon = ? and img_ig = ?";
  pool.query(sql,[$img_icon,$uid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});