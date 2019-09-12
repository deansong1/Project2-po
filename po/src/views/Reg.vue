<template>
<div>
    <div class="header">
       <div class="hed_l">
           <a href="javascript:;" @click="jum">OPPO官网</a>
           <a href="javascript:;">ColorOS</a>
           <a href="javascript:;">云服务</a>
       </div>
       <div class="help">
        <a href="javascript:;">简体中文</a>
        <div class="d-none">lll</div>
       </div>
   </div>
   <div class="mid">
        <h3>注册账号</h3>
   </div>
  
       <div class="mid-content">
          
            <div class="loger">
                <div class="mb-3">
                    <input type="text" name="country" placeholder="国家/地区">
                    <p class="attention">成功注册帐号后，国家/地区将不可更改</p>
                </div>
                <div class="mb-3">
                    <input type="text" name="username" placeholder="请输入手机号或者邮箱" v-model="uname">
                </div>
                <div class="mb-3">
                    <input type="text" name="user" placeholder="请输入真实姓名" v-model="user_name">
                </div>
                <div class="mb-3">
                    <input type="password" name="upwd" placeholder="请输入密码" v-model="upwd">
                    <p class="attention">密码由1-12位数字、字母组成、至少包含两种字符</p>
                </div>
                <button @click="reg">注册</button>
                
        </div>
       
   </div>
   <div class="boter">
    <p>
        <span>© 2005 - 2019 OPPO 版权所有 粤ICP备14056724号-2</span>
        <span>联系方式：4001-666-888</span>
    </p>
   </div>
   
</div>
</template>

<script>

export default {
    data(){
        return{
          uname:"",
          upwd:"",
          user_name:''
        }
       
    },
    created(){
        this.reg();
    },
    methods:{
        reg(){
          var u=this.uname;
          var p=this.upwd;
          var us=this.user_name;
          var reg=/^[a-z0-9]{1,12}$/i;
          //用正则来验证是否符合规范
          if (!reg.test(u)) {
            this.$toast("用户名注册格式不规范");
            return;
          }
          if (!reg.test(p)) {
            this.$toast("用户名注册格式正确");
            return;
          }
          var url="reg/reg";
          var obj={uname:u,upwd:p,user_name:us}
          this.axios.get(url,{params:obj}).then(res=>{
              if (res.data.code==-1) {
                  this.$toast("注册失败")
              } else {
                  this.$toast("注册成功");
                  this.$router.push("/logins")
              }
          })
        },
        jum(){
            this.$router.push("/");
            this.$router.go(0);
        }
    },
}
</script>

<style scoped>
    *{margin:0;padding: 0;}
   /* 顶部栏 */
    .header{
        width: 894px;
        height: 78px;
        margin:0 auto;
       
        line-height:78px;
        display: flex;
        justify-content: space-between;
        color: #7f7f7f;

    }
     .header a{
         font-size:14px;
         color: #7f7f7f;
     }
    
    .hed_l a{
        margin-right:20px;
    }
    /* 中部标题 */
    h3{
        margin:30px 0 10px;
    }
    .mid{
        height: 100px;
    }
    .mid p{
        font-size: 13px;
        margin:0 0 10px;
    }
    /* 中部内容 */
    .mid2{
        width: 960px;
        height: 488px;
        margin: 0 auto;
        border:1px solid #ebebeb;
    }
    
    .account_log{
        justify-content: center;
        margin: 40px 0;
    }
    .account_log div:first-child{
        width: 120px;
        height: 25px;
        opacity: 1;
        color: #2ad181;
        font-size: 21px;
        border-right: 1px solid #ebebeb;
    }
    .account_log div:last-child{
        width: 120px;
        height: 25px;
        opacity: 1;
       
        font-size: 21px;
    }
/* input区域 */
    .loger input{
        width: 400px;
        height: 48px;
        border-radius: 8px;
        outline:0;
        border:0;
        padding: 0 20px;
        background: #f7f7f7;
    }
   .attention{
     margin: 10px auto 18px;
    opacity: .3;
    font-family: "sans-serif";
    font-size: 12px;
    color: #000;
   }
    /* 按钮 */
    .loger button{    
        background-color: #2ad181;
        width: 100px;
        height:39px;
        font-size: 15px;
        margin: 9px 78.5px;
        border:0;
        border-radius: 8px;
        color:#fff;
        }
        .reg a{
            display: inline-block;
            color:#2ad181;
            font-size: 15px;
            margin: 9px 78.5px;
        }
        /* 底部 */
        .boter p{
            margin:230px 0 10px;
            font-size: 12px;
            color:#9b9b9b;
        }
        .boter p span:last-child{
            margin: 0 0 0 7px;
        }

</style>
