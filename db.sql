/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot9n107
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot9n107` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot9n107`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot9n107/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot9n107/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot9n107/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussxinwenxinxi` */

DROP TABLE IF EXISTS `discussxinwenxinxi`;

CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';

/*Data for the table `discussxinwenxinxi` */

insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-05-12 20:57:24',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (72,'2021-05-12 20:57:24',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (73,'2021-05-12 20:57:24',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (74,'2021-05-12 20:57:24',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (75,'2021-05-12 20:57:24',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (76,'2021-05-12 20:57:24',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jizhe` */

DROP TABLE IF EXISTS `jizhe`;

CREATE TABLE `jizhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='记者';

/*Data for the table `jizhe` */

insert  into `jizhe`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`sfsh`,`shhf`) values (21,'2021-05-12 20:57:24','1','1','姓名1','男','http://localhost:8080/springboot9n107/upload/jizhe_touxiang1.jpg','773890001@qq.com','13823888881','是','');
insert  into `jizhe`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`sfsh`,`shhf`) values (22,'2021-05-12 20:57:24','记者2','123456','姓名2','男','http://localhost:8080/springboot9n107/upload/jizhe_touxiang2.jpg','773890002@qq.com','13823888882','是','');
insert  into `jizhe`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`sfsh`,`shhf`) values (23,'2021-05-12 20:57:24','记者3','123456','姓名3','男','http://localhost:8080/springboot9n107/upload/jizhe_touxiang3.jpg','773890003@qq.com','13823888883','是','');
insert  into `jizhe`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`sfsh`,`shhf`) values (24,'2021-05-12 20:57:24','记者4','123456','姓名4','男','http://localhost:8080/springboot9n107/upload/jizhe_touxiang4.jpg','773890004@qq.com','13823888884','是','');
insert  into `jizhe`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`sfsh`,`shhf`) values (25,'2021-05-12 20:57:24','记者5','123456','姓名5','男','http://localhost:8080/springboot9n107/upload/jizhe_touxiang5.jpg','773890005@qq.com','13823888885','是','');
insert  into `jizhe`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`sfsh`,`shhf`) values (26,'2021-05-12 20:57:24','记者6','123456','姓名6','男','http://localhost:8080/springboot9n107/upload/jizhe_touxiang6.jpg','773890006@qq.com','13823888886','是','');

/*Table structure for table `shenpiyuan` */

DROP TABLE IF EXISTS `shenpiyuan`;

CREATE TABLE `shenpiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='审批员';

/*Data for the table `shenpiyuan` */

insert  into `shenpiyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (31,'2021-05-12 20:57:24','审批员1','123456','姓名1','男','http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `shenpiyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (32,'2021-05-12 20:57:24','审批员2','123456','姓名2','男','http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `shenpiyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (33,'2021-05-12 20:57:24','审批员3','123456','姓名3','男','http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `shenpiyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (34,'2021-05-12 20:57:24','审批员4','123456','姓名4','男','http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `shenpiyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (35,'2021-05-12 20:57:24','审批员5','123456','姓名5','男','http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `shenpiyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (36,'2021-05-12 20:57:24','审批员6','123456','姓名6','男','http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang6.jpg','773890006@qq.com','13823888886');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','mv9ptx7tkovzm1dcl3wsub8zmvxrbbt1','2021-05-12 21:00:02','2021-05-12 22:00:03');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 20:57:24');

/*Table structure for table `xinwenfenlei` */

DROP TABLE IF EXISTS `xinwenfenlei`;

CREATE TABLE `xinwenfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='新闻分类';

/*Data for the table `xinwenfenlei` */

insert  into `xinwenfenlei`(`id`,`addtime`,`xinwenfenlei`) values (41,'2021-05-12 20:57:24','新闻分类1');
insert  into `xinwenfenlei`(`id`,`addtime`,`xinwenfenlei`) values (42,'2021-05-12 20:57:24','新闻分类2');
insert  into `xinwenfenlei`(`id`,`addtime`,`xinwenfenlei`) values (43,'2021-05-12 20:57:24','新闻分类3');
insert  into `xinwenfenlei`(`id`,`addtime`,`xinwenfenlei`) values (44,'2021-05-12 20:57:24','新闻分类4');
insert  into `xinwenfenlei`(`id`,`addtime`,`xinwenfenlei`) values (45,'2021-05-12 20:57:24','新闻分类5');
insert  into `xinwenfenlei`(`id`,`addtime`,`xinwenfenlei`) values (46,'2021-05-12 20:57:24','新闻分类6');

/*Table structure for table `xinwenxinxi` */

DROP TABLE IF EXISTS `xinwenxinxi`;

CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xinwenshipin` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `sucailaiyuan` varchar(200) DEFAULT NULL COMMENT '素材来源',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `xinwenxinxi` */

insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenfenlei`,`fengmian`,`xinwenshipin`,`sucailaiyuan`,`faburiqi`,`xinwenneirong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (51,'2021-05-12 20:57:24','新闻标题1','新闻分类1','http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian1.jpg','','素材来源1','2021-05-12 20:57:24','新闻内容1','账号1','姓名1','是','',1,1,1);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenfenlei`,`fengmian`,`xinwenshipin`,`sucailaiyuan`,`faburiqi`,`xinwenneirong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (52,'2021-05-12 20:57:24','新闻标题2','新闻分类2','http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian2.jpg','','素材来源2','2021-05-12 20:57:24','新闻内容2','账号2','姓名2','是','',2,2,2);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenfenlei`,`fengmian`,`xinwenshipin`,`sucailaiyuan`,`faburiqi`,`xinwenneirong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (53,'2021-05-12 20:57:24','新闻标题3','新闻分类3','http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian3.jpg','','素材来源3','2021-05-12 20:57:24','新闻内容3','账号3','姓名3','是','',3,3,3);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenfenlei`,`fengmian`,`xinwenshipin`,`sucailaiyuan`,`faburiqi`,`xinwenneirong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (54,'2021-05-12 20:57:24','新闻标题4','新闻分类4','http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian4.jpg','','素材来源4','2021-05-12 20:57:24','新闻内容4','账号4','姓名4','是','',4,4,4);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenfenlei`,`fengmian`,`xinwenshipin`,`sucailaiyuan`,`faburiqi`,`xinwenneirong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (55,'2021-05-12 20:57:24','新闻标题5','新闻分类5','http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian5.jpg','','素材来源5','2021-05-12 20:57:24','新闻内容5','账号5','姓名5','是','',5,5,5);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenfenlei`,`fengmian`,`xinwenshipin`,`sucailaiyuan`,`faburiqi`,`xinwenneirong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (56,'2021-05-12 20:57:24','新闻标题6','新闻分类6','http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian6.jpg','','素材来源6','2021-05-12 20:57:24','新闻内容6','账号6','姓名6','是','',6,6,6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (11,'2021-05-12 20:57:24','1','1','姓名1','男','http://localhost:8080/springboot9n107/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (12,'2021-05-12 20:57:24','用户2','123456','姓名2','男','http://localhost:8080/springboot9n107/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (13,'2021-05-12 20:57:24','用户3','123456','姓名3','男','http://localhost:8080/springboot9n107/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (14,'2021-05-12 20:57:24','用户4','123456','姓名4','男','http://localhost:8080/springboot9n107/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (15,'2021-05-12 20:57:24','用户5','123456','姓名5','男','http://localhost:8080/springboot9n107/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (16,'2021-05-12 20:57:24','用户6','123456','姓名6','男','http://localhost:8080/springboot9n107/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
