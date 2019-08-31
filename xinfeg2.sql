Drop database if exists xinfeg;
set names UTF8;
create database xinfeg charset=UTF8;

use xinfeg;
create table header_img(
  header_img_icon char(10) primary key,
  header_img_index varchar(100) not null unique
);
 
INSERT INTO  header_img VALUES("大头兵","https://pic.superbed.cn/item/5d5210cb451253d1786401c5.gif"); 
INSERT INTO  header_img VALUES("淑女","https://pic.superbed.cn/item/5d5210cb451253d1786401c7.jpg"); 
INSERT INTO  header_img VALUES("黄发少年","https://pic.superbed.cn/item/5d5210cb451253d1786401c9.jpg"); 
INSERT INTO  header_img VALUES("山寨大雄","https://pic.superbed.cn/item/5d5210cb451253d1786401cb.jpg"); 
INSERT INTO  header_img VALUES("棕发","https://pic.superbed.cn/item/5d5210cb451253d1786401cd.jpg"); 
INSERT INTO  header_img VALUES("紫发女孩","https://pic.superbed.cn/item/5d5210d3451253d1786402cd.jpg"); 
INSERT INTO  header_img VALUES("熊仔","https://pic.superbed.cn/item/5d5210d3451253d1786402d0.jpg"); 
INSERT INTO  header_img VALUES("小帅","https://pic.superbed.cn/item/5d5210d3451253d1786402d2.jpg");  
INSERT INTO  header_img VALUES("小女孩","https://pic.superbed.cn/item/5d5210d3451253d1786402d4.jpg"); 
INSERT INTO  header_img VALUES("兔砸儿","https://pic.superbed.cn/item/5d5210d3451253d1786402d6.jpg"); 
INSERT INTO  header_img VALUES("非主流男孩","https://pic.superbed.cn/item/5d5210db451253d1786403c2.jpg"); 
INSERT INTO  header_img VALUES("绿发女孩","https://pic.superbed.cn/item/5d5210db451253d1786403c4.jpg"); 
INSERT INTO  header_img VALUES("笑脸女孩","https://pic.superbed.cn/item/5d5210db451253d1786403c6.jpg"); 
INSERT INTO  header_img VALUES("红发女孩","https://pic.superbed.cn/item/5d5210db451253d1786403c8.jpg"); 
INSERT INTO  header_img VALUES("气质女孩","https://pic.superbed.cn/item/5d5210db451253d1786403ca.jpg"); 
INSERT INTO  header_img VALUES("蓝兔砸","https://pic.superbed.cn/item/5d5210e4451253d1786404bd.jpg"); 
INSERT INTO  header_img VALUES("猫","https://pic.superbed.cn/item/5d5210e4451253d1786404bf.jpg"); 
INSERT INTO  header_img VALUES("唐唐","https://pic.superbed.cn/item/5d5210e4451253d1786404c1.jpg"); 
INSERT INTO  header_img VALUES("靓仔","https://pic.superbed.cn/item/5d5210e4451253d1786404c3.jpg"); 
INSERT INTO  header_img VALUES("麦兜","https://pic.superbed.cn/item/5d5210e4451253d1786404c5.jpg"); 

create table user_friend(
  user_name varchar(16) not null,
  friend_id varchar(16) not null
);

INSERT INTO  user_friend VALUES("xiaoyuhang","xiaohua");
 
INSERT INTO  user_friend VALUES("xiaoyuhang","enwei"); 

INSERT INTO  user_friend VALUES("xiaoyuhang","haibin"); 

INSERT INTO  user_friend VALUES("xiaohua","xiaoyuhang");
 
INSERT INTO  user_friend VALUES("xiaohua","enwei"); 

INSERT INTO  user_friend VALUES("xiaohua","haibin");
 
INSERT INTO  user_friend VALUES("enwei","xiaoyuhang");
 
INSERT INTO  user_friend VALUES("emwei","xiaohua"); 

INSERT INTO  user_friend VALUES("enwei","haibin");

INSERT INTO  user_friend VALUES("haibin","xiaoyuhang");
 
INSERT INTO  user_friend VALUES("haibin","enwei");

INSERT INTO  user_friend VALUES("haibin","xiaohua"); 

create table img(
  img_id INT primary key auto_increment,
  img_index varchar(100) not null unique,
  user_name varchar(16) default null,
  user_liked_num int default 0,
  img_icon varchar(20) not null,
  img_introduct varchar(100) default null
);

INSERT INTO  img VALUES(0,"https://pic.superbed.cn/item/5d520d0b451253d17863bb8b.jpg",default,default,"海洋鲸鱼大海夕阳风景动物意境","巨大的深海蓝鲸跃出大海，夕阳的红色与大海的蓝色辉映。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d0b451253d17863bb8d.jpg",default,default,"猫咪可爱宠物萌宠小动物","暖暖的阳光，清凉的威风，小猫们结伴踏青。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d0b451253d17863bb8f.jpg",default,default,"豹子动物暗黑冷酷","你是否从我眼中看到嗜血的渴望？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d0b451253d17863bb91.jpg",default,default,"小动物狗狗萌宠可爱","不吃骨头，我要睡觉。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d2a451253d17863bda7.jpg",default,default,"猫咪可爱宠物萌宠小动物","你敢直视我的眼睛吗？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d2a451253d17863bda9.jpg",default,default,"唯美淡雅清新可爱小动物萌宠","你要看我的照片吗？等一下马上就拍好了。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d2a451253d17863bdab.jpg",default,default,"动物骏马大海奔跑","随风奔跑自由式方向。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d2a451253d17863bdae.jpg",default,default,"小动物狗狗萌宠可爱奔跑","主人，等等我。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d2a451253d17863bdb1.jpg",default,default,"猫咪可爱宠物萌宠小动物","我超凶的，喵。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d42451253d17863bf66.jpg",default,default,"猫咪可爱宠物萌宠小动物","深蓝色的不是大海，是我在凝望着你。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d42451253d17863bf68.jpg",default,default,"大熊猫可爱宠物萌宠小动物","一出生就过着退休的生活。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d42451253d17863bf6a.jpg",default,default,"猫咪可爱宠物萌宠小动物","希望主人早点回来。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d42451253d17863bf6c.jpg",default,default,"小动物狗狗萌宠宠物可爱","一步两步...摩擦。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d42451253d17863bf6e.jpg",default,default,"猫咪可爱宠物萌宠小动物","双胞胎，双倍的可爱。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d57451253d17863c0d6.jpg",default,default,"海象可爱宠物萌宠小动物","快扶我一把，吃太饱啦。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d57451253d17863c0d8.jpg",default,default,"小动物狗狗萌宠宠物可爱","再给我一个骨头吧？最后一个。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d57451253d17863c0da.jpg",default,default,"小动物梅花鹿萌宠宠物可爱自然","我是梅花鹿，不是瑶。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d57451253d17863c0dc.jpg",default,default,"小动物狗狗萌宠宠物可爱","我可不是玩具。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d57451253d17863c0de.jpg",default,default,"小动物仓鼠萌宠宠物可爱","主人呢？餐具我都摆好了。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d6a451253d17863c24b.jpg",default,default,"大熊猫可爱宠物萌宠小动物暗黑冷酷","我帅起来，我都怕爱上自己。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d6a451253d17863c24d.jpg",default,default,"小动物小鱼海洋大海萌宠宠物可爱意境孤独","我是一只深海的鱼，只有七秒的记忆，永远徘徊在原地......");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d6a451253d17863c24f.jpg",default,default,"小动物火烈鸟海洋大海萌宠宠物可爱意境陪伴","我说过...要带你来看海");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d6a451253d17863c252.jpg",default,default,"小动物狗狗萌宠宠物可爱","主人呢？怎么不见了。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d6a451253d17863c254.jpg",default,default,"小动物狗狗萌宠宠物可爱","哼，我才不要拍照呢，讨厌。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f03451253d17863ddef.jpg",default,default,"科技炫酷钢铁侠漫威电影","再见托尼。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520eea451253d17863dc04.jpg",default,default,"意境玩偶唯美孤独","大雄，是你吗？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520eea451253d17863dc02.jpg",default,default,"游戏英雄联盟机器人炫酷风格","你给我过来！再说一次，我是输出！");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520eea451253d17863dc00.jpg",default,default,"动漫神奇宝贝童年记忆风格","如果我成为神奇宝贝大师，那你们的童年谁来延续？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520eea451253d17863dbfe.jpg",default,default,"动漫风格意境记忆","你在看哪儿呢？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520eea451253d17863dbfc.jpg",default,default,"意境暗黑孤独世界我冷漠动漫","一个人也要走下去，一直...走下去。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ed7451253d17863da52.jpg",default,default,"动漫怪兽大学中年版蓝猫","准备好尖叫了吗？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ed7451253d17863da50.jpg",default,default,"神奇宝贝动漫风格","两个打不过一个裂空座。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ed7451253d17863da4e.jpg",default,default,"意境动漫温馨大白唯美","你需要帮助，我可以给你一个拥抱。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ed7451253d17863da4c.jpg",default,default,"动漫意境唯美爱情恋人","你的名字..."); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ed7451253d17863da4a.jpg",default,default,"动漫风格意境记忆","我收服神奇宝贝了！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ec4451253d17863d89d.jpg",default,default,"龙猫宫崎骏动漫风格自然记忆","大自然的精灵...龙猫。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ec4451253d17863d89b.jpg",default,default,"动漫小黄人可爱","老大，我们需要老大！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ec4451253d17863d899.jpg",default,default,"动漫女孩天空意境风格","为你而战！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ec4451253d17863d897.jpg",default,default,"动漫海贼王路飞","我是官二代，黑白两道大佬都是我家人，看到这个草帽没？主角光环了解一下。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ec4451253d17863d894.jpg",default,default,"神奇宝贝动漫风格意境唯美","虽然我叫超能女皇，但我是个男孩子。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ea5451253d17863d6b2.jpg",default,default,"动漫意境唯美下雨孤独风格","外面下雨了，你去哪儿了？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ea5451253d17863d6b0.jpg",default,default,"雨后孤独意境动漫","谁在念起我的名字？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ea5451253d17863d6ae.jpg",default,default,"犬夜叉动漫唯美意境","阿离？是你吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ea5451253d17863d6ac.jpg",default,default,"犬夜叉动漫唯美意境","半妖又如何，死在我手里的妖怪不计其数。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520ea5451253d17863d6aa.jpg",default,default,"动漫暗黑风格","我黑化，就问你怕不怕？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e90451253d17863d54d.jpg",default,default,"动漫记忆童年","你好，我是图图警官，请出示你的证件。"); 

-- INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e90451253d17863d54d.jpg",default,default,"神奇宝贝动漫风格可爱","妙蛙种子！种子，种子。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e90451253d17863d549.jpg",default,default,"动漫暗黑风格意境","这就是我的世界，你敢来吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e90451253d17863d547.jpg",default,default,"犬夜叉动漫唯美意境","我一定会杀了你，犬夜叉！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e90451253d17863d545.jpg",default,default,"动漫风格东京食尸鬼暗黑","我...我...我是人类！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e78451253d17863d3cb.png",default,default,"简约意境风格","我不会放弃你！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e78451253d17863d3c9.jpg",default,default,"正能量意境风格朝阳","不要失落，你可以的！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e78451253d17863d3c7.jpg",default,default,"正能量意境风格悬崖励志","世界在我脚下。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e6c451253d17863d2b1.jpg",default,default,"正能量意境风格朝阳励志","Don't give up!"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e6c451253d17863d2af.jpg",default,default,"意境清新绿色唯美护眼自然植物","那还有什么意义？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e6c451253d17863d2ad.jpg",default,default,"正能量意境风格朝阳励志","自己选的路，跪着也要走完！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e6c451253d17863d2ab.jpg",default,default,"动漫风格记忆回忆","如果我的存在耽误了你的成长，那我该离开了，大雄。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e6c451253d17863d2a9.jpg",default,default,"简约正能量意境风格励志","你问过你自己吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e61451253d17863d1bc.jpg",default,default,"正能量意境风格励志水墨画","一寸光阴一寸金。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e61451253d17863d1ba.jpg",default,default,"正能量意境风格励志","放弃不会让你多收获任何，但努力会。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e61451253d17863d1b8.jpg",default,default,"意境唯美风格动画情绪","我不长大，您可以不老去吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e61451253d17863d1b6.jpg",default,default,"意境唯美风格动画情绪","休息，休息。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e61451253d17863d1b4.jpg",default,default,"正能量意境风格励志青春","话粗理不粗。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e54451253d17863d0a0.jpg",default,default,"正能量意境风格励志青春","人生是曲线？");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e54451253d17863d09c.jpg",default,default,"意境情绪风格简约","是什么拖住了你的脚步？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e54451253d17863d09a.jpg",default,default,"正能量意境风格励志青春简约","言简意赅，加油！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520e54451253d17863d098.jpg",default,default,"正能量意境风格励志简约","希望你懂的时候不是在懊悔。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d83451253d17863c4e3.jpg",default,default,"小猪可爱萌宠小动物","想听什么你随便点，反正我不会。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d80451253d17863c3e4.jpg",default,default,"猫咪可爱宠物萌宠小动物","你养的起吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d80451253d17863c3de.jpg",default,default,"自然小鸟风景清新清晨放松","空气好清凉，你多久没有看过大自然了？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520d80451253d17863c3dc.jpg",default,default,"小动物梅花鹿萌宠宠物可爱自然","我是梅花鹿，不是瑶。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fe8451253d17863ef22.jpg",default,default,"暗黑恐怖风格末日","你在颤抖些什么？");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fe8451253d17863ef20.jpg",default,default,"暗黑恐怖风格仪式末日","今天要召唤些什么？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fe8451253d17863ef1e.jpg",default,default,"动漫黑夜风格意境","我是画的？");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fe8451253d17863ef1c.jpg",default,default,"动漫暗黑风格意境","黑色，你喜欢吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fe8451253d17863ef1a.jpg",default,default,"暗黑孤独风格意境情绪","你要去哪？我可以渡你一次程。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fd0451253d17863ed74.jpg",default,default,"暗黑孤独风格意境情绪","我在树下等你。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fd0451253d17863ed72.jpg",default,default,"动漫暗黑风格","骨龙降世！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fd0451253d17863ed70.jpg",default,default,"风景唯美意境情绪朝阳鲜花","逃离都市。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fd0451253d17863ed6c.jpg",default,default,"暗黑孤独风格意境情绪","嘘，不要说话。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fa0451253d17863ea0a.jpg",default,default,"暗黑孤独风格意境情绪","不是自己选的路，通向哪儿里，你也不知道。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fa0451253d17863ea08.jpg",default,default,"暗黑孤独风格意境情绪","我若为魔，屠神灭佛。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fa0451253d17863ea05.jpg",default,default,"风景情绪风格","色彩世界，厚重。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520fa0451253d17863ea03.png",default,default,"暗黑孤独风格意境情绪","星空黑夜"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f95451253d17863e900.jpg",default,default,"暗黑孤独风格意境情绪","你死我活，无关个人，各为其主！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f95451253d17863e8fe.jpg",default,default,"暗黑孤独风格意境情绪","一只猫，喵..."); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f95451253d17863e8fc.jpg",default,default,"暗黑孤独风格意境情绪","森林夜晚的星空"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f95451253d17863e8f7.jpg",default,default,"暗黑孤独风格意境情绪","真实地世界，人间烟火。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f79451253d17863e6e8.jpg",default,default,"暗黑孤独风格意境情绪","天地自会留我。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f79451253d17863e6e6.jpg",default,default,"暗黑孤独风格意境情绪游戏人物","暗黑风格");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f79451253d17863e6e4.jpg",default,default,"简约风格意境唯美情绪","我是你的月亮，在你身后为你照亮。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f79451253d17863e6e2.jpg",default,default,"暗黑孤独风格意境情绪电影人物","why so sericr?");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f79451253d17863e6e0.jpg",default,default,"暗黑孤独风格意境情绪电影人物","我不尽心，谁都不能结束！");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f4f451253d17863e4ec.jpg",default,default,"动物动漫风格炫酷","咩......"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f41451253d17863e342.jpg",default,default,"节约风格意境","谁还不是个绅士呢！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f41451253d17863e340.jpg",default,default,"科技炫酷钢铁侠漫威电影","再见托尼。"); 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f41451253d17863e33e.jpg",default,default,"科技炫酷钢铁侠漫威电影","烟花表演开始。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f41451253d17863e33c.jpg",default,default,"科技炫酷钢铁侠漫威电影","战争武器。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f41451253d17863e33a.jpg",default,default,"独孤炫酷游戏人物意境","下一任务是什么？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f18451253d17863e098.jpg",default,default,"暗黑孤独风格意境情绪电影人物","行走在黑夜的骑士"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f18451253d17863e096.jpg",default,default,"暗黑孤独风格意境情绪电影人物","认识我吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f18451253d17863e094.jpg",default,default,"轻松炫酷风格意境情绪","飞驰人生。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f18451253d17863e092.jpg",default,default,"科技炫酷钢铁侠漫威电影","I'M ＩＲＯＮＭＡＮ");
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f03451253d17863ddf1.jpg",default,default,"暗黑孤独风格意境情绪电影人物","黑夜的骑士，守护哥谭。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f12451253d17863dfb8.jpg",default,default,"动漫童年记忆神奇宝贝","你都认识吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f12451253d17863dfb4.png",default,default,"动漫童年记忆神奇宝贝","水精灵"); 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f12451253d17863dfb2.jpg",default,default,"犬夜叉动漫唯美意境","大合影，多久没看了？");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f06451253d17863de99.jpg",default,default,"科技炫酷钢铁侠漫威电影","最初的托尼，十年布局。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f06451253d17863de96.jpg",default,default,"科技炫酷钢铁侠漫威电影","内战你选谁？"); 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f06451253d17863de94.jpg",default,default,"风格吉他物品炫酷","如果我是DJ你会爱我吗？");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f03451253d17863ddf7.jpg",default,default,"风格跑车物品炫酷","飞驰人生。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d520f03451253d17863ddf5.jpg",default,default,"独孤炫酷游戏人物意境","犯罪的乐趣。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210b6451253d17863ffc8.jpg",default,default,"女孩清新人物唯美","你在想我吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210b6451253d17863ffc6.jpg",default,default,"女孩动漫美丽人物","今天有点热！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210b6451253d17863ffc4.jpg",default,default,"女孩清新人物唯美","你在看我吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210a2451253d17863fe66.jpg",default,default,"女孩清新人物唯美","SHE");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210a2451253d17863fe64.jpg",default,default,"女孩高雅人物风格","街景."); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210a2451253d17863fe62.jpg",default,default,"女孩高雅人物风格","你在看我吗？"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d5210a2451253d17863fe60.jpg",default,default,"女孩清新人物可爱","喜欢狗狗。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52108b451253d17863fd2d.jpg",default,default,"动漫简约风格情绪","犀牛先生。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52108b451253d17863fd2b.jpg",default,default,"动漫女孩人物可爱","再不哄我，我就哭了。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521083451253d17863fc36.jpg",default,default,"动漫简约风格情绪","长颈鹿和斑马");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521083451253d17863fc34.jpg",default,default,"唯美意境风格大海清新","还差你的一颗心，将我补全。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521083451253d17863fc32.jpg",default,default,"风景自然意境风格情绪","水在哪里？");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52107e451253d17863fb62.jpg",default,default,"动漫艾琳意境细节","路灯下的街道"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52107e451253d17863fb60.jpg",default,default,"动漫简约风格情绪","气死单身狗。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52107e451253d17863fb5d.jpg",default,default,"风景自然意境风格情绪","放开心扉"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521079451253d17863fa88.jpg",default,default,"风景自然意境风格清醒阳光","阳光小路"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521079451253d17863fa82.jpg",default,default,"风景自然意境风格清醒阳光","放开心扉，放松心灵。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521079451253d17863fa80.jpg",default,default,"风景自然意境风格情绪","气死单身狗。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52106b451253d17863f916.jpg",default,default,"风景夕阳意境风格情绪","夕阳小路"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52106b451253d17863f914.jpg",default,default,"风景恋爱阳光爱","恋爱啦！"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52106b451253d17863f911.jpg",default,default,"动漫风景风格","动漫世界的美。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52106b451253d17863f90f.jpg",default,default,"动漫风景风格","动漫世界的美。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521068451253d17863f817.jpg",default,default,"动漫风景风格","动漫世界的美。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521068451253d17863f815.jpg",default,default,"动漫风景风格","动漫世界的美。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521068451253d17863f813.jpg",default,default,"动漫艾琳风景意境","动漫世界的美。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521068451253d17863f811.jpg",default,default,"简约意境风格","红配绿？赛......"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521068451253d17863f80f.jpg",default,default,"简约意境风格","superhero"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521065451253d17863f75f.jpg",default,default,"风景意境夕阳水墨画","水墨画之美");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521065451253d17863f75d.jpg",default,default,"风景意境水墨画","水墨画之美"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521065451253d17863f75b.jpg",default,default,"风景意境素描简约","画"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52104a451253d17863f558.jpg",default,default,"清新淡雅简约风格","画个爱心送给你。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52104a451253d17863f551.jpg",default,default,"简约风格炫酷","篮球框架"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52104a451253d17863f555.jpg",default,default,"简约独孤风格情绪","受伤的兔子"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52104a451253d17863f55a.jpg",default,default,"动漫风景风格","动漫世界的美。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521065451253d17863f759.jpg",default,default,"风景意境水墨画","水墨画之美"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52104a451253d17863f54d.jpg",default,default,"风景意境油画","油画之美"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521033451253d17863f371.jpg",default,default,"简约风格炫酷","风格餐厅");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521033451253d17863f36a.jpg",default,default,"动漫风景风格","动漫世界的美。"); 
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521033451253d17863f368.jpg",default,default,"动漫风景风格","动漫世界的美。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52114c451253d178640d57.jpg",default,default,"清新淡雅简约风格","纯白世界");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d52114c451253d178640d55.jpg",default,default,"清新淡雅简约风格风景自然","雪花世界");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521149451253d178640cbf.jpg",default,default,"风景自然意境风格清新阳光","放开心扉，放松心灵。"); 

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521149451253d178640cbd.jpg",default,default,"风景自然意境风格清新阳光","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521149451253d178640cbb.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521149451253d178640cb9.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");

INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521149451253d178640cb7.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521135451253d178640b11.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521135451253d178640b0f.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521135451253d178640b0d.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521135451253d178640b09.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521131451253d178640aad.jpg",default,default,"风景自然意境风格清新阳光鲜花","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521111451253d1786408f8.jpg",default,default,"清新轻松动漫风格正能量励志","大头兵起飞");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521108451253d1786407d7.jpg",default,default,"风景自然意境风格清新阳光植物","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521108451253d1786407d3.jpg",default,default,"意境风格清新阳光植物","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521107451253d178640787.jpg",default,default,"清新轻松动漫风格正能量励志","大头兵起飞");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521107451253d178640785.jpg",default,default,"清新轻松简约","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521107451253d178640783.jpg",default,default,"清新轻松简约","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521107451253d178640780.jpg",default,default,"清新轻松简约","放开心扉，放松心灵。");
 
INSERT INTO  img VALUES(null,"https://pic.superbed.cn/item/5d521104451253d1786406e7.jpg",default,default,"风格情绪简约","滚就一个字，我只说一次。");
INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521104451253d1786406e3.jpg",default,default,"风格情绪简约轻松","海贼王完结。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521104451253d1786406e1.jpg",default,default,"风格情绪简约","最简单的大白。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5210ba451253d1786400a9.jpg",default,default,"女孩动漫可爱清新","校园少女");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5210ba451253d1786400a7.jpg",default,default,"女孩唯美可爱清新","花儿少女");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5210ba451253d1786400a5.jpg",default,default,"女孩唯美可爱清新","花儿少女");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5210b6451253d17863ffcd.jpg",default,default,"女孩唯美可爱情绪","怪诞少女");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5210b6451253d17863ffcb.jpg",default,default,"女孩唯美阳光高雅","高贵少女");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52114c451253d178640d59.jpg",default,default,"风景自然意境风格清新蓝天","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52114c451253d178640d5d.jpg",default,default,"风景自然意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521157451253d178640edc.jpg",default,default,"唯美轻松意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521157451253d178640edf.jpg",default,default,"唯美轻松意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521157451253d178640ee1.jpg",default,default,"风景自然意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521157451253d178640ee3.jpg",default,default,"风景自然意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521157451253d178640ee5.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521165451253d17864106d.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521165451253d178641070.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521165451253d178641072.jpg",default,default,"唯美意境风格清新鲜花","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521165451253d178641074.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521165451253d178641076.jpg",default,default,"唯美意境风格清新鲜花","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52119d451253d17864145e.jpg",default,default,"唯美意境风格清新鲜花","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52119d451253d178641460.jpg",default,default,"唯美意境风格清新鲜花","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52119d451253d178641462.jpg",default,default,"意境风格简约情绪","孤独的女孩");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52119d451253d178641464.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d52119d451253d178641466.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211bf451253d178641687.jpg",default,default,"唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211c1451253d1786416c4.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211c1451253d1786416c6.jpg",default,default,"动漫艾琳风景意境","动漫世界的美。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211c1451253d1786416ca.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ed451253d178641957.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ed451253d178641959.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ed451253d17864195b.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ed451253d17864195d.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ed451253d17864195f.jpg",default,default,"唯美意境风格恋爱星空","有点甜");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ee451253d178641998.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ee451253d17864199a.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ee451253d17864199c.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ee451253d17864199e.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");
INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ee451253d1786419a0.jpg",default,default,"动漫风景风格","动漫世界的美。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ef451253d178641a46.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ef451253d178641a48.jpg",default,default,"风景意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ef451253d178641a4b.jpg",default,default,"风景意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ef451253d178641a4d.jpg",default,default,"动漫风景风格","动漫世界的美。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211ef451253d178641a4f.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d5211fb451253d178641bc5.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521203451253d178641c55.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521203451253d178641c57.jpg",default,default,"唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521203451253d178641c59.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521203451253d178641c5b.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521203451253d178641c5d.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521208451253d178641d41.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521208451253d178641d47.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");

INSERT INTO img VALUES(null,"https://pic.superbed.cn/item/5d521208451253d178641d4b.jpg",default,default,"风景唯美意境风格清新","放开心扉，放松心灵。");


create table user_info(
  user_name varchar(16) primary key,
  user_upwd varchar(16) not null,
  user_sex bool default 0,# 0：男 1：女
  user_introduce varchar(100),
  header_img_icon char(10) not null,
  user_phone varchar(11) unique,
  user_email varchar(20) unique,
  user_birthday date,
  user_city varchar(20),
  user_startTime datetime default null,
  -- foreign key (header_img_icon) references header_img(header_img_icon)
);

INSERT INTO  user_info VALUES("xiaoyuhang","123456789",0,"管理员","兔砸儿",18160746306,"3159760238@qq.com","1998-06-10","江西南昌",null);

INSERT INTO  user_info VALUES("xiaohua","123456789",1,"开发人员","淑女",12345678911,"12345678910@qq.com","2000-1-1",null,null);

INSERT INTO  user_info VALUES("haibin","123456789",0,"开发人员","棕发",18160746305,"12345678921@qq.com","2000-1-1","浙江杭州",null); 

INSERT INTO  user_info VALUES("enwei","123456789",0,"开发人员","熊仔",12345678930,"12345678930@qq.com","2000-1-1",null,null); 

INSERT INTO  user_info VALUES("1234456789","123456789",default,"游客用户","唐唐",null,null,null,null,null);

use xinfeg;
CREATE table user_msg(
  user_name varchar(16) not null,
  msg_text varchar(100) not null,
  msg_time datetime not null,
  used_name varchar(16) not null
);


INSERT into user_msg VALUES ("xiaohua","努力奋斗","2019:8:14:8:50","xiaoyuhang");

INSERT into user_msg VALUES ("xiaoyuhang","努力奋斗","2019:8:14:8:51","haibin");

INSERT into user_msg VALUES ("haibin","努力奋斗","2019:8:14:8:52","enwei");

INSERT into user_msg VALUES ("enwei","努力奋斗","2019:8:14:8:54","xiaohua");
