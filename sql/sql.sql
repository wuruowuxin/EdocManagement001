/*
SQLyog Community v12.3.3 (64 bit)
MySQL - 5.1.47-community : Database - edocmanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `edocmanagement`;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`edocmanagement` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `edocmanagement`;

/*Table structure for table `edoc_category` */

DROP TABLE IF EXISTS `edoc_category`;

CREATE TABLE `edoc_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '分类编号,使用自动增长赋值',
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `edoc_category` */

insert  into `edoc_category`(`id`,`name`) values 
(1,'文学'),
(2,'艺术'),
(3,'自然科学'),
(4,'经济'),
(5,'军事'),
(6,'政治 法律');

/*Table structure for table `edoc_entry` */

DROP TABLE IF EXISTS `edoc_entry`;

CREATE TABLE `edoc_entry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文档编号,使用自动增长赋值',
  `categoryId` int(10) NOT NULL COMMENT '分类编号,对应分类表的主键',
  `title` varchar(255) NOT NULL COMMENT '文档名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '文档摘要',
  `uploadUser` varchar(255) DEFAULT NULL COMMENT '上传人',
  `createDate` date NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `edoc_entry_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `edoc_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `edoc_entry` */

insert  into `edoc_entry`(`id`,`categoryId`,`title`,`summary`,`uploadUser`,`createDate`) values 
(1,1,'傲慢与偏见','傲慢','lzl','2018-05-09'),
(2,5,'鹰击长空','翱翔天际','zx','2018-05-07'),
(3,3,'微观世界','显微镜下的','lsp','2018-05-08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
