<template>
  <div>
    <header>
      <div id="header">
        <span class="hour">{{hour}}:</span>
        <span class="min">{{minutes}}</span>
        <span class="s">{{seconds}}</span>
        <p>尊敬的xxx，{{hour>12?'晚上好！':'早上好！'}}欢迎来到新风格，请选择你喜欢的5张风格图片</p>
      </div>
      <div id="nav"></div>
    </header>
    <div class="taglist" @click="change">
      <div class="item" v-for="(item,i) of taglist" :key="i" >
        <a  :data-i="i" href="javascript:;" :style="{background:'#fff','border-color':taglist[i].bdcol,color:taglist[i].bdcol
      }" class="">{{taglist[i].name}}</a>
      </div>
      <div id="nav" style="position: relative; top: 40px;"></div>
      <div class="imglist hidden">
        <img class="bigimg" v-show="shows" :src="src" style="z-index: 999">
        <a class="img" v-for="(item,i) of list" :key="i" >
          <!-- <div id="super-mask" style="width:184px;height:144px;position: absolute;" @mouseover="toggle" @mouseout="toggle"></div> -->
          <img :src="list[i].img_index" @mouseover="toggle" @mouseout="toggle">
          <i class="img-close-icon" @click="changeImg" :data-i="i"></i></a>
      </div>
    </div>
    <a class="btn" :style="{display:list.length==0?'none':''}" @click="insert">我选好了</a>    
  </div>
</template>
<script>
import QS from 'qs'
export default {
  data() {
    return {
      taglist:[{id:0,name:"淡雅",bdcol:"#67c23a"},
        {id:1,name:"动漫",bdcol:"#ff3300"},
        {id:2,name:"风景",bdcol:"#87CEFF"},
        {id:3,name:"可爱",bdcol:"#FFC125"},
        {id:5,name:"简约",bdcol:"#E3E3E3"},
        {id:6,name:"清新",bdcol:"#90EE90"},
        {id:7,name:"炫酷",bdcol:"#8968CD"},
        {id:8,name:"电影",bdcol:"#FF34B3"},
        {id:9,name:"人物",bdcol:"	#EEEE00"},
        {id:10,name:"动物",bdcol:"#FF83FA"},
        {id:11,name:"暗黑",bdcol:"#242424"},
        {id:12,name:"游戏",bdcol:"#63B8FF"}
        ],
        list:[],
        hour:"",
        minutes:"",
        seconds:"",
        src:"",
        shows:false,
    }
  },
  created() {
        this.getHour();
        this.getMinutes();
        this.getSeconds();
      },
      methods: {
        //插入图片到仓库
        insert(){
          if(this.list.length<5){
            alert("请继续选择");
          }else{
            this.axios.post("/post/v1/postImg",
            QS.stringify({
              list:JSON.stringify(this.list)
            })).then(result=>{
              //
            })
          }
        },
        //显示大图
        toggle(e){
          this.shows=!this.shows;
          this.src=e.target.src;
        },
        getHour(){
          this.hour=new Date().getHours();
          var time=setInterval(()=>{
            this.hour=new Date().getHours();
          },3600000)
        },
        getMinutes(){
          this.minutes=new Date().getMinutes();
          var time=setInterval(()=>{
            this.minutes=new Date().getMinutes();
          },60000)
        },
        getSeconds(){
          this.seconds=new Date().getSeconds();
          var time=setInterval(()=>{
            this.seconds=new Date().getSeconds();
          },1000)
        },
        //切换图片
        changeImg(e){
          console.log(e.target.dataset.i)
          this.list.splice(e.target.dataset.i,1);
          console.log(this.list)
        },
        //获取对应标签的图片
        change(e){
          if(e.target.nodeName=="A"){
            var i=parseInt(e.target.dataset.i);
            if(e.target.className==""){
            e.target.style.background=this.taglist[i].bdcol;
            e.target.style.color="#fff";
            e.target.className="checked";
            //获取img列表
            if(this.list.length<5){
            this.axios.get("/get/v1/setImg",{
              params:{
                imgIcon:this.taglist[i].name
              }
            }).then(result=>{
              var length=result.data.length;
              this.list.push(result.data[(Math.floor(Math.random()*length))]);
            })}
            }else{
            e.target.className="";
            e.target.style.background="#fff";
            e.target.style.color=this.taglist[i].bdcol;
            }
          }
        }
      },
}
</script>
<style scoped>
*{
      margin: 0;
      box-sizing: border-box;
    }
    #header{
      width: 1000px;
      height: 75px;
      margin: auto;
      line-height:75px;
    }
    #nav{
      width: 1000px;
      margin: auto;
      height: 1px;
      box-shadow: 0px 4px 3px #666;
      clear: both;
    }
    .taglist{
      width: 1000px;
      margin: auto;
    }
    .taglist .item a{
      width: 120px;
      height: 50px;
      display: block;
      border: 2px solid;
      border-radius:5px; 
      text-align: center;
      line-height: 50px;
      font-size: 18px;
      text-decoration: none;
      cursor: pointer;
      margin: auto
    }
    .taglist .item a:hover{
      opacity: 0.5;
    }
    .item{
      float: left;
      width: 250px;
      height: 50px;
      margin-top: 40px;
    }
    .item a.checked{
      color:#fff;
    }
    .img{
      float: left;
      width: 19%;
      height: 150px;
      border:3px solid #eee;
      border-radius: 2px;
      position: relative;
    }
    .img+.img{
      margin-left:10px; 
    }
    .img img{
      width: 100%;
      height: 100%;
      display:block;
    }
    .img:hover{
      opacity: 0.6;
    }
    i{
      position:absolute;
      right: 0;
      top:0;
      width: 20px;
      height: 20px;
      z-index:999;
      background-image: url('../../public/img/close.png');
      background-size:20px 20px;
      display: none;
      cursor: pointer;
    }
    .imglist a:hover i{
      display: block;
    }
    .imglist{
      margin-top:80px;
    }
    .imglist:after{
      content:"";
      display:block;
      clear: both;
    }
    .hour,.min,.s,p{
      float: left;
    }
    .hour,.min{
      font-size: 60px;
    }
    .s{
      width:24px;
      height: 79px;
      line-height: 115px;
      margin-left: 10px;
      font-size: 20px;
    }
    p{
      margin-left:20px;
    }
    .bigimg{
      width: 500px;
      height: 500px;
      position: absolute;
      top: 10%;
      left: 50%;
      margin-left: -250px;
      margin-top: -150px;
    }
    .btn{
      position: absolute;
      background-color: #3FA5DC;
      border: 2px solid transparent;
      width: 150px;
      height: 50px;
      border-radius: 4px;
      left:50%;
      margin-top: 200px;
      margin-left:-75px;
      line-height: 50px;
      text-align: center;
      color: #fff;
      font-size: 26px;
      text-decoration: none;
      cursor: pointer;
      box-shadow: 1px 3px 8px 0 rgba(25,119,173,0.4);
    }
    .btn:hover{
      opacity: 0.5;
    }
</style>