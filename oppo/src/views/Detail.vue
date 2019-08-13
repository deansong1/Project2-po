<template>
<div id="msg">
    <div id="detail1">
        <div class="t-k3">
            <span>k3</span>
            <div>
                <span class="mr-4">概览</span>
                <span class="mr-4">技术规格</span>
            </div>
        </div>
        <div class="bot1">
        <div class="k3_img">
            <img src="../assets/image/dtl.png" class="big1">
            <div class="k3_small d-flex">
                <div>
                    <img src="../assets/det-img/d1.png" alt="">
                </div>
                <div>
                    <img src="../assets/det-img/d2.png" alt="">
                </div>
                <div>
                    <img src="../assets/det-img/d3.png" alt="">
                </div>
                <div>
                    <img src="../assets/det-img/d4.png" alt="">
                </div>
            </div>
        </div>
        <div class="k3_msg">
            <p>K3 6G+64G 电波蓝</p>
            <p>【新配色 | 享 3期免息】骁龙710，VOOC 3.0，光感屏幕指纹。K1热卖中 >>></p>
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
                <div><a href="#">星云紫</a><a href="#">晨曦白</a></div>
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
                       <span>￥279</span>
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
        <div class="cell_spd">
            <img src="../assets/image/detail1/cellcore.png" alt="">
            <img src="../assets/image/detail1/cellcore.png" alt="">
            <img src="../assets/image/detail1/cellcore.png" alt="">
            </div>
    </div>  
</div>
</template>

<script>

export default {
  
}
</script>

<style scoped>
    *{margin:0;padding: 0;}
    #detail1{
        width: 80%;height:1440px;
        margin:0 auto;
        border:1px solid #ebebeb;
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
    .bot1{display: flex;}
    .k3_img{
        
        width:50%; 
        padding: 60px 0 0 40px;
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
    }
    .k3_msg{ 
        width:50%; 
        padding: 80px 40px 0 68px;
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
.cell_spd img{
    width:100%;
}
</style>
