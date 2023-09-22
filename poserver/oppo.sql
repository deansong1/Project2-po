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
   pimg_url VARCHAR(100)               #图片路径
   );

-- /**详情页内容**/
INSERT INTO oppo_det VALUES(NULL,"K3-1","正面","det-img/dtl.png");
INSERT INTO oppo_det VALUES(NULL,"K3-2","反面","det-img/d2.png");
INSERT INTO oppo_det VALUES(NULL,"K3-3","左面","det-img/d3.png");
INSERT INTO oppo_det VALUES(NULL,"K3-4","斜面","det-img/d4.png");

/**主页图片**/
CREATE TABLE oppo_main(
   mid INT PRIMARY KEY AUTO_INCREMENT, #商品ID
   mtitle VARCHAR(32),                 #商品标题
   mimg_url VARCHAR(100)               #图片路径
   );
/**主页内容**/
INSERT INTO oppo_main VALUES(NULL,"高达闪充移动电源","image/配件区/gaoda.jpg");
INSERT INTO oppo_main VALUES(NULL,"入耳式耳机","image/配件区/ear.png");
INSERT INTO oppo_main VALUES(NULL,"三脚架蓝牙自拍神器","image/配件区/shelf.png");
INSERT INTO oppo_main VALUES(NULL,"超闪车载充电器","image/配件区/charge.png");
INSERT INTO oppo_main VALUES(NULL,"半入耳式耳机","image/配件区/earpods.png");
INSERT INTO oppo_main VALUES(NULL,"闪充电源适配器","image/配件区/electric.png");
INSERT INTO oppo_main VALUES(NULL,"闪充usb数据线","image/配件区/usb.png");

#主页中部栏图片
CREATE TABLE oppo_mid(
 did INT PRIMARY KEY AUTO_INCREMENT, #商品ID
 dtitle VARCHAR(32),                #商品标题
 detail VARCHAR(62),                #商品详情
 dprice DECIMAL(4,0),                #商品价格
 dimg_url VARCHAR(100),               #图片路径 
 dimg_url1 VARCHAR(100)               #图片路径 
);

INSERT INTO oppo_mid VALUES(NULL,"Reno z","8G+128G|支持NFC","2299","image/mid1.jpg","image/mid4.jpg");
INSERT INTO oppo_mid VALUES(NULL,"A9","6G+128G丨4020mAh大电池","1699","image/mid2.jpg","image/mid3.jpg");
INSERT INTO oppo_mid VALUES(NULL,"A9X","4800万像素 | VOOC 3.0","1999","image/mid3.jpg","image/mid2.jpg");
INSERT INTO oppo_mid VALUES(NULL,"K1","6G+64G | 屏幕指纹","1399","image/mid4.jpg","image/mid1.jpg");

#主页中部栏图片
CREATE TABLE oppo_carousel(
 cid INT PRIMARY KEY AUTO_INCREMENT,  #商品ID
 ctitle VARCHAR(32),                  #商品标题
 cimg_url VARCHAR(100)              #图片路径 
);
INSERT INTO oppo_carousel VALUES(NULL,"Reno z","lunbo/lunbo1.jpg");
INSERT INTO oppo_carousel VALUES(NULL,"A9","lunbo/lunbo2.jpg");
INSERT INTO oppo_carousel VALUES(NULL,"A9X","lunbo/lunbo3.jpg");
INSERT INTO oppo_carousel VALUES(NULL,"K1","lunbo/lunbo4.jpg");
INSERT INTO oppo_carousel VALUES(NULL,"K2","lunbo/lunbo5.jpg");

/**加价购图片**/
CREATE TABLE oppo_plus(
   jid INT PRIMARY KEY AUTO_INCREMENT, #商品ID
   jimg_url VARCHAR(100),               #图片路径
   jtitle VARCHAR(32),                 #商品标题
   jprice DECIMAL(3,0)                  #商品价格
   );
 /**加价购内容**/
INSERT INTO oppo_plus VALUES(NULL,"plus/plus1.png","VOOC移动电源",239);
INSERT INTO oppo_plus VALUES(NULL,"plus/plus1.png","VOOC移动电源",239);
INSERT INTO oppo_plus VALUES(NULL,"plus/plus2.png","USB插头",45);
INSERT INTO oppo_plus VALUES(NULL,"plus/plus3.png","O-Fresh耳机",89);
INSERT INTO oppo_plus VALUES(NULL,"plus/plus4.png","VOOC快充口",45);
INSERT INTO oppo_plus VALUES(NULL,"plus/plus3.png","O-Fresh耳机",89);