<template>
<div>
    <header1/>
    <carousel></carousel>
    <div class="main">
        <!-- 横向图 -->
        <div class="phone1">
            <ul class="ph1">
                <li><h3>OPPO K3</h3></li>
                <li><h4>8G+256G，骁龙 710</h4></li>
                <ul class="d-flex justify-content-center">
                    <li :class="{circle:c}" @click="change1"></li>
                    <li :class="{circle:e}" @click="change2"></li>
                </ul>
                <li class="myprice">
                    ￥2290
                </li>
                <li class="pur">
                    <router-link to="/details">
                        立即购买
                    </router-link>
                </li>
            </ul>
        </div>
        <div class="phone2">
            <ul>
                <li><h3>OPPO K3</h3></li>
                <li><h4>8G+256G，骁龙 710</h4></li>
                <li></li>
                <li></li>
                <li></li>
                <li class="myprice">￥2290</li>
                <li class><a href="">立即购买</a></li>
            </ul>
        </div>
        <div class="phone3">
            <ul>
                <li><h3>OPPO K3</h3></li>
                <li><h4>8G+256G，骁龙 710</h4></li>
                <li></li>
                <li></li>
                <li></li>
                <li class="myprice">￥2290</li>
                <li><a href="">立即购买</a></li>
            </ul>
        </div>
    <!-- 中部图 -->
    
        <div class="Mid" v-for="(item,i) of list" :key="i">
            <div>
                <ul>
                    <li class="kun">
                        <div class="kong"></div>
                        <img :src="'http://127.0.0.1:3000/'+item.dimg_url" id="content1"> 
                        <img :src="'http://127.0.0.1:3000/'+item.dimg_url1" id="content2" >
                    </li>
                    <li class="mt-2 ml-4 mb-2">
                        <a href="javascript:;" :class="{img1:con}" @click="cell1"></a>
                        <a href="javascript:;" :class="{img2:cont}" @click="cell2"></a>
                    </li>
                    <li><h4>{{item.dtitle}}</h4></li>
                    <li><h6>{{item.detail}}</h6></li>
                    <li><h5>{{"￥"+item.dprice}}</h5></li>
                </ul>
            </div>
             <div>
                <ul>
                    <li class="kun">
                        <div class="kong"></div>
                        <img :src="'http://127.0.0.1:3000/'+item.dimg_url1" id="content1"> 
                        <img :src="'http://127.0.0.1:3000/'+item.dimg_url" id="content2" >
                    </li>
                    <li class="mt-2 ml-4 mb-2">
                        <a href="javascript:;" :class="{img1:con}" @click="cell1"></a>
                        <a href="javascript:;" :class="{img2:cont}" @click="cell2"></a>
                    </li>
                    <li><h4>{{item.dtitle}}</h4></li>
                    <li><h6>{{item.detail}}</h6></li>
                    <li><h5>{{"￥"+item.dprice}}</h5></li>
                </ul>
            </div>  
           
        <!-- <div class="Mid">
            <div>
                <ul>
                    <li><img src="../assets/image/mid3.jpg" alt="" class="img3"></li>
                    <li class="mt-2 ml-4 mb-2">...</li>
                    <li><h4>A9X</h4></li>
                    <li><h6>4800万像素 | VOOC 3.0</h6></li>
                    <li><h5>￥1999</h5></li>
                </ul>
            </div>
            
        </div>
         <div>
                <ul>
                    <li><img src="../assets/image/mid4.jpg" class="img4"></li>
                    <li class="mt-2 ml-4 mb-2">...</li>
                    <li><h4>K1</h4></li>
                    <li><h6>6G+64G | 屏幕指纹</h6></li>
                    <li><h5>￥1399</h5></li>
                </ul>
        </div>
          -->
    </div>
    <!-- 底部导航栏 -->
    <div id="other">
           <span>配件</span>          
                <ul>
                    <li>推荐</li>
                    <li>耳机</li>
                    <li>数据线/适配器</li>
                    <li>移动电源</li>
                    <li>超值套餐</li>
                    <li>保护壳</li>
                    <li>其它</li>
                </ul>          
    </div>
  <!-- 底部图 -->
        <div class="bottom"  v-if="url.length>0">
            <div class="other1">
                <ul>
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[0].mimg_url" class="pag1">
                        <div class="gaoda">
                        <h3 class="mb-4">{{url[0].mtitle}}</h3>
                        <h4>¥199</h4>
                        </div>
                    </li>
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[1].mimg_url" class="pag2">
                        <h4>{{url[1].mtitle}}</h4>
                        <h5>¥129</h5>
                    </li>
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[2].mimg_url" class="pag3">
                        <h4>{{url[2].mtitle}}</h4>
                        <h5>¥119</h5>
                    </li>
                </ul>
            </div>
           
            <div class="other2">
                <ul class="electric">
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[3].mimg_url" class="pag2">
                        <h4>{{url[3].mtitle}}</h4>
                        <h5>¥129</h5>
                    </li>
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[4].mimg_url" class="pag2">
                        <h4>{{url[4].mtitle}}</h4>
                        <h5>¥79</h5>
                    </li>
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[5].mimg_url" class="pag2">
                        <h4>{{url[5].mtitle}}</h4>
                        <h5>¥69</h5>
                    </li>
                    <li>
                        <img :src="'http://127.0.0.1:3000/'+url[6].mimg_url" class="pag2">
                        <h4>{{url[6].mtitle}}</h4>
                        <h5>¥69</h5>
                    </li>
                </ul>
            </div>
    
    </div>
</div>
    <footer1/>
</div>
</template>


<script>
import carousel from "../components/Carousel.vue";
export default {
    data(){
        return{
            list:[],
            url:[],
            url1:[],
            c:true,
            e:true,
            con:true,
            cont:true,
            i:100,
            
        }
    },
    created(){
        this.load();
    },
    methods:{
        load(){
            var url="http://127.0.0.1:3000/index/in";
            this.axios.get(url).then(res=>{
                this.url=res.data.main;
                this.list=res.data.mid;
                console.log(res.data);
                console.log(this.url);
                console.log(this.list);
            })
        },
        change2(){
            if (this.e==true){
            var phone1=document.querySelector(".phone1");
                phone1.className="phone";
             }
        },
        change1(){
            var phone2=document.querySelector(".phone");
            if (phone2.className=="phone") {
                phone2.className="phone1";
             }    
        },
        cell1(e){
              var a1=e.target.parentNode.previousElementSibling.children[2]
              console.log(a1);
            // document.getElementById("content2");
                a1.style.zIndex=this.i++;    
                },
        cell2(e){
            var a2=e.target.parentNode.previousElementSibling.children[1];
            console.log(a2);
                a2.style.zIndex=this.i++;  
                }
        },
        components:{ carousel },
    
}
</script>

<style>
@import url("../assets/css/index.css");

</style>
