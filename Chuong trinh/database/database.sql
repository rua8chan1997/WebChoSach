-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: chosachdb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_bosach`
--

DROP TABLE IF EXISTS `tbl_bosach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bosach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bosach`
--

LOCK TABLES `tbl_bosach` WRITE;
/*!40000 ALTER TABLE `tbl_bosach` DISABLE KEYS */;
INSERT INTO `tbl_bosach` VALUES (1,'Toán học','<p>Bộ sách bao gồm các cuốn sách toán học</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_bosach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chude`
--

DROP TABLE IF EXISTS `tbl_chude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_chude` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mota` longtext COLLATE utf8mb4_bin,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chude`
--

LOCK TABLES `tbl_chude` WRITE;
/*!40000 ALTER TABLE `tbl_chude` DISABLE KEYS */;
INSERT INTO `tbl_chude` VALUES (1,'Khoa học','<p>Các cuốn sách có chủ đề khoa học</p>',NULL,NULL,NULL,NULL,1),(2,'Tiếng việt','<p>Các cuốn sách có ngôn ngữ là tiếng việt</p>',NULL,NULL,NULL,NULL,0),(3,'Covid','<p>chủ đề về covid</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_chude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `message` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL,
  `request_type` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (1,'Ngô Ngọc Lực','Hương Lạc - Lạng Giang - Bắc Giang','rua8chan1997@gmail.com','https://www.facebook.com/rua8chan/','0387404002','abc',NULL,NULL,NULL,NULL,NULL,1),(2,'Ngô Ngọc Lực',NULL,'rua8chan1997@gmail.com',NULL,'0123456789','contect demo','contact',NULL,'2021-05-08 16:28:09',NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_follow`
--

DROP TABLE IF EXISTS `tbl_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_follow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_shop` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user_folow_idx` (`id_user`),
  KEY `fk_folow_shop_idx` (`id_shop`),
  CONSTRAINT `fk_folow_shop` FOREIGN KEY (`id_shop`) REFERENCES `tbl_shop` (`id`),
  CONSTRAINT `fk_user_folow` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_follow`
--

LOCK TABLES `tbl_follow` WRITE;
/*!40000 ALTER TABLE `tbl_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_images_sach`
--

DROP TABLE IF EXISTS `tbl_images_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_images_sach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `path` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `id_sach` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_img_sach_idx` (`id_sach`),
  CONSTRAINT `fk_img_sach` FOREIGN KEY (`id_sach`) REFERENCES `tbl_quanlisach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_images_sach`
--

LOCK TABLES `tbl_images_sach` WRITE;
/*!40000 ALTER TABLE `tbl_images_sach` DISABLE KEYS */;
INSERT INTO `tbl_images_sach` VALUES (4,'161812518_2925280667794009_9179368672789570741_n.jpg','/sach/images/161812518_2925280667794009_9179368672789570741_n.jpg',2,NULL,NULL,'2021-04-27 11:22:57',NULL,1),(11,'meocayket.png','/sach/images/meocayket.png',7,NULL,NULL,'2021-05-08 16:05:38',NULL,1),(12,'9780226792514.jpg','/sach/images/9780226792514.jpg',8,NULL,NULL,'2021-05-13 12:51:10',NULL,1);
/*!40000 ALTER TABLE `tbl_images_sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_loaibia`
--

DROP TABLE IF EXISTS `tbl_loaibia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loaibia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loaibia`
--

LOCK TABLES `tbl_loaibia` WRITE;
/*!40000 ALTER TABLE `tbl_loaibia` DISABLE KEYS */;
INSERT INTO `tbl_loaibia` VALUES (1,'Bìa Cứng','<p>Loại bìa có độ cứng cao</p>',NULL,NULL,NULL,NULL,1),(2,'Bìa mềm','<p>Loại bìa có độ cứng thấp</p>',NULL,NULL,NULL,NULL,1),(3,'Bìa dày','<p>Bìa có độ dày cao</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_loaibia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_loaisach`
--

DROP TABLE IF EXISTS `tbl_loaisach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_loaisach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `mota` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_loaisach`
--

LOCK TABLES `tbl_loaisach` WRITE;
/*!40000 ALTER TABLE `tbl_loaisach` DISABLE KEYS */;
INSERT INTO `tbl_loaisach` VALUES (1,'Sách văn học','/loaisach/avatar/vanhoc.jpg','<p>Loại sách văn học</p>',NULL,NULL,NULL,NULL,NULL,1),(2,'Sách toán học','/loaisach/avatar/toanhoc.jpg','<p>Những cuốn sách toán học</p>',NULL,NULL,NULL,NULL,NULL,1),(3,'Sách tiếng anh',NULL,'<p>Sách ngôn ngữ anh</p>',NULL,NULL,NULL,NULL,NULL,0),(4,'Sách thiếu nhi','/loaisach/avatar/iconthieunhi.jpg','<p>sách thiếu nhi</p>',NULL,NULL,NULL,NULL,NULL,1),(5,'Sách tiếng anh','/loaisach/avatar/unnamed.png','<p>Sách ngôn ngữ anh</p>',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_loaisach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ngonngu`
--

DROP TABLE IF EXISTS `tbl_ngonngu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ngonngu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ngonngu`
--

LOCK TABLES `tbl_ngonngu` WRITE;
/*!40000 ALTER TABLE `tbl_ngonngu` DISABLE KEYS */;
INSERT INTO `tbl_ngonngu` VALUES (1,'Tiếng việt','<p>Các cuốn sách ngôn ngữ bằng tiếng việt</p>',NULL,NULL,NULL,NULL,1),(2,'Tiếng anh','<p>Sách có ngôn ngữ tiếng anh</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_ngonngu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nxb`
--

DROP TABLE IF EXISTS `tbl_nxb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nxb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `mota` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nxb`
--

LOCK TABLES `tbl_nxb` WRITE;
/*!40000 ALTER TABLE `tbl_nxb` DISABLE KEYS */;
INSERT INTO `tbl_nxb` VALUES (1,'Kim Đồng','Hà Nội','<p>Nhà xuất bản Kim Đồng</p>',NULL,NULL,NULL,NULL,1),(2,'Tuổi trẻ','Hà Nội','<p>Nhà xuất bản Tuổi trẻ</p>',NULL,NULL,NULL,NULL,1),(3,'Tuổi trẻ','Hà Nội','<p>Nhà xuất bản Tuổi trẻ</p>',NULL,NULL,NULL,NULL,0),(4,'The University of Chicago Press','Chicago','<p>nhà xuất bản nước ngoài</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_nxb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `id_user` int NOT NULL,
  `customer_phone` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_address` int DEFAULT NULL,
  `diachigiaohang` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `total` decimal(13,2) NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user_order_idx` (`id_user`),
  CONSTRAINT `fk_user_order` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,'ORDER-1620193016100',3,'0387404002',3,'số nhà29',1000000.00,NULL,'2021-05-05 12:36:56',NULL,NULL,1),(2,'ORDER-1620193105619',3,'0387404002',3,'số nhà29',1000000.00,NULL,'2021-05-05 12:38:26',NULL,NULL,1),(3,'ORDER-1620535671766',3,'0387404002',NULL,'',2500000.00,NULL,'2021-05-09 11:47:52',NULL,NULL,1),(4,'ORDER-1620535674598',3,'0387404002',NULL,'',0.00,NULL,NULL,NULL,NULL,1),(5,'ORDER-1620536624992',3,'0387404002',NULL,'',500000.00,NULL,'2021-05-09 12:03:45',NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_detail`
--

DROP TABLE IF EXISTS `tbl_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_order` int NOT NULL,
  `id_sach` int NOT NULL,
  `gia` decimal(13,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_order_detail_idx` (`id_order`),
  KEY `fk_sach_detail_idx` (`id_sach`),
  CONSTRAINT `fk_order_detail` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`),
  CONSTRAINT `fk_sach_detail` FOREIGN KEY (`id_sach`) REFERENCES `tbl_quanlisach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_detail`
--

LOCK TABLES `tbl_order_detail` WRITE;
/*!40000 ALTER TABLE `tbl_order_detail` DISABLE KEYS */;
INSERT INTO `tbl_order_detail` VALUES (2,1,2,500000.00,1,0,NULL,'2021-05-05 12:36:56',NULL,NULL,1),(4,2,2,500000.00,1,0,NULL,'2021-05-05 12:38:26',NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quanlisach`
--

DROP TABLE IF EXISTS `tbl_quanlisach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_quanlisach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `sotrang` int NOT NULL,
  `avatar_path` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `mota` longtext COLLATE utf8mb4_bin NOT NULL,
  `soluong` int NOT NULL,
  `soluongban` int DEFAULT NULL,
  `gia` decimal(13,2) NOT NULL,
  `khuyenmai` int DEFAULT NULL,
  `shop_id` int NOT NULL,
  `tacgia_id` int DEFAULT NULL,
  `ngonngu_id` int DEFAULT NULL,
  `loaisach_id` int DEFAULT NULL,
  `loaibia_id` int DEFAULT NULL,
  `bosach_id` int DEFAULT NULL,
  `nxb_id` int DEFAULT NULL,
  `chude_id` int DEFAULT NULL,
  `sachcu_moi` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shop_sach_idx` (`shop_id`),
  KEY `fk_loai_sach_idx` (`loaisach_id`),
  KEY `fk_nxb_sach_idx` (`nxb_id`),
  KEY `fk_bia_sach_idx` (`loaibia_id`),
  KEY `fk_tacgia_sach_idx` (`tacgia_id`),
  KEY `fk_ngonngu_sach_idx` (`ngonngu_id`),
  KEY `fk_chude_sach_idx` (`chude_id`),
  KEY `fk_bosach_sach_idx` (`bosach_id`),
  CONSTRAINT `fk_bosach_sach` FOREIGN KEY (`bosach_id`) REFERENCES `tbl_bosach` (`id`),
  CONSTRAINT `fk_chude_sach` FOREIGN KEY (`chude_id`) REFERENCES `tbl_chude` (`id`),
  CONSTRAINT `fk_loaibia_sach` FOREIGN KEY (`loaibia_id`) REFERENCES `tbl_loaibia` (`id`),
  CONSTRAINT `fk_loaisach_sach` FOREIGN KEY (`loaisach_id`) REFERENCES `tbl_loaisach` (`id`),
  CONSTRAINT `fk_ngonngu_sach` FOREIGN KEY (`ngonngu_id`) REFERENCES `tbl_ngonngu` (`id`),
  CONSTRAINT `fk_nxb_sach` FOREIGN KEY (`nxb_id`) REFERENCES `tbl_nxb` (`id`),
  CONSTRAINT `fk_shop_sach` FOREIGN KEY (`shop_id`) REFERENCES `tbl_shop` (`id`),
  CONSTRAINT `fk_tacgia_sach` FOREIGN KEY (`tacgia_id`) REFERENCES `tbl_tacgia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quanlisach`
--

LOCK TABLES `tbl_quanlisach` WRITE;
/*!40000 ALTER TABLE `tbl_quanlisach` DISABLE KEYS */;
INSERT INTO `tbl_quanlisach` VALUES (2,'Giải Tích',5,NULL,'<p>Sách giải tích</p>',2,0,500000.00,30,1,1,1,2,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL),(7,'Sách store demo',12,'/sach/avatar/meoan.jpg','<p>Sách cho mèo ăn</p>',6,0,360000.00,35,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL),(8,'How To Make A Vaccine: An Essential Guide For COVID-19 And Beyond',160,'/sach/avatar/9780226792514.jpg','<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">How To Make A Vaccine: An Essential Guide For COVID-19 And Beyond</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\">Distinguished expert in vaccine development John Rhodes tells the story of the first approved COVID-19 vaccines and offers an essential, up-to-the-minute primer on how scientists discover, test, and distribute vaccines.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\">As the COVID-19 pandemic has affected every corner of the world, changing our relationship to our communities, to our jobs, and to each other, the most pressing question has been—when will it end? Researchers around the globe are urgently trying to answer this question by racing to test and distribute a vaccine that could end the greatest public health threat of our time.&nbsp; In&nbsp;<em style=\"margin: 0px; padding: 0px;\">How to Make a Vaccine,&nbsp;</em>an expert who has firsthand experience developing vaccines tells an optimistic story of how three hundred years of vaccine discovery and a century and a half of immunology research have come together at this powerful moment—and will lead to multiple COVID-19 vaccines.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\">Dr. John Rhodes draws on his experience as an immunologist, including working alongside a young Anthony Fauci, to unravel the mystery of how vaccines are designed, tested, and produced at scale for global deployment. Concise and accessible, this book describes in everyday language how the immune system evolved to combat infection, how viruses responded by evolving ways to evade our defenses, and how vaccines do their work. That history, and the pace of current research developments, make Rhodes hopeful that multiple vaccines will protect us. Today the complex workings of the immune system are well understood. The tools needed by biomedical scientists stand ready to be used, and more than 160 vaccine candidates have already been produced. But defeating COVID-19 won’t be the end of the story: Rhodes describes how discoveries today are also empowering scientists to combat future threats to global health, including a recent breakthrough in the development of genetic vaccines, which have never before been used in humans.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\">As the world prepares for a vaccine, Rhodes offers a current and informative look at the science and strategies that deliver solutions to the crisis.</p>',5,0,419000.00,15,1,2,2,3,2,1,4,3,NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tbl_quanlisach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES (1,'ADMIN','<p>Quản trị viên</p>',NULL,NULL,NULL,NULL,1),(2,'User','<p>Người dùng</p>',NULL,NULL,NULL,NULL,1),(3,'Shop','<p>Quản lí shop</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_shop`
--

DROP TABLE IF EXISTS `tbl_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_shop_idx` (`user_id`),
  CONSTRAINT `fk_user_shop` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_shop`
--

LOCK TABLES `tbl_shop` WRITE;
/*!40000 ALTER TABLE `tbl_shop` DISABLE KEYS */;
INSERT INTO `tbl_shop` VALUES (1,3,'Shop Demo','0387404002','Bắc Giang',NULL,NULL,NULL,NULL,1),(2,1,'abc','0369215642','Hà nội',NULL,NULL,NULL,NULL,0),(3,5,'Store Sách','0123456789','Kiên Giang',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tacgia`
--

DROP TABLE IF EXISTS `tbl_tacgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tacgia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tacgia`
--

LOCK TABLES `tbl_tacgia` WRITE;
/*!40000 ALTER TABLE `tbl_tacgia` DISABLE KEYS */;
INSERT INTO `tbl_tacgia` VALUES (1,'Ngô Ngọc Lực','<p>Tác giả demo</p><p><br></p>',NULL,NULL,NULL,NULL,1),(2,'John Rhodes','<p>tác giả John Rhodes</p>',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_tacgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timkiem`
--

DROP TABLE IF EXISTS `tbl_timkiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_timkiem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sach_id` int NOT NULL,
  `count` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_timkiem_sach_idx` (`sach_id`),
  CONSTRAINT `fk_timkiem_sach` FOREIGN KEY (`sach_id`) REFERENCES `tbl_quanlisach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timkiem`
--

LOCK TABLES `tbl_timkiem` WRITE;
/*!40000 ALTER TABLE `tbl_timkiem` DISABLE KEYS */;
INSERT INTO `tbl_timkiem` VALUES (4,2,35,NULL,NULL,'2021-05-04 10:12:15',NULL,1),(8,8,2,NULL,NULL,'2021-05-13 12:57:18',NULL,1);
/*!40000 ALTER TABLE `tbl_timkiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `username` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Ngô Ngọc Lực','rua8chan1997@gmail.com',NULL,'$2a$04$jRVLiR9kdOk2Ab5mIrqzQenPutQAgSyorGsTn0yuK4N8T505LfYBS','0387404002',NULL,NULL,NULL,NULL,1),(2,'Nguyễn Thị Kiều Anh','ngothao0709@gmail.com',NULL,'$2a$04$jRVLiR9kdOk2Ab5mIrqzQenPutQAgSyorGsTn0yuK4N8T505LfYBS','0123456789',NULL,NULL,NULL,NULL,1),(3,'Lực','rua8chan1997@gmail.com','rua8chan1997@gmail.com','$2a$04$jRVLiR9kdOk2Ab5mIrqzQenPutQAgSyorGsTn0yuK4N8T505LfYBS','0387404002',NULL,NULL,NULL,NULL,1),(5,'Nguyễn Thị Kiều Anh','ngothao0709@gmail.com','ngothao0709@gmail.com','$2a$04$hytqgosNqVIDunFj.KhogOvPWpAls8NfYxKPYA4J3UyFsl6MXameW','0387404002',NULL,NULL,'2021-05-06 13:19:21',NULL,1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_role`
--

DROP TABLE IF EXISTS `tbl_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_idx` (`role_id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_role`
--

LOCK TABLES `tbl_user_role` WRITE;
/*!40000 ALTER TABLE `tbl_user_role` DISABLE KEYS */;
INSERT INTO `tbl_user_role` VALUES (3,1),(3,2),(5,2),(3,3);
/*!40000 ALTER TABLE `tbl_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13 22:19:11
