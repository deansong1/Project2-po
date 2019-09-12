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
        <div class="k3_img"  v-if="url.length>0">
            <img :src="'http://127.0.0.1:3000/'+url[0].pimg_url" class="big1">
            <div class="k3_small d-flex">
                 <div>
                    <img :src="'http://127.0.0.1:3000/'+url[0].pimg_url" :data-target="'http://127.0.0.1:3000/'+url[0].pimg_url" :class="{big2:big}"
                    @click="change">
                </div>
                 <div>
                    <img :src="'http://127.0.0.1:3000/'+url[1].pimg_url"
                    :data-target="'http://127.0.0.1:3000/'+url[1].pimg_url" :class="{big2:big}"
                     @click="change">
                </div>
                <div>
                    <img :src="'http://127.0.0.1:3000/'+url[2].pimg_url"
                    :data-target="'http://127.0.0.1:3000/'+url[2].pimg_url" :class="{big2:big}" @click="change">
                </div>
                <div>
                    <img :src="'http://127.0.0.1:3000/'+url[3].pimg_url"
                    :data-target="'http://127.0.0.1:3000/'+url[3].pimg_url" :class="{big2:big}" @click="change">
                </div> 
            </div>
        </div>
        <div class="k3_msg">
            <p>K3 6G+64G 电波蓝</p>
            <p class="colors"><span>【新配色 | 享 3期免息】</span>骁龙710，VOOC 3.0，光感屏幕指纹。<span>K1热卖中 >>></span></p>
            <p>
                <span>￥1499</span>
                <span class="color1">￥1599</span>
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
            <div class="d-flex discount" v-if="plus1.length>0">
            <div><img src="../assets/image/箭头左.png" @click="move(-1)" :class="{disabled:left}"></div>
            <section class="plus_area d-flex justify-content-between"> 
                <!-- /* v-for="(item,i) of plus1" :key="i" */ -->
            <div class="move1" :style="divStyle">
                 <div>
                   <a href=""><img :src="'http://127.0.0.1:3000/'+plus1[0].jimg_url" alt=""></a>
                   <p v-text="plus1[0].jtitle"></p>
                   <div>
                       <span></span>
                       <span>{{"￥"+plus1[0].jprice}}</span>
                       <span>￥279</span>
                    </div>
                </div>
               <div>
                   <a href=""><img :src="'http://127.0.0.1:3000/'+plus1[1].jimg_url" alt=""></a>
                   <p v-text="plus1[1].jtitle"></p>
                   <div>
                       <span></span>
                       <span>{{"￥"+plus1[1].jprice}}</span>
                       <span>￥279</span>
                    </div>
                </div>
               <div>
                   <a href=""><img :src="'http://127.0.0.1:3000/'+plus1[2].jimg_url" alt=""></a>
                   <p v-text="plus1[2].jtitle" class="text-center"></p>
                   <div>
                       <span></span>
                       <span>{{"￥"+plus1[2].jprice}}</span>
                       <span>￥279</span>
                       </div>
                </div>
               <div>
                   <a href=""><img :src="'http://127.0.0.1:3000/'+plus1[3].jimg_url" alt=""></a>
                   <p v-text="plus1[3].jtitle"></p>
                   <div>
                       <span></span>
                       <span>{{"￥"+plus1[3].jprice}}</span>
                       <span>￥279</span>
                    </div>
               </div>
               <div>
                   <a href=""><img :src="'http://127.0.0.1:3000/'+plus1[4].jimg_url" alt=""></a>
                   <p v-text="plus1[4].jtitle"></p>
                   <div>
                       <span></span>
                       <span v-cloak>{{"￥"+plus1[4].jprice}}</span>
                       <span>￥279</span>
                    </div>
                </div>
                <div>
                   <a href=""><img :src="'http://127.0.0.1:3000/'+plus1[5].jimg_url" alt=""></a>
                   <p v-text="plus1[5].jtitle"></p>
                   <div>
                       <span></span>
                       <span>{{"￥"+plus1[5].jprice}}</span>
                       <span>￥279</span>
                    </div>
               </div>
            </div>   
            </section>
            <div><img src="../assets/image/箭头右.png" @click="move(+1)" :class="{disabled:right}"></div>
            </div>
            <div class="count">
                <p>选择数量</p>
                <section class="count1">
                    <span class="btn" @click="minus">-</span>
                    <input type="text" value="1" class="text-center" v-model="sum">
                    <span class="btn"  @click="plus">+</span>
                </section>
            </div>
            <div class="shopcar_btn">
                <a href="">加入购物车</a>
                <a href="javascript:;" @click="purchase"
                >立即购买</a>
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
           plus1:[],
           list:[],
           sum:1,
           divStyle:{//控制div的样式
               "margin-left":0,//绑定margin-left
                width:0,        //绑定margin-left
                height:"140px",
                "font-size":"12px",
               },
           times:0,  //记录移动的次数 
           }
    },
    computed:{ 
            left(){
                if(this.times==0){
                    
                }
            }, //左边按钮从一开始就禁用
            right(){
                return this.plus1.length<=4||this.times==this.plus1.length-4
            }  //右边按钮从一开始就禁用
           },
    created(){
        //页面加载时，发送一次请求，初始化data的数据
        this.load();
    },
    watch:{  //监控
            times(){
                this.divStyle["margin-left"]
                =-this.times*110+"px"
            },
            plus1(){
                 this.divStyle.width=this.plus1.length*110+"px"    
            },
        },
    methods:{
        move(i){
                this.times+=i;
                if (this.times<0) {
                    this.times=0
                } else if(this.times>this.plus1.length-4){
                    this.times=this.plus1.length-4
                }
        },
        load(){
            var url="details/details";
            this.axios.get(url).then(res=>{
                this.url=res.data.det;
                this.plus1=res.data.plus;
                console.log(this.url);
                console.log(this.plus1);
            })
        },
        change(e){
            var big2=e.target.dataset.target;
            var big1=document.querySelector("img.big1");
            var b=big1.setAttribute("src",big2);
            console.log(big2)
            var c=e.target.dataset;
            console.log(c);  
         },
       
        purchase(){
            var rid=rid;
            var url="Isreg"
            var obj={rid:rid};
            this.axios.get(url,{params:obj}).then(res=>{
                //3.1:如果-1提示用户登录
                if(res.data.code == -1){
                    this.$toast("请先登录");
                }else if(res.data.code == 1){
                    this.$router.push("/");
                }
            })
        },
        minus(e){
        if (this.sum>1) {
                var sum1=this.sum--;
                e.target.value=sum1;
            }
        },
        plus(e){
            if (this.sum<10) {
                var sum1=this.sum++;
                e.target.value=sum1;
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
    .k3_msg span.color1{
        font-size: 17px;
        text-decoration:line-through;
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
    .discount>div{/*垂直居中必须写在被应用元素的父元素上*/
        width: 30px;
        height: 150px; 
        display:flex;
        align-items:center;/*垂直居中*/
        justify-content: center;/*水平居中*/
    }
    .discount>div>img{
        width: 30px;
        height: 30px;
        cursor:pointer;
    }
    section.plus_area{
        width:415px;
        height: 149px;
        font-size:12px;
        margin:10px 60px 0;
        overflow: hidden;
    }
    div.move1{
        display:flex;
    }
    div.move1>div p{
        margin:10px 0 0 !important;
    }
    div.move1>div>div{
        margin:0 !important;
    }
    .plus_area div{
           width: 85px;
           margin:0 10px;
    }
    .plus_area>div>div span:nth-child(3){
        text-decoration: line-through;
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
