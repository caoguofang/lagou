const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/zhuImg",(req,res)=>{
  var rows=[
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/7.jpg"},
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/1.jpg"},
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/2.jpg"},
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/3.jpg"},
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/4.jpg"},
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/5.jpg"},
    {id:1,img_url:"http://127.0.0.1:3000/images/cd/6.jpg"},
  ];
  res.send(rows);
});

module.exports=router;