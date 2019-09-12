const express=require("express")
const router=express.Router();
const pool=require("../pool");

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/reg",(req,res)=>{
  var uname=req.query.uname;
  var upwd=req.query.upwd;
  var user_name=req.query.user_name;
  var sql="INSERT INTO oppo_user VALUES(NULL,?,md5(?),?)";  //1 
  pool.query(sql,[uname,upwd,user_name],(err,result)=>{
          if(err) throw err;
          if (result.length==0) {
              res.send({code:-1,msg:"注册失败"});
          } else {
              // console.log(result[0].uid);
              res.send({code:1,msg:"注册成功",data:result})
              console.log(result);
          }
        })

})

module.exports=router;