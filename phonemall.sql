-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: phonemall
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `app_big_show`
--

DROP TABLE IF EXISTS `app_big_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_big_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_big_show`
--

LOCK TABLES `app_big_show` WRITE;
/*!40000 ALTER TABLE `app_big_show` DISABLE KEYS */;
INSERT INTO `app_big_show` VALUES (1,'POP 真无线蓝牙耳机',199,'https://openfile.meizu.com/group1/M00/05/11/Cgbj0Fsp-8yATCDFAASWKnb1fdQ339.png'),(2,'魅族 Flow Bass 三单元耳机',399,'https://openfile.meizu.com/group1/M00/02/EE/Cgbj0FpeqUqAYAbBAAJRQlEIMmc702.png'),(3,'魅族 Flow 三单元耳机',360,'https://openfile.meizu.com/group1/M00/01/BC/Cgbj0Vl22XGAC6YIAAGautlHsjo741.png'),(4,'魅蓝 EP52 蓝牙耳机',379,'https://openfile.meizu.com/group1/M00/02/69/Cgbj0Vn2f8mAcov7AAHUhmjUdk0958.png'),(5,'魅族 EP2X 耳机',89,'https://openfile.meizu.com/group1/M00/00/A2/Cix_s1gcVpeAOmoaAAGh-ubroNg891.png'),(6,'魅族 EP21耳机',379,'https://storeimg.meizu.com/product/1449643421-24522.png'),(7,'魅族 LIVE 四单元动铁耳机',630,'https://openfile.meizu.com/group1/M00/02/EF/Cgbj0FpeqaKAYLSmAATXqR4BPH8829.png'),(8,'魅族 Gravity 悬浮音响',229,'https://openfile.meizu.com/group1/M00/05/EA/Cgbj0FttMKWAPWDyAAFoG4YEzpI936.png');
/*!40000 ALTER TABLE `app_big_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_cart`
--

DROP TABLE IF EXISTS `app_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `is_sselect` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_cart_goods_id_995513ff_fk_app_goods_id` (`goods_id`),
  KEY `app_cart_user_id_2bf07879_fk_app_user_id` (`user_id`),
  CONSTRAINT `app_cart_goods_id_995513ff_fk_app_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `app_goods` (`id`),
  CONSTRAINT `app_cart_user_id_2bf07879_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cart`
--

LOCK TABLES `app_cart` WRITE;
/*!40000 ALTER TABLE `app_cart` DISABLE KEYS */;
INSERT INTO `app_cart` VALUES (2,1,1,1,1),(3,1,1,2,1);
/*!40000 ALTER TABLE `app_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_goods`
--

DROP TABLE IF EXISTS `app_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_goods`
--

LOCK TABLES `app_goods` WRITE;
/*!40000 ALTER TABLE `app_goods` DISABLE KEYS */;
INSERT INTO `app_goods` VALUES (1,'魅族 16th',2298,'//openfile.meizu.com/group1/M00/05/E2/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png@480x480.jpg','phones'),(2,'魅族 16th Plus',2698,'//openfile.meizu.com/group1/M00/05/E1/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png@480x480.jpg','phones'),(3,'魅族 Note9',1398,'//openfile.meizu.com/group1/M00/07/12/Cgbj0Vx_ZK6AaEObAAa1DJqn7us376.png@480x480.jpg','phones'),(4,'魅族 X8',1298,'//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSJyACGwcAAg0epdui5o951.png@480x480.jpg','phones'),(5,'魅族 16 X',1798,'//openfile.meizu.com/group1/M00/06/CC/Cgbj0VvINL-AGM20AAw4GirVtYA698.png@480x480.jpg','phones'),(6,'魅族 V8 高配版',898,'//openfile.meizu.com/group1/M00/06/AC/Cgbj0VujaMOAFzUFAARRWnHvM84529.png@480x480.jpg','phones'),(7,'魅族 Note8',999,'//openfile.meizu.com/group1/M00/06/C4/Cgbj0FvQPnmABVZHAAM7MXAlUiQ783.png@480x480.jpg','phones'),(8,'魅族 15 Plus',1798,'//openfile.meizu.com/group1/M00/04/1C/Cgbj0VrcbrCANJBMAAxI8Fi80MA520.png@480x480.jpg','phones'),(9,'魅族 15',1498,'//openfile.meizu.com/group1/M00/04/0B/Cgbj0FrcblSAGHrPAAvT_qZZSA0427.png@480x480.jpg','phones'),(10,'魅蓝 E3',1799,'//openfile.meizu.com/group1/M00/03/BC/Cgbj0Vq9-oeARs_XAALvUdl5qpo302.png@480x480.jpg','phones'),(11,'魅蓝 6T',799,'//openfile.meizu.com/group1/M00/04/8D/Cgbj0VsM-kuAGYZmAAm_NQr8nSk674.png@480x480.jpg','phones'),(12,'魅族 V8 标配版',799,'//openfile.meizu.com/group1/M00/06/99/Cgbj0FujMs-AZDb5AA14vDzyhPE669.png@480x480.jpg','phones'),(13,'魅族 M15',1398,'//openfile.meizu.com/group1/M00/04/18/Cgbj0VrcbgGACguHAAvWITdUav4636.png@480x480.jpg','phones'),(14,'魅蓝 Note6',899,'//openfile.meizu.com/group1/M00/02/03/Cgbj0VmtGa6AThj0AA1hVmco7-o197.png@480x480.jpg','phones'),(15,'魅族 16th Plus 声色套装',4598,'//openfile.meizu.com/group1/M00/07/06/Cgbj0VxiLxqAK9WvAA0kyISz4oI874.png@480x480.jpg','phones'),(16,'魅族 HALO 激光蓝牙耳机',499,'//openfile.meizu.com/group1/M00/04/17/Cgbj0VrcX6yABHxPAARZwWUAjc4748.png@480x480.jpg','headset'),(17,'POP 真无线蓝牙耳机',399,'//openfile.meizu.com/group1/M00/05/11/Cgbj0Fsp-8yATCDFAASWKnb1fdQ339.png@480x480.jpg','headset'),(18,'魅蓝 EP52 蓝牙耳机',229,'//openfile.meizu.com/group1/M00/01/D2/Cgbj0Fmb55mABV4HAAKspJD9ivQ842.png@480x480.jpg','headset'),(19,'魅族 EP52 Lite 蓝牙耳机',129,'//openfile.meizu.com/group1/M00/06/97/Cgbj0Fui_-SAO6IgAARPVTFhby0701.png@480x480.jpg','headset'),(20,'魅族 EP2X 耳机',69,'//openfile.meizu.com/group1/M00/00/A2/Cix_s1gcTHCANftiAAErzSizI8c299.png@480x480.jpg','headset'),(21,'魅族 EP51 蓝牙运动耳机',129,'//storeimg.meizu.com/product/1459849377-64075.png@480x480.jpg','headset'),(22,'魅族蓝牙音频接收器',89,'//openfile.meizu.com/group1/M00/06/70/Cgbj0FuZwuGADzVHAAG7wQGHkAM447.png@480x480.jpg','headset'),(23,'魅族 Gravity 悬浮音响',1099,'//openfile.meizu.com/group1/M00/05/EA/Cgbj0FttMKWAPWDyAAFoG4YEzpI936.png@480x480.jpg','headset'),(24,'魅族 HIFI 解码耳放',9999,'//openfile.meizu.com/group1/M00/07/0A/Cgbj0FytuH-AQ6JTAAEB9AmJ6Z0660.png@480x480.jpg','headset'),(25,'魅族 MC-5N 耳机升级线',399,'//openfile.meizu.com/group1/M00/03/C9/Cgbj0VrBl16Af2alAAWkq7hK2yI025.png@480x480.jpg','headset'),(26,'魅族 Flow Bass 三单元耳机',379,'//openfile.meizu.com/group1/M00/02/EE/Cgbj0FpeqUqAYAbBAAJRQlEIMmc702.png@480x480.jpg','headset'),(27,'魅族 LIVE 四单元动铁耳机',1099,'//openfile.meizu.com/group1/M00/02/EF/Cgbj0FpeqaKAYLSmAATXqR4BPH8829.png@480x480.jpg','headset'),(28,'魅族 Flow 三单元耳机',379,'//openfile.meizu.com/group1/M00/01/AE/Cgbj0Fl22W2AJpEcAAG7IoqPYcI904.png@480x480.jpg','headset'),(29,'魅族 EP21耳机',69,'//storeimg.meizu.com/product/1449643421-24522.png@480x480.jpg','headset'),(30,'ME20入耳式耳机',99,'//openfile.meizu.com/group1/M00/01/D5/Cgbj0VmRZCiAKwA3AADYrtiPJlQ156.png@480x480.jpg','headset'),(31,'魅族蓝牙小音箱',169,'//openfile.meizu.com/group1/M00/01/1D/Cix_s1ij7KeAdy0cAAbboUvsAC4250.png@480x480.jpg','headset'),(32,'魅族 EP-31 耳机',99,'//openfile.meizu.com/group1/M00/06/20/Cgbj0Ft-WkOAAhCKAAFqcNe6c3M482.png@480x480.jpg','headset'),(33,'魅族 X8 高透保护膜',19,'//openfile.meizu.com/group1/M00/06/DF/Cgbj0FwRr8uAZTsVAAhGUe23fjs268.png@480x480.jpg','parts'),(34,'魅族 16X 高透保护膜',19,'//openfile.meizu.com/group1/M00/06/DF/Cgbj0FwRr7qAE0YNAAmBMjuVfOU842.png@480x480.jpg','parts'),(35,'魅族移动电源3',79,'//openfile.meizu.com/group1/M00/06/BD/Cgbj0FvJjK6AAcw8AAPKzUsctEA769.png@480x480.jpg','parts'),(36,'魅族 16th Plus 亲肤保护壳',29,'//openfile.meizu.com/group1/M00/06/16/Cgbj0Ft7iV6AQANcAAL00J0tbyQ152.png@480x480.jpg','parts'),(37,'魅族 16th Plus 高透保护膜',19,'//openfile.meizu.com/group1/M00/06/DF/Cgbj0FwRr7qARwTRAAXzl3eAweE919.png@480x480.jpg','parts'),(38,'魅族 16th 高透保护膜',19,'//openfile.meizu.com/group1/M00/06/F9/Cgbj0VwkSZKATjTlAAajD8PGNhs208.png@480x480.jpg','parts'),(39,'魅族 Note9 壳膜套装',39,'//openfile.meizu.com/group1/M00/07/1C/Cgbj0Vyi-aOAT8yaAAW5mQNdc_c215.png@480x480.jpg','parts'),(40,'魅族 Note8 亲肤保护壳',29,'//openfile.meizu.com/group1/M00/06/E1/Cgbj0Vv8um2AVBoyAAdHMP5_gzM044.png@480x480.jpg','parts'),(41,'魅族 X8 亲肤保护壳',29,'//openfile.meizu.com/group1/M00/06/E1/Cgbj0Vv8upiAbtRBAAcE-otAJt8537.png@480x480.jpg','parts'),(42,'魅族 Note8 高透保护膜',19,'//openfile.meizu.com/group1/M00/06/EE/Cgbj0VwRr8KAC2JKAAl05Yq0esM119.png@480x480.jpg','parts'),(43,'魅族 Micro USB 数据线',29,'//storeimg.meizu.com/product/1458617159-29477.png@480x480.jpg','parts'),(44,'魅族 Type-C 金属数据线',39,'//openfile.meizu.com/group1/M00/00/1F/Cix_s1ef_G2AYNlYAAIxGo35tB4079.png@480x480.jpg','parts'),(45,'魅族 Micro USB 金属数据线',29,'//storeimg.meizu.com/product/1467363284-86213.png@480x480.jpg','parts'),(46,'魅族 V8 高配版高透保护膜',19,'//openfile.meizu.com/group1/M00/06/EE/Cgbj0VwRr8OAK0BlAApiHfXlhQA575.png@480x480.jpg','parts'),(47,'魅族 16X 亲肤保护壳',29,'//openfile.meizu.com/group1/M00/06/C4/Cgbj0Vu7BuOAOYWWAAfB94yQC34186.png@480x480.jpg','parts'),(48,'魅族无线充电器',99,'//openfile.meizu.com/group1/M00/04/15/Cgbj0VrcXw2AL0tBAApTh_xwKKk709.png@480x480.jpg','parts'),(49,'快充电源适配器（UP0830S）',89,'//storeimg.meizu.com/product/1467170145-52479.png@480x480.jpg','parts'),(50,'魅族 Mini 线控自拍杆',59,'//openfile.meizu.com/group1/M00/01/3A/CnQOjVjJ-m2AQ1LxAAE3Ze4d72s837.png@480x480.jpg','parts'),(51,'魅族蓝牙自拍杆',69,'//openfile.meizu.com/group1/M00/01/0B/Cix_s1iW3W2AQAzZAAJUz1tTYF4022.png@480x480.jpg','parts'),(52,'魅族 V8 标配版高透保护膜',19,'//openfile.meizu.com/group1/M00/06/DF/Cgbj0FwRr8OAG5T_AAjO-o9qvxg580.png@480x480.jpg','parts'),(53,'魅族 Type-C 2.0数据线',49,'//openfile.meizu.com/group1/M00/03/2F/Cgbj0FqYqxqAcZ-nAAGaLqkN71s729.png@480x480.jpg','parts'),(54,'魅族缤纷 Mini 自拍杆',49,'//openfile.meizu.com/group1/M00/01/81/Cgbj0FkmeZaAYy1oAAGW2D1yGJ8034.png@480x480.jpg','parts'),(55,'魅族熊猫磁吸出风口支架',49,'//openfile.meizu.com/group1/M00/01/0C/CnQOjViX1x-AdYHaAAKUWbEvTpo772.png@480x480.jpg','parts'),(56,'魅族 Micro USB 熊猫数据线',49,'//openfile.meizu.com/group1/M00/00/E4/CnQOjVhrElKAP2hjAAC-EVHlqVA415.jpg@480x480.jpg','parts'),(58,'魅蓝胸包',89,'//openfile.meizu.com/group1/M00/02/6D/Cgbj0Fn6yW6AAx4RAAVoxZkIpog184.png@480x480.jpg','life'),(59,'魅蓝数码收纳包',59,'//openfile.meizu.com/group1/M00/01/FB/Cgbj0Vmnd4mACpbbAAWpKisBvl4526.png@480x480.jpg','life'),(60,'魅蓝 休闲旅行双肩包',199,'//openfile.meizu.com/group1/M00/00/BE/Cix_s1g7l-yANQsqAAJSWz441uE109.jpg@480x480.jpg','life'),(61,'魅族路由器 极速版',99,'//storeimg.meizu.com/product/1465698264-58364.jpg@480x480.jpg','life'),(62,'魅族桌面多功能USB排插',89,'//openfile.meizu.com/group1/M00/01/07/CnQOjViEff2AGm-aAADs7Q-pP_M820.png@480x480.jpg','life'),(63,'魅族盒子 一键找回遥控器',199,'//openfile.meizu.com/group1/M00/00/9C/Cix_s1gYZWCAc1jqAAGoLQ8h81w741.png@480x480.jpg','life');
/*!40000 ALTER TABLE `app_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_recommend_phone`
--

DROP TABLE IF EXISTS `app_recommend_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_recommend_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_recommend_phone`
--

LOCK TABLES `app_recommend_phone` WRITE;
/*!40000 ALTER TABLE `app_recommend_phone` DISABLE KEYS */;
INSERT INTO `app_recommend_phone` VALUES (1,'魅族 16th',2298,'https://openfile.meizu.com/group1/M00/05/E2/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png'),(2,'魅族 16th Plus',2698,'https://openfile.meizu.com/group1/M00/05/F0/Cgbj0VtqgjeAV_ChAAfVjwwpNdw016.png'),(3,'魅族 Note9',1398,'https://openfile.meizu.com/group1/M00/07/12/Cgbj0Vx_ZK6AaEObAAa1DJqn7us376.png'),(4,'魅族 16 X',1798,'https://openfile.meizu.com/group1/M00/06/CC/Cgbj0VvINL-AGM20AAw4GirVtYA698.png'),(5,'魅族 X8',1298,'https://openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSK2AQZgiAAlFKHoO-co889.png'),(6,'魅族 V8 高配版',898,'https://openfile.meizu.com/group1/M00/06/AC/Cgbj0VujaMOAFzUFAARRWnHvM84529.png'),(7,'魅族 Note8',999,'https://openfile.meizu.com/group1/M00/06/D4/Cgbj0VvQPnuAAwPPAAMv8zzt2DE910.png'),(8,'魅族 15 Plus',1798,'https://openfile.meizu.com/group1/M00/04/1C/Cgbj0VrcbrCANJBMAAxI8Fi80MA520.png');
/*!40000 ALTER TABLE `app_recommend_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_recommend_show`
--

DROP TABLE IF EXISTS `app_recommend_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_recommend_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) NOT NULL,
  `sign` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_recommend_show`
--

LOCK TABLES `app_recommend_show` WRITE;
/*!40000 ALTER TABLE `app_recommend_show` DISABLE KEYS */;
INSERT INTO `app_recommend_show` VALUES (14,'https://fms.res.meizu.com/dms/2019/04/02/a41abe89-0504-41cc-a779-0834301cc43c.png','recommend_mall'),(15,'https://fms.res.meizu.com/dms/2019/04/12/6071ab57-361d-4a27-94a7-c8c1eaaa6776.jpg','recommend_mall'),(16,'https://fms.res.meizu.com/dms/2019/03/07/5fe50002-796a-45b7-9099-4f6286dedb8e.png','recommend_mall'),(17,'https://fms.res.meizu.com/dms/2019/03/25/cd5abc64-149e-4e46-875b-4a2358736e9f.png','recommend_mall'),(18,'https://fms.res.meizu.com/dms/2019/04/04/fcb7aeee-cbe6-43ee-bb0c-9c05b216385e.jpg','recommend_phone'),(19,'https://fms.res.meizu.com/dms/2019/04/04/bf934395-92a3-412a-9124-13dd13bd9635.png','recommend_phone'),(20,'https://fms.res.meizu.com/dms/2019/03/11/7a48cd78-23ad-45f1-8d93-b80619aa39b7.jpg','recommend_phone'),(21,'https://fms.res.meizu.com/dms/2018/12/20/df9a311b-4fdc-4678-9a40-da281796ea0a.jpg','big_show'),(22,'https://fms.res.meizu.com/dms/2018/12/29/c76d0c8b-4661-46d3-b823-fa2239378063.jpg','big_show');
/*!40000 ALTER TABLE `app_recommend_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'a123456','15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225','m13420129927@163.com','','22ded1f4-d907-4ebd-b14b-f0c6251d23b6',1);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add big_show',7,'add_big_show'),(20,'Can change big_show',7,'change_big_show'),(21,'Can delete big_show',7,'delete_big_show'),(22,'Can add goods',8,'add_goods'),(23,'Can change goods',8,'change_goods'),(24,'Can delete goods',8,'delete_goods'),(25,'Can add recommend_phone',9,'add_recommend_phone'),(26,'Can change recommend_phone',9,'change_recommend_phone'),(27,'Can delete recommend_phone',9,'delete_recommend_phone'),(28,'Can add recommend_show',10,'add_recommend_show'),(29,'Can change recommend_show',10,'change_recommend_show'),(30,'Can delete recommend_show',10,'delete_recommend_show'),(31,'Can add user',11,'add_user'),(32,'Can change user',11,'change_user'),(33,'Can delete user',11,'delete_user'),(34,'Can add cart',12,'add_cart'),(35,'Can change cart',12,'change_cart'),(36,'Can delete cart',12,'delete_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','big_show'),(12,'app','cart'),(8,'app','goods'),(9,'app','recommend_phone'),(10,'app','recommend_show'),(11,'app','user'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-19 04:09:13.097078'),(2,'auth','0001_initial','2019-04-19 04:09:23.013445'),(3,'admin','0001_initial','2019-04-19 04:09:25.509536'),(4,'admin','0002_logentry_remove_auto_add','2019-04-19 04:09:25.577582'),(5,'app','0001_initial','2019-04-19 04:09:27.361350'),(6,'contenttypes','0002_remove_content_type_name','2019-04-19 04:09:28.687467'),(7,'auth','0002_alter_permission_name_max_length','2019-04-19 04:09:29.672241'),(8,'auth','0003_alter_user_email_max_length','2019-04-19 04:09:30.539866'),(9,'auth','0004_alter_user_username_opts','2019-04-19 04:09:30.579883'),(10,'auth','0005_alter_user_last_login_null','2019-04-19 04:09:31.329418'),(11,'auth','0006_require_contenttypes_0002','2019-04-19 04:09:31.402468'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-19 04:09:31.479543'),(13,'auth','0008_alter_user_username_max_length','2019-04-19 04:09:32.423287'),(14,'sessions','0001_initial','2019-04-19 04:09:33.027813'),(15,'app','0002_cart','2019-04-19 13:50:19.431436');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('otldzp2obcn4zck2nlvpr3qfa9ahx925','MjgwNGZhZjZiYTkzZDVlYjkyM2MzZGViYjhjNzBkNzNiYzYyZGM1NTp7InVpZCI6MX0=','2019-05-03 17:26:37.632368');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-20 11:03:01
