-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: bitrade
-- ------------------------------------------------------
-- Server version	5.6.45

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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_code` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `google_date` datetime DEFAULT NULL,
  `google_key` varchar(255) DEFAULT NULL,
  `google_state` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`),
  KEY `FKnmmt6f2kg0oaxr11uhy7qqf3w` (`department_id`),
  CONSTRAINT `FKnmmt6f2kg0oaxr11uhy7qqf3w` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'123','123','1053567629@qq.com',0,'2019-04-25 14:02:34','0:0:0:0:0:0:0:1',0,'61.146.0.131','2019-09-14 16:03:47','10000','4c5e06e8288cf536149227e25a0b29cb','123','人人',1,0,'root',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_access_log`
--

DROP TABLE IF EXISTS `admin_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_access_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_ip` varchar(255) DEFAULT NULL,
  `access_method` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1447 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_access_log`
--

LOCK TABLES `admin_access_log` WRITE;
/*!40000 ALTER TABLE `admin_access_log` DISABLE KEYS */;
INSERT INTO `admin_access_log` VALUES (1,'222.137.16.157','POST','2019-09-07 18:17:55',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(2,'222.137.16.157','POST','2019-09-07 18:17:55',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(3,'222.137.16.157','POST','2019-09-07 18:17:55',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(4,'222.137.16.157','POST','2019-09-07 18:17:55',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(5,'222.137.16.157','POST','2019-09-07 18:17:55',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(6,'222.137.16.157','POST','2019-09-07 18:17:55',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(7,'222.137.16.157','POST','2019-09-07 18:26:24',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(8,'222.137.16.157','POST','2019-09-07 18:26:26',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(9,'222.137.16.157','POST','2019-09-07 18:26:32',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(10,'222.137.16.157','POST','2019-09-07 18:26:32',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(11,'222.137.16.157','POST','2019-09-07 18:26:32',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(12,'222.137.16.157','POST','2019-09-07 18:26:33',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(13,'222.137.16.157','POST','2019-09-07 18:26:33',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(14,'222.137.16.157','POST','2019-09-07 18:26:33',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(15,'222.137.16.157','POST','2019-09-07 18:26:33',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(16,'222.137.16.157','POST','2019-09-07 18:26:33',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(17,'222.137.16.157','POST','2019-09-07 18:26:33',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(18,'222.137.16.157','POST','2019-09-07 18:26:55',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(19,'222.137.16.157','POST','2019-09-07 18:26:55',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(20,'222.137.16.157','POST','2019-09-07 18:26:55',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(21,'222.137.16.157','POST','2019-09-07 18:26:55',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(22,'222.137.16.157','POST','2019-09-07 18:26:55',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(23,'222.137.16.157','POST','2019-09-07 18:26:55',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(24,'222.137.16.157','POST','2019-09-07 18:27:00',1,4,'分页查找会员Member','/member/page-query'),(25,'222.137.16.157','POST','2019-09-07 18:27:49',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(26,'115.60.58.251','POST','2019-09-08 14:46:17',-1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(27,'115.60.58.251','POST','2019-09-08 14:46:28',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(28,'115.60.58.251','POST','2019-09-08 14:46:29',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(29,'115.60.58.251','POST','2019-09-08 14:46:29',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(30,'115.60.58.251','POST','2019-09-08 14:46:29',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(31,'115.60.58.251','POST','2019-09-08 14:46:29',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(32,'115.60.58.251','POST','2019-09-08 14:46:29',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(33,'115.60.58.251','POST','2019-09-08 14:46:29',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(34,'115.60.58.251','POST','2019-09-08 14:46:37',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(35,'115.60.58.251','POST','2019-09-08 14:48:03',1,1,'上传oss图片','/common/upload/oss/image'),(36,'115.60.58.251','POST','2019-09-08 14:55:53',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(37,'115.60.58.251','POST','2019-09-08 14:56:10',1,1,'上传oss图片','/common/upload/oss/image'),(38,'125.41.185.246','POST','2019-09-09 09:39:30',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(39,'125.41.185.246','POST','2019-09-09 09:39:36',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(40,'125.41.185.246','POST','2019-09-09 09:39:37',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(41,'125.41.185.246','POST','2019-09-09 09:39:37',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(42,'125.41.185.246','POST','2019-09-09 09:39:37',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(43,'125.41.185.246','POST','2019-09-09 09:39:37',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(44,'125.41.185.246','POST','2019-09-09 09:39:38',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(45,'125.41.185.246','POST','2019-09-09 09:39:38',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(46,'125.41.185.246','POST','2019-09-09 09:39:38',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(47,'125.41.185.246','POST','2019-09-09 09:39:38',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(48,'125.41.185.246','POST','2019-09-09 09:39:38',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(49,'125.41.185.246','POST','2019-09-09 09:39:38',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(50,'125.41.185.246','POST','2019-09-09 09:39:59',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(51,'125.41.185.246','POST','2019-09-09 09:40:02',1,4,'分页查找会员Member','/member/page-query'),(52,'125.41.185.246','POST','2019-09-09 09:40:13',1,4,'会员Member详情','/member/detail'),(53,'125.41.185.246','POST','2019-09-09 09:40:13',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(54,'125.41.185.246','POST','2019-09-09 09:40:13',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(55,'125.41.185.246','POST','2019-09-09 09:40:21',1,4,'充币管理','/member/member-wallet/recharge'),(56,'125.41.185.246','POST','2019-09-09 09:40:22',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(57,'125.41.185.246','POST','2019-09-09 09:42:23',1,4,'分页查找会员Member','/member/page-query'),(58,'125.41.185.246','POST','2019-09-09 09:42:37',1,6,'重置会员密码','/member/reset/pwd'),(59,'125.41.185.246','POST','2019-09-09 09:43:37',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(60,'125.41.185.246','POST','2019-09-09 09:43:38',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(61,'125.41.185.246','PATCH','2019-09-09 09:43:41',1,4,'会员MemberApplication认证通过审核','/member/member-application/1/pass'),(62,'125.41.185.246','POST','2019-09-09 09:43:41',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(63,'125.41.185.246','POST','2019-09-09 09:43:43',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(64,'125.41.185.246','POST','2019-09-09 09:48:25',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(65,'125.41.185.246','POST','2019-09-09 09:51:20',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(66,'125.41.185.246','POST','2019-09-09 09:51:20',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(67,'125.41.185.246','POST','2019-09-09 09:51:20',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(68,'125.41.185.246','POST','2019-09-09 09:51:20',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(69,'125.41.185.246','POST','2019-09-09 09:51:20',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(70,'125.41.185.246','POST','2019-09-09 09:51:20',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(71,'125.41.185.246','POST','2019-09-09 10:00:12',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(72,'125.41.185.246','POST','2019-09-09 10:01:39',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(73,'125.41.185.246','POST','2019-09-09 10:01:40',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(74,'125.41.185.246','POST','2019-09-09 10:01:42',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(75,'125.41.185.246','POST','2019-09-09 11:40:10',-1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(76,'125.41.185.246','POST','2019-09-09 11:40:23',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(77,'125.41.185.246','POST','2019-09-09 11:40:23',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(78,'125.41.185.246','POST','2019-09-09 11:40:23',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(79,'125.41.185.246','POST','2019-09-09 11:40:23',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(80,'125.41.185.246','POST','2019-09-09 11:40:23',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(81,'125.41.185.246','POST','2019-09-09 11:40:23',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(82,'125.41.185.246','POST','2019-09-09 11:40:23',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(83,'125.41.185.246','POST','2019-09-09 11:40:24',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(84,'125.41.185.246','POST','2019-09-09 11:40:24',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(85,'125.41.185.246','POST','2019-09-09 11:40:24',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(86,'125.41.185.246','POST','2019-09-09 11:40:24',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(87,'125.41.185.246','POST','2019-09-09 11:40:24',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(88,'125.41.185.246','POST','2019-09-09 11:40:24',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(89,'125.41.185.246','POST','2019-09-09 11:40:29',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(90,'125.41.185.246','POST','2019-09-09 11:40:30',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(91,'125.41.185.246','POST','2019-09-09 11:40:34',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(92,'125.41.185.246','GET','2019-09-09 11:40:36',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(93,'125.41.185.246','POST','2019-09-09 11:40:38',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(94,'125.41.185.246','GET','2019-09-09 11:40:40',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(95,'125.41.185.246','POST','2019-09-09 11:40:41',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(96,'125.41.185.246','POST','2019-09-09 11:40:42',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(97,'125.41.185.246','POST','2019-09-09 11:40:42',1,3,'充币记录','/finance/member-deposit/page-query'),(98,'125.41.185.246','POST','2019-09-09 11:40:42',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(99,'125.41.185.246','POST','2019-09-09 11:40:42',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(100,'125.41.185.246','POST','2019-09-09 11:40:43',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(101,'125.41.185.246','GET','2019-09-09 11:40:43',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(102,'125.41.185.246','POST','2019-09-09 11:40:43',1,3,'法币/币币  总成交量/总成交额','/finance/statistics/turnover-all'),(103,'125.41.185.246','POST','2019-09-09 11:40:43',1,3,'手续费统计 总计[\"OTC_NUM\",\"WITHDRAW\",\"EXCHANGE\"]','/finance/statistics/fee'),(104,'125.41.185.246','POST','2019-09-09 11:40:43',1,3,'充币/提币总量统计','/finance/statistics/recharge-or-withdraw-amount'),(105,'125.41.185.246','POST','2019-09-09 11:40:47',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(106,'125.41.185.246','POST','2019-09-09 11:40:48',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(107,'125.41.185.246','POST','2019-09-09 11:40:50',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(108,'125.41.185.246','POST','2019-09-09 11:40:50',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(109,'125.41.185.246','POST','2019-09-09 11:40:53',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(110,'125.41.185.246','POST','2019-09-09 11:40:53',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(111,'125.41.185.246','POST','2019-09-09 11:40:54',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(112,'125.41.185.246','POST','2019-09-09 11:40:54',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(113,'125.41.185.246','POST','2019-09-09 11:40:54',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(114,'125.41.185.246','POST','2019-09-09 11:40:57',1,4,'分页查找会员Member','/member/page-query'),(115,'125.41.185.246','POST','2019-09-09 11:40:57',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(116,'125.41.185.246','POST','2019-09-09 11:40:58',1,4,'余额管理','/member/member-wallet/balance'),(117,'125.41.185.246','POST','2019-09-09 11:40:59',1,4,'会员积分记录查询','/integration/record/query_page'),(118,'125.41.185.246','POST','2019-09-09 11:40:59',1,4,'余额管理','/member/member-wallet/balance'),(119,'125.41.185.246','POST','2019-09-09 11:41:01',1,4,'分页查找会员Member','/member/page-query'),(120,'125.41.185.246','POST','2019-09-09 11:41:03',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(121,'125.41.185.246','POST','2019-09-09 11:41:04',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(122,'125.41.185.246','POST','2019-09-09 11:41:04',1,6,'查询所有Coin','/system/coin/all'),(123,'125.41.185.246','POST','2019-09-09 11:41:05',1,0,'邀请管理多条件查询','/invite/management/query'),(124,'125.41.185.246','POST','2019-09-09 11:43:14',1,0,'根据id查询一级二级用户','/invite/management/info'),(125,'125.41.185.246','POST','2019-09-09 11:43:22',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(126,'125.41.185.246','POST','2019-09-09 11:43:23',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(127,'125.41.185.246','POST','2019-09-09 11:43:23',1,6,'查询所有Coin','/system/coin/all'),(128,'125.41.185.246','POST','2019-09-09 11:43:26',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(129,'125.41.185.246','POST','2019-09-09 11:45:56',1,4,'分页查找会员Member','/member/page-query'),(130,'125.41.185.246','POST','2019-09-09 11:45:59',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(131,'125.41.185.246','POST','2019-09-09 11:46:02',1,4,'分页查找会员Member','/member/page-query'),(132,'125.41.185.246','POST','2019-09-09 11:46:12',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(133,'125.41.185.246','GET','2019-09-09 14:19:22',-1,4,'查询会员Member申请资料','/member/2/business-auth-detail'),(134,'125.41.185.246','POST','2019-09-09 14:19:38',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(135,'125.41.185.246','POST','2019-09-09 14:19:39',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(136,'125.41.185.246','POST','2019-09-09 14:19:39',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(137,'125.41.185.246','POST','2019-09-09 14:19:39',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(138,'125.41.185.246','POST','2019-09-09 14:19:39',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(139,'125.41.185.246','POST','2019-09-09 14:19:39',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(140,'125.41.185.246','POST','2019-09-09 14:19:39',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(141,'125.41.185.246','POST','2019-09-09 14:19:41',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(142,'125.41.185.246','POST','2019-09-09 14:19:41',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(143,'125.41.185.246','POST','2019-09-09 14:19:41',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(144,'125.41.185.246','POST','2019-09-09 14:19:41',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(145,'125.41.185.246','POST','2019-09-09 14:19:41',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(146,'125.41.185.246','POST','2019-09-09 14:19:41',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(147,'125.41.185.246','GET','2019-09-09 14:20:30',1,4,'查询会员Member申请资料','/member/2/business-auth-detail'),(148,'125.41.185.246','PATCH','2019-09-09 14:20:34',1,4,'会员Member认证商家','/member/2/audit-business'),(149,'125.41.185.246','POST','2019-09-09 14:24:58',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(150,'125.41.185.246','POST','2019-09-09 14:25:00',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(151,'125.41.185.246','PATCH','2019-09-09 14:25:03',1,4,'会员MemberApplication认证通过审核','/member/member-application/2/pass'),(152,'125.41.185.246','POST','2019-09-09 14:25:03',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(153,'219.155.5.99','POST','2019-09-11 17:12:34',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(154,'219.155.5.99','POST','2019-09-11 17:12:34',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(155,'219.155.5.99','POST','2019-09-11 17:12:34',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(156,'219.155.5.99','POST','2019-09-11 17:12:34',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(157,'219.155.5.99','POST','2019-09-11 17:12:34',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(158,'219.155.5.99','POST','2019-09-11 17:12:34',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(159,'219.155.5.99','POST','2019-09-11 17:12:42',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(160,'219.155.5.99','POST','2019-09-11 17:12:46',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(161,'219.155.5.99','POST','2019-09-11 17:12:47',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(162,'219.155.5.99','POST','2019-09-11 17:12:47',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(163,'219.155.5.99','POST','2019-09-11 17:12:47',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(164,'219.155.5.99','POST','2019-09-11 17:12:47',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(165,'219.155.5.99','POST','2019-09-11 17:12:48',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(166,'219.155.5.99','POST','2019-09-11 17:12:48',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(167,'219.155.5.99','POST','2019-09-11 17:12:48',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(168,'219.155.5.99','POST','2019-09-11 17:12:48',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(169,'219.155.5.99','POST','2019-09-11 17:12:49',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(170,'219.155.5.99','POST','2019-09-11 17:12:58',1,6,'后台货币Coin详情','/system/coin/detail'),(171,'219.155.5.99','POST','2019-09-11 17:13:16',1,6,'后台货币Coin详情','/system/coin/detail'),(172,'219.155.5.99','POST','2019-09-11 17:27:59',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(173,'219.155.5.99','POST','2019-09-11 17:35:18',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(174,'219.155.5.99','POST','2019-09-11 17:49:30',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(175,'219.155.5.99','POST','2019-09-11 20:13:55',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(176,'219.155.5.99','POST','2019-09-11 20:14:04',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(177,'219.155.5.99','POST','2019-09-11 20:14:05',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(178,'219.155.5.99','POST','2019-09-11 20:14:05',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(179,'219.155.5.99','POST','2019-09-11 20:14:05',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(180,'219.155.5.99','POST','2019-09-11 20:14:05',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(181,'219.155.5.99','POST','2019-09-11 20:14:06',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(182,'219.155.5.99','POST','2019-09-11 20:14:06',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(183,'219.155.5.99','POST','2019-09-11 20:15:33',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(184,'219.155.5.99','POST','2019-09-11 20:15:33',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(185,'219.155.5.99','POST','2019-09-11 20:15:33',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(186,'219.155.5.99','POST','2019-09-11 20:15:33',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(187,'219.155.5.99','POST','2019-09-11 20:15:33',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(188,'219.155.5.99','POST','2019-09-11 20:15:33',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(189,'219.155.5.99','POST','2019-09-11 20:47:47',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(190,'219.155.5.99','POST','2019-09-11 20:47:47',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(191,'219.155.5.99','POST','2019-09-11 20:47:47',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(192,'219.155.5.99','POST','2019-09-11 20:47:47',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(193,'219.155.5.99','POST','2019-09-11 20:47:47',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(194,'219.155.5.99','POST','2019-09-11 20:47:47',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(195,'219.155.5.99','POST','2019-09-11 20:47:55',-1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(196,'219.155.5.99','POST','2019-09-11 20:48:04',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(197,'219.155.5.99','POST','2019-09-11 20:48:04',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(198,'219.155.5.99','POST','2019-09-11 20:48:04',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(199,'219.155.5.99','POST','2019-09-11 20:48:04',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(200,'219.155.5.99','POST','2019-09-11 20:48:04',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(201,'219.155.5.99','POST','2019-09-11 20:48:04',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(202,'219.155.5.99','POST','2019-09-11 20:48:04',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(203,'219.155.5.99','POST','2019-09-11 20:48:06',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(204,'219.155.5.99','POST','2019-09-11 20:48:06',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(205,'219.155.5.99','POST','2019-09-11 20:48:06',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(206,'219.155.5.99','POST','2019-09-11 20:48:06',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(207,'219.155.5.99','POST','2019-09-11 20:48:06',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(208,'219.155.5.99','POST','2019-09-11 20:48:06',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(209,'219.155.5.99','POST','2019-09-11 20:49:39',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(210,'219.155.5.99','POST','2019-09-11 20:49:39',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(211,'219.155.5.99','POST','2019-09-11 20:49:39',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(212,'219.155.5.99','POST','2019-09-11 20:49:39',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(213,'219.155.5.99','POST','2019-09-11 20:49:39',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(214,'219.155.5.99','POST','2019-09-11 20:49:39',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(215,'219.155.5.99','POST','2019-09-11 20:49:46',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(216,'219.155.5.99','POST','2019-09-11 20:49:52',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(217,'219.155.5.99','POST','2019-09-11 20:49:53',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(218,'219.155.5.99','POST','2019-09-11 20:49:53',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(219,'219.155.5.99','POST','2019-09-11 20:49:53',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(220,'219.155.5.99','POST','2019-09-11 20:49:53',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(221,'219.155.5.99','POST','2019-09-11 20:49:54',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(222,'219.155.5.99','POST','2019-09-11 20:49:54',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(223,'219.155.5.99','POST','2019-09-11 20:49:54',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(224,'219.155.5.99','POST','2019-09-11 20:49:54',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(225,'219.155.5.99','POST','2019-09-11 20:49:55',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(226,'219.155.5.99','POST','2019-09-11 20:50:06',1,6,'后台货币Coin详情','/system/coin/detail'),(227,'219.155.5.99','POST','2019-09-11 20:50:14',1,6,'更新后台货币Coin','/system/coin/update'),(228,'219.155.5.99','POST','2019-09-11 20:50:19',1,6,'后台货币Coin详情','/system/coin/detail'),(229,'219.155.5.99','POST','2019-09-11 20:50:44',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(230,'219.155.5.99','POST','2019-09-11 20:50:45',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(231,'219.155.5.99','POST','2019-09-11 20:50:46',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(232,'219.155.5.99','POST','2019-09-11 20:50:46',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(233,'219.155.5.99','POST','2019-09-11 20:50:46',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(234,'219.155.5.99','POST','2019-09-11 20:50:46',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(235,'219.155.5.99','POST','2019-09-11 20:50:47',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(236,'219.155.5.99','POST','2019-09-11 20:50:47',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(237,'219.155.5.99','POST','2019-09-11 20:51:08',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(238,'219.155.5.99','POST','2019-09-11 20:51:09',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(239,'219.155.5.99','POST','2019-09-11 20:51:09',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(240,'219.155.5.99','POST','2019-09-11 20:51:10',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(241,'219.155.5.99','POST','2019-09-11 20:51:10',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(242,'219.155.5.99','POST','2019-09-11 20:51:10',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(243,'219.155.5.99','POST','2019-09-11 20:51:10',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(244,'219.155.5.99','POST','2019-09-11 20:51:10',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(245,'219.155.5.99','POST','2019-09-11 20:51:10',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(246,'219.155.5.99','POST','2019-09-11 20:51:21',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(247,'219.155.5.99','POST','2019-09-11 21:02:28',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(248,'219.155.5.99','POST','2019-09-11 21:02:29',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(249,'219.155.5.99','POST','2019-09-11 21:02:29',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(250,'219.155.5.99','POST','2019-09-11 21:02:29',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(251,'219.155.5.99','POST','2019-09-11 21:02:29',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(252,'219.155.5.99','POST','2019-09-11 21:02:29',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(253,'219.155.5.99','POST','2019-09-11 21:02:29',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(254,'219.155.5.99','POST','2019-09-11 21:03:06',1,0,'邀请管理多条件查询','/invite/management/query'),(255,'219.155.5.99','POST','2019-09-11 21:03:15',1,0,'根据id查询一级二级用户','/invite/management/info'),(256,'219.155.5.99','POST','2019-09-11 21:03:23',1,0,'根据id查询一级二级用户','/invite/management/info'),(257,'219.155.5.99','POST','2019-09-11 21:03:26',1,0,'根据id查询一级二级用户','/invite/management/info'),(258,'219.155.5.99','POST','2019-09-11 21:03:28',1,0,'根据id查询一级二级用户','/invite/management/info'),(259,'219.155.5.99','POST','2019-09-11 21:03:49',1,0,'邀请管理多条件查询','/invite/management/query'),(260,'219.155.5.99','POST','2019-09-11 21:03:55',1,0,'邀请管理多条件查询','/invite/management/query'),(261,'219.155.5.99','POST','2019-09-11 21:04:03',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(262,'219.155.5.99','POST','2019-09-11 21:04:05',1,0,'邀请管理多条件查询','/invite/management/query'),(263,'219.155.5.99','POST','2019-09-11 21:04:07',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(264,'219.155.5.99','POST','2019-09-11 21:04:16',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(265,'219.155.5.99','POST','2019-09-11 21:04:22',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(266,'219.155.5.99','POST','2019-09-11 21:04:22',1,6,'查询所有Coin','/system/coin/all'),(267,'219.155.5.99','POST','2019-09-11 21:04:26',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(268,'219.155.5.99','POST','2019-09-11 21:04:30',1,4,'分页查找会员Member','/member/page-query'),(269,'219.155.5.99','POST','2019-09-11 21:05:36',1,0,'邀请管理多条件查询','/invite/management/query'),(270,'219.155.5.99','POST','2019-09-11 21:06:24',1,4,'分页查找会员Member','/member/page-query'),(271,'219.155.5.99','POST','2019-09-11 21:06:38',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(272,'219.155.5.99','POST','2019-09-11 21:06:57',1,4,'余额管理','/member/member-wallet/balance'),(273,'219.155.5.99','POST','2019-09-11 21:07:06',1,4,'余额管理','/member/member-wallet/balance'),(274,'219.155.5.99','POST','2019-09-11 21:07:14',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(275,'219.155.5.99','POST','2019-09-11 21:07:14',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(276,'219.155.5.99','POST','2019-09-11 21:07:14',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(277,'219.155.5.99','POST','2019-09-11 21:07:14',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(278,'219.155.5.99','POST','2019-09-11 21:07:14',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(279,'219.155.5.99','POST','2019-09-11 21:07:14',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(280,'219.155.5.99','POST','2019-09-11 21:07:16',1,4,'余额管理','/member/member-wallet/balance'),(281,'219.155.5.99','POST','2019-09-11 21:07:19',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(282,'219.155.5.99','POST','2019-09-11 21:07:19',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(283,'219.155.5.99','POST','2019-09-11 21:07:19',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(284,'219.155.5.99','POST','2019-09-11 21:07:19',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(285,'219.155.5.99','POST','2019-09-11 21:07:19',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(286,'219.155.5.99','POST','2019-09-11 21:07:19',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(287,'219.155.5.99','POST','2019-09-11 21:07:29',1,4,'会员积分记录查询','/integration/record/query_page'),(288,'219.155.5.99','POST','2019-09-11 21:07:47',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(289,'219.155.5.99','POST','2019-09-11 21:07:50',1,4,'会员积分记录查询','/integration/record/query_page'),(290,'219.155.5.99','POST','2019-09-11 21:07:57',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(291,'219.155.5.99','POST','2019-09-11 21:08:05',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(292,'219.155.5.99','POST','2019-09-11 21:08:15',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(293,'219.155.5.99','POST','2019-09-11 21:08:15',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(294,'219.155.5.99','POST','2019-09-11 21:08:18',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(295,'219.155.5.99','POST','2019-09-11 21:08:44',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(296,'219.155.5.99','POST','2019-09-11 21:08:52',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(297,'219.155.5.99','POST','2019-09-11 21:09:14',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(298,'219.155.5.99','POST','2019-09-11 21:09:17',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(299,'219.155.5.99','POST','2019-09-11 21:09:54',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(300,'219.155.5.99','POST','2019-09-11 21:11:07',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(301,'219.155.5.99','POST','2019-09-11 21:11:09',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(302,'219.155.5.99','POST','2019-09-11 21:11:13',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(303,'219.155.5.99','POST','2019-09-11 21:11:13',1,2,'exchangeOrder详情','/exchange/exchange-order/detail'),(304,'219.155.5.99','POST','2019-09-11 21:11:49',1,4,'分页查找会员Member','/member/page-query'),(305,'219.155.5.99','POST','2019-09-11 21:11:51',1,4,'分页查找会员Member','/member/page-query'),(306,'219.155.5.99','POST','2019-09-11 21:11:52',1,4,'分页查找会员Member','/member/page-query'),(307,'219.155.5.99','POST','2019-09-11 21:11:53',1,4,'分页查找会员Member','/member/page-query'),(308,'219.155.5.99','POST','2019-09-11 21:11:55',1,0,'邀请管理多条件查询','/invite/management/query'),(309,'219.155.5.99','POST','2019-09-11 21:12:56',1,4,'分页查找会员Member','/member/page-query'),(310,'219.155.5.99','POST','2019-09-11 21:13:02',1,0,'邀请管理多条件查询','/invite/management/query'),(311,'219.155.5.99','POST','2019-09-11 21:16:52',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(312,'219.155.5.99','POST','2019-09-11 21:16:53',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(313,'219.155.5.99','POST','2019-09-11 21:16:53',1,6,'查询所有Coin','/system/coin/all'),(314,'219.155.5.99','POST','2019-09-11 21:16:54',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(315,'219.155.5.99','POST','2019-09-11 21:16:57',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(316,'219.155.5.99','POST','2019-09-11 21:16:57',1,6,'查询所有Coin','/system/coin/all'),(317,'219.155.5.99','POST','2019-09-11 21:16:59',1,4,'分页查找会员Member','/member/page-query'),(318,'219.155.5.99','POST','2019-09-11 21:17:00',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(319,'219.155.5.99','POST','2019-09-11 21:17:01',1,4,'余额管理','/member/member-wallet/balance'),(320,'219.155.5.99','POST','2019-09-11 21:17:03',1,4,'余额管理','/member/member-wallet/balance'),(321,'219.155.5.99','POST','2019-09-11 21:17:05',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(322,'219.155.5.99','POST','2019-09-11 21:17:05',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(323,'219.155.5.99','POST','2019-09-11 21:17:05',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(324,'219.155.5.99','POST','2019-09-11 21:17:05',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(325,'219.155.5.99','POST','2019-09-11 21:17:06',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(326,'219.155.5.99','POST','2019-09-11 21:17:06',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(327,'219.155.5.99','POST','2019-09-11 21:17:07',1,4,'会员积分记录查询','/integration/record/query_page'),(328,'219.155.5.99','POST','2019-09-11 21:17:09',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(329,'219.155.5.99','POST','2019-09-11 21:17:10',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(330,'219.155.5.99','POST','2019-09-11 21:17:11',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(331,'219.155.5.99','POST','2019-09-11 21:17:11',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(332,'219.155.5.99','POST','2019-09-11 21:17:12',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(333,'219.155.5.99','POST','2019-09-11 21:17:17',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(334,'219.155.5.99','POST','2019-09-11 21:17:18',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(335,'219.155.5.99','POST','2019-09-11 21:18:04',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(336,'219.155.5.99','POST','2019-09-11 21:19:22',1,1,'上传oss图片','/common/upload/oss/image'),(337,'219.155.5.99','POST','2019-09-11 21:20:14',1,0,'创建系统广告','/cms/system-advertise/create'),(338,'219.155.5.99','POST','2019-09-11 21:20:14',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(339,'219.155.5.99','POST','2019-09-11 21:22:34',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(340,'219.155.5.99','POST','2019-09-11 21:22:41',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(341,'219.155.5.99','GET','2019-09-11 21:23:09',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(342,'219.155.5.99','POST','2019-09-11 21:23:12',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(343,'219.155.5.99','POST','2019-09-11 21:23:48',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(344,'219.155.5.99','POST','2019-09-11 21:23:48',1,3,'充币记录','/finance/member-deposit/page-query'),(345,'219.155.5.99','POST','2019-09-11 21:23:51',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(346,'219.155.5.99','POST','2019-09-11 21:24:22',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(347,'219.155.5.99','POST','2019-09-11 21:24:22',1,3,'充币记录','/finance/member-deposit/page-query'),(348,'219.155.5.99','POST','2019-09-11 21:24:26',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(349,'219.155.5.99','POST','2019-09-11 21:24:26',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(350,'219.155.5.99','POST','2019-09-11 21:24:28',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(351,'219.155.5.99','GET','2019-09-11 21:24:28',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(352,'219.155.5.99','POST','2019-09-11 21:24:31',1,6,'全部权限树Menu','/system/role/permission/all'),(353,'219.155.5.99','POST','2019-09-11 21:24:31',1,6,'所有角色SysRole','/system/role/all'),(354,'219.155.5.99','POST','2019-09-11 21:24:33',1,6,'分页查找后台用户admin','/system/employee/page-query'),(355,'219.155.5.99','POST','2019-09-11 21:24:37',1,6,'所有角色SysRole','/system/role/all'),(356,'219.155.5.99','POST','2019-09-11 21:24:37',1,6,'全部权限树Menu','/system/role/permission/all'),(357,'219.155.5.99','POST','2019-09-11 21:24:48',1,6,'分页查找后台用户admin','/system/employee/page-query'),(358,'219.155.5.99','POST','2019-09-11 21:24:51',1,6,'所有部门Department','/system/department/all'),(359,'219.155.5.99','POST','2019-09-11 21:25:24',1,6,'分页查找后台用户admin','/system/employee/page-query'),(360,'219.155.5.99','POST','2019-09-11 21:25:37',1,6,'全部权限树Menu','/system/role/permission/all'),(361,'219.155.5.99','POST','2019-09-11 21:25:37',1,6,'所有角色SysRole','/system/role/all'),(362,'219.155.5.99','POST','2019-09-11 21:25:40',1,6,'分页查找后台用户admin','/system/employee/page-query'),(363,'219.155.5.99','POST','2019-09-11 21:25:41',1,6,'所有部门Department','/system/department/all'),(364,'219.155.5.99','GET','2019-09-11 21:25:55',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(365,'219.155.5.99','POST','2019-09-11 21:26:00',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(366,'219.155.5.99','POST','2019-09-11 21:26:05',1,6,'分页查询权限','/system/permission/page-query'),(367,'219.155.5.99','GET','2019-09-11 21:26:17',1,4,'所有会员等级','/member/grade/all'),(368,'219.155.5.99','GET','2019-09-11 21:27:17',1,4,'所有会员等级','/member/grade/all'),(369,'219.155.5.99','POST','2019-09-11 21:27:21',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(370,'219.155.5.99','POST','2019-09-11 21:27:38',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(371,'219.155.5.99','POST','2019-09-11 21:27:38',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(372,'219.155.5.99','POST','2019-09-11 21:27:39',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(373,'219.155.5.99','POST','2019-09-11 21:27:39',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(374,'219.155.5.99','POST','2019-09-11 21:27:39',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(375,'219.155.5.99','POST','2019-09-11 21:27:39',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(376,'219.155.5.99','POST','2019-09-11 21:40:47',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(377,'219.155.5.99','POST','2019-09-11 21:40:50',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(378,'219.155.5.99','PATCH','2019-09-11 21:40:54',1,4,'会员MemberApplication认证通过审核','/member/member-application/3/pass'),(379,'219.155.5.99','POST','2019-09-11 21:40:54',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(380,'219.155.5.99','POST','2019-09-11 21:41:02',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(381,'219.155.5.99','POST','2019-09-11 21:47:51',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(382,'219.155.5.99','POST','2019-09-11 21:49:59',1,4,'分页查找会员Member','/member/page-query'),(383,'219.155.5.99','POST','2019-09-11 21:50:03',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(384,'219.155.5.99','POST','2019-09-11 21:50:03',1,4,'会员Member详情','/member/detail'),(385,'219.155.5.99','POST','2019-09-11 21:50:13',1,4,'分页查找会员Member','/member/page-query'),(386,'219.155.5.99','POST','2019-09-11 21:50:13',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(387,'219.155.5.99','POST','2019-09-11 21:50:13',1,4,'会员Member详情','/member/detail'),(388,'219.155.5.99','POST','2019-09-11 21:50:22',1,4,'分页查找会员Member','/member/page-query'),(389,'219.155.5.99','POST','2019-09-11 21:50:27',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(390,'219.155.5.99','POST','2019-09-11 21:50:27',1,4,'会员Member详情','/member/detail'),(391,'219.155.5.99','POST','2019-09-11 21:51:48',1,4,'分页查找会员Member','/member/page-query'),(392,'219.155.5.99','POST','2019-09-11 21:56:53',1,4,'分页查找会员Member','/member/page-query'),(393,'219.155.5.99','POST','2019-09-11 21:56:57',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(394,'219.155.5.99','POST','2019-09-11 21:56:57',1,4,'会员Member详情','/member/detail'),(395,'219.155.5.99','POST','2019-09-11 21:58:50',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(396,'219.155.5.99','POST','2019-09-11 21:58:53',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(397,'219.155.5.99','PATCH','2019-09-11 21:58:56',1,4,'会员MemberApplication认证通过审核','/member/member-application/4/pass'),(398,'219.155.5.99','POST','2019-09-11 21:58:56',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(399,'219.155.5.99','POST','2019-09-12 09:10:48',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(400,'219.155.5.99','POST','2019-09-12 09:10:48',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(401,'219.155.5.99','POST','2019-09-12 09:10:48',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(402,'219.155.5.99','POST','2019-09-12 09:10:48',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(403,'219.155.5.99','POST','2019-09-12 09:10:48',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(404,'219.155.5.99','POST','2019-09-12 09:10:48',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(405,'219.155.5.99','POST','2019-09-12 09:10:53',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(406,'219.155.5.99','POST','2019-09-12 09:11:07',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(407,'219.155.5.99','POST','2019-09-12 09:11:08',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(408,'219.155.5.99','POST','2019-09-12 09:11:08',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(409,'219.155.5.99','POST','2019-09-12 09:11:09',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(410,'219.155.5.99','POST','2019-09-12 09:11:09',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(411,'219.155.5.99','POST','2019-09-12 09:11:09',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(412,'219.155.5.99','POST','2019-09-12 09:11:09',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(413,'219.155.5.99','POST','2019-09-12 09:11:10',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(414,'219.155.5.99','POST','2019-09-12 09:11:10',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(415,'219.155.5.99','POST','2019-09-12 09:11:15',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(416,'219.155.5.99','POST','2019-09-12 09:11:36',1,6,'后台货币Coin详情','/system/coin/detail'),(417,'219.155.5.99','POST','2019-09-12 09:14:51',1,6,'后台货币Coin详情','/system/coin/detail'),(418,'219.155.5.99','POST','2019-09-12 09:18:16',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(419,'219.155.5.99','POST','2019-09-12 09:18:16',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(420,'219.155.5.99','POST','2019-09-12 09:18:17',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(421,'219.155.5.99','POST','2019-09-12 09:18:17',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(422,'219.155.5.99','POST','2019-09-12 09:18:17',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(423,'219.155.5.99','POST','2019-09-12 09:18:17',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(424,'219.155.5.99','POST','2019-09-12 09:22:50',-1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(425,'219.155.5.99','POST','2019-09-12 09:22:59',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(426,'219.155.5.99','POST','2019-09-12 09:22:59',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(427,'219.155.5.99','POST','2019-09-12 09:22:59',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(428,'219.155.5.99','POST','2019-09-12 09:22:59',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(429,'219.155.5.99','POST','2019-09-12 09:23:00',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(430,'219.155.5.99','POST','2019-09-12 09:23:00',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(431,'219.155.5.99','POST','2019-09-12 09:23:00',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(432,'219.155.5.99','POST','2019-09-12 09:23:00',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(433,'219.155.5.99','POST','2019-09-12 09:23:01',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(434,'219.155.5.99','POST','2019-09-12 09:23:01',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(435,'219.155.5.99','POST','2019-09-12 09:23:02',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(436,'219.155.5.99','POST','2019-09-12 09:23:05',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(437,'219.155.5.99','POST','2019-09-12 09:23:06',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(438,'219.155.5.99','POST','2019-09-12 09:28:58',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(439,'219.155.5.99','POST','2019-09-12 09:29:49',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(440,'219.155.5.99','POST','2019-09-12 09:29:56',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(441,'219.155.5.99','POST','2019-09-12 09:30:04',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(442,'219.155.5.99','POST','2019-09-12 09:30:09',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(443,'219.155.5.99','POST','2019-09-12 09:30:10',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(444,'219.155.5.99','POST','2019-09-12 09:30:13',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(445,'219.155.5.99','POST','2019-09-12 09:30:30',1,0,'创建系统帮助','/cms/system-help/create'),(446,'219.155.5.99','POST','2019-09-12 09:30:31',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(447,'219.155.5.99','POST','2019-09-12 09:30:44',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(448,'219.155.5.99','POST','2019-09-12 09:30:53',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(449,'219.155.5.99','POST','2019-09-12 09:30:55',1,0,'系统帮助详情','/cms/system-help/detail'),(450,'219.155.5.99','POST','2019-09-12 09:30:55',1,0,'系统帮助详情','/cms/system-help/detail'),(451,'219.155.5.99','POST','2019-09-12 09:31:13',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(452,'219.155.5.99','POST','2019-09-12 09:31:14',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(453,'219.155.5.99','POST','2019-09-12 09:31:18',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(454,'219.155.5.99','POST','2019-09-12 09:31:53',1,1,'上传oss图片','/common/upload/oss/image'),(455,'219.155.5.99','POST','2019-09-12 09:31:55',1,0,'创建系统广告','/cms/system-advertise/create'),(456,'219.155.5.99','POST','2019-09-12 09:31:55',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(457,'219.155.5.99','POST','2019-09-12 09:33:15',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(458,'219.155.5.99','GET','2019-09-12 09:33:17',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(459,'219.155.5.99','POST','2019-09-12 09:33:17',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(460,'219.155.5.99','POST','2019-09-12 09:52:49',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(461,'219.155.5.99','POST','2019-09-12 09:53:13',1,1,'上传oss图片','/common/upload/oss/image'),(462,'219.155.5.99','POST','2019-09-12 09:53:18',1,1,'上传oss图片','/common/upload/oss/image'),(463,'219.155.5.99','POST','2019-09-12 09:53:20',1,0,'创建系统广告','/cms/system-advertise/create'),(464,'219.155.5.99','POST','2019-09-12 09:53:20',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(465,'219.155.5.99','POST','2019-09-12 10:42:52',-1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(466,'219.155.5.99','POST','2019-09-12 10:43:00',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(467,'219.155.5.99','POST','2019-09-12 10:43:01',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(468,'219.155.5.99','POST','2019-09-12 10:43:01',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(469,'219.155.5.99','POST','2019-09-12 10:43:01',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(470,'219.155.5.99','POST','2019-09-12 10:43:01',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(471,'219.155.5.99','POST','2019-09-12 10:43:01',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(472,'219.155.5.99','POST','2019-09-12 10:43:01',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(473,'219.155.5.99','POST','2019-09-12 10:43:02',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(474,'219.155.5.99','POST','2019-09-12 10:43:02',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(475,'219.155.5.99','POST','2019-09-12 10:43:02',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(476,'219.155.5.99','POST','2019-09-12 10:43:02',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(477,'219.155.5.99','POST','2019-09-12 10:43:02',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(478,'219.155.5.99','POST','2019-09-12 10:43:02',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(479,'219.155.5.99','POST','2019-09-12 10:43:10',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(480,'219.155.5.99','POST','2019-09-12 10:43:11',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(481,'219.155.5.99','POST','2019-09-12 10:43:12',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(482,'219.155.5.99','POST','2019-09-12 10:43:24',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(483,'219.155.5.99','POST','2019-09-12 10:43:28',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(484,'219.155.5.99','POST','2019-09-12 10:43:29',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(485,'219.155.5.99','POST','2019-09-12 10:43:29',1,6,'查询所有Coin','/system/coin/all'),(486,'219.155.5.99','POST','2019-09-12 10:43:34',1,4,'分页查找会员Member','/member/page-query'),(487,'219.155.5.99','POST','2019-09-12 10:43:37',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(488,'219.155.5.99','POST','2019-09-12 10:43:39',1,4,'余额管理','/member/member-wallet/balance'),(489,'219.155.5.99','POST','2019-09-12 10:43:41',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(490,'219.155.5.99','POST','2019-09-12 10:43:41',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(491,'219.155.5.99','POST','2019-09-12 10:43:41',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(492,'219.155.5.99','POST','2019-09-12 10:43:41',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(493,'219.155.5.99','POST','2019-09-12 10:43:42',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(494,'219.155.5.99','POST','2019-09-12 10:43:42',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(495,'219.155.5.99','POST','2019-09-12 10:45:18',1,4,'会员积分记录查询','/integration/record/query_page'),(496,'219.155.5.99','POST','2019-09-12 10:46:26',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(497,'219.155.5.99','POST','2019-09-12 10:46:27',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(498,'219.155.5.99','POST','2019-09-12 10:46:27',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(499,'219.155.5.99','POST','2019-09-12 10:46:27',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(500,'219.155.5.99','POST','2019-09-12 10:46:27',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(501,'219.155.5.99','POST','2019-09-12 10:46:27',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(502,'219.155.5.99','POST','2019-09-12 10:46:27',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(503,'219.155.5.99','POST','2019-09-12 10:46:31',1,0,'邀请管理多条件查询','/invite/management/query'),(504,'219.155.5.99','POST','2019-09-12 10:46:34',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(505,'219.155.5.99','POST','2019-09-12 10:46:40',1,6,'查询所有Coin','/system/coin/all'),(506,'219.155.5.99','POST','2019-09-12 10:46:40',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(507,'219.155.5.99','POST','2019-09-12 10:46:42',1,4,'分页查找会员Member','/member/page-query'),(508,'219.155.5.99','POST','2019-09-12 10:46:44',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(509,'219.155.5.99','POST','2019-09-12 10:46:46',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(510,'219.155.5.99','POST','2019-09-12 10:46:50',1,4,'余额管理','/member/member-wallet/balance'),(511,'219.155.5.99','POST','2019-09-12 10:46:53',1,4,'余额管理','/member/member-wallet/balance'),(512,'219.155.5.99','POST','2019-09-12 10:46:55',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(513,'219.155.5.99','POST','2019-09-12 10:46:55',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(514,'219.155.5.99','POST','2019-09-12 10:46:55',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(515,'219.155.5.99','POST','2019-09-12 10:46:55',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(516,'219.155.5.99','POST','2019-09-12 10:46:55',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(517,'219.155.5.99','POST','2019-09-12 10:46:55',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(518,'219.155.5.99','POST','2019-09-12 10:46:57',1,4,'会员积分记录查询','/integration/record/query_page'),(519,'219.155.5.99','POST','2019-09-12 10:47:01',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(520,'219.155.5.99','POST','2019-09-12 10:47:02',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(521,'219.155.5.99','POST','2019-09-12 10:47:03',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(522,'219.155.5.99','POST','2019-09-12 10:47:03',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(523,'219.155.5.99','POST','2019-09-12 10:47:04',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(524,'219.155.5.99','POST','2019-09-12 10:47:09',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(525,'219.155.5.99','POST','2019-09-12 10:47:10',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(526,'219.155.5.99','POST','2019-09-12 10:47:15',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(527,'219.155.5.99','POST','2019-09-12 10:47:16',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(528,'219.155.5.99','POST','2019-09-12 10:47:42',1,4,'余额管理','/member/member-wallet/balance'),(529,'219.155.5.99','POST','2019-09-12 10:47:44',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(530,'219.155.5.99','POST','2019-09-12 10:47:44',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(531,'219.155.5.99','POST','2019-09-12 10:47:44',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(532,'219.155.5.99','POST','2019-09-12 10:47:44',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(533,'219.155.5.99','POST','2019-09-12 10:47:44',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(534,'219.155.5.99','POST','2019-09-12 10:47:44',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(535,'219.155.5.99','POST','2019-09-12 10:48:06',-1,6,'分页查询权限','/system/permission/page-query'),(536,'219.155.5.99','POST','2019-09-12 10:48:10',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(537,'219.155.5.99','POST','2019-09-12 10:48:10',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(538,'219.155.5.99','POST','2019-09-12 10:48:11',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(539,'219.155.5.99','POST','2019-09-12 10:48:11',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(540,'219.155.5.99','POST','2019-09-12 10:48:11',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(541,'219.155.5.99','POST','2019-09-12 10:48:11',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(542,'219.155.5.99','POST','2019-09-12 10:48:11',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(543,'219.155.5.99','POST','2019-09-12 10:48:11',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(544,'219.155.5.99','POST','2019-09-12 10:48:18',1,6,'分页查询权限','/system/permission/page-query'),(545,'219.155.5.99','POST','2019-09-12 10:48:20',1,6,'分页查询权限','/system/permission/page-query'),(546,'219.155.5.99','POST','2019-09-12 10:48:54',1,4,'余额管理','/member/member-wallet/balance'),(547,'219.155.5.99','POST','2019-09-12 10:48:56',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(548,'219.155.5.99','POST','2019-09-12 10:48:56',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(549,'219.155.5.99','POST','2019-09-12 10:48:56',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(550,'219.155.5.99','POST','2019-09-12 10:48:56',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(551,'219.155.5.99','POST','2019-09-12 10:48:56',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(552,'219.155.5.99','POST','2019-09-12 10:48:56',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(553,'219.155.5.99','POST','2019-09-12 10:49:37',1,6,'创建/修改权限','/system/permission/merge'),(554,'219.155.5.99','POST','2019-09-12 10:49:37',1,6,'分页查询权限','/system/permission/page-query'),(555,'219.155.5.99','POST','2019-09-12 10:51:57',1,6,'分页查询权限','/system/permission/page-query'),(556,'219.155.5.99','POST','2019-09-12 10:58:58',1,6,'分页查询权限','/system/permission/page-query'),(557,'219.155.5.99','POST','2019-09-12 10:59:01',1,6,'分页查询权限','/system/permission/page-query'),(558,'219.155.5.99','POST','2019-09-12 11:01:01',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(559,'219.155.5.99','POST','2019-09-12 11:01:07',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(560,'219.155.5.99','POST','2019-09-12 11:01:07',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(561,'219.155.5.99','POST','2019-09-12 11:01:07',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(562,'219.155.5.99','POST','2019-09-12 11:01:08',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(563,'219.155.5.99','POST','2019-09-12 11:01:08',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(564,'219.155.5.99','POST','2019-09-12 11:01:08',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(565,'219.155.5.99','POST','2019-09-12 11:01:08',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(566,'219.155.5.99','POST','2019-09-12 11:04:43',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(567,'219.155.5.99','POST','2019-09-12 11:04:44',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(568,'219.155.5.99','POST','2019-09-12 11:04:44',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(569,'219.155.5.99','POST','2019-09-12 11:04:44',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(570,'219.155.5.99','POST','2019-09-12 11:04:44',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(571,'219.155.5.99','POST','2019-09-12 11:04:44',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(572,'219.155.5.99','POST','2019-09-12 11:04:44',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(573,'219.155.5.99','POST','2019-09-12 11:04:56',1,0,'邀请管理多条件查询','/invite/management/query'),(574,'219.155.5.99','POST','2019-09-12 11:05:44',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(575,'219.155.5.99','POST','2019-09-12 11:05:59',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(576,'219.155.5.99','POST','2019-09-12 11:07:40',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(577,'219.155.5.99','POST','2019-09-12 11:07:42',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(578,'219.155.5.99','POST','2019-09-12 11:07:42',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(579,'219.155.5.99','POST','2019-09-12 11:07:42',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(580,'219.155.5.99','POST','2019-09-12 11:07:42',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(581,'219.155.5.99','POST','2019-09-12 11:07:42',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(582,'219.155.5.99','POST','2019-09-12 11:07:42',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(583,'219.155.5.99','POST','2019-09-12 11:08:22',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(584,'219.155.5.99','POST','2019-09-12 11:14:10',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(585,'219.155.5.99','POST','2019-09-12 11:14:10',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(586,'219.155.5.99','POST','2019-09-12 11:14:10',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(587,'219.155.5.99','POST','2019-09-12 11:14:10',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(588,'219.155.5.99','POST','2019-09-12 11:14:10',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(589,'219.155.5.99','POST','2019-09-12 11:14:10',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(590,'219.155.5.99','POST','2019-09-12 11:14:13',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(591,'219.155.5.99','POST','2019-09-12 11:14:14',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(592,'219.155.5.99','POST','2019-09-12 11:17:53',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(593,'219.155.5.99','POST','2019-09-12 11:17:53',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(594,'219.155.5.99','POST','2019-09-12 11:17:53',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(595,'219.155.5.99','POST','2019-09-12 11:17:53',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(596,'219.155.5.99','POST','2019-09-12 11:17:53',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(597,'219.155.5.99','POST','2019-09-12 11:17:53',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(598,'219.155.5.99','POST','2019-09-12 11:18:02',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(599,'219.155.5.99','POST','2019-09-12 11:19:13',-1,1,'上传oss图片','/common/upload/oss/image'),(600,'219.155.5.99','POST','2019-09-12 11:20:23',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(601,'219.155.5.99','POST','2019-09-12 11:20:50',1,4,'分页查找会员Member','/member/page-query'),(602,'219.155.5.99','POST','2019-09-12 11:20:51',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(603,'219.155.5.99','POST','2019-09-12 11:20:51',1,4,'会员Member详情','/member/detail'),(604,'219.155.5.99','POST','2019-09-12 11:21:30',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(605,'219.155.5.99','POST','2019-09-12 11:21:30',1,4,'会员Member详情','/member/detail'),(606,'219.155.5.99','POST','2019-09-12 11:21:30',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(607,'219.155.5.99','GET','2019-09-12 11:22:14',1,4,'查询法币账户','/member/member-wallet/otc/query/9'),(608,'219.155.5.99','POST','2019-09-12 11:22:16',1,4,'会员Member详情','/member/detail'),(609,'219.155.5.99','POST','2019-09-12 11:22:16',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(610,'219.155.5.99','GET','2019-09-12 11:22:18',1,4,'查询法币账户','/member/member-wallet/otc/query/9'),(611,'219.155.5.99','POST','2019-09-12 11:22:18',1,4,'会员Member详情','/member/detail'),(612,'219.155.5.99','POST','2019-09-12 11:22:19',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(613,'219.155.5.99','GET','2019-09-12 11:22:21',1,4,'查询法币账户','/member/member-wallet/otc/query/9'),(614,'219.155.5.99','POST','2019-09-12 11:22:22',1,4,'会员Member详情','/member/detail'),(615,'219.155.5.99','POST','2019-09-12 11:22:22',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(616,'219.155.5.99','POST','2019-09-12 11:22:25',1,4,'分页查找会员Member','/member/page-query'),(617,'219.155.5.99','POST','2019-09-12 11:22:28',1,4,'会员Member详情','/member/detail'),(618,'219.155.5.99','POST','2019-09-12 11:22:28',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(619,'219.155.5.99','POST','2019-09-12 11:22:29',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(620,'219.155.5.99','GET','2019-09-12 11:22:30',1,4,'查询法币账户','/member/member-wallet/otc/query/3'),(621,'219.155.5.99','POST','2019-09-12 11:22:34',1,4,'分页查找会员Member','/member/page-query'),(622,'219.155.5.99','POST','2019-09-12 11:22:38',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(623,'219.155.5.99','POST','2019-09-12 11:22:38',1,4,'会员Member详情','/member/detail'),(624,'219.155.5.99','POST','2019-09-12 11:22:38',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(625,'219.155.5.99','GET','2019-09-12 11:22:39',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(626,'219.155.5.99','POST','2019-09-12 11:22:41',1,4,'会员Member详情','/member/detail'),(627,'219.155.5.99','POST','2019-09-12 11:22:41',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(628,'219.155.5.99','POST','2019-09-12 11:22:47',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(629,'219.155.5.99','GET','2019-09-12 11:22:57',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(630,'219.155.5.99','POST','2019-09-12 11:22:58',1,4,'会员Member详情','/member/detail'),(631,'219.155.5.99','POST','2019-09-12 11:22:58',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(632,'219.155.5.99','GET','2019-09-12 11:22:59',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(633,'219.155.5.99','POST','2019-09-12 11:23:00',1,4,'会员Member详情','/member/detail'),(634,'219.155.5.99','POST','2019-09-12 11:23:00',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(635,'219.155.5.99','POST','2019-09-12 11:24:49',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(636,'219.155.5.99','POST','2019-09-12 11:24:49',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(637,'219.155.5.99','POST','2019-09-12 11:24:49',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(638,'219.155.5.99','POST','2019-09-12 11:24:49',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(639,'219.155.5.99','POST','2019-09-12 11:24:49',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(640,'219.155.5.99','POST','2019-09-12 11:24:49',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(641,'219.155.5.99','POST','2019-09-12 11:25:24',1,4,'余额管理','/member/member-wallet/balance'),(642,'219.155.5.99','POST','2019-09-12 11:25:30',1,4,'会员积分记录查询','/integration/record/query_page'),(643,'219.155.5.99','POST','2019-09-12 11:32:09',1,4,'会员Member详情','/member/detail'),(644,'219.155.5.99','POST','2019-09-12 11:32:09',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(645,'219.155.5.99','POST','2019-09-12 11:32:09',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(646,'219.155.5.99','POST','2019-09-12 11:32:10',1,4,'会员Member详情','/member/detail'),(647,'219.155.5.99','POST','2019-09-12 11:32:10',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(648,'219.155.5.99','POST','2019-09-12 11:32:11',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(649,'219.155.5.99','POST','2019-09-12 11:32:12',1,10,'分页查询糖果设置','/gift/page-query'),(650,'219.155.5.99','POST','2019-09-12 11:32:14',1,6,'查询所有Coin','/system/coin/all'),(651,'219.155.5.99','POST','2019-09-12 11:32:15',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(652,'219.155.5.99','POST','2019-09-12 11:32:17',1,6,'查询所有Coin','/system/coin/all'),(653,'219.155.5.99','POST','2019-09-12 11:32:18',1,10,'分页查询糖果设置','/gift/page-query'),(654,'219.155.5.99','POST','2019-09-12 11:32:19',1,6,'查询所有Coin','/system/coin/all'),(655,'219.155.5.99','POST','2019-09-12 11:32:19',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(656,'219.155.5.99','POST','2019-09-12 11:32:28',1,10,'分页查询糖果设置','/gift/page-query'),(657,'219.155.5.99','POST','2019-09-12 11:32:29',1,6,'查询所有Coin','/system/coin/all'),(658,'219.155.5.99','POST','2019-09-12 11:32:30',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(659,'219.155.5.99','POST','2019-09-12 11:32:32',1,6,'查询所有Coin','/system/coin/all'),(660,'219.155.5.99','POST','2019-09-12 11:32:36',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(661,'219.155.5.99','POST','2019-09-12 11:32:37',1,10,'分页查询糖果设置','/gift/page-query'),(662,'219.155.5.99','POST','2019-09-12 11:32:37',1,6,'查询所有Coin','/system/coin/all'),(663,'219.155.5.99','POST','2019-09-12 11:32:38',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(664,'219.155.5.99','POST','2019-09-12 11:32:43',1,4,'会员积分记录查询','/integration/record/query_page'),(665,'219.155.5.99','POST','2019-09-12 11:32:46',1,4,'余额管理','/member/member-wallet/balance'),(666,'219.155.5.99','POST','2019-09-12 11:32:55',1,0,'邀请管理多条件查询','/invite/management/query'),(667,'219.155.5.99','POST','2019-09-12 11:33:00',1,0,'邀请管理多条件查询','/invite/management/query'),(668,'219.155.5.99','POST','2019-09-12 11:33:02',1,0,'邀请管理多条件查询','/invite/management/query'),(669,'219.155.5.99','POST','2019-09-12 11:33:04',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(670,'219.155.5.99','POST','2019-09-12 11:33:05',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(671,'219.155.5.99','POST','2019-09-12 11:33:05',1,6,'查询所有Coin','/system/coin/all'),(672,'219.155.5.99','POST','2019-09-12 11:33:07',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(673,'219.155.5.99','POST','2019-09-12 11:33:11',1,4,'余额管理','/member/member-wallet/balance'),(674,'219.155.5.99','POST','2019-09-12 11:33:18',1,4,'会员积分记录查询','/integration/record/query_page'),(675,'219.155.5.99','POST','2019-09-12 11:33:18',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(676,'219.155.5.99','POST','2019-09-12 11:33:28',1,0,'邀请管理多条件查询','/invite/management/query'),(677,'219.155.5.99','POST','2019-09-12 11:33:29',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(678,'219.155.5.99','GET','2019-09-12 11:33:29',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(679,'219.155.5.99','POST','2019-09-12 11:33:30',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(680,'219.155.5.99','POST','2019-09-12 11:33:30',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(681,'219.155.5.99','POST','2019-09-12 11:33:30',1,0,'根据id查询一级二级用户','/invite/management/info'),(682,'219.155.5.99','POST','2019-09-12 11:33:31',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(683,'219.155.5.99','GET','2019-09-12 11:33:38',1,4,'所有会员等级','/member/grade/all'),(684,'219.155.5.99','POST','2019-09-12 11:33:40',1,6,'分页查询权限','/system/permission/page-query'),(685,'219.155.5.99','POST','2019-09-12 11:33:42',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(686,'219.155.5.99','GET','2019-09-12 11:33:47',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(687,'219.155.5.99','POST','2019-09-12 11:35:09',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(688,'219.155.5.99','POST','2019-09-12 11:35:09',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(689,'219.155.5.99','POST','2019-09-12 11:35:09',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(690,'219.155.5.99','POST','2019-09-12 11:35:09',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(691,'219.155.5.99','POST','2019-09-12 11:35:09',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(692,'219.155.5.99','POST','2019-09-12 11:35:09',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(693,'219.155.5.99','POST','2019-09-12 11:35:23',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(694,'219.155.5.99','POST','2019-09-12 11:35:23',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(695,'219.155.5.99','POST','2019-09-12 11:35:23',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(696,'219.155.5.99','POST','2019-09-12 11:35:24',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(697,'219.155.5.99','POST','2019-09-12 11:35:24',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(698,'219.155.5.99','POST','2019-09-12 11:35:24',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(699,'219.155.5.99','POST','2019-09-12 11:35:24',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(700,'219.155.5.99','POST','2019-09-12 11:35:24',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(701,'219.155.5.99','POST','2019-09-12 11:35:24',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(702,'219.155.5.99','POST','2019-09-12 11:35:26',1,10,'分页查询糖果设置','/gift/page-query'),(703,'219.155.5.99','POST','2019-09-12 11:35:28',1,6,'查询所有Coin','/system/coin/all'),(704,'219.155.5.99','POST','2019-09-12 11:35:29',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(705,'219.155.5.99','POST','2019-09-12 11:35:30',1,6,'查询所有Coin','/system/coin/all'),(706,'219.155.5.99','POST','2019-09-12 11:35:47',1,10,'新增发放糖果','/gift/save'),(707,'219.155.5.99','POST','2019-09-12 11:35:47',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(708,'219.155.5.99','POST','2019-09-12 11:35:51',1,6,'查询所有Coin','/system/coin/all'),(709,'219.155.5.99','POST','2019-09-12 11:35:52',1,10,'分页查询糖果设置','/gift/page-query'),(710,'219.155.5.99','POST','2019-09-12 11:36:25',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(711,'219.155.5.99','POST','2019-09-12 11:36:28',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(712,'219.155.5.99','POST','2019-09-12 11:36:30',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(713,'219.155.5.99','POST','2019-09-12 11:36:32',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(714,'219.155.5.99','POST','2019-09-12 11:36:33',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(715,'219.155.5.99','POST','2019-09-12 11:38:02',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(716,'219.155.5.99','POST','2019-09-12 11:38:17',1,2,'修改币币交易手续费exchangeCoin','/exchange/exchange-coin/alter-rate'),(717,'219.155.5.99','POST','2019-09-12 11:38:17',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(718,'219.155.5.99','POST','2019-09-12 11:38:25',1,2,'修改币币交易手续费exchangeCoin','/exchange/exchange-coin/alter-rate'),(719,'219.155.5.99','POST','2019-09-12 11:38:25',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(720,'219.155.5.99','POST','2019-09-12 11:38:43',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(721,'219.155.5.99','POST','2019-09-12 11:39:30',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(722,'219.155.5.99','POST','2019-09-12 11:39:36',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(723,'219.155.5.99','POST','2019-09-12 11:39:50',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(724,'219.155.5.99','GET','2019-09-12 11:39:52',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(725,'219.155.5.99','POST','2019-09-12 11:39:53',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(726,'219.155.5.99','POST','2019-09-12 11:39:54',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(727,'219.155.5.99','POST','2019-09-12 11:39:55',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(728,'219.155.5.99','POST','2019-09-12 11:39:57',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(729,'219.155.5.99','POST','2019-09-12 11:39:57',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(730,'219.155.5.99','POST','2019-09-12 11:39:58',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(731,'219.155.5.99','POST','2019-09-12 11:42:11',1,6,'判断后台登录输入手机验证码','/system/employee/check'),(732,'219.155.5.99','POST','2019-09-12 11:42:12',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(733,'219.155.5.99','POST','2019-09-12 11:42:14',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(734,'219.155.5.99','POST','2019-09-12 11:42:20',1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(735,'219.155.5.99','POST','2019-09-12 11:44:34',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(736,'219.155.5.99','POST','2019-09-12 11:44:36',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(737,'219.155.5.99','PATCH','2019-09-12 11:44:43',1,4,'会员MemberApplication认证通过审核','/member/member-application/1/pass'),(738,'219.155.5.99','POST','2019-09-12 11:44:43',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(739,'219.155.5.99','POST','2019-09-12 11:46:24',1,4,'分页查找会员Member','/member/page-query'),(740,'219.155.5.99','POST','2019-09-12 11:46:27',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(741,'219.155.5.99','POST','2019-09-12 11:46:27',1,4,'会员Member详情','/member/detail'),(742,'219.155.5.99','POST','2019-09-12 11:46:31',1,4,'分页查找会员Member','/member/page-query'),(743,'219.155.5.99','POST','2019-09-12 11:46:33',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(744,'219.155.5.99','POST','2019-09-12 11:46:33',1,4,'会员Member详情','/member/detail'),(745,'219.155.5.99','POST','2019-09-12 11:46:33',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(746,'219.155.5.99','POST','2019-09-12 11:46:39',1,4,'充币管理','/member/member-wallet/recharge'),(747,'219.155.5.99','POST','2019-09-12 11:46:40',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(748,'219.155.5.99','GET','2019-09-12 11:46:49',1,4,'查询法币账户','/member/member-wallet/otc/query/9'),(749,'219.155.5.99','POST','2019-09-12 11:46:52',1,4,'分页查找会员Member','/member/page-query'),(750,'219.155.5.99','POST','2019-09-12 11:46:54',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(751,'219.155.5.99','POST','2019-09-12 11:46:54',1,4,'会员Member详情','/member/detail'),(752,'219.155.5.99','POST','2019-09-12 11:46:54',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(753,'219.155.5.99','GET','2019-09-12 11:46:55',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(754,'219.155.5.99','POST','2019-09-12 11:46:57',1,4,'锁定法币钱包','/member/member-wallet/otc/lock-wallet'),(755,'219.155.5.99','GET','2019-09-12 11:46:57',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(756,'219.155.5.99','POST','2019-09-12 11:46:58',1,4,'解锁法币钱包','/member/member-wallet/otc/unlock-wallet'),(757,'219.155.5.99','GET','2019-09-12 11:46:58',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(758,'219.155.5.99','POST','2019-09-12 11:47:51',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(759,'219.155.5.99','POST','2019-09-12 11:47:53',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(760,'219.155.5.99','PATCH','2019-09-12 11:47:56',1,4,'会员MemberApplication认证通过审核','/member/member-application/5/pass'),(761,'219.155.5.99','POST','2019-09-12 11:47:56',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(762,'219.155.5.99','POST','2019-09-12 11:48:48',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(763,'219.155.5.99','POST','2019-09-12 11:48:51',1,6,'提交登录信息Admin','/system/employee/sign/in'),(764,'219.155.5.99','POST','2019-09-12 11:48:52',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(765,'219.155.5.99','POST','2019-09-12 11:48:52',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(766,'219.155.5.99','POST','2019-09-12 11:48:52',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(767,'219.155.5.99','POST','2019-09-12 11:48:52',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(768,'219.155.5.99','POST','2019-09-12 11:48:52',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(769,'219.155.5.99','POST','2019-09-12 11:48:52',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(770,'219.155.5.99','GET','2019-09-12 11:49:13',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(771,'219.155.5.99','POST','2019-09-12 11:49:14',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(772,'219.155.5.99','POST','2019-09-12 11:49:45',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(773,'219.155.5.99','POST','2019-09-12 11:50:49',1,4,'分页查找会员Member','/member/page-query'),(774,'219.155.5.99','POST','2019-09-12 11:50:52',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(775,'219.155.5.99','POST','2019-09-12 11:50:52',1,4,'会员Member详情','/member/detail'),(776,'219.155.5.99','POST','2019-09-12 11:50:52',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(777,'219.155.5.99','POST','2019-09-12 11:50:54',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(778,'219.155.5.99','POST','2019-09-12 11:50:55',1,4,'分页查找会员Member','/member/page-query'),(779,'219.155.5.99','POST','2019-09-12 11:50:57',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(780,'219.155.5.99','POST','2019-09-12 11:50:57',1,4,'会员Member详情','/member/detail'),(781,'219.155.5.99','POST','2019-09-12 11:50:57',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(782,'219.155.5.99','GET','2019-09-12 11:51:00',1,4,'查询法币账户','/member/member-wallet/otc/query/2'),(783,'219.155.5.99','POST','2019-09-12 11:51:11',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(784,'219.155.5.99','POST','2019-09-12 11:51:13',1,6,'后台货币Coin详情','/system/coin/detail'),(785,'219.155.5.99','POST','2019-09-12 11:51:20',1,6,'后台货币Coin详情','/system/coin/detail'),(786,'219.155.5.99','POST','2019-09-12 11:51:29',1,6,'更新后台货币Coin','/system/coin/update'),(787,'219.155.5.99','GET','2019-09-12 11:52:49',1,4,'查询会员Member申请资料','/member/3/business-auth-detail'),(788,'219.155.5.99','PATCH','2019-09-12 11:52:52',1,4,'会员Member认证商家','/member/3/audit-business'),(789,'219.155.5.99','POST','2019-09-12 14:10:17',-1,0,'邀请管理多条件查询','/invite/management/query'),(790,'219.155.5.99','POST','2019-09-12 14:10:23',-1,6,'分页查询权限','/system/permission/page-query'),(791,'219.155.5.99','POST','2019-09-12 14:10:28',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(792,'219.155.5.99','POST','2019-09-12 14:10:30',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(793,'219.155.5.99','POST','2019-09-12 14:10:31',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(794,'219.155.5.99','POST','2019-09-12 14:10:31',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(795,'219.155.5.99','POST','2019-09-12 14:10:31',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(796,'219.155.5.99','POST','2019-09-12 14:10:31',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(797,'219.155.5.99','POST','2019-09-12 14:10:32',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(798,'219.155.5.99','POST','2019-09-12 14:10:32',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(799,'219.155.5.99','POST','2019-09-12 14:10:32',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(800,'219.155.5.99','POST','2019-09-12 14:10:32',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(801,'219.155.5.99','GET','2019-09-12 14:10:41',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(802,'219.155.5.99','POST','2019-09-12 14:10:48',1,6,'分页查询权限','/system/permission/page-query'),(803,'219.155.5.99','POST','2019-09-12 14:10:51',1,6,'分页查询权限','/system/permission/page-query'),(804,'219.155.5.99','POST','2019-09-12 14:11:03',1,6,'分页查询权限','/system/permission/page-query'),(805,'219.155.5.99','POST','2019-09-12 14:11:33',1,0,'邀请管理多条件查询','/invite/management/query'),(806,'219.155.5.99','POST','2019-09-12 14:11:34',1,6,'分页查询权限','/system/permission/page-query'),(807,'219.155.5.99','GET','2019-09-12 14:11:35',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(808,'219.155.5.99','POST','2019-09-12 14:14:17',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(809,'219.155.5.99','POST','2019-09-12 14:14:22',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(810,'219.155.5.99','POST','2019-09-12 14:14:25',1,6,'后台货币Coin详情','/system/coin/detail'),(811,'219.155.5.99','POST','2019-09-12 14:14:37',1,6,'更新后台货币Coin','/system/coin/update'),(812,'219.155.5.99','POST','2019-09-12 14:14:40',1,6,'后台货币Coin详情','/system/coin/detail'),(813,'219.155.5.99','POST','2019-09-12 14:14:44',1,6,'后台货币Coin详情','/system/coin/detail'),(814,'219.155.5.99','POST','2019-09-12 14:14:46',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(815,'219.155.5.99','POST','2019-09-12 14:14:48',1,6,'后台货币Coin详情','/system/coin/detail'),(816,'219.155.5.99','POST','2019-09-12 14:16:21',-1,6,'提交登录信息Admin','/system/employee/googleAuth/sign/in'),(817,'219.155.5.99','POST','2019-09-12 14:16:21',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(818,'219.155.5.99','POST','2019-09-12 14:16:21',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(819,'219.155.5.99','POST','2019-09-12 14:16:21',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(820,'219.155.5.99','POST','2019-09-12 14:16:21',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(821,'219.155.5.99','POST','2019-09-12 14:16:21',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(822,'219.155.5.99','POST','2019-09-12 14:16:25',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(823,'219.155.5.99','POST','2019-09-12 14:16:25',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(824,'219.155.5.99','POST','2019-09-12 14:16:26',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(825,'219.155.5.99','POST','2019-09-12 14:16:26',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(826,'219.155.5.99','POST','2019-09-12 14:16:26',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(827,'219.155.5.99','POST','2019-09-12 14:16:26',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(828,'219.155.5.99','POST','2019-09-12 14:17:12',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(829,'219.155.5.99','POST','2019-09-12 14:17:16',1,6,'后台货币Coin详情','/system/coin/detail'),(830,'219.155.5.99','POST','2019-09-12 14:18:07',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(831,'219.155.5.99','GET','2019-09-12 14:18:10',1,4,'所有会员等级','/member/grade/all'),(832,'219.155.5.99','POST','2019-09-12 14:18:21',1,4,'更新会员等级','/member/grade/update'),(833,'219.155.5.99','GET','2019-09-12 14:18:21',1,4,'所有会员等级','/member/grade/all'),(834,'219.155.5.99','POST','2019-09-12 14:18:34',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(835,'219.155.5.99','POST','2019-09-12 14:18:36',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(836,'219.155.5.99','PATCH','2019-09-12 14:18:37',1,4,'会员MemberApplication认证通过审核','/member/member-application/2/pass'),(837,'219.155.5.99','POST','2019-09-12 14:18:37',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(838,'219.155.5.99','GET','2019-09-12 14:21:55',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(839,'219.155.5.99','POST','2019-09-12 14:22:04',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(840,'219.155.5.99','POST','2019-09-12 14:22:12',1,6,'后台货币Coin详情','/system/coin/detail'),(841,'219.155.5.99','GET','2019-09-12 14:22:34',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(842,'219.155.5.99','GET','2019-09-12 14:28:19',1,4,'所有会员等级','/member/grade/all'),(843,'219.155.5.99','POST','2019-09-12 15:11:14',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(844,'219.155.5.99','POST','2019-09-12 15:11:21',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(845,'219.155.5.99','POST','2019-09-12 15:11:23',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(846,'219.155.5.99','POST','2019-09-12 15:11:23',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(847,'219.155.5.99','POST','2019-09-12 15:11:23',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(848,'219.155.5.99','POST','2019-09-12 15:11:24',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(849,'219.155.5.99','POST','2019-09-12 15:11:24',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(850,'219.155.5.99','POST','2019-09-12 15:11:24',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(851,'219.155.5.99','POST','2019-09-12 15:11:24',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(852,'219.155.5.99','POST','2019-09-12 15:11:24',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(853,'219.155.5.99','POST','2019-09-12 15:11:24',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(854,'219.155.5.99','POST','2019-09-12 15:11:25',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(855,'219.155.5.99','POST','2019-09-12 15:12:16',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(856,'219.155.5.99','POST','2019-09-12 15:24:31',-1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(857,'219.155.5.99','POST','2019-09-12 15:24:31',-1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(858,'219.155.5.99','POST','2019-09-12 15:24:31',-1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(859,'219.155.5.99','POST','2019-09-12 15:24:31',-1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(860,'219.155.5.99','POST','2019-09-12 15:24:31',-1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(861,'219.155.5.99','POST','2019-09-12 15:24:31',-1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(862,'58.248.159.4','POST','2019-09-12 15:25:44',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(863,'58.248.159.4','POST','2019-09-12 15:25:50',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(864,'58.248.159.4','POST','2019-09-12 15:25:50',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(865,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(866,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(867,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(868,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(869,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(870,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(871,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(872,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(873,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(874,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(875,'58.248.159.4','POST','2019-09-12 15:25:51',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(876,'58.248.159.4','POST','2019-09-12 15:25:55',1,6,'查询所有Coin','/system/coin/all'),(877,'58.248.159.4','POST','2019-09-12 15:25:56',1,10,'分页查询糖果设置','/gift/page-query'),(878,'58.248.159.4','POST','2019-09-12 15:25:56',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(879,'58.248.159.4','POST','2019-09-12 15:26:10',1,4,'分页查找会员Member','/member/page-query'),(880,'58.248.159.4','POST','2019-09-12 15:26:12',1,4,'余额管理','/member/member-wallet/balance'),(881,'58.248.159.4','POST','2019-09-12 15:26:14',1,4,'会员积分记录查询','/integration/record/query_page'),(882,'58.248.159.4','POST','2019-09-12 15:26:16',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(883,'58.248.159.4','POST','2019-09-12 15:26:20',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(884,'58.248.159.4','POST','2019-09-12 15:26:28',1,10,'分页查询糖果设置','/gift/page-query'),(885,'58.248.159.4','POST','2019-09-12 15:26:29',1,6,'查询所有Coin','/system/coin/all'),(886,'58.248.159.4','POST','2019-09-12 15:26:30',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(887,'58.248.159.4','POST','2019-09-12 15:29:45',1,6,'全部权限树Menu','/system/role/permission/all'),(888,'58.248.159.4','POST','2019-09-12 15:29:45',1,6,'所有角色SysRole','/system/role/all'),(889,'58.248.159.4','POST','2019-09-12 15:29:48',1,6,'分页查找后台用户admin','/system/employee/page-query'),(890,'58.248.159.4','POST','2019-09-12 15:29:50',1,4,'分页查找会员Member','/member/page-query'),(891,'219.155.5.99','POST','2019-09-12 15:30:38',1,6,'后台货币Coin详情','/system/coin/detail'),(892,'219.155.5.99','POST','2019-09-12 15:30:52',1,6,'更新后台货币Coin','/system/coin/update'),(893,'219.155.5.99','POST','2019-09-12 15:30:55',1,6,'后台货币Coin详情','/system/coin/detail'),(894,'58.248.159.4','POST','2019-09-12 15:30:57',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(895,'58.248.159.4','POST','2019-09-12 15:30:58',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(896,'58.248.159.4','POST','2019-09-12 15:30:58',1,6,'查询所有Coin','/system/coin/all'),(897,'58.248.159.4','POST','2019-09-12 15:31:01',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(898,'58.248.159.4','POST','2019-09-12 15:31:08',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(899,'58.248.159.4','POST','2019-09-12 15:31:09',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(900,'219.155.5.99','POST','2019-09-12 15:31:51',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(901,'219.155.5.99','POST','2019-09-12 15:31:59',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(902,'219.155.5.99','POST','2019-09-12 15:32:00',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(903,'219.155.5.99','POST','2019-09-12 15:32:01',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(904,'219.155.5.99','POST','2019-09-12 15:32:01',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(905,'219.155.5.99','POST','2019-09-12 15:32:01',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(906,'219.155.5.99','POST','2019-09-12 15:32:01',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(907,'219.155.5.99','POST','2019-09-12 15:32:01',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(908,'219.155.5.99','POST','2019-09-12 15:32:02',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(909,'219.155.5.99','POST','2019-09-12 15:32:02',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(910,'219.155.5.99','POST','2019-09-12 15:32:02',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(911,'219.155.5.99','POST','2019-09-12 15:32:02',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(912,'219.155.5.99','POST','2019-09-12 15:32:02',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(913,'219.155.5.99','POST','2019-09-12 15:32:02',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(914,'219.155.5.99','POST','2019-09-12 15:32:05',1,6,'分页查询权限','/system/permission/page-query'),(915,'219.155.5.99','POST','2019-09-12 15:32:05',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(916,'219.155.5.99','POST','2019-09-12 15:32:08',1,6,'后台货币Coin详情','/system/coin/detail'),(917,'104.36.64.187','POST','2019-09-12 15:32:20',1,6,'更新后台货币Coin','/system/coin/update'),(918,'104.36.64.187','POST','2019-09-12 15:32:24',1,6,'后台货币Coin详情','/system/coin/detail'),(919,'58.248.159.4','POST','2019-09-12 15:33:03',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(920,'58.248.159.4','POST','2019-09-12 15:33:06',1,10,'分页查询糖果设置','/gift/page-query'),(921,'58.248.159.4','POST','2019-09-12 15:33:06',1,6,'查询所有Coin','/system/coin/all'),(922,'58.248.159.4','POST','2019-09-12 15:33:07',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(923,'104.36.64.187','POST','2019-09-12 15:33:10',1,6,'更新后台货币Coin','/system/coin/update'),(924,'104.36.64.187','POST','2019-09-12 15:33:18',1,6,'后台货币Coin详情','/system/coin/detail'),(925,'58.248.159.4','POST','2019-09-12 15:33:49',1,0,'邀请管理多条件查询','/invite/management/query'),(926,'58.248.159.4','POST','2019-09-12 15:34:31',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(927,'58.248.159.4','POST','2019-09-12 15:34:44',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(928,'58.248.159.4','POST','2019-09-12 15:34:44',1,3,'充币记录','/finance/member-deposit/page-query'),(929,'61.146.2.99','POST','2019-09-12 15:35:06',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(930,'61.146.2.99','POST','2019-09-12 15:35:12',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(931,'61.146.2.99','POST','2019-09-12 15:35:12',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(932,'61.146.2.99','POST','2019-09-12 15:35:12',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(933,'61.146.2.99','POST','2019-09-12 15:35:12',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(934,'61.146.2.99','POST','2019-09-12 15:35:12',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(935,'61.146.2.99','POST','2019-09-12 15:35:12',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(936,'61.146.2.99','POST','2019-09-12 15:35:12',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(937,'61.146.2.99','POST','2019-09-12 15:35:13',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(938,'61.146.2.99','POST','2019-09-12 15:35:13',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(939,'61.146.2.99','POST','2019-09-12 15:35:13',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(940,'61.146.2.99','POST','2019-09-12 15:35:13',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(941,'61.146.2.99','POST','2019-09-12 15:35:13',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(942,'61.146.2.99','POST','2019-09-12 15:35:13',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(943,'61.146.2.99','POST','2019-09-12 15:35:17',1,10,'分页查询糖果设置','/gift/page-query'),(944,'61.146.2.99','POST','2019-09-12 15:35:19',1,6,'查询所有Coin','/system/coin/all'),(945,'61.146.2.99','POST','2019-09-12 15:35:28',1,0,'邀请管理多条件查询','/invite/management/query'),(946,'61.146.2.99','POST','2019-09-12 15:35:34',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(947,'61.146.2.99','POST','2019-09-12 15:35:37',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(948,'61.146.2.99','POST','2019-09-12 15:35:37',1,6,'查询所有Coin','/system/coin/all'),(949,'61.146.2.99','POST','2019-09-12 15:35:40',1,4,'分页查找会员Member','/member/page-query'),(950,'61.146.2.99','POST','2019-09-12 15:35:52',1,4,'余额管理','/member/member-wallet/balance'),(951,'61.146.2.99','POST','2019-09-12 15:36:57',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(952,'61.146.2.99','POST','2019-09-12 15:36:57',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(953,'61.146.2.99','POST','2019-09-12 15:36:57',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(954,'61.146.2.99','POST','2019-09-12 15:36:57',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(955,'61.146.2.99','POST','2019-09-12 15:36:57',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(956,'61.146.2.99','POST','2019-09-12 15:36:57',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(957,'58.248.159.4','POST','2019-09-12 15:37:53',1,4,'分页查找会员Member','/member/page-query'),(958,'104.36.64.187','POST','2019-09-12 15:43:02',-1,6,'分页查找后台货币Coin','/system/coin/page-query'),(959,'219.155.5.99','POST','2019-09-12 15:43:23',1,6,'后台货币Coin详情','/system/coin/detail'),(960,'104.36.64.187','POST','2019-09-12 15:43:29',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(961,'104.36.64.187','POST','2019-09-12 15:43:30',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(962,'104.36.64.187','POST','2019-09-12 15:43:33',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(963,'104.36.64.187','POST','2019-09-12 15:43:33',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(964,'104.36.64.187','POST','2019-09-12 15:43:33',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(965,'104.36.64.187','POST','2019-09-12 15:43:33',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(966,'104.36.64.187','POST','2019-09-12 15:43:33',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(967,'219.155.5.99','POST','2019-09-12 15:43:36',1,6,'更新后台货币Coin','/system/coin/update'),(968,'104.36.64.187','POST','2019-09-12 15:43:37',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(969,'219.155.5.99','POST','2019-09-12 15:43:40',1,6,'后台货币Coin详情','/system/coin/detail'),(970,'104.36.64.187','POST','2019-09-12 15:43:45',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(971,'104.36.64.187','POST','2019-09-12 15:43:49',1,6,'后台货币Coin详情','/system/coin/detail'),(972,'104.36.64.187','POST','2019-09-12 15:44:05',1,6,'后台货币Coin详情','/system/coin/detail'),(973,'104.36.64.187','POST','2019-09-12 15:44:23',1,6,'后台货币Coin详情','/system/coin/detail'),(974,'58.248.159.4','POST','2019-09-12 15:44:36',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(975,'58.248.159.4','POST','2019-09-12 15:44:36',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(976,'58.248.159.4','POST','2019-09-12 15:44:36',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(977,'58.248.159.4','POST','2019-09-12 15:44:36',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(978,'58.248.159.4','POST','2019-09-12 15:44:36',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(979,'58.248.159.4','POST','2019-09-12 15:44:36',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(980,'58.248.159.4','POST','2019-09-12 15:44:38',1,4,'分页查找会员Member','/member/page-query'),(981,'58.248.159.4','POST','2019-09-12 15:44:55',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(982,'58.248.159.4','POST','2019-09-12 15:44:55',1,4,'会员Member详情','/member/detail'),(983,'58.248.159.4','POST','2019-09-12 15:44:55',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(984,'58.248.159.4','POST','2019-09-12 15:45:01',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(985,'61.146.2.99','POST','2019-09-12 15:45:06',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(986,'58.248.159.4','POST','2019-09-12 15:45:07',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(987,'61.146.2.99','POST','2019-09-12 15:45:11',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(988,'104.36.64.187','POST','2019-09-12 15:45:11',1,6,'更新后台货币Coin','/system/coin/update'),(989,'61.146.2.99','POST','2019-09-12 15:45:12',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(990,'61.146.2.99','POST','2019-09-12 15:45:13',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(991,'61.146.2.99','POST','2019-09-12 15:45:13',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(992,'61.146.2.99','POST','2019-09-12 15:45:13',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(993,'61.146.2.99','POST','2019-09-12 15:45:13',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(994,'61.146.2.99','POST','2019-09-12 15:45:13',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(995,'61.146.2.99','POST','2019-09-12 15:45:13',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(996,'61.146.2.99','POST','2019-09-12 15:45:15',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(997,'61.146.2.99','POST','2019-09-12 15:45:16',1,4,'余额管理','/member/member-wallet/balance'),(998,'104.36.64.187','POST','2019-09-12 15:45:17',1,6,'后台货币Coin详情','/system/coin/detail'),(999,'58.248.159.4','POST','2019-09-12 15:45:17',1,4,'余额管理','/member/member-wallet/balance'),(1000,'61.146.2.99','POST','2019-09-12 15:45:18',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1001,'61.146.2.99','POST','2019-09-12 15:45:18',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1002,'61.146.2.99','POST','2019-09-12 15:45:18',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1003,'61.146.2.99','POST','2019-09-12 15:45:20',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1004,'61.146.2.99','POST','2019-09-12 15:45:20',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1005,'61.146.2.99','POST','2019-09-12 15:45:31',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1006,'61.146.2.99','POST','2019-09-12 15:45:32',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1007,'61.146.2.99','POST','2019-09-12 15:45:34',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(1008,'61.146.2.99','POST','2019-09-12 15:45:34',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(1009,'61.146.2.99','GET','2019-09-12 15:45:41',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1010,'61.146.2.99','POST','2019-09-12 15:45:42',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1011,'61.146.2.99','POST','2019-09-12 15:45:43',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1012,'61.146.2.99','POST','2019-09-12 15:45:43',1,3,'充币记录','/finance/member-deposit/page-query'),(1013,'61.146.2.99','POST','2019-09-12 15:46:14',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1014,'61.146.2.99','POST','2019-09-12 15:46:14',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1015,'61.146.2.99','POST','2019-09-12 15:46:27',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1016,'61.146.2.99','POST','2019-09-12 15:46:36',1,4,'分页查找会员Member','/member/page-query'),(1017,'61.146.2.99','POST','2019-09-12 15:46:37',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1018,'61.146.2.99','POST','2019-09-12 15:46:38',1,4,'余额管理','/member/member-wallet/balance'),(1019,'61.146.2.99','POST','2019-09-12 15:46:39',1,4,'会员积分记录查询','/integration/record/query_page'),(1020,'61.146.2.99','POST','2019-09-12 15:46:40',1,4,'余额管理','/member/member-wallet/balance'),(1021,'61.146.2.99','POST','2019-09-12 15:46:41',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1022,'61.146.2.99','POST','2019-09-12 15:46:42',1,4,'会员积分记录查询','/integration/record/query_page'),(1023,'61.146.2.99','POST','2019-09-12 15:47:41',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1024,'61.146.2.99','POST','2019-09-12 15:47:41',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1025,'61.146.2.99','POST','2019-09-12 15:47:41',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1026,'61.146.2.99','POST','2019-09-12 15:47:41',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1027,'61.146.2.99','POST','2019-09-12 15:47:41',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1028,'61.146.2.99','POST','2019-09-12 15:47:41',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1029,'61.146.2.99','POST','2019-09-12 15:47:44',1,10,'分页查询糖果设置','/gift/page-query'),(1030,'61.146.2.99','POST','2019-09-12 15:47:48',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1031,'61.146.2.99','POST','2019-09-12 15:47:48',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1032,'61.146.2.99','POST','2019-09-12 15:47:48',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1033,'61.146.2.99','POST','2019-09-12 15:47:48',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1034,'61.146.2.99','POST','2019-09-12 15:47:48',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1035,'61.146.2.99','POST','2019-09-12 15:47:48',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1036,'61.146.2.99','POST','2019-09-12 15:47:56',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1037,'61.146.2.99','POST','2019-09-12 15:48:07',1,6,'分页查找后台用户admin','/system/employee/page-query'),(1038,'61.146.2.99','POST','2019-09-12 15:48:08',1,6,'所有部门Department','/system/department/all'),(1039,'61.146.2.99','POST','2019-09-12 15:48:14',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1040,'61.146.2.99','POST','2019-09-12 15:48:16',1,6,'分页查询权限','/system/permission/page-query'),(1041,'61.146.2.99','POST','2019-09-12 15:48:23',1,6,'分页查询权限','/system/permission/page-query'),(1042,'61.146.2.99','POST','2019-09-12 15:48:24',1,6,'分页查询权限','/system/permission/page-query'),(1043,'61.146.2.99','POST','2019-09-12 15:48:25',1,6,'分页查询权限','/system/permission/page-query'),(1044,'61.146.2.99','POST','2019-09-12 15:48:25',1,6,'分页查询权限','/system/permission/page-query'),(1045,'61.146.2.99','POST','2019-09-12 15:48:27',1,6,'分页查询权限','/system/permission/page-query'),(1046,'61.146.2.99','POST','2019-09-12 15:48:28',1,6,'分页查询权限','/system/permission/page-query'),(1047,'61.146.2.99','POST','2019-09-12 15:48:29',1,6,'分页查询权限','/system/permission/page-query'),(1048,'61.146.2.99','POST','2019-09-12 15:48:29',1,6,'分页查询权限','/system/permission/page-query'),(1049,'61.146.2.99','POST','2019-09-12 15:48:31',1,6,'所有部门Department','/system/department/all'),(1050,'61.146.2.99','POST','2019-09-12 15:48:32',1,6,'分页查找后台用户admin','/system/employee/page-query'),(1051,'61.146.2.99','POST','2019-09-12 15:48:34',1,6,'全部权限树Menu','/system/role/permission/all'),(1052,'61.146.2.99','POST','2019-09-12 15:48:34',1,6,'所有角色SysRole','/system/role/all'),(1053,'61.146.2.99','POST','2019-09-12 15:49:18',1,0,'邀请管理多条件查询','/invite/management/query'),(1054,'61.146.2.99','POST','2019-09-12 15:50:06',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1055,'61.146.2.99','POST','2019-09-12 15:50:58',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(1056,'61.146.2.99','POST','2019-09-12 15:50:59',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1057,'61.146.2.99','POST','2019-09-12 15:50:59',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1058,'61.146.2.99','POST','2019-09-12 15:50:59',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1059,'61.146.2.99','POST','2019-09-12 15:50:59',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1060,'61.146.2.99','POST','2019-09-12 15:50:59',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1061,'61.146.2.99','POST','2019-09-12 15:50:59',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1062,'61.146.2.99','POST','2019-09-12 15:51:17',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1063,'61.146.2.99','POST','2019-09-12 15:51:18',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1064,'61.146.2.99','POST','2019-09-12 15:51:19',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1065,'61.146.2.99','POST','2019-09-12 15:51:20',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1066,'61.146.2.99','POST','2019-09-12 15:51:20',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1067,'61.146.2.99','POST','2019-09-12 15:51:22',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1068,'61.146.2.99','POST','2019-09-12 15:51:25',1,10,'分页查询糖果设置','/gift/page-query'),(1069,'61.146.2.99','POST','2019-09-12 15:51:28',1,6,'查询所有Coin','/system/coin/all'),(1070,'61.146.2.99','POST','2019-09-12 15:51:30',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(1071,'61.146.2.99','POST','2019-09-12 15:51:38',1,6,'查询所有Coin','/system/coin/all'),(1072,'61.146.2.99','POST','2019-09-12 15:51:40',1,10,'分页查询糖果设置','/gift/page-query'),(1073,'61.146.2.99','POST','2019-09-12 15:51:50',1,10,'分页查询糖果设置','/gift/page-query'),(1074,'61.146.2.99','POST','2019-09-12 15:51:51',1,10,'分页查询糖果设置','/gift/page-query'),(1075,'61.146.2.99','POST','2019-09-12 15:51:59',1,10,'分页查询糖果设置','/gift/page-query'),(1076,'61.146.2.99','POST','2019-09-12 15:52:10',1,6,'查询所有Coin','/system/coin/all'),(1077,'61.146.2.99','POST','2019-09-12 15:52:26',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(1078,'61.146.2.99','POST','2019-09-12 15:52:33',1,0,'邀请管理多条件查询','/invite/management/query'),(1079,'61.146.2.99','POST','2019-09-12 15:52:42',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(1080,'61.146.2.99','POST','2019-09-12 15:52:44',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(1081,'61.146.2.99','POST','2019-09-12 15:52:44',1,6,'查询所有Coin','/system/coin/all'),(1082,'61.146.2.99','POST','2019-09-12 15:52:47',1,4,'分页查找会员Member','/member/page-query'),(1083,'61.146.2.99','POST','2019-09-12 15:53:06',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1084,'61.146.2.99','POST','2019-09-12 15:53:10',1,4,'分页查找会员Member','/member/page-query'),(1085,'61.146.2.99','POST','2019-09-12 15:53:11',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1086,'61.146.2.99','POST','2019-09-12 15:53:48',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1087,'61.146.2.99','POST','2019-09-12 15:54:02',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1088,'61.146.2.99','POST','2019-09-12 15:54:26',1,4,'余额管理','/member/member-wallet/balance'),(1089,'61.146.2.99','POST','2019-09-12 15:54:40',1,4,'会员积分记录查询','/integration/record/query_page'),(1090,'61.146.2.99','POST','2019-09-12 15:54:52',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1091,'61.146.2.99','POST','2019-09-12 15:55:00',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1092,'61.146.2.99','POST','2019-09-12 15:55:19',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1093,'61.146.2.99','POST','2019-09-12 15:55:19',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1094,'61.146.2.99','POST','2019-09-12 15:55:54',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1095,'61.146.2.99','POST','2019-09-12 15:57:00',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1096,'61.146.2.99','POST','2019-09-12 15:57:15',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1097,'61.146.2.99','POST','2019-09-12 15:59:11',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1098,'61.146.2.99','POST','2019-09-12 15:59:11',1,2,'exchangeOrder详情','/exchange/exchange-order/detail'),(1099,'61.146.2.99','POST','2019-09-12 15:59:15',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1100,'61.146.2.99','POST','2019-09-12 15:59:21',1,2,'取消委托','/exchange/exchange-order/cancel'),(1101,'61.146.2.99','POST','2019-09-12 15:59:22',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1102,'61.146.2.99','POST','2019-09-12 15:59:39',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1103,'61.146.2.99','POST','2019-09-12 16:00:20',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(1104,'61.146.2.99','POST','2019-09-12 16:00:21',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(1105,'61.146.2.99','POST','2019-09-12 16:00:26',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1106,'61.146.2.99','GET','2019-09-12 16:01:46',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1107,'61.146.2.99','POST','2019-09-12 16:02:39',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1108,'61.146.2.99','GET','2019-09-12 16:02:44',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1109,'61.146.2.99','POST','2019-09-12 16:02:49',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1110,'61.146.2.99','POST','2019-09-12 16:02:56',1,6,'全部权限树Menu','/system/role/permission/all'),(1111,'61.146.2.99','POST','2019-09-12 16:02:56',1,6,'所有角色SysRole','/system/role/all'),(1112,'61.146.2.99','POST','2019-09-12 16:02:57',1,6,'分页查找后台用户admin','/system/employee/page-query'),(1113,'61.146.2.99','POST','2019-09-12 16:03:01',1,6,'所有部门Department','/system/department/all'),(1114,'61.146.2.99','POST','2019-09-12 16:03:01',1,6,'所有角色SysRole','/system/role/all'),(1115,'61.146.2.99','POST','2019-09-12 16:03:04',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1116,'61.146.2.99','POST','2019-09-12 16:03:16',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1117,'61.146.2.99','GET','2019-09-12 16:03:59',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1118,'61.146.2.99','POST','2019-09-12 16:04:10',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1119,'61.146.2.99','PATCH','2019-09-12 16:04:20',1,3,'提现记录WithdrawRecord一键审核通过','/finance/withdraw-record/audit-pass'),(1120,'61.146.2.99','GET','2019-09-12 16:04:20',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1121,'61.146.2.99','POST','2019-09-12 16:04:29',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1122,'61.146.2.99','POST','2019-09-12 16:05:01',1,10,'分页查询糖果设置','/gift/page-query'),(1123,'61.146.2.99','POST','2019-09-12 16:05:02',1,6,'查询所有Coin','/system/coin/all'),(1124,'61.146.2.99','GET','2019-09-12 16:05:13',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1125,'61.146.2.99','POST','2019-09-12 16:06:02',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1126,'61.146.2.99','POST','2019-09-12 16:06:13',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1127,'61.146.2.99','POST','2019-09-12 16:06:13',1,3,'充币记录','/finance/member-deposit/page-query'),(1128,'61.146.2.99','POST','2019-09-12 16:06:15',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1129,'61.146.2.99','POST','2019-09-12 16:06:15',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1130,'61.146.2.99','POST','2019-09-12 16:06:16',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1131,'61.146.2.99','GET','2019-09-12 16:06:16',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1132,'61.146.2.99','POST','2019-09-12 16:06:34',1,6,'所有角色SysRole','/system/role/all'),(1133,'61.146.2.99','POST','2019-09-12 16:06:34',1,6,'全部权限树Menu','/system/role/permission/all'),(1134,'61.146.2.99','POST','2019-09-12 16:06:50',1,6,'分页查找后台用户admin','/system/employee/page-query'),(1135,'61.146.2.99','POST','2019-09-12 16:06:52',1,6,'所有部门Department','/system/department/all'),(1136,'61.146.2.99','POST','2019-09-12 16:06:52',1,6,'所有角色SysRole','/system/role/all'),(1137,'61.146.2.99','POST','2019-09-12 16:07:06',1,6,'所有部门Department','/system/department/all'),(1138,'61.146.2.99','GET','2019-09-12 16:07:10',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(1139,'61.146.2.99','POST','2019-09-12 16:07:13',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1140,'61.146.2.99','POST','2019-09-12 16:10:40',1,6,'后台货币Coin详情','/system/coin/detail'),(1141,'61.146.2.99','POST','2019-09-12 16:13:47',1,6,'热钱包转账至冷钱包记录分页查询','/system/coin/hot-transfer-record/page-query'),(1142,'61.146.2.99','POST','2019-09-12 16:13:50',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1143,'61.146.2.99','POST','2019-09-12 16:14:24',1,6,'分页查询权限','/system/permission/page-query'),(1144,'61.146.2.99','POST','2019-09-12 16:15:00',1,6,'分页查询权限','/system/permission/page-query'),(1145,'61.146.2.99','GET','2019-09-12 16:19:52',1,4,'所有会员等级','/member/grade/all'),(1146,'61.146.2.99','POST','2019-09-12 16:20:43',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1147,'61.146.2.99','POST','2019-09-12 16:24:47',1,10,'分页查询糖果设置','/gift/page-query'),(1148,'61.146.2.99','POST','2019-09-12 16:24:48',1,6,'查询所有Coin','/system/coin/all'),(1149,'61.146.2.99','POST','2019-09-12 16:24:48',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(1150,'61.146.2.99','POST','2019-09-12 16:24:50',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(1151,'61.146.2.99','POST','2019-09-12 16:24:50',1,6,'查询所有Coin','/system/coin/all'),(1152,'61.146.2.99','POST','2019-09-12 16:24:51',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(1153,'61.146.2.99','POST','2019-09-12 16:24:54',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1154,'61.146.2.99','POST','2019-09-12 16:24:54',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1155,'61.146.2.99','POST','2019-09-12 16:24:54',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1156,'61.146.2.99','POST','2019-09-12 16:24:54',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1157,'61.146.2.99','POST','2019-09-12 16:24:55',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1158,'61.146.2.99','POST','2019-09-12 16:24:55',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1159,'61.146.2.99','POST','2019-09-12 16:25:04',1,6,'后台用户Admin详情','/system/employee/detail'),(1160,'61.146.2.99','POST','2019-09-12 16:25:07',1,0,'邀请管理多条件查询','/invite/management/query'),(1161,'61.146.2.99','POST','2019-09-12 16:25:09',1,10,'分页查询糖果设置','/gift/page-query'),(1162,'61.146.2.99','POST','2019-09-12 16:25:12',1,0,'邀请管理多条件查询','/invite/management/query'),(1163,'61.146.2.99','POST','2019-09-12 16:25:16',1,4,'分页查找会员Member','/member/page-query'),(1164,'61.146.2.99','POST','2019-09-12 16:26:02',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(1165,'61.146.2.99','POST','2019-09-12 16:28:51',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1166,'61.146.2.99','POST','2019-09-12 16:33:13',1,0,'邀请管理多条件查询','/invite/management/query'),(1167,'61.146.2.99','POST','2019-09-12 16:33:15',1,10,'分页查询糖果设置','/gift/page-query'),(1168,'61.146.2.99','POST','2019-09-12 16:33:29',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1169,'61.146.2.99','POST','2019-09-12 16:33:51',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1170,'61.146.2.99','POST','2019-09-12 16:33:51',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1171,'61.146.2.99','POST','2019-09-12 16:33:51',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1172,'61.146.2.99','POST','2019-09-12 16:33:51',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1173,'61.146.2.99','POST','2019-09-12 16:33:51',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1174,'61.146.2.99','POST','2019-09-12 16:33:51',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1175,'61.146.2.99','POST','2019-09-12 16:34:12',1,0,'邀请管理多条件查询','/invite/management/query'),(1176,'61.146.2.99','POST','2019-09-12 16:36:29',1,6,'全部权限树Menu','/system/role/permission/all'),(1177,'61.146.2.99','POST','2019-09-12 16:36:29',1,6,'所有角色SysRole','/system/role/all'),(1178,'61.146.2.99','POST','2019-09-12 16:45:53',1,0,'邀请管理多条件查询','/invite/management/query'),(1179,'61.146.2.99','POST','2019-09-12 16:45:55',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(1180,'61.146.2.99','POST','2019-09-12 16:45:57',1,4,'分页查找会员Member','/member/page-query'),(1181,'61.146.2.99','POST','2019-09-12 16:46:00',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1182,'61.146.2.99','POST','2019-09-12 16:46:05',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1183,'61.146.2.99','POST','2019-09-12 16:46:18',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1184,'61.146.2.99','POST','2019-09-12 16:46:30',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1185,'61.146.2.99','POST','2019-09-12 16:46:40',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1186,'61.146.2.99','POST','2019-09-12 17:13:34',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1187,'61.146.2.99','POST','2019-09-12 17:13:39',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(1188,'61.146.2.99','POST','2019-09-12 17:13:39',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1189,'61.146.2.99','POST','2019-09-12 17:13:39',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1190,'61.146.2.99','POST','2019-09-12 17:13:41',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1191,'61.146.2.99','POST','2019-09-12 17:13:41',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1192,'61.146.2.99','POST','2019-09-12 17:13:41',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1193,'61.146.2.99','POST','2019-09-12 17:13:41',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1194,'61.146.2.99','POST','2019-09-12 17:13:41',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1195,'61.146.2.99','POST','2019-09-12 17:13:41',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1196,'61.146.2.99','POST','2019-09-12 17:13:53',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1197,'61.146.2.99','POST','2019-09-12 17:14:04',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1198,'61.146.2.99','PATCH','2019-09-12 17:14:09',1,4,'会员MemberApplication认证通过审核','/member/member-application/6/pass'),(1199,'61.146.2.99','POST','2019-09-12 17:14:09',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1200,'61.146.2.99','POST','2019-09-12 17:14:15',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1201,'61.146.2.99','POST','2019-09-12 17:14:27',1,4,'会员MemberApplication认证信息详情','/member/member-application/detail'),(1202,'61.146.2.99','PATCH','2019-09-12 17:14:31',1,4,'会员MemberApplication认证通过审核','/member/member-application/6/pass'),(1203,'61.146.2.99','POST','2019-09-12 17:14:31',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1204,'61.146.2.99','POST','2019-09-12 17:14:47',1,4,'余额管理','/member/member-wallet/balance'),(1205,'61.146.2.99','POST','2019-09-12 17:14:57',1,4,'分页查找会员Member','/member/page-query'),(1206,'61.146.2.99','POST','2019-09-12 17:15:00',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1207,'61.146.2.99','POST','2019-09-12 17:15:06',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1208,'61.146.2.99','POST','2019-09-12 17:15:07',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1209,'61.146.2.99','POST','2019-09-12 17:15:10',1,4,'余额管理','/member/member-wallet/balance'),(1210,'61.146.2.99','POST','2019-09-12 17:15:32',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1211,'61.146.2.99','POST','2019-09-12 17:16:01',1,4,'分页查找会员Member','/member/page-query'),(1212,'61.146.2.99','POST','2019-09-12 17:16:02',1,4,'余额管理','/member/member-wallet/balance'),(1213,'61.146.2.99','POST','2019-09-12 17:22:02',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1214,'61.146.2.99','GET','2019-09-12 17:22:11',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1215,'61.146.2.99','POST','2019-09-12 17:22:17',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1216,'61.146.2.99','GET','2019-09-12 17:22:29',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1217,'61.146.2.99','POST','2019-09-12 17:22:37',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1218,'61.146.2.99','GET','2019-09-12 17:22:42',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1219,'61.146.2.99','POST','2019-09-12 17:22:45',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1220,'61.146.2.99','POST','2019-09-12 17:26:08',-1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1221,'61.146.2.99','POST','2019-09-12 17:26:22',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1222,'61.146.2.99','POST','2019-09-12 17:26:51',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1223,'61.146.2.99','POST','2019-09-12 17:27:01',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(1224,'61.146.2.99','POST','2019-09-12 17:27:02',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1225,'61.146.2.99','POST','2019-09-12 17:27:02',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1226,'61.146.2.99','POST','2019-09-12 17:27:02',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1227,'61.146.2.99','POST','2019-09-12 17:27:02',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1228,'61.146.2.99','POST','2019-09-12 17:27:02',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1229,'61.146.2.99','POST','2019-09-12 17:27:02',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1230,'61.146.2.99','POST','2019-09-12 17:27:22',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1231,'61.146.2.99','POST','2019-09-12 17:27:32',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1232,'61.146.2.99','POST','2019-09-12 17:27:43',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1233,'61.146.2.99','POST','2019-09-12 17:27:55',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1234,'61.146.2.99','POST','2019-09-12 17:27:59',1,2,'exchangeOrder详情','/exchange/exchange-order/detail'),(1235,'61.146.2.99','POST','2019-09-12 17:27:59',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1236,'61.146.2.99','GET','2019-09-12 17:28:08',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1237,'61.146.2.99','POST','2019-09-12 17:28:14',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1238,'61.146.2.99','GET','2019-09-12 17:28:22',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1239,'61.146.2.99','POST','2019-09-12 17:28:23',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1240,'61.146.2.99','GET','2019-09-12 17:28:31',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1241,'61.146.2.99','POST','2019-09-12 17:28:39',1,3,'充币记录','/finance/member-deposit/page-query'),(1242,'61.146.2.99','POST','2019-09-12 17:28:39',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1243,'61.146.2.99','POST','2019-09-12 17:28:41',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1244,'61.146.2.99','POST','2019-09-12 17:28:41',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1245,'61.146.2.99','GET','2019-09-12 17:28:42',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1246,'61.146.2.99','POST','2019-09-12 17:28:42',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1247,'61.146.2.99','POST','2019-09-12 17:28:50',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1248,'61.146.2.99','POST','2019-09-12 17:28:55',1,6,'后台货币Coin详情','/system/coin/detail'),(1249,'61.146.2.99','POST','2019-09-12 17:29:10',1,6,'后台货币Coin详情','/system/coin/detail'),(1250,'61.146.2.99','POST','2019-09-12 17:31:03',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1251,'61.146.2.99','POST','2019-09-12 17:31:39',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1252,'61.146.2.99','POST','2019-09-12 17:31:50',1,6,'后台货币Coin详情','/system/coin/detail'),(1253,'61.146.2.99','POST','2019-09-12 17:31:59',1,6,'热钱包转账至冷钱包','/system/coin/transfer'),(1254,'61.146.2.99','POST','2019-09-12 17:32:03',1,6,'后台货币Coin详情','/system/coin/detail'),(1255,'61.146.2.99','POST','2019-09-12 17:36:21',-1,0,'邀请管理多条件查询','/invite/management/query'),(1256,'61.146.2.99','POST','2019-09-12 17:41:40',-1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1257,'61.146.2.99','POST','2019-09-12 17:41:52',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1258,'61.146.2.99','POST','2019-09-12 17:42:10',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1259,'61.146.2.99','POST','2019-09-12 17:42:11',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(1260,'61.146.2.99','POST','2019-09-12 17:42:12',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1261,'61.146.2.99','POST','2019-09-12 17:42:12',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1262,'61.146.2.99','POST','2019-09-12 17:42:12',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1263,'61.146.2.99','POST','2019-09-12 17:42:12',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1264,'61.146.2.99','POST','2019-09-12 17:42:12',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1265,'61.146.2.99','POST','2019-09-12 17:42:12',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1266,'61.146.2.99','POST','2019-09-12 17:42:16',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1267,'61.146.2.99','GET','2019-09-12 17:47:44',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(1268,'61.146.2.99','GET','2019-09-12 17:48:14',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(1269,'61.146.2.99','GET','2019-09-12 17:48:17',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(1270,'61.146.2.99','POST','2019-09-12 17:48:39',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1271,'61.146.2.99','POST','2019-09-12 17:48:39',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1272,'61.146.2.99','POST','2019-09-12 17:48:39',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1273,'61.146.2.99','POST','2019-09-12 17:48:39',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1274,'61.146.2.99','POST','2019-09-12 17:48:39',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1275,'61.146.2.99','POST','2019-09-12 17:48:39',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1276,'61.146.2.99','POST','2019-09-12 17:48:45',1,4,'分页查找会员Member','/member/page-query'),(1277,'61.146.2.99','POST','2019-09-12 17:48:52',1,4,'分页查找会员Member','/member/page-query'),(1278,'61.146.2.99','POST','2019-09-12 17:48:55',1,4,'分页查找会员Member','/member/page-query'),(1279,'61.146.2.99','POST','2019-09-12 17:48:58',1,4,'分页查找会员Member','/member/page-query'),(1280,'61.146.2.99','POST','2019-09-12 17:49:02',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1281,'61.146.2.99','POST','2019-09-12 17:49:02',1,4,'会员Member详情','/member/detail'),(1282,'61.146.2.99','POST','2019-09-12 17:49:02',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1283,'61.146.2.99','POST','2019-09-12 17:49:05',1,6,'热钱包转账至冷钱包记录分页查询','/system/coin/hot-transfer-record/page-query'),(1284,'61.146.2.99','POST','2019-09-12 17:49:09',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1285,'61.146.2.99','POST','2019-09-12 17:49:09',1,2,'exchangeOrder详情','/exchange/exchange-order/detail'),(1286,'61.146.2.99','POST','2019-09-12 17:49:11',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1287,'61.146.2.99','GET','2019-09-12 17:49:13',1,4,'所有会员等级','/member/grade/all'),(1288,'61.146.2.99','POST','2019-09-12 17:49:15',1,6,'分页查询权限','/system/permission/page-query'),(1289,'61.146.2.99','POST','2019-09-12 17:49:16',1,6,'分页查找后台货币Coin','/system/coin/page-query'),(1290,'61.146.2.99','POST','2019-09-12 17:49:29',1,4,'重置钱包地址','/member/member-wallet/reset-address'),(1291,'61.146.2.99','POST','2019-09-12 17:49:29',1,4,'会员Member详情','/member/detail'),(1292,'61.146.2.99','POST','2019-09-12 17:49:29',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1293,'61.146.2.99','POST','2019-09-12 17:49:35',1,4,'会员Member详情','/member/detail'),(1294,'61.146.2.99','POST','2019-09-12 17:49:35',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1295,'61.146.2.99','POST','2019-09-12 17:49:36',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1296,'61.146.2.99','POST','2019-09-12 17:49:43',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1297,'61.146.2.99','GET','2019-09-12 17:49:44',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1298,'61.146.2.99','POST','2019-09-12 17:49:46',1,3,'分页查找交易记录MemberTransaction','/finance/member-transaction/page-query'),(1299,'61.146.2.99','POST','2019-09-12 17:49:47',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1300,'61.146.2.99','POST','2019-09-12 17:49:47',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1301,'61.146.2.99','POST','2019-09-12 17:49:49',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1302,'61.146.2.99','POST','2019-09-12 17:49:49',1,3,'充币记录','/finance/member-deposit/page-query'),(1303,'61.146.2.99','POST','2019-09-12 17:49:50',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1304,'61.146.2.99','GET','2019-09-12 17:49:50',1,3,'分页查询提现记录WithdrawRecord','/finance/withdraw-record/page-query'),(1305,'61.146.2.99','POST','2019-09-12 17:49:57',1,0,'分页查询系统广告','/cms/system-advertise/page-query'),(1306,'61.146.2.99','POST','2019-09-12 17:49:59',1,0,'分页查询系统帮助','/cms/system-help/page-query'),(1307,'61.146.2.99','POST','2019-09-12 17:50:01',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1308,'61.146.2.99','POST','2019-09-12 17:50:01',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1309,'61.146.2.99','POST','2019-09-12 17:50:03',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1310,'61.146.2.99','POST','2019-09-12 17:50:03',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1311,'61.146.2.99','POST','2019-09-12 17:50:07',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1312,'61.146.2.99','POST','2019-09-12 17:50:08',1,4,'分页查找会员Member','/member/page-query'),(1313,'61.146.2.99','POST','2019-09-12 17:50:09',1,4,'余额管理','/member/member-wallet/balance'),(1314,'61.146.2.99','POST','2019-09-12 17:50:10',1,4,'会员积分记录查询','/integration/record/query_page'),(1315,'61.146.2.99','POST','2019-09-12 17:50:11',1,4,'余额管理','/member/member-wallet/balance'),(1316,'61.146.2.99','POST','2019-09-12 17:50:21',1,4,'分页查找会员Member','/member/page-query'),(1317,'61.146.2.99','POST','2019-09-12 17:50:30',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1318,'61.146.2.99','POST','2019-09-12 17:50:30',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1319,'61.146.2.99','POST','2019-09-12 17:50:30',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1320,'61.146.2.99','POST','2019-09-12 17:50:30',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1321,'61.146.2.99','POST','2019-09-12 17:50:30',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1322,'61.146.2.99','POST','2019-09-12 17:50:30',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1323,'61.146.2.99','POST','2019-09-12 17:50:31',1,4,'分页查找会员Member','/member/page-query'),(1324,'61.146.2.99','POST','2019-09-12 17:50:40',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1325,'61.146.2.99','POST','2019-09-12 17:50:42',1,4,'余额管理','/member/member-wallet/balance'),(1326,'61.146.2.99','POST','2019-09-12 17:50:44',1,4,'会员积分记录查询','/integration/record/query_page'),(1327,'61.146.2.99','POST','2019-09-12 17:50:47',1,4,'余额管理','/member/member-wallet/balance'),(1328,'61.146.2.99','POST','2019-09-12 17:50:48',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1329,'61.146.2.99','POST','2019-09-12 17:50:49',1,4,'分页查找会员Member','/member/page-query'),(1330,'61.146.2.99','POST','2019-09-12 17:50:51',1,4,'余额管理','/member/member-wallet/balance'),(1331,'61.146.2.99','POST','2019-09-12 17:50:52',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1332,'61.146.2.99','POST','2019-09-12 17:50:53',1,4,'分页查找会员Member','/member/page-query'),(1333,'61.146.2.99','POST','2019-09-12 17:50:53',1,4,'余额管理','/member/member-wallet/balance'),(1334,'61.146.2.99','POST','2019-09-12 17:50:54',1,4,'会员积分记录查询','/integration/record/query_page'),(1335,'61.146.2.99','POST','2019-09-12 17:50:56',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1336,'61.146.2.99','POST','2019-09-12 17:50:56',1,4,'分页查找会员Member','/member/page-query'),(1337,'61.146.2.99','POST','2019-09-12 17:50:57',1,4,'余额管理','/member/member-wallet/balance'),(1338,'61.146.2.99','POST','2019-09-12 17:50:58',1,4,'会员积分记录查询','/integration/record/query_page'),(1339,'61.146.2.99','POST','2019-09-12 17:50:59',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1340,'61.146.2.99','POST','2019-09-12 17:50:59',1,4,'分页查找会员Member','/member/page-query'),(1341,'61.146.2.99','POST','2019-09-12 17:51:01',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1342,'61.146.2.99','POST','2019-09-12 17:51:01',1,4,'余额管理','/member/member-wallet/balance'),(1343,'61.146.2.99','POST','2019-09-12 17:51:03',1,4,'会员积分记录查询','/integration/record/query_page'),(1344,'61.146.2.99','POST','2019-09-12 17:51:04',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1345,'61.146.2.99','POST','2019-09-12 17:51:10',1,4,'分页查找会员Member','/member/page-query'),(1346,'61.146.2.99','POST','2019-09-12 17:51:11',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1347,'61.146.2.99','POST','2019-09-12 17:51:13',1,4,'余额管理','/member/member-wallet/balance'),(1348,'61.146.2.99','POST','2019-09-12 17:51:15',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1349,'61.146.2.99','POST','2019-09-12 17:51:16',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1350,'61.146.2.99','POST','2019-09-12 17:51:17',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1351,'61.146.2.99','POST','2019-09-12 17:51:17',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1352,'61.146.2.99','POST','2019-09-12 17:51:18',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1353,'61.146.2.99','POST','2019-09-12 17:51:31',1,6,'查询所有Coin','/system/coin/all'),(1354,'61.146.2.99','POST','2019-09-12 17:51:32',1,10,'分页查询糖果设置','/gift/page-query'),(1355,'61.146.2.99','POST','2019-09-12 17:51:32',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(1356,'61.146.2.99','POST','2019-09-12 17:51:34',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(1357,'61.146.2.99','POST','2019-09-12 17:51:35',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(1358,'61.146.2.99','POST','2019-09-12 17:51:35',1,6,'查询所有Coin','/system/coin/all'),(1359,'61.146.2.99','POST','2019-09-12 17:51:36',1,0,'邀请管理多条件查询','/invite/management/query'),(1360,'61.146.2.99','POST','2019-09-12 17:51:38',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1361,'61.146.2.99','POST','2019-09-12 17:51:39',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1362,'61.146.2.99','POST','2019-09-12 17:52:18',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1363,'61.146.2.99','POST','2019-09-12 17:52:18',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1364,'61.146.2.99','POST','2019-09-12 17:52:18',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1365,'61.146.2.99','POST','2019-09-12 17:52:18',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1366,'61.146.2.99','POST','2019-09-12 17:52:18',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1367,'61.146.2.99','POST','2019-09-12 17:52:18',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1368,'61.146.2.99','POST','2019-09-12 17:52:20',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1369,'61.146.2.99','POST','2019-09-12 17:52:20',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1370,'61.146.2.99','POST','2019-09-12 17:52:20',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1371,'61.146.2.99','POST','2019-09-12 17:52:21',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1372,'61.146.2.99','POST','2019-09-12 17:52:24',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1373,'61.146.2.99','POST','2019-09-12 17:52:39',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1374,'61.146.2.99','POST','2019-09-12 17:52:39',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1375,'61.146.2.99','POST','2019-09-12 17:52:39',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1376,'61.146.2.99','POST','2019-09-12 17:52:39',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1377,'61.146.2.99','POST','2019-09-12 17:52:39',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1378,'61.146.2.99','POST','2019-09-12 17:52:39',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1379,'61.146.2.99','POST','2019-09-12 17:52:48',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1380,'61.146.2.99','POST','2019-09-12 17:52:49',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1381,'61.146.2.99','POST','2019-09-12 17:52:49',1,5,'分页查找法币交易订单Order','/otc/order/page-query'),(1382,'61.146.2.99','POST','2019-09-12 17:52:51',1,5,'分页查找后台申诉Appeal','/otc/appeal/page-query'),(1383,'61.146.2.99','POST','2019-09-12 17:52:52',1,5,'分页查找后台广告Advertise','/otc/advertise/page-query'),(1384,'61.146.2.99','POST','2019-09-12 17:52:53',1,5,'分页查找otc币种otcCoin','/otc/otc-coin/page-query'),(1385,'61.146.2.99','POST','2019-09-12 17:53:27',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1386,'61.146.2.99','POST','2019-09-12 17:53:30',1,4,'分页查找会员Member','/member/page-query'),(1387,'61.146.2.99','POST','2019-09-12 17:53:56',1,4,'分页查找会员Member','/member/page-query'),(1388,'61.146.2.99','POST','2019-09-12 17:53:58',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1389,'61.146.2.99','POST','2019-09-12 17:54:00',1,4,'余额管理','/member/member-wallet/balance'),(1390,'61.146.2.99','POST','2019-09-12 17:54:01',1,4,'会员积分记录查询','/integration/record/query_page'),(1391,'61.146.2.99','POST','2019-09-12 17:54:07',1,4,'会员积分记录查询','/integration/record/query_page'),(1392,'61.146.2.99','POST','2019-09-12 17:54:22',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1393,'61.146.2.99','POST','2019-09-12 17:54:23',1,4,'余额管理','/member/member-wallet/balance'),(1394,'61.146.2.99','POST','2019-09-12 17:54:26',1,4,'分页查找会员Member','/member/page-query'),(1395,'61.146.2.99','POST','2019-09-12 17:54:33',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1396,'61.146.2.99','POST','2019-09-12 17:54:40',1,4,'分页查找会员Member','/member/page-query'),(1397,'61.146.2.99','POST','2019-09-12 17:54:52',1,4,'余额管理','/member/member-wallet/balance'),(1398,'61.146.2.99','POST','2019-09-12 17:54:53',1,4,'会员积分记录查询','/integration/record/query_page'),(1399,'61.146.2.99','POST','2019-09-12 17:54:54',1,4,'余额管理','/member/member-wallet/balance'),(1400,'61.146.2.99','POST','2019-09-12 17:54:55',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query'),(1401,'61.146.2.99','POST','2019-09-12 17:54:57',1,2,'分页查找exchangeOrder','/exchange/exchange-order/page-query'),(1402,'61.146.2.99','POST','2019-09-12 17:54:57',1,2,'分页查找币币交易手续费exchangeCoin','/exchange/exchange-coin/page-query'),(1403,'61.146.2.99','POST','2019-09-12 17:55:32',1,6,'查找所有coin的name和unit','/system/coin/all-name-and-unit'),(1404,'61.146.2.99','POST','2019-09-12 17:55:34',1,6,'所有角色SysRole','/system/role/all'),(1405,'61.146.2.99','POST','2019-09-12 17:55:34',1,6,'全部权限树Menu','/system/role/permission/all'),(1406,'61.146.2.99','POST','2019-09-12 17:55:34',1,6,'分页查找后台用户admin','/system/employee/page-query'),(1407,'61.146.2.99','POST','2019-09-12 17:55:35',1,6,'所有部门Department','/system/department/all'),(1408,'61.146.2.99','GET','2019-09-12 17:55:36',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(1409,'61.146.2.99','POST','2019-09-12 17:55:37',1,6,'所有部门Department','/system/department/all'),(1410,'61.146.2.99','POST','2019-09-12 17:55:43',1,6,'分页查找后台用户admin','/system/employee/page-query'),(1411,'61.146.2.99','POST','2019-09-12 17:55:45',1,6,'所有角色SysRole','/system/role/all'),(1412,'61.146.2.99','POST','2019-09-12 17:55:45',1,6,'全部权限树Menu','/system/role/permission/all'),(1413,'61.146.2.99','POST','2019-09-12 17:55:46',1,6,'所有部门Department','/system/department/all'),(1414,'61.146.2.99','GET','2019-09-12 17:55:48',1,6,'分页查找操作/访问日志AdminAccessLog','/system/access-log/page-query/'),(1415,'61.146.2.99','POST','2019-09-12 18:51:07',-1,4,'分页查找会员Member','/member/page-query'),(1416,'61.146.2.99','POST','2019-09-12 18:51:33',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1417,'61.146.2.99','POST','2019-09-12 18:51:34',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(1418,'61.146.2.99','POST','2019-09-12 18:51:35',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1419,'61.146.2.99','POST','2019-09-12 18:51:35',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1420,'61.146.2.99','POST','2019-09-12 18:51:36',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1421,'61.146.2.99','POST','2019-09-12 18:51:36',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1422,'61.146.2.99','POST','2019-09-12 18:51:36',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1423,'61.146.2.99','POST','2019-09-12 18:51:36',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1424,'61.146.2.99','POST','2019-09-12 18:51:36',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1425,'61.146.2.99','POST','2019-09-12 18:51:36',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1426,'61.146.0.131','POST','2019-09-14 16:03:40',-1,6,'判断后台登录输入手机验证码','/system/employee/check'),(1427,'61.146.0.131','POST','2019-09-14 16:03:46',-1,6,'提交登录信息Admin','/system/employee/sign/in'),(1428,'61.146.0.131','POST','2019-09-14 16:03:47',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1429,'61.146.0.131','POST','2019-09-14 16:03:47',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1430,'61.146.0.131','POST','2019-09-14 16:03:48',1,8,'首页会员信息统计','/index/statistics/member-statistics-info'),(1431,'61.146.0.131','POST','2019-09-14 16:03:48',1,8,'首页会员信息统计图','/index/statistics/member-statistics-chart'),(1432,'61.146.0.131','POST','2019-09-14 16:03:48',1,8,'法币成交信息统计','/index/statistics/otc-statistics-turnover'),(1433,'61.146.0.131','POST','2019-09-14 16:03:48',1,8,'法币成交量统计图','/index/statistics/otc-statistics-num-chart'),(1434,'61.146.0.131','POST','2019-09-14 16:03:48',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1435,'61.146.0.131','POST','2019-09-14 16:03:48',1,8,'币币成交 统计图 （按照交易对区分）','/index/statistics/exchange-statistics-turnover-chart'),(1436,'61.146.0.131','POST','2019-09-14 16:04:19',1,8,'首页币币成交量/成交额/手续费 总计','/index/statistics/exchange-statistics-turnover'),(1437,'61.146.0.131','POST','2019-09-14 16:04:43',1,10,'分页查询糖果设置','/gift/page-query'),(1438,'61.146.0.131','POST','2019-09-14 16:04:47',1,6,'查询所有Coin','/system/coin/all'),(1439,'61.146.0.131','POST','2019-09-14 16:04:53',1,10,'分页查询糖果发放记录','/gift/record/page-query'),(1440,'61.146.0.131','POST','2019-09-14 16:04:59',1,0,'邀请管理多条件查询','/invite/management/query'),(1441,'61.146.0.131','POST','2019-09-14 16:05:09',1,0,'邀请管理条件查询','/release/conditionQueryAll'),(1442,'61.146.0.131','POST','2019-09-14 16:05:21',1,6,'分页查询邀请奖励设置','/system/reward-activity-record/page-query'),(1443,'61.146.0.131','POST','2019-09-14 16:05:21',1,6,'查询所有Coin','/system/coin/all'),(1444,'61.146.0.131','POST','2019-09-14 16:05:41',1,4,'分页查找会员Member','/member/page-query'),(1445,'61.146.0.131','POST','2019-09-14 16:05:54',1,4,'分页查找会员Member','/member/page-query'),(1446,'61.146.0.131','POST','2019-09-14 16:06:03',1,4,'分页查找会员MemberApplication认证信息','/member/member-application/page-query');
/*!40000 ALTER TABLE `admin_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permission`
--

DROP TABLE IF EXISTS `admin_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permission`
--

LOCK TABLES `admin_permission` WRITE;
/*!40000 ALTER TABLE `admin_permission` DISABLE KEYS */;
INSERT INTO `admin_permission` VALUES (2,'角色管理','system:role:all',8,0,'角色管理'),(3,'用户管理','system:employee:page-query',8,0,'用户管理'),(4,'部门管理','system:department:all',8,0,'部门管理'),(5,'站点管理','system:website-information:find-one',8,0,'站点管理'),(6,'菜单管理','system:role:permission:all',8,0,'菜单管理'),(7,'系统日志','system:access-log:page-query',8,0,'系统日志'),(8,'系统管理','system-------',0,6,'系统管理'),(9,'广告管理','cms:system-advertise:page-query',18,0,'广告管理'),(10,'帮助管理','cms:system-help:page-query',18,0,'帮助管理'),(11,'会员管理','member--------',0,1,'会员管理'),(12,'会员管理','member:page-query',11,0,'会员管理'),(13,'实名管理','member:member-application:page-query',11,0,'实名管理'),(14,'会员监控','member--------',11,0,'会员监控'),(18,'内容管理','cms-------',0,4,'内容管理'),(19,'交易明细','finance:member-transaction:page-query',93,0,'交易记录'),(20,'提现管理','finance:withdraw-record:page-query',93,0,'提现管理'),(23,'币种管理','system:coin:page-query',8,0,'币币币种管理'),(26,'公告管理','cms:notice',18,0,'公告管理'),(27,'创建修改角色','system:role:merge',8,0,'创建修改角色'),(28,'更改角色权限','system:role:permission:update',8,0,'更改角色权限'),(29,'角色拥有权限','system:role:permission',8,0,'角色拥有权限'),(30,'全部权限树','system:role:permission:all',8,0,'全部权限树'),(31,'创建更改后台用户','system:employee:merge',8,0,'创建更改后台用户'),(32,'后台用户详情','system:employee:detail',8,0,'后台用户详情'),(33,'站点信息修改','system:website-information:alter',8,0,'站点信息修改'),(34,'系统日志详情','system:access-log:detail',8,0,'系统日志详情'),(35,'创建系统广告','cms:system-advertise:create',18,0,'创建系统广告'),(36,'所有系统广告','cms:system-advertise:all',18,0,'所有系统广告'),(37,'系统广告详情','cms:system-advertise:detail',18,0,'系统广告详情'),(38,'更新系统广告','cms:system-advertise:update',18,0,'更新系统广告'),(39,'删除系统广告','cms:system-advertise:deletes',18,0,'删除系统广告'),(40,'导出广告excel','cms:system-advertise:out-excel',18,0,'导出广告excel'),(41,'创建系统帮助','cms:system-help:create',18,0,'创建系统帮助'),(42,'系统帮助详情','cms:system-help:detail',18,0,'系统帮助详情'),(43,'更新系统帮助','cms:system-help:update',18,0,'更新系统帮助'),(44,'删除系统帮助','cms:system-help:deletes',18,0,'删除系统帮助'),(45,'导出系统帮助excel','cms:system-help:out-excel',18,0,'导出系统帮助excel'),(46,'会员详情','member:detail',11,0,'会员详情'),(47,'会员删除','member:delete',11,0,'会员删除'),(48,'会员更新','member:update',11,0,'会员更新'),(49,'认证商家审核','member:audit-business',66,0,'认证商家审核'),(50,'导出会员excel','member:out-excel',11,0,'导出会员excel'),(51,'实名信息详情','member:member-application:detail',11,0,'实名信息详情'),(52,'实名审核通过','member:member-application:pass',11,0,'实名审核通过'),(53,'实名审核不通过','member:member-application:no-pass',11,0,'实名审核不通过'),(54,'交易记录详情','finance:member-transaction:detail',93,0,'交易记录详情'),(55,'导出交易记录excel','finance:member-transaction:out-excel',93,0,'导出交易记录excel'),(56,'提现记录详情','finance:withdraw-record:detail',93,0,'提现记录详情'),(57,'提现记录一键审核通过','finance:withdraw-record:audit-pass',93,0,'提现记录一键审核通过'),(58,'提现记录一键审核不通过','finance:withdraw-record:audit-no-pass',93,0,'提现记录一键审核不通过'),(59,'批量打款','finance:withdraw-record:remittance',93,0,'批量打款'),(60,'币币管理','exchange-------',0,3,'币币管理父菜单'),(61,'币币交易订单详情','exchange:exchange-order:detail',60,0,'币币交易订单详情'),(62,'订单管理','exchange:exchange-order:page-query',60,0,'币币交易订单'),(63,'导出币币交易订单excel','exchange:exchange-order:out-excel',60,0,'导出币币交易订单excel'),(64,'币种管理','exchange:exchange-coin:page-query',60,0,'币种管理'),(65,'币币交易对详情','exchange:exchange-coin:detail',60,0,'币币交易对详情'),(66,'法币管理','otc-------',0,2,'法币otc'),(67,'后台广告详情','otc:advertise:detail',66,0,'后台广告详情'),(68,'关闭后台广告','otc:advertise:turnoff',66,0,'关闭后台广告'),(69,'后台广告状态修改','otc:advertise:alter-status',66,0,'后台广告状态修改'),(70,'后台广告','otc:advertise:page-query',66,0,'后台广告'),(71,'后台广告导出excel','otc:advertise:out-excel',66,0,'后台广告导出excel'),(72,'后台申诉','otc:appeal:page-query',66,0,'后台申诉'),(73,'申诉详情','otc:appeal:detail',66,0,'申诉详情'),(74,'申诉处理','otc:appeal:audit',66,0,'申诉处理'),(75,'法币交易订单详情','otc:order:detail',66,0,'法币交易订单详情'),(76,'法币交易订单状态修改','otc:order:alert-status',66,0,'法币交易订单状态修改'),(77,'订单管理','otc:order:page-query',66,0,'法币交易订单'),(78,'导出法币交易订单excel','otc:order:out-excel',66,0,'导出法币交易订单excel'),(79,'创建otc币种','otc:otc-coin:create',66,0,'创建otc币种'),(80,'otc币种详情','otc:otc-coin:detail',66,0,'otc币种详情'),(81,'otc币种更新','otc:otc-coin:update',66,0,'otc币种更新'),(82,'otc币种交易率修改','otc:otc-coin:alter-jy-rate',66,0,'otc币种交易率修改'),(83,'币种管理','otc:otc-coin:page-query',66,0,'法币币种管理'),(84,'导出otc币种excel','otc:otc-coin:out-excel',66,0,'导出otc币种excel'),(85,'创建后台货币','system:coin:create',8,0,'创建后台货币'),(86,'部门详情','system:department:detail',8,0,'部门详情'),(87,'查询新增用户曲线','system:statistics:member-statistics',8,0,'查询新增用户曲线'),(88,'委托量曲线','system:statistics:delegation-statistics',8,0,'委托量曲线'),(89,'法币交易订单量曲线','system:statistics:order-statistics',8,0,'法币交易订单量曲线'),(90,'otc_order统计','system:statistics:dashboard',8,0,'otc_order统计'),(91,'余额管理','member:member-wallet:closeBalance',11,0,'余额管理'),(92,'充值管理','finance:member-transaction:page-query:recharge',93,0,'充值管理'),(93,'财务管理','finance-------',0,5,'财务管理'),(94,'提币审核','finance:member-transaction:page-query:check',93,0,'提现客服审核'),(95,'手续费管理','finance:member-transaction:page-query:fee',93,0,'手续费管理'),(96,'创建公告','system:announcement:create',8,0,'创建公告'),(97,'分页查询公告','system:announcement:page-query',8,0,'分页查询公告'),(98,'删除公告','system:announcement:delete',8,0,'删除公告'),(99,'公告详情','system:announcement:detail',8,0,'公告详情'),(100,'更新公告','system:announcement:update',8,0,'更新公告'),(101,'关闭公告','system:announcement:turn-off',8,0,'关闭公告'),(102,'打开公告','system:announcement:turn-on',8,0,'打开公告'),(103,'币币设置','exchange:set',60,0,'币币设置'),(104,'放币处理','otc:appeal:release-coin',66,0,'放币处理'),(105,'取消订单','otc:appeal:cancel-order',66,0,'取消订单'),(106,'创建修改部门','system:department:merge',8,0,'创建修改部门'),(107,'删除exchangeCoin','exchange:exchange-coin:deletes',60,0,'删除exchangeCoin'),(108,'删除otcCoin','otc:otc-coin:deletes',66,0,'删除otcCoin'),(109,'删除部门','system:department:deletes',8,0,'删除部门'),(110,'增加/修改权限','system:permission:merge',8,0,'增加权限'),(111,'权限管理','system:permission:page-query',8,0,'分页查询权限'),(112,'权限详情','system:permission:details',8,0,'权限详情'),(113,'权限删除','system:permission:deletes',8,0,'权限删除'),(114,'添加交易流水号','finance:withdraw-record:add-transaction-number',93,0,'财务提现转账成功添加流水号'),(115,'人工充值','member:member-wallet:recharge',11,0,'人工充值'),(116,'首页订单数','otc:order:get-order-num',66,0,'首页订单数'),(117,'投票管理','system:vote:merge',8,0,'新增/修改投票'),(118,'分页查询','system:vote:page-query',8,0,'分页查询'),(119,'admin更改密码','system:employee:update-password',8,0,'admin更改密码'),(120,'系统公告置顶','cms:system-help:top',18,0,'系统公告置顶'),(121,'系统广告置顶','cms:system-advertise:top',18,0,'系统广告置顶'),(122,'公告置顶','system:announcement:top',8,0,'公告置顶'),(123,'转账地址','system:transfer-address:page-query',8,0,'转账地址管理    拍币网独有'),(124,'新增/修改转账地址','system:transfer-address:merge',8,0,'新增/修改转账地址  拍币网独有'),(125,'转账地址详情','system:transfer-address:detail',8,0,'转账地址详情  拍币网独有'),(126,'批量删除转账地址','system:transfer-address:deletes',8,0,'批量删除转账地址   拍币网独有'),(128,'分红管理','system:dividend:page-query',8,0,'分红管理分页查询'),(129,'开始分红','system:dividend:start',8,0,'开始分红'),(130,'分红手续费','system:dividend:fee-query',8,0,'分红手续费'),(131,'充币记录','finance:member-deposit:page-query',93,0,'区块链钱包充币记录'),(132,'人工转账','system:coin:transfer',8,0,'热钱包转账至冷钱包'),(133,'转入明细','system:coin:hot-transfer-record:page-query',8,0,'热钱包转入冷钱包记录'),(134,'实名认证配置修改','system:member-application-config:merge',8,0,'实名认证配置修改'),(135,'实名认证配置详情','system:member-application-config:detail',8,0,'实名认证配置详情'),(136,'禁用/解禁发布广告','member:alter-publish-advertisement-status',11,0,'禁用/解禁发布广告 1表示正常'),(137,'禁用/解禁会员账号','member:alter-status',11,0,'禁用/解禁会员账号 0表示正常'),(138,'推荐会员','promotion:member:page-query',143,0,'推荐会员分页'),(139,'删除用户','system:employee:deletes',8,0,'批量删除用户'),(140,'充值管理','legal-wallet-recharge',66,0,'充值管理分页'),(141,'提币管理','legal-wallet-withdraw',66,0,'提币管理查询分页'),(142,'是否禁止交易','member:alter-transaction-status',11,0,'是否禁止交易  1表示正常'),(143,'推荐返佣','promotion-------',0,8,'推荐返佣 根'),(144,'新增/修改推荐返佣配置','promotion:reward:merge',143,0,'新增/修改推荐返佣配置'),(145,'重置会员钱包地址','member:member-wallet:reset-address',11,0,'重置会员钱包地址'),(146,'佣金参数','promotion:reward:page-query',143,0,'佣金参数'),(147,'系统信息维护','system:data-dictionary',8,0,'系统信息管理'),(148,'数据字典添加','system:data-dictionary:create',8,0,'数据字典添加'),(149,'数据字典修改','system:data-dictionary:update',8,0,'数据字典修改'),(150,'版本管理','system:app-revision:page-query',8,0,'版本管理'),(151,'添加版本信息','system:app-revision:create',8,0,'添加版本信息'),(152,'更新版本信息','system:app-revision:update',8,0,'更新版本信息'),(153,'版本信息详情','system:app-revision:details',8,0,'版本信息详情'),(154,'推荐会员导出','promotion:member:out-excel',143,0,'推荐会员导出'),(155,'推荐会员明细','promotion:member:details',143,0,'推荐会员明细'),(156,'测试权限','测试名称',18,0,'描述'),(158,'取消委托','exchange:exchange-order:cancel',18,0,'取消委托订单'),(159,'法币交易明细','finance:otc:order:page-query',93,0,'法币交易明细'),(160,'提币明细','finance:withdraw-record:page-query:success',93,0,'提币明细'),(161,'保证金管理','business-auth:manager',93,0,'保证金管理'),(162,'活动管理','activity-------',0,7,'活动管理'),(164,'签到新增','activity:sign:post',162,0,'签到新增'),(165,'签到修改','activity:sign:put',162,0,'签到修改'),(167,'签到管理','activity:sign:page-query',162,0,'签到分页'),(168,'签到详情','activity:sign:id:get',162,0,'签到详情'),(169,'签到提前关闭','activity:sign:id:early-closing',162,0,'签到提前关闭'),(170,'签到记录','activity:member-sign-record:page-query',162,0,'签到记录'),(171,'财务统计','finance:statistics:turnover',93,0,'成交量/成交额统计'),(172,'手续费合计','finance:statistics:fee',93,0,'手续费合计'),(173,'锁定钱包','member:member-wallet:lock-wallet',11,0,'锁定钱包'),(174,'解锁钱包','member:member-wallet:unlock-wallet',11,0,'解锁钱包'),(176,'角色删除','system:role:deletes',8,0,'角色删除'),(177,'保证金管理','business:auth:deposit',0,8,'保证金管理'),(178,'查询保证金策略','business:auth:deposit:page',177,0,'查询保证金策略'),(179,'创建保证金策略','business:auth:deposit:create',177,0,'创建保证金策略'),(180,'修改保证金策略','business:auth:deposit:update',177,0,'修改保证金策略'),(181,'退保审核','business:cancel-apply:check',66,0,'退保审核'),(182,'退保管理','business:cancel-apply:page-query',66,0,'退保申请记录'),(183,'退保用户详情','business:cancel-apply:detail',66,0,'退保用户详情'),(184,'认证商家','business-auth:apply:page-query',66,0,'认证商家'),(185,'佣金参数详情','promotion:reward:detail',143,0,'佣金参数详情'),(186,'认证商家详情','business-auth:apply:detail',66,0,'认证商家详情'),(187,'币种详情','system:coin:detail',8,0,'系统管理下币种详情'),(191,'添加交易对','exchange:exchange-coin:merge',60,0,'添加交易对'),(192,'糖果管理','------gift',0,0,'糖果管理'),(193,'发放设置','gift:page-query',192,0,'糖果发放设置'),(194,'新增发放','gift:save',192,0,'新增糖果发放'),(195,'发放记录','gift:record:page-query',192,0,'糖果发放记录'),(196,'积分等级管理','member:member-grade:all',8,0,'积分查询'),(197,'积分等级更新','member:member-grade:update',8,0,'积分权限更新'),(202,'积分记录查询','member:query_page:all',0,0,''),(203,'积分记录','member:integration_query_page:all',11,0,'积分记录'),(204,'注册送币审核','release:page-query',208,0,'注册送币审核'),(205,'审核送币','release:audit',208,0,'注册送币审核'),(206,'邀请管理','--------inviter',0,0,'邀请管理'),(207,'邀请管理','invite/management:query',206,0,'邀请管理'),(208,'赠送奖励配置','system:reward-activity-record:page-query',0,0,'注册赠送,交易赠送,充值赠送'),(209,'赠送配置添加','system:reward-activity-record:merge',208,0,'添加奖励配置'),(210,'删除赠送配置','system:reward-activity-record:deletes',208,0,'批量删除'),(211,'币种修改','system:coin:update',8,0,'币种修改'),(214,'查询权限','system:permission:detail',8,0,'权限查询'),(216,'法币查询','member:otc-wallet:query',93,0,'法币查询'),(232,'重置密码','member:pwd-reset',11,0,'重置会员密码'),(233,'锁定钱包','member:otc-wallet:lock-wallet',11,0,'锁定法币钱包'),(234,' 帮助取消置顶','cms:system-help:down',18,0,'系统帮助取消置顶'),(235,'公告取消置顶','system:announcement:dwon',18,0,'公告取消置顶'),(236,'解锁钱包','member:otc-wallet:unlock-wallet',11,0,'解锁法币钱包'),(237,'查询所有法币账户','member:otc-wallet:closeBalance',11,0,'查询用户法币账户'),(238,'修改交易对','exchange:exchange-coin:alter-rate',60,0,'修改交易对'),(239,'用户余额管理','member:member-wallet:balance',11,0,'用户余额管理');
/*!40000 ALTER TABLE `admin_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permission`
--

DROP TABLE IF EXISTS `admin_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKplesprlvm1sob8nl9yc5rgh3m` (`role_id`,`rule_id`),
  KEY `FK52rddd3qje4p49iubt08gplb5` (`role_id`) USING BTREE,
  KEY `FKqf3fhgl5mjqqb0jeupx7yafh0` (`rule_id`) USING BTREE,
  CONSTRAINT `FK52rddd3qje4p49iubt08gplb5` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  CONSTRAINT `FKqf3fhgl5mjqqb0jeupx7yafh0` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`),
  CONSTRAINT `admin_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  CONSTRAINT `admin_role_permission_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`),
  CONSTRAINT `admin_role_permission_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  CONSTRAINT `admin_role_permission_ibfk_4` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permission`
--

LOCK TABLES `admin_role_permission` WRITE;
/*!40000 ALTER TABLE `admin_role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_type` int(11) NOT NULL,
  `auto` int(11) DEFAULT NULL,
  `autoword` varchar(255) DEFAULT NULL,
  `coin_unit` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_amount` decimal(18,8) DEFAULT NULL COMMENT '交易中数量',
  `level` int(11) DEFAULT NULL,
  `limit_money` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高单笔交易额',
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低单笔交易额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '计划数量',
  `pay_mode` varchar(255) DEFAULT NULL,
  `premise_rate` decimal(18,6) DEFAULT NULL COMMENT '溢价百分比',
  `price` decimal(18,2) DEFAULT NULL COMMENT '交易价格',
  `price_type` int(11) NOT NULL,
  `remain_amount` decimal(18,8) DEFAULT NULL COMMENT '计划剩余数量',
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK75rse9iecdnimf8ugtf20c43l` (`coin_id`),
  KEY `FK9lueh92242ckyajg17xr9tcie` (`country`),
  KEY `FKspoip5yq9ednwwondsga9c9k6` (`member_id`),
  CONSTRAINT `FK75rse9iecdnimf8ugtf20c43l` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`),
  CONSTRAINT `FK9lueh92242ckyajg17xr9tcie` FOREIGN KEY (`country`) REFERENCES `country` (`zh_name`),
  CONSTRAINT `FKspoip5yq9ednwwondsga9c9k6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertise`
--

LOCK TABLES `advertise` WRITE;
/*!40000 ALTER TABLE `advertise` DISABLE KEYS */;
INSERT INTO `advertise` VALUES (1,0,0,'',NULL,'2019-09-09 14:21:39',0.00000000,0,NULL,200.00,100.00,500.00000000,'微信',2.000000,6.83,1,485.35871157,'',0,20,'2019-09-09 14:21:46',NULL,1,4,'中国',2);
/*!40000 ALTER TABLE `advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airdrop`
--

DROP TABLE IF EXISTS `airdrop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airdrop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `error_index` int(11) DEFAULT NULL,
  `error_msg` text,
  `file_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `success_count` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3lo6cbxpuewbore50ffbwfiqr` (`admin_id`),
  CONSTRAINT `FK3lo6cbxpuewbore50ffbwfiqr` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airdrop`
--

LOCK TABLES `airdrop` WRITE;
/*!40000 ALTER TABLE `airdrop` DISABLE KEYS */;
/*!40000 ALTER TABLE `airdrop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,'<p>a</p>','2019-09-12 09:30:42',NULL,'',0,'11','0');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_revision`
--

DROP TABLE IF EXISTS `app_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_revision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(255) DEFAULT NULL,
  `platform` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_revision`
--

LOCK TABLES `app_revision` WRITE;
/*!40000 ALTER TABLE `app_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeal`
--

DROP TABLE IF EXISTS `appeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appeal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `associate_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_with_time` datetime DEFAULT NULL,
  `img_urls` varchar(255) DEFAULT NULL,
  `initiator_id` bigint(20) DEFAULT NULL,
  `is_success` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_todwxorutclquf69bwow70kml` (`order_id`),
  KEY `FKanmcnj859x2tv3y0pv7u05cqa` (`admin_id`),
  CONSTRAINT `FKanmcnj859x2tv3y0pv7u05cqa` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKs3vo8h01sq39icylq1qdwekn1` FOREIGN KEY (`order_id`) REFERENCES `otc_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeal`
--

LOCK TABLES `appeal` WRITE;
/*!40000 ALTER TABLE `appeal` DISABLE KEYS */;
/*!40000 ALTER TABLE `appeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_auth_apply`
--

DROP TABLE IF EXISTS `business_auth_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_auth_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '保证金数额',
  `auditing_time` datetime DEFAULT NULL,
  `auth_info` text,
  `certified_business_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `business_auth_deposit_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKds72omottejlk5isd34ha5i10` (`business_auth_deposit_id`),
  KEY `FKdghp8ri44t77ntuw06gicphuu` (`member_id`),
  CONSTRAINT `FKdghp8ri44t77ntuw06gicphuu` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKds72omottejlk5isd34ha5i10` FOREIGN KEY (`business_auth_deposit_id`) REFERENCES `business_auth_deposit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_auth_apply`
--

LOCK TABLES `business_auth_apply` WRITE;
/*!40000 ALTER TABLE `business_auth_apply` DISABLE KEYS */;
INSERT INTO `business_auth_apply` VALUES (1,10.00000000,'2019-09-09 14:20:34','{\"telno\":\"15225086043\",\"wechat\":\"123456\",\"qq\":\"123456\",\"coinSymbol\":\"USDT\",\"amount\":10,\"assetData\":\"http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/acd5d956-c083-414b-a7db-83ff37093ff1.jpg\",\"tradeData\":\"http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/799cbe16-64e0-433e-91f2-1ea42ccc4e62.jpg\"}',2,'2019-09-09 11:45:44','a84dff23-83f4-4891-8097-b4f1614e584c',NULL,'2019-09-09 14:20:34',1,2),(2,10.00000000,'2019-09-12 11:52:52','{\"amount\":10,\"assetData\":\"http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/f4090426-f9ae-4010-a63f-b6550b3fe6f4.jpg\",\"coinSymbol\":\"USDT\",\"qq\":\"guhuihw\",\"telno\":\"8878464\",\"tradeData\":\"http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/2f46258e-326c-4e6e-b3f0-9bff78e168f4.jpg\",\"wechat\":\"jjiling\"}',2,'2019-09-12 11:52:12','d0aeb28a-ca48-40c2-8a86-1daafd74712e',NULL,'2019-09-12 11:52:52',1,3);
/*!40000 ALTER TABLE `business_auth_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_auth_deposit`
--

DROP TABLE IF EXISTS `business_auth_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_auth_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '保证金数额',
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfj3hxtr3ae1yma9bxeuqc29pj` (`admin_id`),
  KEY `FKjx7799a3pwdtnu43fkpn27kj6` (`coin_id`),
  CONSTRAINT `FKfj3hxtr3ae1yma9bxeuqc29pj` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKjx7799a3pwdtnu43fkpn27kj6` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_auth_deposit`
--

LOCK TABLES `business_auth_deposit` WRITE;
/*!40000 ALTER TABLE `business_auth_deposit` DISABLE KEYS */;
INSERT INTO `business_auth_deposit` VALUES (1,10.00000000,'2019-09-09 11:44:48',0,1,'USDT');
/*!40000 ALTER TABLE `business_auth_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bussiness_cancel_apply`
--

DROP TABLE IF EXISTS `bussiness_cancel_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bussiness_cancel_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cancel_apply_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbwtwtm0jd1eqa8dh7e8ychcx1` (`member_id`),
  CONSTRAINT `FKbwtwtm0jd1eqa8dh7e8ychcx1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bussiness_cancel_apply`
--

LOCK TABLES `bussiness_cancel_apply` WRITE;
/*!40000 ALTER TABLE `bussiness_cancel_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `bussiness_cancel_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin`
--

DROP TABLE IF EXISTS `coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin` (
  `name` varchar(255) NOT NULL,
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `can_recharge` int(11) DEFAULT NULL,
  `can_transfer` int(11) DEFAULT NULL,
  `can_withdraw` int(11) DEFAULT NULL,
  `cny_rate` decimal(18,8) DEFAULT '0.00000000' COMMENT '人民币汇率',
  `cold_wallet_address` varchar(255) DEFAULT NULL,
  `enable_rpc` int(11) DEFAULT NULL,
  `has_legal` bit(1) NOT NULL DEFAULT b'0',
  `is_platform_coin` int(11) DEFAULT '0' COMMENT '是否为平台币',
  `master_address` varchar(64) DEFAULT NULL COMMENT '主充值地址',
  `max_daily_withdraw_rate` decimal(18,8) DEFAULT '0.00000000' COMMENT '单日最大提币量',
  `max_tx_fee` double NOT NULL,
  `max_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最大提币数量',
  `min_recharge_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '最小充币数量',
  `min_tx_fee` double NOT NULL,
  `min_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最小提币数量',
  `miner_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '矿工费',
  `name_cn` varchar(255) NOT NULL,
  `sgd_rate` decimal(18,2) DEFAULT '0.00' COMMENT '美元汇率',
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `usd_rate` decimal(18,8) DEFAULT '0.00000000' COMMENT '美元汇率',
  `withdraw_scale` int(11) DEFAULT '4' COMMENT '提币精度',
  `withdraw_threshold` decimal(18,8) DEFAULT NULL COMMENT '自动提现阈值',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin`
--

LOCK TABLES `coin` WRITE;
/*!40000 ALTER TABLE `coin` DISABLE KEYS */;
INSERT INTO `coin` VALUES ('BNB',0,0,1,0,300.00000000,NULL,0,'\0',0,NULL,0.00000000,100,10.00000000,0.00000000,100,10.00000000,0.00000000,'BNB',NULL,10,0,'BNB',30.00000000,0,100.00000000),('BTC',0,1,1,1,70000.00000000,'1QGkCtozrQrW5UoeDJ6X7JDLJR8dfTw2CP',1,'\0',0,NULL,0.00000000,10,1000.00000000,0.00000000,10,100.00000000,0.00000000,'BTC',NULL,3,0,'BTC',10000.00000000,0,100.00000000),('ETH',0,1,1,1,3000.00000000,'0x1d95450d4ec844786a1ab9d232b51484e84d8270',1,'\0',0,NULL,0.00000000,10,1000.00000000,0.00000000,10,100.00000000,0.00000000,'ETH',NULL,2,0,'ETH',200.00000000,0,10.00000000),('HT',0,1,1,0,240.00000000,'0x1d95450d4ec844786a1ab9d232b51484e84d8270',1,'\0',0,NULL,0.00000000,10,100.00000000,0.00000000,10,10.00000000,0.00000000,'HT',NULL,5,0,'HT',32.00000000,0,100.00000000),('USDT',0,1,1,1,6.80000000,'0x1d95450d4ec844786a1ab9d232b51484e84d8270',1,'\0',0,NULL,0.00000000,10,100.00000000,0.00000000,10,1.00000000,0.00000000,'USDT',NULL,1,0,'USDT',1.00000000,0,20.00000000);
/*!40000 ALTER TABLE `coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `zh_name` varchar(255) NOT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `local_currency` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`zh_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('中国','86','China','zh_CN','CNY',0),('中国台湾','886','Taiwan,China','zh_TW','TWD',0),('新加坡','65','Singapore','en_US','SGD',0),('美国','1','America','en_US','USD',0),('香港','852','HongKong','zh_HK','HKD',0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_dictionary`
--

DROP TABLE IF EXISTS `data_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bond` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_dictionary`
--

LOCK TABLES `data_dictionary` WRITE;
/*!40000 ALTER TABLE `data_dictionary` DISABLE KEYS */;
INSERT INTO `data_dictionary` VALUES (1,'integration_giving_one_invite','实名用户一级推荐实名用户赠送积分','2019-09-11 21:31:11',NULL,'2019-09-11 21:31:11','20'),(2,'integration_giving_two_invite','实名用户二级推荐实名用户赠送积分','2019-09-11 21:31:30',NULL,'2019-09-11 21:31:30','10'),(3,'integration_giving_otc_buy_cny_rate','法币交易人民币对积分比例','2019-09-11 21:31:50',NULL,'2019-09-11 21:31:50','10'),(4,'integration_giving_exchange_recharge_usdt_rate','币币充值USDT对积分比例','2019-09-11 21:32:05',NULL,'2019-09-11 21:32:05','0.1');
/*!40000 ALTER TABLE `data_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `leader_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1t68827l97cwyxo9r1u6t4p7d` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'2019-04-28 14:23:57',NULL,'系统','系统管理员','2019-04-28 14:23:57'),(2,'2019-04-28 14:24:06',NULL,'测试','测试','2019-04-28 14:24:06');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_record`
--

DROP TABLE IF EXISTS `deposit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposit_record` (
  `id` varchar(255) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7x5q0lmqqtty5i0w5mq09o8r7` (`coin_id`),
  KEY `FKji8p5uoc1ad45npyf72rgf2lx` (`member_id`),
  CONSTRAINT `FK7x5q0lmqqtty5i0w5mq09o8r7` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKji8p5uoc1ad45npyf72rgf2lx` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_record`
--

LOCK TABLES `deposit_record` WRITE;
/*!40000 ALTER TABLE `deposit_record` DISABLE KEYS */;
INSERT INTO `deposit_record` VALUES ('a84dff23-83f4-4891-8097-b4f1614e584c',10.00000000,0,'USDT',2),('d0aeb28a-ca48-40c2-8a86-1daafd74712e',10.00000000,0,'USDT',3);
/*!40000 ALTER TABLE `deposit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dividend_start_record`
--

DROP TABLE IF EXISTS `dividend_start_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dividend_start_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,6) DEFAULT NULL COMMENT '数量',
  `date` datetime DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL COMMENT '比例',
  `start` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK226c1iy2t1dt9tjjo20pum39d` (`admin_id`),
  CONSTRAINT `FK226c1iy2t1dt9tjjo20pum39d` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dividend_start_record`
--

LOCK TABLES `dividend_start_record` WRITE;
/*!40000 ALTER TABLE `dividend_start_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `dividend_start_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emption_record`
--

DROP TABLE IF EXISTS `emption_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emption_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID自增',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `ieo_id` bigint(20) DEFAULT NULL COMMENT 'ieoId',
  `user_name` varchar(64) NOT NULL COMMENT '用户昵称',
  `user_mobile` varchar(16) NOT NULL COMMENT '用户手机号',
  `ieo_name` varchar(128) NOT NULL COMMENT '项目名称',
  `sale_coin` varchar(16) NOT NULL COMMENT '发售币种',
  `sale_amount` decimal(14,4) NOT NULL COMMENT '发售总量',
  `raise_coin` varchar(16) NOT NULL COMMENT '募集币种',
  `ratio` decimal(12,4) NOT NULL COMMENT '募集币种与发售币种的比率',
  `start_time` datetime DEFAULT NULL COMMENT '募集开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '募集结束时间',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `receive_amount` decimal(14,4) NOT NULL COMMENT '认购数量',
  `pay_amount` decimal(14,4) NOT NULL COMMENT '使用数量',
  `expect_time` datetime DEFAULT NULL COMMENT '预计上线时间',
  `create_time` datetime DEFAULT NULL,
  `pic_view` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='认购记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emption_record`
--

LOCK TABLES `emption_record` WRITE;
/*!40000 ALTER TABLE `emption_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `emption_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_coin`
--

DROP TABLE IF EXISTS `exchange_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_coin` (
  `symbol` varchar(255) NOT NULL,
  `base_coin_scale` int(11) NOT NULL,
  `base_fee` decimal(18,4) DEFAULT '0.0000' COMMENT '结算币种手续费',
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `enable_market_buy` int(11) DEFAULT '1' COMMENT '是否启用市价买',
  `enable_market_sell` int(11) DEFAULT '1' COMMENT '是否启用市价卖',
  `fee` decimal(18,4) DEFAULT '0.0000' COMMENT '基币手续费',
  `flag` int(11) DEFAULT '0',
  `max_trading_order` int(11) DEFAULT '0' COMMENT '最大允许同时交易的订单数，0表示不限制',
  `max_trading_time` int(11) DEFAULT '0' COMMENT '委托超时自动下架时间，单位为秒，0表示不过期',
  `max_volume` decimal(18,8) DEFAULT '0.00000000' COMMENT '最大下单量',
  `min_sell_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '卖单最低价格',
  `min_turnover` decimal(18,8) DEFAULT '0.00000000' COMMENT '最小成交额',
  `min_volume` decimal(18,8) DEFAULT '0.00000000' COMMENT '最小下单量',
  `sort` int(11) NOT NULL,
  `zone` int(11) DEFAULT '0',
  `default_symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_coin`
--

LOCK TABLES `exchange_coin` WRITE;
/*!40000 ALTER TABLE `exchange_coin` DISABLE KEYS */;
INSERT INTO `exchange_coin` VALUES ('BNB/BTC',8,NULL,'BTC',8,'BNB',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('BNB/ETH',6,NULL,'ETH',8,'BNB',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('BNB/USDT',6,NULL,'USDT',8,'BNB',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('BTC/USDT',2,NULL,'USDT',6,'BTC',1,1,1,1.0000,1,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('ETH/BTC',6,NULL,'BTC',8,'ETH',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('ETH/USDT',4,NULL,'USDT',6,'ETH',1,1,1,0.0002,1,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('HT/BTC',8,NULL,'BTC',8,'HT',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('HT/ETH',6,NULL,'ETH',8,'HT',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0'),('HT/USDT',6,NULL,'USDT',8,'HT',1,1,1,0.0002,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,0,0,'0');
/*!40000 ALTER TABLE `exchange_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_favor_symbol`
--

DROP TABLE IF EXISTS `exchange_favor_symbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_favor_symbol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_favor_symbol`
--

LOCK TABLES `exchange_favor_symbol` WRITE;
/*!40000 ALTER TABLE `exchange_favor_symbol` DISABLE KEYS */;
INSERT INTO `exchange_favor_symbol` VALUES (65,'2019-09-09 09:35:52',2,'HT/ETH'),(66,'2019-09-09 09:35:59',2,'HT/USDT'),(67,'2019-09-09 09:36:00',2,'BNB/USDT'),(68,'2019-09-12 15:48:57',2,'BTC/USDT');
/*!40000 ALTER TABLE `exchange_favor_symbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_order`
--

DROP TABLE IF EXISTS `exchange_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_order` (
  `order_id` varchar(255) NOT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000',
  `base_symbol` varchar(255) DEFAULT NULL,
  `canceled_time` bigint(20) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `completed_time` bigint(20) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `margin_trade` int(11) DEFAULT NULL,
  `member_trade` int(11) DEFAULT '1',
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT '0.00000000',
  `status` int(11) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `traded_amount` decimal(18,8) DEFAULT '0.00000000',
  `turnover` decimal(18,8) DEFAULT '0.00000000',
  `type` int(11) DEFAULT NULL,
  `trigger_price` decimal(18,8) DEFAULT NULL,
  `order_resource` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `index_member_id_time` (`member_id`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_order`
--

LOCK TABLES `exchange_order` WRITE;
/*!40000 ALTER TABLE `exchange_order` DISABLE KEYS */;
INSERT INTO `exchange_order` VALUES ('E156820629017969',1.00000000,'USDT',1568256061150,'BTC',NULL,0,0,1,2,1.00000000,2,'BTC/USDT',1568206290178,0.00000000,0.00000000,1,NULL,1),('E156821034297777',10.00000000,'USDT',1568275161721,'BTC',NULL,0,0,1,4,10.00000000,2,'BTC/USDT',1568210342977,4.00000000,40.00000000,1,NULL,1),('E156821038693035',10.00000000,'USDT',NULL,'BTC',NULL,0,0,1,4,10.00000000,0,'BTC/USDT',1568210386930,0.00000000,0.00000000,1,NULL,1),('E156821047139551',10.00000000,'USDT',NULL,'BTC',NULL,0,0,1,4,10.00000000,0,'BTC/USDT',1568210471395,0.00000000,0.00000000,1,NULL,1),('E156825588724275',1.00000000,'USDT',NULL,'BTC',1568255887402,1,0,1,2,1.00000000,1,'BTC/USDT',1568255887242,1.00000000,10.00000000,1,NULL,1),('E156825589769429',1.00000000,'USDT',NULL,'BTC',1568255897709,1,0,1,2,10.00000000,1,'BTC/USDT',1568255897694,1.00000000,10.00000000,1,NULL,1),('E156825608891939',1.00000000,'USDT',NULL,'BTC',NULL,0,0,1,2,10.00000000,0,'BTC/USDT',1568256088919,0.00000000,0.00000000,1,NULL,1),('E156825740808758',1.00000000,'USDT',NULL,'BTC',1568257408102,1,0,1,2,10.00000000,1,'BTC/USDT',1568257408087,1.00000000,10.00000000,1,NULL,1),('E156825741935467',1.00000000,'USDT',1568274544976,'BTC',NULL,0,0,1,2,10.00000000,2,'BTC/USDT',1568257419354,0.00000000,0.00000000,1,NULL,1),('E156827057207061',1.00000000,'USDT',NULL,'BTC',1568270572893,1,0,1,3,10.00000000,1,'BTC/USDT',1568270572069,1.00000000,10.00000000,1,NULL,1),('E156827058754944',1.00000000,'USDT',NULL,'BTC',NULL,0,0,1,3,10.00000000,0,'BTC/USDT',1568270587549,0.00000000,0.00000000,1,NULL,1),('E156827060905528',1.00000000,'USDT',NULL,'BTC',NULL,0,0,1,3,10.00000000,0,'BTC/USDT',1568270609055,0.00000000,0.00000000,1,NULL,1);
/*!40000 ALTER TABLE `exchange_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmonjtjt92g6gruqyfumtmg8m8` (`member_id`),
  CONSTRAINT `FKmonjtjt92g6gruqyfumtmg8m8` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_config`
--

DROP TABLE IF EXISTS `gift_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_config` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID自增',
  `gift_name` varchar(128) NOT NULL COMMENT '活动名称',
  `gift_coin` varchar(16) NOT NULL COMMENT '赠送币种',
  `amount` decimal(14,4) NOT NULL COMMENT '总量',
  `have_coin` varchar(16) NOT NULL COMMENT '持有币种',
  `have_amount` decimal(14,4) DEFAULT NULL COMMENT '持有数量',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='糖果设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_config`
--

LOCK TABLES `gift_config` WRITE;
/*!40000 ALTER TABLE `gift_config` DISABLE KEYS */;
INSERT INTO `gift_config` VALUES (1,'糖果','USDT',100.0000,'USDT',0.0000,'2019-09-12 11:35:47');
/*!40000 ALTER TABLE `gift_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_record`
--

DROP TABLE IF EXISTS `gift_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID自增',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `user_name` varchar(64) DEFAULT NULL COMMENT '用户昵称',
  `user_mobile` varchar(16) DEFAULT NULL COMMENT '用户手机号',
  `gift_name` varchar(128) NOT NULL COMMENT '活动名称',
  `gift_coin` varchar(16) NOT NULL COMMENT '赠送币种',
  `gift_amount` decimal(14,4) DEFAULT '0.0000' COMMENT '赠送数量',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='糖果赠送记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_record`
--

LOCK TABLES `gift_record` WRITE;
/*!40000 ALTER TABLE `gift_record` DISABLE KEYS */;
INSERT INTO `gift_record` VALUES (1,1,NULL,NULL,'糖果','USDT',25.1800,'2019-09-12 11:35:47'),(2,2,NULL,NULL,'糖果','USDT',25.2000,'2019-09-12 11:35:47'),(3,3,NULL,NULL,'糖果','USDT',25.1800,'2019-09-12 11:35:47'),(4,4,NULL,NULL,'糖果','USDT',24.4200,'2019-09-12 11:35:47');
/*!40000 ALTER TABLE `gift_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_transfer_record`
--

DROP TABLE IF EXISTS `hot_transfer_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hot_transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '转账金额',
  `balance` decimal(18,8) DEFAULT '0.00000000' COMMENT '热钱包余额',
  `cold_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '矿工费',
  `transaction_number` varchar(255) DEFAULT NULL,
  `transfer_time` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_transfer_record`
--

LOCK TABLES `hot_transfer_record` WRITE;
/*!40000 ALTER TABLE `hot_transfer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `hot_transfer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ieo_emption`
--

DROP TABLE IF EXISTS `ieo_emption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ieo_emption` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID自增',
  `ieo_name` varchar(128) NOT NULL COMMENT '项目名称',
  `pic_view` varchar(128) DEFAULT NULL COMMENT '项目缩略图',
  `pic` varchar(128) DEFAULT NULL COMMENT '项目图片',
  `sale_coin` varchar(16) NOT NULL COMMENT '发售币种',
  `sale_amount` decimal(14,4) NOT NULL COMMENT '发售总量',
  `surplus_amount` decimal(14,4) NOT NULL COMMENT '剩余量',
  `raise_coin` varchar(16) NOT NULL COMMENT '募集币种',
  `ratio` decimal(12,4) NOT NULL COMMENT '募集币种与发售币种的比率',
  `start_time` datetime DEFAULT NULL COMMENT '募集开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '募集结束时间',
  `fee` decimal(5,4) NOT NULL COMMENT '手续费',
  `expect_time` datetime DEFAULT NULL COMMENT '预计上线时间',
  `success_ratio` decimal(3,2) NOT NULL COMMENT '抢购成功几率',
  `limit_amount` decimal(14,4) NOT NULL COMMENT '每人抢购限额',
  `have_amount` decimal(14,4) NOT NULL COMMENT '允许抢购条件持有数量',
  `have_coin` varchar(16) NOT NULL COMMENT '持有币种',
  `sell_mode` text COMMENT '售卖方式',
  `sell_detail` text COMMENT '项目详情',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ieo配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ieo_emption`
--

LOCK TABLES `ieo_emption` WRITE;
/*!40000 ALTER TABLE `ieo_emption` DISABLE KEYS */;
/*!40000 ALTER TABLE `ieo_emption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_plate`
--

DROP TABLE IF EXISTS `init_plate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `final_price` varchar(255) DEFAULT NULL,
  `init_price` varchar(255) DEFAULT NULL,
  `interference_factor` varchar(255) DEFAULT NULL,
  `relative_time` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_plate`
--

LOCK TABLES `init_plate` WRITE;
/*!40000 ALTER TABLE `init_plate` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_plate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integration_record`
--

DROP TABLE IF EXISTS `integration_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integration_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL COMMENT '积分赠送数量',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integration_record`
--

LOCK TABLES `integration_record` WRITE;
/*!40000 ALTER TABLE `integration_record` DISABLE KEYS */;
INSERT INTO `integration_record` VALUES (1,2,1,1000,'2019-09-12 14:45:37');
/*!40000 ALTER TABLE `integration_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_wallet_recharge`
--

DROP TABLE IF EXISTS `legal_wallet_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legal_wallet_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,2) NOT NULL COMMENT '充值金额',
  `creation_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtfjvrkn1oe0yu2tfjh6qcms73` (`admin_id`),
  KEY `FKsdtoqyvbjpd0bmw4n41ijc0kk` (`coin_name`),
  KEY `FK170xpb7hoxqoj5ovdrcibs9gn` (`member_id`),
  CONSTRAINT `FK170xpb7hoxqoj5ovdrcibs9gn` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKsdtoqyvbjpd0bmw4n41ijc0kk` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKtfjvrkn1oe0yu2tfjh6qcms73` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_wallet_recharge`
--

LOCK TABLES `legal_wallet_recharge` WRITE;
/*!40000 ALTER TABLE `legal_wallet_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_wallet_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_wallet_withdraw`
--

DROP TABLE IF EXISTS `legal_wallet_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legal_wallet_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remit_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe95o0059kwsgmsxxv3amdb0d2` (`admin_id`),
  KEY `FKbilsav1ug8vjtn4ffghrlogqx` (`coin_name`),
  KEY `FKcpw5k7o3tchlifu1wqmjhku9t` (`member_id`),
  CONSTRAINT `FKbilsav1ug8vjtn4ffghrlogqx` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKcpw5k7o3tchlifu1wqmjhku9t` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKe95o0059kwsgmsxxv3amdb0d2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_wallet_withdraw`
--

LOCK TABLES `legal_wallet_withdraw` WRITE;
/*!40000 ALTER TABLE `legal_wallet_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_wallet_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lever_coin`
--

DROP TABLE IF EXISTS `lever_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lever_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_symbol` varchar(255) NOT NULL,
  `coin_symbol` varchar(255) NOT NULL,
  `enable` int(11) DEFAULT NULL,
  `interest_rate` decimal(18,8) DEFAULT NULL COMMENT '借贷利率',
  `min_turn_into_amount` decimal(18,8) DEFAULT NULL COMMENT '最小转入金额',
  `min_turn_out_amount` decimal(18,8) DEFAULT NULL COMMENT '最小转出金额',
  `proportion` decimal(19,2) NOT NULL,
  `sort` int(11) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lever_coin`
--

LOCK TABLES `lever_coin` WRITE;
/*!40000 ALTER TABLE `lever_coin` DISABLE KEYS */;
INSERT INTO `lever_coin` VALUES (1,'USDT','ETH',1,0.00200000,10.00000000,10.00000000,3.00,0,'ETH/USDT'),(2,'USDT','BTC',1,0.00200000,0.00100000,0.00100000,5.00,0,'BTC/USDT');
/*!40000 ALTER TABLE `lever_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lever_wallet`
--

DROP TABLE IF EXISTS `lever_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lever_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` decimal(18,8) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包是否锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '是否处于爆仓状态',
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `lever_coin_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq9qs85kkbu4q5my6e8higb7m1` (`coin_id`),
  KEY `FK9o9ybbe0ak4pgh9c6b3qeqqqf` (`lever_coin_id`),
  CONSTRAINT `FK9o9ybbe0ak4pgh9c6b3qeqqqf` FOREIGN KEY (`lever_coin_id`) REFERENCES `lever_coin` (`id`),
  CONSTRAINT `FKq9qs85kkbu4q5my6e8higb7m1` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lever_wallet`
--

LOCK TABLES `lever_wallet` WRITE;
/*!40000 ALTER TABLE `lever_wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `lever_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lever_wallet_transfer_record`
--

DROP TABLE IF EXISTS `lever_wallet_transfer_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lever_wallet_transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '金额',
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `lever_coin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK790qm871imload2wh6f1rgplk` (`coin_id`),
  KEY `FKgofcyu74g536u214pae6oailu` (`lever_coin_id`),
  CONSTRAINT `FK790qm871imload2wh6f1rgplk` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKgofcyu74g536u214pae6oailu` FOREIGN KEY (`lever_coin_id`) REFERENCES `lever_coin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lever_wallet_transfer_record`
--

LOCK TABLES `lever_wallet_transfer_record` WRITE;
/*!40000 ALTER TABLE `lever_wallet_transfer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `lever_wallet_transfer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_record`
--

DROP TABLE IF EXISTS `loan_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accumulative` decimal(18,8) DEFAULT NULL COMMENT '累计利息',
  `amount` decimal(18,8) DEFAULT NULL COMMENT '未归还的借贷金额',
  `create_time` datetime DEFAULT NULL,
  `interest_rate` decimal(18,8) DEFAULT NULL COMMENT '借贷利率',
  `loan_balance` decimal(18,8) DEFAULT NULL COMMENT '借贷金额（记录值，不变化）',
  `member_id` bigint(20) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `repayment` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `lever_coin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3kdsljtrpiglp1f0habb96yjk` (`coin_id`),
  KEY `FKo6760jivsxxr7616790x2w04p` (`lever_coin_id`),
  CONSTRAINT `FK3kdsljtrpiglp1f0habb96yjk` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKo6760jivsxxr7616790x2w04p` FOREIGN KEY (`lever_coin_id`) REFERENCES `lever_coin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_record`
--

LOCK TABLES `loan_record` WRITE;
/*!40000 ALTER TABLE `loan_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_position_record`
--

DROP TABLE IF EXISTS `lock_position_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock_position_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '锁仓金额',
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `unlock_time` datetime DEFAULT NULL,
  `wallet_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf2t2wbo5u4htn4qfbmfepu45v` (`coin_id`),
  CONSTRAINT `FKf2t2wbo5u4htn4qfbmfepu45v` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_position_record`
--

LOCK TABLES `lock_position_record` WRITE;
/*!40000 ALTER TABLE `lock_position_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_position_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loss_threshold`
--

DROP TABLE IF EXISTS `loss_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loss_threshold` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `perform_actions` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `threshold` decimal(19,2) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `coin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoa38gp4svpx11v6a42ph2h9ld` (`coin_id`),
  CONSTRAINT `FKoa38gp4svpx11v6a42ph2h9ld` FOREIGN KEY (`coin_id`) REFERENCES `lever_coin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loss_threshold`
--

LOCK TABLES `loss_threshold` WRITE;
/*!40000 ALTER TABLE `loss_threshold` DISABLE KEYS */;
INSERT INTO `loss_threshold` VALUES (1,'2019-08-26 10:51:37',0,0,150.00,'2019-08-26 10:51:37',1),(2,'2019-08-26 10:51:47',1,0,120.00,'2019-08-26 10:51:47',1),(3,'2019-08-26 10:55:02',0,0,140.00,'2019-08-26 10:55:02',2),(4,'2019-08-26 10:55:11',1,0,110.00,'2019-08-26 10:55:11',2);
/*!40000 ALTER TABLE `loss_threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `appeal_success_times` int(11) NOT NULL,
  `appeal_times` int(11) NOT NULL,
  `application_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `certified_business_apply_time` datetime DEFAULT NULL,
  `certified_business_check_time` datetime DEFAULT NULL,
  `certified_business_status` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `first_level` int(11) NOT NULL,
  `google_date` datetime DEFAULT NULL,
  `google_key` varchar(255) DEFAULT NULL,
  `google_state` int(11) DEFAULT '0',
  `id_number` varchar(255) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `is_channel` int(11) DEFAULT '0',
  `jy_password` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `login_count` int(11) NOT NULL,
  `login_lock` int(11) DEFAULT NULL,
  `margin` varchar(255) DEFAULT NULL,
  `member_level` int(11) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `promotion_code` varchar(255) DEFAULT NULL,
  `publish_advertise` int(11) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `real_name_status` int(11) DEFAULT NULL,
  `registration_time` datetime DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `second_level` int(11) NOT NULL,
  `sign_in_ability` bit(1) NOT NULL DEFAULT b'1',
  `status` int(11) DEFAULT NULL,
  `third_level` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expire_time` datetime DEFAULT NULL,
  `transaction_status` int(11) DEFAULT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `transactions` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `integration` bigint(20) DEFAULT '0',
  `member_grade_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '等级id',
  `kyc_status` int(2) DEFAULT '0' COMMENT 'kyc等级',
  `generalize_total` bigint(20) DEFAULT '0' COMMENT '注册赠送积分',
  `inviter_parent_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_gc3jmn7c2abyo3wf6syln5t2i` (`username`),
  UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`),
  UNIQUE KEY `UK_10ixebfiyeqolglpuye0qb49u` (`mobile_phone`),
  KEY `FKbt72vgf5myy3uhygc90xna65j` (`local`),
  CONSTRAINT `FKbt72vgf5myy3uhygc90xna65j` FOREIGN KEY (`local`) REFERENCES `country` (`zh_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,'2019-09-12 09:58:09',NULL,'中国',NULL,NULL,0,0,NULL,0,'15838413254','5f277c26e49aa4fc81fc727f301c8f51','U000001PU',1,NULL,0,'2019-09-07 17:55:51','323236343030373733333630313933353336',0,'',0,0,'d4150cb7-d5e2-49db-8e83-4cc18c2137a4','2019-09-19 09:58:35',1,NULL,0,'dddddd',NULL,NULL,'中国',0,1,0,0,NULL),(2,'154355655','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/304fd8ca-b894-4efe-847d-acebc5321fa2.jpg',0,0,'2019-09-09 09:43:41','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/67dcac83-d3d8-43e2-8cc8-4ac527e7b416.jpg',NULL,NULL,NULL,'2019-09-09 11:45:44','2019-09-09 14:20:34',2,0,NULL,0,NULL,NULL,0,'411323199005054585',NULL,0,'bd10a5ea4ecd647717e8bd420c4bb566','2019-09-12 17:09:29',NULL,'中国',NULL,NULL,0,0,NULL,2,'15225086043','bd10a5ea4ecd647717e8bd420c4bb566','U000002wI',1,'我的',2,'2019-09-09 09:32:24','323236393938383531353738343939303732',0,'',0,0,'050b9fbb-c258-4096-9d55-cf0239c3ba9b','2019-09-19 17:09:29',1,'2019-09-12 14:45:37',1,'wkl','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/f9dfe23b-8e48-4ce2-8f85-816d8e80f5cc.jpg','15225086043','中国',1000,1,4,0,NULL),(3,'15250869497','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/f230dd91-d627-4ffd-8a38-5beb201dc567.jpg',0,0,'2019-09-09 14:25:03','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/ffaff527-1253-449a-92d7-2eebc7593189.jpg',NULL,NULL,NULL,'2019-09-12 11:52:12','2019-09-12 11:52:52',2,0,NULL,0,NULL,NULL,0,'411323199005054585',NULL,0,'463f1d498b5962e82459f663f3c8ccd5','2019-09-12 14:46:33',NULL,'中国',NULL,NULL,0,0,NULL,2,'15538333012','463f1d498b5962e82459f663f3c8ccd5','U000003FD',1,'爱谁',2,'2019-09-09 14:23:59','323237303732323330373235363532343830',0,'',0,0,'e4e18fd8-144a-44e6-addb-0caece922510','2019-09-19 14:46:33',1,'2019-09-12 14:45:37',1,'wkl1','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/daba677a-62e7-42f8-af62-9954a8e78e80.jpg','134664664','中国',0,1,4,0,NULL),(4,NULL,NULL,0,0,'2019-09-11 21:58:56',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,0,'410327199307225612',NULL,0,'c8bd699be4b66ec6d53da00c68695ace','2019-09-12 14:04:04',NULL,'中国',NULL,NULL,0,0,NULL,1,'15738776414','c8bd699be4b66ec6d53da00c68695ace','U000004jp',1,'郭帅',2,'2019-09-11 17:11:59','323237383339323837343532383937323830',0,'',0,0,'486cff31-7240-4d44-86db-f119c2586c65','2019-09-19 15:59:22',1,NULL,0,'gso',NULL,NULL,'中国',0,1,1,0,NULL),(5,NULL,NULL,0,0,'2019-09-11 21:40:54',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,0,'41078219900921097X',4,0,'6d2cb52d563d382d48eceb67bd2da765','2019-09-12 09:09:14',NULL,'中国',NULL,NULL,0,0,NULL,1,'15537348899','a9dd8c68af2d3a72a04755271c740946','U000005KB',1,'张三',2,'2019-09-11 21:11:19','323237383939353136373134363138383830',0,'',0,0,'ca6e8eb8-38a9-4d6e-9134-5c2616c46616','2019-09-19 09:10:09',1,NULL,0,'dsy',NULL,NULL,'中国',0,1,1,0,NULL),(9,NULL,NULL,0,0,'2019-09-12 11:47:56','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/baa26c6b-a62c-4d5e-9567-c8c6bd9a89b2.jpg',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,0,'410182198803041432',NULL,0,'88483993a10453f11bd21f0183516999','2019-09-12 15:42:56',NULL,'中国',NULL,NULL,0,0,NULL,1,'15838008016','47dbd7765ac3e7b831f16f9cde1cc23c','U000009SC',1,'李白',2,'2019-09-12 11:08:17','323238313130313435393534313233373736',0,'',0,0,'bea81bbd-d058-4c8b-b314-8f7c3df419ac','2019-09-19 15:42:56',1,NULL,0,'88886666',NULL,NULL,'中国',0,1,1,0,NULL),(10,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,'2019-09-12 15:39:28',NULL,'中国',NULL,NULL,0,0,NULL,0,'18665767820','ae6423c68d6b6d8cb744ff7df340c51e','U000010Su',1,NULL,0,'2019-09-12 15:39:14','323238313738333334333831363431373238',0,'',0,0,'38fa8ca0-3aa4-4c55-a060-afded86f890e','2019-09-19 15:39:28',1,NULL,0,'add888',NULL,NULL,'中国',0,1,0,0,NULL),(11,NULL,NULL,0,0,'2019-09-12 17:14:09',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,0,'440801199503160018',NULL,0,NULL,'2019-09-14 15:26:08',NULL,'中国',NULL,NULL,0,0,NULL,1,'13554287165','b190088f5622396b7ad86d0c7987ffd4','U000011Bv',1,'李颖聪',2,'2019-09-12 17:02:08','323238313939313936323534313436353630',0,'',0,0,'dacce836-f0e2-49e4-81cd-b7ff719cf194','2019-09-21 15:26:08',1,NULL,0,'huhouho ',NULL,NULL,'中国',0,1,1,0,NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_address`
--

DROP TABLE IF EXISTS `member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhcqqqntcf8hqmoa6dpo95okyh` (`coin_id`),
  CONSTRAINT `FKhcqqqntcf8hqmoa6dpo95okyh` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_address`
--

LOCK TABLES `member_address` WRITE;
/*!40000 ALTER TABLE `member_address` DISABLE KEYS */;
INSERT INTO `member_address` VALUES (1,'124234243','2019-09-12 14:13:51',NULL,2,'32432432',0,'USDT'),(2,'0xc33b95e4af4ebed5241e4e92a16fbd48b68633e7','2019-09-12 17:20:50',NULL,11,'火币',0,'USDT');
/*!40000 ALTER TABLE `member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_api_key`
--

DROP TABLE IF EXISTS `member_api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_api_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) DEFAULT NULL,
  `api_name` varchar(255) DEFAULT NULL,
  `bind_ip` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_api_key`
--

LOCK TABLES `member_api_key` WRITE;
/*!40000 ALTER TABLE `member_api_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_application`
--

DROP TABLE IF EXISTS `member_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_status` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `identity_card_img_front` varchar(255) NOT NULL,
  `identity_card_img_in_hand` varchar(255) NOT NULL,
  `identity_card_img_reverse` varchar(255) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '认证类型',
  `update_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `kyc_status` int(2) DEFAULT '0' COMMENT 'kyc等级',
  `video_random` varchar(6) DEFAULT NULL COMMENT '视频认证随机数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK2djx7q0j54th0cgj7153qfbl1` (`member_id`),
  CONSTRAINT `FK2djx7q0j54th0cgj7153qfbl1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_application`
--

LOCK TABLES `member_application` WRITE;
/*!40000 ALTER TABLE `member_application` DISABLE KEYS */;
INSERT INTO `member_application` VALUES (1,2,'2019-09-09 09:41:12','411323199005054585','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/fb972700-7cce-45a9-b0f1-1e6f3f72c2a5.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/58517e0d-6d28-46f8-8b92-87444a593abb.png','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/cbb2e636-eccb-44a4-bbb0-827ced7edb82.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/edb463bc-b8ce-44f2-ac09-f5faed684040.mp4','我的',NULL,0,'2019-09-12 11:44:43',2,4,'615096'),(2,2,'2019-09-09 14:24:52','411323199005054585','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/af4c858a-a8c4-4875-8371-e0ee80f20eff.png','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/a17c2f26-93e5-4beb-a00e-73642b46e1b0.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/09/70d594fa-d29b-438e-9ab5-a02e3f810577.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/9c8286db-5815-4ab5-8191-3632ce92cbe0.mp4','爱谁',NULL,0,'2019-09-12 14:18:37',3,4,'257265'),(3,2,'2019-09-11 21:30:20','41078219900921097X','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/307937f5-2863-4992-a917-b09c6ffd8bb0.png','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/164d2737-05e1-4655-86ae-fb3612094bed.png','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/fc692747-0aa0-4d5c-b72c-ecc0f1e9dd7e.png',NULL,'张三',NULL,0,'2019-09-11 21:40:54',5,1,NULL),(4,2,'2019-09-11 21:58:18','410327199307225612','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/5b2d2152-b2a8-468b-aa75-7dfc90a896ce.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/80ec4454-ee0e-4f89-96b2-0f349bfa90fb.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/990db1dd-2abf-4d0b-9355-bc6f6bd577fa.jpg',NULL,'郭帅',NULL,0,'2019-09-11 21:58:56',4,1,NULL),(5,2,'2019-09-12 11:47:42','410182198803041432','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/646442b0-2972-4791-b35b-ff9b75f39ddf.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/5c24a40a-7cc6-41da-bfd0-b1fea201b2c2.jpg','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/e1ca8945-e93e-4474-b382-37d73888c1d1.jpg',NULL,'李白',NULL,0,'2019-09-12 11:47:56',9,1,NULL),(6,2,'2019-09-12 17:10:46','440801199503160018','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/23cdcdbf-7fa1-4dcb-85d2-8a421646d036.png','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/0bd7a07f-b5f5-4139-b159-bd5e22590832.png','http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/1be6285b-5472-492f-9f9f-acc44ef2d0e1.png',NULL,'李颖聪',NULL,0,'2019-09-12 17:14:09',11,1,NULL);
/*!40000 ALTER TABLE `member_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_application_config`
--

DROP TABLE IF EXISTS `member_application_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_application_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `promotion_on` int(11) DEFAULT NULL,
  `recharge_coin_on` int(11) DEFAULT NULL,
  `transaction_on` int(11) DEFAULT NULL,
  `withdraw_coin_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_application_config`
--

LOCK TABLES `member_application_config` WRITE;
/*!40000 ALTER TABLE `member_application_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_application_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_bonus`
--

DROP TABLE IF EXISTS `member_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_bonus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrive_time` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `have_time` varchar(255) DEFAULT NULL,
  `mem_bouns` decimal(18,8) DEFAULT NULL COMMENT '分红数量',
  `member_id` bigint(20) DEFAULT NULL,
  `total` decimal(18,8) DEFAULT NULL COMMENT '当天总手续费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_bonus`
--

LOCK TABLES `member_bonus` WRITE;
/*!40000 ALTER TABLE `member_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_deposit`
--

DROP TABLE IF EXISTS `member_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000',
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKl2ibi99fuxplt8qt3rrpb0q4w` (`txid`,`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_deposit`
--

LOCK TABLES `member_deposit` WRITE;
/*!40000 ALTER TABLE `member_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_grade`
--

DROP TABLE IF EXISTS `member_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(255) DEFAULT NULL,
  `grade_code` varchar(255) DEFAULT NULL,
  `withdraw_coin_amount` decimal(18,6) DEFAULT NULL COMMENT '提币数量',
  `day_withdraw_count` int(11) DEFAULT NULL,
  `grade_bound` int(11) DEFAULT NULL,
  `exchange_fee_rate` decimal(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_grade`
--

LOCK TABLES `member_grade` WRITE;
/*!40000 ALTER TABLE `member_grade` DISABLE KEYS */;
INSERT INTO `member_grade` VALUES (1,'等级1','1',100.000000,2,10000,0.000500),(2,'等级2','2',2.000000,4,30000,0.000400),(3,'等级3','3',3.000000,4,50000,0.000300),(4,'等级4','4',4.000000,5,70000,0.000200),(5,'等级5','5',6.000000,5,80000,0.000100),(6,'等级6','6',7.000000,5,100000,0.000000);
/*!40000 ALTER TABLE `member_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_level`
--

DROP TABLE IF EXISTS `member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_default` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_level`
--

LOCK TABLES `member_level` WRITE;
/*!40000 ALTER TABLE `member_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_promotion`
--

DROP TABLE IF EXISTS `member_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invitees_id` bigint(20) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_promotion`
--

LOCK TABLES `member_promotion` WRITE;
/*!40000 ALTER TABLE `member_promotion` DISABLE KEYS */;
INSERT INTO `member_promotion` VALUES (1,5,4,0);
/*!40000 ALTER TABLE `member_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_sign_record`
--

DROP TABLE IF EXISTS `member_sign_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_sign_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `sign_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7qa42qkaoqxlyvwhxwdstclic` (`coin_name`),
  KEY `FK2r4i90tejcbf85vhk0d8besle` (`member_id`),
  KEY `FKq1926wgosqk7ka4kvw8rtxew` (`sign_id`),
  CONSTRAINT `FK2r4i90tejcbf85vhk0d8besle` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FK7qa42qkaoqxlyvwhxwdstclic` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKq1926wgosqk7ka4kvw8rtxew` FOREIGN KEY (`sign_id`) REFERENCES `sign` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_sign_record`
--

LOCK TABLES `member_sign_record` WRITE;
/*!40000 ALTER TABLE `member_sign_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_sign_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_transaction`
--

DROP TABLE IF EXISTS `member_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `airdrop_id` bigint(20) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '充币金额',
  `create_time` datetime DEFAULT NULL,
  `fee` decimal(19,8) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `member_id` bigint(20) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_transaction`
--

LOCK TABLES `member_transaction` WRITE;
/*!40000 ALTER TABLE `member_transaction` DISABLE KEYS */;
INSERT INTO `member_transaction` VALUES (1,NULL,NULL,1000.00000000,'2019-09-09 09:40:21',0.00000000,0,2,'USDT',10),(2,'',NULL,500.00000000,'2019-09-09 11:45:41',0.00000000,0,2,'USDT',24),(3,'',NULL,-10.00000000,'2019-09-09 14:20:34',0.00000000,0,2,'USDT',12),(4,'',NULL,100.00000000,'2019-09-12 10:03:41',0.00000000,0,2,'USDT',24),(5,'',NULL,100.00000000,'2019-09-12 10:03:56',0.00000000,0,2,'USDT',25),(6,'',NULL,0.99950000,'2019-09-12 10:38:08',0.00050000,0,4,'BTC',3),(7,'',NULL,-10.00000000,'2019-09-12 10:38:08',0.00000000,0,4,'USDT',3),(8,'',NULL,9.99500000,'2019-09-12 10:38:08',0.00500000,0,2,'USDT',3),(9,'',NULL,-1.00000000,'2019-09-12 10:38:08',0.00000000,0,2,'BTC',3),(10,'',NULL,0.99950000,'2019-09-12 10:38:18',0.00050000,0,4,'BTC',3),(11,'',NULL,-10.00000000,'2019-09-12 10:38:18',0.00000000,0,4,'USDT',3),(12,'',NULL,9.99500000,'2019-09-12 10:38:18',0.00500000,0,2,'USDT',3),(13,'',NULL,-1.00000000,'2019-09-12 10:38:18',0.00000000,0,2,'BTC',3),(14,'',NULL,0.99950000,'2019-09-12 11:03:28',0.00050000,0,4,'BTC',3),(15,'',NULL,-10.00000000,'2019-09-12 11:03:28',0.00000000,0,4,'USDT',3),(16,'',NULL,9.99500000,'2019-09-12 11:03:28',0.00500000,0,2,'USDT',3),(17,'',NULL,-1.00000000,'2019-09-12 11:03:28',0.00000000,0,2,'BTC',3),(18,NULL,NULL,10000.00000000,'2019-09-12 11:46:40',0.00000000,0,9,'USDT',10),(19,'',NULL,100.00000000,'2019-09-12 11:48:38',0.00000000,0,9,'USDT',24),(20,'',NULL,100.00000000,'2019-09-12 11:50:36',0.00000000,0,3,'USDT',24),(21,'',NULL,-10.00000000,'2019-09-12 11:52:52',0.00000000,0,3,'USDT',12),(22,'',NULL,0.99950000,'2019-09-12 14:42:53',0.00050000,0,4,'BTC',3),(23,'',NULL,-10.00000000,'2019-09-12 14:42:53',0.00000000,0,4,'USDT',3),(24,'',NULL,9.99500000,'2019-09-12 14:42:53',0.00500000,0,3,'USDT',3),(25,'',NULL,-1.00000000,'2019-09-12 14:42:53',0.00000000,0,3,'BTC',3),(26,NULL,NULL,-14.64128843,'2019-09-12 14:45:37',0.00732064,0,3,'USDT',5),(27,NULL,NULL,14.64128843,'2019-09-12 14:45:37',0.00000000,0,2,'USDT',4);
/*!40000 ALTER TABLE `member_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_wallet`
--

DROP TABLE IF EXISTS `member_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `balance` decimal(18,8) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `release_balance` decimal(18,8) DEFAULT NULL COMMENT '待释放余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKm68bscpof0bpnxocxl4qdnvbe` (`member_id`,`coin_id`),
  KEY `FKf9tgbp9y9py8t9c5xj0lllcib` (`coin_id`),
  CONSTRAINT `FKf9tgbp9y9py8t9c5xj0lllcib` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_wallet`
--

LOCK TABLES `member_wallet` WRITE;
/*!40000 ALTER TABLE `member_wallet` DISABLE KEYS */;
INSERT INTO `member_wallet` VALUES (1,'',10025.18000000,0.00000000,0.00000000,0,1,0,'USDT'),(2,'',10000.00000000,0.00000000,0.00000000,0,1,0,'ETH'),(3,'',10000.00000000,0.00000000,0.00000000,0,1,0,'BTC'),(4,'',10000.00000000,0.00000000,0.00000000,0,1,0,'HT'),(5,'',10000.00000000,0.00000000,0.00000000,0,1,0,'BNB'),(6,'0x250a1a58d2604e6df8860f5d0fcf6783e8d79ebd',9846.18500000,210.00000000,0.00000000,0,2,2,'USDT'),(7,'',10000.00000000,0.00000000,0.00000000,0,2,0,'ETH'),(8,'',9997.00000000,0.00000000,0.00000000,0,2,0,'BTC'),(9,'',10000.00000000,0.00000000,0.00000000,0,2,0,'HT'),(10,'',10000.00000000,0.00000000,0.00000000,0,2,0,'BNB'),(11,'0x18345b709f85f273d6b87c81b079c80df7aa960c',9895.17500000,40.00000000,0.00000000,0,3,1,'USDT'),(12,'',10000.00000000,0.00000000,0.00000000,0,3,0,'ETH'),(13,'',9999.00000000,0.00000000,0.00000000,0,3,0,'BTC'),(14,'',10000.00000000,0.00000000,0.00000000,0,3,0,'HT'),(15,'',10000.00000000,0.00000000,0.00000000,0,3,0,'BNB'),(16,'0x9a7af1ff74414f94ca1cc4b7a05492aecaca4399',9784.42000000,200.00000000,0.00000000,0,4,3,'USDT'),(17,'0x1d6f748319b228a23c77d6fc080f05bee05fe1d3',10000.00000000,0.00000000,0.00000000,0,4,1,'ETH'),(18,'3QbMKTWgdGsL2y7tsLFA9qTZr29UhxomWq',10003.99800000,0.00000000,0.00000000,0,4,2,'BTC'),(19,'',10000.00000000,0.00000000,0.00000000,0,4,0,'HT'),(20,'',10000.00000000,0.00000000,0.00000000,0,4,0,'BNB'),(21,'',0.00000000,0.00000000,NULL,0,5,0,'USDT'),(22,'',9900.00000000,0.00000000,0.00000000,0,9,1,'USDT'),(23,'',0.00000000,0.00000000,0.00000000,0,9,0,'ETH'),(24,'',0.00000000,0.00000000,0.00000000,0,9,0,'BTC'),(25,'',0.00000000,0.00000000,0.00000000,0,9,0,'HT'),(26,'',0.00000000,0.00000000,0.00000000,0,9,0,'BNB'),(27,'',0.00000000,0.00000000,0.00000000,0,10,0,'USDT'),(28,'',0.00000000,0.00000000,0.00000000,0,10,0,'ETH'),(29,'',0.00000000,0.00000000,0.00000000,0,10,0,'BTC'),(30,'',0.00000000,0.00000000,0.00000000,0,10,0,'HT'),(31,'',0.00000000,0.00000000,0.00000000,0,10,0,'BNB'),(32,'0x4c8692b65103e3796fa9d84c3ad30bd9debf92b9',0.00000000,0.00000000,0.00000000,0,11,2,'USDT'),(33,'0xbb6d8360f3289a5c8d1a52cbd23b0a7715341d96',0.00000000,0.00000000,0.00000000,0,11,3,'ETH'),(34,'38ndM8TogAuqCKEdtahzvFifSm1fjV18V4',0.00000000,0.00000000,0.00000000,0,11,1,'BTC'),(35,'',0.00000000,0.00000000,0.00000000,0,11,0,'HT'),(36,'',0.00000000,0.00000000,0.00000000,0,11,0,'BNB');
/*!40000 ALTER TABLE `member_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_wallet_1556542005633`
--

DROP TABLE IF EXISTS `member_wallet_1556542005633`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wallet_1556542005633` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `balance` decimal(18,8) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `release_balance` decimal(18,8) DEFAULT NULL COMMENT '待释放余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_wallet_1556542005633`
--

LOCK TABLES `member_wallet_1556542005633` WRITE;
/*!40000 ALTER TABLE `member_wallet_1556542005633` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_wallet_1556542005633` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_wallet_1568259347170`
--

DROP TABLE IF EXISTS `member_wallet_1568259347170`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wallet_1568259347170` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `balance` decimal(18,8) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `release_balance` decimal(18,8) DEFAULT NULL COMMENT '待释放余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_wallet_1568259347170`
--

LOCK TABLES `member_wallet_1568259347170` WRITE;
/*!40000 ALTER TABLE `member_wallet_1568259347170` DISABLE KEYS */;
INSERT INTO `member_wallet_1568259347170` VALUES (1,'',10000.00000000,0.00000000,0.00000000,0,1,0,'USDT'),(6,'',10010.98500000,20.00000000,0.00000000,0,2,1,'USDT'),(11,'',10000.00000000,0.00000000,0.00000000,0,3,0,'USDT'),(16,'0x80de26aa4531cdaee78d8e79e60ec32ac9597ec2',9700.00000000,270.00000000,0.00000000,0,4,2,'USDT');
/*!40000 ALTER TABLE `member_wallet_1568259347170` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otc_coin`
--

DROP TABLE IF EXISTS `otc_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otc_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buy_min_amount` decimal(18,8) DEFAULT NULL COMMENT '买入广告最低发布数量',
  `coin_scale` int(11) DEFAULT '8' COMMENT '币种精度',
  `is_platform_coin` int(11) DEFAULT NULL,
  `jy_rate` decimal(18,6) DEFAULT NULL COMMENT '交易手续费率',
  `max_trading_time` int(11) DEFAULT '0' COMMENT '广告上架后自动下架时间，单位为秒，0表示不过期',
  `max_volume` int(11) DEFAULT '0' COMMENT '最大挂单数量，0表示不限制',
  `name` varchar(255) NOT NULL,
  `name_cn` varchar(255) NOT NULL,
  `sell_min_amount` decimal(18,8) DEFAULT NULL COMMENT '卖出广告最低发布数量',
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otc_coin`
--

LOCK TABLES `otc_coin` WRITE;
/*!40000 ALTER TABLE `otc_coin` DISABLE KEYS */;
INSERT INTO `otc_coin` VALUES (4,12.00000000,8,0,1.000000,0,0,'USDT','USDT',13.00000000,0,0,'USDT');
/*!40000 ALTER TABLE `otc_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otc_order`
--

DROP TABLE IF EXISTS `otc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_id` bigint(20) NOT NULL,
  `advertise_type` int(11) NOT NULL,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `commission` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `country` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_real_name` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高交易额',
  `member_id` bigint(20) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_real_name` varchar(255) DEFAULT NULL,
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低交易额',
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '交易数量',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `reference_number` varchar(16) DEFAULT '' COMMENT '付款参考号',
  `release_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qmfpakgu6mowmslv4m5iy43t9` (`order_sn`),
  KEY `FKjh47nnmiehmu15wqjfwnh8a6u` (`coin_id`),
  CONSTRAINT `FKjh47nnmiehmu15wqjfwnh8a6u` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otc_order`
--

LOCK TABLES `otc_order` WRITE;
/*!40000 ALTER TABLE `otc_order` DISABLE KEYS */;
INSERT INTO `otc_order` VALUES (1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0.00732064,'中国','2019-09-12 14:39:16',3,'wkl1','爱谁',200.00,2,'wkl','我的',100.00,100.00,14.64128843,'228163242365550592','微信','2019-09-12 14:45:05',6.83,'254366','2019-09-12 14:45:37','',3,20,0,'http://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/daba677a-62e7-42f8-af62-9954a8e78e80.jpg','134664664',4);
/*!40000 ALTER TABLE `otc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otc_wallet`
--

DROP TABLE IF EXISTS `otc_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otc_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` decimal(18,8) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `release_balance` decimal(18,8) DEFAULT NULL COMMENT '待释放余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `coin_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcy68pru628qy2ker8klalb5j7` (`coin_id`),
  CONSTRAINT `FKcy68pru628qy2ker8klalb5j7` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otc_wallet`
--

LOCK TABLES `otc_wallet` WRITE;
/*!40000 ALTER TABLE `otc_wallet` DISABLE KEYS */;
INSERT INTO `otc_wallet` VALUES (1,504.64128843,0.00000000,0.00000000,0,2,0,'USDT'),(2,100.00000000,0.00000000,0.00000000,0,9,0,'USDT'),(3,75.35139093,0.00000000,0.00000000,0,3,0,'USDT');
/*!40000 ALTER TABLE `otc_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '金额',
  `create_time` datetime DEFAULT NULL,
  `interest` decimal(18,8) DEFAULT NULL COMMENT '还款的利息数额',
  `interest_rate` decimal(18,8) DEFAULT NULL COMMENT '借贷利率',
  `loan_record_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `principal` decimal(18,8) DEFAULT NULL COMMENT '还款的本金数额',
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `lever_coin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqfy2j75nya39clfyban0tt2ss` (`coin_id`),
  KEY `FKo1ixtge087s4m0rjl50o5d24j` (`lever_coin_id`),
  CONSTRAINT `FKo1ixtge087s4m0rjl50o5d24j` FOREIGN KEY (`lever_coin_id`) REFERENCES `lever_coin` (`id`),
  CONSTRAINT `FKqfy2j75nya39clfyban0tt2ss` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_transaction`
--

DROP TABLE IF EXISTS `platform_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT '0.00000000',
  `biz_order_id` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `direction` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_transaction`
--

LOCK TABLES `platform_transaction` WRITE;
/*!40000 ALTER TABLE `platform_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `platform_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poundage_convert_eth`
--

DROP TABLE IF EXISTS `poundage_convert_eth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poundage_convert_eth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `eth_usdt_rate` varchar(255) DEFAULT NULL,
  `exchange_order_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `mine_amount` decimal(18,8) DEFAULT '0.00000000',
  `poundage_amount` decimal(18,8) DEFAULT '0.00000000',
  `poundage_amount_eth` decimal(18,8) DEFAULT '0.00000000',
  `symbol` varchar(255) DEFAULT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usdt_rate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poundage_convert_eth`
--

LOCK TABLES `poundage_convert_eth` WRITE;
/*!40000 ALTER TABLE `poundage_convert_eth` DISABLE KEYS */;
/*!40000 ALTER TABLE `poundage_convert_eth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_coin`
--

DROP TABLE IF EXISTS `pre_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL COMMENT '详情链接',
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `vote_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7o7qmhrc4n2fvyl1mf5k1lhtw` (`vote_id`),
  CONSTRAINT `FK7o7qmhrc4n2fvyl1mf5k1lhtw` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_coin`
--

LOCK TABLES `pre_coin` WRITE;
/*!40000 ALTER TABLE `pre_coin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pre_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_balance`
--

DROP TABLE IF EXISTS `release_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_balance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `member_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `coin_name` varchar(255) DEFAULT NULL COMMENT '币种名字',
  `coin_unit` varchar(255) DEFAULT NULL COMMENT '币种单位',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `user_name` varchar(255) DEFAULT NULL COMMENT '会员名称',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `release_balance` decimal(20,0) DEFAULT NULL COMMENT '释放余额',
  `release_state` varchar(20) DEFAULT NULL COMMENT '释放余额状态  0 - 未审核   1 - 已审核  2 - 全部',
  `release_time` datetime DEFAULT NULL COMMENT '释放时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='注册送币审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_balance`
--

LOCK TABLES `release_balance` WRITE;
/*!40000 ALTER TABLE `release_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `release_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_activity_setting`
--

DROP TABLE IF EXISTS `reward_activity_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_activity_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKra9w7qwgbxti55cmkb6kycau7` (`admin_id`),
  KEY `FKmxq57nrqt4lb9lqpxwc095h1h` (`coin_id`),
  CONSTRAINT `FKmxq57nrqt4lb9lqpxwc095h1h` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  CONSTRAINT `FKra9w7qwgbxti55cmkb6kycau7` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_activity_setting`
--

LOCK TABLES `reward_activity_setting` WRITE;
/*!40000 ALTER TABLE `reward_activity_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_activity_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_promotion_setting`
--

DROP TABLE IF EXISTS `reward_promotion_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_promotion_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `effective_time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7fl96plmj12crmepem7t876u3` (`admin_id`),
  KEY `FKfhtlsn9g8lj5qecbo596ymhey` (`coin_id`),
  CONSTRAINT `FK7fl96plmj12crmepem7t876u3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FKfhtlsn9g8lj5qecbo596ymhey` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_promotion_setting`
--

LOCK TABLES `reward_promotion_setting` WRITE;
/*!40000 ALTER TABLE `reward_promotion_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_promotion_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_record`
--

DROP TABLE IF EXISTS `reward_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '数目',
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtm2ha75hh60am8n7lco838nmo` (`coin_id`),
  KEY `FK9m2bd6gjgad67vb6of4waxtov` (`member_id`),
  CONSTRAINT `FK9m2bd6gjgad67vb6of4waxtov` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKtm2ha75hh60am8n7lco838nmo` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_record`
--

LOCK TABLES `reward_record` WRITE;
/*!40000 ALTER TABLE `reward_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_wallet`
--

DROP TABLE IF EXISTS `reward_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` decimal(18,8) DEFAULT NULL COMMENT '可用余额',
  `coin_unit` varchar(255) DEFAULT NULL,
  `frozen_balance` decimal(18,8) DEFAULT NULL COMMENT '冻结余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_wallet`
--

LOCK TABLES `reward_wallet` WRITE;
/*!40000 ALTER TABLE `reward_wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_record`
--

DROP TABLE IF EXISTS `risk_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `current_threshold` decimal(19,2) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `perform_actions` int(11) DEFAULT NULL,
  `lever_coin_id` bigint(20) DEFAULT NULL,
  `loss_threshold_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg61lc7c35ro0snj1le341yg1c` (`lever_coin_id`),
  KEY `FKk8u66l4rub7e8hux5yn1an3vo` (`loss_threshold_id`),
  CONSTRAINT `FKg61lc7c35ro0snj1le341yg1c` FOREIGN KEY (`lever_coin_id`) REFERENCES `lever_coin` (`id`),
  CONSTRAINT `FKk8u66l4rub7e8hux5yn1an3vo` FOREIGN KEY (`loss_threshold_id`) REFERENCES `loss_threshold` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_record`
--

LOCK TABLES `risk_record` WRITE;
/*!40000 ALTER TABLE `risk_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robot_transaction`
--

DROP TABLE IF EXISTS `robot_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `robot_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '充币金额',
  `create_time` datetime DEFAULT NULL,
  `fee` decimal(19,8) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robot_transaction`
--

LOCK TABLES `robot_transaction` WRITE;
/*!40000 ALTER TABLE `robot_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `robot_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign`
--

DROP TABLE IF EXISTS `sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK58kn2gi7nvswa8hb76h87wtdl` (`coin_name`),
  CONSTRAINT `FK58kn2gi7nvswa8hb76h87wtdl` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign`
--

LOCK TABLES `sign` WRITE;
/*!40000 ALTER TABLE `sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_advertise`
--

DROP TABLE IF EXISTS `sys_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_advertise` (
  `serial_number` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `end_time` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_advertise_location` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_advertise`
--

LOCK TABLES `sys_advertise` WRITE;
/*!40000 ALTER TABLE `sys_advertise` DISABLE KEYS */;
INSERT INTO `sys_advertise` VALUES ('1CF0D4171ED34D8CB7FB01E021EA2678',NULL,NULL,'2019-09-12 09:31:55','2019-09-30 00:00:00','','2','',2,'2019-09-12 00:00:00',0,1,'https://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/01323618-ccb3-4fa3-ac74-c27d2f3c799b.jpg'),('9FB700E6E7C247719C60CAF04A6A7BE0',NULL,NULL,'2019-09-11 21:20:14','2019-09-30 00:00:00','#','banner图','',1,'2019-09-10 00:00:00',0,1,'https://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/11/ba644dad-2b25-4656-97c6-5925ec51c071.jpg'),('E63B4EF4C3124638A6051DC4D63690A8',NULL,NULL,'2019-09-12 09:53:20','2019-09-30 00:00:00','','APPbanner','',1,'2019-09-11 00:00:00',0,0,'https://cxl123.oss-cn-qingdao.aliyuncs.com/2019/09/12/6541b0d3-72cc-469d-a3bb-b8c377adface.jpg');
/*!40000 ALTER TABLE `sys_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_help`
--

DROP TABLE IF EXISTS `sys_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_help_classification` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_top` varchar(1) DEFAULT '1' COMMENT '是否置顶默认非置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_help`
--

LOCK TABLES `sys_help` WRITE;
/*!40000 ALTER TABLE `sys_help` DISABLE KEYS */;
INSERT INTO `sys_help` VALUES (1,'admin','<p>sd</p>','2019-09-12 09:30:30','',0,0,0,'1','0');
/*!40000 ALTER TABLE `sys_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sms`
--

DROP TABLE IF EXISTS `tb_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_id` varchar(255) DEFAULT NULL,
  `key_secret` varchar(255) DEFAULT NULL,
  `sign_id` varchar(255) DEFAULT NULL,
  `sms_name` varchar(255) DEFAULT NULL,
  `sms_status` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sms`
--

LOCK TABLES `tb_sms` WRITE;
/*!40000 ALTER TABLE `tb_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_address`
--

DROP TABLE IF EXISTS `transfer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `min_amount` decimal(18,2) DEFAULT NULL COMMENT '最低转账数目',
  `status` int(11) DEFAULT NULL,
  `transfer_fee` decimal(18,6) DEFAULT NULL COMMENT '转账手续费率',
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7iv0cmmj36ncaw1nx92x15vtu` (`coin_id`),
  CONSTRAINT `FK7iv0cmmj36ncaw1nx92x15vtu` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_address`
--

LOCK TABLES `transfer_address` WRITE;
/*!40000 ALTER TABLE `transfer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_record`
--

DROP TABLE IF EXISTS `transfer_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `member_id` bigint(20) DEFAULT NULL,
  `order_sn` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkrlf3bglmf2c51sorq9fpue0g` (`coin_id`),
  CONSTRAINT `FKkrlf3bglmf2c51sorq9fpue0g` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_record`
--

LOCK TABLES `transfer_record` WRITE;
/*!40000 ALTER TABLE `transfer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,2) DEFAULT NULL COMMENT '每次投票消耗的平台币数量',
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `vote_limit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote_detail`
--

DROP TABLE IF EXISTS `vote_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `vote_amount` int(11) NOT NULL,
  `pre_coin_id` bigint(20) DEFAULT NULL,
  `vote_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpe45amd6s8di5y2x7tf8ir6vo` (`pre_coin_id`),
  KEY `FKrdttjtg7msjaguxmnv0ntf5yt` (`vote_id`),
  CONSTRAINT `FKpe45amd6s8di5y2x7tf8ir6vo` FOREIGN KEY (`pre_coin_id`) REFERENCES `pre_coin` (`id`),
  CONSTRAINT `FKrdttjtg7msjaguxmnv0ntf5yt` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote_detail`
--

LOCK TABLES `vote_detail` WRITE;
/*!40000 ALTER TABLE `vote_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_information`
--

DROP TABLE IF EXISTS `website_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_information` (
  `id` bigint(20) NOT NULL,
  `address_icon` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other_information` text,
  `postcode` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_information`
--

LOCK TABLES `website_information` WRITE;
/*!40000 ALTER TABLE `website_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_record`
--

DROP TABLE IF EXISTS `withdraw_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `arrived_amount` decimal(18,8) DEFAULT NULL COMMENT '预计到账数量',
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `is_auto` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `transaction_number` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2lmq6bcbk4nl3hmqcxbnx2kuc` (`admin_id`),
  KEY `FK6drad9oqabujy0jsre3minxi` (`coin_id`),
  CONSTRAINT `FK2lmq6bcbk4nl3hmqcxbnx2kuc` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FK6drad9oqabujy0jsre3minxi` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_record`
--

LOCK TABLES `withdraw_record` WRITE;
/*!40000 ALTER TABLE `withdraw_record` DISABLE KEYS */;
INSERT INTO `withdraw_record` VALUES (1,'uklooo',10.00000000,0,'2019-09-12 14:20:15',NULL,10.00000000,0,3,'',0,20.00000000,NULL,NULL,'USDT'),(2,'124234243',90.00000000,0,'2019-09-12 14:20:40',NULL,10.00000000,0,2,NULL,0,100.00000000,NULL,NULL,'USDT'),(3,'Bdjjdjfk',90.00000000,0,'2019-09-12 14:36:22','2019-09-12 16:04:20',10.00000000,0,2,'',1,100.00000000,NULL,NULL,'USDT');
/*!40000 ALTER TABLE `withdraw_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-15 12:48:22
