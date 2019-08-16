//验证用户名
function checkUname(){
  var xhr=new XMLHttpRequest();
  xhr.onreadystatechange=function(){
    if(xhr.readyState==4&&xhr.status==200){
      var result=xhr.responseText;
    }
  }
  xhr.open("get",url,true);
  xhr.send();
}