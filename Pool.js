const mysql=require("mysql");
var pool=mysql.createPool({
  host:"127.0.0.1",
  port:"3306",
  user:"root",
  password:"",
  charset:"utf8",
  connectionLimit:20,
  database:"xinfeg",
  multipleStatements:true
});
module.exports=pool;