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
                <div><a href="#">星云紫</a><a href="#">星云紫</a></div>
                <div><a href="#">星云紫</a><a href="#">星云紫</a></div>
            </section>
            <p>颜色</p>
            <section class="spec">
                <div><a href="#">星云紫</a><a href="#">星云紫</a></div>
                <div><a href="#">星云紫</a></div>
            </section>
            <p>颜色</p>
            <section class="spec">
                <div><a href="#">星云紫</a><a href="#">星云紫</a></div>
                <div><a href="#">星云紫</a></div>
            </section>
            <div>加价购</div>
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
            <p>选择数量</p>
            <section>
                <input type="text" value="1">
            </section>
        </div>
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
    .line{
        border-bottom:1px solid #ebebeb;
        padding: 0 0 20px;
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
    .plus_area img{
            width:66px;
            height:60px;
    }
</style>
