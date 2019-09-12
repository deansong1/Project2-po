const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/in",(req,res)=>{
  var data={
        main:[],
        mid:[],
  }
  var sql=`SELECT * FROM oppo_main`;
  pool.query(sql,(err,result)=>{
    if(err){
      res.send(err);
      console.log(err);
    }else{
        data.main=result;
        var sql=`SELECT * FROM oppo_mid`;
        pool.query(sql,(err,result)=>{
          if(err){
            res.send(err);
            console.log(err);
            if (result.length==0) {
              res.send({code:0,msg:"查询失败"});
            }
          }else{
            data.mid=result;
            res.send(data);
          }
        })
      }
  })
})

module.exports=router;