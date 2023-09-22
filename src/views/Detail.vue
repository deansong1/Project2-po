<template>
<div>
    <header1/>
<div id="bor-der">
    <div id="detail1">
        <div class="t-k3">
            <span>k3</span>
            <div class="views">
                <span class="mr-4">概览</span>
                <span class="mr-4">技术规格</span>
            </div>
        </div>
        <div class="bot1">
        <div class="k3_img">
            <img :src="'http://127.0.0.1:5050/'+url.pimg_url" class="big1">
            <div class="k3_small d-flex" >
                 <div v-for="(item,i) of list" :key="i">
                    <img :src="'http://127.0.0.1:5050/'+item.pimg_url" :data-target="'http://127.0.0.1:5050/'+item.pimg_url" :class="{big2:big}"
                    @click="change">
                </div>
                <!-- <div>
                    <img src="../assets/det-img/d2.png"
                    data-target="../assets/det-img/d2.png"   :class="{big2:big}"
                    >
                </div>
                <div>
                    <img src="../assets/det-img/d3.png" 
                    data-target="../assets/det-img/d3.png" :class="{big2:big}">
                </div>
                <div>
                    <img src="../assets/det-img/d4.png"
                    data-target="../assets/det-img/d4.png"  :class="{big2:big}">
                </div> -->
            </div>
        </div>
        <div class="k3_msg">
            <p>K3 6G+64G 电波蓝</p>
            <p class="colors"><span>【新配色 | 享 3期免息】</span>骁龙710，VOOC 3.0，光感屏幕指纹。<span>K1热卖中 >>></span></p>
            <p>
                <span>￥1499</span>
                <span>￥1599</span>
            </p>
            <div class="line">
                商品支持
                <a href="">花呗分期 3 期免息</a>
                <a href="">以旧换新</a>
            </div>
            <p>颜色</p>
            <section class="spec">
                <div><a href="#" class="starc">星云紫</a><a href="#">晨曦白</a></div>
                <div><a href="#">电波蓝</a><a href="#">秘境黑</a></div>
            </section>
            <p>配置</p>
            <section class="spec">
                <div><a href="#">6G+64G</a><a href="#">8G+128G</a></div>
                <div><a href="#">8G+256G</a></div>
            </section>
            <p>服务</p>
            <section class="spec">
                <div><a href="#">延长保半年 ￥79</a><a href="#">延长保一年</a></div>
                <div><a href="#">屏碎保一年 ￥129</a></div>
            </section>
            <p>加价购</p>
            <section class="plus_area d-flex justify-content-center">
               <div>
                   <a href=""><img src="../assets/plus/plus1.png" alt=""></a>
                   <p>VOOC移动电源</p>
                   <div>
                       <span></span>
                       <span>￥239</span>
                       <span>￥279</span>
                       </div>
                </div>
               <div>
                   <a href=""><img src="../assets/plus/plus2.png" alt=""></a>
                   <p>VOOC移动电源</p>
                   <div>
                       <span></span>
                       <span>￥239</span>
                       <span>￥279</span>
                       </div>
                </div>
               <div>
                   <a href=""><img src="../assets/plus/plus3.png" alt=""></a>
                   <p>VOOC移动电源</p>
                   <div>
                       <span></span>
                       <span>￥239</span>
                       <span>￥279</span>
                       </div>
                </div>
               <div>
                   <a href=""><img src="../assets/plus/plus4.png" alt=""></a>
                   <p>VOOC移动电源</p>
                   <div>
                       <span></span>
                       <span>￥239</span>
                       <span>￥279111</span>
                       </div>



                </div>
            </section>
            <div class="count">
                <p>选择数量</p>
                <section class="count1">
                    <span class="btn">-</span>
                    <input type="text" value="1">
                    <span class="btn">+</span>
                </section>
            </div>
            <div class="shopcar_btn">
                <a href="">加入购物车</a>
                <a href="">立即购买</a>
            </div>
        </div>
        </div>
        
    </div> 
    <div class="speed">
        <div class="cell_spd">
            <img src="../assets/image/detail1/cellcore.png" alt="">
            <img src="../assets/image/detail1/RAM.png" alt="">
            <img src="../assets/image/detail1/gameboost.png" alt="">
        </div>
    </div> 
</div>
    <footer1/>
</div>
</template>

<script>

export default {
    data(){
        return{
           big:true, 
           url:"" ,
           list:[], 
        }
    },
    created(){
        this.load();
        this.load2();
        this.load3();
    },
    methods:{
        load(){
            var url="http://localhost:5050/details/details";
            var obj={pid:1};
            this.axios.get(url,{params:obj}).then(res=>{
                this.list=res.data.data;
                console.log(this.list);
            })
        },
        load2(){
            var url="http://localhost:5050/details/details";
            var obj={pid:1};
            this.axios.get(url,{params:obj}).then(res=>{
                this.url=res.data.data[0];
                
            })
        },
        load3(){
            var url="http://localhost:5050/details/details";
            var obj={pid:2};
            this.axios.get(url,{params:obj}).then(res=>{
                this.url=res.data.data[0];
                console.log(this.url);
            })
        },
        change(){
        if(this.big==true){
            var big2=document.querySelector("img.big2");
            var big1=document.querySelector("img.big1");    
            big1.setAttribute("src",require('../assets/det-img/d2.png'));
            }
         },

    }
}
</script>

<style scoped>
*{margin:0;padding: 0;}
@media(min-width:1440px){
    
    #bor-der{
        border-top:1px solid #ebebeb;
        height:3250px;
    }
    #detail1{
        width: 75%;height:1140px;
        margin:0 auto;
    }
    .t-k3{
        width: 100%;height: 58px;
        border-bottom:1px solid #ebebeb;
    }
    .t-k3 span{
        float:left;
        line-height:58px;
    }
    .t-k3 div{float:right;}
    .t-k3>span{
        font-size: 20px;
        color:#333;
    }
    .views span{
        font-size: 13px;
        color:#666;
    }
    .bot1{display: flex;}
    .colors span{
        color:#f79a47;
    }
    .k3_img{
        width:50%; 
        padding: 50px 0 0 40px;
    }
    .k3_img img{
        width:100%; 
    }
    .k3_img .big1{  
        width:100%;
    }
    .k3_small{
        justify-content: center;
        margin:10px 0 0;

    }
    .k3_small img{
        width: 80px;
        height: 80px;
        margin:0 10px;
        cursor:pointer;
    }
    .k3_msg{ 
        width:50%; 
        padding: 70px 40px 0 68px;
        }
    .k3_msg p{ 
        text-align:left;
        }
    .k3_msg p:first-child{
        font-size:22px;
        margin:0 0 7px;
        color:#333;
    }
    .k3_msg p:nth-child(2){
        font-size:14px;
        margin:0 0 7px;
        color:#666;
    }
    .k3_msg p:nth-child(3){
        font-size:26px;
        margin:0 0 20px;
        color:#333;
    }
    .k3_msg p:nth-child(4){
        font-size:14px;
        margin:0 0 30px;
        color:#333;
    }
    .k3_msg p:nth-child(5){
        font-size:14px;
        margin:30px 0 20px;
        color:#666;
    }
    .line{
        border-bottom:1px solid #ebebeb;
        padding: 0 0 20px;
        text-align: left;
    }
    .line a{
        font-size:14px;
        color:#333;
    }
    .spec div a{
        display: inline-block;
        border:1px solid #ebebeb;
        border-radius:7px;
        margin:3px;
        width: 48%;
        height:42px;
        line-height:42px;
        color: #333;
        text-decoration: none;
        cursor: pointer;
        -webkit-tap-highlight-color: rgba(0,0,0,0);
    }
    .spec .starc{
        border:1px solid  rgba(129,205,177,1);
    }
    .spec div a:hover{
        border:1px solid  rgba(129,205,177,1);
    }
    
    /* 加价区 */
    .plus_area{
        font-size:12px;
        margin:10px 0 0;
        
    }
    .plus_area div{
           margin:0 10px;
    }
    .plus_area img{
            width:66px;
            height:60px;
   
    }
     /* 选择数量 */
    .count{
        border-bottom:1px solid #ebebeb;
        padding-bottom:20px;
    }
    .count p{
        margin:30px 0 20px;
    }
    
    .count1 input{
        height: 30px;
    }
    .count1 span{
        display: inline-block;
        width: 31px;height: 31px;
        border:2px solid #ebebeb;
        line-height:30px;
    }
    /* 付款按钮 */
    .shopcar_btn{
        display:flex;
        margin:20px 0;
        }
    .shopcar_btn a{
        display: inline-block;
        width: 196px;
        height: 60px;
        line-height:60px;
        margin:20px;
        border-radius:5px;
    }
    .shopcar_btn a:first-child{
        color:#666;
        background:#f4f4f4;
    }
    .shopcar_btn a:last-child{
        color:#fff;
        background:#05b570;
    }
/* 图片详情 */
    .speed{
        background:#ebebeb;
    }
    .cell_spd img{
        width:75%;
        margin:0 auto
    }
}
</style>
