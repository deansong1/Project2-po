<template>
    <div class="car">
      <mt-swipe :auto="6000" v-if="url.length>0">
        <mt-swipe-item><img :src="'http://127.0.0.1:3000/'+url[0].cimg_url" alt=""></mt-swipe-item>
        <mt-swipe-item><img :src="'http://127.0.0.1:3000/'+url[1].cimg_url" alt=""></mt-swipe-item>
        <mt-swipe-item><img :src="'http://127.0.0.1:3000/'+url[2].cimg_url" alt=""></mt-swipe-item>
        <mt-swipe-item><img :src="'http://127.0.0.1:3000/'+url[3].cimg_url" alt=""></mt-swipe-item>
        <mt-swipe-item><img :src="'http://127.0.0.1:3000/'+url[4].cimg_url" alt=""></mt-swipe-item>
      </mt-swipe>   
    </div>
</template>

<script>

export default {
    data(){
        return{
            list:[],
            url:[],
        }
    },
    created(){
      this.load();
    },
    methods:{    
     load(){
       var url="carl";
       this.axios.get(url).then(res=>{
          this.url=res.data.data;
          console.log(this.url);
       })
     }
    }
  
}
</script>

<style scoped>
.car{
  height: 700px;
}
.car img{
  width: 100%;
}
</style>
