const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/details",(req,res)=>{
  var data={
    det:[],
    plus:[],
  }
  //var pid=req.query.pid;   //{pid:1}
  var phone1='SELECT * FROM oppo_det';  //1 
  pool.query(phone1,(err,result)=>{
          if(err){
            res.send(err);
            console.log(err);
          }else{
            data.det=result;
            var sql="SELECT * FROM oppo_plus";
            pool.query(sql,(err,result)=>{
              if(err){
                res.send(err);
                console.log(err);
                if (result.length==0) {
                  res.send({code:0,msg:"查询失败"});
                }
              }else{ 
                  // res.send({code:1,msg:"查询成功"});
                  data.plus=result;
                  res.send(data);
                  // console.log(data);
                }
             
            })
          }
         
        })

})

module.exports=router;