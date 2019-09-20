<template>
  <div>
    <div id="head"></div>
    <h2>注册账号</h2>
    <form class="regform">
      <div class="ipt"><label><span>用户名</span><input type="text" v-model="uname" @input="checkUname" placeholder="请输入用户名"></label>
        <span class="hidden" v-html="name"></span>
      </div>
      <div class="ipt"><label><span>密码</span><input type="password" v-model="upwd"  @input="checkUpwd" placeholder="请设置密码"></label>
        <span class="hidden" v-html="pwd"></span>
      </div>
      <div class="ipt"><label><span>再输入密码</span><input type="password" v-model="upwd2" placeholder="请再次输入密码" @input="checkUpwd2"></label>
        <span class="hidden" v-html="pwd2"></span>
      </div>
      <div class="ipt"><label><span>手机号</span><input type="text" v-model="phone" @input="checkPhone" placeholder="请输入手机号"></label>
        <span class="hidden" v-html="phonemsg"></span>
      </div>
      <div class="ipt"><label><span>邮箱</span><input type="text" v-model="email" @input="checkEmail" placeholder="请输入邮箱"></label>
        <span class="hidden" v-html="emailmsg"></span>
      </div>
      <!-- <div class="ipt"><span>出生日期</span><input type="date" v-model="birth" ></div> -->
      <div class="ipt"><span>出生日期</span><vue-datepicker-local v-model="time" placeholder="选择日期" clearable format="YYYY-MM-DD"></vue-datepicker-local></div>
      <div class="ipt"><span>性别</span>
        <label><input type="radio" class="sex" value="1" v-model="sex"><span>男</span></label>
        <label><input type="radio" class="sex" value="0" v-model="sex"><span>女</span></label>
      </div> 
      <check @get="getCode"></check>
      <a class="btn" href="#" @click="reg"><input type="button" value="注册"></a> 
    </form>
  </div>
</template>
<script>
import QS from 'qs'
import VueDatepickerLocal from 'vue-datepicker-local'
export default {
  components:{
    VueDatepickerLocal
  },
  data(){
    return{
      uname:"",
        upwd:"",
        upwd2:"",
        phone:"",
        email:"",
        birth:"",
        sex:1,
        name:"用户名6-16位,禁止使用符号",
        pwd:"包含字母数字6-16位",
        pwd2:"",
        phonemsg:"",
        emailmsg:"",
        bool:false,
        code:false,
        time:''
    }
  },
  methods: {
        getCode(data){
          this.code=data;
          console.log(this.code);
        },
        //验证是否注册成功
        reg(){
          this.birth==""? this.bool=false : this.bool=true ;
          if(this.code==true){
            if(this.bool==true){
              this.axios.post("/post/v1/postSet",
              Qs.stringify({
                user_name:this.uname,
                user_upwd:this.upwd,
                user_phone:this.phone,
                user_email:this.email,
                user_birthday:`${this.time.getFullYear()}/${this.time.getMonth()+1}/${this.time.getDate()}`,
                user_sex:this.sex,
              })).then(result=>{
                if(console.data==1){
                  alert("注册成功");
                  this.$router.push("/regdep.vue");
                }else{
                  alert("注册失败");
                  window.location.reload();
                }
              })
            }else{
              alert("注册失败");
              window.location.reload();
            }
          }else{
            alert("验证码错误");
            console.log(`${this.time.getFullYear()}/${this.time.getMonth()+1}/${this.time.getDate()}`);
          }
        },
        //验证用户名
        checkUname(){
          if(this.uname==""){
            this.name=`<img src="../img/err.png">用户名不能为空`;
            this.bool=false
          }else{
            var unameReg=/^[a-zA-Z0-9_-]{6,16}$/;
            if(unameReg.test(this.uname)==true){
              this.axios.get("/get/v1/userGet",
                {
                  params:{
                    uname:this.uname
                  }
                }
              ).then(result=>{
                if(result.data=="1"){
                  this.name=`<img src="../img/err.png">用户名被占用`
                }else{
                  this.name=`<img src="../img/ok.png">用户名可用`
                }
              });
              //this.name=`<img src="./user/img/ok.png">用户名格式正确`
              //this.bool=true
            }else{
              this.name=`<img src="../img/err.png">用户名必须6-16位,禁止使用符号`
              this.bool=false
            }
          }
        },
        //验证密码
        checkUpwd(){
          if(this.upwd==""){
            this.pwd=`<img src="../img/err.png">密码不能为空`
            this.bool=false
          }else{
            var upwdReg=/(?![0-9A-Z]+$)(?![0-9a-z]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
            if(upwdReg.test(this.upwd)==true){
              this.pwd=`<img src="../img/ok.png">密码格式正确`
              this.bool=true
            }else{
              this.pwd=`<img src="../img/err.png">密码必须包含数字、大小写字母，且6-16位`
              this.bool=false
            }
          }
        },
        //验证再次输入密码
        checkUpwd2(){
          if(this.upwd2==""){
            this.pwd2=`<img src="../img/err.png">密码不能为空`
            this.bool=false
          }else{
            if(this.upwd2==this.upwd){
              this.pwd2=`<img src="../img/ok.png">密码一致`
              this.bool=true
            }else{
              this.pwd2=`<img src="../img/err.png">密码不一致`
              this.bool=false
            }
          }
        },
        //验证手机号
        checkPhone(){
          if(this.phone==""){
            this.phonemsg=`<img src="../img/err.png">手机号不能为空`
            this.bool=false
          }else{
            var phoneReg=/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;
            if(phoneReg.test(this.phone)==true){
              this.phonemsg=`<img src="../img/ok.png">手机号格式正确`
              this.bool=true
            }else{
              this.phonemsg=`<img src="../img/err.png">格式不正确`
              this.bool=false
            }
          }
        },
        checkEmail(){
          if(this.email==""){
            this.emailmsg=`<img src="../img/err.png">邮箱不能为空`
            this.bool=false
          }else{
            var emailReg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            if(emailReg.test(this.email)==true){
              this.emailmsg=`<img src="../img/ok.png">邮箱可用`
              this.bool=true
            }else{
              this.emailmsg=`<img src="../img/err.png">邮箱格式不正确`
              this.bool=false
            }
          }
        },
      },
  
}
</script>
<style scoped>
  h2{ 
      width:1000px;
      margin:auto;
      margin-bottom: 30px;
      margin-top:30px;
      text-align:left;
      padding-left:70px;
    }
    .regform{
      width: 1000px;
      margin: auto;
    }
    .ipt{
      width:800px;
      clear: both;
      margin-bottom: 20px;
    }
    .ipt:after{
      content: "";
      display: block;
      clear: both;
    }
    .datepicker{
      display: block;
      float:left;
      width: 350px;
      height: 42px;
    }
    /* 修改子组件样式 */
    .datepicker>>>input{
      width: 100%;
      height: 100%;
    }
    input{
      display: block;
      float:left;
      width: 328px;
      height: 16px;
      border:1px solid #ddd;
      padding: 12px 10px;
      font-size: 16px;
      color:#666;
    }
    .ipt span{
      display: block;
      float: left;
      width:90px;
      height: 42px;
      text-align: right;
      line-height: 42px;
      margin-right:20px; 
    }
    input.sex{
      width:50px;
      margin-top:12px;
    }
    input.sex+span{
      text-align: left;
    }
    .ipt .hidden{
      width: 250px;
      font-size: 12px;
      text-align: left;
      padding-left:10px;
    }
    .btn input{
      position: relative;
      width: 350px;
      height: 40px;
      padding: 0;
      background-color: #3f89ec;
      border-radius: 4px;
      color:#fff;
      cursor:pointer;
    }
    .btn{
      display: block;
      position: relative;
      left:110px;
      width: 350px;
      height: 40px;
      
    }
    .ipt img{
      position: relative;
      top:3px;
    }
</style>