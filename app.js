const express=require("express");
const bodyParser=require("body-parser");
var login_router=require("./login.js");
var start_router=require("./start.js")
var app=express();
app.listen(8080);
app.use(bodyParser.urlencoded({
  extended:false
}));
app.use(express.static("public"));
app.use("/login",login_router);
app.use("/start",start_router);
