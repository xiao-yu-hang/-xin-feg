const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//查询usr_info表信息
router.get("/v1/userGet",(req,res)=>{
  var obj=req.query;
  var $uid=obj.uname;
  var $upwd=obj.upwd;
  var sql="select * from user_info where user_name=?|user_email=?|user_phone=? and user_upwd = ?";
  pool.query(sql,[$uid,$uid,$uid,$upwd],(err,result)=>{
    if(err) throw err;
    if(result>0){
      res.send("1");
    }else{
      res.send("0");
    }
  });
});

//图片相关路由
router.get("/v1/setImg",(err,result)=>{
  var $imgIcon=obj.imgIcon;
  var $uname=obj.uname;
  var $chose1=obj.Chose1;
  var $chose2=obj.Chose2;
  var $imgId=obj.imgId; 
  if($imgIcon!==undefined){
  var sql="select img_index from img where img_inco =　? and user_name is null LIMIT 0,12";
  pool.query(sql,[$imgIcon],(err,result)=>{
    if(err) throw err;
    if(result>0)
    {
      res.send(result);
    }else{
      res.send("0");
    }
  });
  }
  if($uname!==undefined){
    var sql="select * form img where user_name　= ?";
    pool.query(sql,[$uname],(err,result)=>{
      if(err)throw err;
      if(result>0){
        res.send(result);
      }else{
        res.send("0");
      }
    });
  }
  if($chose1!==undefined)
  {
    var sql="select img_icon from img where user_name is null LIMIT 0,5";
    pool.query(sql,(err,result)=>{
      if(err)throw err;
      if(result>0){
        res.send(result);
      }else{
        res.send("0");
      }
    });
  }
  if($chose2!==undefined)
  {
    var sql="select img_icon from img where user_name is not null order by user_liked_num desc LIMIT 0,5";
    pool.query(sql,(err,result)=>{
      if(err) throw err
      if(result>0){
        res.send(result);
      }else{
        res.send("0");
      }
    });
  }
  if($imgId!==undefined)
  {
    var sql="select * from img where img_id = ?";
    pool.query(sql,[$imgId],(err,result)=>{
      if(err)throw err;
      if(result>0){
        res.send(result);
      }else{
        res.send("0");
      }
    });
  }
});
module.exports=router;