const express=require("express");
const bodyParser=require("body-parser");
var get=require("./get.js");
var post=require("./post.js")
var put=require("./put.js")
var Delete=require("./delete.js")
var app=express();
app.listen(8080);
app.use(bodyParser.urlencoded({
  extended:false
}));
app.use(express.static("public"));
app.use("/get",get);
app.use("/post",post);
app.use("/put",put);
app.use("/delete",Delete);
