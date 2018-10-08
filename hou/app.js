const express = require('express');
const bodyParser = require('body-parser');
var zwList=require("./routers/zwList");
var top=require("./routers/top");
var imgList=require("./routers/imgList");
var user =require("./routers/user");
var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use("/zwList",zwList);
app.use("/top",top);
app.use("/imgList",imgList);
app.use("/user",user);
console.log("服务器已启动");