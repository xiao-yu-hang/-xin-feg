Drop database if exists xinfeg;
set names UTF8;
create database xinfeg charset=UTF8;

use xinfeg;
create table header_img(
  header_img_icon char(4) primary key,
  header_img_index varchar(100) not null unique
);
 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 
INSERT INTO  header_img VALUES("",""); 

create table user_friend(
  user_name varchar(16) not null,
  friend_id varchar(16) not null
);

INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("",""); 
INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_friend VALUES("","");

create table img(
  img_id INT primary key auto_increment,
  img_index varchar(100) not null unique,
  user_name varchar(16),
  user_liked_num int,
  img_icon varchar(20)not null,
  img_introduct varchar(100)
);

INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");
INSERT INTO  img VALUES(0,"","",,"","");

create table user_info(
  user_name varchar(16) primary key,
  user_upwd varchar(16) not null,
  user_sex bool,# 0：男 1：女
  user_introduce varchar(100),
  header_img_icon char(10) not null,
  user_phone tinyInt(11) unique,
  user_email varchar(20) unique,
  user_birthday date,
  user_city varchar(20),
  user_startTime datetime,
  foreign key (header_img_icon) references header_img(header_img_icon)
);

INSERT INTO  user_info VALUES("","",,"","",,"","","","");INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_info VALUES("","",,"","",,"","","","");INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_info VALUES("","",,"","",,"","","","");INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_info VALUES("","",,"","",,"","","","");INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_info VALUES("","",,"","",,"","","","");INSERT INTO  user_friend VALUES("","");
INSERT INTO  user_info VALUES("","",,"","",,"","","","");INSERT INTO  user_friend VALUES("","");

create table user_msg(
  user_name varchar(16) not null,
  msg_text varchar(100) not null,
  msg_time datetime not null，
  used_name varchar(16) not null
);


INSERT into user_msg VALUES ("","","","");
INSERT into user_msg VALUES ("","","","");
INSERT into user_msg VALUES ("","","","");
INSERT into user_msg VALUES ("","","","");
INSERT into user_msg VALUES ("","","","");
INSERT into user_msg VALUES ("","","","");
INSERT into user_msg VALUES ("","","","");