<template>
    <div class="car">
      <mt-swipe :auto="4000">
        <mt-swipe-item>1</mt-swipe-item>
        <mt-swipe-item>2</mt-swipe-item>
        <mt-swipe-item>3</mt-swipe-item>
      </mt-swipe>   
    </div>
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
<style scoped>
.car{
  height: 500px;
}
.car img{
  width: 100%;
  height: 500px;
}
</style>
