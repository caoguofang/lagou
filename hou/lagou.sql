#设置连接的字符编码
SET NAMES UTF8;
#删除数据库
DROP DATABASE IF EXISTS lagou;
#创建数据库
CREATE DATABASE lagou CHARSET=UTF8;
#使用数据库
USE lagou;
#创建数据表
#创建数据表一  客户信息表user
CREATE TABLE luser(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(50),
    tel VARCHAR(50)
);
INSERT INTO luser VALUES(NULL,"曹国防","123456",18810794825);


#创建数据表二 职位列表
CREATE TABLE zhiList(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT,
    job VARCHAR(255),
    company VARCHAR(255),
    c_require VARCHAR(255),
    salary DECIMAL(10,2),
    r_time VARCHAR(50),
    img_url VARCHAR(255)
);

INSERT INTO zhiList VALUES(NULL,1,"web前端工程师","人人行(借贷宝)","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/jie.png");
INSERT INTO zhiList VALUES(NULL,2,"web前端工程师","新东方","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/dong.png");
INSERT INTO zhiList VALUES(NULL,3,"web前端工程师","跟谁学","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/gen.png");
INSERT INTO zhiList VALUES(NULL,4,"web前端工程师","掌阅","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/yue.png");
INSERT INTO zhiList VALUES(NULL,2,"web前端工程师","新东方","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/dong.png");
INSERT INTO zhiList VALUES(NULL,1,"web前端工程师","人人行(借贷宝)","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/jie.png");
INSERT INTO zhiList VALUES(NULL,1,"web前端工程师","人人行(借贷宝)","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/jie.png");
INSERT INTO zhiList VALUES(NULL,2,"web前端工程师","新东方","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/dong.png");
INSERT INTO zhiList VALUES(NULL,3,"web前端工程师","跟谁学","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/gen.png");
INSERT INTO zhiList VALUES(NULL,4,"web前端工程师","掌阅","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/yue.png");
INSERT INTO zhiList VALUES(NULL,2,"web前端工程师","新东方","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/dong.png");
INSERT INTO zhiList VALUES(NULL,1,"web前端工程师","人人行(借贷宝)","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/jie.png");
INSERT INTO zhiList VALUES(NULL,1,"web前端工程师","人人行(借贷宝)","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/jie.png");
INSERT INTO zhiList VALUES(NULL,2,"web前端工程师","新东方","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/dong.png");
INSERT INTO zhiList VALUES(NULL,3,"web前端工程师","跟谁学","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/gen.png");
INSERT INTO zhiList VALUES(NULL,4,"web前端工程师","掌阅","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/yue.png");
INSERT INTO zhiList VALUES(NULL,2,"web前端工程师","新东方","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/dong.png");
INSERT INTO zhiList VALUES(NULL,1,"web前端工程师","人人行(借贷宝)","1-3年|本科",12000,"9:10","http://127.0.0.1:3000/images/gt/jie.png");

#创建数据表三 职位详表
CREATE TABLE job_details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    zid INT,
    job_tempt VARCHAR(255), #职位诱惑
    company_jian VARCHAR(255),
    job_miao VARCHAR(255),
    job_fabuzhe VARCHAR(255)
);
INSERT INTO job_details VALUES(NULL,1,"技术氛围好，福利好，不加班，急需2位","D轮及以上/500-2000人/移动互联网,文化娱乐","速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好","hexiaomiao");
INSERT INTO job_details VALUES(NULL,2,"技术氛围好，福利好，不加班，急需2位","D轮及以上/500-2000人/移动互联网,文化娱乐","速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好","hexiaomiao");
INSERT INTO job_details VALUES(NULL,3,"技术氛围好，福利好，不加班，急需2位","D轮及以上/500-2000人/移动互联网,文化娱乐","速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好","hexiaomiao");
INSERT INTO job_details VALUES(NULL,4,"技术氛围好，福利好，不加班，急需2位","D轮及以上/500-2000人/移动互联网,文化娱乐","速度快两个的法兰克福到了还款的法国佬复活甲发了个客户分类美好","hexiaomiao");
#创建数据表四 公司排行榜列表
CREATE TABLE company(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(50),
    c_img VARCHAR(255),
    hr_img VARCHAR(255),
    hrName VARCHAR(50),
    puguang VARCHAR(10),
    address VARCHAR(255)
);
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"涂鸦王国","http://127.0.0.1:3000/images/gt/ty.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"老爸评测","http://127.0.0.1:3000/images/gt/lb.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
INSERT INTO company VALUES(NULL,"Rokid","http://127.0.0.1:3000/images/gt/Rokid.png","http://127.0.0.1:3000/images/gt/avatar.png","ddkgd","4151","北京");
#创建数据表五 公司详情表
CREATE TABLE comD(
    id INT PRIMARY KEY AUTO_INCREMENT,
    c_jian VARCHAR(255),
    c_jie VARCHAR(255),
    chan VARCHAR(255)
);
INSERT INTO comD VALUES(NULL,"D轮及以上/500-2000人/移动互联网,文化娱乐",
"涂鸦王国发给客服的机构开发的那块地方公开发到你放得开股份都很难过法规回复等级好高辅导机构合计得分那好吧地方看过好地方规划方大化工积分还不够复旦复华改变方向从第几个看过吧比较好内存卡","http://127.0.0.1:3000/images/cd/0.jpg");
#创建数据表 公司详情表主页轮播图表
CREATE TABLE c_swipe(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255)
);
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/1.jpg");
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/2.jpg");
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/3.jpg");
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/4.jpg");
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/5.jpg");
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/6.jpg");
INSERT INTO c_swipe VALUES(NULL,"http://127.0.0.1:3000/images/cd/7.jpg");