/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - sweet_store
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sweet_store` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sweet_store`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) DEFAULT NULL,
  `brand_desc` varchar(100) DEFAULT NULL,
  `brand_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `brand` */

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `card_no` varchar(100) DEFAULT NULL,
  `card_name` varchar(100) DEFAULT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `card` */

insert  into `card`(`card_id`,`customer_id`,`card_no`,`card_name`,`expiry_date`) values 
(1,1,'1234567890123456','dfsgsge','2023-08');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `category_description` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`category_id`,`category_name`,`category_description`,`status`) values 
(1,'bags','dddzds1','1'),
(2,'jewllery','fghjkl','1');

/*Table structure for table `color` */

DROP TABLE IF EXISTS `color`;

CREATE TABLE `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(100) DEFAULT NULL,
  `color_desc` varchar(100) DEFAULT NULL,
  `color_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `color` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `complaint` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`customer_id`,`complaint`,`reply`,`date`) values 
(1,1,'good','ok','2023-01-10');

/*Table structure for table `courier` */

DROP TABLE IF EXISTS `courier`;

CREATE TABLE `courier` (
  `courier_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `courier_name` varchar(100) DEFAULT NULL,
  `courier_building_name` varchar(100) DEFAULT NULL,
  `courier_street` varchar(100) DEFAULT NULL,
  `courier_city` varchar(100) DEFAULT NULL,
  `courier_state` varchar(100) DEFAULT NULL,
  `courier_pincode` varchar(100) DEFAULT NULL,
  `courier_phone` varchar(100) DEFAULT NULL,
  `courier_email` varchar(100) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `courier_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`courier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `courier` */

insert  into `courier`(`courier_id`,`staff_id`,`username`,`courier_name`,`courier_building_name`,`courier_street`,`courier_city`,`courier_state`,`courier_pincode`,`courier_phone`,`courier_email`,`date_added`,`courier_status`) values 
(1,0,'hai@gmail.com','user qwerty1','xfdsgdsg1','xfdsgdsg1','ddgdsgdsg1','dgdsgd1','123456','0234567890','student1@gmail.com','2023-01-21','1');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `customer_fname` varchar(100) DEFAULT NULL,
  `customer_lname` varchar(100) DEFAULT NULL,
  `customer_houser_name` varchar(100) DEFAULT NULL,
  `customer_street` varchar(100) DEFAULT NULL,
  `customer_city` varchar(100) DEFAULT NULL,
  `customer_state` varchar(100) DEFAULT NULL,
  `customer_pincode` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`username`,`customer_fname`,`customer_lname`,`customer_houser_name`,`customer_street`,`customer_city`,`customer_state`,`customer_pincode`,`customer_phone`,`customer_email`,`customer_status`) values 
(1,'user@gmail.com','user','qwerty','xfdsgdsg','gsdgdsg','ddgdsgdsg','dgdsgd','123456','2345678907','student@gmail.com',0);

/*Table structure for table `delivery` */

DROP TABLE IF EXISTS `delivery`;

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_master_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `delivery_date` varchar(100) DEFAULT NULL,
  `status` varchar(41) DEFAULT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `delivery` */

insert  into `delivery`(`delivery_id`,`order_master_id`,`courier_id`,`delivery_date`,`status`) values 
(1,3,1,'2023-01-10','Delivered');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`user_type`,`status`) values 
('admin@gmail.com','admin','admin','1'),
('hai@gmail.com','hai','courier','1'),
('courier@gmail.com','cou','courier','1'),
('renuka@gmail.com','1234','staff','0'),
('user@gmail.com','user','customer','1');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_master_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `total_price` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `order_details` */

insert  into `order_details`(`order_details_id`,`order_master_id`,`product_id`,`quantity`,`total_price`) values 
(4,3,1,'201','120600'),
(3,2,1,'1','600'),
(5,4,2,'1','240');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `order_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `total_amount` int(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_master_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `order_master` */

insert  into `order_master`(`order_master_id`,`customer_id`,`total_amount`,`date`,`order_status`) values 
(2,1,600,'2023-01-10','paid'),
(3,1,120600,'2023-01-10','Delivered'),
(4,1,240,'2023-01-10','pending');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_master_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`order_master_id`,`amount`,`date`) values 
(1,2,'600','2023-01-10'),
(2,3,'120600','2023-01-10');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_description` varchar(100) DEFAULT NULL,
  `product_image` varchar(1000) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  `product_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`product_id`,`subcategory_id`,`product_name`,`product_description`,`product_image`,`stock`,`product_status`) values 
(1,1,'80oty91','nbmh j njj1','static/imagef30071dd-9086-42b3-b577-78c32efe05041992656.jpg','5000','1'),
(2,1,'uiuyiu','jiohjohy','static/image1416105b-42f1-4941-a15b-5e7eed64081ebackground-images-hd-1.webp','1','1');

/*Table structure for table `purchase_child` */

DROP TABLE IF EXISTS `purchase_child`;

CREATE TABLE `purchase_child` (
  `purchase_child_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_master_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `cost_price` varchar(100) DEFAULT NULL,
  `selling_price` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`purchase_child_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_child` */

insert  into `purchase_child`(`purchase_child_id`,`purchase_master_id`,`product_id`,`cost_price`,`selling_price`,`quantity`) values 
(1,1,1,'100100','600','201'),
(2,2,2,'600','240','3');

/*Table structure for table `purchase_master` */

DROP TABLE IF EXISTS `purchase_master`;

CREATE TABLE `purchase_master` (
  `purchase_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`purchase_master_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_master` */

insert  into `purchase_master`(`purchase_master_id`,`vendor_id`,`staff_id`,`total`,`status`,`date`) values 
(1,1,0,'100100','purchased','2023-01-08'),
(2,2,0,'600','purchased','2023-01-08');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `staff_fname` varchar(100) DEFAULT NULL,
  `staff_lname` varchar(100) DEFAULT NULL,
  `staff_house_name` varchar(100) DEFAULT NULL,
  `staff_street` varchar(100) DEFAULT NULL,
  `staff_city` varchar(100) DEFAULT NULL,
  `staff_state` varchar(100) DEFAULT NULL,
  `staff_pincode` varchar(100) DEFAULT NULL,
  `staff_phone` varchar(100) DEFAULT NULL,
  `staff_email` varchar(100) DEFAULT NULL,
  `staff_salary` varchar(100) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `staff_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`staff_id`,`username`,`staff_fname`,`staff_lname`,`staff_house_name`,`staff_street`,`staff_city`,`staff_state`,`staff_pincode`,`staff_phone`,`staff_email`,`staff_salary`,`date_added`,`staff_status`) values 
(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'renuka@gmail.com','user1','qwerty1','xfdsgdsg1','gsdgdsg1','ddgdsgdsg1','sdnsadas1','123456','1234567890','student1@gmail.com','5001','2023-01-22','0');

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(100) DEFAULT NULL,
  `subcategory_description` varchar(100) DEFAULT NULL,
  `sub_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`subcategory_id`,`category_id`,`subcategory_name`,`subcategory_description`,`sub_status`) values 
(1,1,'bag','dfghjk1','0'),
(2,2,'ring','fgfgfs','0');

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_building_name` varchar(100) DEFAULT NULL,
  `vendor_street` varchar(100) DEFAULT NULL,
  `vendor_city` varchar(100) DEFAULT NULL,
  `vendor_state` varchar(100) DEFAULT NULL,
  `vendor_pincode` varchar(100) DEFAULT NULL,
  `vendor_phone` varchar(100) DEFAULT NULL,
  `vendor_email` varchar(100) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `vendor_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `vendor` */

insert  into `vendor`(`vendor_id`,`staff_id`,`vendor_name`,`vendor_building_name`,`vendor_street`,`vendor_city`,`vendor_state`,`vendor_pincode`,`vendor_phone`,`vendor_email`,`date_added`,`vendor_status`) values 
(1,0,'user qwerty1','xfdsgdsg1','xfdsgdsg1','ddgdsgdsg1','dgdsgd1','123456','1234678901','student@gmail.com','2023-01-27','0'),
(2,0,'ujkuyky1','kjukyh1','jjkyuk1','jkjhkhjm1','jkjhkhj1','123456','1234560987','mkh@gmail.com','2023-01-08','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
