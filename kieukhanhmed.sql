-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: kieukhanhmed
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `status` int(2) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'/uploads/images/10557534981c51f2fd1deef9b0a0ff-300x199.jpg',NULL,NULL,NULL,NULL,'2020-01-18 11:10:33','2020-01-18 11:10:33');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_ads`
--

DROP TABLE IF EXISTS `banner_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_ads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_ads`
--

LOCK TABLES `banner_ads` WRITE;
/*!40000 ALTER TABLE `banner_ads` DISABLE KEYS */;
INSERT INTO `banner_ads` VALUES (4,'http://127.0.0.1:8000/','[{\"lang_code\":\"vi\",\"content\":null}]','[{\"lang_code\":\"vi\",\"content\":null}]','http1270018000',1,'/uploads/images/banner--1589211632.png','2022-04-12 21:06:22','2022-04-19 08:36:13'),(5,'http://127.0.0.1:8000/','[{\"lang_code\":\"vi\",\"content\":null}]','[{\"lang_code\":\"vi\",\"content\":null}]','http1270018000',1,'/uploads/images/banner--962868341.jpg','2022-04-12 21:06:29','2022-04-19 08:36:07'),(6,'http://127.0.0.1:8000/','[{\"lang_code\":\"vi\",\"content\":null}]','[{\"lang_code\":\"vi\",\"content\":null}]','http1270018000',1,'/uploads/images/banner--202174689.png','2022-04-12 21:06:35','2022-04-19 08:36:00'),(7,'http://127.0.0.1:8000/','[{\"lang_code\":\"vi\",\"content\":null}]','[{\"lang_code\":\"vi\",\"content\":null}]','http1270018000',1,'/uploads/images/banner--1208621444.png','2022-04-12 21:06:42','2022-04-19 08:35:55');
/*!40000 ALTER TABLE `banner_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `status` int(2) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'http://kieukhanhmed.com/uploads/images/banner-trang-chu-1357393816.png',NULL,NULL,1,NULL,'2023-02-08 05:06:36','2023-02-08 05:06:36'),(2,'http://kieukhanhmed.com/uploads/images/banner-trang-chu-486749928.png',NULL,NULL,1,NULL,'2023-02-08 05:06:36','2023-02-08 05:06:36'),(3,'http://kieukhanhmed.com/uploads/images/banner-trang-chu-1490309863.png',NULL,NULL,1,NULL,'2023-02-08 05:06:36','2023-02-08 05:06:36');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code_bill` varchar(255) DEFAULT NULL,
  `code_customer` varchar(255) DEFAULT NULL,
  `total_money` int(11) DEFAULT '0',
  `statu` int(11) DEFAULT '0' COMMENT '0-chờ kiêm 1-đã thanh toán 2-đang vận chuyển 3-hoàn tất 4-đơn hàng đã hủy',
  `note` text,
  `promotion` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `transport_price` int(11) NOT NULL DEFAULT '0',
  `cus_name` varchar(255) DEFAULT NULL,
  `cus_phone` varchar(255) DEFAULT NULL,
  `cus_email` varchar(255) DEFAULT NULL,
  `cus_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (2,'6265006','0',NULL,0,'ac',NULL,NULL,0,'Lê Anh','0373631368',NULL,'Uy bắc, quảng ngọc, quảng xương, thanh hóa','2021-12-24 09:13:12','2021-12-24 09:13:12'),(7,'1175023483','0',NULL,1,'nhanh nhé',NULL,NULL,0,'Máy tính','0373631368',NULL,'Uy bắc, quảng ngọc, quảng xương, thanh hóa','2022-03-06 11:15:44','2022-03-06 11:16:09'),(17,'2017155507','0',NULL,1,'aa',NULL,NULL,0,'Lê Anh','123123',NULL,'12 Triều khúc','2022-03-06 11:23:38','2022-03-06 11:23:51'),(18,'1820576917','0',NULL,0,'fadfa',NULL,NULL,0,'Lê Anhấda','aa',NULL,'12 Triều khúc','2022-03-06 11:25:58','2022-03-06 11:25:58'),(19,'74481908','0',NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2022-04-19 07:49:18','2022-04-19 07:49:18'),(20,'309392039','0',NULL,0,'các',NULL,NULL,0,'bún đậu lynh','0373631368',NULL,'aca','2022-04-19 07:51:44','2022-04-19 07:51:44'),(21,'227194608','0',NULL,0,'a',NULL,NULL,0,'bún đậu lynh','0373631368',NULL,'a','2022-04-19 07:57:01','2022-04-19 07:57:01'),(22,'1117937545','0',NULL,0,'hang cam',NULL,NULL,0,'tien','0777456456','nguyen@gmail.com','4','2022-07-15 21:24:18','2022-07-15 21:24:18');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code_bill` varchar(255) DEFAULT NULL,
  `code_product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` VALUES (1,'6265006','5',1,'Đá hoa cương đẹp màu vàng',1800000,NULL,'/uploads/images/da-hoa-cuong-dep-mau-vang-4471667.jpg','2021-12-24 09:13:12','2021-12-24 09:13:12'),(2,'1175023483','1',5,'[{\"lang_code\":\"vi\",\"content\":\"Dell Inspiron 5447 | i7 4510U | RAM 4GB |HDD 500GB\"}]',9000000,NULL,'/uploads/images/san-pham-628152482.jpg','2022-03-06 11:15:44','2022-03-06 11:15:44'),(3,'2017155507','1',1,'Dell Inspiron 5447 | i7 4510U | RAM 4GB |HDD 500GB',9000000,NULL,'/uploads/images/san-pham-628152482.jpg','2022-03-06 11:23:38','2022-03-06 11:23:38'),(4,'2017155507','2',1,'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB',8000000,NULL,'/uploads/images/san-pham-400270873.jpg','2022-03-06 11:23:38','2022-03-06 11:23:38'),(5,'1820576917','1',1,'Dell Inspiron 5447 | i7 4510U | RAM 4GB |HDD 500GB',9000000,NULL,'/uploads/images/san-pham-628152482.jpg','2022-03-06 11:25:58','2022-03-06 11:25:58'),(6,'1820576917','2',1,'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB',8000000,NULL,'/uploads/images/san-pham-400270873.jpg','2022-03-06 11:25:58','2022-03-06 11:25:58'),(7,'74481908','2',1,'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB',8000000,NULL,'/uploads/images/san-pham-400270873.jpg','2022-04-19 07:49:18','2022-04-19 07:49:18'),(8,'309392039','2',1,'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB',8000000,NULL,'/uploads/images/san-pham-400270873.jpg','2022-04-19 07:51:44','2022-04-19 07:51:44'),(9,'227194608','2',1,'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB',8000000,NULL,'/uploads/images/san-pham-400270873.jpg','2022-04-19 07:57:01','2022-04-19 07:57:01'),(10,'1117937545','1',2,'MIDUKAMA HL6500E',1600000,10,'/uploads/images/san-pham-654704490.jpg','2022-07-15 21:24:18','2022-07-15 21:24:18'),(11,'1117937545','2',1,'Cửa cuốn xuyên sáng A48iPC',5000000,15,'/uploads/images/san-pham-568582116.jpg','2022-07-15 21:24:18','2022-07-15 21:24:18');
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` text,
  `slug` text,
  `path` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (5,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"Tin T\\u1ee9c\"}]','tin-tuc',NULL,1,NULL,'2023-02-08 04:10:32','2023-02-08 04:10:32'),(6,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"Tuy\\u1ec3n d\\u1ee5ng\"}]','tuyen-dung',NULL,1,NULL,'2023-02-08 04:10:46','2023-02-08 04:10:46');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_type_category`
--

DROP TABLE IF EXISTS `blog_type_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_type_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_type_category`
--

LOCK TABLES `blog_type_category` WRITE;
/*!40000 ALTER TABLE `blog_type_category` DISABLE KEYS */;
INSERT INTO `blog_type_category` VALUES (1,'[{\"lang_code\":\"vi\",\"content\":\"Tin t\\u1ee9c chuy\\u00ean ngh\\u00e0nh\"}]','tin-tuc-chuyen-nghanh',NULL,'tin-tuc',1,'2022-03-02 02:27:08','2022-03-02 02:27:08'),(2,'[{\"lang_code\":\"vi\",\"content\":\"Tin t\\u1ee9c n\\u1ed5i b\\u1eadt\"}]','tin-tuc-noi-bat',NULL,'tin-tuc',1,'2022-03-02 02:27:20','2022-03-02 02:27:20');
/*!40000 ALTER TABLE `blog_type_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `description` longtext,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `type_news` varchar(255) DEFAULT NULL,
  `home_status` int(2) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `cate_product` int(11) DEFAULT NULL,
  `type_cate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (7,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"8 QUY T\\u1eaeC GI\\u00daP M\\u1eaeT KH\\u1eceE D\\u00d9 NH\\u00ccN M\\u00c1Y T\\u00cdNH NHI\\u1ec0U\"}]','[{\"lang_code\":\"vi\",\"content\":\"<h2 id=\\\"ftoc-heading-1\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>Gi\\u1ea3m l\\u01b0\\u1ee3ng b\\u1ee9c x\\u1ea1 t\\u1eeb m&agrave;n h&igrave;nh&nbsp;<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">&Aacute;nh s&aacute;ng t\\u1eeb m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh n\\u1ebfu chi\\u1ebfu tr\\u1ef1c ti\\u1ebfp v&agrave;o m\\u1eaft s\\u1ebd khi\\u1ebfn m\\u1eaft kh&oacute; ch\\u1ecbu v&agrave; c\\u0103ng th\\u1eb3ng. V&igrave; v\\u1eady, \\u0111\\u1ec3 gi\\u1ea3m l\\u01b0\\u1ee3ng b\\u1ee9c x\\u1ea1 t\\u1eeb m&agrave;n h&igrave;nh, v\\u1ecb tr&iacute; m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh n&ecirc;n \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t c&aacute;ch m\\u1eaft 50 \\u0111\\u1ebfn 60 cm ho\\u1eb7c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u1ed9 s&aacute;ng m&agrave;n h&igrave;nh, ho\\u1eb7c \\u0111\\u1eb7t th&ecirc;m k&iacute;nh l\\u1ecdc tr\\u01b0\\u1edbc m&agrave;n h&igrave;nh \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o kh&ocirc;ng \\u1ea3nh h\\u01b0\\u1edfng qu&aacute; nhi\\u1ec1u \\u0111\\u1ebfn m\\u1eaft.<\\/p>\\n<p style=\\\"text-align: justify;\\\">S\\u1eed d\\u1ee5ng m&agrave;n h&igrave;nh tinh th\\u1ec3 l\\u1ecfng (LCD) c\\u0169ng t\\u1ed1t h\\u01a1n cho m\\u1eaft c\\u1ee7a b\\u1ea1n.<\\/p>\\n<div id=\\\"attachment_46627\\\" class=\\\"wp-caption aligncenter\\\" style=\\\"text-align: justify;\\\"><img class=\\\"wp-image-46627 size-full\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/hongngochospital.vn\\/wp-content\\/uploads\\/2013\\/11\\/bao-ve-mat-1.jpg\\\" alt=\\\"quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe\\\" width=\\\"80%\\\" height=\\\"auto\\\" aria-describedby=\\\"caption-attachment-46627\\\" \\/>\\n<p id=\\\"caption-attachment-46627\\\" class=\\\"wp-caption-text\\\" style=\\\"text-align: center;\\\"><em>Ng\\u1ed3i tr\\u01b0\\u1edbc m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh nhi\\u1ec1u g&acirc;y n&ecirc;n c&aacute;c v\\u1ea5n \\u0111\\u1ec1 v\\u1ec1 m\\u1eaft<\\/em><\\/p>\\n<\\/div>\\n<h2 id=\\\"ftoc-heading-2\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>Tr&aacute;nh l&agrave;m vi\\u1ec7c trong ph&ograve;ng t\\u1ed1i<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">L&agrave;m vi\\u1ec7c trong ph&ograve;ng t\\u1ed1i s\\u1ebd khi\\u1ebfn m\\u1eaft b\\u1ea1n m\\u1ec7t m\\u1ecfi v&igrave; m\\u1eaft c&ugrave;ng l&uacute;c ph\\u1ea3i \\u0111i\\u1ec1u ti\\u1ebft \\u0111\\u1ec3 ph&ugrave; h\\u1ee3p v\\u1edbi \\u0111\\u1ed9 s&aacute;ng c\\u1ee7a m&agrave;n h&igrave;nh v&agrave; b&oacute;ng t\\u1ed1i c\\u1ee7a m&ocirc;i tr\\u01b0\\u1eddng xung quanh. Theo c&aacute;c chuy&ecirc;n gia, n\\u1ebfu l&agrave;m vi\\u1ec7c v\\u1edbi m&aacute;y t&iacute;nh hay \\u0111\\u1ecdc s&aacute;ch \\u0111i\\u1ec7n t\\u1eed, b\\u1ea1n n&ecirc;n ng\\u1ed3i trong ph&ograve;ng s&aacute;ng, t\\u1ed1t nh\\u1ea5t l&agrave; n\\u01a1i c&oacute; &aacute;nh s&aacute;ng t\\u1ef1 nhi&ecirc;n.&nbsp;<\\/p>\\n<h2 id=\\\"ftoc-heading-3\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe: \\u0110\\u1eebng ng\\u1ed3i m&atilde;i m\\u1ed9t ch\\u1ed7<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Gi\\u1eef \\u0111\\u1ea7u v&agrave; c\\u1ed5 \\u1edf m\\u1ed9t v\\u1ecb tr&iacute; qu&aacute; l&acirc;u, nh\\u1ea5t l&agrave; khi b\\u1ea1n l&agrave;m vi\\u1ec7c v\\u1edbi m&aacute;y t&iacute;nh hay s\\u1eed d\\u1ee5ng c&aacute;c thi\\u1ebft b\\u1ecb c&ocirc;ng ngh\\u1ec7 th&ocirc;ng tin, th\\u01b0\\u1eddng d\\u1eabn \\u0111\\u1ebfn \\u0111au nh\\u1ee9c \\u1edf c\\u1ed5 ho\\u1eb7c&nbsp;\\u0111au \\u0111\\u1ea7u. Ng\\u1ed3i th\\u1eb3ng l\\u01b0ng, kh&ocirc;ng n&ecirc;n ng\\u1ed3i m&atilde;i m\\u1ed9t ch\\u1ed7. Th\\u1ec9nh tho\\u1ea3ng b\\u1ea1n n&ecirc;n \\u0111\\u1ee9ng l&ecirc;n, \\u0111i l\\u1ea1i ho\\u1eb7c ng\\u1ed3i t\\u1eadp v\\u1edbi m\\u1ed9t qu\\u1ea3 banh l\\u1edbn \\u0111\\u1ec3 gi&uacute;p c&aacute;c c\\u01a1 b\\u1eafp ho\\u1ea1t \\u0111\\u1ed9ng.&nbsp;<\\/p>\\n<h2 id=\\\"ftoc-heading-4\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>\\u0110o kh&aacute;m m\\u1eaft th\\u01b0\\u1eddng xuy&ecirc;n<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">N\\u1ebfu b\\u1ea1n nh&igrave;n tr&ecirc;n m&agrave;n h&igrave;nh m&agrave; th\\u1ea5y kh&ocirc;ng r&otilde; ch\\u1eef th&igrave; c&oacute; th\\u1ec3 s\\u1ebd g&acirc;y c\\u0103ng th\\u1eb3ng cho m\\u1eaft ho\\u1eb7c \\u0111au \\u0111\\u1ea7u. Tr\\u01b0\\u1edbc h\\u1ebft, b\\u1ea1n c\\u1ea7n \\u0111\\u1ea3m b\\u1ea3o r\\u1eb1ng m&agrave;n h&igrave;nh \\u0111\\u01b0\\u1ee3c c&aacute;ch m\\u1eaft 50-60cm. Kho\\u1ea3ng c&aacute;ch n&agrave;y gi&uacute;p m\\u1eaft c\\u1ea3m th\\u1ea5y d\\u1ec5 ch\\u1ecbu v&agrave; tho\\u1ea3i m&aacute;i h\\u01a1n. N\\u1ebfu \\u0111&atilde; thay \\u0111\\u1ed5i kho\\u1ea3ng c&aacute;ch gi\\u1eefa m&agrave;n h&igrave;nh v\\u1edbi m\\u1eaft m&agrave; c&aacute;c v\\u1ea5n \\u0111\\u1ec1 v\\u1ec1 m\\u1eaft v\\u1eabn c&ograve;n thi b\\u1ea1n n&ecirc;n \\u0111i kh&aacute;m b&aacute;c s\\u0129 chuy&ecirc;n khoa m\\u1eaft \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u tr\\u1ecb.<\\/p>\\n<p style=\\\"text-align: center;\\\">Nh\\u1eefng ng\\u01b0\\u1eddi th\\u01b0\\u1eddng xuy&ecirc;n ti\\u1ebfp x&uacute;c v\\u1edbi m&aacute;y t&iacute;nh v&agrave; c&ocirc;ng ngh\\u1ec7 th&ocirc;ng tin, d\\u1ec5 b\\u1ecb nguy c\\u01a1 t\\u1eadt kh&uacute;c x\\u1ea1 v&agrave; c\\u1ea7n ph\\u1ea3i \\u0111o kh&aacute;m kh&uacute;c x\\u1ea1 \\u0111\\u1ec3 ch\\u1ecdn lo\\u1ea1i k&iacute;nh m\\u1eaft ph&ugrave; h\\u1ee3p.<\\/p>\\n<div id=\\\"attachment_46626\\\" class=\\\"wp-caption aligncenter\\\" style=\\\"text-align: center;\\\"><img class=\\\"wp-image-46626\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/hongngochospital.vn\\/wp-content\\/uploads\\/2013\\/11\\/bao-ve-mat.jpg\\\" alt=\\\"\\\" width=\\\"80%\\\" height=\\\"auto\\\" loading=\\\"lazy\\\" aria-describedby=\\\"caption-attachment-46626\\\" \\/>\\n<p id=\\\"caption-attachment-46626\\\" class=\\\"wp-caption-text\\\"><em>Th\\u01b0\\u1eddng xuy&ecirc;n s\\u1eed d\\u1ee5ng n\\u01b0\\u1edbc m\\u1eaft nh&acirc;n t\\u1ea1o \\u0111\\u1ec3 d\\u01b0\\u1ee1ng m\\u1eaft<\\/em><\\/p>\\n<\\/div>\\n<h2 id=\\\"ftoc-heading-5\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: center;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>D&ugrave;ng n\\u01b0\\u1edbc m\\u1eaft nh&acirc;n t\\u1ea1o&nbsp;<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Nh\\u1eefng ng\\u01b0\\u1eddi t\\u1eeb 40 tu\\u1ed5i th\\u01b0\\u1eddng hay g\\u1eb7p tri\\u1ec7u ch\\u1ee9ng kh&ocirc; m\\u1eaft n\\u1ebfu h\\u1ecd th\\u01b0\\u1eddng xuy&ecirc;n l&agrave;m vi\\u1ec7c v\\u1edbi&nbsp;m&aacute;y t&iacute;nh. Theo c&aacute;c chuy&ecirc;n gia, vi\\u1ec7c &iacute;t ch\\u1edbp m\\u1eaft khi b\\u1ea1n th\\u01b0\\u1eddng xuy&ecirc;n nh&igrave;n ch\\u1eb1m ch\\u1eb1m v&agrave;o m&agrave;n h&igrave;nh ho\\u1eb7c \\u0111\\u1ecdc s&aacute;ch, b&aacute;o s\\u1ebd khi\\u1ebfn m\\u1eaft d\\u1ec5 b\\u1ecb kh&ocirc;. B\\u1ea1n n&ecirc;n d&ugrave;ng n\\u01b0\\u1edbc m\\u1eaft nh&acirc;n t\\u1ea1o \\u0111\\u1ec3 tr&aacute;nh t&igrave;nh tr\\u1ea1ng kh&ocirc; m\\u1eaft, v&agrave; \\u0111\\u1ec3 m\\u1eaft ngh\\u1ec9 ng\\u01a1i, tr&aacute;nh nh&igrave;n m&agrave;n h&igrave;nh m\\u1ed7i 20 ph&uacute;t.<\\/p>\\n<h2 id=\\\"ftoc-heading-6\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>&Aacute;p d\\u1ee5ng quy t\\u1eafc 20-20-20&nbsp;<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Sau khi s\\u1eed d\\u1ee5ng m&aacute;y t&iacute;nh trong nhi\\u1ec1u gi\\u1edd, m\\u1eaft th\\u01b0\\u1eddng c\\u1ea3m th\\u1ea5y m\\u1ec7t m\\u1ecfi v&igrave; c&aacute;c c\\u01a1 ph\\u1ea3i ho\\u1ea1t \\u0111\\u1ed9ng li&ecirc;n t\\u1ee5c trong th\\u1eddi gian d&agrave;i \\u0111\\u1ec3 nh\\u1eadn bi\\u1ebft v&agrave; quan s&aacute;t nhi\\u1ec1u h&igrave;nh d\\u1ea1ng, m&agrave;u s\\u1eafc kh&aacute;c nhau. Theo c&aacute;c chuy&ecirc;n gia t\\u01b0 v\\u1ea5n, b\\u1ea1n n&ecirc;n &aacute;p d\\u1ee5ng quy t\\u1eafc 20-20-20: \\u0111&oacute; l&agrave; c\\u1ee9 sau 20 ph&uacute;t l&agrave;m vi\\u1ec7c v\\u1edbi m&aacute;y t&iacute;nh, h&atilde;y nh&igrave;n v&agrave;o m\\u1ed9t v\\u1eadt n&agrave;o \\u0111&oacute; trong 20 gi&acirc;y \\u1edf c&aacute;ch xa 6m. S\\u1ef1 ngh\\u1ec9 ng\\u01a1i n&agrave;y s\\u1ebd gi&uacute;p m\\u1eaft v&agrave; h\\u1ec7 th\\u1ea7n kinh \\u0111\\u01b0\\u1ee3c th\\u01b0 gi&atilde;n.<\\/p>\\n<h2 id=\\\"ftoc-heading-7\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>D&agrave;nh th\\u1eddi gian t\\u0129nh t&acirc;m<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Theo c&aacute;c nghi&ecirc;n c\\u1ee9u, vi\\u1ec7c s\\u1eed d\\u1ee5ng m&aacute;y t&iacute;nh th\\u01b0\\u1eddng xuy&ecirc;n c&oacute; th\\u1ec3 d\\u1eabn \\u0111\\u1ebfn s\\u1ef1 gia t\\u0103ng s\\u1ea3n xu\\u1ea5t cortisol, m\\u1ed9t hormone g&acirc;y stress. M\\u1ee9c cortisol cao, s\\u1ebd k&eacute;o theo c&aacute;c v\\u1ea5n \\u0111\\u1ec1 li&ecirc;n quan \\u0111\\u1ebfn m\\u1ea5t ng\\u1ee7, ADHD, lo l\\u1eafng, tr\\u1ea7m c\\u1ea3m. B&aacute;c s\\u0129 t\\u01b0 v\\u1ea5n h&atilde;y \\u0111\\u1ec3 h\\u1ec7 th\\u1ea7n kinh c\\u1ee7a b\\u1ea1n \\u0111\\u01b0\\u1ee3c ngh\\u1ec9 ng\\u01a1i, t\\u0129nh t&acirc;m b\\u1eb1ng c&aacute;ch th\\u1ef1c h&agrave;nh yoga, ng\\u1ed3i thi\\u1ec1n ho\\u1eb7c \\u0111i d\\u1ea1o&hellip;<\\/p>\\n<h2 id=\\\"ftoc-heading-8\\\" class=\\\"ftwp-heading\\\" style=\\\"text-align: justify;\\\"><strong>Quy t\\u1eafc gi&uacute;p m\\u1eaft kh\\u1ecfe:&nbsp;<\\/strong><strong>Kh&ocirc;ng nh&igrave;n m&agrave;n h&igrave;nh tr\\u01b0\\u1edbc khi ng\\u1ee7<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Con ng\\u01b0\\u1eddi ch&uacute;ng ta \\u0111&atilde; \\u0111\\u01b0\\u1ee3c &ldquo;l\\u1eadp tr&igrave;nh&rdquo; \\u0111\\u1ec3 ho\\u1ea1t \\u0111\\u1ed9ng v&agrave;o ban ng&agrave;y v&agrave; ng\\u1ee7 ngh\\u1ec9 v&agrave;o ban \\u0111&ecirc;m. Theo c&aacute;c b&aacute;c s\\u0129, n\\u1ebfu nh&igrave;n m&agrave;n h&igrave;nh c&aacute;c thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 s\\u1ebd k&iacute;ch th&iacute;ch tinh th\\u1ea7n v&agrave; g&acirc;y ra c&aacute;c v\\u1ea5n \\u0111\\u1ec1 v\\u1ec1&nbsp;gi\\u1ea5c ng\\u1ee7. T\\u1ed1t nh\\u1ea5t b\\u1ea1n n&ecirc;n t\\u1eaft c&aacute;c thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed &iacute;t nh\\u1ea5t hai gi\\u1edd tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 \\u0111\\u1ec3 m\\u1eaft c\\u1ea3m th\\u1ea5y d\\u1ec5 ng\\u1ee7.<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"\\u00c1nh s\\u00e1ng t\\u1eeb m\\u00e0n h\\u00ecnh m\\u00e1y t\\u00ednh n\\u1ebfu chi\\u1ebfu tr\\u1ef1c ti\\u1ebfp v\\u00e0o m\\u1eaft s\\u1ebd khi\\u1ebfn m\\u1eaft kh\\u00f3 ch\\u1ecbu v\\u00e0 c\\u0103ng th\\u1eb3ng. V\\u00ec v\\u1eady, \\u0111\\u1ec3 gi\\u1ea3m l\\u01b0\\u1ee3ng b\\u1ee9c x\\u1ea1 t\\u1eeb m\\u00e0n h\\u00ecnh, v\\u1ecb tr\\u00ed m\\u00e0n h\\u00ecnh m\\u00e1y t\\u00ednh n\\u00ean \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t c\\u00e1ch m\\u1eaft 50 \\u0111\\u1ebfn 60 cm ho\\u1eb7c b\\u1ea1n c\\u0169ng c\\u00f3 th\\u1ec3 \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u1ed9 s\\u00e1ng m\\u00e0n h\\u00ecnh\"}]','8-quy-tac-giup-mat-khoe-du-nhin-may-tinh-nhieu',1,NULL,1,'http://kieukhanhmed.com/uploads/images/blog-1762499410.jpg','admins','tin-tuc',0,NULL,'2023-02-06 01:18:10','2023-02-08 04:11:07'),(8,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"NH\\u1ece M\\u1eaeT TR\\u01af\\u1edaC KHI \\u0110I NG\\u1ee6 C\\u00d3 T\\u1ed0T KH\\u00d4NG\"}]','[{\"lang_code\":\"vi\",\"content\":\"<h2 style=\\\"text-align: justify;\\\"><strong>1\\/ C&oacute; n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 kh&ocirc;ng?<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Li\\u1ec7u&nbsp;<strong>c&oacute; n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi ng\\u1ee7<\\/strong>&nbsp;kh&ocirc;ng th&igrave; c&acirc;u tr\\u1ea3 l\\u1eddi l&agrave; C&Oacute; b\\u1edfi m\\u1ed9t s\\u1ed1 l\\u1ee3i &iacute;ch tuy\\u1ec7t v\\u1eddi sau \\u0111&acirc;y:<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Giam_kha_nang_thuoc_bi_day_ra_ngoai\\\" class=\\\"ez-toc-section\\\"><\\/span>Gi\\u1ea3m kh\\u1ea3 n\\u0103ng thu\\u1ed1c b\\u1ecb \\u0111\\u1ea9y ra ngo&agrave;i<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 s\\u1ebd gi&uacute;p b\\u1ea1n c&oacute; t\\u01b0 th\\u1ebf n\\u1eb1m tho\\u1ea3i m&aacute;i, t\\u1ea1o \\u0111i\\u1ec1u ki\\u1ec7n cho m\\u1eaft nh\\u1eafm gi&uacute;p cho l\\u01b0\\u1ee3ng thu\\u1ed1c \\u0111\\u01b0a v&agrave;o m\\u1eaft &iacute;t ch\\u1ea3y ra ngo&agrave;i h\\u01a1n so v\\u1edbi vi\\u1ec7c b\\u1ea1n ti\\u1ebfp t\\u1ee5c ho\\u1ea1t \\u0111\\u1ed9ng sau \\u0111&oacute;.&nbsp;<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Tang_thoi_gian_hap_thu_cua_thuoc\\\" class=\\\"ez-toc-section\\\"><\\/span>T\\u0103ng th\\u1eddi gian h\\u1ea5p th\\u1ee5 c\\u1ee7a thu\\u1ed1c<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Thu\\u1ed1c c\\u1ea7n c&oacute; th\\u1eddi gian nh\\u1ea5t \\u0111\\u1ecbnh \\u0111\\u1ec3 h\\u1ea5p th\\u1ee5 v&agrave;o m\\u1eaft. V&igrave; v\\u1eady, v\\u1edbi m\\u1ed9t gi\\u1ea5c ng\\u1ee7 sau \\u0111&oacute;, m\\u1eaft b\\u1ea1n nh\\u1eafm l\\u1ea1i trong 1 kho\\u1ea3ng th\\u1eddi gian \\u0111\\u1ee7 d&agrave;i s\\u1ebd gi&uacute;p t\\u0103ng c\\u01b0\\u1eddng kh\\u1ea3 n\\u0103ng h\\u1ea5p th\\u1ee5 thu\\u1ed1c cho m\\u1eaft hi\\u1ec7u qu\\u1ea3 h\\u01a1n.<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Tam_ly_thoai_mai\\\" class=\\\"ez-toc-section\\\"><\\/span>T&acirc;m l&yacute; tho\\u1ea3i m&aacute;i&nbsp;<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Kh&ocirc;ng th\\u1ec3 ph\\u1ee7 nh\\u1eadn \\u0111\\u01b0\\u1ee3c r\\u1eb1ng tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 b\\u1ea1n s\\u1ebd c&oacute; t&acirc;m l&yacute; v&ocirc; c&ugrave;ng tho\\u1ea3i m&aacute;i, d\\u1ec5 ch\\u1ecbu. \\u0110&acirc;y c\\u0169ng ch&iacute;nh l&agrave; m\\u1ed9t th\\u1eddi \\u0111i\\u1ec3m \\u0111\\u01b0\\u1ee3c xem nh\\u01b0 l&yacute; t\\u01b0\\u1edfng \\u0111\\u1ec3 nh\\u1ecf m\\u1eaft, th\\u1ea3 l\\u1ecfng suy ngh\\u0129, gi&uacute;p m\\u1eaft c&oacute; th\\u1eddi gian ngh\\u1ec9 ng\\u01a1i, t\\u1ea1o \\u0111i\\u1ec1u ki\\u1ec7n cho qu&aacute; tr&igrave;nh \\u0111i\\u1ec1u tr\\u1ecb m\\u1eaft t\\u1ed1t nh\\u1ea5t.<\\/p>\\n<p style=\\\"text-align: justify;\\\"><img class=\\\"aligncenter wp-image-3308 size-full lazyloaded\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu.jpg\\\" sizes=\\\"(max-width: 600px) 100vw, 600px\\\" srcset=\\\"https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu.jpg 600w, https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-300x240.jpg 300w, https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-510x408.jpg 510w\\\" alt=\\\"c&oacute; n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi ng\\u1ee7\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" data-ll-status=\\\"loaded\\\" \\/><\\/p>\\n<p style=\\\"text-align: justify;\\\"><em>B\\u1ea1n ho&agrave;n to&agrave;n n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7<\\/em><\\/p>\\n<h2 style=\\\"text-align: justify;\\\"><span id=\\\"2_Nen_dung_loai_thuoc_nho_mat_nao_truoc_khi_di_ngu\\\" class=\\\"ez-toc-section\\\"><\\/span><strong>2\\/ N&ecirc;n d&ugrave;ng lo\\u1ea1i thu\\u1ed1c nh\\u1ecf m\\u1eaft n&agrave;o tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">\\u0110\\u1ec3 vi\\u1ec7c c&oacute; n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi ng\\u1ee7 kh&ocirc;ng tr\\u1edf th&agrave;nh n\\u1ed7i b\\u1eadn t&acirc;m l\\u1edbn, b\\u1ea1n c&oacute; th\\u1ec3 tham kh\\u1ea3o v\\u1ec1 c&aacute;ch s\\u1eed d\\u1ee5ng lo\\u1ea1i thu\\u1ed1c ph&ugrave; h\\u1ee3p nh\\u01b0 sau:<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Thuoc_nho_mat_dang_mo_hoac_gel\\\" class=\\\"ez-toc-section\\\"><\\/span>Thu\\u1ed1c nh\\u1ecf m\\u1eaft d\\u1ea1ng m\\u1ee1 ho\\u1eb7c gel<\\/h3>\\n<p style=\\\"text-align: justify;\\\">N\\u1ebfu b\\u1ea1n b\\u1ecb \\u0111au m\\u1eaft \\u1edf m\\u1ee9c \\u0111\\u1ed9 n\\u1eb7ng, b\\u1ea1n s\\u1ebd c\\u1ea7n \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng thu\\u1ed1c nh\\u1ecf m\\u1eaft &ldquo;\\u0111\\u1eadm \\u0111\\u1eb7c&rdquo; nh\\u01b0 d\\u1ea1ng m\\u1ee1 ho\\u1eb7c gel. \\u0110\\u1eb7c \\u0111i\\u1ec3m c\\u1ee7a nh\\u1eefng s\\u1ea3n ph\\u1ea9m n&agrave;y \\u0111&oacute; l&agrave; s\\u1ebd l&agrave;m m\\u1edd t\\u1ea7m nh&igrave;n c\\u1ee7a b\\u1ea1n trong m\\u1ed9t kho\\u1ea3ng th\\u1eddi gian ng\\u1eafn \\u0111\\u1ebfn l&uacute;c thu\\u1ed1c tan ra ho&agrave;n to&agrave;n. Ch&iacute;nh v&igrave; v\\u1eady, th\\u1eddi \\u0111i\\u1ec3m th&iacute;ch h\\u1ee3p nh\\u1ea5t \\u0111\\u1ec3 s\\u1eed d\\u1ee5ng thu\\u1ed1c \\u0111&oacute; l&agrave; tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7.<\\/p>\\n<p style=\\\"text-align: justify;\\\">H&atilde;y \\u0111\\u1ea3m b\\u1ea3o tay c\\u1ee7a b\\u1ea1n \\u0111\\u01b0\\u1ee3c v\\u1ec7 sinh s\\u1ea1ch s\\u1ebd tr\\u01b0\\u1edbc khi s\\u1eed d\\u1ee5ng thu\\u1ed1c m\\u1ee1 b&ocirc;i v&agrave;o m\\u1eaft nh&eacute;!<\\/p>\\n<p style=\\\"text-align: justify;\\\"><a href=\\\"https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-2.jpg\\\"><img class=\\\"aligncenter wp-image-3309 size-full lazyloaded\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-2.jpg\\\" sizes=\\\"(max-width: 600px) 100vw, 600px\\\" srcset=\\\"https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-2.jpg 600w, https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-2-300x200.jpg 300w, https:\\/\\/eyelink.vn\\/wp-content\\/uploads\\/2021\\/12\\/Co-Nen-Nho-Mat-Truoc-Khi-Ngu-2-510x340.jpg 510w\\\" alt=\\\"c&oacute; n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi ng\\u1ee7\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" data-ll-status=\\\"loaded\\\" \\/><\\/a><\\/p>\\n<p style=\\\"text-align: justify;\\\"><em>Sau khi tra thu\\u1ed1c m\\u1ee1 m\\u1eaft, t\\u1ea7m nh&igrave;n c\\u1ee7a b\\u1ea1n s\\u1ebd b\\u1ecb m\\u1edd \\u0111i trong m\\u1ed9t kho\\u1ea3ng th\\u1eddi gian n&ecirc;n b\\u1ea1n n&ecirc;n th\\u1ef1c hi\\u1ec7n \\u0111i\\u1ec1u n&agrave;y tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 \\u0111\\u1ec3 kh&ocirc;ng \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn qu&aacute; tr&igrave;nh sinh ho\\u1ea1t c\\u1ee7a m&igrave;nh<\\/em><\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Thuoc_nho_mat_nuoc\\\" class=\\\"ez-toc-section\\\"><\\/span>Thu\\u1ed1c nh\\u1ecf m\\u1eaft n\\u01b0\\u1edbc<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Th\\u1eddi gian nh\\u1ecf m\\u1eaft c\\u1ee7a thu\\u1ed1c d\\u1ea1ng n\\u01b0\\u1edbc c\\u0169ng linh ho\\u1ea1t h\\u01a1n khi b\\u1ea1n c&oacute; th\\u1ec3 s\\u1eed d\\u1ee5ng \\u1edf m\\u1ecdi th\\u1eddi \\u0111i\\u1ec3m trong ng&agrave;y tuy nhi&ecirc;n khi nh\\u1ecf tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 c\\u0169ng ho&agrave;n to&agrave;n \\u0111\\u01b0\\u1ee3c mi\\u1ec5n sao \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u01b0\\u1ee3c li\\u1ec1u l\\u01b0\\u1ee3ng c\\u1ea7n thi\\u1ebft trong qu&aacute; tr&igrave;nh \\u0111i\\u1ec1u tr\\u1ecb.<\\/p>\\n<p style=\\\"text-align: justify;\\\">Qu&aacute; tr&igrave;nh \\u0111i\\u1ec1u tr\\u1ecb c&aacute;c b\\u1ec7nh v\\u1ec1 m\\u1eaft c\\u0169ng s\\u1ebd tr\\u1edf n&ecirc;n hi\\u1ec7u qu\\u1ea3 h\\u01a1n khi b\\u1ea1n c&oacute; th\\u1eddi gian ngh\\u1ec9 ng\\u01a1i, ch\\u0103m s&oacute;c m\\u1eaft. \\u0110\\u1eb7c bi\\u1ec7t, v\\u1edbi c&aacute;c tr\\u01b0\\u1eddng h\\u1ee3p ph\\u1ea3i nh\\u1ecf k\\u1ebft h\\u1ee3p nhi\\u1ec1u lo\\u1ea1i thu\\u1ed1c m\\u1eaft v\\u1edbi nhau, kho\\u1ea3ng th\\u1eddi gian tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 s\\u1ebd gi&uacute;p b\\u1ea1n tho\\u1ea3i m&aacute;i \\u0111i\\u1ec1u ch\\u1ec9nh v&agrave; s\\u1eed d\\u1ee5ng c&aacute;c lo\\u1ea1i thu\\u1ed1c m\\u1eaft t\\u1ed1t nh\\u1ea5t.<\\/p>\\n<p style=\\\"text-align: justify;\\\">Kh&aacute;c v\\u1edbi c&aacute;c d\\u1ea1ng thu\\u1ed1c u\\u1ed1ng h\\u1ea5p th\\u1ee5 v&agrave;o c\\u01a1 th\\u1ec3, thu\\u1ed1c nh\\u1ecf m\\u1eaft c\\u0169ng c&oacute; nh\\u1eefng kho\\u1ea3ng th\\u1eddi gian nh\\u1ea5t \\u0111\\u1ecbnh \\u0111\\u1ec3 \\u0111em \\u0111\\u1ebfn nh\\u01b0ng hi\\u1ec7u qu\\u1ea3 t\\u1ed1t nh\\u1ea5t v&agrave; kho\\u1ea3ng th\\u1eddi gian tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 \\u0111&atilde; \\u0111&aacute;p \\u1ee9ng \\u0111\\u01b0\\u1ee3c \\u0111\\u1ea7y \\u0111\\u1ee7 c&aacute;c y\\u1ebfu t\\u1ed1 nh\\u01b0 v\\u1eady.<\\/p>\\n<h2 style=\\\"text-align: justify;\\\"><span id=\\\"3_Luu_y_khi_nho_mat_truoc_khi_di_ngu\\\" class=\\\"ez-toc-section\\\"><\\/span><strong>3\\/ L\\u01b0u &yacute; khi nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Khi \\u0111&atilde; bi\\u1ebft c&oacute; n&ecirc;n nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi ng\\u1ee7, b\\u1ea1n s\\u1ebd c&oacute; c&aacute;i nh&igrave;n t\\u1ed5ng qu&aacute;t h\\u01a1n v\\u1ec1 c&aacute;ch s\\u1eed d\\u1ee5ng thu\\u1ed1c sao cho \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c k\\u1ebft qu\\u1ea3 t\\u1ed1t nh\\u1ea5t. C\\u1ee5 th\\u1ec3, m\\u1ed9t s\\u1ed1 l\\u01b0u &yacute; m&agrave; b\\u1ea1n c\\u1ea7n bi\\u1ebft:<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Ve_sinh_tay_truoc_khi_nho_mat\\\" class=\\\"ez-toc-section\\\"><\\/span>V\\u1ec7 sinh tay tr\\u01b0\\u1edbc khi nh\\u1ecf m\\u1eaft<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Cho d&ugrave; l&agrave; b\\u1ea1n nh\\u1ecf m\\u1eaft v&agrave;o b\\u1ea5t c\\u1ee9 th\\u1eddi \\u0111i\\u1ec3m n&agrave;o trong ng&agrave;y, vi\\u1ec7c b\\u1ea1n c\\u1ea7n l&agrave;m \\u0111\\u1ea7u ti&ecirc;n \\u0111&oacute; ch&iacute;nh l&agrave; \\u0111\\u1ea3m b\\u1ea3o v\\u1ec7 sinh cho tay c\\u1ee7a m&igrave;nh. \\u0110i\\u1ec1u n&agrave;y s\\u1ebd gi&uacute;p ng\\u0103n ng\\u1eeba \\u0111\\u01b0\\u1ee3c vi khu\\u1ea9n, vi r&uacute;t c&oacute; th\\u1ec3 x&acirc;m nh\\u1eadp g&acirc;y ra t\\u1ed5n th\\u01b0\\u01a1ng n\\u1eb7ng n\\u1ec1 cho m\\u1eaft khi\\u1ebfn c&aacute;c b\\u1ec7nh l&yacute; c\\u1ee7a m\\u1eaft tr\\u1edf n&ecirc;n nghi&ecirc;m tr\\u1ecdng h\\u01a1n.<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Su_dung_thuoc_nho_mat_dung_cach\\\" class=\\\"ez-toc-section\\\"><\\/span>S\\u1eed d\\u1ee5ng thu\\u1ed1c nh\\u1ecf m\\u1eaft \\u0111&uacute;ng c&aacute;ch<\\/h3>\\n<p style=\\\"text-align: justify;\\\">+ D&ugrave;ng thu\\u1ed1c nh\\u1ecf m\\u1eaft theo th\\u1ee9 t\\u1ef1 khi k\\u1ebft h\\u1ee3p nhi\\u1ec1u lo\\u1ea1i thu\\u1ed1c. Nh\\u1ecf dung d\\u1ecbch tr\\u01b0\\u1edbc h\\u1ed7n d\\u1ecbch. V\\u1edbi c&aacute;c lo\\u1ea1i thu\\u1ed1c m\\u1ee1 th&igrave; n&ecirc;n tra sau c&ugrave;ng, c&aacute;ch c&aacute;c lo\\u1ea1i thu\\u1ed1c tr\\u01b0\\u1edbc \\u0111&oacute; kho\\u1ea3ng 10 ph&uacute;t tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 \\u0111\\u1ec3 \\u0111\\u1ea1t hi\\u1ec7u qu\\u1ea3 t\\u1ed1t nh\\u1ea5t.<\\/p>\\n<p style=\\\"text-align: justify;\\\">+ Kh&ocirc;ng ch\\u1ea1m \\u0111\\u1ea7u c\\u1ee7a thu\\u1ed1c nh\\u1ecf m\\u1eaft v&agrave;o tay, m\\u1eaft b\\u1edfi c&oacute; th\\u1ec3 t\\u0103ng kh\\u1ea3 n\\u0103ng vi khu\\u1ea9n x&acirc;m nh\\u1eadp g&acirc;y ra c&aacute;c b\\u1ec7nh nhi\\u1ec5m tr&ugrave;ng nguy hi\\u1ec3m.<\\/p>\\n<p style=\\\"text-align: justify;\\\">+ \\u0110\\u1ea3m b\\u1ea3o th&aacute;o ho&agrave;n b\\u1ed9 k&iacute;nh &aacute;p tr&ograve;ng tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 c\\u0169ng nh\\u01b0 tr\\u01b0\\u1edbc khi nh\\u1ecf m\\u1eaft.<\\/p>\\n<p style=\\\"text-align: justify;\\\">+ Kh&ocirc;ng d&ugrave;ng chung thu\\u1ed1c nh\\u1ecf m\\u1eaft v\\u1edbi ng\\u01b0\\u1eddi kh&aacute;c<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Lua_chon_san_pham_phu_hop\\\" class=\\\"ez-toc-section\\\"><\\/span>L\\u1ef1a ch\\u1ecdn s\\u1ea3n ph\\u1ea9m ph&ugrave; h\\u1ee3p<\\/h3>\\n<p style=\\\"text-align: justify;\\\">\\u0110\\u1ea3m b\\u1ea3o ngu\\u1ed3n g\\u1ed1c xu\\u1ea5t x\\u1ee9, ng&agrave;y s\\u1ea3n xu\\u1ea5t, h\\u1ea1n s\\u1eed d\\u1ee5ng c\\u1ee7a s\\u1ea3n ph\\u1ea9m thu\\u1ed1c nh\\u1ecf m\\u1eaft \\u0111\\u01b0\\u1ee3c r&otilde; r&agrave;ng, ch\\u1ea5t l\\u01b0\\u1ee3ng, tr&aacute;nh mua ph\\u1ea3i h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng g&acirc;y ra nh\\u1eefng t\\u1ed5n th\\u01b0\\u01a1ng cho m\\u1eaft.<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Giu_cho_tam_ly_thoai_mai\\\" class=\\\"ez-toc-section\\\"><\\/span>Gi\\u1eef cho t&acirc;m l&yacute; tho\\u1ea3i m&aacute;i<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Tr\\u01b0\\u1edbc l&uacute;c \\u0111i ng\\u1ee7 lu&ocirc;n l&agrave; l&uacute;c b\\u1ea1n c\\u1ea3m th\\u1ea5y tho\\u1ea3i m&aacute;i v&agrave; d\\u1ec5 ch\\u1ecbu nh\\u1ea5t, v&igrave; v\\u1eady h&atilde;y th\\u1ea3 l\\u1ecfng c\\u01a1 th\\u1ec3, nh\\u1ecf m\\u1eaft v&agrave; sau \\u0111&oacute; ch&igrave;m v&agrave;o gi\\u1ea5c ng\\u1ee7 t\\u1ed1t nh\\u1ea5t.<\\/p>\\n<h3 style=\\\"text-align: justify;\\\"><span id=\\\"Nghe_tu_van_cua_bac_si\\\" class=\\\"ez-toc-section\\\"><\\/span>Nghe t\\u01b0 v\\u1ea5n c\\u1ee7a b&aacute;c s\\u0129&nbsp;<\\/h3>\\n<p style=\\\"text-align: justify;\\\">\\u0110\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o qu&aacute; tr&igrave;nh \\u0111i\\u1ec1u tr\\u1ecb c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 m\\u1eaft \\u0111\\u01b0\\u1ee3c t\\u1ed1t nh\\u1ea5t, h&atilde;y h\\u1ecfi &yacute; ki\\u1ebfn c\\u1ee7a b&aacute;c s\\u0129 chuy&ecirc;n m&ocirc;n b\\u1edfi ch\\u1ec9 c&oacute; b&aacute;c s\\u0129 m\\u1edbi \\u0111\\u01b0a ra cho b\\u1ea1n ph&aacute;c \\u0111\\u1ed3 \\u0111i\\u1ec1u tr\\u1ecb h\\u1ee3p l&yacute; v&agrave; hi\\u1ec7u qu\\u1ea3 nh\\u1ea5t. Tr&aacute;nh t\\u1ef1 &yacute; mua thu\\u1ed1c b\\u1edfi c&oacute; th\\u1ec3 khi\\u1ebfn t&igrave;nh tr\\u1ea1ng b\\u1ec7nh l&yacute; tr\\u1edf n&ecirc;n n\\u1eb7ng h\\u01a1n.<\\/p>\\n<p style=\\\"text-align: justify;\\\">&nbsp;<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"Nh\\u1ecf m\\u1eaft tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 s\\u1ebd gi\\u00fap b\\u1ea1n c\\u00f3 t\\u01b0 th\\u1ebf n\\u1eb1m tho\\u1ea3i m\\u00e1i, t\\u1ea1o \\u0111i\\u1ec1u ki\\u1ec7n cho m\\u1eaft nh\\u1eafm gi\\u00fap cho l\\u01b0\\u1ee3ng thu\\u1ed1c \\u0111\\u01b0a v\\u00e0o m\\u1eaft \\u00edt ch\\u1ea3y ra ngo\\u00e0i h\\u01a1n so v\\u1edbi vi\\u1ec7c b\\u1ea1n ti\\u1ebfp t\\u1ee5c ho\\u1ea1t \\u0111\\u1ed9ng sau \\u0111\\u00f3.\\u00a0\"}]','nho-mat-truoc-khi-di-ngu-co-tot-khong',1,NULL,1,'http://kieukhanhmed.com/uploads/images/blog-2141046449.jpg','admins','tin-tuc',0,NULL,'2023-02-06 01:22:21','2023-02-08 04:11:02'),(9,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"TU\\u1ed4I TH\\u1ecc C\\u1ee6A TH\\u1ee6Y TINH NH\\u00c2N T\\u1ea0O L\\u00c0 BAO NHI\\u00caU\"}]','[{\"lang_code\":\"vi\",\"content\":\"<h2 id=\\\"toc_ban-chat-cua-duc-thuy-tinh-the-la-gi\\\" style=\\\"text-align: justify;\\\"><strong>B\\u1ea3n ch\\u1ea5t c\\u1ee7a \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 l&agrave; g&igrave;?<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Th\\u1ee7y tinh th\\u1ec3 l&agrave; m\\u1ed9t th\\u1ea5u k&iacute;nh h\\u1ed9i t\\u1ee5 n\\u1eb1m sau m\\u1ed1ng m\\u1eaft, c\\u1ea5u t\\u1ea1o b\\u1edfi nhi\\u1ec1u ph&acirc;n t\\u1eed protein v&agrave; n\\u01b0\\u1edbc s\\u1eafp x\\u1ebfp theo m\\u1ed9t tr\\u1eadt t\\u1ef1 nh\\u1ea5t \\u0111\\u1ecbnh \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o th\\u1ee7y tinh th\\u1ec3 lu&ocirc;n trong su\\u1ed1t, cho ph&eacute;p to&agrave;n b\\u1ed9 &aacute;nh s&aacute;ng \\u0111i qua, h\\u1ed9i t\\u1ee5 tr&ecirc;n v&otilde;ng m\\u1ea1c gi&uacute;p m\\u1eaft nh&igrave;n r&otilde; m\\u1ecdi v\\u1eadt.<\\/p>\\n<p style=\\\"text-align: justify;\\\">T&aacute;c \\u0111\\u1ed9ng t\\u1eeb c&aacute;c ch\\u1ea5t \\u0111\\u1ed9c h\\u1ea1i b&ecirc;n trong v&agrave; m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i c\\u01a1 th\\u1ec3, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; c&aacute;c g\\u1ed1c t\\u1ef1 do t\\u1eeb ph\\u1ea3n \\u1ee9ng stress oxy h&oacute;a s\\u1ebd l&agrave;m x&aacute;o tr\\u1ed9n tr\\u1eadt t\\u1ef1 s\\u1eafp x\\u1ebfp c\\u1ee7a c&aacute;c protein n&agrave;y, h\\u1eadu qu\\u1ea3 l&agrave; t\\u1ea1o ra c&aacute;c \\u0111&aacute;m m\\u1edd, ch\\u1ea5m \\u0111en (ru\\u1ed3i bay) che khu\\u1ea5t t\\u1ea7m nh&igrave;n, g&acirc;y gi\\u1ea3m th\\u1ecb l\\u1ef1c c\\u1ee7a ng\\u01b0\\u1eddi b\\u1ec7nh. T&igrave;nh tr\\u1ea1ng n&agrave;y \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave;&nbsp;\\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3&nbsp;(hay c\\u01b0\\u1eddm kh&ocirc;, c\\u01b0\\u1eddm \\u0111&aacute;).<\\/p>\\n<h2 id=\\\"toc_khi-nao-nen-thay-thuy-tinh-the-nhan-tao\\\" style=\\\"text-align: justify;\\\"><strong>Khi n&agrave;o n&ecirc;n thay th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o?<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Ph\\u1eabu thu\\u1eadt thay th\\u1ee7y tinh th\\u1ec3 l&agrave; ph\\u01b0\\u01a1ng ph&aacute;p t&aacute;ch b\\u1ecf th\\u1ee7y tinh th\\u1ec3 t\\u1ef1 nhi&ecirc;n ra kh\\u1ecfi m\\u1eaft, sau \\u0111&oacute; thay th\\u1ebf b\\u1eb1ng m\\u1ed9t th\\u1ea5u k&iacute;nh nh&acirc;n t\\u1ea1o. C&oacute; th\\u1ec3 gi&uacute;p c\\u1ea3i thi\\u1ec7n t\\u1ea7m nh&igrave;n nhanh, tuy nhi&ecirc;n sau ph\\u1eabu thu\\u1eadt, ng\\u01b0\\u1eddi b\\u1ec7nh c\\u0169ng kh&oacute; tr&aacute;nh kh\\u1ecfi nguy c\\u01a1 g\\u1eb7p ph\\u1ea3i c&aacute;c bi\\u1ebfn ch\\u1ee9ng x\\u1ea5u nh\\u01b0 \\u0111\\u1ee5c bao sau, kh&ocirc; m\\u1eaft, nhi\\u1ec5m tr&ugrave;ng m\\u1eaft, ch\\u1ea3y m&aacute;u m\\u1eaft, bong r&aacute;ch v&otilde;ng m\\u1ea1c&hellip; C&aacute;c bi\\u1ebfn ch\\u1ee9ng n&agrave;y nh\\u1eb9 th&igrave; g&acirc;y c\\u1ed9m r&aacute;t, ch&oacute;i s&aacute;ng, s\\u01b0ng \\u0111\\u1ecf m\\u1eaft m\\u1ed9t v&agrave;i tu\\u1ea7n, n\\u1eb7ng th&igrave; c&oacute; th\\u1ec3 g&acirc;y nh&igrave;n m\\u1edd, \\u0111au nh\\u1ee9c m\\u1eaft, th\\u1eadm ch&iacute; m\\u1ea5t ho&agrave;n to&agrave;n th\\u1ecb l\\u1ef1c. Ch&iacute;nh v&igrave; v\\u1eady, kh&ocirc;ng ph\\u1ea3i c\\u1ee9 b\\u1ecb \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 l&agrave; c\\u1ea7n ph\\u1eabu thu\\u1eadt. Ph\\u01b0\\u01a1ng ph&aacute;p n&agrave;y ch\\u1ec9 n&ecirc;n ti\\u1ebfn h&agrave;nh khi m\\u1ee9c \\u0111\\u1ed9 b\\u1ec7nh \\u0111&atilde; qu&aacute; n\\u1eb7ng, th\\u1ecb l\\u1ef1c t\\u1ea7m 2\\/10 tr\\u1edf xu\\u1ed1ng, \\u1ea3nh h\\u01b0\\u1edfng nhi\\u1ec1u \\u0111\\u1ebfn ch\\u1ea5t l\\u01b0\\u1ee3ng cu\\u1ed9c s\\u1ed1ng sinh ho\\u1ea1t h&agrave;ng ng&agrave;y.<\\/p>\\n<h2 id=\\\"toc_tuoi-tho-cua-thuy-tinh-the-nhan-tao-la-bao-lau\\\" style=\\\"text-align: justify;\\\"><strong>Tu\\u1ed5i th\\u1ecd c\\u1ee7a th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o l&agrave; bao l&acirc;u?<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf g\\u1ea7n t\\u01b0\\u01a1ng t\\u1ef1 th\\u1ee7y tinh th\\u1ec3 t\\u1ef1 nhi&ecirc;n v\\u1ec1 c\\u1ea3 h&igrave;nh d\\u1ea1ng, k&iacute;ch th\\u01b0\\u1edbc, \\u0111\\u1ed9 trong su\\u1ed1t, ng\\u01b0\\u1eddi b\\u1ec7nh kh&ocirc;ng th\\u1ec3 t\\u1ef1 nh&igrave;n th\\u1ea5y hay c\\u1ea3m nh\\u1eadn \\u0111\\u01b0\\u1ee3c n&oacute;. \\u0110\\u01b0\\u1ee3c l&agrave;m t\\u1eeb plastic, acrylic, ho\\u1eb7c silicon \\u0111\\u1ec1u l&agrave; ch\\u1ea5t li\\u1ec7u r\\u1ea5t b\\u1ec1n, kh&oacute; h\\u01b0 h\\u1ea1i qua nhi\\u1ec1u n\\u0103m n&ecirc;n th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o g\\u1ea7n nh\\u01b0 c&oacute; tu\\u1ed5i th\\u1ecd v\\u0129nh vi\\u1ec5n khi \\u0111\\u1eb7t v&agrave;o m\\u1eaft, B\\u1edfi v\\u1eady, sau ph\\u1eabu thu\\u1eadt, ng\\u01b0\\u1eddi b\\u1ec7nh kh&ocirc;ng c\\u1ea7n ph\\u1ea3i ch\\u0103m s&oacute;c hay nu&ocirc;i d\\u01b0\\u1ee1ng v&agrave; c\\u0169ng kh&ocirc;ng c\\u1ea7n ph\\u1ea3i thay th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o l\\u1ea1i l\\u1ea7n n\\u1eefa. Tuy nhi&ecirc;n, trong m\\u1ed9t s\\u1ed1 &iacute;t tr\\u01b0\\u1eddng h\\u1ee3p \\u0111\\u1eb7c bi\\u1ec7t nh\\u01b0 b\\u1ecb ch\\u1ea5n th\\u01b0\\u01a1ng v&ugrave;ng m\\u1eaft, r&aacute;ch bao sau, l\\u1ec7ch \\u0111\\u1ed9&hellip;, th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o c&oacute; th\\u1ec3 b\\u1ecb bi\\u1ebfn d\\u1ea1ng ho\\u1eb7c n\\u1eb1m sai v\\u1ecb tr&iacute;, l&agrave;m gi\\u1ea3m th\\u1ecb l\\u1ef1c nghi&ecirc;m tr\\u1ecdng, ng\\u01b0\\u1eddi b\\u1ec7nh s\\u1ebd c\\u1ea7n quay l\\u1ea1i vi\\u1ec7n \\u0111\\u1ec3 thay th\\u1ee7y tinh th\\u1ec3 kh&aacute;c k\\u1ebft h\\u1ee3p m\\u1ed9t s\\u1ed1 can thi\\u1ec7p v&agrave;o v&ugrave;ng bao sau \\u0111\\u1ec3 c\\u1ea3i thi\\u1ec7n.<\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/wzkdoq.by.files.1drv.com\\/y4mjSWmF3yIGBomtcVn-TCq_8t2wJDsQmWsxjA2jHP0_OI376l62Rdxx5_ILRcpesU7MQXuoxspZ3swh95wfa1m1Si63DbIpKYwER_Z6f8pbCwIxCRaN6_UyzGXYbrH1dsYExgVCWs-GI_Im9d1-XrIKCAQwJCkApjTiBOKDLapNha6JwzwrPGwHDch5-E4WZxboL77kslHH8lHE49CawW4Xw?width=1000&amp;height=661&amp;cropmode=none\\\" alt=\\\"\\\" width=\\\"450\\\" height=\\\"297\\\" \\/><\\/p>\\n<p style=\\\"text-align: center;\\\"><em>Tu\\u1ed5i th\\u1ecd c\\u1ee7a th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o g\\u1ea7n nh\\u01b0 l&agrave; v\\u0129nh vi\\u1ec5n<\\/em><\\/p>\\n<p>Sau m\\u1ed5 \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 m\\u1ed9t th\\u1eddi gian, nhi\\u1ec1u ng\\u01b0\\u1eddi b\\u1ec7nh chia s\\u1ebb th\\u1ea5y m\\u1eaft m\\u1edd \\u0111\\u1ee5c tr\\u1edf l\\u1ea1i, k&egrave;m theo c&aacute;c bi\\u1ec3u hi\\u1ec7n ch&oacute;i s&aacute;ng, nh\\u1ee9c m\\u1ecfi, th\\u1ea5y ch\\u1ea5m \\u0111en ru\\u1ed3i bay&hellip; n&ecirc;n ngh\\u0129 r\\u1eb1ng \\u0111&acirc;y l&agrave; \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 t&aacute;i ph&aacute;t. Tuy nhi&ecirc;n th\\u1ef1c t\\u1ebf kh&ocirc;ng ph\\u1ea3i nh\\u01b0 v\\u1eady. T&igrave;nh tr\\u1ea1ng nh&igrave;n m\\u1edd, suy gi\\u1ea3m th\\u1ecb l\\u1ef1c m&agrave; ng\\u01b0\\u1eddi b\\u1ec7nh g\\u1eb7p ph\\u1ea3i th\\u01b0\\u1eddng l&agrave; do b\\u1ecb bi\\u1ebfn ch\\u1ee9ng sau m\\u1ed5 ho\\u1eb7c m\\u1eafc th&ecirc;m m\\u1ed9t s\\u1ed1 b\\u1ec7nh v\\u1ec1 m\\u1eaft kh&aacute;c, c\\u1ee5 th\\u1ec3 nh\\u01b0 sau:<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong><em>- Bi\\u1ebfn ch\\u1ee9ng<\\/em><\\/strong>: Ph\\u1ed5 bi\\u1ebfn nh\\u1ea5t l&agrave; \\u0111\\u1ee5c bao sau. Nguy&ecirc;n nh&acirc;n l&agrave; sau ph\\u1eabu thu\\u1eadt, m\\u1ed9t s\\u1ed1 &iacute;t t\\u1ebf b&agrave;o thu\\u1ed9c l\\u1edbp b\\u1ec1 m\\u1eb7t c\\u1ee7a th\\u1ee7y tinh th\\u1ec3 t\\u1ef1 nhi&ecirc;n c&ograve;n v\\u01b0\\u01a1ng l\\u1ea1i tr&ecirc;n l\\u1edbp bao sau t\\u0103ng s\\u1ea3n g&acirc;y \\u0111\\u1ee5c l\\u1edbp bao n&agrave;y v&agrave; g&acirc;y ra hi\\u1ec7n t\\u01b0\\u1ee3ng nh&igrave;n m\\u1edd nh\\u01b0 tr\\u01b0\\u1edbc khi ph\\u1eabu thu\\u1eadt. Ngo&agrave;i ra, m\\u1ed9t s\\u1ed1 bi\\u1ebfn ch\\u1ee9ng nh\\u01b0 kh&ocirc; m\\u1eaft, vi&ecirc;m gi&aacute;c m\\u1ea1c, xu\\u1ea5t huy\\u1ebft m\\u1eaft, bong r&aacute;ch v&otilde;ng m\\u1ea1c&hellip; tuy &iacute;t g\\u1eb7p h\\u01a1n nh\\u01b0ng ng\\u01b0\\u1eddi b\\u1ec7nh c\\u0169ng c\\u1ea7n ch&uacute; &yacute; b\\u1edfi m\\u1ee9c \\u0111\\u1ed9 nguy hi\\u1ec3m cao h\\u01a1n v&agrave; ho&agrave;n to&agrave;n c&oacute; th\\u1ec3 d\\u1eabn \\u0111\\u1ebfn m&ugrave; l&ograve;a n\\u1ebfu kh&ocirc;ng \\u0111\\u01b0\\u1ee3c kh\\u1eafc ph\\u1ee5c k\\u1ecbp th\\u1eddi.<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong><em>- C&aacute;c b\\u1ec7nh v\\u1ec1 m\\u1eaft kh&aacute;c<\\/em><\\/strong>: Sau ph\\u1eabu thu\\u1eadt, m\\u1eaft r\\u1ea5t d\\u1ec5 b\\u1ecb t\\u1ed5n th\\u01b0\\u01a1ng, qu&aacute; tr&igrave;nh stress oxy h&oacute;a c\\u0169ng th\\u01b0\\u1eddng t\\u0103ng m\\u1ea1nh s\\u1ea3n sinh ra nhi\\u1ec1u g\\u1ed1c t\\u1ef1 do h\\u01a1n. T&igrave;nh tr\\u1ea1ng n&agrave;y s\\u1ebd khi\\u1ebfn ng\\u01b0\\u1eddi b\\u1ec7nh d\\u1ec5 b\\u1ecb m\\u1eafc th&ecirc;m c&aacute;c b\\u1ec7nh v\\u1ec1 m\\u1eaft kh&aacute;c nh\\u01b0 tho&aacute;i h&oacute;a \\u0111i\\u1ec3m v&agrave;ng, t\\u0103ng nh&atilde;n &aacute;p, \\u0111\\u1ee5c d\\u1ecbch k&iacute;nh&hellip; Nh\\u1eefng b\\u1ec7nh n&agrave;y c\\u0169ng l&agrave; nh\\u1eefng nguy&ecirc;n nh&acirc;n l&agrave;m gi\\u1ea3m th\\u1ecb l\\u1ef1c h&agrave;ng \\u0111\\u1ea7u hi\\u1ec7n nay.<\\/p>\\n<h2 id=\\\"toc_giai-phap-ngan-chan-duc-thuy-tinh-the-tien-trien-han-che-nguy-co-phai-mo\\\" style=\\\"text-align: justify;\\\"><strong>Gi\\u1ea3i ph&aacute;p ng\\u0103n ch\\u1eb7n \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 ti\\u1ebfn tri\\u1ec3n, h\\u1ea1n ch\\u1ebf nguy c\\u01a1 ph\\u1ea3i m\\u1ed5<\\/strong><\\/h2>\\n<p style=\\\"text-align: justify;\\\">\\u0110\\u1ec3 b\\u1ea3o v\\u1ec7 th\\u1ecb l\\u1ef1c, ng\\u0103n ch\\u1eb7n bi\\u1ebfn ch\\u1ee9ng \\u0111\\u1ee5c bao sau, nhi\\u1ec5m tr&ugrave;ng&hellip; sau m\\u1ed5 th\\u1ee7y tinh th\\u1ec3 \\u1edf m\\u1eaft tr&aacute;i c\\u0169ng nh\\u01b0 h\\u1ea1n ch\\u1ebf nguy c\\u01a1 ph\\u1ea3i ph\\u1eabu thu\\u1eadt thay th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o \\u1edf m\\u1eaft ph\\u1ea3i, ng\\u01b0\\u1eddi b\\u1ec7nh n&ecirc;n th\\u1ef1c hi\\u1ec7n m\\u1ed9t ch\\u1ebf \\u0111\\u1ed9 \\u0103n u\\u1ed1ng sinh ho\\u1ea1t khoa h\\u1ecdc, c\\u1ee5 th\\u1ec3:<\\/p>\\n<p style=\\\"text-align: justify;\\\">- T\\u0103ng c\\u01b0\\u1eddng rau xanh, tr&aacute;i c&acirc;y t\\u01b0\\u01a1i c&ugrave;ng nh\\u1eefng th\\u1ef1c ph\\u1ea9m c&oacute; m&agrave;u xanh \\u0111\\u1eadm, cam, \\u0111\\u1ecf, v&agrave;ng: C&agrave; r\\u1ed1t, \\u0111u \\u0111\\u1ee7, b&iacute; \\u0111\\u1ecf, s&uacute;p l\\u01a1, rau c\\u1ea3i xo\\u0103n, cam, \\u0111&agrave;o, c&agrave; chua, b\\u01b0\\u1edfi&hellip;<\\/p>\\n<p style=\\\"text-align: justify;\\\">- H\\u1ea1n ch\\u1ebf th\\u1ef1c ph\\u1ea9m chi&ecirc;n, r&aacute;n, th\\u1ee9c \\u0103n nhanh v&agrave; nh\\u1eefng th\\u1ef1c ph\\u1ea9m ch\\u1ebf bi\\u1ebfn s\\u1eb5n ch\\u1ee9a nhi\\u1ec1u ch\\u1ea5t ph\\u1ee5 gia, b\\u1ea3o qu\\u1ea3n.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Ng\\u1eebng h&uacute;t thu\\u1ed1c l&aacute;, u\\u1ed1ng r\\u01b0\\u1ee3u bia c&ugrave;ng c&aacute;c ch\\u1ea5t k&iacute;ch th&iacute;ch kh&aacute;c nh\\u01b0 c&agrave; ph&ecirc;&hellip;<\\/p>\\n<p style=\\\"text-align: justify;\\\">- B\\u1ea3o v\\u1ec7 m\\u1eaft b\\u1eb1ng c&aacute;ch \\u0111eo k&iacute;nh m&aacute;t (k&iacute;nh r&acirc;m) ho\\u1eb7c \\u0111\\u1ed9i m\\u0169 r\\u1ed9ng v&agrave;nh khi \\u0111i ngo&agrave;i tr\\u1eddi n\\u1eafng.<\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/vaecda.by.files.1drv.com\\/y4mhLXqucemVqEeQ9LwoItAD9_Dl9h09DRQJmiC7LokpS99Z1STf0fNsUDfR5YmIrShroZUt7knKeGZqAMuxm693PsBBSXfAJh3EdDeFzLyJjU0KdlAbPVcM6UQEXQIE1efjBsZJkGxgyIHRc_1bD9RYI5V-gkV2730nKhMPV_81s4iYorY-1jGyAvjGNaSISuyGwvN-FUDkSfaIYwFkvJQ5Q?width=1000&amp;height=666&amp;cropmode=none\\\" alt=\\\"\\\" width=\\\"450\\\" height=\\\"299\\\" \\/><\\/p>\\n<p style=\\\"text-align: center;\\\"><em>\\u0110eo k&iacute;nh r&acirc;m, \\u0111\\u1ed9i m\\u0169 khi \\u0111i ngo&agrave;i tr\\u1eddi n\\u1eafng \\u0111\\u1ec3 b\\u1ea3o v\\u1ec7 m\\u1eaft<\\/em><\\/p>\\n<p>B&ecirc;n c\\u1ea1nh m\\u1ed9t ch\\u1ebf \\u0111\\u1ed9 \\u0103n u\\u1ed1ng sinh ho\\u1ea1t khoa h\\u1ecdc, c&aacute;c chuy&ecirc;n gia Nh&atilde;n Khoa khuy\\u1ebfn c&aacute;o ng\\u01b0\\u1eddi b\\u1ec7nh \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 n&ecirc;n b\\u1ed5 sung c&aacute;c s\\u1ea3n ph\\u1ea9m c&oacute; ch\\u1ee9a ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a m\\u1ea1nh nh\\u01b0&nbsp;Alpha lipoic acid&nbsp;(ALA) b\\u1edfi ch&uacute;ng c&oacute; kh\\u1ea3 n\\u0103ng d\\u1ecdn d\\u1eb9p r&aacute;c th\\u1ea3i, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh stress oxy h&oacute;a, lo\\u1ea1i b\\u1ecf g\\u1ed1c t\\u1ef1 do, ph&ograve;ng ng\\u1eeba c&aacute;c y\\u1ebfu t\\u1ed1 vi&ecirc;m g&acirc;y t\\u1ed5n th\\u01b0\\u01a1n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"Th\\u1ee7y tinh th\\u1ec3 l\\u00e0 m\\u1ed9t th\\u1ea5u k\\u00ednh h\\u1ed9i t\\u1ee5 n\\u1eb1m sau m\\u1ed1ng m\\u1eaft, c\\u1ea5u t\\u1ea1o b\\u1edfi nhi\\u1ec1u ph\\u00e2n t\\u1eed protein v\\u00e0 n\\u01b0\\u1edbc s\\u1eafp x\\u1ebfp theo m\\u1ed9t tr\\u1eadt t\\u1ef1 nh\\u1ea5t \\u0111\\u1ecbnh \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o th\\u1ee7y tinh th\\u1ec3 lu\\u00f4n trong su\\u1ed1t, cho ph\\u00e9p to\\u00e0n b\\u1ed9 \\u00e1nh s\\u00e1ng \\u0111i qua, h\\u1ed9i t\\u1ee5 tr\\u00ean v\\u00f5ng m\\u1ea1c gi\\u00fap m\\u1eaft nh\\u00ecn r\\u00f5 m\\u1ecdi v\\u1eadt.\"}]','tuoi-tho-cua-thuy-tinh-nhan-tao-la-bao-nhieu',1,NULL,1,'http://kieukhanhmed.com/uploads/images/blog-1446095797.jpg','admins','tin-tuc',0,NULL,'2023-02-06 01:27:26','2023-02-08 04:56:07'),(10,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"TUY\\u1ec2N TR\\u00ccNH D\\u01af\\u1ee2C VI\\u00caN ETC NG\\u00c0NH H\\u00c0NG NH\\u00c3N KHOA TRONG C\\u1ea2 N\\u01af\\u1edaC\"}]','[{\"lang_code\":\"vi\",\"content\":\"<h3 style=\\\"text-align: center;\\\"><strong>C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/h3>\\n<p style=\\\"text-align: center;\\\"><em>Tuy\\u1ec3n tr&igrave;nh d\\u01b0\\u1ee3c vi&ecirc;n ETC ngh&agrave;nh h&agrave;ng nh&atilde;n khoa trong c\\u1ea3 n\\u01b0\\u1edbc.<\\/em><\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>M&Ocirc; T\\u1ea2 C&Ocirc;NG VI\\u1ec6C<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\">- T&igrave;m ki\\u1ebfm, thi\\u1ebft l\\u1eadp v&agrave; ph&aacute;t tri\\u1ec3n kh&aacute;ch h&agrave;ng m\\u1edbi, duy tr&igrave;, ch\\u0103m s&oacute;c v&agrave; ph&aacute;t tri\\u1ec3n kinh doanh v\\u1edbi c&aacute;c kh&aacute;ch h&agrave;ng hi\\u1ec7n c&oacute;, n\\u1eafm b\\u1eaft c&aacute;c ti\\u1ec1m n\\u0103ng v&agrave; nhu c\\u1ea7u, mong mu\\u1ed1n hi\\u1ec7n t\\u1ea1i c\\u1ee7a kh&aacute;ch h&agrave;ng \\u0111\\u1ec3 \\u0111\\u01b0a ra ph\\u01b0\\u01a1ng &aacute;n kinh doanh k\\u1ecbp th\\u1eddi.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Gi\\u1edbi thi\\u1ec7u v&agrave; b&aacute;n s\\u1ea3n ph\\u1ea9m chuy&ecirc;n ngh&agrave;nh nh&atilde;n khoa nh\\u01b0 thu\\u1ed1c,v\\u1eadt t\\u01b0 y t\\u1ebf, &nbsp;th\\u1ef1c ph\\u1ea9m b\\u1ea3o v\\u1ec7 s\\u1ee9c kh\\u1ecfe, th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o c\\u1ee7a C&ocirc;ng ty \\u0111\\u1ebfn c&aacute;c b\\u1ec7nh vi\\u1ec7n, ph&ograve;ng kh&aacute;m c&aacute;c t\\u1ec9nh th&agrave;nh \\u0111\\u01b0\\u1ee3c ph&acirc;n c&ocirc;ng.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Th\\u1ef1c hi\\u1ec7n vi\\u1ec7c \\u0111&agrave;m ph&aacute;n th\\u01b0\\u01a1ng th\\u1ea3o v\\u1edbi kh&aacute;ch h&agrave;ng, l&ecirc;n d\\u1ef1 th\\u1ea3o h\\u1ee3p \\u0111\\u1ed3ng v&agrave; l&agrave;m th\\u1ee7 t\\u1ee5c k&yacute; k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Theo d&otilde;i thu c&ocirc;ng n\\u1ee3 kh&aacute;ch h&agrave;ng ph\\u1ee5 tr&aacute;ch, b&aacute;o c&aacute;o cho qu\\u1ea3n l&yacute; theo th\\u1eddi gian quy \\u0111\\u1ecbnh c\\u1ee7a C&ocirc;ng ty.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Cung c\\u1ea5p c&aacute;c th&ocirc;ng tin khoa h\\u1ecdc v\\u1ec1 s\\u1ea3n ph\\u1ea9m c\\u1ee7a C&ocirc;ng ty t\\u1edbi c&aacute;c Y B&aacute;c s\\u0129, D\\u01b0\\u1ee3c s\\u0129.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Theo d&otilde;i ho\\u1ea1t \\u0111\\u1ed9ng \\u0111\\u1ea5u th\\u1ea7u, d\\u1ef1 &aacute;n c\\u1ee7a c&aacute;c b\\u1ec7nh vi\\u1ec7n, s\\u1edf y t\\u1ebf.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- L\\u1eadp b&aacute;o c&aacute;o c&ocirc;ng vi\\u1ec7c, \\u0111\\u1ed1i th\\u1ee7 c\\u1ea1nh tranh v&agrave; \\u0111\\u01b0a ra c&aacute;c gi\\u1ea3i ph&aacute;p b&aacute;n h&agrave;ng.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Th\\u1ef1c hi\\u1ec7n c&aacute;c c&ocirc;ng vi\\u1ec7c kh&aacute;c do c&ocirc;ng ty giao.<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>TR&Aacute;CH NHI\\u1ec6M<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u0110\\u1ea3m b\\u1ea3o doanh s\\u1ed1 t\\u1ea1i khu v\\u1ef1c ph\\u1ee5 tr&aacute;ch.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Ch\\u0103m s&oacute;c, x&acirc;y d\\u1ef1ng m\\u1ed1i quan h\\u1ec7 b\\u1ec1n v\\u1eefng \\u0111\\u1ed1i v\\u1edbi c&aacute;c kh&aacute;ch h&agrave;ng quen thu\\u1ed9c v&agrave; t\\u0103ng cu\\u1eddng t&igrave;m ki\\u1ebfm c&aacute;c kh&aacute;ch h&agrave;ng m\\u1edbi \\u0111\\u1ec3 m\\u1edf r\\u1ed9ng th\\u1ecb tr\\u01b0\\u1eddng.<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>Y&Ecirc;U C\\u1ea6U C&Ocirc;NG VI\\u1ec6C:<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\">- T\\u1ed1t nghi\\u1ec7p Trung c\\u1ea5p\\/ cao \\u0111\\u1eb3ng\\/ \\u0111\\u1ea1i h\\u1ecdc&hellip;t\\u1ea5t c\\u1ea3 c&aacute;c ngh&agrave;nh ngh\\u1ec1<\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u01afu ti&ecirc;n \\u1ee9ng vi&ecirc;n \\u0111&atilde; c&oacute; kinh nghi\\u1ec7m l&agrave;m tr&igrave;nh d\\u01b0\\u1ee3c vi&ecirc;n<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Giao ti\\u1ebfp, th\\u01b0\\u01a1ng l\\u01b0\\u1ee3ng gi\\u1ecfi, nhanh nh\\u1eb9n, nh\\u1ea1y b&eacute;n.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- S\\u1ee9c kh\\u1ecfe t\\u1ed1t, trung th\\u1ef1c, c\\u1ea9n th\\u1eadn, ch\\u1ecbu kh&oacute;.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- C&oacute; kh\\u1ea3 n\\u0103ng l&agrave;m vi\\u1ec7c \\u0111\\u1ed9c l\\u1eadp v&agrave; l&agrave;m vi\\u1ec7c theo nh&oacute;m.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Th&agrave;nh th\\u1ea1o Word, Excel.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Ch\\u1ecbu \\u0111\\u01b0\\u1ee3c &aacute;p l\\u1ef1c c&ocirc;ng vi\\u1ec7c.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- C&oacute; &yacute; \\u0111\\u1ecbnh g\\u1eafn b&oacute; l&acirc;u d&agrave;i v\\u1edbi C&ocirc;ng ty<\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u0110\\u1ecba \\u0111i\\u1ec3m l&agrave;m vi\\u1ec7c: Tp. H&agrave; N\\u1ed9i v&agrave; c\\u1ea3 n\\u01b0\\u1edbc<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>CH\\u1ebe \\u0110\\u1ed8 PH&Uacute;C L\\u1ee2I<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u0110\\u01b0\\u1ee3c h\\u01b0\\u1edfng \\u0111\\u1ea7y \\u0111\\u1ee7 c&aacute;c quy\\u1ec1n l\\u1ee3i v\\u1ec1 BHXH, BHYT, B\\u1ea3o hi\\u1ec3m th\\u1ea5t nghi\\u1ec7p theo \\u0111&uacute;ng Lu\\u1eadt Lao \\u0110\\u1ed9ng Vi\\u1ec7t Nam.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u0110\\u01b0\\u1ee3c h\\u01b0\\u1edfng m\\u1ee9c l\\u01b0\\u01a1ng v&agrave; th\\u01b0\\u1edfng t\\u01b0\\u01a1ng x\\u1ee9ng v\\u1edbi n\\u0103ng l\\u1ef1c, hi\\u1ec7u qu\\u1ea3 c&ocirc;ng vi\\u1ec7c.<\\/p>\\n<p style=\\\"text-align: justify;\\\">+ L\\u01b0\\u01a1ng : trao \\u0111\\u1ed5i c\\u1ee5 th\\u1ec3 khi ph\\u1ecfng v\\u1ea5n.<\\/p>\\n<p style=\\\"text-align: justify;\\\">+ Th\\u01b0\\u1edfng: ch\\u1ebf \\u0111\\u1ed9 th\\u01b0\\u1edfng h\\u1ea5p d\\u1eabn l&ecirc;n t\\u1edbi 5-20% theo c\\u01a1 c\\u1ea5u t&iacute;nh th\\u01b0\\u1edfng c\\u1ee7a c&ocirc;ng ty.<\\/p>\\n<p style=\\\"text-align: justify;\\\">=&gt;T\\u1ed5ng thu nh\\u1eadp kh&ocirc;ng gi\\u1edbi h\\u1ea1n d\\u1ef1a tr&ecirc;n doanh s\\u1ed1 b&aacute;n h&agrave;ng.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u0110\\u01b0\\u1ee3c tham gia c&aacute;c kh&oacute;a \\u0111&agrave;o t\\u1ea1o v\\u1ec1 chuy&ecirc;n ng&agrave;nh.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- Th\\u1eddi gian l&agrave;m vi\\u1ec7c: L&agrave;m vi\\u1ec7c t\\u1eeb Th\\u1ee9 2 \\u0111\\u1ebfn Th\\u1ee9 6 h&agrave;ng tu\\u1ea7n.<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>H\\u1ed2 S\\u01a0 BAO G\\u1ed2M<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\">- \\u0110\\u01a1n xin vi\\u1ec7c.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- S\\u01a1 y\\u1ebfu l&yacute; l\\u1ecbch.<\\/p>\\n<p style=\\\"text-align: justify;\\\">- CMT, C&aacute;c b\\u1eb1ng c\\u1ea5p li&ecirc;n quan (photo c&ocirc;ng ch\\u1ee9ng).<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>&nbsp;LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\">\\u1ee8ng vi&ecirc;n quan t&acirc;m vui l&ograve;ng g\\u1eedi cv qua email:tinh.nguyen@kieukhanhmed.com<\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>TH\\u1edcI H\\u1ea0N N\\u1ed8P H\\u1ed2 S\\u01a0:<\\/strong> 01\\/03\\/2023<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"T\\u00ecm ki\\u1ebfm, thi\\u1ebft l\\u1eadp v\\u00e0 ph\\u00e1t tri\\u1ec3n kh\\u00e1ch h\\u00e0ng m\\u1edbi, duy tr\\u00ec, ch\\u0103m s\\u00f3c v\\u00e0 ph\\u00e1t tri\\u1ec3n kinh doanh v\\u1edbi c\\u00e1c kh\\u00e1ch h\\u00e0ng hi\\u1ec7n c\\u00f3, n\\u1eafm b\\u1eaft c\\u00e1c ti\\u1ec1m n\\u0103ng v\\u00e0 nhu c\\u1ea7u, mong mu\\u1ed1n hi\\u1ec7n t\\u1ea1i c\\u1ee7a kh\\u00e1ch h\\u00e0ng \\u0111\\u1ec3 \\u0111\\u01b0a ra ph\\u01b0\\u01a1ng \\u00e1n kinh doanh k\\u1ecbp th\\u1eddi.\"}]','tuyen-trinh-duoc-vien-etc-nganh-hang-nhan-khoa-trong-ca-nuoc',1,NULL,NULL,'http://kieukhanhmed.com/uploads/images/blog-1835264469.jpg','admins','tuyen-dung',0,NULL,'2023-02-08 05:10:01','2023-02-09 04:48:18'),(11,NULL,NULL,'[{\"lang_code\":\"vi\",\"content\":\"D\\u1ef0 \\u00c1N S\\u1eaeP T\\u1edaI: PH\\u00d2NG KH\\u00c1M M\\u1eaeT \\u0110\\u1ea0T TI\\u00caU CHU\\u1ea8N QU\\u1ed0C T\\u1ebe \\u0110\\u1ea6U TI\\u00caN T\\u1ea0I VI\\u1ec6T NAM\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p style=\\\"text-align: center;\\\"><strong>PH&Ograve;NG KH&Aacute;M M\\u1eaeT TI&Ecirc;U CHU\\u1ea8N QU\\u1ed0C T\\u1ebe \\u0110\\u1ea6U TI&Ecirc;N T\\u1ea0I VI\\u1ec6T NAM<\\/strong><\\/p>\\n<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1161859804.jpg\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><\\/strong><\\/p>\\n<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1162640619.jpg\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><\\/strong><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-204204994.jpg\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-183522286.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1550643284.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1501955289.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-998769497.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1621426030.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p style=\\\"text-align: center;\\\"><em>H&igrave;nh \\u1ea3nh d\\u1ef1 &aacute;n ph&ograve;ng kh&aacute;m \\u0111\\u1ea1t chu\\u1ea9n qu\\u1ed1c t\\u1ebf<\\/em><\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"Ph\\u00f2ng kh\\u00e1m m\\u1eaft \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n qu\\u1ed1c gia Vi\\u1ec7t Nam\"}]','du-an-sap-toi-phong-kham-mat-dat-tieu-chuan-quoc-te-dau-tien-tai-viet-nam',1,NULL,NULL,'http://kieukhanhmed.com/uploads/images/blog-55457414.jpg','admins','tin-tuc',0,NULL,'2023-02-09 05:00:09','2023-02-09 06:50:14');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_customer`
--

DROP TABLE IF EXISTS `category_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_customer`
--

LOCK TABLES `category_customer` WRITE;
/*!40000 ALTER TABLE `category_customer` DISABLE KEYS */;
INSERT INTO `category_customer` VALUES (1,'a','a',1,'2020-03-13 06:58:51','2020-03-13 06:58:51'),(2,'cx','cx',0,'2020-03-13 07:00:01','2020-03-13 07:08:12'),(3,'tu van vay nong','tu-van-vay-nong',1,'2020-03-15 03:40:28','2020-03-15 03:40:28');
/*!40000 ALTER TABLE `category_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '0-cá nhân; 1-doanh nghiệp',
  `status` int(11) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'tuan','toilatoi@gmail.com','$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO','aaaaaaaaa','0849849849','0',NULL,NULL,NULL,'2020-05-02 07:38:04','2020-05-02 07:38:04'),(2,'LE TUAN ANH','tuananh1122@gmail.com','$2y$10$micvZgHHhFzjqHsHJn1vQ.a0HGfyfn8r1TjfzPBu/WTyUIgpiu322',NULL,'0373631368',NULL,0,NULL,NULL,'2021-08-20 08:47:05','2021-08-20 08:47:05'),(3,'LE TUAN ANH','tuana@gmail.com','$2y$10$a.pm0hbW3QieL9nQ4obDlegeIX2bPr6VwHeP2JzD.70uUC1lcaWVy',NULL,'03736313689',NULL,0,NULL,NULL,'2021-08-20 08:48:15','2021-08-20 08:48:15'),(4,'anh','toilato2i@gmail.com','$2y$10$nXwYQGdFLK6OJekWPkue5ejig3D05j1BtQKemt.Y7f9WB0jNY2oNu',NULL,'03736313682',NULL,0,NULL,NULL,'2021-08-20 08:59:22','2021-08-20 08:59:22'),(5,'LE TUAN ANHac','toaaailatoi@gmail.com','$2y$10$B2wmgtjXDv58re5Fo0KgJ.0uEgNSl8RRjS9Ysm.pbPgAKBR1ULKHO',NULL,'0373631121',NULL,0,NULL,NULL,'2021-08-20 09:00:49','2021-08-20 09:00:49'),(6,'LE TUAN ANH1231','tuananhdina111mo1122@gmail.com','$2y$10$.nkpZV1.8rUX9nh2C/MgxejyojLmcDJbYrfZ7rre7L7bNg5YEKwcS',NULL,'037363112368',NULL,0,NULL,NULL,'2021-08-20 09:03:06','2021-08-20 09:03:06'),(7,'LE TUAN ANH111','toilat12313oi@gmail.com','$2y$10$zl3oj2wMtkFs1hZQx7hLBuaenIQm9zqFLkfVDvcO5tD2lN/vMK34y',NULL,'03736313682112',NULL,0,NULL,NULL,'2021-08-20 09:04:00','2021-08-20 09:04:00'),(8,'LE TUAN ANH','toilatoi123@gmail.com','$2y$10$8AnRkfsrU3sTyXGZUNNLaO3zTAfGCUMxCrCOko6Xz.5LbhxdGI3zm',NULL,'0373631368',NULL,0,NULL,NULL,'2021-08-20 09:07:23','2021-08-20 09:07:23'),(9,'LE TUAN ANH','toilatoi1235@gmail.com','$2y$10$aR5nfJILeGpNgbbm4xHEB.LI5GofEpLzDlV5jxPYTIlc2GE3/mUku',NULL,'0373631369',NULL,0,NULL,NULL,'2021-08-20 09:09:34','2021-08-20 09:09:34'),(10,'LE TUAN ANHâ','toilatoi12325@gmail.com','$2y$10$PTmWNiCUdIF7axVK9KtoLuz1hh1fKAxzHa/YQ0tf04sX6WIKja0z6',NULL,'0373631369',NULL,0,NULL,NULL,'2021-08-22 08:38:08','2021-08-22 08:38:08'),(14,'anh tuấn','tuananhdinamo112233@gmail.com','$2y$10$9KHzinXVjeu6aVGN56VPEecMHS6AXG3sAQ.aOPdhD1lPICt.i4WI.',NULL,NULL,NULL,0,'102882335611717029596',NULL,'2021-08-22 08:57:47','2021-08-22 08:57:47'),(15,'LE TUAN ANH','toilatoi12356@gmail.com','$2y$10$AFafVSSx80QMPifhxB8VHus.RYrbyoJP9TpmhNMxeljk0caQUnvYO',NULL,'0373631368',NULL,0,NULL,NULL,'2021-10-05 21:56:56','2021-10-05 21:56:56');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_prefix` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_province_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `_province_id` (`_province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Bình Chánh','Huyện',1),(2,'Bình Tân','Quận',1),(3,'Bình Thạnh','Quận',1),(4,'Cần Giờ','Huyện',1),(5,'Củ Chi','Huyện',1),(6,'Gò Vấp','Quận',1),(7,'Hóc Môn','Huyện',1),(8,'Nhà Bè','Huyện',1),(9,'Phú Nhuận','Quận',1),(10,'Quận 1','',1),(11,'Quận 10','',1),(12,'Quận 11','',1),(13,'Quận 12','',1),(14,'Quận 2','',1),(15,'Quận 3','',1),(16,'Quận 4','',1),(17,'Quận 5','',1),(18,'Quận 6','',1),(19,'Quận 7','',1),(20,'Quận 8','',1),(21,'Quận 9','',1),(22,'Tân Bình','Quận',1),(23,'Tân Phú','Quận',1),(24,'Thủ Đức','Quận',1),(25,'Ba Đình','Quận',2),(26,'Ba Vì','Huyện',2),(27,'Bắc Từ Liêm','Quận',2),(28,'Cầu Giấy','Quận',2),(29,'Chương Mỹ','Huyện',2),(30,'Đan Phượng','Huyện',2),(31,'Đông Anh','Huyện',2),(32,'Đống Đa','Quận',2),(33,'Gia Lâm','Huyện',2),(34,'Hà Đông','Quận',2),(35,'Hai Bà Trưng','Quận',2),(36,'Hoài Đức','Huyện',2),(37,'Hoàn Kiếm','Quận',2),(38,'Hoàng Mai','Quận',2),(39,'Long Biên','Quận',2),(40,'Mê Linh','Huyện',2),(41,'Mỹ Đức','Huyện',2),(42,'Nam Từ Liêm','Quận',2),(43,'Phú Xuyên','Huyện',2),(44,'Phúc Thọ','Huyện',2),(45,'Quốc Oai','Huyện',2),(46,'Sóc Sơn','Huyện',2),(47,'Sơn Tây','Thị xã',2),(48,'Tây Hồ','Quận',2),(49,'Thạch Thất','Huyện',2),(50,'Thanh Oai','Huyện',2),(51,'Thanh Trì','Huyện',2),(52,'Thanh Xuân','Quận',2),(53,'Thường Tín','Huyện',2),(54,'Ứng Hòa','Huyện',2),(55,'Cẩm Lệ','Quận',3),(56,'Hải Châu','Quận',3),(57,'Hòa Vang','Huyện',3),(58,'Hoàng Sa','Huyện',3),(59,'Liên Chiểu','Quận',3),(60,'Ngũ Hành Sơn','Quận',3),(61,'Sơn Trà','Quận',3),(62,'Thanh Khê','Quận',3),(63,'Bàu Bàng','Huyện',4),(64,'Bến Cát','Thị xã',4),(65,'Dầu Tiếng','Huyện',4),(66,'Dĩ An','Thị xã',4),(67,'Phú Giáo','Huyện',4),(68,'Tân Uyên','Huyện',4),(69,'Thủ Dầu Một','Thị xã',4),(70,'Thuận An','Huyện',4),(71,'Biên Hòa','Thành phố',5),(72,'Cẩm Mỹ','Huyện',5),(73,'Định Quán','Huyện',5),(74,'Long Khánh','Thị xã',5),(75,'Long Thành','Huyện',5),(76,'Nhơn Trạch','Huyện',5),(77,'Tân Phú','Quận',5),(78,'Thống Nhất','Huyện',5),(79,'Trảng Bom','Huyện',5),(80,'Vĩnh Cửu','Huyện',5),(81,'Xuân Lộc','Huyện',5),(82,'Cam Lâm','Huyện',6),(83,'Cam Ranh','Thành phố',6),(84,'Diên Khánh','Huyện',6),(85,'Khánh Sơn','Huyện',6),(86,'Khánh Vĩnh','Huyện',6),(87,'Nha Trang','Thành phố',6),(88,'Ninh Hòa','Thị xã',6),(89,'Trường Sa','Huyện',6),(90,'Vạn Ninh','Huyện',6),(91,'An Dương','Huyện',7),(92,'An Lão','Huyện',7),(93,'Bạch Long Vĩ','Huyện',7),(94,'Cát Hải','Huyện',7),(95,'Đồ Sơn','Quận',7),(96,'Dương Kinh','Quận',7),(97,'Hải An','Quận',7),(98,'Hồng Bàng','Quận',7),(99,'Kiến An','Quận',7),(100,'Kiến Thụy','Huyện',7),(101,'Lê Chân','Quận',7),(102,'Ngô Quyền','Quận',7),(103,'Thủy Nguyên','Huyện',7),(104,'Tiên Lãng','Huyện',7),(105,'Vĩnh Bảo','Huyện',7),(106,'Bến Lức','Huyện',8),(107,'Cần Đước','Huyện',8),(108,'Cần Giuộc','Huyện',8),(109,'Châu Thành','Huyện',8),(110,'Đức Hòa','Huyện',8),(111,'Đức Huệ','Huyện',8),(112,'Kiến Tường','Thị xã',8),(113,'Mộc Hóa','Huyện',8),(114,'Tân An','Thành phố',8),(115,'Tân Hưng','Huyện',8),(116,'Tân Thạnh','Huyện',8),(117,'Tân Trụ','Huyện',8),(118,'Thạnh Hóa','Huyện',8),(119,'Thủ Thừa','Huyện',8),(120,'Vĩnh Hưng','Huyện',8),(121,'Bắc Trà My','Huyện',9),(122,'Đại Lộc','Huyện',9),(123,'Điện Bàn','Huyện',9),(124,'Đông Giang','Huyện',9),(125,'Duy Xuyên','Huyện',9),(126,'Hiệp Đức','Huyện',9),(127,'Hội An','Thành phố',9),(128,'Nam Giang','Huyện',9),(129,'Nam Trà My','Huyện',9),(130,'Nông Sơn','Huyện',9),(131,'Núi Thành','Huyện',9),(132,'Phú Ninh','Huyện',9),(133,'Phước Sơn','Huyện',9),(134,'Quế Sơn','Huyện',9),(135,'Tam Kỳ','Thành phố',9),(136,'Tây Giang','Huyện',9),(137,'Thăng Bình','Huyện',9),(138,'Tiên Phước','Huyện',9),(139,'Bà Rịa','Thị xã',10),(140,'Châu Đức','Huyện',10),(141,'Côn Đảo','Huyện',10),(142,'Đất Đỏ','Huyện',10),(143,'Long Điền','Huyện',10),(144,'Tân Thành','Huyện',10),(145,'Vũng Tàu','Thành phố',10),(146,'Xuyên Mộc','Huyện',10),(147,'Buôn Đôn','Huyện',11),(148,'Buôn Hồ','Thị xã',11),(149,'Buôn Ma Thuột','Thành phố',11),(150,'Cư Kuin','Huyện',11),(151,'Cư M\'gar','Huyện',11),(152,'Ea H\'Leo','Huyện',11),(153,'Ea Kar','Huyện',11),(154,'Ea Súp','Huyện',11),(155,'Krông Ana','Huyện',11),(156,'Krông Bông','Huyện',11),(157,'Krông Buk','Huyện',11),(158,'Krông Năng','Huyện',11),(159,'Krông Pắc','Huyện',11),(160,'Lăk','Huyện',11),(161,'M\'Đrăk','Huyện',11),(162,' Thới Lai','Huyện',12),(163,'Bình Thủy','Quận',12),(164,'Cái Răng','Quận',12),(165,'Cờ Đỏ','Huyện',12),(166,'Ninh Kiều','Quận',12),(167,'Ô Môn','Quận',12),(168,'Phong Điền','Huyện',12),(169,'Thốt Nốt','Quận',12),(170,'Vĩnh Thạnh','Huyện',12),(171,'Bắc Bình','Huyện',13),(172,'Đảo Phú Quý','Huyện',13),(173,'Đức Linh','Huyện',13),(174,'Hàm Tân','Huyện',13),(175,'Hàm Thuận Bắc','Huyện',13),(176,'Hàm Thuận Nam','Huyện',13),(177,'La Gi','Thị xã',13),(178,'Phan Thiết','Thành phố',13),(179,'Tánh Linh','Huyện',13),(180,'Tuy Phong','Huyện',13),(181,'Bảo Lâm','Huyện',14),(182,'Bảo Lộc','Thành phố',14),(183,'Cát Tiên','Huyện',14),(184,'Đạ Huoai','Huyện',14),(185,'Đà Lạt','Thành phố',14),(186,'Đạ Tẻh','Huyện',14),(187,'Đam Rông','Huyện',14),(188,'Di Linh','Huyện',14),(189,'Đơn Dương','Huyện',14),(190,'Đức Trọng','Huyện',14),(191,'Lạc Dương','Huyện',14),(192,'Lâm Hà','Huyện',14),(193,'A Lưới','Huyện',15),(194,'Huế','Thành phố',15),(195,'Hương Thủy','Thị xã',15),(196,'Hương Trà','Huyện',15),(197,'Nam Đông','Huyện',15),(198,'Phong Điền','Huyện',15),(199,'Phú Lộc','Huyện',15),(200,'Phú Vang','Huyện',15),(201,'Quảng Điền','Huyện',15),(202,'An Biên','Huyện',16),(203,'An Minh','Huyện',16),(204,'Châu Thành','Huyện',16),(205,'Giang Thành','Huyện',16),(206,'Giồng Riềng','Huyện',16),(207,'Gò Quao','Huyện',16),(208,'Hà Tiên','Thị xã',16),(209,'Hòn Đất','Huyện',16),(210,'Kiên Hải','Huyện',16),(211,'Kiên Lương','Huyện',16),(212,'Phú Quốc','Huyện',16),(213,'Rạch Giá','Thành phố',16),(214,'Tân Hiệp','Huyện',16),(215,'U minh Thượng','Huyện',16),(216,'Vĩnh Thuận','Huyện',16),(217,'Bắc Ninh','Thành phố',17),(218,'Gia Bình','Huyện',17),(219,'Lương Tài','Huyện',17),(220,'Quế Võ','Huyện',17),(221,'Thuận Thành','Huyện',17),(222,'Tiên Du','Huyện',17),(223,'Từ Sơn','Thị xã',17),(224,'Yên Phong','Huyện',17),(225,'Ba Chẽ','Huyện',18),(226,'Bình Liêu','Huyện',18),(227,'Cẩm Phả','Thành phố',18),(228,'Cô Tô','Huyện',18),(229,'Đầm Hà','Huyện',18),(230,'Đông Triều','Huyện',18),(231,'Hạ Long','Thành phố',18),(232,'Hải Hà','Huyện',18),(233,'Hoành Bồ','Huyện',18),(234,'Móng Cái','Thành phố',18),(235,'Quảng Yên','Huyện',18),(236,'Tiên Yên','Huyện',18),(237,'Uông Bí','Thị xã',18),(238,'Vân Đồn','Huyện',18),(239,'Bá Thước','Huyện',19),(240,'Bỉm Sơn','Thị xã',19),(241,'Cẩm Thủy','Huyện',19),(242,'Đông Sơn','Huyện',19),(243,'Hà Trung','Huyện',19),(244,'Hậu Lộc','Huyện',19),(245,'Hoằng Hóa','Huyện',19),(246,'Lang Chánh','Huyện',19),(247,'Mường Lát','Huyện',19),(248,'Nga Sơn','Huyện',19),(249,'Ngọc Lặc','Huyện',19),(250,'Như Thanh','Huyện',19),(251,'Như Xuân','Huyện',19),(252,'Nông Cống','Huyện',19),(253,'Quan Hóa','Huyện',19),(254,'Quan Sơn','Huyện',19),(255,'Quảng Xương','Huyện',19),(256,'Sầm Sơn','Thị xã',19),(257,'Thạch Thành','Huyện',19),(258,'Thanh Hóa','Thành phố',19),(259,'Thiệu Hóa','Huyện',19),(260,'Thọ Xuân','Huyện',19),(261,'Thường Xuân','Huyện',19),(262,'Tĩnh Gia','Huyện',19),(263,'Triệu Sơn','Huyện',19),(264,'Vĩnh Lộc','Huyện',19),(265,'Yên Định','Huyện',19),(266,'Anh Sơn','Huyện',20),(267,'Con Cuông','Huyện',20),(268,'Cửa Lò','Thị xã',20),(269,'Diễn Châu','Huyện',20),(270,'Đô Lương','Huyện',20),(271,'Hoàng Mai','Thị xã',20),(272,'Hưng Nguyên','Huyện',20),(273,'Kỳ Sơn','Huyện',20),(274,'Nam Đàn','Huyện',20),(275,'Nghi Lộc','Huyện',20),(276,'Nghĩa Đàn','Huyện',20),(277,'Quế Phong','Huyện',20),(278,'Quỳ Châu','Huyện',20),(279,'Quỳ Hợp','Huyện',20),(280,'Quỳnh Lưu','Huyện',20),(281,'Tân Kỳ','Huyện',20),(282,'Thái Hòa','Thị xã',20),(283,'Thanh Chương','Huyện',20),(284,'Tương Dương','Huyện',20),(285,'Vinh','Thành phố',20),(286,'Yên Thành','Huyện',20),(287,'Bình Giang','Huyện',21),(288,'Cẩm Giàng','Huyện',21),(289,'Chí Linh','Thị xã',21),(290,'Gia Lộc','Huyện',21),(291,'Hải Dương','Thành phố',21),(292,'Kim Thành','Huyện',21),(293,'Kinh Môn','Huyện',21),(294,'Nam Sách','Huyện',21),(295,'Ninh Giang','Huyện',21),(296,'Thanh Hà','Huyện',21),(297,'Thanh Miện','Huyện',21),(298,'Tứ Kỳ','Huyện',21),(299,'An Khê','Thị xã',22),(300,'AYun Pa','Thị xã',22),(301,'Chư Păh','Huyện',22),(302,'Chư Pưh','Huyện',22),(303,'Chư Sê','Huyện',22),(304,'ChưPRông','Huyện',22),(305,'Đăk Đoa','Huyện',22),(306,'Đăk Pơ','Huyện',22),(307,'Đức Cơ','Huyện',22),(308,'Ia Grai','Huyện',22),(309,'Ia Pa','Huyện',22),(310,'KBang','Huyện',22),(311,'Kông Chro','Huyện',22),(312,'Krông Pa','Huyện',22),(313,'Mang Yang','Huyện',22),(314,'Phú Thiện','Huyện',22),(315,'Plei Ku','Thành phố',22),(316,'Bình Long','Thị xã',23),(317,'Bù Đăng','Huyện',23),(318,'Bù Đốp','Huyện',23),(319,'Bù Gia Mập','Huyện',23),(320,'Chơn Thành','Huyện',23),(321,'Đồng Phú','Huyện',23),(322,'Đồng Xoài','Thị xã',23),(323,'Hớn Quản','Huyện',23),(324,'Lộc Ninh','Huyện',23),(325,'Phú Riềng','Huyện',23),(326,'Phước Long','Thị xã',23),(327,'Ân Thi','Huyện',24),(328,'Hưng Yên','Thành phố',24),(329,'Khoái Châu','Huyện',24),(330,'Kim Động','Huyện',24),(331,'Mỹ Hào','Huyện',24),(332,'Phù Cừ','Huyện',24),(333,'Tiên Lữ','Huyện',24),(334,'Văn Giang','Huyện',24),(335,'Văn Lâm','Huyện',24),(336,'Yên Mỹ','Huyện',24),(337,'An Lão','Huyện',25),(338,'An Nhơn','Huyện',25),(339,'Hoài Ân','Huyện',25),(340,'Hoài Nhơn','Huyện',25),(341,'Phù Cát','Huyện',25),(342,'Phù Mỹ','Huyện',25),(343,'Quy Nhơn','Thành phố',25),(344,'Tây Sơn','Huyện',25),(345,'Tuy Phước','Huyện',25),(346,'Vân Canh','Huyện',25),(347,'Vĩnh Thạnh','Huyện',25),(348,'Cái Bè','Huyện',26),(349,'Cai Lậy','Thị xã',26),(350,'Châu Thành','Huyện',26),(351,'Chợ Gạo','Huyện',26),(352,'Gò Công','Thị xã',26),(353,'Gò Công Đông','Huyện',26),(354,'Gò Công Tây','Huyện',26),(355,'Huyện Cai Lậy','Huyện',26),(356,'Mỹ Tho','Thành phố',26),(357,'Tân Phú Đông','Huyện',26),(358,'Tân Phước','Huyện',26),(359,'Đông Hưng','Huyện',27),(360,'Hưng Hà','Huyện',27),(361,'Kiến Xương','Huyện',27),(362,'Quỳnh Phụ','Huyện',27),(363,'Thái Bình','Thành phố',27),(364,'Thái Thuỵ','Huyện',27),(365,'Tiền Hải','Huyện',27),(366,'Vũ Thư','Huyện',27),(367,'Bắc Giang','Thành phố',28),(368,'Hiệp Hòa','Huyện',28),(369,'Lạng Giang','Huyện',28),(370,'Lục Nam','Huyện',28),(371,'Lục Ngạn','Huyện',28),(372,'Sơn Động','Huyện',28),(373,'Tân Yên','Huyện',28),(374,'Việt Yên','Huyện',28),(375,'Yên Dũng','Huyện',28),(376,'Yên Thế','Huyện',28),(377,'Cao Phong','Huyện',29),(378,'Đà Bắc','Huyện',29),(379,'Hòa Bình','Thành phố',29),(380,'Kim Bôi','Huyện',29),(381,'Kỳ Sơn','Huyện',29),(382,'Lạc Sơn','Huyện',29),(383,'Lạc Thủy','Huyện',29),(384,'Lương Sơn','Huyện',29),(385,'Mai Châu','Huyện',29),(386,'Tân Lạc','Huyện',29),(387,'Yên Thủy','Huyện',29),(388,'An Phú','Huyện',30),(389,'Châu Đốc','Thị xã',30),(390,'Châu Phú','Huyện',30),(391,'Châu Thành','Huyện',30),(392,'Chợ Mới','Huyện',30),(393,'Long Xuyên','Thành phố',30),(394,'Phú Tân','Huyện',30),(395,'Tân Châu','Thị xã',30),(396,'Thoại Sơn','Huyện',30),(397,'Tịnh Biên','Huyện',30),(398,'Tri Tôn','Huyện',30),(399,'Bình Xuyên','Huyện',31),(400,'Lập Thạch','Huyện',31),(401,'Phúc Yên','Thị xã',31),(402,'Sông Lô','Huyện',31),(403,'Tam Đảo','Huyện',31),(404,'Tam Dương','Huyện',31),(405,'Vĩnh Tường','Huyện',31),(406,'Vĩnh Yên','Thành phố',31),(407,'Yên Lạc','Huyện',31),(408,'Bến Cầu','Huyện',32),(409,'Châu Thành','Huyện',32),(410,'Dương Minh Châu','Huyện',32),(411,'Gò Dầu','Huyện',32),(412,'Hòa Thành','Huyện',32),(413,'Tân Biên','Huyện',32),(414,'Tân Châu','Huyện',32),(415,'Tây Ninh','Thị xã',32),(416,'Trảng Bàng','Huyện',32),(417,'Đại Từ','Huyện',33),(418,'Định Hóa','Huyện',33),(419,'Đồng Hỷ','Huyện',33),(420,'Phổ Yên','Huyện',33),(421,'Phú Bình','Huyện',33),(422,'Phú Lương','Huyện',33),(423,'Sông Công','Thị xã',33),(424,'Thái Nguyên','Thành phố',33),(425,'Võ Nhai','Huyện',33),(426,'Bắc Hà','Huyện',34),(427,'Bảo Thắng','Huyện',34),(428,'Bảo Yên','Huyện',34),(429,'Bát Xát','Huyện',34),(430,'Lào Cai','Thành phố',34),(431,'Mường Khương','Huyện',34),(432,'Sa Pa','Huyện',34),(433,'Văn Bàn','Huyện',34),(434,'Xi Ma Cai','Huyện',34),(435,'Giao Thủy','Huyện',35),(436,'Hải Hậu','Huyện',35),(437,'Mỹ Lộc','Huyện',35),(438,'Nam Định','Thành phố',35),(439,'Nam Trực','Huyện',35),(440,'Nghĩa Hưng','Huyện',35),(441,'Trực Ninh','Huyện',35),(442,'Vụ Bản','Huyện',35),(443,'Xuân Trường','Huyện',35),(444,'Ý Yên','Huyện',35),(445,'Ba Tơ','Huyện',36),(446,'Bình Sơn','Huyện',36),(447,'Đức Phổ','Huyện',36),(448,'Lý Sơn','Huyện',36),(449,'Minh Long','Huyện',36),(450,'Mộ Đức','Huyện',36),(451,'Nghĩa Hành','Huyện',36),(452,'Quảng Ngãi','Thành phố',36),(453,'Sơn Hà','Huyện',36),(454,'Sơn Tây','Huyện',36),(455,'Sơn Tịnh','Huyện',36),(456,'Tây Trà','Huyện',36),(457,'Trà Bồng','Huyện',36),(458,'Tư Nghĩa','Huyện',36),(459,'Ba Tri','Huyện',37),(460,'Bến Tre','Thành phố',37),(461,'Bình Đại','Huyện',37),(462,'Châu Thành','Huyện',37),(463,'Chợ Lách','Huyện',37),(464,'Giồng Trôm','Huyện',37),(465,'Mỏ Cày Bắc','Huyện',37),(466,'Mỏ Cày Nam','Huyện',37),(467,'Thạnh Phú','Huyện',37),(468,'Cư Jút','Huyện',38),(469,'Dăk GLong','Huyện',38),(470,'Dăk Mil','Huyện',38),(471,'Dăk R\'Lấp','Huyện',38),(472,'Dăk Song','Huyện',38),(473,'Gia Nghĩa','Thị xã',38),(474,'Krông Nô','Huyện',38),(475,'Tuy Đức','Huyện',38),(476,'Cà Mau','Thành phố',39),(477,'Cái Nước','Huyện',39),(478,'Đầm Dơi','Huyện',39),(479,'Năm Căn','Huyện',39),(480,'Ngọc Hiển','Huyện',39),(481,'Phú Tân','Huyện',39),(482,'Thới Bình','Huyện',39),(483,'Trần Văn Thời','Huyện',39),(484,'U Minh','Huyện',39),(485,'Bình Minh','Huyện',40),(486,'Bình Tân','Quận',40),(487,'Long Hồ','Huyện',40),(488,'Mang Thít','Huyện',40),(489,'Tam Bình','Huyện',40),(490,'Trà Ôn','Huyện',40),(491,'Vĩnh Long','Thành phố',40),(492,'Vũng Liêm','Huyện',40),(493,'Gia Viễn','Huyện',41),(494,'Hoa Lư','Huyện',41),(495,'Kim Sơn','Huyện',41),(496,'Nho Quan','Huyện',41),(497,'Ninh Bình','Thành phố',41),(498,'Tam Điệp','Thị xã',41),(499,'Yên Khánh','Huyện',41),(500,'Yên Mô','Huyện',41),(501,'Cẩm Khê','Huyện',42),(502,'Đoan Hùng','Huyện',42),(503,'Hạ Hòa','Huyện',42),(504,'Lâm Thao','Huyện',42),(505,'Phù Ninh','Huyện',42),(506,'Phú Thọ','Thị xã',42),(507,'Tam Nông','Huyện',42),(508,'Tân Sơn','Huyện',42),(509,'Thanh Ba','Huyện',42),(510,'Thanh Sơn','Huyện',42),(511,'Thanh Thủy','Huyện',42),(512,'Việt Trì','Thành phố',42),(513,'Yên Lập','Huyện',42),(514,'Bác Ái','Huyện',43),(515,'Ninh Hải','Huyện',43),(516,'Ninh Phước','Huyện',43),(517,'Ninh Sơn','Huyện',43),(518,'Phan Rang - Tháp Chàm','Thành phố',43),(519,'Thuận Bắc','Huyện',43),(520,'Thuận Nam','Huyện',43),(521,'Đông Hòa','Huyện',44),(522,'Đồng Xuân','Huyện',44),(523,'Phú Hòa','Huyện',44),(524,'Sơn Hòa','Huyện',44),(525,'Sông Cầu','Thị xã',44),(526,'Sông Hinh','Huyện',44),(527,'Tây Hòa','Huyện',44),(528,'Tuy An','Huyện',44),(529,'Tuy Hòa','Thành phố',44),(530,'Bình Lục','Huyện',45),(531,'Duy Tiên','Huyện',45),(532,'Kim Bảng','Huyện',45),(533,'Lý Nhân','Huyện',45),(534,'Phủ Lý','Thành phố',45),(535,'Thanh Liêm','Huyện',45),(536,'Cẩm Xuyên','Huyện',46),(537,'Can Lộc','Huyện',46),(538,'Đức Thọ','Huyện',46),(539,'Hà Tĩnh','Thành phố',46),(540,'Hồng Lĩnh','Thị xã',46),(541,'Hương Khê','Huyện',46),(542,'Hương Sơn','Huyện',46),(543,'Kỳ Anh','Huyện',46),(544,'Lộc Hà','Huyện',46),(545,'Nghi Xuân','Huyện',46),(546,'Thạch Hà','Huyện',46),(547,'Vũ Quang','Huyện',46),(548,'Cao Lãnh','Thành phố',47),(549,'Châu Thành','Huyện',47),(550,'Hồng Ngự','Thị xã',47),(551,'Huyện Cao Lãnh','Huyện',47),(552,'Huyện Hồng Ngự','Huyện',47),(553,'Lai Vung','Huyện',47),(554,'Lấp Vò','Huyện',47),(555,'Sa Đéc','Thị xã',47),(556,'Tam Nông','Huyện',47),(557,'Tân Hồng','Huyện',47),(558,'Thanh Bình','Huyện',47),(559,'Tháp Mười','Huyện',47),(560,'Châu Thành','Huyện',48),(561,'Cù Lao Dung','Huyện',48),(562,'Kế Sách','Huyện',48),(563,'Long Phú','Huyện',48),(564,'Mỹ Tú','Huyện',48),(565,'Mỹ Xuyên','Huyện',48),(566,'Ngã Năm','Huyện',48),(567,'Sóc Trăng','Thành phố',48),(568,'Thạnh Trị','Huyện',48),(569,'Trần Đề','Huyện',48),(570,'Vĩnh Châu','Huyện',48),(571,'Đăk Glei','Huyện',49),(572,'Đăk Hà','Huyện',49),(573,'Đăk Tô','Huyện',49),(574,'Ia H\'Drai','Huyện',49),(575,'Kon Plông','Huyện',49),(576,'Kon Rẫy','Huyện',49),(577,'KonTum','Thành phố',49),(578,'Ngọc Hồi','Huyện',49),(579,'Sa Thầy','Huyện',49),(580,'Tu Mơ Rông','Huyện',49),(581,'Ba Đồn','Thị xã',50),(582,'Bố Trạch','Huyện',50),(583,'Đồng Hới','Thành phố',50),(584,'Lệ Thủy','Huyện',50),(585,'Minh Hóa','Huyện',50),(586,'Quảng Ninh','Huyện',50),(587,'Quảng Trạch','Huyện',50),(588,'Tuyên Hóa','Huyện',50),(589,'Cam Lộ','Huyện',51),(590,'Đa Krông','Huyện',51),(591,'Đảo Cồn cỏ','Huyện',51),(592,'Đông Hà','Thành phố',51),(593,'Gio Linh','Huyện',51),(594,'Hải Lăng','Huyện',51),(595,'Hướng Hóa','Huyện',51),(596,'Quảng Trị','Thị xã',51),(597,'Triệu Phong','Huyện',51),(598,'Vĩnh Linh','Huyện',51),(599,'Càng Long','Huyện',52),(600,'Cầu Kè','Huyện',52),(601,'Cầu Ngang','Huyện',52),(602,'Châu Thành','Huyện',52),(603,'Duyên Hải','Huyện',52),(604,'Tiểu Cần','Huyện',52),(605,'Trà Cú','Huyện',52),(606,'Trà Vinh','Thành phố',52),(607,'Châu Thành','Huyện',53),(608,'Châu Thành A','Huyện',53),(609,'Long Mỹ','Huyện',53),(610,'Ngã Bảy','Thị xã',53),(611,'Phụng Hiệp','Huyện',53),(612,'Vị Thanh','Thành phố',53),(613,'Vị Thủy','Huyện',53),(614,'Bắc Yên','Huyện',54),(615,'Mai Sơn','Huyện',54),(616,'Mộc Châu','Huyện',54),(617,'Mường La','Huyện',54),(618,'Phù Yên','Huyện',54),(619,'Quỳnh Nhai','Huyện',54),(620,'Sơn La','Thành phố',54),(621,'Sông Mã','Huyện',54),(622,'Sốp Cộp','Huyện',54),(623,'Thuận Châu','Huyện',54),(624,'Vân Hồ','Huyện',54),(625,'Yên Châu','Huyện',54),(626,'Bạc Liêu','Thành phố',55),(627,'Đông Hải','Huyện',55),(628,'Giá Rai','Huyện',55),(629,'Hòa Bình','Huyện',55),(630,'Hồng Dân','Huyện',55),(631,'Phước Long','Huyện',55),(632,'Vĩnh Lợi','Huyện',55),(633,'Lục Yên','Huyện',56),(634,'Mù Cang Chải','Huyện',56),(635,'Nghĩa Lộ','Thị xã',56),(636,'Trạm Tấu','Huyện',56),(637,'Trấn Yên','Huyện',56),(638,'Văn Chấn','Huyện',56),(639,'Văn Yên','Huyện',56),(640,'Yên Bái','Thành phố',56),(641,'Yên Bình','Huyện',56),(642,'Chiêm Hóa','Huyện',57),(643,'Hàm Yên','Huyện',57),(644,'Lâm Bình','Huyện',57),(645,'Na Hang','Huyện',57),(646,'Sơn Dương','Huyện',57),(647,'Tuyên Quang','Thành phố',57),(648,'Yên Sơn','Huyện',57),(649,'Điện Biên','Huyện',58),(650,'Điện Biên Đông','Huyện',58),(651,'Điện Biên Phủ','Thành phố',58),(652,'Mường Ảng','Huyện',58),(653,'Mường Chà','Huyện',58),(654,'Mường Lay','Thị xã',58),(655,'Mường Nhé','Huyện',58),(656,'Nậm Pồ','Huyện',58),(657,'Tủa Chùa','Huyện',58),(658,'Tuần Giáo','Huyện',58),(659,'Lai Châu','Thị xã',59),(660,'Mường Tè','Huyện',59),(661,'Nậm Nhùn','Huyện',59),(662,'Phong Thổ','Huyện',59),(663,'Sìn Hồ','Huyện',59),(664,'Tam Đường','Huyện',59),(665,'Tân Uyên','Huyện',59),(666,'Than Uyên','Huyện',59),(667,'Bắc Sơn','Huyện',60),(668,'Bình Gia','Huyện',60),(669,'Cao Lộc','Huyện',60),(670,'Chi Lăng','Huyện',60),(671,'Đình Lập','Huyện',60),(672,'Hữu Lũng','Huyện',60),(673,'Lạng Sơn','Thành phố',60),(674,'Lộc Bình','Huyện',60),(675,'Tràng Định','Huyện',60),(676,'Văn Lãng','Huyện',60),(677,'Văn Quan','Huyện',60),(678,'Bắc Mê','Huyện',61),(679,'Bắc Quang','Huyện',61),(680,'Đồng Văn','Huyện',61),(681,'Hà Giang','Thành phố',61),(682,'Hoàng Su Phì','Huyện',61),(683,'Mèo Vạc','Huyện',61),(684,'Quản Bạ','Huyện',61),(685,'Quang Bình','Huyện',61),(686,'Vị Xuyên','Huyện',61),(687,'Xín Mần','Huyện',61),(688,'Yên Minh','Huyện',61),(689,'Ba Bể','Huyện',62),(690,'Bắc Kạn','Thị xã',62),(691,'Bạch Thông','Huyện',62),(692,'Chợ Đồn','Huyện',62),(693,'Chợ Mới','Huyện',62),(694,'Na Rì','Huyện',62),(695,'Ngân Sơn','Huyện',62),(696,'Pác Nặm','Huyện',62),(697,'Bảo Lạc','Huyện',63),(698,'Bảo Lâm','Huyện',63),(699,'Cao Bằng','Thị xã',63),(700,'Hạ Lang','Huyện',63),(701,'Hà Quảng','Huyện',63),(702,'Hòa An','Huyện',63),(703,'Nguyên Bình','Huyện',63),(704,'Phục Hòa','Huyện',63),(705,'Quảng Uyên','Huyện',63),(706,'Thạch An','Huyện',63),(707,'Thông Nông','Huyện',63),(708,'Trà Lĩnh','Huyện',63),(709,'Trùng Khánh','Huyện',63);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `id` int(11) unsigned NOT NULL,
  `name` text,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `founders`
--

DROP TABLE IF EXISTS `founders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `founders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `founders`
--

LOCK TABLES `founders` WRITE;
/*!40000 ALTER TABLE `founders` DISABLE KEYS */;
INSERT INTO `founders` VALUES (1,'Nguyễn Văn A','CEO','/uploads/images/524318312team-2.jpg',1,'2021-11-27 10:53:38','2021-11-27 10:53:38'),(2,'Trần Văn Tiến','Nhân viên','/uploads/images/2141386673team-4.jpg',1,'2021-11-27 10:53:38','2021-11-27 10:53:38'),(3,'Bình Cứ Ổn','CTO','/uploads/images/1681371052team-3.jpg',1,'2021-11-27 10:53:38','2021-11-27 10:53:38');
/*!40000 ALTER TABLE `founders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (26,'default','{\"displayName\":\"App\\\\Events\\\\MyEventEmployee\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":7:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\MyEventEmployee\\\":2:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"App\\\\models\\\\employee\\\\Employee\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1584938132,1584938132);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `flagIcon` varchar(255) DEFAULT NULL,
  `viName` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (4,'en-US','Tiếng anh',1,2,'/uploads/images/1092120966en.jpg',NULL,'2020-01-20 04:31:14','2020-01-17 21:32:05'),(6,'vi','Tiếng Việt',1,1,'/uploads/images/17568878711.jpg',NULL,'2020-01-20 04:30:10','2020-01-17 21:38:45');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_static`
--

DROP TABLE IF EXISTS `language_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_static` (
  `languageKey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `languageDefaultValue` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`languageKey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_static`
--

LOCK TABLES `language_static` WRITE;
/*!40000 ALTER TABLE `language_static` DISABLE KEYS */;
INSERT INTO `language_static` VALUES ('about_us','about_us','2020-01-20 07:52:54','2020-01-20 07:52:54'),('acd','acd','2019-10-28 08:37:03','2019-10-28 08:37:03'),('address','address','2020-01-20 07:50:59','2020-01-20 07:50:59'),('address2','address2','2020-02-10 04:51:20','2020-02-10 04:51:20'),('Bewiseconsumer','Bewiseconsumer','2020-01-21 00:30:00','2020-01-21 00:30:00'),('callpreview','callpreview','2020-02-11 05:08:19','2020-02-11 05:08:19'),('calltuvan','calltuvan','2020-01-20 08:38:22','2020-01-20 08:38:22'),('category','category','2020-01-20 20:33:03','2020-01-20 20:33:03'),('contact','contact','2020-01-20 07:33:49','2020-01-20 07:33:49'),('Contactinformation','Contactinformation','2020-01-20 08:52:22','2020-01-20 08:52:22'),('content','content','2020-01-20 08:59:16','2020-01-20 08:59:16'),('description','description','2020-01-20 08:36:59','2020-01-20 08:36:59'),('Discovernow','Discovernow','2020-01-21 00:41:33','2020-01-21 00:41:33'),('featured_categories','featured_categories','2020-01-20 07:47:22','2020-01-20 07:47:22'),('featured_news','featured_news','2020-01-20 07:49:15','2020-01-20 07:49:15'),('featured_product','featured_product','2020-01-20 08:16:22','2020-01-20 08:16:22'),('fromnature','fromnature','2020-01-21 00:29:00','2020-01-21 00:29:00'),('grass_straws','grass_straws','2020-01-20 07:58:35','2020-01-20 07:58:35'),('Grassstraws','Grassstraws','2020-01-21 00:26:56','2020-01-21 00:26:56'),('hoten','hoten','2020-01-20 08:57:43','2020-01-20 08:57:43'),('language','language','2020-01-20 09:01:08','2020-01-20 09:01:08'),('Luxurious','Luxurious','2020-01-30 01:50:39','2020-01-30 01:50:39'),('Material','Material','2020-01-30 01:53:45','2020-01-30 01:53:45'),('nature','nature','2020-01-30 01:54:32','2020-01-30 01:54:32'),('news','news','2019-10-28 08:21:33','2019-10-28 08:21:33'),('no_products','no_products','2020-01-20 08:22:52','2020-01-20 08:22:52'),('phone','phone','2020-01-20 08:58:41','2020-01-20 08:58:41'),('Pleasefillthemessage','Pleasefillthemessage','2020-01-20 08:53:48','2020-01-20 08:53:48'),('product','product','2020-01-20 07:32:30','2020-01-20 07:32:30'),('Productreviews','Productreviews','2020-01-20 08:37:39','2020-01-20 08:37:39'),('Rattan','Rattan','2020-01-30 01:52:39','2020-01-30 01:52:39'),('same_products','same_products','2020-01-20 08:29:53','2020-01-20 08:29:53'),('search_product','search_product','2020-01-20 07:35:56','2020-01-20 07:35:56'),('Sendinformation','Sendinformation','2020-01-20 08:53:08','2020-01-20 08:53:08'),('sendmessage','sendmessage','2020-01-20 08:54:37','2020-01-20 08:54:37'),('size','size','2020-01-20 08:17:30','2020-01-20 08:17:30'),('status','status','2020-01-20 08:33:49','2020-01-20 08:33:49'),('Stocking','Stocking','2020-01-20 08:34:37','2020-01-20 08:34:37'),('storemap','storemap','2020-01-20 08:56:34','2020-01-20 08:56:34'),('Straws','Straws','2020-01-30 01:41:09','2020-01-30 01:41:09'),('Strawsfrombamboo','Strawsfrombamboo','2020-01-30 01:43:23','2020-01-30 01:43:23'),('suport','suport','2020-01-20 09:09:07','2020-01-20 09:09:07'),('titlehome','titlehome','2020-02-11 07:34:51','2020-02-11 07:34:51'),('Trangchu','Home','2019-10-28 08:11:09','2019-10-28 08:11:09'),('updating','updating','2020-01-20 08:18:27','2020-01-20 08:18:27'),('Woodproducts','Woodproducts','2020-01-30 01:49:48','2020-01-30 01:49:48'),('Wouldyoulike','Wouldyoulike','2020-01-20 08:35:28','2020-01-20 08:35:28');
/*!40000 ALTER TABLE `language_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_static_by_lang`
--

DROP TABLE IF EXISTS `language_static_by_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_static_by_lang` (
  `languageStaticKey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `languageCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `languageValue` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_static_by_lang`
--

LOCK TABLES `language_static_by_lang` WRITE;
/*!40000 ALTER TABLE `language_static_by_lang` DISABLE KEYS */;
INSERT INTO `language_static_by_lang` VALUES ('about_us','vi','Về Chúng Tôi'),('about_us','en-US','About Us'),('acd','vi','acd vi'),('acd','ja','acd ja'),('acd','da-DK','acd ac'),('address','vi','Trụ sở'),('address','en-US','Headquarters'),('address2','vi','Văn phòng'),('address2','en-US','Representative office'),('Bewiseconsumer','vi','Hãy là người tiêu dùng thông thái'),('Bewiseconsumer','en-US','Be wise consumer'),('callpreview','vi','Gọi điện để được tư vấn:'),('callpreview','en-US','Call for advice:'),('calltuvan','vi','Gọi điện để được tư vấn'),('calltuvan','en-US','Call for advice'),('category','vi','Danh mục'),('category','en-US','Category'),('contact','vi','Liên hệ'),('contact','en-US','Contact'),('Contactinformation','en-US','Contactin formation'),('Contactinformation','vi','Thông tin liên hệ'),('content','vi','Nội dung'),('content','en-US','Content'),('description','vi','Mô tả'),('description','en-US','Description'),('Discovernow','en-US',' Discover now'),('Discovernow','vi','Khám phá ngay'),('featured_categories','vi','Danh mục nổi bật'),('featured_categories','en-US','Featured categories'),('featured_news','en-US',' Featured news'),('featured_news','vi','Tin tức nổi bật'),('featured_product','vi','Sản phẩm mới nhất'),('featured_product','en-US','Featured product'),('fromnature','en-US',' from nature'),('fromnature','vi','từ thiên nhiên'),('grass_straws','vi','Ống hút cỏ từ thiên nhiên!'),('grass_straws','en-US','Grass straws from nature!'),('Grassstraws','en-US',' Grasss traws'),('Grassstraws','vi','Ống hút cỏ'),('hoten','en-US','Họ Tên'),('hoten','vi','Full name'),('language','vi','Ngôn ngữ'),('language','en-US','Language'),('Luxurious','en-US','Luxurious'),('Luxurious','vi','Sang Trọng'),('Material','vi','Chất liệu'),('Material','en-US','Material'),('nature','en-US','Nature'),('nature','vi','Thiên nhiên'),('news','vi','Tin tức'),('news','ja','News'),('news','da-DK','tin tức'),('news','en-US','News'),('no_products','en-US','No products in this category.'),('no_products','vi','Không có sản phẩm nào trong danh mục này.'),('phone','vi','Số điện thoại'),('phone','en-US','Phone'),('Pleasefillthemessage','vi','Bạn hãy điền nội dung tin nhắn vào form dưới đây và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn sau khi nhận được.'),('Pleasefillthemessage','en-US','Please fill the message content in the form below and send it to us. We will reply you after receiving.'),('product','vi','Sản phẩm'),('product','ja','Product'),('product','en-US','Product'),('Productreviews','en-US','Product reviews'),('Productreviews','vi','Mô tả sản phẩm'),('Rattan','en-US','Rattan'),('Rattan','vi','Mây tre'),('same_products','en-US','Products of the same type'),('same_products','vi','Sản phẩm cùng loại'),('search_product','vi','Tìm kiếm sản phẩm'),('search_product','en-US','Search product'),('Sendinformation','vi','Gửi thông tin'),('Sendinformation','en-US','Send information'),('sendmessage','vi','Gửi tin nhắn'),('sendmessage','en-US','Send Message'),('size','vi','Kích thước'),('size','en-US','Size'),('status','vi','Trạng thái'),('status','en-US','Status'),('Stocking','vi','Còn hàng'),('Stocking','en-US','Stocking'),('storemap','en-US','Store map'),('storemap','vi','Bản đồ cửa hàng'),('Straws','vi','Ống hút'),('Straws','en-US','Straws'),('Strawsfrombamboo','vi','Ống hút từ tre'),('Strawsfrombamboo','en-US','Straws from bamboo'),('suport','vi','Hỗ trợ'),('suport','en-US','Suport'),('titlehome','en-US','Products from bamboo and rattan, wood, '),('titlehome','vi','Sản phẩm từ tre mây, gỗ'),('Trangchu','vi','Trang chủ'),('Trangchu','ja','Home'),('Trangchu','da-DK','Home'),('Trangchu','en-US','Home'),('updating','vi','Đang cập nhật'),('updating','en-US','Updating'),('Woodproducts','en-US','Wood products'),('Woodproducts','vi','Sản phẩm từ gỗ'),('Wouldyoulike','en-US','You might like'),('Wouldyoulike','vi','Bạn có thể thích'),('about_us','vi','Về Chúng Tôi'),('about_us','en-US','About Us'),('acd','vi','acd vi'),('acd','ja','acd ja'),('acd','da-DK','acd ac'),('address','vi','Trụ sở'),('address','en-US','Headquarters'),('address2','vi','Văn phòng'),('address2','en-US','Representative office'),('Bewiseconsumer','vi','Hãy là người tiêu dùng thông thái'),('Bewiseconsumer','en-US','Be wise consumer'),('callpreview','vi','Gọi điện để được tư vấn:'),('callpreview','en-US','Call for advice:'),('calltuvan','vi','Gọi điện để được tư vấn'),('calltuvan','en-US','Call for advice'),('category','vi','Danh mục'),('category','en-US','Category'),('contact','vi','Liên hệ'),('contact','en-US','Contact'),('Contactinformation','en-US','Contactin formation'),('Contactinformation','vi','Thông tin liên hệ'),('content','vi','Nội dung'),('content','en-US','Content'),('description','vi','Mô tả'),('description','en-US','Description'),('Discovernow','en-US',' Discover now'),('Discovernow','vi','Khám phá ngay'),('featured_categories','vi','Danh mục nổi bật'),('featured_categories','en-US','Featured categories'),('featured_news','en-US',' Featured news'),('featured_news','vi','Tin tức nổi bật'),('featured_product','vi','Sản phẩm mới nhất'),('featured_product','en-US','Featured product'),('fromnature','en-US',' from nature'),('fromnature','vi','từ thiên nhiên'),('grass_straws','vi','Ống hút cỏ từ thiên nhiên!'),('grass_straws','en-US','Grass straws from nature!'),('Grassstraws','en-US',' Grasss traws'),('Grassstraws','vi','Ống hút cỏ'),('hoten','en-US','Họ Tên'),('hoten','vi','Full name'),('language','vi','Ngôn ngữ'),('language','en-US','Language'),('Luxurious','en-US','Luxurious'),('Luxurious','vi','Sang Trọng'),('Material','vi','Chất liệu'),('Material','en-US','Material'),('nature','en-US','Nature'),('nature','vi','Thiên nhiên'),('news','vi','Tin tức'),('news','ja','News'),('news','da-DK','tin tức'),('news','en-US','News'),('no_products','en-US','No products in this category.'),('no_products','vi','Không có sản phẩm nào trong danh mục này.'),('phone','vi','Số điện thoại'),('phone','en-US','Phone'),('Pleasefillthemessage','vi','Bạn hãy điền nội dung tin nhắn vào form dưới đây và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn sau khi nhận được.'),('Pleasefillthemessage','en-US','Please fill the message content in the form below and send it to us. We will reply you after receiving.'),('product','vi','Sản phẩm'),('product','ja','Product'),('product','en-US','Product'),('Productreviews','en-US','Product reviews'),('Productreviews','vi','Mô tả sản phẩm'),('Rattan','en-US','Rattan'),('Rattan','vi','Mây tre'),('same_products','en-US','Products of the same type'),('same_products','vi','Sản phẩm cùng loại'),('search_product','vi','Tìm kiếm sản phẩm'),('search_product','en-US','Search product'),('Sendinformation','vi','Gửi thông tin'),('Sendinformation','en-US','Send information'),('sendmessage','vi','Gửi tin nhắn'),('sendmessage','en-US','Send Message'),('size','vi','Kích thước'),('size','en-US','Size'),('status','vi','Trạng thái'),('status','en-US','Status'),('Stocking','vi','Còn hàng'),('Stocking','en-US','Stocking'),('storemap','en-US','Store map'),('storemap','vi','Bản đồ cửa hàng'),('Straws','vi','Ống hút'),('Straws','en-US','Straws'),('Strawsfrombamboo','vi','Ống hút từ tre'),('Strawsfrombamboo','en-US','Straws from bamboo'),('suport','vi','Hỗ trợ'),('suport','en-US','Suport'),('titlehome','en-US','Products from bamboo and rattan, wood, '),('titlehome','vi','Sản phẩm từ tre mây, gỗ'),('Trangchu','vi','Trang chủ'),('Trangchu','ja','Home'),('Trangchu','da-DK','Home'),('Trangchu','en-US','Home'),('updating','vi','Đang cập nhật'),('updating','en-US','Updating'),('Woodproducts','en-US','Wood products'),('Woodproducts','vi','Sản phẩm từ gỗ'),('Wouldyoulike','en-US','You might like'),('Wouldyoulike','vi','Bạn có thể thích');
/*!40000 ALTER TABLE `language_static_by_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'trang chu',0,'a',1,'2019-09-06 00:10:07','2019-09-06 00:10:10');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mess_contact`
--

DROP TABLE IF EXISTS `mess_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mess_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mess` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mess_contact`
--

LOCK TABLES `mess_contact` WRITE;
/*!40000 ALTER TABLE `mess_contact` DISABLE KEYS */;
INSERT INTO `mess_contact` VALUES (2,'LE TUAN ANH','tuananhdinamo1122@gmail.com','0373631368','aaa','2021-10-15 08:22:08','2021-10-15 08:22:08',NULL),(3,NULL,NULL,'0886424678','Ứng tuyển đại lý','2021-12-01 07:48:30','2021-12-01 07:48:30',NULL),(4,'LE TUAN ANH',NULL,'0373631369','a','2021-12-01 07:50:50','2021-12-01 07:50:50',NULL),(5,NULL,NULL,'03736313129',NULL,'2021-12-23 11:45:02','2021-12-23 11:45:02',NULL),(6,NULL,NULL,'03736313689',NULL,'2021-12-23 11:46:28','2021-12-23 11:46:28',NULL),(7,NULL,NULL,'03736313689',NULL,'2021-12-23 11:47:59','2021-12-23 11:47:59',NULL),(8,NULL,NULL,'0373631369','Số điện thoại cần tư vấn','2021-12-23 11:48:22','2021-12-23 11:48:22',NULL),(9,'LE TUAN ANH','tuananhdinamo1122@gmail.com','0373631365','Hẹn lịch đến xem hàng','2021-12-24 09:21:16','2021-12-24 09:21:16',NULL),(10,'LE TUAN ANH','tuananhdinamo1122@gmail.com','0373631365','noel','2021-12-24 11:36:16','2021-12-24 11:36:16',NULL),(11,'LE TUAN ANH','tuananhdinamo1122@gmail.com','0373631365','Đăng ký nhận báo giá','2021-12-24 19:06:41','2021-12-24 19:06:41',NULL),(12,'LE TUAN ANH','tuananhdinamo1122@gmail.com','0373631365','a','2021-12-24 21:08:52','2021-12-24 21:08:52',NULL),(13,'LE TUAN ANHA','tuananhdinamo12122@gmail.com','0373631365','AA','2022-03-06 08:00:55','2022-03-06 08:00:55',NULL),(14,'LE TUAN ANHAAA','tuananhdinamo1122@gmail.com','0373631365','ADFAFDAD','2022-03-06 08:01:21','2022-03-06 08:01:21',NULL),(15,'LE TUAN ANH','tuananhdinamo1122@gmail.com','AA','AAA','2022-03-06 08:01:48','2022-03-06 08:01:48',NULL),(16,NULL,NULL,NULL,NULL,'2022-04-19 01:03:14','2022-04-19 01:03:14',NULL),(17,'Alisa Knowles','fecas@mailinator.com','+1 (175) 864-7878','Molestias aperiam eu','2022-06-16 18:27:40','2022-06-16 18:27:40',NULL),(18,NULL,'dajafac@mailinator.com','+1 (337) 954-8328',NULL,'2022-06-16 19:02:32','2022-06-16 19:02:32',NULL),(19,'Shay Vincent','qahij@mailinator.com','27','Consequuntur officii','2022-06-16 21:41:27','2022-06-16 21:41:27',NULL),(20,'Sharon Cantrell','tuco@mailinator.com','77','Veniam quisquam sun','2022-06-16 21:52:55','2022-06-16 21:52:55',NULL),(21,'Fitzgerald Cotton','qyvokecu@mailinator.com','48','Dolorem enim suscipi','2022-06-16 21:55:43','2022-06-16 21:55:43',NULL),(22,'Mufutau Oneill','gijakan@mailinator.com','66','Sed adipisci aut vol','2022-06-16 22:01:34','2022-06-16 22:01:34',NULL),(23,'Connor Noble','cazeqok@mailinator.com','21','Vel consequatur susc','2022-06-16 22:04:51','2022-06-16 22:04:51',NULL),(24,'Connor Noble','cazeqok@mailinator.com','21','Vel consequatur susc','2022-06-16 23:38:16','2022-06-16 23:38:16',NULL),(25,'Colton Macdonald','fyji@mailinator.com','+1 (883) 292-5133','Officiis mollitia pe','2022-07-04 01:26:39','2022-07-04 01:26:39',NULL),(27,'Gray Dorsey','sapohic@mailinator.com','+1 (138) 459-4097','Ab aut reprehenderit','2022-07-04 01:38:51','2022-07-04 01:38:51',NULL),(28,'Audra Villarreal','dafomur@mailinator.com','+1 (541) 974-8632','Et autem animi repr','2022-07-12 04:15:53','2022-07-12 04:15:53','Id modi est rem est');
/*!40000 ALTER TABLE `mess_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (8,'2019_11_12_072548_create_notifications_table',2),(9,'2019_11_20_082303_create_websockets_statistics_entries_table',3),(14,'2014_10_12_000000_create_users_table',4),(15,'2014_10_12_100000_create_password_resets_table',4),(16,'2016_06_01_000001_create_oauth_auth_codes_table',4),(17,'2016_06_01_000002_create_oauth_access_tokens_table',4),(18,'2016_06_01_000003_create_oauth_refresh_tokens_table',4),(19,'2016_06_01_000004_create_oauth_clients_table',4),(20,'2016_06_01_000005_create_oauth_personal_access_clients_table',4),(21,'2019_12_14_031230_create_permissions_table',4),(22,'2019_12_14_031241_create_roles_table',4),(23,'2019_12_14_031410_create_users_permissions_table',4),(24,'2019_12_14_031420_create_users_roles_table',4),(25,'2020_03_17_135247_create_jobs_table',5),(27,'2019_08_19_000000_create_failed_jobs_table',6),(28,'2022_06_17_012053_add_address_column_to_mess_contact_table',6),(29,'2022_07_02_092644_add_phone_to_settings_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('07110f84-9dad-42c2-9406-44c1cecd4377','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7}}',NULL,'2020-05-02 00:00:49','2020-05-02 00:00:49'),('1633f68f-3538-4ec2-9f25-405eeb3f987b','App\\Notifications\\CustomerRigisterNotify','App\\Customer',11,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11}}',NULL,'2020-05-02 00:12:46','2020-05-02 00:12:46'),('1cb89ee6-2d98-4132-af87-00b1aebad324','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9}}',NULL,'2020-05-02 00:04:02','2020-05-02 00:04:02'),('1f87ed9d-4ff7-4ff9-9f45-d62e01116491','App\\Notifications\\CustomerRigisterNotify','App\\Customer',4,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4}}',NULL,'2020-05-01 23:07:54','2020-05-01 23:07:54'),('20de1a49-a75b-4200-a3b3-610b04aaa580','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3}}',NULL,'2020-05-01 09:29:14','2020-05-01 09:29:14'),('22b75348-7fe2-4db5-a838-3ca244bea9f9','App\\Notifications\\CustomerRigisterNotify','App\\Customer',6,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6}}',NULL,'2020-05-01 23:54:48','2020-05-01 23:54:48'),('28e91e29-b471-4141-bedd-6dd845b3a44d','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3}}',NULL,'2020-05-01 09:29:14','2020-05-01 09:29:14'),('3a178ce0-8415-413c-9a73-bdf005b78078','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6}}',NULL,'2020-05-01 23:54:48','2020-05-01 23:54:48'),('44259369-3891-42e3-a824-ee41fe589d1f','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1}}',NULL,'2020-05-02 07:38:05','2020-05-02 07:38:05'),('4863724c-4855-4416-ad24-4d29a7c47c54','App\\Notifications\\CustomerRigisterNotify','App\\Customer',10,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10}}',NULL,'2020-05-02 00:11:58','2020-05-02 00:11:58'),('4918cfc3-8b51-4cbb-9a87-43a9f26dda40','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5}}',NULL,'2020-05-01 23:54:13','2020-05-01 23:54:13'),('4dee4195-7cca-458e-a96e-185aa5c228c8','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12}}',NULL,'2020-05-02 02:29:14','2020-05-02 02:29:14'),('505747f8-8636-49d3-b398-a7257d2f4081','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7}}',NULL,'2020-05-02 00:00:49','2020-05-02 00:00:49'),('545807d1-b982-45bf-a4cd-3933a3b1b258','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12}}',NULL,'2020-05-02 02:29:13','2020-05-02 02:29:13'),('54f07417-7aac-4a25-b8b3-75d0d713087d','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9}}',NULL,'2020-05-02 00:04:02','2020-05-02 00:04:02'),('5897aad8-23b3-4ce8-b4e7-964805df2a0f','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11}}',NULL,'2020-05-02 00:12:46','2020-05-02 00:12:46'),('5afdaeea-af51-4559-856b-88ff62eca506','App\\Notifications\\CustomerRigisterNotify','App\\Customer',5,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5}}',NULL,'2020-05-01 23:54:13','2020-05-01 23:54:13'),('5e49e269-ebaf-48cc-b905-6c89cb7412be','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11}}',NULL,'2020-05-02 00:12:46','2020-05-02 00:12:46'),('65d16be4-d7a2-4925-9631-acc6453b953e','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2}}',NULL,'2020-05-01 09:20:27','2020-05-01 09:20:27'),('678841cc-99f0-4a9e-98d6-5864073b8d84','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10}}',NULL,'2020-05-02 00:11:57','2020-05-02 00:11:57'),('7201260a-7aed-417d-9dc2-209a7c9510b9','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4}}',NULL,'2020-05-01 23:07:53','2020-05-01 23:07:53'),('7908ed49-fcd8-4269-bf52-a23b4a9da08f','App\\Notifications\\CustomerRigisterNotify','App\\Customer',7,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7}}',NULL,'2020-05-02 00:00:49','2020-05-02 00:00:49'),('82417afd-5a31-415f-956d-ec6798922c23','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6}}',NULL,'2020-05-01 23:54:48','2020-05-01 23:54:48'),('82ae97c6-d4f1-4884-8b62-3f5be6d691f0','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1}}',NULL,'2020-05-02 07:38:05','2020-05-02 07:38:05'),('86170365-5927-4385-8861-5c24c5b37bff','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8}}',NULL,'2020-05-02 00:03:19','2020-05-02 00:03:19'),('89b9bdb1-9692-426d-a76b-0e66cdfd0e66','App\\Notifications\\CustomerRigisterNotify','App\\Customer',1,'{\"createCustomer\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1},\"admin\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1}}',NULL,'2020-05-02 07:38:05','2020-05-02 07:38:05'),('8d811f9a-b290-40ef-9716-c235186d7393','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10}}',NULL,'2020-05-02 00:11:58','2020-05-02 00:11:58'),('8f8a44d1-6347-4b9c-811f-1c3b97ee550a','App\\Notifications\\CustomerRigisterNotify','App\\Customer',12,'{\"createCustomer\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12},\"admin\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12}}',NULL,'2020-05-02 02:29:14','2020-05-02 02:29:14'),('90d4476c-38ab-45fe-b326-6b5e4c1356eb','App\\Notifications\\CustomerRigisterNotify','App\\Customer',8,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8}}',NULL,'2020-05-02 00:03:19','2020-05-02 00:03:19'),('a36604da-3523-4e84-83eb-3c8da936fc63','App\\Notifications\\CustomerRigisterNotify','App\\Customer',2,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2}}',NULL,'2020-05-01 09:20:28','2020-05-01 09:20:28'),('b125084f-3996-440e-b779-291e878874e7','App\\Notifications\\CustomerRigisterNotify','App\\Customer',9,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9}}',NULL,'2020-05-02 00:04:02','2020-05-02 00:04:02'),('b86e4e7f-8de1-4603-aac5-c5d201fd3538','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4}}',NULL,'2020-05-01 23:07:54','2020-05-01 23:07:54'),('e11ac766-bf52-4471-b16a-169786d2b36e','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2}}',NULL,'2020-05-01 09:20:28','2020-05-01 09:20:28'),('ee3323d3-14f6-45fb-bed6-85728c8ae8e7','App\\Notifications\\testNoti','App\\User',3,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8}}',NULL,'2020-05-02 00:03:19','2020-05-02 00:03:19'),('f20791d9-e7bf-4be3-a447-3676b274d0dc','App\\Notifications\\CustomerRigisterNotify','App\\Customer',3,'{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3}}',NULL,'2020-05-01 09:29:14','2020-05-01 09:29:14'),('f791b1a0-2c88-4220-bad5-7fd1d5848167','App\\Notifications\\testNoti','App\\User',1,'{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5}}',NULL,'2020-05-01 23:54:12','2020-05-01 23:54:12');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('040e086ad04925275b108f48aa48b9141a81a309cefc4120390b3671b412791016784e8d271f66fa',1,19,'Personal Access Token','[]',1,'2022-04-12 18:24:48','2022-04-12 18:24:48','2023-04-13 01:24:48'),('0481254c4ec443fdf0f26ded018d08f3ba079718c280cbf4e59feb5bdd5642c7a3255c04b56b26bc',1,1,'Personal Access Token','[]',1,'2020-01-21 00:23:54','2020-01-21 00:23:54','2021-01-21 07:23:54'),('055ad4decd6fed606e2d1df0e132c95749981ba331ebedb65dc7c3a85d1728076f007a9a09410807',1,1,'Personal Access Token','[]',0,'2019-12-30 03:48:28','2019-12-30 03:48:28','2020-12-30 10:48:28'),('069e63fa6d91afb0138fdaae1f101a2d520ca9f513192eeb6fe1d62beb7083f1779edec63675089c',1,19,'Personal Access Token','[]',1,'2022-07-01 00:53:20','2022-07-01 00:53:20','2023-07-01 07:53:20'),('06ab2923c4b37be4a84715559d0734f72e3c46c2e5007dae9dc68fe72f545a772499eaf768d7801b',1,23,'Personal Access Token','[]',1,'2023-02-07 01:11:51','2023-02-07 01:11:51','2024-02-07 01:11:51'),('07209cb88936bcd59c905046433f20eb3e39e42a8d2c1d41c759c98319e0e7e4f323df9d002c0979',1,11,'Personal Access Token','[]',1,'2021-10-14 00:14:03','2021-10-14 00:14:03','2022-10-14 07:14:03'),('073050e94f596668cc6e3c339713da1dab9c35c44281ca5ab720338ae676be6f1914f544f9d1622f',1,19,'Personal Access Token','[]',1,'2022-09-28 23:53:12','2022-09-28 23:53:12','2023-09-29 06:53:12'),('076a4070765a5d2ed1aaeb7636c530426c67527adbf01b8c34ec9e7c0cbf4a5fcaac5e128fb1d2da',1,9,'Personal Access Token','[]',0,'2021-09-19 18:40:07','2021-09-19 18:40:07','2022-09-20 01:40:07'),('0883b08174ad597ac24fe1649afd60504b3eb3dbed64f526c121fa21a663579f3a9a0b4ee4b10682',1,3,'Personal Access Token','[]',0,'2021-07-24 01:11:22','2021-07-24 01:11:22','2022-07-24 08:11:22'),('0b7c6a4421a8bb8749551d9537215a078268832f71a142f09a52bb73a7be95e5e38a2c955b7ff495',1,1,'Personal Access Token','[]',0,'2020-01-16 19:14:10','2020-01-16 19:14:10','2021-01-17 02:14:10'),('0b9ec5ab487871f728056bbd1a0a37a72a87102ff989c85c1f7e42401d4dc5eeaa96be9359aaeb6f',1,1,'Personal Access Token','[]',0,'2020-02-11 04:59:43','2020-02-11 04:59:43','2021-02-11 11:59:43'),('0bd204302fdc186cd3fba76d043672f8ce4ad3e04d92d9bb9ca3a96324a563204a4a99a67bc72313',1,19,'Personal Access Token','[]',1,'2022-09-29 01:14:48','2022-09-29 01:14:48','2023-09-29 08:14:48'),('0d5c9b30a54cbf3a2318270329bad8f3c893ff64e73068f8781fc507baafa5511a403e7a583bb724',1,5,'Personal Access Token','[]',1,'2021-08-02 19:21:00','2021-08-02 19:21:00','2022-08-03 02:21:00'),('0ed6f3376a5483699dbece2f1222ebef1f658839f3eca646ffef17f4414f3fc7b3e7cbe1f2fe397e',1,1,'Personal Access Token','[]',1,'2019-12-15 19:55:58','2019-12-15 19:55:58','2020-12-16 02:55:58'),('11f59aef0db154c7f1bb4b7b2a7a09d68e0b73567e8bc54abaa0908f45bece6a6238978bb06516e5',1,19,'Personal Access Token','[]',0,'2022-03-01 20:55:05','2022-03-01 20:55:05','2023-03-02 03:55:05'),('12cbfe27c232e20433151173c3f5d95cf4250bf79617a8c73e203682f60b49384440d4ca55fb76aa',1,7,'Personal Access Token','[]',1,'2021-08-11 00:32:17','2021-08-11 00:32:17','2022-08-11 07:32:17'),('133ebdafd18bbede5a075c6473722b24d502d3209c98e61c0fa11ef3bcfdf66f9631554a73fd99c3',1,1,'Personal Access Token','[]',1,'2019-12-15 20:02:57','2019-12-15 20:02:57','2020-12-16 03:02:57'),('138bccbf9cec2aebd443666afc911a1cb022e6be79382f91b932f6a953791bd243bc81e9b368879f',1,7,'Personal Access Token','[]',0,'2021-08-03 20:55:22','2021-08-03 20:55:22','2022-08-04 03:55:22'),('15fc8458ef2a435f78c0b9eb1c9286d56644414dc2c82174a79ad628e87be872bbcdbad830ddb937',1,1,'Personal Access Token','[]',0,'2019-12-25 01:05:31','2019-12-25 01:05:31','2020-12-25 08:05:31'),('17c8be74c7cd697c380afc9c77defa5776b15962990fc19ab71ca50d2ed40509502cc67bb69a433c',1,19,'Personal Access Token','[]',0,'2022-01-05 03:46:14','2022-01-05 03:46:14','2023-01-05 10:46:14'),('1828397e597f6d457e8db435787ba07e9c37f0c3ebdff36dd99f78c45f2eec9050f2fe30e9860a95',1,7,'Personal Access Token','[]',1,'2021-08-11 00:29:37','2021-08-11 00:29:37','2022-08-11 07:29:37'),('1842156118e298ab2c131b06c837e21baf90bed5c52bd707247fd7927adadac38ff5cb3232e4fe4a',1,13,'Personal Access Token','[]',1,'2021-11-27 07:34:38','2021-11-27 07:34:38','2022-11-27 14:34:38'),('199821970239016fec714faf3cce0bd112ad6795682938bd086606dc158f4decf944440e5e1678d1',1,19,'Personal Access Token','[]',0,'2022-10-27 23:54:27','2022-10-27 23:54:27','2023-10-28 06:54:27'),('1a956b76feddf1e5ddede17b981f5136c2387cffad8ed0daa77c05453e92063f68d39410f880c2e9',1,23,'Personal Access Token','[]',0,'2023-02-04 04:09:26','2023-02-04 04:09:26','2024-02-04 04:09:26'),('1d00dfc4fbdf729e33593f8da37cec5a1543120d666b3921b1fcfa05a6c86f417f49c8582aa9781f',1,19,'Personal Access Token','[]',1,'2021-12-22 09:40:52','2021-12-22 09:40:52','2022-12-22 16:40:52'),('21bface7f471b9a306125686935af8e0df6c360c8f61014b10bd120e22ff1521696c7b2bc733166b',1,7,'Personal Access Token','[]',0,'2021-08-11 00:18:56','2021-08-11 00:18:56','2022-08-11 07:18:56'),('224abd7974f794a3178b2a1c586acbb6cea98908f0d7098a7214eafc45456717c4063dc8b459708d',1,11,'Personal Access Token','[]',1,'2021-10-12 20:05:42','2021-10-12 20:05:42','2022-10-13 03:05:42'),('238a93d8956fbcfd73512880c370ccd0b2ff70404a19f36e39eb7b3755a3c9b36f06babef965b252',1,23,'Personal Access Token','[]',0,'2023-02-08 04:09:09','2023-02-08 04:09:09','2024-02-08 04:09:09'),('26038e7e4fc59c6bf580fb1d7b9b7c5f287d37046806334d79bc9aaf6d40888dda130b90a4e5e3e6',1,23,'Personal Access Token','[]',1,'2023-02-04 02:50:17','2023-02-04 02:50:17','2024-02-04 02:50:17'),('28d4aa358a52f1720e7e3e2b7145def48962f57581aca8e7b85c599c4c1ca6c8afb6634b5526f6da',1,19,'Personal Access Token','[]',1,'2022-06-30 01:25:31','2022-06-30 01:25:31','2023-06-30 08:25:31'),('2a1c87962793afba4e6a43e9161e8425f163636dcfb5b831b8db5199d63f66c06bdb360f12ef0435',1,13,'Personal Access Token','[]',0,'2021-12-01 07:33:47','2021-12-01 07:33:47','2022-12-01 14:33:47'),('2d1d29186316353870e22ee42998615b930322587b85ffee2f7fb3ac6f50fb403c33192d03362057',1,19,'Personal Access Token','[]',1,'2022-07-02 02:32:14','2022-07-02 02:32:14','2023-07-02 09:32:14'),('2e3aa02db568c792b5193be4837d2d95ab5e7d200dc4e114b5c9274959adf7ff3682cf65e40c9c63',1,3,'Personal Access Token','[]',0,'2021-07-04 18:41:40','2021-07-04 18:41:40','2022-07-05 01:41:40'),('31f1a0bd65c2e8916130a9f9c7b14d31f00b886970dbe2f833d1522d91f1ab493b750244ed45b0af',1,19,'Personal Access Token','[]',1,'2022-06-03 02:08:05','2022-06-03 02:08:05','2023-06-03 09:08:05'),('329f43198a48af2b9ae61e663ffc396144b4df3c7765319661e8cd958d0c0bac91a3789a4f1bbbac',1,23,'Personal Access Token','[]',0,'2023-02-09 14:27:56','2023-02-09 14:27:56','2024-02-09 14:27:56'),('34207938db08f096dc4ea28a34507e6d75875517d797bd5d594b2ff2164713f52b4ddebf0384d9d0',1,1,'Personal Access Token','[]',1,'2020-03-13 01:18:50','2020-03-13 01:18:50','2021-03-13 08:18:50'),('34f4abdc9d4f142828b9fec764aa72219b46836d92f566283fc6af66af93fc14a5e353344f866739',1,1,'Personal Access Token','[]',0,'2019-12-15 20:30:07','2019-12-15 20:30:07','2020-12-16 03:30:07'),('35c11f39af8d639c69ad04e1f71c8e47a541c15c132c29dd01fcb406214e47b4e2c8032d0e357084',1,3,NULL,'[]',0,'2021-07-02 19:52:40','2021-07-02 19:52:40','2022-07-03 02:52:40'),('381df4e15fc331dce8e15f16a91d83741f4d446f21a8d91b0e32ea37400a68490460e06342e3d98a',1,23,'Personal Access Token','[]',1,'2023-02-04 04:09:32','2023-02-04 04:09:32','2024-02-04 04:09:32'),('3a2c24de38152bff9dab5a33db7c162e7dd0c6404fab6f8f51ad24ef786650c2cf55686e90e85dfa',1,5,'Personal Access Token','[]',1,'2021-08-03 01:04:23','2021-08-03 01:04:23','2022-08-03 08:04:23'),('3bf98d6b90c35c8e2ad9ba8200c2a937d94771c30e6a8364eb61b3a83471669b8a128b7a508d5cb5',1,5,'Personal Access Token','[]',1,'2021-08-02 19:25:03','2021-08-02 19:25:03','2022-08-03 02:25:03'),('3c90917a3454be785919ed4e01b22b583b4aa290eb7521c3c6c4094d00a5490f4109ddd41022f7ef',1,13,'Personal Access Token','[]',0,'2021-11-27 21:09:58','2021-11-27 21:09:58','2022-11-28 04:09:58'),('434e88a4c0d9405229053214c22760165d96f667d92be2898664817b1a1f5f89dd079252d4ee9837',1,13,'Personal Access Token','[]',1,'2021-11-29 09:35:35','2021-11-29 09:35:35','2022-11-29 16:35:35'),('46552f47fadab30764480b52a032f988ac32f426f6d96902ac618001d9c0c29b41d05c0133cb0feb',1,23,'Personal Access Token','[]',1,'2023-02-07 10:24:46','2023-02-07 10:24:46','2024-02-07 10:24:46'),('4b5313614850472e1284a8a6f454086b9e1c7a01d364b364488b29b972b3adaabb2e96a3740cfbf3',1,5,'Personal Access Token','[]',0,'2021-08-03 01:12:17','2021-08-03 01:12:17','2022-08-03 08:12:17'),('4b863d38dc6ec32cdc10bc85e8f5e96d18c710ab3eabc175f2d0c8fb7f770a1cb78acb59b1dceb81',1,3,'Personal Access Token','[]',0,'2021-07-06 18:30:21','2021-07-06 18:30:21','2022-07-07 01:30:21'),('4ce7521d5a37fa8cbb013bdda824c2b9a1a25a6a9ad19fd745e63badb9a1277123b97d631c750a45',1,1,'Personal Access Token','[]',0,'2020-03-13 00:55:46','2020-03-13 00:55:46','2021-03-13 07:55:46'),('4df4c3a2f5c8ac9294d8e021f142469d2003afd0ab9931710e22689cec2c50f3d9ac465316e7875b',1,23,'Personal Access Token','[]',0,'2023-02-06 01:12:12','2023-02-06 01:12:12','2024-02-06 01:12:12'),('4e3f0f4b45e863edf381dd61ee9c46aca34721c979e68c1156f8e722182d9c5de4e9d0c7a15248b9',1,17,'Personal Access Token','[]',1,'2021-12-06 19:38:20','2021-12-06 19:38:20','2022-12-07 02:38:20'),('4e5f4454944a18458e43c947c832f6b59faad38e0d3b5213fb4f2ba32c2dc68e717968bdfe33fcac',1,19,'Personal Access Token','[]',1,'2022-10-27 03:34:40','2022-10-27 03:34:40','2023-10-27 10:34:40'),('50849c5293ade8ee18b422ed0baa00aa42a83298de6d8865c4a6ef973337f51df47dffbc4247bc8a',1,9,'Personal Access Token','[]',0,'2021-09-28 08:05:39','2021-09-28 08:05:39','2022-09-28 15:05:39'),('5334fc42673f43b275a73516dc332a4be4d95bd6ba3f4144f427d11ec748e0f05360d263992bbb41',1,23,'Personal Access Token','[]',0,'2023-02-07 01:38:05','2023-02-07 01:38:05','2024-02-07 01:38:05'),('54ae9e61a46b58cc86ebff61686eddc8dbcfe2d06b0c27d23ecfc3d846b6d017c5be68861ba089e0',1,7,'Personal Access Token','[]',0,'2021-08-11 08:56:26','2021-08-11 08:56:26','2022-08-11 15:56:26'),('567173ac0bab22884bf17143f83cbd1fe34cacc1c964f8aca4e26a2ed20f926b65d01bb2917cd186',1,19,'Personal Access Token','[]',0,'2022-06-03 04:59:14','2022-06-03 04:59:14','2023-06-03 11:59:14'),('568e5c0f157a6d232a581431b4fd2a604756c3fbcbdee4ce497bddbaeff83dd01fd52775429320a4',1,1,'Personal Access Token','[]',0,'2020-05-07 09:45:09','2020-05-07 09:45:09','2021-05-07 16:45:09'),('56dfe526c3811ff3a9f992f6dab0f8f387700b5001ba3ae7390281ab93ed0e69856a9cc9e46eb63f',1,23,'Personal Access Token','[]',0,'2023-02-07 10:24:41','2023-02-07 10:24:41','2024-02-07 10:24:41'),('59b5e9602f63ca6a2ccf1e0f0a7126064015ca336d88fc820a6fef848fea4dc4629c80dac4c2b79e',1,21,'Personal Access Token','[]',0,'2023-02-01 21:10:29','2023-02-01 21:10:29','2024-02-02 04:10:29'),('5a68f0500cb65876a9daaa15852320904e806a477ed994f830e6c1d1a675f79476f10daea685898d',1,13,'Personal Access Token','[]',0,'2021-11-27 20:11:53','2021-11-27 20:11:53','2022-11-28 03:11:53'),('5cd3a723927da711022f0c180b3c4d5d3bedd32bba99a4b107b6125005cd11f3547321da5f6bf0ed',1,23,'Personal Access Token','[]',0,'2023-02-09 15:03:27','2023-02-09 15:03:27','2024-02-09 15:03:27'),('6108d23d48c591e4b356deccf5ccdbdcf6e3d972c34eac2ffcfa58426fd18423b416462552e97ebb',1,1,'Personal Access Token','[]',0,'2021-06-29 06:27:26','2021-06-29 06:27:26','2022-06-29 13:27:26'),('6298db1c734976bac2be11725b0ef000d1a7c25166c220691f10706f201fb16d93a6555e83aa3ff8',1,1,'Personal Access Token','[]',1,'2021-06-30 23:42:35','2021-06-30 23:42:35','2022-07-01 06:42:35'),('63000d23fea7e4f74ff1db3a42b935b4fda4ebf6b72c6db81752f93c9f001f658c2d976cd85829e9',1,13,'Personal Access Token','[]',1,'2021-11-23 22:59:06','2021-11-23 22:59:06','2022-11-24 05:59:06'),('6488cce26704682f7dafe1d6f2836157be6a2092a4c7697fbc3411df7213a08baa2b2985f0eed623',1,19,'Personal Access Token','[]',1,'2022-06-16 02:58:51','2022-06-16 02:58:51','2023-06-16 09:58:51'),('671128bc7ea932c87911e44778ba695aa9c26b394382822a5aaf00870dc5bfda36ce5f7415256d03',1,19,'Personal Access Token','[]',1,'2022-07-01 21:25:34','2022-07-01 21:25:34','2023-07-02 04:25:34'),('68530585de68962ede082aed5179326358c9aeb57d2db8a1a52cf4f6982a487c487aa8b5aa9a4df8',1,23,'Personal Access Token','[]',0,'2023-02-04 02:48:25','2023-02-04 02:48:25','2024-02-04 02:48:25'),('6aaa0dcfd3eae6dfdaace5ef1b55f99cd70b9dbac3af034e1e5cec014bca98753ce568eff18545c6',1,19,'Personal Access Token','[]',1,'2022-03-01 04:31:58','2022-03-01 04:31:58','2023-03-01 11:31:58'),('6b475c148494d47a59627565f6d25beab3473e72365b18fc9a508b4d1a8c21c000b2a6856cffb46e',1,1,'Personal Access Token','[]',0,'2020-02-09 00:15:46','2020-02-09 00:15:46','2021-02-09 07:15:46'),('6dbd376b065942521d0b4e59d096d532d3b66178d6a3f310316beb7301dea8e19d28bc8770dfc423',1,17,'Personal Access Token','[]',0,'2021-12-06 19:38:42','2021-12-06 19:38:42','2022-12-07 02:38:42'),('755a29919adb4d270cac5d99f4813fdbdf624f170a3e1c19965b8251729b57c49b2fbbc6e683d7c6',1,19,'Personal Access Token','[]',0,'2022-04-12 19:36:15','2022-04-12 19:36:15','2023-04-13 02:36:15'),('776764aa26f5f46e5a397a01edeec42b9f6a2932be5b0ab2226f70794af643c523e92dd98072e233',1,11,'Personal Access Token','[]',0,'2021-10-08 02:39:56','2021-10-08 02:39:56','2022-10-08 09:39:56'),('77cd228162d037127fa9c4cfdcc50e2dad862932089ff53722029363446452514d919be3281d51b0',1,1,'Personal Access Token','[]',0,'2020-02-26 00:21:02','2020-02-26 00:21:02','2021-02-26 07:21:02'),('7838513b38815f02656644361f52f1a97c9cb4b20b16228dab6dd1612b415b3848728f5f3283fdb6',1,7,'Personal Access Token','[]',1,'2021-08-11 00:26:56','2021-08-11 00:26:56','2022-08-11 07:26:56'),('78474bfcb363bbeb62c0169358ee36b66c2869bd551aef47a7f2d8db9752164450c09d58b6c0afa1',1,23,'Personal Access Token','[]',1,'2023-02-07 01:38:07','2023-02-07 01:38:07','2024-02-07 01:38:07'),('7a97eb30fc38eeedf18a5c5f49ca994d195e5403db058f0770ef4ed8e8927ce2f83704db38200a15',1,23,'Personal Access Token','[]',1,'2023-02-07 01:37:04','2023-02-07 01:37:04','2024-02-07 01:37:04'),('7b3e7902ed8e9ed43465ca5ed0c08697b446d84708c50695577eb8a98539b62b66b745bb673f5fd8',1,7,'Personal Access Token','[]',0,'2021-08-06 01:36:25','2021-08-06 01:36:25','2022-08-06 08:36:25'),('7b5ef2cb4673d955c0bf74540df3e2378f0375a125e5d0b3ce28f4823031a775220ef74a4f945d8a',1,1,'Personal Access Token','[]',0,'2019-12-15 20:03:08','2019-12-15 20:03:08','2020-12-16 03:03:08'),('7d6cfebdf0bfc7fb252c2171edd7753cd6c76d0a43037d217343d95f90d671e0cdf251002ad34a39',1,23,'Personal Access Token','[]',1,'2023-02-07 01:39:21','2023-02-07 01:39:21','2024-02-07 01:39:21'),('81e8b10d9407d6eec911b7a3b45b5efcfc33400e7d1c95529bc213689690f2b620314336403cf61f',1,23,'Personal Access Token','[]',1,'2023-02-04 02:48:34','2023-02-04 02:48:34','2024-02-04 02:48:34'),('83a70a375107279df2e0879500b9ff65350ad38bc0304c4f7d1efd71aa6fd4fd55a29e6ec70aa89e',1,1,'Personal Access Token','[]',1,'2020-02-08 07:47:59','2020-02-08 07:47:59','2021-02-08 14:47:59'),('87a48bfe8516fe5282cf28480ae8e597771589148d6bbc891e461fcb9664900e01cdac97f54584ab',1,11,'Personal Access Token','[]',0,'2021-10-15 02:45:23','2021-10-15 02:45:23','2022-10-15 09:45:23'),('891a1e780ea65acd1d9760e8aee6752f476a0bc2f9faa3f131df875c1af404e333a331b3b2dc4afb',1,23,'Personal Access Token','[]',0,'2023-02-07 07:26:14','2023-02-07 07:26:14','2024-02-07 07:26:14'),('8a7924e59836271a9f1673fcf5428d919d4b40320fc7267d40c573f2629874ad9cc10fff2a4fa687',1,13,'Personal Access Token','[]',0,'2021-11-29 09:27:24','2021-11-29 09:27:24','2022-11-29 16:27:24'),('8c0418eb30a72943fb71b800e73b899984d08b1f21c56ba59ab3f8c812c73fe5f11967d9d795eb01',1,1,'Personal Access Token','[]',0,'2020-02-11 03:45:52','2020-02-11 03:45:52','2021-02-11 10:45:52'),('8d4ef6c33b27df8c177a6aa990cbbec7fe33e7f1248690bc48236bea3be1fa44a4816a08d23c99d6',1,19,'Personal Access Token','[]',0,'2022-07-12 18:21:57','2022-07-12 18:21:57','2023-07-13 01:21:57'),('8f254d84681bb3539d60e72a217554bf3d624dec182c8ae78843e8c49be829c3100af9fb9f9a10d9',1,1,'Personal Access Token','[]',0,'2020-02-11 04:58:42','2020-02-11 04:58:42','2021-02-11 11:58:42'),('92f6f3e0b360077406b74d573dc43f35f4c9b8bf8e76da81edb9cea52e855e9a2c2e31624ce80e34',1,3,'Personal Access Token','[]',0,'2021-07-13 00:45:15','2021-07-13 00:45:15','2022-07-13 07:45:15'),('934d81cbb5211e87d8b4fc89c309c9d4ea2cab830c077da80720eacfff81d09495912b289a6c6b72',1,19,'Personal Access Token','[]',1,'2022-07-01 00:50:50','2022-07-01 00:50:50','2023-07-01 07:50:50'),('96d3e04f1d10e715baf4f3b53e09e3e8f933f7aa14347212afbe6eeb694f079823e06c90928f582d',1,19,'Personal Access Token','[]',0,'2022-07-11 03:29:21','2022-07-11 03:29:21','2023-07-11 10:29:21'),('97429eb1d3da0867603eb0ac5a6eb1c6bf8218ac7684f82193979f0f020a11c63720b2007ceb9d53',1,19,'Personal Access Token','[]',1,'2022-07-12 00:10:51','2022-07-12 00:10:51','2023-07-12 07:10:51'),('9c0167f5604d02e5163642648785239d6c39b764fb9eb1e7960baceb4dd191b1090a6acaedeee6b5',1,1,'Personal Access Token','[]',0,'2020-04-06 08:11:41','2020-04-06 08:11:41','2021-04-06 15:11:41'),('9d34518140f71bf0d9cb7c8fcbb3a9f82d67fedc88fa747845289d717b8214232e94ec0bb5c37fc8',1,1,'Personal Access Token','[]',0,'2020-01-17 19:26:47','2020-01-17 19:26:47','2021-01-18 02:26:47'),('a0c4c07fd8024f668ec3bb567a6c1ea1d4bb06cbf27efa61426e7deb706ab00387b9612fe7e03c2c',1,1,'Personal Access Token','[]',0,'2020-02-11 01:55:13','2020-02-11 01:55:13','2021-02-11 08:55:13'),('a0ccdb7b0f81cb372c9003e39a0be4036fef8b1c262bf1cc42b470e9beb26211ae49d3ac70bc5fb3',1,19,'Personal Access Token','[]',0,'2022-03-27 10:02:03','2022-03-27 10:02:03','2023-03-27 17:02:03'),('a484ef50f450931e6e557134ada7f962f7cc7ef1d6916c9da53777fdf08875dbf286e5dfe3dd3350',1,13,'Personal Access Token','[]',0,'2021-12-01 07:33:49','2021-12-01 07:33:49','2022-12-01 14:33:49'),('a5c5f034799dd194dacba95cf5d22fca3653be8e5627ab9e79a30eec7cb2d2efacbe1627619ae61b',1,19,'Personal Access Token','[]',1,'2022-07-01 01:23:00','2022-07-01 01:23:00','2023-07-01 08:23:00'),('a631d7fdd44cbdbf2706c9806e498338262d77c07b9530804499fcefca695772f666d0e0daa67fd9',1,19,'Personal Access Token','[]',0,'2022-06-16 10:23:53','2022-06-16 10:23:53','2023-06-16 17:23:53'),('a7380eeb1ad20bfa35aba5af7383bce113d793a1f7b3a9ff4621863a2d563c62d7200cf6783897d0',1,19,'Personal Access Token','[]',0,'2022-03-27 09:33:02','2022-03-27 09:33:02','2023-03-27 16:33:02'),('a75367d7fb83ad857707c37dc301309b09c2b7d5caf2236653eb7e99e2b6adc2f8b56f02f7773c4b',1,1,'Personal Access Token','[]',0,'2020-01-30 02:00:59','2020-01-30 02:00:59','2021-01-30 09:00:59'),('a82cd0ab0d51a8eb37ab73e0008554915886ae5d388ac5eaa47c12df6d327f18bfdb36ea42f19c63',1,11,'Personal Access Token','[]',0,'2021-10-18 09:08:45','2021-10-18 09:08:45','2022-10-18 16:08:45'),('a9cf3cbff1fc7d6bba3a2e72f2ee4f3def67beac9a60e852f32ddc4546ab64749f35b197882cfd9b',1,3,'Personal Access Token','[]',0,'2021-07-07 18:45:57','2021-07-07 18:45:57','2022-07-08 01:45:57'),('ab9c8b0bba7c9bd6fc1807fbfa7fafe4f61bda05488f26a97d5f89218c2c6d27b84ef740c13e787b',1,23,'Personal Access Token','[]',0,'2023-02-06 01:12:11','2023-02-06 01:12:11','2024-02-06 01:12:11'),('abbb950ba63bf20d750bd31d63af0a14ef146362cb3b41da38f349129b839db0ddd9932feadace92',1,23,'Personal Access Token','[]',0,'2023-02-07 01:11:44','2023-02-07 01:11:44','2024-02-07 01:11:44'),('ad0a4f312c478efb8767fbc48f0fa935f0c113e0e268c643ee7ec7371cda871531c82eb7667bb283',1,5,'Personal Access Token','[]',1,'2021-08-01 20:30:10','2021-08-01 20:30:10','2022-08-02 03:30:10'),('b0bd422a5f774d1b2067a54dea7e153b1492de64fce793e7af8de01b0a4c05963015ff67bb6f4702',1,13,'Personal Access Token','[]',1,'2021-11-20 06:00:27','2021-11-20 06:00:27','2022-11-20 13:00:27'),('b299911fe1e31d7e583a7d2666c867cda8db7c2b41414b677b5183e9a67f15debd2e3031f92c0d94',1,23,'Personal Access Token','[]',1,'2023-02-07 01:53:35','2023-02-07 01:53:35','2024-02-07 01:53:35'),('b49af4edb8482ed073e245073873e7153614052260de354c28b386d9c6a6883dcd8473dc644f933a',1,15,'Personal Access Token','[]',0,'2021-12-01 20:22:51','2021-12-01 20:22:51','2022-12-02 03:22:51'),('b62bda18795f003d3a7fd76dd7db80413853cd53a1c842da64a2b2578ed3a4f3946c89b806931868',1,19,'Personal Access Token','[]',0,'2022-04-17 20:20:45','2022-04-17 20:20:45','2023-04-18 03:20:45'),('bc94392e6cb680d41aed25512c7c626260f9ab74b746db48fc1daca8e2373a057e2d5579c5ec6806',1,19,'Personal Access Token','[]',0,'2021-12-29 01:19:23','2021-12-29 01:19:23','2022-12-29 08:19:23'),('bf176b61922a0afb428e6ec96bc5774e34212628b84af75ff5b4e75ebce523466099eb26c18995e1',1,1,'Personal Access Token','[]',0,'2020-02-09 09:52:37','2020-02-09 09:52:37','2021-02-09 16:52:37'),('c05e3f191747f498614739b2892841ea4a369a1976114f420d9f8176ed9391e96e5e179f06e4afe9',1,3,'Personal Access Token','[]',1,'2021-07-02 19:54:24','2021-07-02 19:54:24','2022-07-03 02:54:24'),('c650907fc6b1db60200c2acaeb9d3b4f21c79f22f295dabd1874560e3ac31125ec9ed1e841eed651',1,1,'Personal Access Token','[]',1,'2021-07-01 00:19:58','2021-07-01 00:19:58','2022-07-01 07:19:58'),('c75d774e585cf4aff8f91a1ca927d826bf3c8fe7fd50e57e82b76975aae7caf321f90ca4c48d8e08',1,1,'Personal Access Token','[]',0,'2020-02-11 04:56:20','2020-02-11 04:56:20','2021-02-11 11:56:20'),('ced11c3cdce92ce1f0d32f1bfdcb8222942073fc1d1641443ad2e7357c797af1b988c8e0e82559ba',1,19,'Personal Access Token','[]',0,'2022-03-05 08:55:44','2022-03-05 08:55:44','2023-03-05 15:55:44'),('d14bf0d3ab1008c90078b7c0003f9ccf98459e8c8f8774d7d6633bfcef23c03f837272ebc8d3a4c7',1,3,'Personal Access Token','[]',0,'2021-07-10 01:23:28','2021-07-10 01:23:28','2022-07-10 08:23:28'),('d9b921be8de622b4101686ed1b52577c4fa9d475c66f6efc6a0486f0a6f7064d3518b86381f8357e',1,9,'Personal Access Token','[]',1,'2021-09-07 20:13:11','2021-09-07 20:13:11','2022-09-08 03:13:11'),('d9fa1b99a078176c1a522f7918b75bc299c5e03a4d5e10196c2fb08aad384768d82dd784d42e519d',1,5,'Personal Access Token','[]',1,'2021-08-02 21:29:55','2021-08-02 21:29:55','2022-08-03 04:29:55'),('da560396f61b28a3f950784d7d4a07d379f43239dd7ffea97b2a21b367ba5a03987849e4dc85ff5b',1,1,'Personal Access Token','[]',0,'2020-02-09 00:52:32','2020-02-09 00:52:32','2021-02-09 07:52:32'),('e133c46f9943c066e812089de3c0775bc3d182252956dcb6f4e5f576fa60da5c9146313104e4bc55',1,7,'Personal Access Token','[]',1,'2021-08-10 20:32:51','2021-08-10 20:32:51','2022-08-11 03:32:51'),('e261ea716838de5d4fab1b8eb155ccdf1eab7f9f1b8750a89ab6356b0fea67791accfb77cd5cd584',1,7,'Personal Access Token','[]',1,'2021-08-11 00:19:04','2021-08-11 00:19:04','2022-08-11 07:19:04'),('e66056a6eaa66eed239722d333c482288fc36d3437bbfb7ee53a5cf365ddd5e8817508863749d6f0',1,1,'Personal Access Token','[]',0,'2020-07-21 02:02:18','2020-07-21 02:02:18','2021-07-21 09:02:18'),('e830c06729a6197f14af739e8754b0ee09bd3b32ea2833ea10d632647d1afbe1c9491bbafeb1fb18',1,1,'Personal Access Token','[]',0,'2021-07-01 01:27:55','2021-07-01 01:27:55','2022-07-01 08:27:55'),('e83212334542ffa8bc250773897ee7160ce9308cc81bf71efde755869fe62083ebd09a4ee55fa413',1,3,'Personal Access Token','[]',0,'2021-07-13 09:14:54','2021-07-13 09:14:54','2022-07-13 16:14:54'),('e9296e17eb0424621e17015641a777ccfc29113239e173cbae9c8c2d251ae6f9c093ef8cfd359224',1,23,'Personal Access Token','[]',0,'2023-02-09 14:28:23','2023-02-09 14:28:23','2024-02-09 14:28:23'),('e9f1ed3a902f8501118c2824e82fd77cc0bc7b1b61b9d6081255120f1224896cd588218c86426756',1,1,'Personal Access Token','[]',0,'2019-12-25 21:33:16','2019-12-25 21:33:16','2020-12-26 04:33:16'),('ea6cb08f2f66a059392eff51af136f2be1ac57d00aec33e580ad140f6ef20817e298a0958794d701',1,23,'Personal Access Token','[]',0,'2023-02-07 08:57:10','2023-02-07 08:57:10','2024-02-07 08:57:10'),('eb6437f6ec35a43c23a747c63400413152a21eeabb07def61ec92df7c3c0bd463a6852c6edfa56e7',1,23,'Personal Access Token','[]',0,'2023-02-09 15:03:36','2023-02-09 15:03:36','2024-02-09 15:03:36'),('eba965692a3109c35fae5d834ddf79d00665b529d952d85ab612bc60e141a558a1ca066be621069d',1,7,'Personal Access Token','[]',1,'2021-08-11 00:16:46','2021-08-11 00:16:46','2022-08-11 07:16:46'),('ee479f486776496965ba03087d8ee4a9400f875e0d93089d3716eb62c2e4cbdcd2fc96ca465ff926',1,19,'Personal Access Token','[]',0,'2022-07-04 02:18:24','2022-07-04 02:18:24','2023-07-04 09:18:24'),('ef97b736abc130c69b49953937a5e6aa5992442e55be6ae9396f8f6a885db6569a867ba423650dde',1,1,'Personal Access Token','[]',0,'2020-07-20 21:38:53','2020-07-20 21:38:53','2021-07-21 04:38:53'),('f18174d5d7d1f0df887185c8930ab04007b343c31c279474b0c0ceb6232740cd4aefdfe72de57e2a',1,19,'Personal Access Token','[]',0,'2022-10-17 05:19:02','2022-10-17 05:19:02','2023-10-17 12:19:02'),('f6112e611f337c2094bc5e68754a4e92b852d2ae6cef1d9dd371adc440e0d5d90e9bab8bcf463596',1,13,'Personal Access Token','[]',1,'2021-11-27 21:10:01','2021-11-27 21:10:01','2022-11-28 04:10:01'),('f661b12c59ae1cf32cc6e67fa0cb0e3f3d67f930756b1217099257632cca84da546614a9d91075a3',1,19,'Personal Access Token','[]',0,'2021-12-25 08:18:48','2021-12-25 08:18:48','2022-12-25 15:18:48'),('f8c5b651ab88e36cbd89ef6036f76e37a725ede22c84b377b1c1d30e1bf89891005b73e3b73adedc',1,7,'Personal Access Token','[]',0,'2021-08-19 08:44:03','2021-08-19 08:44:03','2022-08-19 15:44:03'),('fa38044e5486575357b8616b00e73894af771233ea1d80720f16ee1b5fbd86e20c9d5704919e8d63',1,9,'Personal Access Token','[]',0,'2021-09-15 02:36:25','2021-09-15 02:36:25','2022-09-15 09:36:25'),('fb865dbd49e3789dab7c500a13d78080ea66dadcf51d76a2a642e4f2013e8a2837c208dfb7c30e16',1,13,'Personal Access Token','[]',1,'2021-11-29 09:27:28','2021-11-29 09:27:28','2022-11-29 16:27:28'),('fcca66dabf25d22215fd26dc37c939e156ae96be0d183512134eb2322e0a29118da98c8ba48dc605',1,19,'Personal Access Token','[]',0,'2022-09-29 01:18:07','2022-09-29 01:18:07','2023-09-29 08:18:07');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','8NgQ2h4vVSnzuEynzdF3PZ9ir5HZhmUm94iOhIvH','http://localhost',1,0,0,NULL,'2019-12-13 20:57:43','2019-12-13 20:57:43'),(2,NULL,'Laravel Password Grant Client','qlUy5ooGXseWPMmorSDmekKM88KJ2RKTvkyAsWbL','http://localhost',0,1,0,NULL,'2019-12-13 20:57:43','2019-12-13 20:57:43'),(3,NULL,'Laravel Personal Access Client','jxejEyFu11i0Kxkc3m8B3ExdmzHVj8iKwqiwJXq3','http://localhost',1,0,0,NULL,'2021-07-02 19:52:21','2021-07-02 19:52:21'),(4,NULL,'Laravel Password Grant Client','jjkgmDfkBz9b85koKnV3YyIalhS6CNLu6mHwl2ax','http://localhost',0,1,0,NULL,'2021-07-02 19:52:21','2021-07-02 19:52:21'),(5,NULL,'Laravel Personal Access Client','yLW8d0RGC1vayAHUYRSgSg5Fq6KbE5PK720vZJIs','http://localhost',1,0,0,NULL,'2021-08-01 20:23:14','2021-08-01 20:23:14'),(6,NULL,'Laravel Password Grant Client','WR7NYVJi4Q2PJpy4retK5LSglTuXdr7VqRRZ7QZi','http://localhost',0,1,0,'users','2021-08-01 20:23:14','2021-08-01 20:23:14'),(7,NULL,'Laravel Personal Access Client','7I6OSJIcVDMdV7U6IvYYFOKHsIYONzLCArykAuDb','http://localhost',1,0,0,NULL,'2021-08-03 11:22:29','2021-08-03 11:22:29'),(8,NULL,'Laravel Password Grant Client','1Irzjouwm4a3ET62COu7Kc0Nz2CbMRWe2S3hoAgo','http://localhost',0,1,0,'users','2021-08-03 11:22:29','2021-08-03 11:22:29'),(9,NULL,'Laravel Personal Access Client','LCPAzCtnmfuDqa6Spdx87qPgwyudDQO5TK3wwTKt','http://localhost',1,0,0,NULL,'2021-08-19 09:40:19','2021-08-19 09:40:19'),(10,NULL,'Laravel Password Grant Client','4qEzmHtrmJJBFbpF4O3W7KPzW1qW5liPWjikVFKO','http://localhost',0,1,0,'users','2021-08-19 09:40:19','2021-08-19 09:40:19'),(11,NULL,'Laravel Personal Access Client','Tv1683FTyeciWV6cTyzHw7E9OrEfjQKM064rUY94','http://localhost',1,0,0,NULL,'2021-10-04 03:35:07','2021-10-04 03:35:07'),(12,NULL,'Laravel Password Grant Client','LeooPku9YeBGMPpY2ZmiVpadowAFG6dQ3jXPYyCa','http://localhost',0,1,0,'users','2021-10-04 03:35:07','2021-10-04 03:35:07'),(13,NULL,'Laravel Personal Access Client','HuQPXIJYMb7Ct9gojbtU2Og5AVtCYrxKs7QXGUB5','http://localhost',1,0,0,NULL,'2021-11-20 02:22:34','2021-11-20 02:22:34'),(14,NULL,'Laravel Password Grant Client','1OigCWIRY1YTBbSaO8GtlSEiCTzFTOrHXEvMg6K5','http://localhost',0,1,0,'users','2021-11-20 02:22:34','2021-11-20 02:22:34'),(15,NULL,'Laravel Personal Access Client','XjGqXmNK5cETwWueXOuiixEwNTF3mNSsniZGdBok','http://localhost',1,0,0,NULL,'2021-12-01 20:20:33','2021-12-01 20:20:33'),(16,NULL,'Laravel Password Grant Client','X2LNOlM9YLKSdiqe9IDIik2UVoybbfU6SOqYfTFJ','http://localhost',0,1,0,'users','2021-12-01 20:20:34','2021-12-01 20:20:34'),(17,NULL,'Laravel Personal Access Client','jFyU6og68CPt5mAXurVOf92tUED183rPzI4HHlC2','http://localhost',1,0,0,NULL,'2021-12-06 19:36:09','2021-12-06 19:36:09'),(18,NULL,'Laravel Password Grant Client','EUeZnJJziEgsfw3LTguV9MbBfnWByTlg3DCry0iC','http://localhost',0,1,0,'users','2021-12-06 19:36:09','2021-12-06 19:36:09'),(19,NULL,'Laravel Personal Access Client','2Um3oxwB0Ut2XcpxtsHogYUOvAtAtM3DAWTwQLak','http://localhost',1,0,0,NULL,'2021-12-22 09:09:03','2021-12-22 09:09:03'),(20,NULL,'Laravel Password Grant Client','FYad9U3Rcg7crFqNGlcoVItFsXKEEHS8v3DzDVtC','http://localhost',0,1,0,'users','2021-12-22 09:09:03','2021-12-22 09:09:03'),(21,NULL,'Laravel Personal Access Client','t1UtyhvczZ4Bfm16ly6YshPzPkgeZEhbectsoL4L','http://localhost',1,0,0,NULL,'2023-02-01 20:19:25','2023-02-01 20:19:25'),(22,NULL,'Laravel Password Grant Client','Q9AoqyxdFcwsFIsrXqvMt11VaWI1auZswg5p6A25','http://localhost',0,1,0,'users','2023-02-01 20:19:25','2023-02-01 20:19:25'),(23,NULL,'Laravel Personal Access Client','RMx8HMW0Qguu97bIY87UfTbN194jlfQJfn61IUoH','http://localhost',1,0,0,NULL,'2023-02-03 11:11:30','2023-02-03 11:11:30'),(24,NULL,'Laravel Password Grant Client','lESniqL2jxgkb8QX9XAC8saZ5B1lhuMPLXtqkcY6','http://localhost',0,1,0,'users','2023-02-03 11:11:30','2023-02-03 11:11:30');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2019-12-13 20:57:43','2019-12-13 20:57:43'),(2,3,'2021-07-02 19:52:21','2021-07-02 19:52:21'),(3,5,'2021-08-01 20:23:14','2021-08-01 20:23:14'),(4,7,'2021-08-03 11:22:29','2021-08-03 11:22:29'),(5,9,'2021-08-19 09:40:19','2021-08-19 09:40:19'),(6,11,'2021-10-04 03:35:07','2021-10-04 03:35:07'),(7,13,'2021-11-20 02:22:34','2021-11-20 02:22:34'),(8,15,'2021-12-01 20:20:34','2021-12-01 20:20:34'),(9,17,'2021-12-06 19:36:09','2021-12-06 19:36:09'),(10,19,'2021-12-22 09:09:03','2021-12-22 09:09:03'),(11,21,'2023-02-01 20:19:25','2023-02-01 20:19:25'),(12,23,'2023-02-03 11:11:30','2023-02-03 11:11:30');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_contents`
--

DROP TABLE IF EXISTS `page_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `status` int(2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_contents`
--

LOCK TABLES `page_contents` WRITE;
/*!40000 ALTER TABLE `page_contents` DISABLE KEYS */;
INSERT INTO `page_contents` VALUES (28,28,'en-US','Giới thiệu','<p><em>C&ocirc;ng ty cổ phần Phong Li&ecirc;n l&agrave; doanh nghiệp chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm điện m&aacute;y, c&ocirc;ng cụ cầm tay; hiện c&ocirc;ng ty đang l&agrave;m đại l&yacute; ph&acirc;n phối sản phẩm điện m&aacute;y của c&aacute;c h&atilde;ng sản xuất h&agrave;ng đầu thế giới như: Yamaha, Makita, Honda, Stihl... .Sản phẩm, dịch vụ của C&ocirc;ng ty lu&ocirc;n được kh&aacute;ch h&agrave;ng, thị trường tin tưởng đ&oacute;n nhận v&agrave; đ&aacute;nh gi&aacute; cao về chất lượng v&agrave; uy t&iacute;n phục vụ. C&ocirc;ng ty cổ phần Phong Li&ecirc;n th&agrave;nh lập từ năm 2007 sau 15 năm hoạt động, C&ocirc;ng ty thực sự đ&atilde; trở th&agrave;nh nh&agrave; ph&acirc;n phối h&agrave;ng h&agrave;ng đầu tại miền Bắc.</em></p>',1,'ve-chung-toi',NULL,'gioi-thieu','<p>a</p>','2022-04-19 01:05:22','2022-04-19 01:05:22'),(29,28,'vi','Giới thiệu','<p style=\"text-align: justify;\">Th&agrave;nh lập năm 2017, C&ocirc;ng Ty TNHH Thương Mại Kiều Kh&aacute;nh Med hoạt động trong lĩnh vực y tế, chuy&ecirc;n ngh&agrave;nh nh&atilde;n khoa. C&ocirc;ng Ty chuy&ecirc;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm l&agrave; Thiết bị y tế, thực phẩm bảo vệ sức khỏe. Ch&uacute;ng t&ocirc;i lựa chọn hợp t&aacute;c với những đối t&aacute;c tin cậy tại ch&acirc;u &acirc;u v&agrave; c&aacute;c nước ph&aacute;t triển, nhằm đưa về thị trường Việt Nam những sản phẩm chất lượng đạt ti&ecirc;u chuẩn ch&acirc;u &acirc;u, c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng v&agrave; tu&acirc;n thủ tuyệt đối c&aacute;c quy định của Bộ y Tế.</p>\n<p style=\"text-align: justify;\">&nbsp;Sản phẩm Kiều Kh&aacute;nh Med ph&acirc;n phối đến từ những h&atilde;ng sản xuất c&oacute; lịch sử ph&aacute;t triển l&acirc;u d&agrave;i, uy t&iacute;n. Chất lượng được khẳng định tại thị trường ch&acirc;u &acirc;u, đạt ti&ecirc;u chuẩn EU-GMP. Sử dụng nguồn nguy&ecirc;n liệu v&agrave; c&ocirc;ng thức được cấp bằng s&aacute;ng chế khoa học, c&ocirc;ng nghệ sản xuất ti&ecirc;n tiến, hiện đại mang đến những sản phẩm chất lượng v&agrave; độ sinh khả dụng cao.</p>\n<p style=\"text-align: justify;\">Với phương ch&acirc;m hoạt động &ldquo; Thắp s&aacute;ng từ trong t&acirc;m&rdquo; ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực kh&ocirc;ng ngừng mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm c&oacute; chất lượng tốt nhất, gi&aacute; trị nhất bằng tất cả t&acirc;m huyết, hướng đến sự ph&aacute;t triển bền vững. Đ&oacute; l&agrave; kim chỉ nam xuy&ecirc;n suốt cho con đường ph&aacute;t triển kinh doanh của Kiều kh&aacute;nh med.</p>\n<p style=\"text-align: justify;\">&nbsp;Ch&uacute;ng t&ocirc;i tin rằng: Kiều Kh&aacute;nh Med c&oacute; thể cung cấp cho ngh&agrave;nh nh&atilde;n khoa một k&ecirc;nh ph&acirc;n phối quan trọng v&agrave; trở th&agrave;nh đối t&aacute;c tin cậy đối với c&aacute;c y, b&aacute;c sĩ.</p>\n<p><strong>SỨ MỆNH</strong></p>\n<p style=\"text-align: justify;\">Sứ mệnh của doanh nghiệp l&agrave; đem đến những sản phẩm chất lượng tốt nhất cho người d&ugrave;ng. Đi c&ugrave;ng với phương ch&acirc;m &ldquo;Phụng sự để th&agrave;nh c&ocirc;ng&rdquo; l&agrave; yếu tố cốt l&otilde;i m&agrave; kiều kh&aacute;nh med hướng đến.</p>\n<p style=\"text-align: justify;\"><strong>TẦM NH&Igrave;N</strong></p>\n<ul>\n<li style=\"text-align: justify;\">Đến năm 2030 Kiều Kh&aacute;nh Med trở th&agrave;nh c&ocirc;ng ty c&oacute; thương hiệu trong ngh&agrave;nh nh&atilde;n khoa Việt Nam.</li>\n<li style=\"text-align: justify;\">Đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu.</li>\n</ul>\n<p style=\"text-align: left;\"><strong>GI&Aacute; TRỊ CỐT L&Otilde;I</strong></p>\n<p style=\"text-align: justify;\">L&agrave;m thỏa m&atilde;n ước vọng của kh&aacute;ch h&agrave;ng.</p>\n<ul>\n<li style=\"text-align: justify;\">Phụng sự kh&aacute;ch h&agrave;ng l&agrave; hạnh ph&uacute;c của ch&uacute;ng t&ocirc;i.</li>\n</ul>\n<p><strong>TRIẾT L&Yacute; KINH DOANH:</strong></p>\n<p style=\"text-align: justify;\">Mang lại gi&aacute; trị cho kh&aacute;ch h&agrave;ng, c&ocirc;ng ty, nh&acirc;n vi&ecirc;n:</p>\n<p style=\"text-align: justify;\">- <em>Mang lại gi&aacute; trị cho kh&aacute;ch h&agrave;ng</em>: chất lượng sản phẩm tốt, gi&aacute; th&agrave;nh hợp l&yacute;.</p>\n<p style=\"text-align: justify;\">- <em>Mang lại gi&aacute; trị cho nh&acirc;n vi&ecirc;n:</em> trao cơ hội được l&agrave;m việc v&agrave; ph&aacute;t triển về cả vật chất v&agrave; tr&iacute; tuệ, hướng nh&acirc;n vi&ecirc;n đến suy nghĩ t&iacute;ch cực, c&oacute; c&ocirc;ng việc ổn định v&agrave;&nbsp; được cống hiến l&acirc;u d&agrave;i.</p>\n<p style=\"text-align: justify;\">-<em> Mang lại gi&aacute; trị cho c&ocirc;ng ty</em>: Mỗi c&aacute; nh&acirc;n l&agrave; một nh&acirc;n tố &nbsp;quan trọng để ph&aacute;t triển c&ocirc;ng ty ph&aacute;t triển bền vững.</p>\n<div class=\"ddict_btn\" style=\"top: 31px; left: 740.112px;\">&nbsp;</div>',1,'ve-chung-toi','http://kieukhanhmed.com/uploads/images/page-content-159374719.jpg','gioi-thieu','<p style=\"text-align: justify;\">Th&agrave;nh lập năm 2017, C&ocirc;ng Ty TNHH Thương Mại Kiều Kh&aacute;nh Med hoạt động trong lĩnh vực y tế, chuy&ecirc;n ngh&agrave;nh nh&atilde;n khoa. C&ocirc;ng Ty chuy&ecirc;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm l&agrave; Thiết bị y tế, thực phẩm bảo vệ sức khỏe. Ch&uacute;ng t&ocirc;i lựa chọn hợp t&aacute;c với những đối t&aacute;c tin cậy tại ch&acirc;u &acirc;u v&agrave; c&aacute;c nước ph&aacute;t triển, nhằm đưa về thị trường Việt Nam những sản phẩm chất lượng đạt ti&ecirc;u chuẩn ch&acirc;u &acirc;u, c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng v&agrave; tu&acirc;n thủ tuyệt đối c&aacute;c quy định của Bộ y Tế.</p>\n<p style=\"text-align: justify;\">&nbsp;Sản phẩm Kiều Kh&aacute;nh Med ph&acirc;n phối đến từ những h&atilde;ng sản xuất c&oacute; lịch sử ph&aacute;t triển l&acirc;u d&agrave;i, uy t&iacute;n. Chất lượng được khẳng định tại thị trường ch&acirc;u &acirc;u, đạt ti&ecirc;u chuẩn EU-GMP. Sử dụng nguồn nguy&ecirc;n liệu v&agrave; c&ocirc;ng thức được cấp bằng s&aacute;ng chế khoa học, c&ocirc;ng nghệ sản xuất ti&ecirc;n tiến, hiện đại mang đến những sản phẩm chất lượng v&agrave; độ sinh khả dụng cao.</p>','2022-04-19 01:05:22','2023-02-06 01:52:31'),(30,30,'en-US','Chính sách bảo hành','<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>',2,'ve-chung-toi',NULL,'chinh-sach-bao-hanh','<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>','2022-07-02 00:33:13','2022-07-02 00:33:13'),(31,30,'vi','Chính sách bảo hành','<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>',1,'ho-tro-khach-hang',NULL,'chinh-sach-bao-hanh','<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>','2022-07-02 00:33:13','2022-07-11 03:32:20');
/*!40000 ALTER TABLE `page_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `link` longtext,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'SAV','<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">SAV-IOL (Swiss Advanced Vision) l&agrave; một c&ocirc;ng ty Thụy Sĩ chuy&ecirc;n ph&aacute;t triển, sản xuất v&agrave; tiếp thị c&aacute;c thủy tinh thể nh&acirc;n tạo (IOL) chất lượng cao được sản xuất bằng C&ocirc;ng nghệ EDOF. SAV-IOL cố gắng trở th&agrave;nh một c&ocirc;ng ty s&aacute;ng tạo lớn tr&ecirc;n to&agrave;n thế giới trong lĩnh vực cấy gh&eacute;p thủy tinh thể nh&acirc;n tạo ti&ecirc;n tiến với lợi &iacute;ch tiết kiệm chi ph&iacute; mang lại lợi &iacute;ch thực sự cho bệnh nh&acirc;n.</span></p>','http://kieukhanhmed.com/uploads/images/doi-tac-541753564.png',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(2,'PARIS MIKI','<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Với hơn 1000 cửa h&agrave;ng tr&ecirc;n khắp đất nước, Paris Miki lu&ocirc;n nằm trong top chuỗi b&aacute;n lẻ k&iacute;nh mắt lớn nhất Nhật Bản. Gia nhập thị trường Việt Nam từ năm 2014 đến nay, Paris Miki đ&atilde; v&agrave; đang tạo dựng được vị tr&iacute; nhất định trong l&ograve;ng kh&aacute;ch h&agrave;ng.&nbsp; C&ocirc;ng nghệ kĩ thuật cao c&ugrave;ng chất lượng dịch vụ vượt trội ch&iacute;nh l&agrave; yếu tố cốt l&otilde;i gi&uacute;p K&iacute;nh mắt Nhật Bản Paris Miki lu&ocirc;n mang đến cho kh&aacute;ch h&agrave;ng sự thoải m&aacute;i v&agrave; tin tưởng.&nbsp; B&ecirc;n cạnh đ&oacute;, ưu điểm nổi trội của K&iacute;nh mắt Paris Miki ch&iacute;nh l&agrave; quy tr&igrave;nh kiểm so&aacute;t chất lượng c&aacute;c sản phẩm nhập khẩu theo quy chuẩn của Nhật Bản cũng như c&aacute;c kỹ thuật đ&ograve;i hỏi tay nghề chuy&ecirc;n m&ocirc;n cao v&agrave; kinh nghiệm trong qu&aacute; tr&igrave;nh thực hiện đo kh&aacute;m thị lực cho bệnh nh&acirc;n. Với m&aacute;y m&oacute;c, trang thiết bị tối t&acirc;n c&ugrave;ng đội ngũ nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng tận t&igrave;nh v&agrave; chế độ bảo h&agrave;nh sản phẩm tốt, K&iacute;nh mắt Paris Miki cam kết chất lượng dịch vụ, tất cả v&igrave; kh&aacute;ch h&agrave;ng v&agrave; tương lai của kh&aacute;ch h&agrave;ng. K&iacute;nh mắt Paris Miki l&agrave; sự lựa chọn ho&agrave;n hảo cho đ&ocirc;i mắt của bạn!</span></p>','http://kieukhanhmed.com/uploads/images/doi-tac-541167266.jpg',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(3,'CONTENT GROUP','<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Content Group l&agrave; một tập đo&agrave;n dược phẩm l&acirc;u đời của &Yacute;, với thế mạnh c&aacute;c sản phẩm dung dịch, nhũ tương, gel v&agrave; dược phẩm đ&ocirc;ng kh&ocirc;, thiết bị y tế v&agrave; mỹ phẩm, v&agrave; đặc biệt l&agrave; cho nh&atilde;n khoa, mũi, miệng, h&ocirc; hấp, da liễu, tai v&agrave; chẩn đo&aacute;n. Kh&aacute;ch h&agrave;ng của Content Group l&agrave; c&aacute;c c&ocirc;ng ty đa quốc gia v&agrave; c&aacute;c tập đo&agrave;n lớn cũng như c&aacute;c c&ocirc;ng ty dược phẩm v&agrave; mỹ phẩm vừa v&agrave; nhỏ.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Với nhiều thập kỷ kinh nghiệm trong lĩnh vực nh&atilde;n khoa v&agrave; h&ocirc; hấp, Content Group tự h&agrave;o c&oacute; 2 c&ocirc;ng ty sản xuất: C.O.C. Farmaceutici v&agrave; Tubilux Pharma.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">C&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu, b&iacute; quyết phổ biến v&agrave; c&aacute;c gi&aacute; trị đặc biệt đưa Content Group trở th&agrave;nh một tập đo&agrave;n dược phẩm l&agrave;nh mạnh chuy&ecirc;n ph&aacute;t triển, sản xuất v&agrave; ph&acirc;n phối sản phẩm to&agrave;n cầu.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Với doanh thu 73,2 triệu Euro v&agrave;o năm 2020, COC Pharmaceutici l&agrave; một trong những tập đo&agrave;n nh&atilde;n khoa được c&ocirc;ng nhận nhiều nhất ở Ch&acirc;u &Acirc;u, với kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n thế giới v&agrave; triển vọng tăng trưởng đ&aacute;ng kể ở Ch&acirc;u &Acirc;u, Trung Đ&ocirc;ng, Bắc Phi v&agrave; Hoa Kỳ - nhờ sự chấp thuận của FDA đối với một trong ba cơ sở sản xuất.</span></p>','http://kieukhanhmed.com/uploads/images/doi-tac-36067923.png',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(4,'ABIPHA','<p>WWW</p>','http://kieukhanhmed.com/uploads/images/doi-tac-386465942.png',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(5,'FUSI','<p>WWW</p>','http://kieukhanhmed.com/uploads/images/doi-tac-424767531.png',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(6,NULL,NULL,'http://kieukhanhmed.com/uploads/images/doi-tac-1852773622.jpg',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(7,NULL,NULL,'http://kieukhanhmed.com/uploads/images/doi-tac-1854316816.jpg',1,'2023-02-09 06:45:25','2023-02-09 06:45:25'),(8,NULL,NULL,'http://kieukhanhmed.com/uploads/images/doi-tac-2119045730.jpg',1,'2023-02-09 06:45:25','2023-02-09 06:45:25');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'create-tasks','Create Tasks','2019-12-15 17:00:00','2019-12-15 17:00:00'),(3,'delete-tasks','Delete Tasks','2019-12-15 17:00:00','2019-12-15 17:00:00'),(5,'view-users','View Users','2019-12-15 17:00:00','2019-12-15 17:00:00'),(10,'edit_product','Edit Product','2019-12-15 17:00:00','2019-12-15 17:00:00'),(12,'add_product','Add Product','2019-12-15 17:00:00','2019-12-15 17:00:00'),(14,'delete_product','Delete Product','2019-12-15 17:00:00','2019-12-15 17:00:00'),(16,'add_blog','Add Blog','2019-12-15 17:00:00','2019-12-15 17:00:00'),(17,'edit_blog','Edit Blog','2019-12-15 17:00:00','2019-12-15 17:00:00'),(18,'delete_blog','Delete Blog','2019-12-15 17:00:00','2019-12-15 17:00:00'),(22,'manage_customer','Manage Customer','2019-12-15 17:00:00','2019-12-15 17:00:00');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prizes`
--

DROP TABLE IF EXISTS `prizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prizes`
--

LOCK TABLES `prizes` WRITE;
/*!40000 ALTER TABLE `prizes` DISABLE KEYS */;
INSERT INTO `prizes` VALUES (1,'Món ngon từ Tôm Faifofoods',NULL,'/uploads/images/prize-487234598.png',1,'2022-06-16 10:24:47','2022-06-16 10:24:47'),(2,'Món ngon từ Tôm Faifofoods',NULL,'/uploads/images/prize-1173931303.png',1,'2022-06-16 10:24:47','2022-06-16 10:24:47'),(3,'Món ngon từ Tôm Faifofoods',NULL,'/uploads/images/prize-180799452.png',1,'2022-06-16 10:24:47','2022-06-16 10:24:47'),(4,'Món ngon từ Tôm Faifofoods',NULL,'/uploads/images/prize-544893513.png',NULL,'2022-06-16 10:24:47','2022-06-16 10:24:47'),(5,'Chả Tôm Quết Cửa Đại',NULL,'/uploads/images/prize-1565985869.png',1,'2022-06-16 10:24:47','2022-06-16 10:24:47'),(6,'Món ngon từ Tôm Faifofoods',NULL,'/uploads/images/prize-1681706828.png',1,'2022-06-16 10:24:47','2022-06-16 10:24:47'),(7,'Chà Bông Tôm Cửa Đại',NULL,'/uploads/images/prize-469139717.png',1,'2022-06-16 10:24:48','2022-06-16 10:24:48'),(8,'Nước mắm Cửa Đại',NULL,'/uploads/images/prize-1239101904.png',1,'2022-06-16 10:24:48','2022-06-16 10:24:48');
/*!40000 ALTER TABLE `prizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `imagehome` varchar(255) DEFAULT NULL,
  `name` text,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_demo` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,0,NULL,'[{\"lang_code\":\"vi\",\"content\":\"Th\\u1ee7y Tinh Th\\u1ec3 Nh\\u00e2n T\\u1ea1o\"}]','thuy-tinh-the-nhan-tao',NULL,NULL,'0',NULL,NULL,1,'2023-02-04 03:17:31','2023-02-04 03:15:12'),(2,0,NULL,'[{\"lang_code\":\"vi\",\"content\":\"N\\u01b0\\u1edbc M\\u1eaft Nh\\u00e2n T\\u1ea1o\"}]','nuoc-mat-nhan-tao',NULL,NULL,'0',NULL,NULL,1,'2023-02-04 03:17:48','2023-02-04 03:14:56'),(3,0,NULL,'[{\"lang_code\":\"vi\",\"content\":\"Th\\u1ef1c  Ph\\u1ea9m B\\u1ea3o V\\u1ec7 S\\u1ee9c Kh\\u1ecfe\"}]','thuc-pham-bao-ve-suc-khoe',NULL,NULL,'0',NULL,NULL,1,'2023-02-04 03:17:15','2023-02-04 03:15:54'),(4,0,NULL,'[{\"lang_code\":\"vi\",\"content\":\"Qu\\u00e0 T\\u1eb7ng\"}]','qua-tang',NULL,NULL,'0',NULL,NULL,1,'2023-02-04 03:16:37','2023-02-04 03:16:37');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Midukama\"}]','may-phat-dien-midukama',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:09:26','2022-04-19 09:09:26'),(2,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Kubota\"}]','may-phat-dien-kubota',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:09:45','2022-04-19 09:09:45'),(3,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Perkins\"}]','may-phat-dien-perkins',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:09:56','2022-04-19 09:09:56'),(4,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Volvo\"}]','may-phat-dien-volvo',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:10:06','2022-04-19 09:10:06'),(5,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Doosan\"}]','may-phat-dien-doosan',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:10:16','2022-04-19 09:10:16'),(6,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Hanglee\"}]','may-phat-dien-hanglee',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:10:27','2022-04-19 09:10:27'),(7,0,'0','[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n Cummins\"}]','may-phat-dien-cummins',NULL,NULL,1,'may-phat-dien',NULL,1,'2022-04-19 09:10:37','2022-04-19 09:10:37'),(8,0,'0','[{\"lang_code\":\"vi\",\"content\":\"B\\u1ed9 \\u0111i\\u1ec1u khi\\u1ec3n ComAp\"}]','bo-dieu-khien-comap',NULL,NULL,2,'bo-dieu-khien-may-phat-dien',NULL,1,'2022-04-19 09:12:06','2022-04-19 09:12:06'),(9,0,'0','[{\"lang_code\":\"vi\",\"content\":\"B\\u1ed9 \\u0111i\\u1ec1u khi\\u1ec3n Datakom\"}]','bo-dieu-khien-datakom',NULL,NULL,2,'bo-dieu-khien-may-phat-dien',NULL,1,'2022-04-19 09:12:18','2022-04-19 09:12:18'),(10,0,'0','[{\"lang_code\":\"vi\",\"content\":\"B\\u1ed9 \\u0111i\\u1ec1u khi\\u1ec3n Deepsea\"}]','bo-dieu-khien-deepsea',NULL,NULL,2,'bo-dieu-khien-may-phat-dien',NULL,1,'2022-04-19 09:12:32','2022-04-19 09:12:32'),(11,0,'0','[{\"lang_code\":\"vi\",\"content\":\"B\\u1ed9 \\u0111i\\u1ec1u khi\\u1ec3n Deif\"}]','bo-dieu-khien-deif',NULL,NULL,2,'bo-dieu-khien-may-phat-dien',NULL,1,'2022-04-19 09:12:50','2022-04-19 09:12:50'),(12,0,'0','[{\"lang_code\":\"vi\",\"content\":\"AVR \\u0111a n\\u0103ng\"}]','avr-da-nang',NULL,NULL,3,'bo-dieu-chinh-dien-ap-avr-',NULL,1,'2022-04-19 09:18:52','2022-04-19 09:18:52'),(13,0,'0','[{\"lang_code\":\"vi\",\"content\":\"AVR Basler\"}]','avr-basler',NULL,NULL,3,'bo-dieu-chinh-dien-ap-avr-',NULL,1,'2022-04-19 09:19:13','2022-04-19 09:19:13'),(14,0,'0','[{\"lang_code\":\"vi\",\"content\":\"AVR Ch\\u1ed5i Than\"}]','avr-choi-than',NULL,NULL,3,'bo-dieu-chinh-dien-ap-avr-',NULL,1,'2022-04-19 09:19:26','2022-04-19 09:19:26'),(15,0,'0','[{\"lang_code\":\"vi\",\"content\":\"AVR Caterpillar\"}]','avr-caterpillar',NULL,NULL,3,'bo-dieu-chinh-dien-ap-avr-',NULL,1,'2022-04-19 09:19:36','2022-04-19 09:19:36'),(16,0,'0','[{\"lang_code\":\"vi\",\"content\":\"AVR Datakom\"}]','avr-datakom',NULL,NULL,3,'bo-dieu-chinh-dien-ap-avr-',NULL,1,'2022-04-19 09:19:47','2022-04-19 09:19:47'),(17,0,'0','[{\"lang_code\":\"vi\",\"content\":\"\\u0110i\\u1ec1u t\\u1ed1c Mitsubishi\"}]','dieu-toc-mitsubishi',NULL,NULL,4,'dieu-toc-dien-tu',NULL,1,'2022-04-19 09:20:14','2022-04-19 09:20:14');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type_two`
--

DROP TABLE IF EXISTS `product_type_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type_two` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `cate_id` int(11) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `type_slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type_two`
--

LOCK TABLES `product_type_two` WRITE;
/*!40000 ALTER TABLE `product_type_two` DISABLE KEYS */;
INSERT INTO `product_type_two` VALUES (1,'[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y l\\u1ecdc n\\u01b0\\u1edbc Optimus l1\"}]','may-loc-nuoc-optimus-l1',NULL,4,'dieu-toc-dien-tu',17,'dieu-toc-mitsubishi',NULL,1,'2022-07-03 20:07:58','2022-07-03 20:07:58');
/*!40000 ALTER TABLE `product_type_two` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL COMMENT 'mã sp',
  `name` varchar(255) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `type_slug` varchar(255) DEFAULT NULL,
  `type_two_slug` varchar(255) DEFAULT NULL,
  `preserve` text COMMENT 'bảo quản',
  `ingredient` text COMMENT 'thành phần',
  `size` text COMMENT 'thông sô kỹ thuật',
  `slug` varchar(255) DEFAULT NULL,
  `price` bigint(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT ' % giảm giá',
  `images` text,
  `description` longtext,
  `content` longtext,
  `category` int(11) DEFAULT NULL,
  `type_cate` int(11) DEFAULT NULL,
  `type_two` int(11) DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `thickness` varchar(255) DEFAULT NULL,
  `hang_muc` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discountStatus` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"K Tear 10ml\\\"}]\"','nuoc-mat-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','k-tear-10ml',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1752189417.jpg\",\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-659029527.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<ul>\\n<li>K TEAR c&oacute; th\\u1ec3 \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong khi \\u0111eo k&iacute;nh &aacute;p tr&ograve;ng \\u0111\\u1ec3 gi\\u1ea3m kh&ocirc; m\\u1eaft v&agrave; \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng nh\\u01b0 dung d\\u1ecbch \\u0111\\u1ec7m k&iacute;nh &aacute;p tr&ograve;ng.<\\/li>\\n<li>K TEAR gi\\u1ea3m b\\u1edbt c\\u1ea3m gi&aacute;c kh&ocirc; m\\u1eaft sau ph\\u1eabu thu\\u1eadt \\u0111i\\u1ec1u tr\\u1ecb t\\u1eadt kh&uacute;c x\\u1ea1 v&agrave; ph\\u1eabu thu\\u1eadt \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3.<\\/li>\\n<\\/ul>\\n<p>&nbsp;<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<h3 style=\\\"text-align: justify;\\\">Th&agrave;nh ph\\u1ea7n:<\\/h3>\\n<p style=\\\"text-align: justify;\\\">Natri Hyaluronate l&agrave; m\\u1ed9t polyme c&oacute; ngu\\u1ed3n g\\u1ed1c t\\u1ef1 nhi&ecirc;n \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong y t\\u1ebf nh\\u1edd c&oacute; kh\\u1ea3 n\\u0103ng t\\u01b0\\u01a1ng th&iacute;ch sinh h\\u1ecdc.<\\/p>\\n<ul style=\\\"text-align: justify;\\\">\\n<li>Natri Hyaluronate t\\u1ea1o ra m\\u1ed9t m&agrave;ng b\\u1ea3o v\\u1ec7 gi&aacute;c m\\u1ea1c ch\\u1ed1ng l\\u1ea1i c&aacute;c t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i c&oacute; kh\\u1ea3 n\\u0103ng k\\u1ebft h\\u1ee3p c&aacute;c ph&acirc;n t\\u1eed n\\u01b0\\u1edbc l&agrave;m t\\u0103ng \\u0111\\u1ed9 \\u1ea9m v&agrave; b&ocirc;i tr\\u01a1n b\\u1ec1 m\\u1eb7t m\\u1eaft.<\\/li>\\n<li>Gi\\u1ea3m kh&ocirc; m\\u1eaft<\\/li>\\n<li>&nbsp;Trong qu&aacute; tr&igrave;nh \\u0111eo k&iacute;nh &aacute;p tr&ograve;ng Natri Hyaluronate lan ra b&ecirc;n d\\u01b0\\u1edbi k&iacute;nh t\\u1ea1o th&agrave;nh m\\u1ed9t \\\" l\\u1edbp \\u0111\\u1ec7m\\\" ng\\u0103n kh&ocirc;ng cho k&iacute;nh c\\u1ecd x&aacute;t v&agrave; k&iacute;ch \\u1ee9ng b\\u1ec1 m\\u1eb7t c\\u1ee7a m\\u1eaft.<\\/li>\\n<\\/ul>\\n<h4 style=\\\"text-align: justify;\\\">Hypromellose 0.2%<\\/h4>\\n<p style=\\\"text-align: justify;\\\">Hypromellose l&agrave; m\\u1ed9t lo\\u1ea1i polymer t\\u1ed5ng h\\u1ee3p t\\u1ea1o th&agrave;nh m\\u1ed9t l\\u1edbp m&agrave;ng tr&ecirc;n b\\u1ec1 m\\u1eb7t c\\u1ee7a m\\u1eaft . N&oacute; t\\u1ea1o ra m\\u1ed9t l\\u1edbp m&agrave;ng trong su\\u1ed1t, b&ocirc;i tr\\u01a1n v&agrave; l&agrave;m \\u1ea9m tr&ecirc;n b\\u1ec1 m\\u1eb7t c\\u1ee7a m\\u1eaft , gi&uacute;p gi\\u1ea3m kh&ocirc; m\\u1eaft do gi\\u1ea3m ti\\u1ebft n\\u01b0\\u1edbc m\\u1eaft ho\\u1eb7c c&aacute;c t&igrave;nh tr\\u1ea1ng ti\\u1ebft nh\\u1ea7y b\\u1ea5t th\\u01b0\\u1eddng c\\u1ee7a m\\u1eaft.<\\/p>\\n<p style=\\\"text-align: justify;\\\">Hypromellose c&ograve;n th&uacute;c \\u0111\\u1ea9y l&agrave;m \\u1ea9m gi&aacute;c m\\u1ea1c b\\u1eb1ng c&aacute;ch \\u1ed5n \\u0111\\u1ecbnh v&agrave; l&agrave;m d&agrave;y k&eacute;o d&agrave;i th\\u1eddi gian ph&acirc;n huy m&agrave;ng n\\u01b0\\u1edbc m\\u1eaft th\\u01b0\\u1eddng b\\u1ecb r&uacute;t ng\\u1eafn trong ch\\u1ee9ng kh&ocirc; m\\u1eaft.<\\/p>\\n<h3>C&ocirc;ng d\\u1ee5ng<\\/h3>\\n<p>Nh\\u1edd t&aacute;c d\\u1ee5ng k\\u1ebft h\\u1ee3p c\\u1ee7a&nbsp;Hypromellose v&agrave; Natri Hyaluronate.<\\/p>\\n<p>Dung d\\u1ecbch nh\\u1ecf m\\u1eaft K- TEAR g&oacute;p ph\\u1ea7n l&agrave;m gi\\u1ea3m \\u0111\\u1ecf m\\u1eaft , m\\u1ecfi m\\u1eaft v&agrave; k&iacute;ch \\u1ee9ng m\\u1eaft ho\\u1eb7c g&acirc;y ra b\\u1edfi:<\\/p>\\n<ul>\\n<li>C&aacute;c y&ecirc;u t\\u1ed1 m&ocirc;i tr\\u01b0\\u1eddng nh\\u01b0 gi&oacute;, kh&oacute;i v&agrave; &ocirc; nhi\\u1ec5m<\\/li>\\n<li>Ti\\u1ebfp x&uacute;c l&acirc;u v\\u1edbi &aacute;nh s&aacute;ng m\\u1eb7t tr\\u1eddi<\\/li>\\n<li>H\\u1ecdc t\\u1eadp , l&agrave;m vi\\u1ec7c , l&aacute;i xe hay s\\u1eed d\\u1ee5ng m&aacute;y t&iacute;nh keo d&agrave;i<\\/li>\\n<\\/ul>\\n<p style=\\\"text-align: justify;\\\">K- TEAR c&oacute; th\\u1ec3 s\\u1eed d\\u1ee5ng trong khi \\u0111oe k&iacute;nh &aacute;p tr&ograve;ng \\u0111\\u1ec3 gi\\u1ea3m kh&ocirc; m\\u1eaft v&agrave; kh&oacute; ch\\u1ecbu c&oacute; th\\u1ec3 li&ecirc;n quan \\u0111\\u1ebfn vi\\u1ec7c \\u0111eo k&iacute;nh &aacute;p tr&ograve;ng. K- TEAR c\\u0169ng c&oacute; th\\u1ec3 s\\u1eed d\\u1ee5ng nh\\u01b0 dung d\\u1ecbch \\u0111\\u1ec7m k&iacute;nh &aacute;p tr&ograve;ng b\\u1eb1ng c&aacute;ch nh\\u1ecf m\\u1ed9t gi\\u1ecdt K- TEAR&nbsp; v&agrave;o k&iacute;nh khi \\u0111\\u1eb7t n&oacute; v&agrave;o m\\u1eaft<\\/p>\\n<p style=\\\"text-align: justify;\\\">K- TEAR c\\u0169ng c&oacute; th\\u1ec3 l&agrave;m gi\\u1ea3m b\\u1edbt c\\u1ea3m gi&aacute;c kh&ocirc; m\\u1eaft sau ph\\u1eabu thu\\u1eadt \\u0111i\\u1ec1u tr\\u1ecb kh&uacute;c x\\u1ea1 v&agrave; ph\\u1eabu thu\\u1eadt \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3<\\/p>\\n<h3>C&aacute;ch d&ugrave;ng:<\\/h3>\\n<ul>\\n<li>R\\u1eeda s\\u1ea1ch tay tr\\u01b0\\u1edbc khi nh\\u1ecf m\\u1eaft<\\/li>\\n<li>Nh\\u1ecf 1-2 gi\\u1ecdt m\\u1ed7i m\\u1eaft 2-3 l\\u1ea7n m\\u1ed7i ng&agrave;y ho\\u1eb7c theo nhu c\\u1ea7u \\u0111\\u1ec3 ki\\u1ec3m so&aacute;t \\u0111\\u01b0\\u1ee3c t&igrave;nh tr\\u1ea1ng kh&ocirc; m\\u1eaft<\\/li>\\n<li>S\\u1eed d\\u1ee5ng c&aacute;ch &iacute;t nh\\u1ea5t 15 ph&uacute;t v\\u1edbi c&aacute;c s\\u1ea3n ph\\u1ea9m nh\\u1ecf m\\u1eaft kh&aacute;c<\\/li>\\n<li>D\\u1ea1ng t&eacute;p c&oacute; th\\u1ec3 t&aacute;i s\\u1eed d\\u1ee5ng trong v&ograve;ng 24h sau m\\u1edf n\\u1eafp . D\\u1ea1ng l\\u1ecd s\\u1eed d\\u1ee5ng trong 6 th&aacute;ng sau khi m\\u1edf l\\u1eafp.<\\/li>\\n<\\/ul>\\n<p><strong><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1868085295.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/strong><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',2,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 03:52:39','2023-02-07 08:57:26'),(8,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"K Tear Gel 10g\\\"}]\"','nuoc-mat-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','k-tear-gel-10g',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-156228600.jpg\",\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-605325391.png\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1402381484.jpg\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-323244661.png\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',2,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:04:03','2023-02-07 09:10:59'),(9,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"K Tear Unidose\\\"}]\"','nuoc-mat-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','k-tear-unidose',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1083209573.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<h3>TH&Agrave;NH PH\\u1ea6N:<\\/h3>\\n<p>Natri hyaluronat , hydroxypropyl methylcellulose, axit boric , natri tetraborat decahydrat , natri clorua . Kh&ocirc;ng ch\\u01b0a ch\\u1ea5t b\\u1ea3o qu\\u1ea3n ho\\u1eb7c ph\\u1ed1t ph&aacute;t<\\/p>\\n<p><strong>C&Ocirc;NG D\\u1ee4NG:<\\/strong><\\/p>\\n<p>K-TEAR UNIDOSE&nbsp; l&agrave; m\\u1ed9t dung d\\u1ecbch b&ocirc;i tr\\u01a1n v&agrave; gi\\u1eef \\u1ea9m l&acirc;u d&agrave;i v&ocirc; tr&ugrave;ng cho m\\u1eaft , c&oacute; \\u0111\\u1ed9 PH sinh l&yacute;, d\\u1ef1a tr&ecirc;n hypromellose v&agrave; natri hyaluronate . K- Tear l&agrave;m gi\\u1ea3m c&aacute;c tri\\u1ec7u ch\\u1ee9ng nh\\u01b0 kh&ocirc; m\\u1eaft, \\u0111\\u1ecf, r&aacute;t ng\\u1ee9a v&agrave; d\\u1ecb v\\u1eadt, gi&uacute;p ph\\u1ee5c h\\u1ed3i m&agrave;ng m\\u1eaft t\\u1ef1 nhi&ecirc;n , mang l\\u1ea1i hi\\u1ec7u qu\\u1ea3 d\\u01b0\\u1ee1ng \\u1ea9m v&agrave; b&ocirc;i tr\\u01a1n tr&ecirc;n b\\u1ec1 m\\u1eb7t nh&atilde;n c\\u1ea7u . Gi\\u1ea3i ph&aacute;p l&agrave;m gi\\u1ea3m t&igrave;nh tr\\u1ea1ng kh&ocirc; m\\u1eaft , bao g\\u1ed3m c\\u1ea3 nh\\u1eefng t&igrave;nh tr\\u1ea1ng s\\u1eed d\\u1ee5ng PC, ch\\u1edbp m\\u1eaft kh&ocirc;ng th\\u01b0\\u1eddng xuy&ecirc;n, m\\u1ed9t s\\u1ed1 ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb y t\\u1ebf, &ocirc; nhi\\u1ec5m kh&ocirc;ng kh&iacute;.<\\/p>\\n<h3>H\\u01af\\u1edaNG D\\u1eaaN S\\u1eec D\\u1ee4NG:<\\/h3>\\n<ul>\\n<li>R\\u1eeda tay th\\u1eadt s\\u1ea1ch<\\/li>\\n<li>M\\u1edf t&uacute;i nh&ocirc;m&nbsp;<\\/li>\\n<li>Th&aacute;o h\\u1ed9p ch\\u1ee9a li\\u1ec1u \\u0111\\u01a1n ra khoirdair v&agrave; m\\u1edf h\\u1ed9 ch\\u1ee9a ki\\u1ec1u \\u0111\\u01a1n b\\u1eb1ng c&aacute;ch xoay v&agrave;o sau \\u0111&oacute; nh\\u1ea5c n\\u1eafp \\u0111&oacute;ng ra<\\/li>\\n<li>Nh\\u1ecf 1\\/2 gi\\u1ecdt v&agrave;o m\\u1ed7i m\\u1eaft b\\u1eb1ng c&aacute;ch b&oacute;p nh\\u1eb9 li\\u1ec1u duy nh\\u1ea5t<\\/li>\\n<li>Sau khi s\\u1eed d\\u1ee5ng , \\u0111&oacute;ng ngay h\\u1ed9p ch\\u1ee9a li\\u1ec1u \\u0111\\u01a1n , n\\u1ed9i dung ph\\u1ea3i \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong v&ograve;ng 12 gi\\u1edd sau l\\u1ea7n m\\u1edf \\u0111\\u1ea7u ti&ecirc;n.<\\/li>\\n<\\/ul>\\n<p>&nbsp;<\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-980129823.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',2,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:07:30','2023-02-07 08:57:39'),(10,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Eyemed + H\\\\u1ed9p 30 vi\\\\u00ean v\\\\u00e0 60 vi\\\\u00ean\\\"}]\"','thuc-pham-bao-ve-suc-khoe','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','eyemed-hop-30-vien-va-60-vien',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1390977453.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1794122929.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1711694112.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1727582681.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',3,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:21:44','2023-02-07 08:57:47'),(11,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Siro K eye+\\\"}]\"','thuc-pham-bao-ve-suc-khoe','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','siro-k-eye',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-521268200.jpg\",\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1253268883.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 \\u0111\\u1ec3 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1168621810.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-2136360507.png\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-657942954.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',3,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:28:21','2023-02-07 08:57:53'),(12,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Taurine Eye+\\\"}]\"','thuc-pham-bao-ve-suc-khoe','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','taurine-eye',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1198623281.png\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-535014422.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1215371308.png\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',3,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:33:30','2023-02-07 08:58:07'),(13,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"\\\\u00c1o Font\\\"}]\"','qua-tang','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','ao-font',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1395204929.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-445022891.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',4,0,0,NULL,NULL,NULL,NULL,1,0,'2023-02-04 04:39:59','2023-02-08 01:41:24'),(14,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Kh\\\\u0103n Gi\\\\u1ea5y\\\"}]\"','qua-tang','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','khan-giay',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1838291779.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-379141703.jpg\\\" width=\\\"480\\\" height=\\\"270\\\" \\/><\\/p>\\n<p><strong>M\\u1eccI TH&Ocirc;NG TIN CHI TI\\u1ebeT V\\u1ec0 S\\u1ea2N PH\\u1ea8M VUI L&Ograve;NG LI&Ecirc;N H\\u1ec6:<\\/strong><\\/p>\\n<p><em><strong>&nbsp;C&Ocirc;NG TY TNHH TH\\u01af\\u01a0NG M\\u1ea0I KI\\u1ec0U KH&Aacute;NH MED<\\/strong><\\/em><\\/p>\\n<p><em><strong>\\u0110\\u1ecba ch\\u1ec9: S\\u1ed1 35, Ng&otilde; 1 , Ph\\u1ed1 Ng&ocirc; Th\\u1ecb Nh\\u1eadm , Ph\\u01b0\\u1eddng H&agrave; C\\u1ea7u , Qu\\u1eadn H&agrave; \\u0110&ocirc;ng , TP H&agrave; N\\u1ed9i<\\/strong><\\/em><br \\/><em><strong>Hotline&nbsp;: 0982.675.186<\\/strong><\\/em><em><strong>Email:&nbsp;<a href=\\\"https:\\/\\/mail.google.com\\/mail\\/?view=cm&amp;fs=1&amp;tf=1&amp;to=sale@kieukhanhmed.com\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">sale@kieukhanhmed.com<\\/a><\\/strong><\\/em><\\/p>\"}]',4,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:43:41','2023-02-07 08:58:34'),(15,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"S\\\\u1ed5 Kh\\\\u00e1m B\\\\u1ec7nh\\\"}]\"','qua-tang','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','so-kham-benh',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-138451855.png\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1009247290.jpg\\\" width=\\\"80%\\\" height=\\\"auto\\\" \\/><\\/p>\"}]',4,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:44:47','2023-02-07 08:58:54'),(16,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"T\\\\u00fai Gi\\\\u1ea5y\\\"}]\"','qua-tang','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','tui-giay',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1649930848.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p>Li&ecirc;n h\\u1ec7 t\\u01b0 v\\u1ea5n<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-1102358875.jpg\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><\\/p>\"}]',4,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-04 04:46:07','2023-02-08 01:31:42'),(17,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Eden 108M v\\\\u00e0 124 M\\\"}]\"','thuy-tinh-the-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','eden-108m-va-124-m',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-240562457.jpg\",\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-283439034.png\"]','[{\"lang_code\":\"vi\",\"content\":\"<p><span style=\\\"font-weight: 400;\\\">- Ph&acirc;n lo\\u1ea1i: IOL m\\u1ec1m,m\\u1ed9t m\\u1ea3nh, \\u0111a ti&ecirc;u c\\u1ef1 v\\u1edbi d\\u1ea3i ti&ecirc;u c\\u1ef1 li&ecirc;n t\\u1ee5c&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- D\\u1ea3i c&ocirc;ng su\\u1ea5t : t\\u1eeb +5.0D t\\u1edbi +30.0D ( b\\u01b0\\u1edbc chuy\\u1ec3n +0.5D)<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- \\u0110\\u01b0\\u1eddng k&iacute;nh ph\\u1ea7n quang h\\u1ecdc 6.0mm&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Thi\\u1ebft k\\u1ebf ph\\u1ea7n quang h\\u1ecdc: H\\u1ed7n h\\u1ee3p ( Hybrid), \\u0111a v&ugrave;ng (kh&uacute;c x\\u1ea1, nhi\\u1ec5u x\\u1ea1, phi c\\u1ea7u )<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Kh\\u1ea3 n\\u0103ng h\\u1ed7 tr\\u1ee3 nh&igrave;n g\\u1ea7n ( \\u0110\\u1ed9 Add\\/ \\u0111\\u1ed9 s&acirc;u tr\\u01b0\\u1eddng \\u1ea3nh ): +3.0D<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><strong>Th\\u1ee7y tinh th\\u1ec3 \\u0111a ti&ecirc;u c\\u1ef1 v\\u1edbi d\\u1ea3i ti&ecirc;u c\\u1ef1 li&ecirc;n t\\u1ee5c&nbsp;Eden 108M &amp;124M<\\/strong><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Ph&acirc;n lo\\u1ea1i: IOL m\\u1ec1m,m\\u1ed9t m\\u1ea3nh, \\u0111a ti&ecirc;u c\\u1ef1 v\\u1edbi d\\u1ea3i ti&ecirc;u c\\u1ef1 li&ecirc;n t\\u1ee5c&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- D\\u1ea3i c&ocirc;ng su\\u1ea5t : t\\u1eeb +5.0D t\\u1edbi +30.0D ( b\\u01b0\\u1edbc chuy\\u1ec3n +0.5D)<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- \\u0110\\u01b0\\u1eddng k&iacute;nh ph\\u1ea7n quang h\\u1ecdc 6.0mm&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Thi\\u1ebft k\\u1ebf ph\\u1ea7n quang h\\u1ecdc: H\\u1ed7n h\\u1ee3p ( Hybrid), \\u0111a v&ugrave;ng (kh&uacute;c x\\u1ea1, nhi\\u1ec5u x\\u1ea1, phi c\\u1ea7u )<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Kh\\u1ea3 n\\u0103ng h\\u1ed7 tr\\u1ee3 nh&igrave;n g\\u1ea7n ( \\u0110\\u1ed9 Add\\/ \\u0111\\u1ed9 s&acirc;u tr\\u01b0\\u1eddng \\u1ea3nh ): +3.0D<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Kh\\u1ea3 n\\u0103ng l\\u1ecdc tia c\\u1ef1c t&iacute;m: T\\u1ea1i b\\u01b0\\u1edbc s&oacute;ng 370nm<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">-Hi\\u1ec7u \\u1ee9ng ch\\u1eb7n 360 \\u0111\\u1ed9 li&ecirc;n t\\u1ee5c ph&ograve;ng ng\\u1eeba \\u0111\\u1ee5c bao sau&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Thi\\u1ebft k\\u1ebf c&agrave;ng: C&agrave;ng k&iacute;n kh&ocirc;ng g\\u1eadp g&oacute;c<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Ch\\u1ea5t li\\u1ec7u: Acrylic \\u01b0a n\\u01b0\\u1edbc ( ch\\u1ee9a 26% n\\u01b0\\u1edbc)<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- \\u0110&oacute;ng g&oacute;i: \\u0110&oacute;ng v\\u1ec9 plastic<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- K&iacute;ch th\\u01b0\\u1edbc v\\u1ebft m\\u1ed5 : T\\u1eeb 2.2 mm<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- H\\u1eb1ng s\\u1ed1&nbsp; A: &nbsp; 118.0<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">D\\u1ee5ng c\\u1ee5 k&egrave;m theo : S&uacute;ng b\\u01a1m IO<\\/span><\\/p>\\n<p><strong>K\\u1ebft lu\\u1eadn: *Th\\u1ee7y tinh th\\u1ec3 \\u0111a ti&ecirc;u c\\u1ef1 theo c&ocirc;ng ngh\\u1ec7 EDOF t\\u1ea1o ra d\\u1ea3i ti&ecirc;u c\\u1ef1 li&ecirc;n t\\u1ee5c xa, trung gian ,g\\u1ea7n.<\\/strong><\\/p>\\n<p>&nbsp;<\\/p>\"}]',1,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-07 02:47:55','2023-02-09 05:05:56'),(18,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Lucidis  Toric 108MT v\\\\u00e0  124MT\\\"}]\"','thuy-tinh-the-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','lucidis-toric-108mt-va-124mt',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1736429349.png\"]','[{\"lang_code\":\"vi\",\"content\":\"<p><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o (K&iacute;nh n\\u1ed9i nh&atilde;n) \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p trong qu&aacute; tr&igrave;nh ph\\u1eabu thu\\u1eadt \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3, sau khi th\\u1ee7y tinh th\\u1ec3 b\\u1ecb \\u0111\\u1ee5c (hay c&ograve;n g\\u1ecdi l&agrave; \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3) \\u0111&atilde; \\u0111\\u01b0\\u1ee3c lo\\u1ea1i b\\u1ecf. IOL thay th\\u1ebf th\\u1ea5u k&iacute;nh tinh th\\u1ec3 ban \\u0111\\u1ea7u v&agrave; cung c\\u1ea5p ch\\u1ee9c n\\u0103ng l\\u1ea5y n&eacute;t &aacute;nh s&aacute;ng do th\\u1ea5u k&iacute;nh tinh th\\u1ec3 \\u0111\\u1ea3m nhi\\u1ec7m.<\\/span><\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><strong>Nguy&ecirc;n t\\u1eafc ho\\u1ea1t \\u0111\\u1ed9ng<\\/strong><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o (K&iacute;nh n\\u1ed9i nh&atilde;n) \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p trong qu&aacute; tr&igrave;nh ph\\u1eabu thu\\u1eadt \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3, sau khi th\\u1ee7y tinh th\\u1ec3 b\\u1ecb \\u0111\\u1ee5c (hay c&ograve;n g\\u1ecdi l&agrave; \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3) \\u0111&atilde; \\u0111\\u01b0\\u1ee3c lo\\u1ea1i b\\u1ecf. IOL thay th\\u1ebf th\\u1ea5u k&iacute;nh tinh th\\u1ec3 ban \\u0111\\u1ea7u v&agrave; cung c\\u1ea5p ch\\u1ee9c n\\u0103ng l\\u1ea5y n&eacute;t &aacute;nh s&aacute;ng do th\\u1ea5u k&iacute;nh tinh th\\u1ec3 \\u0111\\u1ea3m nhi\\u1ec7m. lOL bao g\\u1ed3m m\\u1ed9t th\\u1ea5u k&iacute;nh polyme nh\\u1ecf v\\u1edbi c&aacute;c thanh \\u0111\\u1ee1 b&ecirc;n, \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; b\\u1ed9 ph\\u1eadn c\\u1ea3m \\u1ee9ng, \\u0111\\u1ec3 gi\\u1eef th\\u1ea5u k&iacute;nh \\u1edf v\\u1ecb tr&iacute; trong t&uacute;i bao b&ecirc;n trong m\\u1eaft. C\\u1ea3m \\u1ee9ng c\\u1ee7a th\\u1ea5u k&iacute;nh &ldquo;LUCIDIS&rdquo; \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; &ldquo;C\\u1ea3m \\u1ee9ng \\u0111a li&ecirc;n k\\u1ebft&rdquo;, \\u0111\\u01b0\\u1ee3c ph&aacute;t tri\\u1ec3n b\\u1edfi Gi&aacute;o s\\u01b0 A. Galand.<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">Lucidis Toric l&agrave; m\\u1ed9t th\\u1ea5u k&iacute;nh n\\u1ed9i nh&atilde;n m\\u1ed9t m\\u1ea3nh, linh ho\\u1ea1t \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p \\u1edf b\\u1ec7nh nh&acirc;n thay cho th\\u1ee7y tinh th\\u1ec3 hi\\u1ec7n c&oacute; \\u0111&atilde; b\\u1ecb che m\\u1edd do \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3, v&agrave; \\u1ea3nh h\\u01b0\\u1edfng c\\u1ee7a lo\\u1ea1n th\\u1ecb gi&aacute;c m\\u1ea1c. Th\\u1ea5u k&iacute;nh \\u0111\\u01b0\\u1ee3c ch&egrave;n v&agrave;o t&uacute;i nang b&ecirc;n trong m\\u1eaft b\\u1eb1ng th\\u1ee7 t\\u1ee5c ph\\u1eabu thu\\u1eadt sau khi l\\u1ea5y \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3. N&oacute; bao g\\u1ed3m m\\u1ed9t v&ugrave;ng quang hai m\\u1eb7t l\\u1ed3i \\u1edf gi\\u1eefa (m\\u1eaft) c&oacute; \\u0111\\u01b0\\u1eddng k&iacute;nh 6,0 mm, b\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc c&oacute; c\\u1ea5u tr&uacute;c phi c\\u1ea7u v&agrave; nhi\\u1ec5u x\\u1ea1, v&agrave; hai b\\u1ed9 ph\\u1eadn b&ecirc;n ngo&agrave;i (c&aacute;c haptic) \\u0111\\u1ec3 g\\u1eafn v&agrave;o t&uacute;i nang. Th\\u1ea5u k&iacute;nh c&oacute; \\u0111\\u01b0\\u1eddng k&iacute;nh ngo&agrave;i 10,8 mm v&agrave; 12,4 mm. C&aacute;c th\\u1ea5u k&iacute;nh Lucidis Toric c&oacute; s\\u1eb5n v\\u1edbi + 5,0 \\u0111\\u1ebfn +30,0 \\u0111i-\\u1ed1p v&agrave; c&ocirc;ng su\\u1ea5t xi lanh t\\u1eeb 1,0 \\u0111\\u1ebfn 4,5 diop. Th&ocirc;ng tin n&agrave;y \\u0111\\u01b0\\u1ee3c in tr&ecirc;n nh&atilde;n s\\u1ea3n ph\\u1ea9m.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">Th\\u1ea5u k&iacute;nh Lucidis Toric \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb v\\u1eadt li\\u1ec7u polyme \\u01b0a n\\u01b0\\u1edbc. The b\\u1ee9c x\\u1ea1 si&ecirc;u c\\u1ef1c polyme absords v\\u1edbi \\u0111\\u1ed9 truy\\u1ec1n nh\\u1ecf h\\u01a1n 10% \\u0111\\u1ed1i v\\u1edbi c\\u01b0\\u1eddng \\u0111\\u1ed9 s&oacute;ng d\\u01b0\\u1edbi 370 nm.<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/-663516306.jpg\\\" alt=\\\"\\\" width=\\\"80%\\\" height=\\\"AUTO\\\" \\/><br \\/><\\/span><strong>Ch\\u1ec9 \\u0111\\u1ecbnh<\\/strong><strong><br \\/><\\/strong><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o Lucidis Toric \\u0111\\u01b0\\u1ee3c k&ecirc; \\u0111\\u01a1n cho nh\\u1eefng b\\u1ec7nh nh&acirc;n b\\u1ecb \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 v&agrave; lo\\u1ea1n th\\u1ecb gi&aacute;c m\\u1ea1c t\\u1eeb tr\\u01b0\\u1edbc v&agrave; \\u0111ang c\\u1ea7n ph\\u1eabu thu\\u1eadt. C&ocirc;ng su\\u1ea5t b\\u1eaft bu\\u1ed9c ph\\u1ea3i n\\u1eb1m trong ph\\u1ea1m vi c\\u1ee7a \\u0111i-\\u1ed1p c&oacute; s\\u1eb5n trong s\\u1ea3n ph\\u1ea9m tr&ograve;ng k&iacute;nh Lucidis.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>Ch\\u1ed1ng ch\\u1ec9 \\u0111\\u1ecbnh<\\/strong><span style=\\\"font-weight: 400;\\\">:<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">Th\\u1ea5u k&iacute;nh &ldquo;Lucidis Toric&rdquo; ch\\u1ed1ng ch\\u1ec9 \\u0111\\u1ecbnh trong b\\u1ea5t k\\u1ef3 tr\\u01b0\\u1eddng h\\u1ee3p v&agrave;\\/ho\\u1eb7c \\u0111i\\u1ec1u ki\\u1ec7n n&agrave;o sau \\u0111&acirc;y:<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">Tr\\u01b0\\u1edbc khi c\\u1ea5y th\\u1ea5u k&iacute;nh \\\" Lucidis Toric \\\" v\\u1edbi b\\u1ea5t k\\u1ef3 \\u0111i\\u1ec1u ki\\u1ec7n n&agrave;o sau \\u0111&acirc;y, b&aacute;c s\\u0129 ph\\u1eabu thu\\u1eadt n&ecirc;n th\\u1ef1c hi\\u1ec7n \\u0111&aacute;nh gi&aacute; ti\\u1ec1n ph\\u1eabu thu\\u1eadt \\u0111\\u1ec3 xem x&eacute;t t\\u1ef7 l\\u1ec7 l\\u1ee3i &iacute;ch\\/r\\u1ee7i ro ti\\u1ec1m \\u1ea9n:<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">1. Tr\\u01b0\\u1eddng h\\u1ee3p ng\\u01b0\\u1eddi b\\u1ec7nh \\u0111&atilde; c&oacute; s\\u1eb5n c&aacute;c b\\u1ec7nh l&yacute;, t&igrave;nh tr\\u1ea1ng sinh l&yacute; c&oacute; th\\u1ec3 tr\\u1ea7m tr\\u1ecdng h\\u01a1n n\\u1ebfu c\\u1ea5y gh&eacute; th\\u1ee7y tinh th\\u1ec3,<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">ho\\u1eb7c tr\\u01b0\\u1eddng h\\u1ee3p th\\u1ee7y tinh th\\u1ec3 c\\u1ea3n tr\\u1edf kh\\u1ea3 n\\u0103ng kh&aacute;m, ch\\u1eefa b\\u1ec7nh.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> C&aacute;c b\\u1ec7nh c\\u1ea5p t&iacute;nh v\\u1ec1 m\\u1eaft ho\\u1eb7c nhi\\u1ec5m tr&ugrave;ng b&ecirc;n ngo&agrave;i ho\\u1eb7c b&ecirc;n trong<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> B\\u1ec7nh v&otilde;ng m\\u1ea1c \\u0111&aacute;i th&aacute;o \\u0111\\u01b0\\u1eddng t\\u0103ng sinh Fuchs<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Lo\\u1ea1n d\\u01b0\\u1ee1ng gi&aacute;c m\\u1ea1c nghi&ecirc;m tr\\u1ecdng<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> C\\u1eadn th\\u1ecb n\\u1eb7ng<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Vi&ecirc;m m&agrave;ng b\\u1ed3 \\u0111&agrave;o n\\u1eb7ng m&atilde;n t&iacute;nh ho\\u1eb7c t&aacute;i ph&aacute;t<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Teo th\\u1ea7n kinh th\\u1ecb gi&aacute;c nghi&ecirc;m tr\\u1ecdng<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> \\u0110\\u1ee5c th\\u1ee7y tinh th\\u1ec3 hai b&ecirc;n b\\u1ea9m sinh ho\\u1eb7c \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 kh&ocirc;ng li&ecirc;n quan \\u0111\\u1ebfn tu\\u1ed5i t&aacute;c<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> C\\u01b0\\u1eddm n\\u01b0\\u1edbc<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Xu\\u1ea5t huy\\u1ebft h\\u1eafc m\\u1ea1c<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Ch\\u1ee9ng m&ugrave; m&agrave;u<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Lo\\u1ea1n th\\u1ecb gi&aacute;c m\\u1ea1c kh&ocirc;ng \\u0111\\u1ec1u<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Bu\\u1ed3ng tr\\u01b0\\u1edbc m\\u1eaft c\\u1ef1c n&ocirc;ng<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> T\\u1eadt m\\u1eaft nh\\u1ecf nghi&ecirc;m tr\\u1ecdng<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> T\\u1eadt d\\u1ecb m\\u1ed1ng m\\u1eaft<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Bong v&otilde;ng m\\u1ea1c<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u2714<\\/span><span style=\\\"font-weight: 400;\\\"> Tho&aacute;i h&oacute;a \\u0111i\\u1ec3m v&agrave;ng<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><strong>T&iacute;nh to&aacute;n c&ocirc;ng su\\u1ea5t v&agrave; k&iacute;ch th\\u01b0\\u1edbc c\\u1ee7a th\\u1ea5u k&iacute;nh Lucidis Toric<\\/strong><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">Tr\\u01b0\\u1edbc khi ti\\u1ebfn h&agrave;nh ph\\u1eabu thu\\u1eadt \\u0111\\u1ec3 c\\u1ea5y gh&eacute;p th\\u1ea5u k&iacute;nh, ph\\u1ea3i x&aacute;c \\u0111\\u1ecbnh c&ocirc;ng su\\u1ea5t kh&uacute;c x\\u1ea1 \\u0111\\u01b0\\u1ee3c c\\u1ea5y. T&igrave;nh tr\\u1ea1ng m\\u1eaft b&igrave;nh th\\u01b0\\u1eddng kh&ocirc;ng nh\\u1ea5t thi\\u1ebft l&agrave; m\\u1ed9t m\\u1ee5c ti&ecirc;u mong mu\\u1ed1n sau ph\\u1eabu thu\\u1eadt, v&agrave; c&aacute;c y\\u1ebfu t\\u1ed1 nh\\u01b0 t&igrave;nh tr\\u1ea1ng th\\u1ecb gi&aacute;c c\\u1ee7a m\\u1eaft kh&aacute;c v&agrave; l\\u1ed1i s\\u1ed1ng c\\u1ee7a b\\u1ec7nh nh&acirc;n ph\\u1ea3i \\u0111\\u01b0\\u1ee3c xem x&eacute;t khi x&aacute;c \\u0111\\u1ecbnh c&ocirc;ng su\\u1ea5t th\\u1ea5u k&iacute;nh s\\u1ebd \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng. H\\u1eb1ng s\\u1ed1\\u0410 (SRK\\/T) \\u0111\\u01b0\\u1ee3c ghi r&otilde; tr&ecirc;n nh&atilde;n s\\u1ea3n ph\\u1ea9m.<\\/span><\\/p>\\n<p><strong>Qu\\u1ea3n l&yacute; v&agrave; h\\u01b0\\u1edbng d\\u1eabn s\\u1eed d\\u1ee5ng<\\/strong><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">Th\\u1ea5u k&iacute;nh ch\\u1ec9 \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p b\\u1edfi b&aacute;c s\\u0129 ph\\u1eabu thu\\u1eadt c&oacute; k\\u1ef9 n\\u0103ng c\\u1ea7n thi\\u1ebft cho k\\u1ef9 thu\\u1eadt ph\\u1eabu thu\\u1eadt n&agrave;y. Th\\u1ee7 thu\\u1eadt c\\u1ea5y<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">gh&eacute;p ti&ecirc;u chu\\u1ea9n c&oacute; th\\u1ec3 \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng. C&aacute;c h\\u01b0\\u1edbng d\\u1eabn chung v\\u1edbi vi\\u1ec7c s\\u1eed d\\u1ee5ng m\\u1ed9t d\\u1ee5ng c\\u1ee5 ti&ecirc;m \\u0111\\u01b0\\u1ee3c bao g\\u1ed3m<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">trong t&agrave;i li\\u1ec7u n&agrave;y \\u0111\\u1ec3 d&agrave;nh cho m\\u1ee5c \\u0111&iacute;ch th&ocirc;ng tin.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>1. <\\/strong><span style=\\\"font-weight: 400;\\\">L\\u1ea5y th\\u1ea5u k&iacute;nh ra kh\\u1ecfi bao b&igrave; b\\u1eb1ng m\\u1ed9t c&acirc;y k\\u1eb9p. Kh&ocirc;ng l\\u1ed9n ng\\u01b0\\u1ee3c th\\u1ea5u k&iacute;nh; b\\u1ec1 m\\u1eb7t c&oacute; th\\u1ec3 nh&igrave;n th\\u1ea5y khi m\\u1edf<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">bao x\\u1ed1p l&agrave; b\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>2. <\\/strong><span style=\\\"font-weight: 400;\\\">Ngay l\\u1eadp t\\u1ee9c \\u0111\\u1eb7t th\\u1ea5u k&iacute;nh \\u1edf gi\\u1eefa h\\u1ed9p ch\\u1ee9a, v\\u1edbi haptic g\\u1ea7n l&ograve;ng m&aacute;ng c\\u1ee7a h\\u1ed9p ch\\u1ee9a ch\\u0129a sang tr&aacute;i (b\\u1ec1 m\\u1eb7t<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">tr\\u01b0\\u1edbc c\\u1ee7a th\\u1ea5u k&iacute;nh h\\u01b0\\u1edbng l&ecirc;n tr&ecirc;n).<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>3. <\\/strong><span style=\\\"font-weight: 400;\\\">S\\u1eed d\\u1ee5ng k\\u1eb9p h\\u1edf, \\u0111\\u1ec3 ho&agrave;n to&agrave;n tr&aacute;nh ch\\u1ea1m v&agrave;o b\\u1ec1 m\\u1eb7t quang h\\u1ecdc c\\u1ee7a th\\u1ea5u k&iacute;nh. Nh\\u1eb9 nh&agrave;ng g\\u1ea5p hai c&aacute;nh c\\u1ee7a<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">h\\u1ed9p ch\\u1ee9a b\\u1eb1ng c&aacute;ch nh\\u1ea5n v&agrave;o c&aacute;c c\\u1ea1nh c\\u1ee7a b\\u1ec1 m\\u1eb7t quang h\\u1ecdc. Khi h\\u1ed9p ch\\u1ee9a g\\u1ea7n nh\\u01b0 \\u0111&oacute;ng k&iacute;n, k&eacute;o k\\u1eb9p ra, ch\\u1ec9<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">gi\\u1eef &aacute;p l\\u1ef1c nh\\u1eb9 \\u0111\\u1ec3 ng\\u0103n th\\u1ea5u k&iacute;nh kh\\u1ecfi di chuy\\u1ec3n. \\u0110\\u1ea3m b\\u1ea3o r\\u1eb1ng c&aacute;c haptic \\u0111&atilde; \\u0111\\u01b0\\u1ee3c g&agrave;i v&agrave;o h\\u1ed9p ch\\u1ee9a \\u0111&uacute;ng<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">c&aacute;ch. N\\u1ebfu c\\u1ea7n thi\\u1ebft, nh\\u1eb9 nh&agrave;ng \\u1ea5n ch&uacute;ng b\\u1eb1ng c&aacute;c m&aacute; k\\u1eb9p.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>4. <\\/strong><span style=\\\"font-weight: 400;\\\">Gi\\u1eef hai c&aacute;nh c\\u1ee7a h\\u1ed9p ch\\u1ee9a \\u0111&oacute;ng l\\u1ea1i.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>5. <\\/strong><span style=\\\"font-weight: 400;\\\">L\\u1eafp h\\u1ed9p ch\\u1ee9a v&agrave;o th&acirc;n d\\u1ee5ng c\\u1ee5 ti&ecirc;m. C\\u1ea9n th\\u1eadn di chuy\\u1ec3n pit t&ocirc;ng c\\u1ee7a d\\u1ee5ng c\\u1ee5 ti&ecirc;m v&agrave; nh\\u1eb9 nh&agrave;ng \\u0111\\u1ea9y th\\u1ea5u<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">k&iacute;nh t\\u1ea5t c\\u1ea3 c&aacute;c h\\u01b0\\u1edbng d\\u1ecdc theo l&ograve;ng m&aacute;ng. S\\u1ef1 \\u0111\\u1ecbnh h\\u01b0\\u1edbng c\\u1ee7a \\u0111\\u1ea7u d\\u1ee5ng c\\u1ee5 ti&ecirc;m v&agrave;o m\\u1eaft, l\\u1ef1c &aacute;p d\\u1ee5ng cho pitt&ocirc;ng v&agrave; t\\u1ed1c \\u0111\\u1ed9 ti&ecirc;m t\\u1ea5t c\\u1ea3 t&ugrave;y thu\\u1ed9c v&agrave;o b&aacute;c s\\u1ef9 ph\\u1eabu thu\\u1eadt.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u0110\\u1ec3 bi\\u1ebft h\\u01b0\\u1edbng d\\u1eabn n\\u1ea1p th\\u1ea5u k&iacute;nh v&agrave;o d\\u1ee5ng c\\u1ee5 ti&ecirc;m v&agrave; th\\u1ef1c hi\\u1ec7n, h&atilde;y tham kh\\u1ea3o t\\u1edd r\\u01a1i \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p k&egrave;m theo<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">d\\u1ee5ng c\\u1ee5 ti&ecirc;m. K&iacute;ch c\\u1ee1 d\\u1ee5ng c\\u1ee5 ti&ecirc;m \\u0111\\u01b0\\u1ee3c khuy&ecirc;n s\\u1eed d\\u1ee5ng l&agrave; <\\/span><span style=\\\"font-weight: 400;\\\">&ge;\\uf020<\\/span><span style=\\\"font-weight: 400;\\\">2,2 mm v\\u1edbi k&iacute;ch th\\u01b0\\u1edbc v\\u1ebft r\\u1ea1ch t\\u01b0\\u01a1ng \\u1ee9ng (c&aacute;c th\\u1eed<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">nghi\\u1ec7m \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ti\\u1ebfn h&agrave;nh v\\u1edbi h\\u1ec7 th\\u1ed1ng sinh th&aacute;i VISCOJECT&reg; 2.2 v&agrave; dung d\\u1ecbch METHYLVISC&reg;).<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">Ki\\u1ec3m tra ch\\u1eafc ch\\u1eafn r\\u1eb1ng h\\u01b0\\u1edbng c\\u1ee7a th\\u1ea5u k&iacute;nh Lucidis l&agrave; ch&iacute;nh x&aacute;c v&agrave; n&oacute; kh&ocirc;ng b\\u1ecb l\\u1ed9n ng\\u01b0\\u1ee3c. B\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc c\\u1ee7a<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">th\\u1ea5u k&iacute;nh ph\\u1ea3i h\\u01b0\\u1edbng v\\u1ec1 gi&aacute;c m\\u1ea1c (xem H&igrave;nh 2). T\\u1eeb th\\u1eddi \\u0111i\\u1ec3m n&agrave;y, c&oacute; th\\u1ec3 th\\u1ef1c hi\\u1ec7n ti\\u1ebfp t\\u1ee5c theo c&aacute;c quy tr&igrave;nh<\\/span><span style=\\\"font-weight: 400;\\\"> <\\/span><span style=\\\"font-weight: 400;\\\">ph\\u1eabu thu\\u1eadt ti&ecirc;u chu\\u1ea9n. Theo d&otilde;i b\\u1ec7nh nh&acirc;n sau ph\\u1eabu thu\\u1eadt c\\u0169ng c&oacute; th\\u1ec3 theo c&aacute;c quy tr&igrave;nh ph\\u1eabu thu\\u1eadt ti&ecirc;u chu\\u1ea9n.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>Th\\u1eadn tr\\u1ecdng<\\/strong><strong><br \\/><\\/strong><strong>1. <\\/strong><span style=\\\"font-weight: 400;\\\">Tr\\u01b0\\u1edbc khi c\\u1ea5y gh&eacute;p, h&atilde;y ki\\u1ec3m tra xem ki\\u1ec3u d&aacute;ng v&agrave; c&ocirc;ng su\\u1ea5t ghi tr&ecirc;n nh&atilde;n bao b&igrave; th\\u1ea5u k&iacute;nh c&oacute; ch&iacute;nh x&aacute;c hay<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">kh&ocirc;ng.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>2. <\\/strong><span style=\\\"font-weight: 400;\\\">Kh&ocirc;ng s\\u1eed d\\u1ee5ng th\\u1ea5u k&iacute;nh n\\u1ebfu bao b&igrave; b\\u1ecb h\\u1ecfng ho\\u1eb7c n\\u1ebfu \\u0111&atilde; qu&aacute; ng&agrave;y h\\u1ebft h\\u1ea1n. S\\u1ef1 v&ocirc; tr&ugrave;ng c\\u1ee7a s\\u1ea3n ph\\u1ea9m c&oacute; th\\u1ec3<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><span style=\\\"font-weight: 400;\\\">\\u0111&atilde; b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>3. <\\/strong><span style=\\\"font-weight: 400;\\\">X\\u1eed l&yacute; c&aacute;c th\\u1ea5u k&iacute;nh qua c&aacute;c haptic. Tr&aacute;nh t\\u1ea5t c\\u1ea3 c&aacute;c ti\\u1ebfp x&uacute;c v\\u1edbi c&aacute;c ph\\u1ea7n quang h\\u1ecdc.<\\/span><span style=\\\"font-weight: 400;\\\"><br \\/><\\/span><strong>4. <\\/strong><span style=\\\"font-weight: 400;\\\">SAV-IOL \\u0111\\u1ec1 ngh\\u1ecb ch\\u1ec9 n&ecirc;n s\\u1eed d\\u1ee5ng d\\u1ee5ng c\\u1ee5 ti&ecirc;m \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t \\u0111\\u1ec3 ch&egrave;n th\\u1ea5u k&iacute;nh n\\u1ed9i nh&atilde;n<\\/span><\\/p>\"}]',1,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-07 02:53:29','2023-02-09 04:41:25'),(19,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Eden Toric 108MT v\\\\u00e0 124MT\\\"}]\"','thuy-tinh-the-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','eden-toric-108mt-va-124mt',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1509204498.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p trong qu&aacute; tr&igrave;nh ph\\u1eabu thu\\u1eadt \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3, sau khi th\\u1ee7y tinh th\\u1ec3 b\\u1ecb \\u0111\\u1ee5c (hay c&ograve;n g\\u1ecdi l&agrave; \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3) \\u0111&atilde; \\u0111\\u01b0\\u1ee3c lo\\u1ea1i b\\u1ecf. IOL thay th\\u1ebf th\\u1ea5u k&iacute;nh tinh th\\u1ec3 ban \\u0111\\u1ea7u v&agrave; cung c\\u1ea5p ch\\u1ee9c n\\u0103ng<\\/span><\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p style=\\\"text-align: justify;\\\"><strong>Nguy&ecirc;n t\\u1eafc ho\\u1ea1t \\u0111\\u1ed9ng<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p trong qu&aacute; tr&igrave;nh ph\\u1eabu thu\\u1eadt \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3, sau khi th\\u1ee7y tinh th\\u1ec3 b\\u1ecb \\u0111\\u1ee5c (hay c&ograve;n g\\u1ecdi l&agrave; \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3) \\u0111&atilde; \\u0111\\u01b0\\u1ee3c lo\\u1ea1i b\\u1ecf. IOL thay th\\u1ebf th\\u1ea5u k&iacute;nh tinh th\\u1ec3 ban \\u0111\\u1ea7u v&agrave; cung c\\u1ea5p ch\\u1ee9c n\\u0103ng<\\/span><span style=\\\"font-weight: 400;\\\">l\\u1ea5y n&eacute;t &aacute;nh s&aacute;ng do th\\u1ea5u k&iacute;nh tinh th\\u1ec3 \\u0111\\u1ea3m nhi\\u1ec7m. lOL bao g\\u1ed3m m\\u1ed9t th\\u1ea5u k&iacute;nh polyme nh\\u1ecf v\\u1edbi c&aacute;c thanh \\u0111\\u1ee1 b&ecirc;n, \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; b\\u1ed9 ph\\u1eadn c\\u1ea3m \\u1ee9ng, \\u0111\\u1ec3 gi\\u1eef th\\u1ea5u k&iacute;nh \\u1edf v\\u1ecb tr&iacute; trong t&uacute;i bao b&ecirc;n trong m\\u1eaft. C\\u1ea3m \\u1ee9ng c\\u1ee7a th\\u1ea5u k&iacute;nh &ldquo;EDEN&rdquo; \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; &ldquo;C\\u1ea3m \\u1ee9ng \\u0111a li&ecirc;n k\\u1ebft&rdquo;, \\u0111\\u01b0\\u1ee3c ph&aacute;t tri\\u1ec3n b\\u1edfi Gi&aacute;o s\\u01b0 A. Galand.<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Eden Toric l&agrave; m\\u1ed9t th\\u1ea5u k&iacute;nh n\\u1ed9i nh&atilde;n m\\u1ed9t m\\u1ea3nh, linh ho\\u1ea1t \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p \\u1edf b\\u1ec7nh nh&acirc;n thay cho th\\u1ee7y tinh th\\u1ec3 hi\\u1ec7n c&oacute; \\u0111&atilde; b\\u1ecb che m\\u1edd do \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3, v&agrave; \\u1ea3nh h\\u01b0\\u1edfng c\\u1ee7a lo\\u1ea1n th\\u1ecb gi&aacute;c m\\u1ea1c. Th\\u1ea5u k&iacute;nh \\u0111\\u01b0\\u1ee3c ch&egrave;n v&agrave;o t&uacute;i nang b&ecirc;n trong m\\u1eaft b\\u1eb1ng th\\u1ee7 t\\u1ee5c ph\\u1eabu thu\\u1eadt sau khi l\\u1ea5y \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3. N&oacute; bao g\\u1ed3m m\\u1ed9t v&ugrave;ng quang hai m\\u1eb7t l\\u1ed3i \\u1edf gi\\u1eefa (m\\u1eaft) c&oacute; \\u0111\\u01b0\\u1eddng k&iacute;nh 6,0 mm, b\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc c&oacute; c\\u1ea5u tr&uacute;c phi c\\u1ea7u v&agrave; nhi\\u1ec5u x\\u1ea1, v&agrave; hai b\\u1ed9 ph\\u1eadn b&ecirc;n ngo&agrave;i (c&aacute;c haptic) \\u0111\\u1ec3 g\\u1eafn v&agrave;o t&uacute;i nang. Th\\u1ea5u k&iacute;nh c&oacute; \\u0111\\u01b0\\u1eddng k&iacute;nh ngo&agrave;i 10,8 mm v&agrave; 12,4 mm. C&aacute;c th\\u1ea5u k&iacute;nh EDEN<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">TORIC c&oacute; s\\u1eb5n v\\u1edbi + 5,0 \\u0111\\u1ebfn +30,0 \\u0111i-\\u1ed1p v&agrave; c&ocirc;ng su\\u1ea5t xi lanh t\\u1eeb 1,0 \\u0111\\u1ebfn 4,5 diop. Th&ocirc;ng tin n&agrave;y \\u0111\\u01b0\\u1ee3c in tr&ecirc;n nh&atilde;n s\\u1ea3n ph\\u1ea9m. Th\\u1ea5u k&iacute;nh Eden \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb v\\u1eadt li\\u1ec7u polyme \\u01b0a n\\u01b0\\u1edbc. The b\\u1ee9c x\\u1ea1 si&ecirc;u c\\u1ef1c polyme absords v\\u1edbi \\u0111\\u1ed9 truy\\u1ec1n nh\\u1ecf h\\u01a1n 10% \\u0111\\u1ed1i v\\u1edbi c\\u01b0\\u1eddng \\u0111\\u1ed9 s&oacute;ng d\\u01b0\\u1edbi 370 nm (xem h&igrave;nh 1)<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>Ch\\u1ec9 \\u0111\\u1ecbnh<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 nh&acirc;n t\\u1ea1o Enden Toric \\u0111\\u01b0\\u1ee3c k&ecirc; \\u0111\\u01a1n cho nh\\u1eefng b\\u1ec7nh nh&acirc;n b\\u1ecb \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 v&agrave; lo\\u1ea1n th\\u1ecb gi&aacute;c m\\u1ea1c t\\u1eeb tr\\u01b0\\u1edbc v&agrave; \\u0111ang c\\u1ea7n ph\\u1eabu thu\\u1eadt. C&ocirc;ng su\\u1ea5t b\\u1eaft bu\\u1ed9c ph\\u1ea3i n\\u1eb1m trong ph\\u1ea1m vi c\\u1ee7a \\u0111i-\\u1ed1p c&oacute; s\\u1eb5n trong s\\u1ea3n ph\\u1ea9m tr&ograve;ng k&iacute;nh Eden<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>Ch\\u1ed1ng ch\\u1ec9 \\u0111\\u1ecbnh:<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Th\\u1ea5u k&iacute;nh &ldquo;Enden Toric&rdquo; ch\\u1ed1ng ch\\u1ec9 \\u0111\\u1ecbnh trong b\\u1ea5t k\\u1ef3 tr\\u01b0\\u1eddng h\\u1ee3p v&agrave;\\/ho\\u1eb7c \\u0111i\\u1ec1u ki\\u1ec7n n&agrave;o sau \\u0111&acirc;y:<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Tr\\u01b0\\u1edbc khi c\\u1ea5y th\\u1ea5u k&iacute;nh \\\" Enden Toric\\\" v\\u1edbi b\\u1ea5t k\\u1ef3 \\u0111i\\u1ec1u ki\\u1ec7n n&agrave;o sau \\u0111&acirc;y, b&aacute;c s\\u0129 ph\\u1eabu thu\\u1eadt n&ecirc;n th\\u1ef1c hi\\u1ec7n \\u0111&aacute;nh gi&aacute;<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">ti\\u1ec1n ph\\u1eabu thu\\u1eadt \\u0111\\u1ec3 xem x&eacute;t t\\u1ef7 l\\u1ec7 l\\u1ee3i &iacute;ch\\/r\\u1ee7i ro ti\\u1ec1m \\u1ea9n:<\\/span><\\/p>\\n<ol style=\\\"text-align: justify;\\\">\\n<li><span style=\\\"font-weight: 400;\\\"> Tr\\u01b0\\u1eddng h\\u1ee3p ng\\u01b0\\u1eddi b\\u1ec7nh \\u0111&atilde; c&oacute; s\\u1eb5n c&aacute;c b\\u1ec7nh l&yacute;, t&igrave;nh tr\\u1ea1ng sinh l&yacute; c&oacute; th\\u1ec3 tr\\u1ea7m tr\\u1ecdng h\\u01a1n n\\u1ebfu c\\u1ea5y gh&eacute; th\\u1ee7y tinh th\\u1ec3,<\\/span><\\/li>\\n<\\/ol>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">ho\\u1eb7c tr\\u01b0\\u1eddng h\\u1ee3p th\\u1ee7y tinh th\\u1ec3 c\\u1ea3n tr\\u1edf kh\\u1ea3 n\\u0103ng kh&aacute;m, ch\\u1eefa b\\u1ec7nh.<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc C&aacute;c b\\u1ec7nh c\\u1ea5p t&iacute;nh v\\u1ec1 m\\u1eaft ho\\u1eb7c nhi\\u1ec5m tr&ugrave;ng b&ecirc;n ngo&agrave;i ho\\u1eb7c b&ecirc;n trong<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc B\\u1ec7nh v&otilde;ng m\\u1ea1c \\u0111&aacute;i th&aacute;o \\u0111\\u01b0\\u1eddng t\\u0103ng sinh Fuchs<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Lo\\u1ea1n d\\u01b0\\u1ee1ng gi&aacute;c m\\u1ea1c nghi&ecirc;m tr\\u1ecdng<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc C\\u1eadn th\\u1ecb n\\u1eb7ng<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Vi&ecirc;m m&agrave;ng b\\u1ed3 \\u0111&agrave;o n\\u1eb7ng m&atilde;n t&iacute;nh ho\\u1eb7c t&aacute;i ph&aacute;t<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Teo th\\u1ea7n kinh th\\u1ecb gi&aacute;c nghi&ecirc;m tr\\u1ecdng<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc \\u0110\\u1ee5c th\\u1ee7y tinh th\\u1ec3 hai b&ecirc;n b\\u1ea9m sinh ho\\u1eb7c \\u0111\\u1ee5c th\\u1ee7y tinh th\\u1ec3 kh&ocirc;ng li&ecirc;n quan \\u0111\\u1ebfn tu\\u1ed5i t&aacute;c<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc C\\u01b0\\u1eddm n\\u01b0\\u1edbc<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Xu\\u1ea5t huy\\u1ebft h\\u1eafc m\\u1ea1c<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Ch\\u1ee9ng m&ugrave; m&agrave;u<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Lo\\u1ea1n th\\u1ecb gi&aacute;c m\\u1ea1c kh&ocirc;ng \\u0111\\u1ec1u<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Bu\\u1ed3ng tr\\u01b0\\u1edbc m\\u1eaft c\\u1ef1c n&ocirc;ng<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc T\\u1eadt m\\u1eaft nh\\u1ecf nghi&ecirc;m tr\\u1ecdng<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc T\\u1eadt d\\u1ecb m\\u1ed1ng m\\u1eaft<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Bong v&otilde;ng m\\u1ea1c<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\uf0fc Tho&aacute;i h&oacute;a \\u0111i\\u1ec3m v&agrave;ng<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>T&iacute;nh to&aacute;n c&ocirc;ng su\\u1ea5t v&agrave; k&iacute;ch th\\u01b0\\u1edbc c\\u1ee7a th\\u1ea5u k&iacute;nh EDEN<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Tr\\u01b0\\u1edbc khi ti\\u1ebfn h&agrave;nh ph\\u1eabu thu\\u1eadt \\u0111\\u1ec3 c\\u1ea5y gh&eacute;p th\\u1ea5u k&iacute;nh, ph\\u1ea3i x&aacute;c \\u0111\\u1ecbnh c&ocirc;ng su\\u1ea5t kh&uacute;c x\\u1ea1 \\u0111\\u01b0\\u1ee3c c\\u1ea5y. T&igrave;nh tr\\u1ea1ng m\\u1eaft b&igrave;nh th\\u01b0\\u1eddng kh&ocirc;ng nh\\u1ea5t thi\\u1ebft l&agrave; m\\u1ed9t m\\u1ee5c ti&ecirc;u mong mu\\u1ed1n sau ph\\u1eabu thu\\u1eadt, v&agrave; c&aacute;c y\\u1ebfu t\\u1ed1 nh\\u01b0 t&igrave;nh tr\\u1ea1ng th\\u1ecb gi&aacute;c c\\u1ee7a m\\u1eaft kh&aacute;c v&agrave; l\\u1ed1i s\\u1ed1ng c\\u1ee7a b\\u1ec7nh nh&acirc;n ph\\u1ea3i \\u0111\\u01b0\\u1ee3c xem x&eacute;t khi x&aacute;c \\u0111\\u1ecbnh c&ocirc;ng su\\u1ea5t th\\u1ea5u k&iacute;nh s\\u1ebd \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng. H\\u1eb1ng s\\u1ed1 \\u0410 (SRK\\/T) \\u0111\\u01b0\\u1ee3c ghi r&otilde; tr&ecirc;n nh&atilde;n s\\u1ea3n ph\\u1ea9m.<\\/span><\\/p>\\n<p style=\\\"text-align: justify;\\\"><strong>Qu\\u1ea3n l&yacute; v&agrave; h\\u01b0\\u1edbng d\\u1eabn s\\u1eed d\\u1ee5ng<\\/strong><\\/p>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">Th\\u1ea5u k&iacute;nh ch\\u1ec9 \\u0111\\u01b0\\u1ee3c c\\u1ea5y gh&eacute;p b\\u1edfi b&aacute;c s\\u0129 ph\\u1eabu thu\\u1eadt c&oacute; k\\u1ef9 n\\u0103ng c\\u1ea7n thi\\u1ebft cho k\\u1ef9 thu\\u1eadt ph\\u1eabu thu\\u1eadt n&agrave;y. Th\\u1ee7 thu\\u1eadt c\\u1ea5y gh&eacute;p ti&ecirc;u chu\\u1ea9n c&oacute; th\\u1ec3 \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng. C&aacute;c h\\u01b0\\u1edbng d\\u1eabn chung v\\u1edbi vi\\u1ec7c s\\u1eed d\\u1ee5ng m\\u1ed9t d\\u1ee5ng c\\u1ee5 ti&ecirc;m \\u0111\\u01b0\\u1ee3c bao g\\u1ed3m trong t&agrave;i li\\u1ec7u n&agrave;y \\u0111\\u1ec3 d&agrave;nh cho m\\u1ee5c \\u0111&iacute;ch th&ocirc;ng tin.<\\/span><\\/p>\\n<ol style=\\\"text-align: justify;\\\">\\n<li><span style=\\\"font-weight: 400;\\\"> L\\u1ea5y th\\u1ea5u k&iacute;nh ra kh\\u1ecfi bao b&igrave; b\\u1eb1ng m\\u1ed9t c&acirc;y k\\u1eb9p. Kh&ocirc;ng l\\u1ed9n ng\\u01b0\\u1ee3c th\\u1ea5u k&iacute;nh; b\\u1ec1 m\\u1eb7t c&oacute; th\\u1ec3 nh&igrave;n th\\u1ea5y khi m\\u1edf bao x\\u1ed1p l&agrave; b\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc.<\\/span><\\/li>\\n<li><span style=\\\"font-weight: 400;\\\"> Ngay l\\u1eadp t\\u1ee9c \\u0111\\u1eb7t th\\u1ea5u k&iacute;nh \\u1edf gi\\u1eefa h\\u1ed9p ch\\u1ee9a, v\\u1edbi haptic g\\u1ea7n l&ograve;ng m&aacute;ng c\\u1ee7a h\\u1ed9p ch\\u1ee9a ch\\u0129a sang tr&aacute;i (b\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc c\\u1ee7a th\\u1ea5u k&iacute;nh h\\u01b0\\u1edbng l&ecirc;n tr&ecirc;n).<\\/span><\\/li>\\n<li><span style=\\\"font-weight: 400;\\\"> S\\u1eed d\\u1ee5ng k\\u1eb9p h\\u1edf, \\u0111\\u1ec3 ho&agrave;n to&agrave;n tr&aacute;nh ch\\u1ea1m v&agrave;o b\\u1ec1 m\\u1eb7t quang h\\u1ecdc c\\u1ee7a th\\u1ea5u k&iacute;nh. Nh\\u1eb9 nh&agrave;ng g\\u1ea5p hai c&aacute;nh c\\u1ee7a h\\u1ed9p ch\\u1ee9a b\\u1eb1ng c&aacute;ch nh\\u1ea5n v&agrave;o c&aacute;c c\\u1ea1nh c\\u1ee7a b\\u1ec1 m\\u1eb7t quang h\\u1ecdc. Khi h\\u1ed9p ch\\u1ee9a g\\u1ea7n nh\\u01b0 \\u0111&oacute;ng k&iacute;n, k&eacute;o k\\u1eb9p ra, ch\\u1ec9 gi\\u1eef &aacute;p l\\u1ef1c nh\\u1eb9 \\u0111\\u1ec3 ng\\u0103n th\\u1ea5u k&iacute;nh kh\\u1ecfi di chuy\\u1ec3n. \\u0110\\u1ea3m b\\u1ea3o r\\u1eb1ng c&aacute;c haptic \\u0111&atilde; \\u0111\\u01b0\\u1ee3c g&agrave;i v&agrave;o h\\u1ed9p ch\\u1ee9a \\u0111&uacute;ng c&aacute;ch. N\\u1ebfu c\\u1ea7n thi\\u1ebft, nh\\u1eb9 nh&agrave;ng \\u1ea5n ch&uacute;ng b\\u1eb1ng c&aacute;c m&aacute; k\\u1eb9p.<\\/span><\\/li>\\n<li><span style=\\\"font-weight: 400;\\\"> Gi\\u1eef hai c&aacute;nh c\\u1ee7a h\\u1ed9p ch\\u1ee9a \\u0111&oacute;ng l\\u1ea1i.<\\/span><\\/li>\\n<li><span style=\\\"font-weight: 400;\\\"> L\\u1eafp h\\u1ed9p ch\\u1ee9a v&agrave;o th&acirc;n d\\u1ee5ng c\\u1ee5 ti&ecirc;m. C\\u1ea9n th\\u1eadn di chuy\\u1ec3n pit t&ocirc;ng c\\u1ee7a d\\u1ee5ng c\\u1ee5 ti&ecirc;m v&agrave; nh\\u1eb9 nh&agrave;ng \\u0111\\u1ea9y th\\u1ea5u k&iacute;nh t\\u1ea5t c\\u1ea3 c&aacute;c h\\u01b0\\u1edbng d\\u1ecdc theo l&ograve;ng m&aacute;ng. S\\u1ef1 \\u0111\\u1ecbnh h\\u01b0\\u1edbng c\\u1ee7a \\u0111\\u1ea7u d\\u1ee5ng c\\u1ee5 ti&ecirc;m v&agrave;o m\\u1eaft, l\\u1ef1c &aacute;p d\\u1ee5ng cho pit t&ocirc;ng v&agrave; t\\u1ed1c \\u0111\\u1ed9 ti&ecirc;m t\\u1ea5t c\\u1ea3 t&ugrave;y thu\\u1ed9c v&agrave;o b&aacute;c s\\u1ef9 ph\\u1eabu thu\\u1eadt.<\\/span><\\/li>\\n<\\/ol>\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-weight: 400;\\\">\\u0110\\u1ec3 bi\\u1ebft h\\u01b0\\u1edbng d\\u1eabn n\\u1ea1p th\\u1ea5u k&iacute;nh v&agrave;o d\\u1ee5ng c\\u1ee5 ti&ecirc;m v&agrave; th\\u1ef1c hi\\u1ec7n, h&atilde;y tham kh\\u1ea3o t\\u1edd r\\u01a1i \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p k&egrave;m theo d\\u1ee5ng c\\u1ee5 ti&ecirc;m. K&iacute;ch c\\u1ee1 d\\u1ee5ng c\\u1ee5 ti&ecirc;m \\u0111\\u01b0\\u1ee3c khuy&ecirc;n s\\u1eed d\\u1ee5ng l&agrave; &ge; 2,2 mm v\\u1edbi k&iacute;ch th\\u01b0\\u1edbc v\\u1ebft r\\u1ea1ch t\\u01b0\\u01a1ng \\u1ee9ng (c&aacute;c th\\u1eed nghi\\u1ec7m \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ti\\u1ebfn h&agrave;nh v\\u1edbi h\\u1ec7 th\\u1ed1ng sinh th&aacute;i VISCOJECT&reg; 2.2 v&agrave; dung d\\u1ecbch METHYLVISC&reg;). Ki\\u1ec3m tra ch\\u1eafc ch\\u1eafn r\\u1eb1ng h\\u01b0\\u1edbng c\\u1ee7a th\\u1ea5u k&iacute;nh EDEN l&agrave; ch&iacute;nh x&aacute;c v&agrave; n&oacute; kh&ocirc;ng b\\u1ecb l\\u1ed9n ng\\u01b0\\u1ee3c. B\\u1ec1 m\\u1eb7t tr\\u01b0\\u1edbc c\\u1ee7a th\\u1ea5u k&iacute;nh ph\\u1ea3i h\\u01b0\\u1edbng v\\u1ec1 gi&aacute;c m\\u1ea1c (xem H&igrave;nh 2). T\\u1eeb th\\u1eddi \\u0111i\\u1ec3m n&agrave;y, c&oacute; th\\u1ec3 th\\u1ef1c hi\\u1ec7n ti\\u1ebfp t\\u1ee5c theo c&aacute;c quy tr&igrave;nh ph\\u1eabu thu\\u1eadt ti&ecirc;u chu\\u1ea9n. Theo d&otilde;i b\\u1ec7nh nh&acirc;n sau ph\\u1eabu thu\\u1eadt c\\u0169ng c&oacute; th\\u1ec3 theo c&aacute;c quy tr&igrave;nh ph\\u1eabu thu\\u1eadt ti&ecirc;u chu\\u1ea9n.<\\/span><\\/p>\"}]',1,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-07 02:56:37','2023-02-09 06:34:24'),(20,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"Lucidis 108M v\\\\u00e0 124M\\\"}]\"','thuy-tinh-the-nhan-tao','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','lucidis-108m-va-124m',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-1369097996.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p><span style=\\\"font-weight: 400;\\\">- Ph&acirc;n lo\\u1ea1i: IOL m\\u1ec1m,m\\u1ed9t m\\u1ea3nh, \\u0111\\u01a1n ti&ecirc;u m\\u1edf r\\u1ed9ng ti&ecirc;u c\\u1ef1&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- D\\u1ea3i c&ocirc;ng su\\u1ea5t : t\\u1eeb +5.0D t\\u1edbi +30.0D ( b\\u01b0\\u1edbc chuy\\u1ec3n +0.5D)<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- \\u0110\\u01b0\\u1eddng k&iacute;nh ph\\u1ea7n quang h\\u1ecdc 6.0mm&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Thi\\u1ebft k\\u1ebf ph\\u1ea7n quang h\\u1ecdc: \\u0110a v&ugrave;ng (kh&uacute;c x\\u1ea1, phi c\\u1ea7u )<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Kh\\u1ea3 n\\u0103ng h\\u1ed7 tr\\u1ee3 nh&igrave;n g\\u1ea7n (\\u0110\\u1ed9 Add\\/ \\u0111\\u1ed9 s&acirc;u tr\\u01b0\\u1eddng<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">&nbsp;&nbsp;&nbsp;&nbsp;\\u1ea3nh): +3.0D<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><span style=\\\"font-weight: 400;\\\">Th\\u1ee7y tinh th\\u1ec3 \\u0111\\u01a1n ti&ecirc;u m\\u1edf r\\u1ed9ng <\\/span><span style=\\\"font-weight: 400;\\\">Lucidis 108M &amp;124m<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Ph&acirc;n lo\\u1ea1i: IOL m\\u1ec1m,m\\u1ed9t m\\u1ea3nh, \\u0111\\u01a1n ti&ecirc;u m\\u1edf r\\u1ed9ng ti&ecirc;u c\\u1ef1&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- D\\u1ea3i c&ocirc;ng su\\u1ea5t : t\\u1eeb +5.0D t\\u1edbi +30.0D ( b\\u01b0\\u1edbc chuy\\u1ec3n +0.5D)<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- \\u0110\\u01b0\\u1eddng k&iacute;nh ph\\u1ea7n quang h\\u1ecdc 6.0mm&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Thi\\u1ebft k\\u1ebf ph\\u1ea7n quang h\\u1ecdc: \\u0110a v&ugrave;ng (kh&uacute;c x\\u1ea1, phi c\\u1ea7u )<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Kh\\u1ea3 n\\u0103ng h\\u1ed7 tr\\u1ee3 nh&igrave;n g\\u1ea7n (\\u0110\\u1ed9 Add\\/ \\u0111\\u1ed9 s&acirc;u tr\\u01b0\\u1eddng<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">&nbsp;&nbsp;&nbsp;&nbsp;\\u1ea3nh): +3.0D<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Kh\\u1ea3 n\\u0103ng l\\u1ecdc tia c\\u1ef1c t&iacute;m: T\\u1ea1i b\\u01b0\\u1edbc s&oacute;ng 370nm<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">-Hi\\u1ec7u \\u1ee9ng ch\\u1eb7n 360 \\u0111\\u1ed9 li&ecirc;n t\\u1ee5c ph&ograve;ng ng\\u1eeba \\u0111\\u1ee5c bao sau&nbsp;<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Thi\\u1ebft k\\u1ebf c&agrave;ng: C&agrave;ng k&iacute;n kh&ocirc;ng g\\u1eadp g&oacute;c<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- Ch\\u1ea5t li\\u1ec7u: Acrylic \\u01b0a n\\u01b0\\u1edbc ( ch\\u1ee9a 26% n\\u01b0\\u1edbc)<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- \\u0110&oacute;ng g&oacute;i: \\u0110&oacute;ng v\\u1ec9 plastic<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">- K&iacute;ch th\\u01b0\\u1edbc v\\u1ebft m\\u1ed5 : T\\u1eeb 2.2 mm<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">H\\u1eb1ng s\\u1ed1&nbsp; A: &nbsp; 118.5<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\">D\\u1ee5ng c\\u1ee5 k&egrave;m theo : S&uacute;ng b\\u01a1m IOL<\\/span><\\/p>\\n<p><span style=\\\"font-weight: 400;\\\"><strong>K\\u1ebft lu\\u1eadn<\\/strong>: <strong>*Th\\u1ee7y tinh th\\u1ec3 \\u0111\\u01a1n ti&ecirc;u c\\u1ef1 theo ngh\\u1ec7 EDOF h\\u1ed7 tr\\u1ee3 nh&igrave;n xa v&agrave; nh&igrave;n g\\u1ea7n t\\u1ed1t.<\\/strong><\\/span><\\/p>\\n<p>&nbsp;<\\/p>\"}]',1,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-07 03:00:17','2023-02-09 06:35:40'),(21,NULL,'\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"C\\\\u1ed1m b\\\\u1ed5 m\\\\u1eaft K Eye\\\"}]\"','thuc-pham-bao-ve-suc-khoe','','','[{\"detail\":null}]',NULL,'[{\"title\":null,\"detail\":null}]','com-bo-mat-k-eye',0,0,'[\"http:\\/\\/kieukhanhmed.com\\/uploads\\/images\\/san-pham-337567836.jpg\"]','[{\"lang_code\":\"vi\",\"content\":\"<p><strong>C&Aacute;CH D&Ugrave;NG:<\\/strong><\\/p>\\n<p>Tr\\u1ebb em t\\u1eeb 2-5 tu\\u1ed5i : n&agrave;y 1 g&oacute;i\\/ L\\u1ea7n x1-2 L\\u1ea7n\\/ ng&agrave;y<\\/p>\\n<p>Tr\\u1ebb em tr&ecirc;n 5 tu\\u1ed5i: ng&agrave;y 2 g&oacute;i\\/l\\u1ea7n x1-2 l\\u1ea7n \\/ ng&agrave;y<\\/p>\\n<p>Ho\\u1eb7c theo h\\u01b0\\u1edbng d\\u1eabn c\\u1ee7a c&aacute;c chuy&ecirc;n gia y t\\u1ebf . Khuy\\u1ebfn kh&iacute;ch s\\u1eed d\\u1ee5ng m\\u1ed9t n\\u0103m hai \\u0111\\u1ee3t m\\u1ed7i \\u0111\\u1ee3t t\\u1eeb 2- 3 th&aacute;ng li&ecirc;n t\\u1ee5c.<\\/p>\\n<p>&nbsp;<\\/p>\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p><strong>C&Aacute;CH D&Ugrave;NG:<\\/strong><\\/p>\\n<p>Tr\\u1ebb em t\\u1eeb 2-5 tu\\u1ed5i : n&agrave;y 1 g&oacute;i\\/ L\\u1ea7n x1-2 L\\u1ea7n\\/ ng&agrave;y<\\/p>\\n<p>Tr\\u1ebb em tr&ecirc;n 5 tu\\u1ed5i: ng&agrave;y 2 g&oacute;i\\/l\\u1ea7n x1-2 l\\u1ea7n \\/ ng&agrave;y<\\/p>\\n<p>Ho\\u1eb7c theo h\\u01b0\\u1edbng d\\u1eabn c\\u1ee7a c&aacute;c chuy&ecirc;n gia y t\\u1ebf . Khuy\\u1ebfn kh&iacute;ch s\\u1eed d\\u1ee5ng m\\u1ed9t n\\u0103m hai \\u0111\\u1ee3t m\\u1ed7i \\u0111\\u1ee3t t\\u1eeb 2- 3 th&aacute;ng li&ecirc;n t\\u1ee5c.<\\/p>\\n<p><strong>B\\u1ea2O QU\\u1ea2N:<\\/strong><\\/p>\\n<p>N\\u01a1i kh&ocirc; tho&aacute;ng , tr&aacute;nh &aacute;nh s&aacute;ng<\\/p>\\n<p>Th&ocirc;ng tin chi ti\\u1ebft xin \\u0111\\u1ecdc t\\u1edd h\\u01b0\\u1edbng d\\u1eabn s\\u1eed d\\u1ee5ng<\\/p>\"}]',3,0,0,NULL,NULL,NULL,NULL,1,1,'2023-02-07 03:22:40','2023-02-08 02:03:19');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (2,'SỮA THƠM NGON - GIA ĐÌNH LUÔN KHỎE','Bổ sung dưỡng chất bảo vệ gia đình ưu đãi đến 30%','https://jicafood.com/san-pham/17.html','/uploads/images/1713512302885632d513c8.jpg',1,'2021-08-24 09:18:56','2021-08-24 09:18:56'),(3,'BÁNH THƠM NGON - UỐNG ĐÃ KHÁT','Đồ uống Giảm đến 30%! Chỉ có tại VinMart - Nhanh tay bạn ơi!','https://jicafood.com/san-pham/16.html','/uploads/images/671398501885632d513c8.jpg',1,'2021-08-24 09:19:44','2021-08-24 09:19:44');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Hồ Chí Minh','SG'),(2,'Hà Nội','HN'),(3,'Đà Nẵng','DDN'),(4,'Bình Dương','BD'),(5,'Đồng Nai','DNA'),(6,'Khánh Hòa','KH'),(7,'Hải Phòng','HP'),(8,'Long An','LA'),(9,'Quảng Nam','QNA'),(10,'Bà Rịa Vũng Tàu','VT'),(11,'Đắk Lắk','DDL'),(12,'Cần Thơ','CT'),(13,'Bình Thuận  ','BTH'),(14,'Lâm Đồng','LDD'),(15,'Thừa Thiên Huế','TTH'),(16,'Kiên Giang','KG'),(17,'Bắc Ninh','BN'),(18,'Quảng Ninh','QNI'),(19,'Thanh Hóa','TH'),(20,'Nghệ An','NA'),(21,'Hải Dương','HD'),(22,'Gia Lai','GL'),(23,'Bình Phước','BP'),(24,'Hưng Yên','HY'),(25,'Bình Định','BDD'),(26,'Tiền Giang','TG'),(27,'Thái Bình','TB'),(28,'Bắc Giang','BG'),(29,'Hòa Bình','HB'),(30,'An Giang','AG'),(31,'Vĩnh Phúc','VP'),(32,'Tây Ninh','TNI'),(33,'Thái Nguyên','TN'),(34,'Lào Cai','LCA'),(35,'Nam Định','NDD'),(36,'Quảng Ngãi','QNG'),(37,'Bến Tre','BTR'),(38,'Đắk Nông','DNO'),(39,'Cà Mau','CM'),(40,'Vĩnh Long','VL'),(41,'Ninh Bình','NB'),(42,'Phú Thọ','PT'),(43,'Ninh Thuận','NT'),(44,'Phú Yên','PY'),(45,'Hà Nam','HNA'),(46,'Hà Tĩnh','HT'),(47,'Đồng Tháp','DDT'),(48,'Sóc Trăng','ST'),(49,'Kon Tum','KT'),(50,'Quảng Bình','QB'),(51,'Quảng Trị','QT'),(52,'Trà Vinh','TV'),(53,'Hậu Giang','HGI'),(54,'Sơn La','SL'),(55,'Bạc Liêu','BL'),(56,'Yên Bái','YB'),(57,'Tuyên Quang','TQ'),(58,'Điện Biên','DDB'),(59,'Lai Châu','LCH'),(60,'Lạng Sơn','LS'),(61,'Hà Giang','HG'),(62,'Bắc Kạn','BK'),(63,'Cao Bằng','CB');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewcus`
--

DROP TABLE IF EXISTS `reviewcus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewcus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewcus`
--

LOCK TABLES `reviewcus` WRITE;
/*!40000 ALTER TABLE `reviewcus` DISABLE KEYS */;
INSERT INTO `reviewcus` VALUES (1,'[{\"lang_code\":\"vi\",\"content\":\"A H\\u1ea3i - T\\u00e2y Ninh\"}]','[{\"lang_code\":\"vi\",\"content\":\"Kinh doanh\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p>&nbsp;T&ocirc;i r\\u1ea5t h&agrave;i l&ograve;ng v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111&aacute; Granite, Marble m&agrave; Eurostone \\u0111&atilde; cung c\\u1ea5p. D\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf, gia c&ocirc;ng, thi c&ocirc;ng \\u0111&aacute; chuy&ecirc;n nghi\\u1ec7p gi&uacute;p c&ocirc;ng tr&igrave;nh c\\u1ee7a t&ocirc;i \\u0111\\u1eb9p, sang tr\\u1ecdng v&agrave; nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u l\\u1eddi khen.&nbsp;<\\/p>\"}]',1,'/uploads/images/a-hai---tay-ninh-970059011.jpg','2022-04-18 07:58:53','2021-12-01 01:58:48'),(2,'[{\"lang_code\":\"vi\",\"content\":\"A Tu\\u1ea5n - H\\u00e0 N\\u1ed9i\"}]','[{\"lang_code\":\"vi\",\"content\":\"Doanh nh\\u00e2n\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p>&nbsp;Kim Thinh Ph&aacute;t l&agrave; c&aacute;i t&ecirc;n h&agrave;ng \\u0111\\u1ea7u m&agrave; t&ocirc;i \\u0111\\u01b0\\u1ee3c b\\u1ea1n b&egrave; gi\\u1edbi thi\\u1ec7u khi mu\\u1ed1n t&igrave;m \\u0111\\u1ecba ch\\u1ec9 thi c&ocirc;ng \\u0111&aacute; hoa c\\u01b0\\u01a1ng cho ng&ocirc;i nh&agrave; c\\u1ee7a m&igrave;nh. Ngo&agrave;i gi&aacute; c\\u1ea3 h\\u1ea5p d\\u1eabn th&igrave; ch\\u1ea5t l\\u01b0\\u1ee3ng, s\\u1ef1 chuy&ecirc;n nghi\\u1ec7p v&agrave; t&iacute;nh th\\u1ea9m m\\u1ef9 cao c\\u1ee7a c&ocirc;ng tr&igrave;nh l&agrave; \\u0111i\\u1ec1u khi\\u1ebfn t&ocirc;i r\\u1ea5t h&agrave;i l&ograve;ng.&nbsp;<\\/p>\"}]',1,'/uploads/images/a-tuan---ha-noi-1725497577.jpg','2022-04-18 07:58:48','2021-12-01 02:09:26'),(3,'[{\"lang_code\":\"vi\",\"content\":\"Ch\\u1ecb H\\u00e0 - H\\u00e0 N\\u1ed9i\"}]','[{\"lang_code\":\"vi\",\"content\":\"Doanh nh\\u00e2n\"}]','[{\"lang_code\":\"vi\",\"content\":\"<p>&nbsp;Ngo&agrave;i gi&aacute; c\\u1ea3 ph\\u1ea3i ch\\u0103ng th&igrave; ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111&aacute;, s\\u1ef1 chuy&ecirc;n nghi\\u1ec7p trong thi c&ocirc;ng v&agrave; ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng ch&iacute;nh l&agrave; \\u0111i\\u1ec1u m&agrave; t&ocirc;i r\\u1ea5t h&agrave;i l&ograve;ng v\\u1ec1 Eurostone. T\\u1ea5t c\\u1ea3 c&aacute;c h\\u1ea1ng m\\u1ee5c \\u1ed1p l&aacute;t \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n nhanh ch&oacute;ng, k\\u1ef9 thu\\u1eadt, th\\u1ea9m m\\u1ef9 cao.&nbsp;<\\/p>\"}]',1,'/uploads/images/chị-ha---ha-noi-1283701219.jpg','2022-04-18 07:58:40','2021-12-25 01:48:55');
/*!40000 ALTER TABLE `reviewcus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'developer','Front-end Developer','2019-12-15 17:00:00','2019-12-15 17:00:00'),(3,'manager','Assistant Manager','2019-12-15 17:00:00','2019-12-15 17:00:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `description` text,
  `slug` text,
  `status` tinyint(4) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `webname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `GA` varchar(255) DEFAULT NULL,
  `fbPixel` varchar(255) DEFAULT NULL,
  `iframe_map` text,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `popupimage` varchar(255) DEFAULT NULL,
  `statusPopup` int(11) DEFAULT NULL,
  `linkpopup` varchar(255) DEFAULT NULL,
  `footer_content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone3` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'CÔNG TY TNHH THƯƠNG MẠI KIỀU KHÁNH MED','Dịch Vụ sửa chữa máy tính, máy in tại nhà uy tín - chất lượng','Số 35, Ngõ 1 , Phố Ngô Thị Nhậm , Phường Hà Cầu , Quận Hà Đông , TP Hà Nội',NULL,'0982 675 186','0904 691 103','024.37767034','sale@kieukhanhmed.com',NULL,NULL,NULL,NULL,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.5864470620404!2d105.76666171424418!3d20.969116595189064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345327f56dfadf%3A0x1aba0bf72dd80e9b!2zTmfDtCBUaMOsIE5o4bqtbSwgSMOgIEPhuqd1LCBIw6AgxJDDtG5nLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1675479278183!5m2!1svi!2s\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','http://kieukhanhmed.com/uploads/images/favicon-155179169.png','http://kieukhanhmed.com/uploads/images/logo-1433393300.png','/uploads/images/popupimage-516078004.png',0,'https://maytinhanhung.vn/',NULL,NULL,'2023-02-09 06:57:46','0904 691 103');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admins','tuananhdinamo1122@gmail.com','2019-12-14 02:00:24','$2y$10$R1vBr035qVzMfoYb1GesquHA69LA8wforNwk2RKAwGEcMyKbiYtUa','KDcfN3Tv1RQbKZmHiHd8fqUA2uiIGUptrIIjgFg7csQaaz4FZBYbzQmjbpRY','2019-12-13 17:00:00','2019-12-13 17:00:00'),(3,'admins','tuananhdinamo112112@gmail.com','2019-12-14 02:00:24','$2y$10$R1vBr035qVzMfoYb1GesquHA69LA8wforNwk2RKAwGEcMyKbiYtUa','KDcfN3Tv1RQbKZmHiHd8fqUA2uiIGUptrIIjgFg7csQaaz4FZBYbzQmjbpRY','2019-12-13 17:00:00','2019-12-13 17:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissions` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permissions`
--

LOCK TABLES `users_permissions` WRITE;
/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
INSERT INTO `users_permissions` VALUES (1,1,1,'2019-12-14 17:00:00','2019-12-14 17:00:00');
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1,1,'2019-12-14 17:00:00','2019-12-14 17:00:00');
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Máy bắt vít dùng pin DCK KDPL02-14 (18V*2 4.0AH) -1 SẠC 2 PIN GIÁ RẺ GIẬT MÌNH','https://www.youtube.com/watch?v=toPr3HiBL5w','/uploads/images/video--1475978678.jpg',1,'2022-04-18 07:53:25','2022-04-18 07:53:25'),(2,'Top 3 mẫu máy khoan cầm tay mini DCK đáng mua nhất hiện nay','https://www.youtube.com/watch?v=GZ4sPKh1dTk&t=1s','/uploads/images/video--1587163020.jpg',1,'2022-04-18 07:53:25','2022-04-18 07:53:25'),(3,'Top 3 mẫu máy khoan cầm tay mini DCK đáng mua nhất hiện nay','https://www.youtube.com/watch?v=GZ4sPKh1dTk&t=1s','/uploads/images/video--1059811146.jpg',1,'2022-04-18 07:53:25','2022-04-18 07:53:25'),(4,'Top 3 mẫu máy khoan cầm tay mini DCK đáng mua nhất hiện nay','https://www.youtube.com/watch?v=GZ4sPKh1dTk&t=1s','/uploads/images/video--1415992113.jpg',1,'2022-04-18 07:53:25','2022-04-18 07:53:25');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-14  1:22:48
