const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("",(req,res)=>{
  //获得当前用户的id值
  // var cid=req.query.cid;
  // var ctitle=req.query.ctitle;
  var cimg_url=req.query.cimg_url;
  var sql="select cimg_url from oppo_carousel"
  pool.query(sql,[cimg_url],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
  

})

module.exports=router;