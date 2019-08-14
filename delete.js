const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//删除好友
router.delete("/v1/deleteFriend",(req,res)=>{
  // var obj=req.query;
  var $userName=req.query.userName;
  var $Fid=req.query.friendId;
  var sql="delete from user_friend where user_name = ? and friend_id = ?";
  pool.delete(sql,[$userName,$Fid],(err,result)=>{
    if(result.affectedRows>0){
      res.send("1");
    }else{
      res.send("0");
    }
  });
});

//删除主页留言
router.delete("/v1/deleteFriend",(req,res)=>{
  var $userName=req.query.userName;
  var $msgTime=req.query.msgTime;
  var sql="delete from user_msg where user_name = ? and msg_time = ? ";
  pool.query(sql,[$userName,$msgTime],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0)
    {
      res.send("1");
    }else{
      res.send("0");
    }
  });
});

//取消赞
router.delete("/v1/deleteFriend",(req,res)=>{
  var $imgId=req.query.imgId;
  var $imgLikedNum=req.query.userLikedNum;
  var $imgLK=parseInt($imgLikedNum)-1;
  var sql="update img set user_liked_num = ? where img_id = ?";
  pool.query(sql,[$imgLK,$imgId],(err,result)=>{
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