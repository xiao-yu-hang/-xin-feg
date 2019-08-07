const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//初始化路由
//实时交互，点击一个选中发送一次请求.
router.get("/v1/check",(req,res)=>{
  var $img_icon=req.query;
  var $uid=Math.floor(123*Math.random());
  // console.log($uid);
  var obj="%"+$img_icon.img_icon+"%";
  // console.log(obj);
  var sql="select img_index from img where img_icon like ? and img_id=?";
  pool.query(sql,[obj,$uid],(err,result)=>{
      // console.log(result);
      if(err) throw err;   
      res.send(result);
    });
});

module.exports=router;