-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: crm3
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `crm3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `crm3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `crm3`;

--
-- Table structure for table `customer_follow_up_history`
--

DROP TABLE IF EXISTS `customer_follow_up_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_follow_up_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `traceTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '璺熻繘鏃堕棿',
  `traceDetails` text COMMENT '璺熻繘鍐呭 璁″垝鐨勮缁嗗唴瀹?,
  `traceType` int DEFAULT NULL COMMENT '璺熻繘鏂瑰紡 璁″垝閲囩敤濡傜數璇濄€侀個绾︿笂闂ㄧ瓑  鏁版嵁瀛楀吀',
  `traceResult` int DEFAULT NULL COMMENT '璺熻繘鏁堟灉 浼?---3銆佷腑----2銆佸樊----1',
  `customerID` int DEFAULT NULL COMMENT '璺熻繘瀹㈡埛 缂栬緫鏃朵笉鍙紪杈?娼滃湪瀹㈡埛瀵硅薄/瀹㈡埛瀵硅薄',
  `inputUser` int DEFAULT NULL COMMENT '鍒涘缓浜?鑷姩濉叆褰撳墠鐧诲綍鐢ㄦ埛锛岀敤鎴蜂笉鍙洿鏀?鍛樺伐瀵硅薄',
  `type` int DEFAULT NULL COMMENT '璺熻繘绫诲瀷 0:娼滃湪寮€鍙戣鍒?1:瀹㈡埛璺熻繘鍘嗗彶',
  `comment` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_follow_up_history_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_follow_up_history`
--

LOCK TABLES `customer_follow_up_history` WRITE;
/*!40000 ALTER TABLE `customer_follow_up_history` DISABLE KEYS */;
INSERT INTO `customer_follow_up_history` VALUES (1,'2021-05-21 20:10:22','杩樹笉閿?,24,3,1,5,1,'闃胯开鏂彂鎵撳彂澹ぇ澶?),(2,'2021-05-21 21:05:46','123',24,2,1,2,0,'123123'),(3,'2021-05-21 21:06:46','杩樺彲浠?,24,3,7,3,0,'杩樹笉閿?),(4,'2021-05-21 21:07:40','123',24,2,9,4,0,'13123'),(5,'2021-05-22 01:24:50','杩樺彲浠?',24,2,1,5,0,'12313'),(6,'2021-05-01 08:00:17','123123',24,1,7,1,0,'鎷変簡鍝簡'),(7,'2021-05-22 01:30:00','1231',24,2,7,6,1,'123123'),(8,'2021-05-22 01:31:11','123132',24,2,2,1,0,'123123'),(9,'2021-05-22 01:32:16','1231',24,1,4,7,0,'1231132'),(10,'2021-05-22 01:33:54','123',24,1,8,9,0,'123123'),(11,'2021-05-21 17:34:20','string',0,0,0,7,0,'string'),(12,'2021-05-22 01:36:53','123123',24,1,8,6,1,'寰烽偊鐗╂祦娌熼€氫笉鍒?),(13,'2021-05-14 07:58:04','鍝斿摡鍝斿摡鍏浂鍏浂鍏?,25,3,8,2,1,'鍙彮鍙矐绮?),(14,'2021-05-08 12:52:18','234234',26,3,3,5,1,'214143'),(15,'2021-05-23 02:37:17','澶╁ぉ',25,2,1,1031,0,'澶╁ぉ'),(16,'2021-05-23 02:47:09','澶╁ぉ',24,2,8,1031,0,'UI'),(17,'2021-05-24 08:36:45','澶╁ぉ',24,1,3,1031,0,'25'),(18,'2021-05-24 08:32:58','鎯?,24,2,1,1093,0,'yt '),(19,'2021-05-26 06:44:25','rtyuiohjgoihj',24,1,7,5,0,'ghvhukjghvjkikhgj');
/*!40000 ALTER TABLE `customer_follow_up_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_handover`
--

DROP TABLE IF EXISTS `customer_handover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_handover` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerID` int DEFAULT NULL COMMENT '瀹㈡埛 瀹㈡埛瀵硅薄',
  `transUser` int DEFAULT NULL COMMENT '绉讳氦浜哄憳 瀹炶绉讳氦鎿嶄綔鐨勭鐞嗕汉鍛?,
  `transTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `oldSeller` int DEFAULT NULL COMMENT '鑰佸競鍦轰笓鍛?瀹㈡埛涓婄殑鍘熷甯傚満浜哄憳',
  `newSeller` int DEFAULT NULL COMMENT '鏂板競鍦轰笓鍛?鐢卞叕鍙搁噸鏂版寚娲惧悗鐨勬柊甯傚満浜哄憳',
  `transReason` varchar(255) DEFAULT NULL COMMENT '绉讳氦鍘熷洜',
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_handover_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_handover`
--

LOCK TABLES `customer_handover` WRITE;
/*!40000 ALTER TABLE `customer_handover` DISABLE KEYS */;
INSERT INTO `customer_handover` VALUES (1,7,2,'2021-05-22 08:25:53',2,2,'涓嬫斁浠诲姟'),(3,1,1,'2021-05-22 08:25:53',5,4,'123'),(4,1,1,'2021-05-22 08:25:53',3,2,'123'),(5,1,1,'2021-05-22 08:25:53',4,4,'123'),(6,1,1,'2021-05-22 08:25:53',7,1,'123'),(7,1,1,'2021-05-22 08:25:53',9,3,'123'),(8,1,1,'2021-05-22 08:25:53',6,3,'23423424'),(9,1,1,'2021-05-21 11:06:38',3,4,'123'),(10,1,1031,'2021-05-23 02:38:04',4,7,'澶╁ぉ澶╁ぉ'),(11,1,1031,'2021-05-23 02:38:14',7,3,'浜哄憳浜哄憳'),(12,8,1031,'2021-05-23 02:41:29',7,7,'璁╀粬'),(13,12,1031,'2021-05-23 02:43:15',2,7,'浣撻獙'),(14,6,5,'2021-05-23 02:44:34',6,9,'闃挎柉钂傝姮'),(15,15,1031,'2021-05-23 02:46:45',1031,7,'涓€澶?),(16,3,1,'2021-05-23 12:10:18',3,8,'浠诲姟'),(17,1,1093,'2021-05-24 08:24:05',3,5,'浣撻獙銆傘€傘€傘€傘€傘€傘€傘€?),(18,7,5,'2021-05-26 06:45:17',2,2,'uyiuyy78686');
/*!40000 ALTER TABLE `customer_handover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_manager`
--

DROP TABLE IF EXISTS `customer_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_manager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '瀹㈡埛濮撳悕',
  `age` int NOT NULL COMMENT '瀹㈡埛骞撮緞',
  `gender` int NOT NULL COMMENT '瀹㈡埛鎬у埆 椤甸潰涓轰笅鎷夋 1鐢?0濂?,
  `tel` varchar(255) NOT NULL COMMENT '鐢佃瘽鍙风爜',
  `qq` varchar(255) DEFAULT NULL,
  `job` int NOT NULL,
  `source` int NOT NULL COMMENT '瀹㈡埛鏉ユ簮',
  `seller` int DEFAULT NULL COMMENT '璐熻矗浜?濉啓涓哄綋鍓嶇櫥褰曠敤鎴?,
  `inputUser` int NOT NULL COMMENT ' 鍒涘缓浜?濉啓涓哄綋鍓嶇櫥褰曠敤鎴?,
  `inputTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0' COMMENT '-2:娴佸け -1:寮€鍙戝け璐?0:娼滃湪瀹㈡埛 1:姝ｅ紡瀹㈡埛 2:璧勬簮姹犲鎴?,
  `positiveTime` datetime DEFAULT NULL COMMENT '杞鏃堕棿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_manager_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_manager`
--

LOCK TABLES `customer_manager` WRITE;
/*!40000 ALTER TABLE `customer_manager` DISABLE KEYS */;
INSERT INTO `customer_manager` VALUES (1,'浣曚负',22,1,'18888883123','100001',3,17,1,1,'2021-05-24 08:25:40',1,'2021-05-20 19:31:02'),(2,'椹寲鑵?,33,1,'18888888888','100002',3,17,2,2,'2019-05-22 08:26:27',2,'2021-05-20 19:31:02'),(3,'寮犱簯',21,1,'18888888888','100001',3,17,3,3,'2021-05-23 03:07:02',1,'2021-05-20 19:31:02'),(4,'鏉冨織榫?,18,1,'18888888888','100001',3,17,5,5,'2021-04-22 08:26:27',2,'2021-05-20 19:31:02'),(5,'椹拪',23,1,'16666666666','100001',3,17,4,4,'2021-05-23 12:16:30',1,'2021-05-20 19:31:02'),(6,'鍚堢悊鍚?馃巸',18,0,'18888888888','100001',3,17,6,6,'2021-05-21 03:56:13',-2,'2021-05-20 19:31:02'),(7,'閰掟煣т粰',18,1,'17777777777','100001',3,17,5,5,'2021-05-25 02:52:05',0,'2021-05-20 19:31:02'),(8,'璧?,21,1,'18888888888','100001',3,17,7,7,'2021-05-24 08:07:31',-1,'2021-05-20 19:31:02'),(9,'浼婃辰',45,0,'1999999999','100001',3,17,8,8,'2021-05-23 08:26:27',2,'2021-05-20 19:31:02'),(10,'闃挎柉椤?,18,1,'18888888888','100001',3,17,9,9,'2021-05-22 08:26:27',-1,'2021-05-20 19:31:02'),(11,'寤栧槈绉?,54,0,'18888888888','100001',3,17,3,3,'2021-05-22 08:26:27',-2,'2021-05-20 19:31:02'),(12,'閮檵瀹?,18,1,'18888888888','100001',3,17,2,2,'2021-05-22 08:26:27',2,'2021-05-20 19:31:02'),(13,'鍩冮噷鍏嬫．',18,1,'13333333333','100002',3,17,2,2,'2021-05-22 08:26:27',2,'2021-05-20 19:31:02'),(14,'寮狆煑＄敺',22,1,'123123123','123123',28,18,2,5,'2021-05-23 10:41:48',0,NULL),(15,'寮犲崕姊?,12,1,'23444','2123',28,20,1,1031,'2021-05-23 10:43:50',1,NULL),(16,'鏋楅槼闇?,22,0,'1234567','12345678',5,21,2,1032,'2021-05-23 10:41:48',0,NULL),(17,'璐?,21,1,'23444','6532',27,18,1,1031,'2021-05-23 10:41:48',0,NULL),(18,'鑳?2',123,1,'123','123',28,20,1,1,'2021-05-23 10:42:53',0,NULL),(19,'宀抽緳鍒?,200,0,'13215486477','1254866',28,21,1097,1097,'2021-05-24 08:29:29',0,NULL),(20,'闆峰竷鏂?,50,1,'13456789012','12345678',70,19,1096,1096,'2021-05-24 08:47:28',0,NULL),(21,'閰掟煣т粰2',56,1,'17623456789','1245789',27,17,1101,1101,'2021-05-26 06:49:21',0,NULL);
/*!40000 ALTER TABLE `customer_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (2,'All Department Manager','鎬荤粡鍔?),(3,'Human Resources Department','浜哄姏璧勬簮閮?),(5,'Order Department','閲囪喘閮?),(6,'Warehousing Department','浠撳偍閮?),(7,'Finance Department','璐㈠姟閮?),(11,'Publicity department','瀹ｄ紶閮ㄩ棬'),(20,'Testing department','娴嬭瘯閮ㄩ棬'),(31,'Data center','鏁版嵁涓績'),(32,'Laboratory','瀹為獙涓績'),(33,'123333Quality inspection department','璐ㄩ噺鏍￠獙閮ㄩ棬'),(40,'Financial Business Department','閲戣瀺浜嬩笟閮?),(41,'Executive Department','鎵ц閮?),(42,'Training place','鍩硅閮?),(43,'Marketing Department','甯傚満閮?),(44,'Channel Location Division','娓犻亾閫夊潃浜嬩笟閮?),(45,'Data Collection Department','鏁版嵁閲囬泦閮?),(47,'666','绉戞妧閮?),(48,'dou','鎲ㄦ啫涓€鏃?);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictionary_contents`
--

DROP TABLE IF EXISTS `dictionary_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dictionary_contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL COMMENT '瀛楀吀鐩綍缂栧彿',
  `title` varchar(255) DEFAULT NULL COMMENT '瀛楀吀鐩綍鍚嶇О',
  `intro` varchar(255) DEFAULT NULL COMMENT '瀛楀吀鐩綍绠€浠?,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dictionary_contents_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary_contents`
--

LOCK TABLES `dictionary_contents` WRITE;
/*!40000 ALTER TABLE `dictionary_contents` DISABLE KEYS */;
INSERT INTO `dictionary_contents` VALUES (1,'job','鑱屼笟','鍋氫粈涔堢殑'),(2,'source','鏉ユ簮','瀹㈡埛鏉ユ簮娓犻亾'),(3,'intentionDegree','鎰忓悜绋嬪害','鏈夊涔堟兂鍏ュ潙'),(4,'subject','瀛︾','瀛︾鍒嗙被'),(5,'Collection type','鏀舵绫诲瀷','瀛﹁垂鏀舵鏂瑰紡'),(6,'School nature','鍔炲鎬ц川','School nature'),(7,'Customer importance','瀹㈡埛閲嶈绋嬪害','Customer importance'),(8,'Foreign language proficiency','澶栬姘村钩','Foreign language proficiency'),(9,'Career test','鑱屼笟娴嬭瘯','Career test'),(10,'Follow-up method','璺熻繘鏂瑰紡','瀹㈡埛璺熻繘鐨勬柟寮?),(15,'12','鍘?,'345');
/*!40000 ALTER TABLE `dictionary_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictionary_details`
--

DROP TABLE IF EXISTS `dictionary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dictionary_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '瀛楀吀鏄庣粏鍚嶇О',
  `sequence` int DEFAULT NULL COMMENT '瀛楀吀鏄庣粏搴忓彿',
  `parentId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY ` dictionary_details_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary_details`
--

LOCK TABLES `dictionary_details` WRITE;
/*!40000 ALTER TABLE `dictionary_details` DISABLE KEYS */;
INSERT INTO `dictionary_details` VALUES (1,'鏁欒偛瀛︾爺绌朵汉鍛橈紙GBM20104锛?,2,1),(2,'涓撲笟鎶€鏈汉鍛橈紙GBM20000锛?,1,1),(3,'浼佷笟璐熻矗浜猴紙GBM10601锛?,1,1),(4,'鍏氱殑鏈哄叧銆佸浗瀹舵満鍏炽€佺兢浼楀洟浣撳拰绀句細缁勭粐銆佷紒浜嬩笟鍗曚綅璐熻矗浜猴紙GBM10000锛?,12,1),(5,'鏁欏笀',3,1),(8,'寰俊',1,2),(9,'鎶栭煶',5,2),(10,'寰崥',7,2),(11,'娴嬭瘯淇℃伅',1,3),(12,'鏀粯瀹?,1,5),(13,'鍏珛楂樻牎',1,6),(14,'閲嶈',2,7),(15,'寰俊',2,5),(16,'姘戝姙楂樻牎',2,6),(17,'QQ',1,2),(18,'琛楀ご灏忓箍鍛?,1,2),(19,'澶存潯鍙?,1,2),(20,'寰俊鍏紬鍙?,2,2),(21,'鎶ョ焊',1,2),(22,'Bilibili',4,2),(23,'澶у鑻辫鍥涚骇CET-4锛堝洓绾э級',1,8),(24,'钀ラ攢QQ',1,10),(25,'钀ラ攢寰俊',1,10),(26,'钀ラ攢鎶栭煶',1,10),(27,'鍙告満',999,1),(28,'缂栬緫',45,1),(29,'鍔炰簨浜哄憳鍜屾湁鍏充汉鍛橈紙GBM30000锛?,999,1),(30,'涔︿俊',12,10),(31,'涓€冭嫳璇垎鏁?,2,8),(32,'楂樿€冭嫳璇垎鏁?,2,8),(33,'澶у鑻辫鍏骇CET-6锛堝叚绾э級',2,8),(34,'涓撲笟鑻辫4绾э紙涓撳洓锛夛紙TEM-4锛?,3,8),(35,'涓撲笟鑻辫8绾э紙涓撳叓锛夛紙TEM-8锛?,2,8),(36,'鍏ㄥ浗鑻辫绛夌骇鑰冭瘯锛圥ETS锛?,3,8),(37,'鍟嗗姟鑻辫鑰冭瘯 (BEC)',2,8),(38,'缈昏瘧涓撲笟璧勬牸鑰冭瘯(CATTI)',2,8),(39,'涓婃捣澶栬鍙ｈ瘧璇佷功',2,8),(40,'闆呮€?IELTS)',1,8),(41,'鎵樼锛圱OEFL锛?,1,8),(42,'鎵樹笟锛圱OEIC锛?,1,8),(43,'绀句細鐢熶骇鏈嶅姟鍜岀敓娲绘湇鍔′汉鍛橈紙GBM40000锛?,1,1),(44,'鍏朵粬鎵瑰彂涓庨浂鍞湇鍔′汉鍛橈紙GBM40199锛?,1,1),(45,'鍐溿€佹灄銆佺墽銆佹笖涓氱敓浜у強杈呭姪浜哄憳锛圙BM50000锛?,1,1),(46,'鐢熶骇鍒堕€犲強鏈夊叧浜哄憳锛圙BM60000锛?,12,1),(47,'鍐涗汉GBM70000锛?,1,1),(48,'涓嶄究鍒嗙被鐨勫叾浠栦粠涓氫汉鍛橈紙GBM80000锛?,1,1),(49,'瀹楁暀缁勭粐璐熻矗浜猴紙GBM10406锛?,11,1),(50,'鍝插',101,4),(51,'鐞嗚缁忔祹瀛?,201,4),(52,'搴旂敤缁忔祹瀛?,202,4),(53,'缁熻瀛?,270,4),(54,'寰崥',2,10),(55,'鐭ヤ箮',3,10),(56,'閽夐拤',6,10),(57,'鍝斿摡鍝斿摡',5,10),(58,'楂樿亴楂樹笓',3,6),(59,'鑱屼笟涓',4,6),(60,'鏈€閲嶈',1,7),(61,'涓€鑸噸瑕?,3,7),(62,'鎶€鏈?鑱岃兘鍨?,1,9),(63,'绠＄悊鍨?,2,9),(64,'鑷富/鐙珛鍨?,3,9),(65,'鎸戞垬鍨?,4,9),(66,'鐢熸椿鍨?,5,9),(67,'瀹夊叏/绋冲畾鍨?,6,9),(68,'鍒涢€?鍒涗笟鍨?,7,9),(69,'鏈嶅姟/濂夌尞鍨?,8,9),(70,'绋嬪簭鍛?,42,1),(71,'娣诲姞淇℃伅',2,3),(72,'瀹℃煡淇℃伅',3,3);
/*!40000 ALTER TABLE `dictionary_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  `dept` int NOT NULL,
  `hireDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍏ヨ亴鏃堕棿',
  `state` int NOT NULL DEFAULT '1' COMMENT '鐘舵€?1姝ｅ父 0绂昏亴',
  `admin` int NOT NULL DEFAULT '0' COMMENT '瓒呯骇绠＄悊鍛樿韩浠?1瓒呯 0鏅€?,
  `login_time` datetime DEFAULT NULL,
  `register_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id_uindex` (`id`),
  UNIQUE KEY `employee_name_uindex` (`name`),
  UNIQUE KEY `employee_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'admin','$2a$10$OG1zaFHT2LUy4SGcQ4EnRu9sPQMjMGEE6jARz61aQwRQ3316N6ikG','1623@163.com',20,2,'2021-05-14 00:28:00',1,1,'2021-05-25 11:16:54','2021-05-21 08:46:19'),(2,'鑲栨€?,'$2a$10$./YLhMGRhhqMwJOoxJGKYeuKsXehDyTt5C6Eq9CfAshnGWlPL8SNG','163@163.com',35,43,'2021-05-16 01:19:51',1,1,'2021-05-21 16:46:24','2021-05-21 08:46:25'),(3,'璧典竴鏄?,'$2a$10$/h22UTKprujOhSnaugy0/.dJHpNsox.OvPuzWCMMKoFm2FOrBurwO','g@gmail.com',25,3,'2021-05-16 01:22:38',1,1,'2021-05-21 16:46:27','2021-05-21 08:46:27'),(4,'鍒樹節姹?,'$2a$10$4zNrZ/O1SsOcsFB6Hi9tPOGazrbU8dmV2igZaTxClNyQjONHDr3g2','msy@msy.plus',14,2,'2021-05-21 11:07:36',1,1,'2021-05-21 20:37:44','2021-05-21 11:07:29'),(5,'澧ㄦ姃棰?,'$2a$10$H5uwoLQIGQCmZpH98UCLbezAFKBcV6XxziDXH89JuAy2LBzspoGjO','msy.plus@qq.com',101,2,'2021-05-21 11:49:52',1,0,'2021-05-26 19:20:37','2021-05-21 11:49:52'),(6,'Ralph V. Livengood','123123','RalphVLivengood@gmail.com',35,6,'2021-05-18 06:49:32',1,0,'2021-05-21 16:46:28','2021-05-21 08:46:29'),(7,'Lauren C. Young','123333','LaurenCYoung@gmail.com',33,7,'2021-05-18 07:10:31',1,0,'2021-05-21 16:46:29','2021-05-21 08:46:30'),(8,'閽熸眽鑹?,'123333','zhl@outlook.com',33,7,'2021-05-18 07:11:19',1,0,'2021-05-21 16:46:31','2021-05-21 08:46:31'),(9,'闄堜箶鎭?,'$2a$10$meRc5DPOldNhSMJ3O61bAejjYrh9.0RCA4C7v5Vtg8ws7/Tci10hu','c@qq.com',23,2,'2021-05-21 11:34:48',1,0,NULL,'2021-05-21 11:34:48'),(1031,'瀹嬩匠閼?,'$2a$10$DrMTM/woX/Yc4W.3QHUbyOqjG05LIPByYvVz3z/Vz69q7mcZO5Ooq','songjiaxin@qq.com',18,2,'2021-05-23 01:49:58',1,1,'2021-05-25 17:05:08','2021-05-23 01:49:58'),(1091,'璇哄熀浜?,'$2a$10$99f1zjjDOwsaeGcP8Qn4Bu10zPsDEA1FTHC7nFpKSX81bht3fEwh2','7231083332@qq.com',18,2,'2021-05-24 00:57:42',1,0,NULL,'2021-05-24 00:57:42'),(1092,'椹槶','$2a$10$KvgXh3omy5pKjUS8JFZdOOLhyKqOJ03NtzyknKRLac/nil5xe0.9y','mazhao@qq.com',22,2,'2021-05-24 03:27:30',1,1,'2021-05-24 11:54:41','2021-05-24 03:27:30'),(1093,'鑸掑簮娲?,'$2a$10$TgUCIEgIYRaby8o3BqgkFOBXsDWCMSn5gvxGDlQNSzTLDkFZNIk3q','Shulujie@qq.com',28,2,'2021-05-24 07:42:03',1,1,'2021-05-24 22:29:41','2021-05-24 07:42:03'),(1096,'娌堢憺娓?,'$2a$10$o9biUqGhooopq1VZv48Ug.GvLWnoTAs0ZrW4WcUWgufLu/EvxULXm','WoShiHanHan@qq.com',23,2,'2021-05-24 07:43:35',1,1,'2021-05-26 00:34:46','2021-05-24 07:43:35'),(1097,'闄堜繆闇?,'$2a$10$O1zURPCreMvkMl7WOkapGevHvbU2S0ebt8j6nSaRnjglX3rYo.R3O','ChenJunLin@qq.com',28,2,'2021-05-24 07:44:57',1,1,'2021-05-24 15:47:46','2021-05-24 07:44:57'),(1098,'瀹嬮洦鑸?,'$2a$10$f3n4pqJ8wnHO0QnQNWHe1OFMhWIQ2fybQYB3uxgY2jOn8jAKHsbIG','SongYuHang@qq.com',28,11,'2021-05-24 07:46:23',1,0,'2021-05-25 16:57:07','2021-05-24 07:46:23'),(1101,'鐜嬬編鐞?,'$2a$10$XCwrP.arTRwveIaeP0qDtuk53Hgco3W2/Is09OrTW7zkLcXC1lbl.','meiqi@qq.com',28,2,'2021-05-25 02:32:22',1,1,'2021-05-26 14:49:39','2021-05-25 02:32:22');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_role`
--

DROP TABLE IF EXISTS `employee_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employeeId` int DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_role_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role`
--

LOCK TABLES `employee_role` WRITE;
/*!40000 ALTER TABLE `employee_role` DISABLE KEYS */;
INSERT INTO `employee_role` VALUES (14,1001,4),(15,1001,5),(16,1001,8),(17,1001,9),(18,1002,4),(19,1002,5),(20,1002,8),(21,1002,9),(22,1000,4),(23,1000,5),(24,1000,8),(25,1000,9),(39,1,2),(40,1,4),(44,1010,8),(45,1011,5),(49,1013,5),(50,1013,4),(51,1016,5),(52,1016,4),(53,1015,8),(54,1015,5),(55,1015,4),(57,4,1),(58,4,2),(59,4,3),(60,NULL,1),(61,NULL,2),(62,NULL,3),(63,NULL,1),(64,NULL,1),(65,NULL,1),(66,NULL,1),(67,NULL,1),(68,1018,1),(69,1030,1),(70,1030,2),(71,1030,3),(73,5,2),(76,1031,2),(77,1031,1),(78,1031,3),(84,1031,4),(85,1031,5),(86,1031,7),(87,1031,8),(88,1031,9),(89,1031,10),(90,1031,11),(91,1031,12),(92,1031,13),(98,2,7),(104,5,1),(110,7,37),(111,6,42),(112,8,42),(113,3,42),(159,1091,1),(160,1092,2),(161,1092,1),(162,1031,22),(163,1031,27),(164,1031,28),(165,1031,36),(166,1031,37),(167,1031,38),(168,1031,39),(169,1031,40),(170,1031,41),(171,1031,42),(191,1093,9),(194,1096,41),(195,1096,42),(196,1096,12),(197,1096,13),(198,1096,22),(199,1096,27),(200,1096,28),(201,1096,36),(202,1096,37),(203,1096,38),(204,1096,39),(205,1096,40),(206,1096,1),(207,1096,2),(208,1096,3),(209,1096,4),(210,1096,5),(211,1096,7),(212,1096,8),(213,1096,9),(214,1096,10),(215,1096,11),(216,1097,41),(217,1097,42),(218,1097,12),(219,1097,13),(220,1097,22),(221,1097,27),(222,1097,28),(223,1097,36),(224,1097,37),(225,1097,38),(226,1097,39),(227,1097,40),(228,1097,1),(229,1097,2),(230,1097,3),(231,1097,4),(232,1097,5),(233,1097,7),(234,1097,8),(235,1097,9),(236,1097,10),(237,1097,11),(239,1098,42),(265,9,7),(266,1101,42);
/*!40000 ALTER TABLE `employee_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '鏉冮檺鍚嶇О',
  `expression` varchar(255) DEFAULT NULL COMMENT '璧勬簮鍦板潃',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'瀹㈡埛鍒楄〃','customer:list'),(2,'瀹㈡埛鐘舵€佷慨鏀?,'customer:changeStatus'),(3,'瀹㈡埛鏂板淇敼','customer:saveOrUpdate'),(5,'瀹㈡埛姹犲垪琛?,'customerPool:list'),(6,'璺熻繘鍘嗗彶鍒楄〃','followHistory:list'),(7,'璺熻繘鍘嗗彶鏂板/淇敼','followHistory:saveOrUpdate'),(8,'绉讳氦鍘嗗彶鍒楄〃','transferHistory:list'),(9,'绉讳氦鍘嗗彶鏂板/淇敼','transferHistory:saveOrUpdate'),(10,'閮ㄩ棬鍒楄〃','department:list'),(11,'閮ㄩ棬鍒犻櫎','department:delete'),(12,'閮ㄩ棬鏂板/淇敼','department:addOrUpdate'),(13,'鍛樺伐鍒犻櫎','employee:delete'),(14,'鍛樺伐鍒楄〃','employee:list'),(15,'鍛樺伐缂栬緫','employee:edit'),(16,'鍛樺伐鎵归噺鍒犻櫎','employee:deleteMultiple');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '瑙掕壊Id',
  `name` varchar(255) DEFAULT NULL COMMENT '瑙掕壊鍚嶇О',
  `sn` varchar(255) DEFAULT NULL COMMENT '瑙掕壊缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'钁ｄ簨闀?,'Chairman of the board'),(2,'ADMIN','System administrator'),(3,'涓诲腑','Chairman'),(4,'楂樼骇涓诲腑','Senior Chairman'),(5,'鍓富甯?,'Vice Chairman'),(7,'鎬昏','Chairman'),(8,'浼氶暱','President'),(9,'楂樼骇鎬昏','Senior President'),(10,'楂樼骇鍓€昏','Senior Vice President'),(11,'鍓€昏','Vice president'),(12,'鎬荤粡鐞?,'General manager'),(13,'鍓€荤粡鐞?,'Deputy General Manager'),(22,'鎬荤洃','Director'),(27,'缁忕悊','Manager'),(28,'楂樼骇缁忕悊','Senior Manager'),(36,'鍓粡鐞?,'Deputy manager'),(37,'涓讳换','Director'),(38,'楂樼骇涓讳换','Senior Director'),(39,'鍓富浠?,'Deputy director'),(40,'缁勯暱','Group leader'),(41,'鍓粍闀?,'Deputy head'),(42,'鏅€氬憳宸?,'Worker'),(46,'琛屾斂璐熻矗浜?,'20');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL COMMENT '瑙掕壊id',
  `permission_id` int NOT NULL COMMENT '鏉冮檺id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_permission_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊鏉冮檺涓棿琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (188,4,5),(193,4,1),(194,4,2),(195,4,3),(213,13,1),(214,13,2),(215,13,3),(216,13,5),(217,2,1),(218,2,2),(219,2,3),(220,2,5),(221,2,6),(222,2,7),(223,2,8),(224,2,9),(225,2,10),(226,2,11),(227,2,12),(228,2,13),(229,2,14),(230,2,15),(231,2,16),(256,36,9),(257,37,8),(258,1,1),(259,1,2),(260,1,3),(261,1,5),(262,1,6),(263,1,7),(264,1,8),(265,1,9),(266,1,10),(267,1,11),(268,1,12),(269,1,13),(270,1,14),(271,1,15),(272,1,16),(273,1,21),(274,2,21),(275,3,1),(276,3,2),(277,3,3),(278,3,5),(279,3,6),(280,3,7),(281,3,8),(282,3,9),(283,3,10),(284,3,11),(285,3,12),(286,3,13),(287,3,14),(288,3,15),(289,3,16),(290,3,21),(291,5,1),(292,5,2),(293,5,3),(294,5,5),(295,5,6),(296,4,16),(297,4,21),(298,4,6),(299,4,7),(300,4,8),(301,4,9),(302,4,10),(303,4,11),(304,4,12),(305,4,13),(306,4,14),(307,4,15),(308,5,16),(309,5,21),(310,5,7),(311,5,8),(312,5,9),(313,5,10),(314,5,11),(315,5,12),(316,5,13),(317,5,14),(318,5,15),(319,7,1),(320,7,2),(321,7,3),(322,7,5),(323,7,6),(324,7,7),(325,7,8),(326,7,9),(327,7,10),(328,7,11),(329,7,12),(330,7,13),(331,7,14),(332,7,15),(333,7,16),(334,7,21),(335,8,1),(336,8,2),(337,8,3),(338,8,5),(339,8,6),(340,8,7),(341,8,8),(342,8,9),(343,8,10),(344,8,11),(345,8,12),(346,8,13),(347,8,14),(348,8,15),(349,8,16),(350,8,21),(351,12,1),(352,12,2),(353,12,3),(354,12,5),(355,12,6),(356,12,7),(357,12,8),(358,12,9),(359,12,10),(360,12,11),(361,12,12),(362,12,13),(363,12,14),(364,12,15),(365,12,16),(366,12,21),(367,38,9),(368,39,3),(369,40,9),(370,40,8),(371,41,9),(372,42,8),(379,46,1),(380,46,2),(381,46,3);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-26 19:22:06
