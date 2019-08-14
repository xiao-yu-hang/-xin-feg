const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//修改仓库图片
router.put("/v1/putImg",(req,res)=>{
  var $uname=req.body.userName;
  var $imgId1=req.body.imgId1;
  var $imgId2=req.body.imgId2;
  var sql="update img set user_name = null user_liked_num=0 where img_id = ?;update img set user_name = ? where img_id = ?";
  pool.query(sql,[$imgId1,$uname,$imgId2],(err,result)=>{
    if(err)throw err;
    if(result[0].affectedRows>0&&result[1].affectedRows>0)
    {
      res.send("1");
    }else if(result[0].affectedRows>0&&result[1].affectedRows==0){
      var sql="update img set user_name = ? where img_id = ?";
      pool.query(sql,[$imgId1,$uname],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0)
        res.send("0");
      });
    }else{
      res.send("0");
    }
  });
});

//修改用户信息
router.put("/v1/putInfo",(req,res)=>{
  var obj=req.body;
  var $uname=obj.userName;
  var sql="update user_info set ? where user_name = ?";
  pool.query(sql,[obj,$uname],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0)
    {
      res.send("1");
    }else{
      res.send("0");
    }
  });
});

//添加好友
router.put("/v1/putFriend",(req,res)=>{
  var obj=req.body;
  // var $userName=req.body.userName;
  // var $Fid=req.body.friendId;
  var sql="insert into user_friend set ?";
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
module.exports=router;