<template>
<div>
   <div class="header">
       <div class="hed_l">
           <a href="javascript:;" @click="jum">OPPO官网</a>
           <a href="javascript:;">ColorOS</a>
           <a href="javascript:;">云服务</a>
       </div>
       <div class="help">
           <a href="javascript:;" class="mr-4">帮助中心</a>
        <a href="javascript:;">简体中文</a>
        <div class="d-none">lll11111</div>
       </div>
   </div>
   <div class="mid">
        <h3>OPPO</h3>
        <p class="">登录 OPPO 帐号可享受更多的服务</p>
   </div>
  
       <div class="mid-content">
           <div class="account_log d-flex">
                <div>账号登录</div>   
                <div>扫码登录</div>   
            </div> 
            <div class="loger">
                <div class="mb-3">
                    <input type="text" name="user" placeholder="请输入用户名" v-model="uname">
                </div>
                <div class="mb-3">
                    <input type="password" name="upwd" placeholder="请输入密码" v-model="upwd">
                </div>
                <div class="tell">
                <a href="">关于 OPPO 帐号隐私声明</a>
                <a href="">忘记密码</a>
                </div>
                
                <button @click="login">登录</button>
                <div class="reg">
                    <a href="">注册oppo账号</a>
                </div>
                
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
        }
       
    },
    created(){
       this.login();
    },
    methods:{
        login(){
            //获取用户名
            var n=this.uname;
            //获取密码
            var p=this.upwd;
            //定义相应的正则表示式
            var reg=/^[a-z0-9]{1,7}$/i;
            //使用正则验证
            if (!reg.test(n)) {
                this.$toast("用户名格式不正确");
                return;
            }
            if (!reg.test(p)) {
                this.$toast("密码格式不正确");
                return;
            }
            //发送ajax请求
            var url="http://127.0.0.1:5050/logins";
            var obj={uname:n,upwd:p}
            this.axios.get(url,{params:obj}).then(res=>{
                    if (res.data.code==-1) {
                        alert("用户名或密码错误");
                    } else {
                        this.$router.push("/");
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
    /* div.help{float:right;} */
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
    .mid-content{
        width: 442px;
        height: 488px;
        margin:0 auto;
        border:1px solid #ebebeb;
        background: #f7f7f7;
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
        width: 285px;
        height: 48px;
        border-radius: 8px;
        outline:0;
        border:0;
        padding: 0 20px;
    }
    .tell{
        width: 285px;
        margin: 6px auto 45px;
        text-align: right;
        height: 17px;text-align: center;
        font-size: 12px;
    }
    .tell a:first-child{
       float:left;
    }
    .tell a:last-child{
       float:right;
    }
    /* 按钮 */
    .loger button{    
        background-color: #2ad181;
        width: 285px;
        height:48px;
        font-size: 15px;
        margin: 9px 78.5px;
        border:0;
        border-radius: 8px;
        color:#fff;
        /* opacity:.3; */
        /* cursor:not-allowed; */
        }
        .reg a{
            display: inline-block;
            color:#2ad181;
            font-size: 15px;
            margin: 9px 78.5px;
        }
        /* 底部 */
        .boter p{
            margin:40px 0 10px;
            font-size: 12px;
            color:#9b9b9b;
        }
        .boter p span:last-child{
            margin: 0 0 0 7px;
        }

</style>
