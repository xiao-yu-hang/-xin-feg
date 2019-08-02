SET NAEMS UTF8;
DROP DATABASE IF EXISTS xinfeg;
CREATE DATABASE xinfeg CHARST=UTF8;

#留言信息表
USE xinfeg;
CREATE TABLE user_Message(
   uid_Message_id PRIMARY AUTO_INCREMENT,#被留言id
   uid NOT NULL,#谁的好友
   user_Message_personal_id　INT NOT NULL,#留言用户
   user_Message VARCHAR(100)#留言信息
)

INSERT INTO user_Message VALUES(0,123456787,123456789,"加油，努力，奋斗！")
INSERT INTO user_Message VALUES(1,123456786,123456789,"加油，努力，奋斗！")
INSERT INTO user_Message VALUES(2,123456785,123456789,"加油，努力，奋斗！")

#图片仓库
USE xinfeg;
CREATE TABLE img(
  img_id PRIMARY KEY AUTO_INCREMENT,#仓库图片ID
  img_icon VARCHAR(50) NOT NULL,#图片标签
  img_index VARCHAR(100) UNIQUE NOT NULL #图片地址
)
INSERT


#用户主页图片
USE xinfeg;
CREATE TABLE user_home_img(
  img_id PRIMARY KEY AUTO_INCREMENT,#仓库图片ID
  uid INT , #图片拥有者
  user_personal_img() UNIQUE,#用户图片ID
  user_liked_num INT,#点赞人数
  user_img0_introduction VARCHAR(50)#图片介绍
)

#好友列表
USE xinfeg;
CREATE TABLE user_friend{
  user_onfriend_id INT PRIMARY KEY,#这条数据的id
  uid INT NOT NULL,
  user_friend_id  INT UNIQUE,#用户好友iD
  user_status bool,#1在线 0离线 用户状态
  user_index VARCHAR(100) UNIQUE NOT NULL #用户主页地址
}

#用户信息表
USE xinfeg;
CREATE TABLE user_info( 
  uid INT PRIMARY KEY,
  user_introduction VARCHAR(100), #用户介绍
  user_head_img VARCHAR(100) NOT NULL, #用户头像地址
  user_personal_img_num VARCHAR(), #用户拥有图片的仓库ID，格式类似于 1/2/4/9/10
  user_friend_id_num VARCHAR() UNIQUE #用户好友数据ID，格式类似于 1/2/4/9/10
)

#用户登录/注册
USE xinfeg;
CREATE TABLE user_login ( 
  uid INT PRIMARY KEY,
  upwd VARCHAR(16) NOT NULL,
  user_name VARCHAR(10) UNIQUE,
  user_sex BOOL DEFAULT "秘密",#1男 0女
  user_phone CHAR(11) NOT NULL UNIQUE,
  user_email VARCHAR UNIQUE, 
  user_birthday DATA NOT NULL,
  FOREIGN KEY(uid) REFERENCES user_info(uid)
)
INSERT INTO user_login VALUES(123456789,123456789,"管理员",DEFAULT,18160746306,"3159760238@qq.com","2019-8-1");
INSERT INTO user_login VALUES(123456788,123456789,"小花",0,12345678910，"12345678910@qq.com","2019-8-2");
INSERT INTO user_login VALUES(123456787,123456789,"海斌",1,12345678911，"12345678911@qq.com","2019-8-3");
INSERT INTO user_login VALUES(123456786,123456789,"恩伟",1,12345678912，"12345678912@qq.com","2019-8-4");
INSERT INTO user_login VALUES(123456785,123456789,"测试人员",DEFAULT,12345678913，"12345678913@qq.com","2019-8-5");

#临时用户
USE xinfeg;
CREATE TABLE user_temporary(
  uid INT PRIMARY KEY,
  upwd VARCHAR(16) NOT NULL,
  user_temporary_id AUTO_INCREMENT, #用户临时ID
  user_start_time DATATIME,#游客对象创建的时间
  user_sex BOOL DEFAULT "秘密" #1男 0女
)
 
