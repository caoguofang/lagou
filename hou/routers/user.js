const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/register",(req,res)=>{
    var tel = req.query.tel;
    var upwd = req.query.upwd;
    var sql="INSERT INTO luser VALUES(NULL,?,?)";
    pool.query(sql,[upwd,tel],(err,result)=>{
        if(err)throw err;
        res.send(result);
    });
});

module.exports=router;