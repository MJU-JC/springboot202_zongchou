/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shanchouwang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shanchouwang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shanchouwang`;

/*Table structure for table `canyuzhongchou` */

DROP TABLE IF EXISTS `canyuzhongchou`;

CREATE TABLE `canyuzhongchou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhongchou_id` int(11) DEFAULT NULL COMMENT '众筹',
  `zizu_money` decimal(10,2) DEFAULT NULL COMMENT '参与金额',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '参与时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='参与的众筹';

/*Data for the table `canyuzhongchou` */

insert  into `canyuzhongchou`(`id`,`yonghu_id`,`zhongchou_id`,`zizu_money`,`jieshu_time`,`create_time`) values (1,1,2,'200.00','2022-03-26 10:49:26','2022-03-26 10:49:26'),(2,1,2,'100.00','2022-03-26 10:49:36','2022-03-26 10:49:36'),(3,2,2,'200.00','2022-03-26 10:56:41','2022-03-26 10:56:41'),(4,2,2,'50.00','2022-03-26 10:56:46','2022-03-26 10:56:46'),(5,2,2,'100.00','2022-03-26 10:56:51','2022-03-26 10:56:51'),(6,2,2,'200.00','2022-03-26 11:01:33','2022-03-26 11:01:33'),(7,2,2,'1500.00','2022-03-26 11:01:48','2022-03-26 11:01:48'),(8,3,3,'200.00','2022-03-26 11:09:53','2022-03-26 11:09:53'),(9,3,3,'50.00','2022-03-26 11:10:01','2022-03-26 11:10:01'),(10,3,3,'1000.00','2022-03-26 11:10:41','2022-03-26 11:10:41'),(11,3,3,'1000.00','2022-03-26 11:10:56','2022-03-26 11:10:56');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/shanchouwang/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/shanchouwang/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/shanchouwang/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-25 19:55:53'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-25 19:55:53'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-25 19:55:53'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-25 19:55:53'),(5,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-03-25 19:55:53'),(6,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-03-25 19:55:53'),(7,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-03-25 19:55:53'),(8,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2022-03-25 19:55:53'),(9,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-25 19:55:53'),(10,'zhongchou_zhuangtai_types','众筹状态',1,'正在众筹',NULL,NULL,'2022-03-25 19:55:53'),(11,'zhongchou_zhuangtai_types','众筹状态',2,'众筹成功',NULL,NULL,'2022-03-25 19:55:53'),(12,'zhongchou_zhuangtai_types','众筹状态',3,'众筹失败',NULL,NULL,'2022-03-25 19:55:53'),(14,'zhongchou_kuaidi_types','快递状态',2,'已发货',NULL,NULL,'2022-03-25 19:55:53'),(15,'zhongchou_kuaidi_types','快递状态',3,'已收货',NULL,NULL,'2022-03-25 19:55:53'),(16,'zhongchou_types','众筹类型',1,'众筹类型1',NULL,NULL,'2022-03-25 19:55:53'),(17,'zhongchou_types','众筹类型',2,'众筹类型2',NULL,NULL,'2022-03-25 19:55:53'),(18,'zhongchou_types','众筹类型',3,'众筹类型3',NULL,NULL,'2022-03-25 19:55:53'),(19,'zhongchou_types','众筹类型',4,'众筹类型4',NULL,NULL,'2022-03-25 19:55:53'),(20,'zhongchou_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-25 19:55:53');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_uuid_number`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`create_time`) values (1,'16482095989897','商品名称1','http://localhost:8080/shanchouwang/upload/shangpin1.jpg',4,'817.63','19.28','商品介绍1',1,1,'2022-03-25 19:59:58'),(2,'164820959898913','商品名称2','http://localhost:8080/shanchouwang/upload/shangpin2.jpg',4,'839.56','355.46','商品介绍2',1,1,'2022-03-25 19:59:58'),(3,'16482095989891','商品名称3','http://localhost:8080/shanchouwang/upload/shangpin3.jpg',4,'654.19','79.18','商品介绍3',1,1,'2022-03-25 19:59:58'),(4,'164820959898916','商品名称4','http://localhost:8080/shanchouwang/upload/shangpin4.jpg',1,'712.06','97.55','商品介绍4',1,1,'2022-03-25 19:59:58'),(5,'16482095989895','商品名称5','http://localhost:8080/shanchouwang/upload/shangpin5.jpg',3,'960.33','213.78','商品介绍5',1,1,'2022-03-25 19:59:58');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-25 19:59:58','2022-03-25 19:59:58'),(2,2,2,1,'2022-03-25 19:59:58','2022-03-25 19:59:58'),(3,3,1,1,'2022-03-25 19:59:58','2022-03-25 19:59:58'),(4,4,3,1,'2022-03-25 19:59:58','2022-03-25 19:59:58'),(5,5,2,1,'2022-03-25 19:59:58','2022-03-25 19:59:58');

/*Table structure for table `shangpin_liuyan` */

DROP TABLE IF EXISTS `shangpin_liuyan`;

CREATE TABLE `shangpin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品留言';

/*Data for the table `shangpin_liuyan` */

insert  into `shangpin_liuyan`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2022-03-25 19:59:58','回复信息1','2022-03-25 19:59:58','2022-03-25 19:59:58'),(2,2,2,'留言内容2','2022-03-25 19:59:58','回复信息2','2022-03-25 19:59:58','2022-03-25 19:59:58'),(3,3,3,'留言内容3','2022-03-25 19:59:58','回复信息3','2022-03-25 19:59:58','2022-03-25 19:59:58'),(4,4,1,'留言内容4','2022-03-25 19:59:58','回复信息4','2022-03-25 19:59:58','2022-03-25 19:59:58'),(5,5,1,'留言内容5','2022-03-25 19:59:58','回复信息5','2022-03-25 19:59:58','2022-03-25 19:59:58');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','k09zg79dd6k6yb89r43exst521xac8tm','2022-03-25 20:03:32','2022-03-26 12:20:34'),(2,1,'a1','yonghu','用户','sny3r195bxd5f3pd4xzkih3q4ts1521i','2022-03-25 20:08:39','2022-03-26 11:49:47'),(3,2,'a2','yonghu','用户','1bbwhyzs7pcqkxw7thc64ckph6p5kqdr','2022-03-26 09:45:36','2022-03-26 12:12:57'),(4,3,'a3','yonghu','用户','6otlpzpmc4kswrulk1a7ntx45w2vhmxj','2022-03-26 11:08:35','2022-03-26 12:12:17');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/shanchouwang/upload/yonghu1.jpg',1,'1@qq.com','420.33','2022-03-25 19:59:58'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/shanchouwang/upload/yonghu2.jpg',2,'2@qq.com','8690.71','2022-03-25 19:59:58'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/shanchouwang/upload/yonghu3.jpg',2,'3@qq.com','8216.69','2022-03-25 19:59:58');

/*Table structure for table `zhongchou` */

DROP TABLE IF EXISTS `zhongchou`;

CREATE TABLE `zhongchou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `zhongchou_uuid_number` varchar(200) DEFAULT NULL COMMENT '众筹编号  Search111 ',
  `zhongchou_name` varchar(200) DEFAULT NULL COMMENT '众筹名称  Search111 ',
  `zhongchou_types` int(11) DEFAULT NULL COMMENT '众筹类型 Search111',
  `zhongchou_kucun_number` int(11) DEFAULT NULL COMMENT '众筹数量',
  `yichou_money` decimal(10,2) DEFAULT NULL COMMENT '已筹金额',
  `zhongchou_money` decimal(10,2) DEFAULT NULL COMMENT '众筹总额',
  `zhongchou_clicknum` int(11) DEFAULT NULL COMMENT '热度 ',
  `zhongchou_zhuangtai_types` int(11) DEFAULT NULL COMMENT '众筹状态 Search111',
  `zhongchou_chenggong_name` varchar(200) DEFAULT NULL COMMENT '收件人姓名',
  `zhongchou_chenggong_phone` varchar(200) DEFAULT NULL COMMENT '收件人联系方式',
  `zhongchou_chenggong_address` varchar(200) DEFAULT NULL COMMENT '收件人地址',
  `zhongchou_chenggong_kuaidiname` varchar(200) DEFAULT NULL COMMENT '快递名称',
  `zhongchou_chenggong_kuaidiaddress` varchar(200) DEFAULT NULL COMMENT '快递地址',
  `zhongchou_kuaidi_types` int(11) DEFAULT NULL COMMENT '快递状态 Search111',
  `zhongchou_content` text COMMENT '众筹详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发起时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '众筹截止时间',
  `zhongchou_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='众筹';

/*Data for the table `zhongchou` */

insert  into `zhongchou`(`id`,`yonghu_id`,`shangpin_id`,`zhongchou_uuid_number`,`zhongchou_name`,`zhongchou_types`,`zhongchou_kucun_number`,`yichou_money`,`zhongchou_money`,`zhongchou_clicknum`,`zhongchou_zhuangtai_types`,`zhongchou_chenggong_name`,`zhongchou_chenggong_phone`,`zhongchou_chenggong_address`,`zhongchou_chenggong_kuaidiname`,`zhongchou_chenggong_kuaidiaddress`,`zhongchou_kuaidi_types`,`zhongchou_content`,`insert_time`,`jieshu_time`,`zhongchou_delete`,`create_time`) values (1,1,3,'1648211692643','张三发起的众筹',3,1,'1.00','79.18',32,1,'张安','17703786933','地址33','','',NULL,'<p>张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹张三发起的众筹</p>','2022-03-25 20:35:43','2022-03-31 00:00:00',1,'2022-03-25 20:35:43'),(2,2,5,'1648259145154','用户2发起的众筹商品5',3,10,'2350.00','2137.80',41,2,'用户2','17703786902','地址2222','顺丰快递','sf1648263709204',3,'<p>待审核第三个号</p>','2022-03-26 09:46:43','2022-03-29 00:00:00',1,'2022-03-26 09:46:43'),(3,2,1,'1648263900182','用户2发起的商品名称1的众筹',4,100,'2250.00','1928.00',9,2,'张1111','17703786909','地址1去11111','顺丰快递','sf1648264256895',2,'<p>都是干湿</p>','2022-03-26 11:07:33','2022-04-01 00:00:00',1,'2022-03-26 11:07:33');

/*Table structure for table `zhongchou_collection` */

DROP TABLE IF EXISTS `zhongchou_collection`;

CREATE TABLE `zhongchou_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhongchou_id` int(11) DEFAULT NULL COMMENT '众筹',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhongchou_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='众筹收藏';

/*Data for the table `zhongchou_collection` */

insert  into `zhongchou_collection`(`id`,`zhongchou_id`,`yonghu_id`,`zhongchou_collection_types`,`insert_time`,`create_time`) values (6,1,1,1,'2022-03-25 21:55:08','2022-03-25 21:55:08');

/*Table structure for table `zhongchou_liuyan` */

DROP TABLE IF EXISTS `zhongchou_liuyan`;

CREATE TABLE `zhongchou_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhongchou_id` int(11) DEFAULT NULL COMMENT '众筹',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhongchou_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='众筹留言';

/*Data for the table `zhongchou_liuyan` */

insert  into `zhongchou_liuyan`(`id`,`zhongchou_id`,`yonghu_id`,`zhongchou_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (6,1,1,'111','2022-03-25 21:53:55',NULL,NULL,'2022-03-25 21:53:55'),(7,3,3,'2222','2022-03-26 11:12:03','232131321','2022-03-26 11:13:02','2022-03-26 11:12:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
