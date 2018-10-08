const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/list",(req,res)=>{
  var pno=parseInt(req.query.pno);
  if(!pno){pno=1}
  var pageSize=parseInt(req.query.pageSize);
  if(!pageSize)pageSize=6;
  var progress=0;
  var obj={code:1};
  var sql="SELECT  count(id) as c FROM zhilist";
  //查询总数
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var pageCount=Math.ceil(result[0].c/pageSize);
    obj.pageCount=pageCount;
    progress+=50;
    if(progress==100){
      res.send(obj);
    }
  });
  //分页查询
  var offset=(pno-1)*pageSize;
  var sql="SELECT z.id,z.job,z.company,z.c_require,z.salary,z.r_time,z.img_url,c.address";
  sql+="  FROM  zhilist z INNER JOIN company c ON z.cid=c.id LIMIT ?,?";
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    obj.msg=result;
    progress+=50;
    if(progress==100){
      res.send(obj);
    }
  });
});


module.exports=router;

