const express=require("express");
const bodyParser=require("body-parser");
const cors=require("cors");
var get=require("./get.js");
var post=require("./post.js")
var put=require("./put.js")
var Delete=require("./delete.js")
var login=require("./login.js")
var app=express();
app.listen(8080);
app.use(bodyParser.urlencoded({
  extended:false
}));
app.use(cors({
  origin:["http://localhost:8080","http://127.0.0.1:5500"]
}));
app.use(express.static("public"));
app.use("/get",get);
app.use("/post",post);
app.use("/put",put);
app.use("/delete",Delete);
app.use("/login",login);
