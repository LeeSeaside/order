/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17 : Database - sell
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sell` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sell`;

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `detail_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `order_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `product_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '当前价格,单位分',
  `product_quantity` int(11) NOT NULL COMMENT '数量',
  `product_icon` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '小图',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_detail` */

insert  into `order_detail`(`detail_id`,`order_id`,`product_id`,`product_name`,`product_price`,`product_quantity`,`product_icon`,`create_time`,`update_time`) values ('1585225728706632037','1585225728703632458','1585225005749425830','【招牌】单人套餐A','35.00',1,'https://p1.meituan.net/210.0/wmproduct/8732ded3ccfddb9e54aa3214d66bdf82628763.jpg','2020-03-26 20:28:47','2020-03-26 20:28:47'),('1585225809990379021','1585225809989132458','1585225122736471416','情侣双人套餐','57.00',1,'https://p0.meituan.net/210.0/wmproduct/5cbc413ad32e5cc5716d233c54ecb933529652.jpg','2020-03-26 20:30:08','2020-03-26 20:30:08'),('1585225869094134833','1585225869092175626','1585224599820615829','【招牌】韩式无骨炸鸡中份','29.00',1,'https://p0.meituan.net/210.0/wmproduct/f8e0099edb94feb9db177b894ceabddf1065162.png','2020-03-26 20:31:07','2020-03-26 20:31:07'),('1585225869098162600','1585225869092175626','1585224896682664436','【新品】小鸡腿*6','34.00',1,'https://p0.meituan.net/210.0/wmproduct/98c2bd998bd3ec92e2f049b7541cb906764683.jpg','2020-03-26 20:31:07','2020-03-26 20:31:07'),('1585225948977502254','1585225948975702577','1585225255566849701','炸鸡欢乐双拼（3-4人餐）','69.00',1,'https://p0.meituan.net/210.0/wmproduct/2af86a7d8fc54c0e70e5c97621300f5b565025.jpg','2020-03-26 20:32:27','2020-03-26 20:32:27'),('1585226022967200190','1585226022965155831','1585225122736471416','情侣双人套餐','57.00',1,'https://p0.meituan.net/210.0/wmproduct/5cbc413ad32e5cc5716d233c54ecb933529652.jpg','2020-03-26 20:33:41','2020-03-26 20:33:41'),('1585226022970666341','1585226022965155831','1585225184137878147','豪华三人套餐','70.00',1,'https://p0.meituan.net/210.0/wmproduct/15c0b99844b81e25920389c1742f8b31538180.jpg','2020-03-26 20:33:41','2020-03-26 20:33:41'),('1585226022974366134','1585226022965155831','1585225255566849701','炸鸡欢乐双拼（3-4人餐）','69.00',1,'https://p0.meituan.net/210.0/wmproduct/2af86a7d8fc54c0e70e5c97621300f5b565025.jpg','2020-03-26 20:33:41','2020-03-26 20:33:41'),('1585226102710984580','1585226102708879606','1585225184137878147','豪华三人套餐','70.00',1,'https://p0.meituan.net/210.0/wmproduct/15c0b99844b81e25920389c1742f8b31538180.jpg','2020-03-26 20:35:01','2020-03-26 20:35:01');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `order_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `buyer_name` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '买家地址',
  `buyer_openid` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '买家微信openid',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态, 默认为新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态, 默认未支付',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_master` */

insert  into `order_master`(`order_id`,`buyer_name`,`buyer_phone`,`buyer_address`,`buyer_openid`,`order_amount`,`order_status`,`pay_status`,`create_time`,`update_time`) values ('1585225728703632458','小黑','13114783698','黑皮俱乐部','abc123','35.00',0,0,'2020-03-26 20:28:47','2020-03-26 20:28:47'),('1585225809989132458','小海','13136981478','甜蜜小家','abc123','57.00',0,0,'2020-03-26 20:30:08','2020-03-26 20:30:08'),('1585225869092175626','小强','13114783698','文艺青年小窝','abc123','63.00',0,0,'2020-03-26 20:31:07','2020-03-26 20:31:07'),('1585225948975702577','老王','13114783698','宿舍宅男','abc123','69.00',0,0,'2020-03-26 20:32:27','2020-03-26 20:32:27'),('1585226022965155831','无名','13110103030','无名宅','abc123','196.00',0,0,'2020-03-26 20:33:41','2020-03-26 20:33:41'),('1585226102708879606','傻强','13174128963','文艺屋','abc123','70.00',0,0,'2020-03-26 20:35:01','2020-03-26 20:35:01');

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `product_category` */

insert  into `product_category`(`category_id`,`category_name`,`category_type`,`create_time`,`update_time`) values (1,'精致单人套餐【折扣】',1,'2019-12-30 11:06:31','2020-03-26 19:54:28'),(2,'乐享多人套餐【折扣】',2,'2019-12-30 11:38:40','2020-03-26 19:54:53'),(3,'【超值满减套餐】',3,'2020-01-02 20:03:54','2020-03-26 19:55:07'),(4,'【小吃系列】',4,'2020-01-02 20:53:55','2020-03-26 19:55:45'),(5,'饮品',5,'2020-03-26 00:16:39','2020-03-26 19:56:01');

/*Table structure for table `product_info` */

DROP TABLE IF EXISTS `product_info`;

CREATE TABLE `product_info` (
  `product_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态,0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `product_info` */

insert  into `product_info`(`product_id`,`product_name`,`product_price`,`product_stock`,`product_description`,`product_icon`,`product_status`,`category_type`,`create_time`,`update_time`) values ('1585224599820615829','【招牌】韩式无骨炸鸡中份','29.00',99,'韩式无骨炸鸡中份*8+韩式年糕*1份+饮品*1','https://p0.meituan.net/210.0/wmproduct/f8e0099edb94feb9db177b894ceabddf1065162.png',0,1,'2020-03-26 20:09:58','2020-03-26 20:31:07'),('1585224896682664436','【新品】小鸡腿*6','34.00',99,'小鸡腿*6','https://p0.meituan.net/210.0/wmproduct/98c2bd998bd3ec92e2f049b7541cb906764683.jpg',0,1,'2020-03-26 20:14:55','2020-03-26 20:31:07'),('1585225005749425830','【招牌】单人套餐A','35.00',99,'韩式无骨炸鸡*8+翅中*1+翅根*1+小吃*1+饮品*1','https://p1.meituan.net/210.0/wmproduct/8732ded3ccfddb9e54aa3214d66bdf82628763.jpg',0,1,'2020-03-26 20:16:44','2020-03-26 20:28:47'),('1585225122736471416','情侣双人套餐','57.00',98,'韩式无骨炸鸡*8+中翅*1+翅根*1+田园鸡腿堡*2+小吃*2+饮品*2','https://p0.meituan.net/210.0/wmproduct/5cbc413ad32e5cc5716d233c54ecb933529652.jpg',0,2,'2020-03-26 20:18:41','2020-03-26 20:33:41'),('1585225184137878147','豪华三人套餐','70.00',98,'无骨炸鸡大份*13+翅中*2+翅根*4+全翅*1+饮品*3','https://p0.meituan.net/210.0/wmproduct/15c0b99844b81e25920389c1742f8b31538180.jpg',0,2,'2020-03-26 20:19:42','2020-03-26 20:35:01'),('1585225255566849701','炸鸡欢乐双拼（3-4人餐）','69.00',98,'韩式无骨炸鸡*13+中翅*2+翅根*2+全翅*1+大脸鸡排1份+饮品*2','https://p0.meituan.net/210.0/wmproduct/2af86a7d8fc54c0e70e5c97621300f5b565025.jpg',0,2,'2020-03-26 20:20:54','2020-03-26 20:33:41');

/*Table structure for table `seller_info` */

DROP TABLE IF EXISTS `seller_info`;

CREATE TABLE `seller_info` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `username` varchar(32) COLLATE utf8_bin NOT NULL,
  `password` varchar(32) COLLATE utf8_bin NOT NULL,
  `openid` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '微信openid',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='卖家信息表';

/*Data for the table `seller_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
