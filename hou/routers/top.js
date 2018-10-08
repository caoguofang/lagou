const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/list",(req,res)=>{
  var pno=parseInt(req.query.pno);
  if(!pno)pno=1;
  var pageSize=parseInt(req.query.pageSize);
  if(!pageSize)pageSize=6;
  var progress=0;
  var obj={code:1};
  var sql="SELECT  count(id) as c FROM company";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    var pageCount=Math.ceil(result[0].c/pageSize);
    obj.pageCount=pageCount;
    progress+=50;
    if(progress==100)
    res.send(obj);
  });

  //分页查询列表
  var offset=(pno-1)*pageSize;
  var sql="SELECT id,cname,c_img,hr_img,hrName,puguang,address FROM company  LIMIT ?,?";
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    obj.msg=result;
    progress+=50;
    if(progress==100){
      res.send(obj);
    }
  });
});

router.get("/swipe_img",(req,res)=>{
  var rows=[
    "http://127.0.0.1:3000/images/gt/lb1.PNG",
    "http://127.0.0.1:3000/images/gt/lb2.PNG",
    "http://127.0.0.1:3000/images/gt/lb1.PNG",
    "http://127.0.0.1:3000/images/gt/lb2.PNG"
  ];
  res.send(rows);
});

module.exports=router;