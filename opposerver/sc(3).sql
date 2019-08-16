SET NAMES UTF8;
#丢弃数据库,如果存在
DROP DATABASE IF EXISTS oppo;
#创建数据库,设置存储的编码
CREATE DATABASE oppo CHARSET=UTF8;
#进入数据库
USE oppo;
/**用户信息**/
CREATE TABLE oppo_user(
   uid INT PRIMARY KEY AUTO_INCREMENT, #用户ID
   uname VARCHAR(32),                  #用户名
   upwd VARCHAR(32),		       #用户密码
   user_name VARCHAR(32)	       #网名
);
/**用户登录详情表**/
Insert into oppo_user values(NULL,"zs",md5("123456"),"张三");
Insert into oppo_user values(NULL,"ls",md5("123456"),"李四");


/**商品详情页图片**/
CREATE TABLE oppo_det(
   pid INT PRIMARY KEY AUTO_INCREMENT, #商品ID
   ptitle VARCHAR(32),                 #商品标题
   pimg VARCHAR(64),                   #商品图片
   pimg_url VARCHAR(100)             #图片路径
   );


-- /**菜谱大全分类表**/
INSERT INTO oppo_det VALUES(NULL,"K3-1","正面","det-img/dtl.png");
INSERT INTO oppo_det VALUES(NULL,"K3-2","反面","det-img/d2.png");
INSERT INTO oppo_det VALUES(NULL,"K3-3","左面","det-img/d3.png");
INSERT INTO oppo_det VALUES(NULL,"K3-4","斜面","det-img/d4.png");
-- INSERT INTO sc_type VALUES(NULL,"鱼类");
-- INSERT INTO sc_type VALUES(NULL,"其他水产");
-- INSERT INTO sc_type VALUES(NULL,"根茎蔬菜");
-- INSERT INTO sc_type VALUES(NULL,"茎叶蔬菜");
-- INSERT INTO sc_type VALUES(NULL,"果实蔬菜");
-- INSERT INTO sc_type VALUES(NULL,"瓜类");
-- INSERT INTO sc_type VALUES(NULL,"菌类");
-- INSERT INTO sc_type VALUES(NULL,"野味蔬菜");
-- INSERT INTO sc_type VALUES(NULL,"干果");
-- INSERT INTO sc_type VALUES(NULL,"豆类");
-- INSERT INTO sc_type VALUES(NULL,"面类");
-- INSERT INTO sc_type VALUES(NULL,"米类");