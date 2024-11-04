/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shenghuojiaofeiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shenghuojiaofeiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shenghuojiaofeiguanli`;

/*Table structure for table `bangzhuzhongxin` */

DROP TABLE IF EXISTS `bangzhuzhongxin`;

CREATE TABLE `bangzhuzhongxin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangzhuzhongxin_name` varchar(200) DEFAULT NULL COMMENT '名称  Shuibiao ',
  `bangzhuzhongxin_types` int(11) DEFAULT NULL COMMENT '类型  Shuibiao ',
  `bangzhuzhongxin_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `bangzhuzhongxin_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 Shuibiao Shuibiao Shuibiao',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='帮助中心';

/*Data for the table `bangzhuzhongxin` */

insert  into `bangzhuzhongxin`(`id`,`bangzhuzhongxin_name`,`bangzhuzhongxin_types`,`bangzhuzhongxin_photo`,`insert_time`,`bangzhuzhongxin_content`,`create_time`) values (1,'帮助1',1,'http://localhost:8080/shenghuojiaofeiguanli/file/download?fileName=1618284836294.jpg','2021-04-13 11:34:04','帮助1的详情\r\n','2021-04-13 11:34:04'),(2,'帮助2',2,'http://localhost:8080/shenghuojiaofeiguanli/file/download?fileName=1618297568944.jpg','2021-04-13 15:06:15','帮助2的详情\r\n','2021-04-13 15:06:15');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618297698764 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618227715199,'2021-04-12 19:41:55',1,NULL,'‍101\r\n','ss\r\n',0),(1618284878146,'2021-04-13 11:34:38',1,NULL,'‍7777\r\n','77\r\n',0),(1618297698763,'2021-04-13 15:08:18',1,NULL,'‍有问题\r\n','您请说\r\n',0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/shenghuojiaofeiguanli/upload/1618296276982.jpg'),(3,'轮播图2','http://localhost:8080/shenghuojiaofeiguanli/upload/1618296288894.jpg'),(4,'轮播图3','http://localhost:8080/shenghuojiaofeiguanli/upload/1618297197705.jpg');

/*Table structure for table `dianbiao` */

DROP TABLE IF EXISTS `dianbiao`;

CREATE TABLE `dianbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianbiao_number` varchar(200) DEFAULT NULL COMMENT '电表编号 Shuibiao ',
  `dianbiao_money` decimal(10,4) DEFAULT NULL COMMENT '电表余额 Shuibiao ',
  `dianbiao_address` varchar(200) DEFAULT NULL COMMENT '电表编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='电表';

/*Data for the table `dianbiao` */

insert  into `dianbiao`(`id`,`yonghu_id`,`dianbiao_number`,`dianbiao_money`,`dianbiao_address`,`create_time`) values (1,1,'010','65.0000','北京天安门边','2021-04-12 20:34:19'),(2,1,'101','0.0000','北京天安门边11','2021-04-13 11:53:55'),(3,1,'1011','28.5000','北京天安门边222','2021-04-13 11:54:20'),(5,1,'787','0.0000','0','2021-04-13 14:18:37'),(6,3,'编号1','3.1000','地址1','2021-04-13 15:00:37');

/*Table structure for table `dianbiao_list` */

DROP TABLE IF EXISTS `dianbiao_list`;

CREATE TABLE `dianbiao_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianbiao_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianbiao_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `dianbiao_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='电表缴费记录';

/*Data for the table `dianbiao_list` */

insert  into `dianbiao_list`(`id`,`dianbiao_id`,`dianbiao_list_old_money`,`dianbiao_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','10.0000','2021-04-13 10:40:13',1,'2021-04-13 10:40:13'),(2,1,'10.0000','11.0000','2021-04-13 10:40:41',1,'2021-04-13 10:40:41'),(3,1,'21.0000','12.0000','2021-04-13 10:40:50',1,'2021-04-13 10:40:50'),(4,3,'0.0000','28.2000','2021-04-13 13:37:05',1,'2021-04-13 13:37:05'),(5,3,'28.2000','0.3000','2021-04-13 13:38:28',1,'2021-04-13 13:38:28'),(6,1,'33.0000','30.0000','2021-04-13 14:20:56',1,'2021-04-13 14:20:56'),(7,1,'63.0000','1.0000','2021-04-13 14:21:53',1,'2021-04-13 14:21:53'),(8,1,'64.0000','1.0000','2021-04-13 14:22:10',1,'2021-04-13 14:22:10'),(9,6,'0.0000','1.1000','2021-04-13 15:01:36',1,'2021-04-13 15:01:36'),(10,6,'1.1000','2.0000','2021-04-13 15:01:48',1,'2021-04-13 15:01:48');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Shuibiao ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-12 19:06:48'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-12 19:06:48'),(3,'youka_types','油卡所属公司名称',1,'公司1',NULL,'2021-04-12 19:06:48'),(4,'youka_types','油卡所属公司名称',2,'公司2',NULL,'2021-04-12 19:06:48'),(5,'youka_types','油卡所属公司名称',3,'公司3',NULL,'2021-04-12 19:06:48'),(6,'success_types','是否成功',1,'成功',NULL,'2021-04-12 19:06:48'),(7,'success_types','性别类型',2,'失败',NULL,'2021-04-12 19:06:48'),(8,'bangzhuzhongxin_types','帮助中心名称',1,'类型1',NULL,'2021-04-12 19:06:49'),(9,'bangzhuzhongxin_types','帮助中心名称',2,'类型2',NULL,'2021-04-12 19:06:49'),(10,'bangzhuzhongxin_types','帮助中心名称',3,'类型3',NULL,'2021-04-12 19:06:49'),(11,'bangzhuzhongxin_types','帮助中心名称',4,'撒萨达多撒',NULL,'2021-04-13 15:07:26');

/*Table structure for table `etc` */

DROP TABLE IF EXISTS `etc`;

CREATE TABLE `etc` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `etc_number` varchar(200) DEFAULT NULL COMMENT 'ETC编号 Shuibiao ',
  `etc_money` decimal(10,4) DEFAULT NULL COMMENT 'ETC余额 Shuibiao ',
  `etc_address` varchar(200) DEFAULT NULL COMMENT 'ETC编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='ETC';

/*Data for the table `etc` */

insert  into `etc`(`id`,`yonghu_id`,`etc_number`,`etc_money`,`etc_address`,`create_time`) values (1,1,'11','1.1000','北京二七','2021-04-13 14:20:44'),(2,3,'1','1.6000','地址2','2021-04-13 15:02:54'),(3,2,'12','0.0000','是的撒','2021-04-13 15:03:38');

/*Table structure for table `etc_list` */

DROP TABLE IF EXISTS `etc_list`;

CREATE TABLE `etc_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `etc_id` int(11) DEFAULT NULL COMMENT '用户',
  `etc_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `etc_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='ETC缴费记录';

/*Data for the table `etc_list` */

insert  into `etc_list`(`id`,`etc_id`,`etc_list_old_money`,`etc_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','1.1000','2021-04-13 14:25:54',1,'2021-04-13 14:25:54'),(2,2,'0.0000','1.6000','2021-04-13 15:04:01',1,'2021-04-13 15:04:01');

/*Table structure for table `gongnuan` */

DROP TABLE IF EXISTS `gongnuan`;

CREATE TABLE `gongnuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongnuan_number` varchar(200) DEFAULT NULL COMMENT '供暖编号 Shuibiao ',
  `gongnuan_money` decimal(10,4) DEFAULT NULL COMMENT '供暖余额 Shuibiao ',
  `gongnuan_address` varchar(200) DEFAULT NULL COMMENT '供暖编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='供暖';

/*Data for the table `gongnuan` */

insert  into `gongnuan`(`id`,`yonghu_id`,`gongnuan_number`,`gongnuan_money`,`gongnuan_address`,`create_time`) values (1,1,'001','0.1000','二七1号供暖设备','2021-04-13 14:27:55');

/*Table structure for table `gongnuan_list` */

DROP TABLE IF EXISTS `gongnuan_list`;

CREATE TABLE `gongnuan_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongnuan_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongnuan_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `gongnuan_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='供暖缴费记录';

/*Data for the table `gongnuan_list` */

insert  into `gongnuan_list`(`id`,`gongnuan_id`,`gongnuan_list_old_money`,`gongnuan_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','0.1000','2021-04-13 14:28:03',1,'2021-04-13 14:28:03');

/*Table structure for table `guhua` */

DROP TABLE IF EXISTS `guhua`;

CREATE TABLE `guhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guhua_number` varchar(200) DEFAULT NULL COMMENT '固话编号 Shuibiao ',
  `guhua_money` decimal(10,4) DEFAULT NULL COMMENT '固话余额 Shuibiao ',
  `guhua_address` varchar(200) DEFAULT NULL COMMENT '固话编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='固话';

/*Data for the table `guhua` */

insert  into `guhua`(`id`,`yonghu_id`,`guhua_number`,`guhua_money`,`guhua_address`,`create_time`) values (1,1,'电话设备010','0.1400','二七设备1号','2021-04-13 14:28:28');

/*Table structure for table `guhua_list` */

DROP TABLE IF EXISTS `guhua_list`;

CREATE TABLE `guhua_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guhua_id` int(11) DEFAULT NULL COMMENT '用户',
  `guhua_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `guhua_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='固话缴费记录';

/*Data for the table `guhua_list` */

insert  into `guhua_list`(`id`,`guhua_id`,`guhua_list_old_money`,`guhua_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','0.1400','2021-04-13 14:28:35',1,'2021-04-13 14:28:35');

/*Table structure for table `kuandai` */

DROP TABLE IF EXISTS `kuandai`;

CREATE TABLE `kuandai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kuandai_number` varchar(200) DEFAULT NULL COMMENT '宽带编号 Shuibiao ',
  `kuandai_money` decimal(10,4) DEFAULT NULL COMMENT '宽带余额 Shuibiao ',
  `kuandai_address` varchar(200) DEFAULT NULL COMMENT '宽带编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宽带';

/*Data for the table `kuandai` */

insert  into `kuandai`(`id`,`yonghu_id`,`kuandai_number`,`kuandai_money`,`kuandai_address`,`create_time`) values (1,1,'宽带010','0.0000','地址1','2021-04-13 14:32:11');

/*Table structure for table `kuandai_list` */

DROP TABLE IF EXISTS `kuandai_list`;

CREATE TABLE `kuandai_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kuandai_id` int(11) DEFAULT NULL COMMENT '用户',
  `kuandai_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `kuandai_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宽带缴费记录';

/*Data for the table `kuandai_list` */

/*Table structure for table `ranqibiao` */

DROP TABLE IF EXISTS `ranqibiao`;

CREATE TABLE `ranqibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ranqibiao_number` varchar(200) DEFAULT NULL COMMENT '燃气表编号 Shuibiao ',
  `ranqibiao_money` decimal(10,4) DEFAULT NULL COMMENT '燃气表余额 Shuibiao ',
  `ranqibiao_address` varchar(200) DEFAULT NULL COMMENT '燃气表编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='燃气表';

/*Data for the table `ranqibiao` */

insert  into `ranqibiao`(`id`,`yonghu_id`,`ranqibiao_number`,`ranqibiao_money`,`ranqibiao_address`,`create_time`) values (1,1,'燃气编号1','0.1000','地址1','2021-04-13 14:32:31');

/*Table structure for table `ranqibiao_list` */

DROP TABLE IF EXISTS `ranqibiao_list`;

CREATE TABLE `ranqibiao_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ranqibiao_id` int(11) DEFAULT NULL COMMENT '用户',
  `ranqibiao_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `ranqibiao_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='燃气表缴费记录';

/*Data for the table `ranqibiao_list` */

insert  into `ranqibiao_list`(`id`,`ranqibiao_id`,`ranqibiao_list_old_money`,`ranqibiao_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','0.1000','2021-04-13 14:32:39',1,'2021-04-13 14:32:39');

/*Table structure for table `shuibiao` */

DROP TABLE IF EXISTS `shuibiao`;

CREATE TABLE `shuibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuibiao_number` varchar(200) DEFAULT NULL COMMENT '水表编号 Shuibiao ',
  `shuibiao_money` decimal(10,4) DEFAULT NULL COMMENT '水表余额 Shuibiao ',
  `shuibiao_address` varchar(200) DEFAULT NULL COMMENT '水表编号所在地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='水表';

/*Data for the table `shuibiao` */

insert  into `shuibiao`(`id`,`yonghu_id`,`shuibiao_number`,`shuibiao_money`,`shuibiao_address`,`create_time`) values (1,1,'水表1','0.1000','地址12','2021-04-13 14:33:55');

/*Table structure for table `shuibiao_list` */

DROP TABLE IF EXISTS `shuibiao_list`;

CREATE TABLE `shuibiao_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuibiao_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuibiao_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `shuibiao_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='水表缴费记录';

/*Data for the table `shuibiao_list` */

insert  into `shuibiao_list`(`id`,`shuibiao_id`,`shuibiao_list_old_money`,`shuibiao_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','0.1000','2021-04-13 14:34:02',1,'2021-04-13 14:34:02');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','6yzyp4tbq51we77rkbyypzcb8ddrh2h2','2021-04-12 16:44:53','2021-04-13 16:16:04'),(2,1,'a1','yonghu','用户','iyob8r4za4zt0xu004s8jllv5ma0brdw','2021-04-12 16:51:36','2021-04-13 16:27:19'),(3,3,'a3','yonghu','用户','z80vgx5ss6jrfoiijjzqem16ne881u7f','2021-04-13 15:09:04','2021-04-13 16:09:30'),(4,4,'a4','yonghu','用户','trjyjvgqf7gj86eitdfvqrfa562mijdb','2021-04-13 15:24:49','2021-04-13 16:24:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Shuibiao ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Shuibiao ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Shuibiao ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,4) DEFAULT NULL COMMENT '余额 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`create_time`) values (1,'a1','123456','张1','17703786911','410224199610232011','http://localhost:8080/shenghuojiaofeiguanli/file/download?fileName=1618230871073.jpg',2,'9202.1800','2021-04-12 16:46:26'),(2,'a2','123456','张2','17703786912','410224199610232012','http://localhost:8080/shenghuojiaofeiguanli/file/download?fileName=1618279065980.jpg',2,'0.0000','2021-04-13 09:57:49'),(3,'a3','123456','张三11','17703786913','410224199610232013','http://localhost:8080/shenghuojiaofeiguanli/file/download?fileName=1618297155547.jpg',1,'184.3000','2021-04-13 14:59:26'),(4,'a4','123456','张四','17703786934','410224199610232014',NULL,1,'0.0000',NULL);

/*Table structure for table `youka` */

DROP TABLE IF EXISTS `youka`;

CREATE TABLE `youka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `youka_number` varchar(200) DEFAULT NULL COMMENT '油卡编号 Shuibiao ',
  `youka_money` decimal(10,4) DEFAULT NULL COMMENT '油卡余额 Shuibiao ',
  `youka_types` int(11) DEFAULT NULL COMMENT '油卡所属公司  Shuibiao ',
  `youka_address` varchar(200) DEFAULT NULL COMMENT '油卡开户地址 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='油卡';

/*Data for the table `youka` */

insert  into `youka`(`id`,`yonghu_id`,`youka_number`,`youka_money`,`youka_types`,`youka_address`,`create_time`) values (1,1,'油卡编号1','803.9000',2,'地址1','2021-04-13 14:34:27'),(2,3,'编号1','0.0000',3,'开户地址211','2021-04-13 15:04:43');

/*Table structure for table `youka_list` */

DROP TABLE IF EXISTS `youka_list`;

CREATE TABLE `youka_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youka_id` int(11) DEFAULT NULL COMMENT '用户',
  `youka_list_old_money` decimal(10,4) DEFAULT NULL COMMENT '缴费前余额',
  `youka_list_new_money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额(元) Shuibiao ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间 Shuibiao ',
  `success_types` int(11) DEFAULT NULL COMMENT '是否缴费成功 Shuibiao ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='油卡缴费记录';

/*Data for the table `youka_list` */

insert  into `youka_list`(`id`,`youka_id`,`youka_list_old_money`,`youka_list_new_money`,`insert_time`,`success_types`,`create_time`) values (1,1,'0.0000','803.9000','2021-04-13 14:34:35',1,'2021-04-13 14:34:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
