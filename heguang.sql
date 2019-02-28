-- MySQL dump 10.13  Distrib 5.7.24-ndb-7.6.8, for macos10.14 (x86_64)
--
-- Host: localhost    Database: heguang
-- ------------------------------------------------------
-- Server version	5.7.24-ndb-7.6.8-cluster-gpl

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'745298691@qq.com','dqf009.','段其沣');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_all`
--

DROP TABLE IF EXISTS `alipay_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_all` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `out_trade_no` varchar(70) DEFAULT NULL,
  `trade_no` varchar(70) DEFAULT NULL,
  `total_amount` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='和支付宝相关的所有记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_all`
--

LOCK TABLES `alipay_all` WRITE;
/*!40000 ALTER TABLE `alipay_all` DISABLE KEYS */;
INSERT INTO `alipay_all` VALUES (1,'qifeng duan','745298691@qq.com','1549853879585','2019021122001467350500713313','22'),(17,'æ®µå¶æ²£','745298691@qq.com','1551341249006','20190228040729','1000'),(18,'段其沣','745298691@qq.com','1551341662209','20190228041422','100000'),(19,'scuxiaoer','scuxiaoer@126.com','1551354696417','20190228075136','100000');
/*!40000 ALTER TABLE `alipay_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gz`
--

DROP TABLE IF EXISTS `gz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `visitor` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `times` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `lastbalance` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `zzje` int(11) NOT NULL,
  `zcs` int(11) NOT NULL,
  `fcbl` int(11) NOT NULL,
  `school` int(11) NOT NULL,
  `income` varchar(45) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `timestamp` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idgz_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gz`
--

LOCK TABLES `gz` WRITE;
/*!40000 ALTER TABLE `gz` DISABLE KEYS */;
/*!40000 ALTER TABLE `gz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoAbout745298691@qq.com`
--

DROP TABLE IF EXISTS `infoAbout745298691@qq.com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoAbout745298691@qq.com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoid` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `infoid_UNIQUE` (`infoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoAbout745298691@qq.com`
--

LOCK TABLES `infoAbout745298691@qq.com` WRITE;
/*!40000 ALTER TABLE `infoAbout745298691@qq.com` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoAbout745298691@qq.com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoAboutscuxiaoer@126.com`
--

DROP TABLE IF EXISTS `infoAboutscuxiaoer@126.com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoAboutscuxiaoer@126.com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoid` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `infoid_UNIQUE` (`infoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoAboutscuxiaoer@126.com`
--

LOCK TABLES `infoAboutscuxiaoer@126.com` WRITE;
/*!40000 ALTER TABLE `infoAboutscuxiaoer@126.com` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoAboutscuxiaoer@126.com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(300) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (11,'段其沣','\r\n						达到撒		','2019-01-25'),(12,'dadada','tsjlhkdjsakjl;ahgdksakkja;hjdfhaskjfhsadfhasjkhdfjksafhskjdhtsjlhkdjsakjl;ahgdksakkja;hjdfhaskjfhsadfhasjkhdfjksafhskjdhtsjlhkdjsakjl;ahgdksakkja;hjdfhaskjfhsadfhasjkhdfjksafhskjdhtsjlhkdjsakjl;ahgdksakkja;hjdfhaskjfhsadfhasjkhdfjksafhskjdh','2019-01-27'),(13,'开机后打电话即可','\r\n								广东省科技馆的敬爱个','2019-01-27');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (5,'过意','临床训练'),(6,'与狂欢节','临床服务'),(7,'换个环境和钢结构','临床服务'),(8,'段其沣','临床服务'),(9,'小宝宝咨询','临床服务');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `yue` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userinfo_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (2,'745298691@qq.com','dqf009.','段其沣',86800),(3,'scuxiaoer@126.com','dqf009.','scuxiaoer',98600);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxdj`
--

DROP TABLE IF EXISTS `zxdj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxdj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) DEFAULT NULL,
  `zxsName` varchar(50) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `zxlb` varchar(50) DEFAULT NULL,
  `zxwt` varchar(100) DEFAULT NULL,
  `qzyy` varchar(500) DEFAULT NULL,
  `sfjsgxl` varchar(10) DEFAULT NULL,
  `sfjsgjs` varchar(10) DEFAULT NULL,
  `sfzs` varchar(10) DEFAULT NULL,
  `qita` varchar(100) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `ctel` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `income` varchar(20) DEFAULT NULL,
  `marriage` varchar(20) DEFAULT NULL,
  `children` varchar(10) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `relationship_name` varchar(50) DEFAULT NULL,
  `relationship_tel` varchar(50) DEFAULT NULL,
  `lfz` varchar(50) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `timestamp` mediumtext,
  `times` int(11) DEFAULT '0',
  `schoolincome` double DEFAULT '0',
  `zxsincome` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxdj`
--

LOCK TABLES `zxdj` WRITE;
/*!40000 ALTER TABLE `zxdj` DISABLE KEYS */;
INSERT INTO `zxdj` VALUES (50,'每周1：14:00~17:00','吴薇莉（200元/50分钟）',600,'成人咨询','其他','1','没有','没有','没有','1','1','其他','11','1','1','1','1','1','1','没有','1','1','1','745298691@qq.com','段其沣','2019-02-28 19:09:14',1,NULL,NULL),(51,'每周1：1:00~5:00','吴薇莉（200元/50分钟）',800,'成人咨询','其他','1','没有','没有','没有','1','1','其他','1','1','1','1','1','1','1','没有','1','1','1','745298691@qq.com','段其沣','2019-02-28 19:25:39',2,120,680),(52,'190319：1:00~6:00','徐丽（1000元/50分钟）',5000,'成人咨询','其他','1','没有','没有','没有','1','1','其他','1','1','1','1','1','1','1','没有','1','1','1','745298691@qq.com','段其沣','2019-02-28 19:48:54',1,750,4250),(53,'每周1：14:00~17:00','吴薇莉（200元/50分钟）',600,'成人咨询','其他','1','没有','没有','没有','1','1','其他','1','1','1','1','1','1','1','没有','1','1','1','scuxiaoer@126.com','scuxiaoer','2019-02-28 19:54:00',1,90,510),(54,'每周1：1:00~5:00','吴薇莉（200元/50分钟）',800,'成人咨询','其他','1','没有','没有','没有','1','1','其他','1','1','1','1','1','1','1','没有','1','1','1','scuxiaoer@126.com','scuxiaoer','2019-02-28 19:55:56',2,120,680);
/*!40000 ALTER TABLE `zxdj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxs`
--

DROP TABLE IF EXISTS `zxs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zxs_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxs`
--

LOCK TABLES `zxs` WRITE;
/*!40000 ALTER TABLE `zxs` DISABLE KEYS */;
INSERT INTO `zxs` VALUES (18,'刘英华','d','liuyinghua@q','女',600),(19,'吴薇莉','d','wwl@q','女',200),(20,'徐丽','d','xl@q','女',1000),(21,'d','d','d@q','男',800);
/*!40000 ALTER TABLE `zxs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxs_745298691@qq.com`
--

DROP TABLE IF EXISTS `zxs_745298691@qq.com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxs_745298691@qq.com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` tinyint(4) DEFAULT NULL,
  `ks` tinyint(4) DEFAULT NULL,
  `js` tinyint(4) DEFAULT NULL,
  `cs` tinyint(4) DEFAULT NULL,
  `jg` tinyint(4) DEFAULT NULL,
  `fs` varchar(10) DEFAULT NULL,
  `bz` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxs_745298691@qq.com`
--

LOCK TABLES `zxs_745298691@qq.com` WRITE;
/*!40000 ALTER TABLE `zxs_745298691@qq.com` DISABLE KEYS */;
/*!40000 ALTER TABLE `zxs_745298691@qq.com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxs_d@q`
--

DROP TABLE IF EXISTS `zxs_d@q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxs_d@q` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` tinyint(4) DEFAULT NULL,
  `ks` tinyint(4) DEFAULT NULL,
  `js` tinyint(4) DEFAULT NULL,
  `cs` tinyint(4) DEFAULT NULL,
  `jg` tinyint(4) DEFAULT NULL,
  `fs` varchar(10) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxs_d@q`
--

LOCK TABLES `zxs_d@q` WRITE;
/*!40000 ALTER TABLE `zxs_d@q` DISABLE KEYS */;
/*!40000 ALTER TABLE `zxs_d@q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxs_liuyinghua@q`
--

DROP TABLE IF EXISTS `zxs_liuyinghua@q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxs_liuyinghua@q` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT NULL,
  `ks` tinyint(4) DEFAULT NULL,
  `js` tinyint(4) DEFAULT NULL,
  `cs` tinyint(4) DEFAULT NULL,
  `jg` tinyint(4) DEFAULT NULL,
  `fs` varchar(10) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxs_liuyinghua@q`
--

LOCK TABLES `zxs_liuyinghua@q` WRITE;
/*!40000 ALTER TABLE `zxs_liuyinghua@q` DISABLE KEYS */;
/*!40000 ALTER TABLE `zxs_liuyinghua@q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxs_wwl@q`
--

DROP TABLE IF EXISTS `zxs_wwl@q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxs_wwl@q` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT NULL,
  `ks` tinyint(4) DEFAULT NULL,
  `js` tinyint(4) DEFAULT NULL,
  `cs` tinyint(4) DEFAULT NULL,
  `jg` tinyint(4) DEFAULT NULL,
  `fs` varchar(10) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxs_wwl@q`
--

LOCK TABLES `zxs_wwl@q` WRITE;
/*!40000 ALTER TABLE `zxs_wwl@q` DISABLE KEYS */;
INSERT INTO `zxs_wwl@q` VALUES (8,101,14,17,1,5,'面','scuxiaoer'),(9,101,1,5,1,5,'面','scuxiaoer');
/*!40000 ALTER TABLE `zxs_wwl@q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxs_xl@q`
--

DROP TABLE IF EXISTS `zxs_xl@q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxs_xl@q` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT NULL,
  `ks` tinyint(4) DEFAULT NULL,
  `js` tinyint(4) DEFAULT NULL,
  `cs` tinyint(4) DEFAULT NULL,
  `jg` tinyint(4) DEFAULT NULL,
  `fs` varchar(10) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxs_xl@q`
--

LOCK TABLES `zxs_xl@q` WRITE;
/*!40000 ALTER TABLE `zxs_xl@q` DISABLE KEYS */;
INSERT INTO `zxs_xl@q` VALUES (2,102,8,14,1,5,'面',''),(3,190319,1,6,1,5,'面','段其沣');
/*!40000 ALTER TABLE `zxs_xl@q` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28 22:40:49
