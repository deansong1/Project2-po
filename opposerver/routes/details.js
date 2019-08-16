const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/details",(req,res)=>{
  //var pid=req.query.pid;   //{pid:1}
  var phone1="SELECT * FROM oppo_det";  //1 
  pool.query(phone1,(err,result)=>{
          if(err) throw err;
          res.send({code:1,msg:"查询成功",data:result});
        })

})

module.exports=router;