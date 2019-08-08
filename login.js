const express=require("express");
const bodyParser=require("body-parser");
const pool=require("./Pool.js");
var router=express.Router();

//1表示查询的数据已存在，即数据库里有数据
// 2表示查询数据不存在，或理解为查询条件错误，查询不到数据

//注册路由
router.post("/v1/reg",(req,res)=>{
  var obj=req.body;
  // var i = 400;
  //   for (var key in obj)
  //   {
  //       if (!obj[key])
  //       {
  //           i++;
  //           res.send('code:' + i +'     '+ key + "is null.");
  //           return;
  //       }
  //       i++;
  //   };
  if(obj.uid!==null){
    // res.send({code:401,msg:"uanme is null!"});
    sql="SELECT * from user_login where uid=?";
    pool.query(sql,[obj.uname],(err,reslut)=>{
      if(result.length>0)
      {
      res.write("1");
      return; 
      }else{
      res.write("2")
      }
    }); 
  }
  // if(!obj.upwd){
  //   res.send({code:402,msg:"upwd is null!"});
  //   return;
  // }
  // if(!obj.ubirthday){
  //   res.send({code:403,msg:"birthday is null!"});
  //   return;
  // }
  // if(!obj.usex){
  //   res.send({code:404,msg:"usex is null!"});
  //   return;
  // }
  if(obj.uphone!==null){
    // res.send({code:405,msg:"uphone is null!"});
    sql="SELECT * from user_login where user_phone=?";
    pool.query(sql,[obj.uphone],(err,reslut)=>{
      if(result.length>0)
      {
      res.write("1");
      return; 
      }else{
      res.write("2")
      }
    });     
  }
  if(obj.uemail!==null){
  sql="SELECT * from user_login where user_email=?";
  pool.query(sql,[obj.uemail],(err,reslut)=>{
    if(result.length>0)
    {
    res.write("1");
    return; 
    }else{
    res.write("2")
    }
  });
} 
  // if(!obj.ucity){
  //   res.send({code:406,msg:"ucity is null!"});
  //   return;
  // }
  sql="INSERT INTO user_login SET ?";
  pool.query(sql,[obj],function(err,result){
    res.writeHead(301, {'Location':""});
  });
});

// 登录路由
router.post("/v1/login",function(req,res){
  var obj=req.body;
  var $uid=obj.uid;
  var $upwd=obj.$upwd;
  console.log($uid);
  var sql = "select * from user_login where uid = ? or user_phone=? or user_email=? and upwd=?";
  pool.query(sql, [$uid,$uid,$uid,$upwd], function( err, result) {
    if (err) throw err;
    console.log(result);
    if (result.length > 0) {
      res.send ("1");
    } else {
      res.send ("2");
    }
  });
});
module.exports=router;