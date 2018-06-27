/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.21-log : Database - group
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`group` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `group`;

/*Table structure for table `agent` */

DROP TABLE IF EXISTS `agent`;

CREATE TABLE `agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `phone_number` char(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `agent` */

insert  into `agent`(`id`,`name`,`phone_number`,`image`) values (1,'王傲奇','13236553500','waq.png'),(2,'张菊','13236553501','zj.png'),(3,'梁伟','13236553503','lw.jpg'),(4,'刘学','13236553504','lx.jpg'),(5,'江文文','13236553505','jww.jpg'),(6,'徐琳','13236553506','xl.jpg'),(7,'张婷','13236553507','zt.jpg'),(8,'郭呈祥','13235554444','gcx.jpg'),(9,'宋晓锋','13265558858','sxf.jpg'),(10,'王帅帅','15484216325','wss.jpg');

/*Table structure for table `houseinfo` */

DROP TABLE IF EXISTS `houseinfo`;

CREATE TABLE `houseinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `area` double NOT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `village` varchar(10) DEFAULT NULL,
  `house_type` varchar(10) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `subway` varchar(10) DEFAULT NULL,
  `p_time` varchar(10) DEFAULT NULL,
  `ori` varchar(10) DEFAULT NULL,
  `bulid_time` varchar(20) DEFAULT NULL,
  `rent_type` varchar(20) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `agent` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

/*Data for the table `houseinfo` */

insert  into `houseinfo`(`id`,`name`,`price`,`area`,`floor`,`village`,`house_type`,`address`,`subway`,`p_time`,`ori`,`bulid_time`,`rent_type`,`image`,`agent`) values (1,'南方花园瑞阳居 ',2800,42.41,'中楼层 (共10层)','南方花园','5室1厅1卫','江宁','距地铁1号线双龙大道','58天前发布','东','1998年建板楼','岔路口租房','aa.jpg','1'),(2,'天湖园',2800,55.27,'低楼层 (共7层)','天湖园','2室1厅1卫','建邺','距地铁2号线云锦路7','146天前发布','南 北','1995年建板楼','南湖租房','as.jpg','1'),(3,'威尼斯水城第七街区',2500,118.63,'低楼层 (共11层)','威尼斯水城','3室1厅1卫','浦口','距地铁3号线柳洲东路','63天前发布','南 北','2005年建板塔结合','桥北租房','ax.jpg','2'),(4,'四方新村二村',3000,98,'高楼层 (共7层)','四方新村','2室1厅1卫','秦淮','距地铁3号线常府街7','66天前发布','南','1991年建板楼','月牙湖租房','bv.jpg','3'),(5,'广博苑',2000,47.74,'高楼层 (共19层)','广博苑','3室1厅1卫','江宁 东山镇','距地铁1号线天印大道','12天前发布','北','2002年建板塔结合','东山镇租房','cv.jpg','4'),(6,'泰和园',3500,87,'高楼层 (共16层)','泰和园','1室1厅1卫','鼓楼 小市','距地铁3号线小市74','9天前发布','南','2007年建板塔结合','小市租房','de.jpg','5'),(7,'阳光金峰阁',2500,40,'中楼层 (共19层)','阳光金峰阁','1室1厅1卫','鼓楼 龙江','距地铁4号线龙江17','3天前发布','南','2005年建板塔结合','龙江租房','el.jpg','6'),(8,'万科金色领域',3000,90,'中楼层 (共18层)','万科','3室1厅1卫','栖霞 仙林','距地铁4号线仙林湖1','41天前发布','南','2003年建板塔结合','仙林租房','er.jpg','7'),(9,'21世纪国际公寓',2700,43,'高楼层 (共32层)','21世纪国际公寓','1室1厅1卫','江宁 百家湖','距地铁1号线小龙湾5','41天前发布','南','2000年建板楼','百家湖租房','ff.jpg','8'),(10,'王府园小区 ',3500,67.55,'高楼层 (共6层)','王府园小区 ','2室1厅1卫','秦淮 升州路','距地铁1号线张府园7','32天前发布','南','1999年建板楼','升州路租房','gf.jpg','9'),(11,'侯家桥',2800,33.59,'低楼层 (共8层)','侯家桥','1室1厅1卫','秦淮 朝天宫','距地铁2号线上海路6','48天前发布','南','2003年建板楼','朝天宫租房','hj.jpg','10'),(12,'佳和园',3000,50.31,'高楼层 (共33层)','佳和园','1室1厅1卫','建邺 万达广场','距地铁10号线绿博园','21天前发布','南','1993年建板楼','万达广场租房','hn.jpg','1'),(13,'雨花西路 ',2600,52.36,'中楼层 (共8层)','雨花西路 ','2室1厅1卫','雨花台 雨花新村','距地铁1号线中华门3','30天前发布','南','2010年建板楼','雨花新村租房','ic.jpg','2'),(14,'张公桥小区 ',3200,53.82,'中楼层 (共30层)','张公桥小区 ','1室1厅1卫','秦淮 朝天宫','距地铁2号线汉中门8','29天前发布','北','2008年建板楼','朝天宫租房','ik.jpg','3'),(15,'红土山5号 ',3700,53.27,'低楼层 (共7层)','红土山5号 ','2室1厅1卫','鼓楼 凤凰西街','距地铁2号线汉中门5','18天前发布','西南','1998年建板塔结合','凤凰西街租房','op.jpg','4'),(16,'富春里',2800,60,'高楼层 (共7层)','富春里','2室1厅1卫','秦淮 新街口','距地铁1号线新街口7','30天前发布','南','2009年建板塔结合','新街口租房','po.jpg','5'),(17,'砂珠巷小区',3200,69.97,'低楼层 (共35层)','砂珠巷小区','6室1厅1卫','秦淮 升州路','距地铁1号线三山街3','17天前发布','西','2004年建板楼','升州路租房','qb.jpg','6'),(18,'融侨世家 ',3800,110,'中楼层 (共17层)','融侨世家 ','4室1厅1卫','江宁 江宁大学城','距地铁1号线龙眠大道','55天前发布','南 北','2014年建塔楼','江宁大学城租房','qw.jpg','7'),(19,'天元吉第城 ',3000,120,'中楼层 (共6层)','天元吉第城 ','3室1厅1卫','江宁 东山镇','距地铁1号线龙眠大道','157天前发布','南 北','2011年建板楼','东山镇租房','rc.jpg','9'),(20,'上海路新村',3500,55.85,'高楼层 (共7层)','上海路新村','2室1厅1卫','鼓楼 宁海路','距地铁4号线云南路6','109天前发布','南 北','2014年建塔楼','宁海路租房','sd.jpg','8'),(21,'大石桥',3500,59.75,'高楼层 (共7层)','大石桥','2室1厅1卫','玄武 丹凤街','距地铁1号线珠江路7','88天前发布','南 北','2011年建板楼','丹凤街租房','ty.jpg','10'),(22,'珠江路',2800,38.46,'高楼层 (共7层)','珠江路','1室1厅1卫','玄武 珠江路','距地铁2号线西安门8','14天前发布','南','2000年建板楼','珠江路租房','uy.jpg','2'),(23,'木马公寓',3000,27.71,'高楼层 (共32层)','木马公寓','1室1厅1卫','玄武 丹凤街','距地铁1号线珠江路3','14天前发布','北','2000年建板楼','丹凤街租房','xz.jpg','1'),(24,'蓝岸3G ',2500,72.33,'高楼层 (共10层)','蓝岸3G ','1室1厅1卫','雨花台 铁心桥','距地铁S3号线铁心桥','12天前发布','西','2002年建板楼','铁心桥租房','ya.jpg','3'),(25,'百水芊城上水坊',2200,63.97,'低楼层 (共6层)','百水芊城上水坊','2室1厅','栖霞 马群','暂无数据','5天前发布','南 北','2007年建板楼','马群租房','bsqc.jpg','5'),(26,'汉中翠庭',7500,115,'中楼层 (共18层)','汉中翠庭','3室2厅','鼓楼 汉中门大街','距地铁2号线汉中门2','5天前发布','东南','板楼','汉中门大街租房','hzct.jpg','4'),(27,'琥珀森林一期',3600,94.46,'中楼层 (共18层)','琥珀森林','2室1厅1卫','雨花台 铁心桥','暂无数据','5天前发布','南','2009年建板楼','铁心桥租房','hpzl1.jpg','6'),(28,'安怀村453号',3500,110,'中楼层 (共8层)','安怀村','3室2厅','鼓楼 五塘广场',NULL,'5天前发布','南','板塔结合','五塘广场租房','ahc453.jpg','8'),(29,'高尔夫国际花园',5500,134,'高楼层 (共11层)','高尔夫国际花园 ','3室2厅','江宁 百家湖','距地铁3号线胜太西路','21天前发布','南','2012年建板塔结合','百家湖租房','grfgjhy.jpg','9'),(30,'怡景花园',4000,66,'中楼层 (共26层)','怡景花园','2室1厅1卫 ','鼓楼 华侨路','距地铁2号线上海路4','15天前发布','西南','1995年建塔楼','华侨路租房','yjhy1.jpg','10'),(31,'江岸水城 ',1800,73,'低楼层 (共9层)','江岸水城','6室2厅1卫','浦口 桥北','距地铁3号线天润城9','14天前发布','南','2009年建板楼','桥北租房','jasc1.jpg','2'),(32,'建邺奥体',2200,77,'低楼层 (共16层)','和府奥园','2室1厅1卫 整租','建邺 奥体','距地铁2号线雨润大街','13天前发布','南','2014年建板楼','奥体租房','jyat1.jpg','5'),(33,'丹佛小镇',3800,80.63,'低楼层 (共11层)','丹佛小镇','3室2厅1卫 ','江宁 将军大道','暂无数据','13天前发布','南','2009年建板楼','将军大道租房','dfxz1.jpg','1'),(34,'云谷山庄',3000,84,'高楼层 (共10层)','云谷山庄','3室1厅1卫 ','鼓楼 五塘广场','暂无数据','14天前发布','南 北','2012年建板塔结合','五塘广场租房','ygsz1.jpg','4'),(35,'御湖国际 ',2700,25.93,'高楼层 (共34层)','御湖国际','1室0厅1卫 ','玄武 红山','距地铁3号线南京林业','7天前发布','北','2010年建塔楼','红山租房','yhgj1.jpg','6'),(36,'西城风尚',3500,53,'中楼层 (共11层)','西城风尚','1室1厅1卫 ','鼓楼 龙江','暂无数据','5天前发布','南','2006年建塔楼','龙江租房','xcfs1.jpg','9'),(37,'御湖国际',4800,75.5,'中楼层 (共34层)','御湖国际','2室1厅1卫 ','玄武 红山','距地铁3号线南京林业','6天前发布','南','2010年建塔楼','红山租房','yhgj2.jpg','5'),(38,'中海万锦熙岸一期',2800,110,'高楼层 (共26层)','中海万锦熙岸','2室2厅1卫 ','浦口 江浦街道','暂无数据','9天前发布','南','2014年建板楼','江浦街道租房','zhwj1.jpg','8'),(39,'金信花园',6000,120,'高楼层 (共10层)','金信花园','3室2厅1卫 ','鼓楼 龙江','暂无数据','9天前发布','南 北','2000年建板楼','龙江租房','jxhy1.jpg','7'),(40,'精金花园',4100,70,'高楼层 (共32层)','精金花园','2室1厅1卫 ','建邺 万达广场','暂无数据','9天前发布','南 北','','万达广场租房','jjhy1.jpg','3'),(41,'亲水湾花园',2800,52.1,'中楼层 (共8层)','亲水湾花园','1室1厅2卫','江宁 百家湖','距地铁1号线河定桥3','9天前发布','南','2009年建板楼','百家湖租房','qswhy1.jpg','5'),(42,'沙塘园',3800,69,'低楼层 (共33层)','沙塘园','2室1厅1卫 ','玄武 珠江路','距地铁3号线浮桥34','6天前发布','东','1998年建塔楼','珠江路租房','sty1.jpg','8'),(43,'中粮彩云居',2600,39,'中楼层 (共6层)','中粮彩云居 ','1室1厅1卫','江宁 九龙湖','距地铁3号线东大九龙','8天前发布','东','2012年建板楼','九龙湖租房','zlcyj1.jpg','9'),(44,'上海路',2700,45,'高楼层 (共7层)','上海路','1室1厅1卫','鼓楼 华侨路','距地铁4号线云南路6','5天前发布','南','1990年建板楼','华侨路租房','shl1.jpg','5'),(45,'牌坊街61号',2800,60,'中楼层 (共7层)','牌坊街','2室1厅1卫 ','建邺 水西门','距地铁3号线浮桥73','103天前发布','南','1980年建塔楼','水西门租房','pfj61h.jpg','4'),(46,'大三房',4200,109,'高楼层 (共11层)','良城美景家园','3室1厅1卫 整租','秦淮 秦虹','暂无数据','229天前发布','南 北','2005年建板楼','秦虹租房','dsf1.jpg','2'),(47,'力联大厦',5500,97.61,'中楼层 (共31层)','力联大厦','2室1厅1卫','秦淮 新街口','距地铁3号线常府街3','52天前发布','南 北','2002年建塔楼','新街口租房','lldx1.jpg','6'),(48,'百子亭',3800,76,'低楼层 (共6层)','百子亭','2室1厅1卫 ','玄武 玄武门','距地铁1号线玄武门6','62天前发布','南','1992年建板楼','玄武门租房','bzt1.jpg','3'),(49,'岗虹苑',2400,52,'高楼层 (共7层)','岗虹苑','2室1厅1卫 ','秦淮 秦虹','暂无数据','14天前发布','南 北','2000年建板楼','秦虹租房','ghy1.jpg','6');

/*Table structure for table `pubhouseinfo` */

DROP TABLE IF EXISTS `pubhouseinfo`;

CREATE TABLE `pubhouseinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(20) NOT NULL,
  `city` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL COMMENT '小区',
  `build` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL COMMENT '单元号',
  `sign` varchar(10) NOT NULL COMMENT '门牌号',
  `price` varchar(10) NOT NULL COMMENT '租金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `pubhouseinfo` */

insert  into `pubhouseinfo`(`id`,`user_phone`,`city`,`area`,`build`,`unit`,`sign`,`price`) values (4,'1','南京','88','88','88','88','88'),(5,'5','南京','55','55','55','55','55'),(6,'5','南京','dd','gg','gg','gg','ggg'),(7,'0','南京','858','8585','585','585','58585');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone_number` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`phone_number`) values (45,'wwqq','12345678','13236563358');

/*Table structure for table `hview` */

DROP TABLE IF EXISTS `hview`;

/*!50001 DROP VIEW IF EXISTS `hview` */;
/*!50001 DROP TABLE IF EXISTS `hview` */;

/*!50001 CREATE TABLE  `hview`(
 `id` int(10) ,
 `name` varchar(20) ,
 `price` int(10) ,
 `area` double ,
 `floor` varchar(10) ,
 `village` varchar(10) ,
 `house_type` varchar(10) ,
 `address` varchar(20) ,
 `subway` varchar(10) ,
 `p_time` varchar(10) ,
 `ori` varchar(10) ,
 `bulid_time` varchar(20) ,
 `rent_type` varchar(20) ,
 `image` varchar(200) ,
 `agent` varchar(10) 
)*/;

/*View structure for view hview */

/*!50001 DROP TABLE IF EXISTS `hview` */;
/*!50001 DROP VIEW IF EXISTS `hview` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hview` AS select `houseinfo`.`id` AS `id`,`houseinfo`.`name` AS `name`,`houseinfo`.`price` AS `price`,`houseinfo`.`area` AS `area`,`houseinfo`.`floor` AS `floor`,`houseinfo`.`village` AS `village`,`houseinfo`.`house_type` AS `house_type`,`houseinfo`.`address` AS `address`,`houseinfo`.`subway` AS `subway`,`houseinfo`.`p_time` AS `p_time`,`houseinfo`.`ori` AS `ori`,`houseinfo`.`bulid_time` AS `bulid_time`,`houseinfo`.`rent_type` AS `rent_type`,`houseinfo`.`image` AS `image`,`houseinfo`.`agent` AS `agent` from `houseinfo` where ((1 = 1) and (not((`houseinfo`.`house_type` like concat('%','1室','%')))) and (not((`houseinfo`.`house_type` like concat('%','2室','%')))) and (not((`houseinfo`.`house_type` like concat('%','3室','%')))) and (not((`houseinfo`.`house_type` like concat('%','4室','%'))))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
