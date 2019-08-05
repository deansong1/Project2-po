<template>

    <header id="headline">
      <div class="left"></div>
    <div class="head">
        <span>
            <a href="">oppo</a>
            <div></div>
        </span>
        <div class="head_mid">
            <ul>
                <li>
                    <a href="javascript:;">Find系列</a>
                    <ul class="navishow">
                        <li>
                            <a href="">
                            <img src="image/1.png" alt="">
                            <h3>Find x</h3>
                            </a>
                        </li>
                        <li><a href=""><img src="image/2.png" alt=""><h3>Find 超闪版</h3></a></li>
                        <li><a href=""><img src="image/3.png" alt=""><h3>Find 兰博基尼版</h3></a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Reno系列</a>
                    <ul class="navishow">
                        <li>
                            <a href="">
                            <img src="image/1.png" alt="">
                            <h3>Reno 10</h3>
                            </a>
                        </li>
                        <li><a href=""><img src="image/2.png" alt=""><h3>Reno z</h3></a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="">R系列</a>
                    <ul class="navishow">
                            <li>
                                <a href="">
                                <img src="image/1.png" alt="">
                                <h3>R 17</h3>
                                </a>
                            </li>
                            <li><a href=""><img src="image/2.png" alt=""><h3>R17 PRO</h3></a></li>
                            <li><a href=""><img src="image/3.png" alt=""><h3>R15 X</h3></a></li>
                        </ul>
                </li>
                <li>
                    <a href="">A系列</a>
                    <ul class="navishow">
                            <li><a href=""><img src="image/2.png" alt=""><h3>Find 超闪版</h3></a></li>
                            <li><a href=""><img src="image/3.png" alt=""><h3>Find 兰博基尼版</h3></a></li>
                        </ul>
                </li>
                <li>
                    <a href="">k系列</a>
                    <ul class="navishow">
                            <li>
                                <a href="">
                                <img src="image/1.png" alt="">
                                <h3>K3</h3>
                                </a>
                            </li>
                            <li><a href=""><img src="image/2.png" alt=""><h3>K1</h3></a></li>
                            <li><a href=""><img src="image/3.png" alt=""><h3>Find M</h3></a></li>
                            <li><a href=""><img src="image/3.png" alt=""><h3>Find 兰博基尼版</h3></a></li>
                        </ul>
                </li>
                <li>
                    <a href="">配件</a>
                    <ul class="navishow">
                            <li>
                                <a href="">
                                <img src="image/1.png" alt="">
                                <h3>Find x</h3>
                                </a>
                            </li>
                            <li><a href=""><img src="image/2.png" alt=""><h3>Find 超闪版</h3></a></li>
                            <li><a href=""><img src="image/3.png" alt=""><h3>Find 兰博基尼版</h3></a></li>
                            <li><a href=""><img src="image/3.png" alt=""><h3>Find</h3></a></li>
                            <li>
                                    <a href="">
                                    <img src="image/1.png" alt="">
                                    <h3>Find x</h3>
                                    </a>
                            </li>
                        </ul>
                </li>
                <li><a href="">服务</a></li>
                <li><a href="">商城</a></li>
            </ul>
            <span class="mark">
                    <a href="">oppo</a>
            </span>
        </div>
        <div class="r_head">
            <a href="javascript:;" @click="trigger"></a>
            <ul class="dropdown" v-show="Isshow==false">
                <li><a href="javascript:;">购物车</a></li>
                <hr>
                <li><a href="javascript:;">个人中心</a></li>
                <hr>
                <li><a href="javascript:;">登录</a></li>
            </ul>
        </div>
    </div>
    <div class="right"></div>
    </header>
</template>

<script>

export default {
    data(){
        return{
            Isshow:true
        }
    },
    methods:{
        trigger(){
            if (this.Isshow==true) {
                 this.Isshow=false;
            } else {
                this.Isshow=true;
            }
           
        }
    }
}
</script>
<style>
@import url("../assets/css/header.css");

</style>
