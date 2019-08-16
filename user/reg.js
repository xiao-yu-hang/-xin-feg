//验证用户名
$("#username").blur(function(){
  //用户正则
  var unameReg= /^[a-zA-Z0-9_-]{4,16}$/;
  //查找修改元素
  var value=$(this).val();
  if(value==""){
    $(this).next().html(`<img src="img/err.png"> 用户名不能为空`);
  }
  else if(unameReg.test(value)==true){
    //修改兄弟元素的说明
    $(this).next().html("用户名格式正确");
    //checkUname() 
  }else 
  $(this).next().html(`<img src="img/err.png"> 用户名必须4-16位之间,不包含中文`);
})
// function checkUname(){
//   var xhr=new XMLHttpRequest();
//   xhr.onreadystatechange=function(){
//     if(xhr.readyState==4&&xhr.status==200){
//       var result=xhr.responseText;
//     }
//   }
//   xhr.open("post","/post/v1/postSet",true);
//   xhr.send();
// }