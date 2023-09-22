const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("",(req,res)=>{
  //获得当前用户的id值
  var rid=req.session.rid;
  console.log(rid);
  //如果当前用户未登录
  if (!rid) {
    //返回错误信息
    res.send({code:-1,msg:"未登录"});
    return;
  } else{
    res.send({code:1,msg:"已登录"});
    return;
  }
  

})

module.exports=router;