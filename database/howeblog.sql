/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.20 : Database - howeblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`howeblog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `howeblog`;

/*Table structure for table `articleinfo` */

DROP TABLE IF EXISTS `articleinfo`;

CREATE TABLE `articleinfo` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `imgflag` tinyint(1) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `articleinfo` */

insert  into `articleinfo`(`id`,`title`,`summary`,`imgflag`,`imgUrl`) values 
(1,'你好，我是React','React 是一个声明式，高效且灵活的用于构建用户界面的 JavaScript 库。使用 React 可以将一些简短、独立的代码片段组合成复杂的 UI 界面，这些代码片段被称作“组件”。',1,'https://p1.music.126.net/ONBvYa_yYg6QWEEn9KmWoQ==/109951164867829503.jpg'),
(2,'《浮生六记》：想把我一生的温柔都说与你听','初遇沈复，是在初中的语文课本里。那时的他，充满童真童趣。在他眼里，夏日令人烦心的蚊子也如仙鹤舞空般灵动，看两只小虫打架也如观古代武将马上单挑般津...',0,NULL),
(3,'重温《围城》：年少读不懂，读懂已是主人公','婚姻是一座围城，城外的人想进去，城里的人想出来。——钱钟书《围城》 一句国人耳熟能详的话，一部世人皆知的文学作品《围城》，半个多世纪以来，竟轻而...',1,'https://upload-images.jianshu.io/upload_images/10167110-13b4437b0854b7f0?imageMogr2/auto-orient/strip|imageView2/1/w/360/h/240');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `telPhone` varchar(255) DEFAULT NULL,
  `registerTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`userName`,`password`,`avatar`,`telPhone`,`registerTime`) values 
(1,'howe','123456','http://img3.imgtn.bdimg.com/it/u=2323448584,1901806433&fm=26&gp=0.jpg','13229451625','2020-07-17 16:31:40.000000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
