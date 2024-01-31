/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootpist4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootpist4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootpist4`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootpist4/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootpist4/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootpist4/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshipinfenxiang` */

DROP TABLE IF EXISTS `discussshipinfenxiang`;

CREATE TABLE `discussshipinfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786640655 DEFAULT CHARSET=utf8 COMMENT='视频分享评论表';

/*Data for the table `discussshipinfenxiang` */

insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-30 20:41:53',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-04-30 20:41:53',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-04-30 20:41:53',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-04-30 20:41:53',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-04-30 20:41:53',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-04-30 20:41:53',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshipinfenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619786640654,'2021-04-30 20:43:59',21,1619786592006,'1','sadsaDad',NULL);

/*Table structure for table `discussshipinpaiming` */

DROP TABLE IF EXISTS `discussshipinpaiming`;

CREATE TABLE `discussshipinpaiming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='视频排名评论表';

/*Data for the table `discussshipinpaiming` */

insert  into `discussshipinpaiming`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-30 20:41:53',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshipinpaiming`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-30 20:41:53',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshipinpaiming`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-30 20:41:53',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshipinpaiming`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-30 20:41:53',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshipinpaiming`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-30 20:41:53',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshipinpaiming`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-30 20:41:53',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786723338 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (61,'2021-04-30 20:41:53','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (62,'2021-04-30 20:41:53','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (63,'2021-04-30 20:41:53','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (64,'2021-04-30 20:41:53','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (65,'2021-04-30 20:41:53','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (66,'2021-04-30 20:41:53','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619786716580,'2021-04-30 20:45:16','add','<p>请输入内容腌臜SAQ</p>',0,1619786592006,'1','开放');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786736463 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (81,'2021-04-30 20:41:53',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (82,'2021-04-30 20:41:53',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (83,'2021-04-30 20:41:53',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (84,'2021-04-30 20:41:53',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (85,'2021-04-30 20:41:53',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (86,'2021-04-30 20:41:53',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619786736462,'2021-04-30 20:45:36',1619786592006,'1','这里可以给管理留言','大萨达群奥');

/*Table structure for table `pingtaigonggao` */

DROP TABLE IF EXISTS `pingtaigonggao`;

CREATE TABLE `pingtaigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786879550 DEFAULT CHARSET=utf8 COMMENT='平台公告';

/*Data for the table `pingtaigonggao` */

insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (41,'2021-04-30 20:41:52','标题1','内容1','发布人1','2021-04-30','http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian1.jpg');
insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (42,'2021-04-30 20:41:52','标题2','内容2','发布人2','2021-04-30','http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian2.jpg');
insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (43,'2021-04-30 20:41:52','标题3','内容3','发布人3','2021-04-30','http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian3.jpg');
insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (44,'2021-04-30 20:41:52','标题4','内容4','发布人4','2021-04-30','http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian4.jpg');
insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (45,'2021-04-30 20:41:52','标题5','内容5','发布人5','2021-04-30','http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian5.jpg');
insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (46,'2021-04-30 20:41:52','标题6','内容6','发布人6','2021-04-30','http://localhost:8080/springbootpist4/upload/pingtaigonggao_tupian6.jpg');
insert  into `pingtaigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`faburiqi`,`tupian`) values (1619786879549,'2021-04-30 20:47:59','萨达','<p>的撒发</p>','范德萨发','2021-04-30',NULL);

/*Table structure for table `shipinfenxiang` */

DROP TABLE IF EXISTS `shipinfenxiang`;

CREATE TABLE `shipinfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shipinjianjie` longtext COMMENT '视频简介',
  `shipinneirong` longtext COMMENT '视频内容',
  `bofangshizhang` varchar(200) DEFAULT NULL COMMENT '播放时长',
  `zaixianshipin` varchar(200) DEFAULT NULL COMMENT '在线视频',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786774228 DEFAULT CHARSET=utf8 COMMENT='视频分享';

/*Data for the table `shipinfenxiang` */

insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-30 20:41:52','视频名称1','类型1','视频简介1','视频内容1','播放时长1','','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian1.jpg','账号1','姓名1','是','',2,1,'2021-04-30 20:44:02',4);
insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (22,'2021-04-30 20:41:52','视频名称2','类型2','视频简介2','视频内容2','播放时长2','','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian2.jpg','账号2','姓名2','是','',2,2,'2021-04-30 20:41:52',2);
insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (23,'2021-04-30 20:41:52','视频名称3','类型3','视频简介3','视频内容3','播放时长3','','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian3.jpg','账号3','姓名3','是','',3,3,'2021-04-30 20:41:52',3);
insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (24,'2021-04-30 20:41:52','视频名称4','类型4','视频简介4','视频内容4','播放时长4','','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian4.jpg','账号4','姓名4','是','',4,4,'2021-04-30 20:41:52',4);
insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (25,'2021-04-30 20:41:52','视频名称5','类型5','视频简介5','视频内容5','播放时长5','','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian5.jpg','账号5','姓名5','是','',5,5,'2021-04-30 20:41:52',5);
insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (26,'2021-04-30 20:41:52','视频名称6','类型6','视频简介6','视频内容6','播放时长6','','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian6.jpg','账号6','姓名6','是','',6,6,'2021-04-30 20:41:52',6);
insert  into `shipinfenxiang`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`shipinneirong`,`bofangshizhang`,`zaixianshipin`,`faburiqi`,`fengmian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619786774227,'2021-04-30 20:46:14','萨达','类型1','萨芬戴','<p>FSAFDFDS </p>','60分',NULL,'2021-04-22',NULL,'1','1','是',NULL,0,0,'2021-04-30 20:48:57',1);

/*Table structure for table `shipinleixing` */

DROP TABLE IF EXISTS `shipinleixing`;

CREATE TABLE `shipinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='视频类型';

/*Data for the table `shipinleixing` */

insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (51,'2021-04-30 20:41:53','喜剧');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (52,'2021-04-30 20:41:53','动作');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (53,'2021-04-30 20:41:53','类型3');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (54,'2021-04-30 20:41:53','类型4');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (55,'2021-04-30 20:41:53','类型5');
insert  into `shipinleixing`(`id`,`addtime`,`leixing`) values (56,'2021-04-30 20:41:53','类型6');

/*Table structure for table `shipinpaiming` */

DROP TABLE IF EXISTS `shipinpaiming`;

CREATE TABLE `shipinpaiming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shipinjianjie` longtext COMMENT '视频简介',
  `bofangliang` int(11) DEFAULT NULL COMMENT '播放量',
  `bofangshizhang` varchar(200) DEFAULT NULL COMMENT '播放时长',
  `zaixianshipin` varchar(200) DEFAULT NULL COMMENT '在线视频',
  `fabuzhe` varchar(200) DEFAULT NULL COMMENT '发布者',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786861779 DEFAULT CHARSET=utf8 COMMENT='视频排名';

/*Data for the table `shipinpaiming` */

insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (31,'2021-04-30 20:41:52','视频名称1','类型1','视频简介1',1,'播放时长1','','发布者1','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian1.jpg',2,1);
insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (32,'2021-04-30 20:41:52','视频名称2','类型2','视频简介2',2,'播放时长2','','发布者2','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian2.jpg',2,2);
insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (33,'2021-04-30 20:41:52','视频名称3','类型3','视频简介3',3,'播放时长3','','发布者3','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian3.jpg',3,3);
insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (34,'2021-04-30 20:41:52','视频名称4','类型4','视频简介4',4,'播放时长4','','发布者4','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian4.jpg',4,4);
insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (35,'2021-04-30 20:41:52','视频名称5','类型5','视频简介5',5,'播放时长5','','发布者5','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian5.jpg',5,5);
insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (36,'2021-04-30 20:41:52','视频名称6','类型6','视频简介6',6,'播放时长6','','发布者6','2021-04-30','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian6.jpg',6,6);
insert  into `shipinpaiming`(`id`,`addtime`,`shipinmingcheng`,`leixing`,`shipinjianjie`,`bofangliang`,`bofangshizhang`,`zaixianshipin`,`fabuzhe`,`faburiqi`,`fengmian`,`thumbsupnum`,`crazilynum`) values (1619786861778,'2021-04-30 20:47:41','adsa','类型1','沙发等方式',500000,'60分钟',NULL,'阿达','2021-04-11',NULL,0,0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786695639 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619786631651,'2021-04-30 20:43:51',1619786592006,21,'shipinfenxiang','视频名称1','http://localhost:8080/springbootpist4/upload/shipinfenxiang_fengmian1.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619786695638,'2021-04-30 20:44:55',1619786592006,31,'shipinpaiming','视频名称1','http://localhost:8080/springbootpist4/upload/shipinpaiming_fengmian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619786592006,'1','yonghu','用户','5tapchd6negw8h7jssuahzvcto08xiks','2021-04-30 20:43:33','2021-04-30 21:48:52');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','46xytjourfxsoaajlmm4dxei2gmdzcli','2021-04-30 20:46:39','2021-04-30 21:46:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-30 20:41:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619786592007 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (11,'2021-04-30 20:41:52','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (12,'2021-04-30 20:41:52','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (13,'2021-04-30 20:41:52','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (14,'2021-04-30 20:41:52','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (15,'2021-04-30 20:41:52','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (16,'2021-04-30 20:41:52','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (1619786592006,'2021-04-30 20:43:12','1','1','1','男',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
