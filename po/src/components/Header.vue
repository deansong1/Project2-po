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
            <a data-trigger="r_head" href="javascript:;"></a>
            <ul class="dropdown">
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
<script src="../components/jquery-1.11.3.js"></script>
<script>$("[data-trigger=r_head]").click(function(e){
    e.preventDefault();
    var $btn=$(this);
    var $ul=$btn.next();
    if ($ul.is(":hidden")) {
        $ul.show();
    } else {
        $ul.hide();
    }
})</script>
<script>

export default {
  
}
</script>
<style>
@import url("../assets/css/header.css");

</style>
