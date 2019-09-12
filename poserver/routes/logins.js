const express=require("express")
const router=express.Router();
const pool=require("../pool");

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("",(req,res)=>{
  var uname=req.query.uname;   
  var upwd=req.query.upwd; 
  var sql="SELECT uid FROM oppo_user WHERE uname=? AND upwd=md5(?)";  //1 
  pool.query(sql,[uname,upwd],(err,result)=>{
          if(err) throw err;
          if (result.length==0) {
              res.send({code:-1,msg:"用户名或密码错误"});
          } else {
              // console.log(result[0].uid);
              req.session.rid=result[0].uid;
              console.log(req.session);
              res.send({code:1,msg:"登录成功",data:result})
              
          }
        })

})

module.exports=router;