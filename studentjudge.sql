-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: studentjudge
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add about',7,'add_about'),(26,'Can change about',7,'change_about'),(27,'Can delete about',7,'delete_about'),(28,'Can view about',7,'view_about'),(29,'Can add blog',8,'add_blog'),(30,'Can change blog',8,'change_blog'),(31,'Can delete blog',8,'delete_blog'),(32,'Can view blog',8,'view_blog'),(33,'Can add slide',9,'add_slide'),(34,'Can change slide',9,'change_slide'),(35,'Can delete slide',9,'delete_slide'),(36,'Can view slide',9,'view_slide'),(37,'Can add video',10,'add_video'),(38,'Can change video',10,'change_video'),(39,'Can delete video',10,'delete_video'),(40,'Can view video',10,'view_video');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$216000$FSTXxzCAUx7w$YYTNxoyV9LKh/xU5YjcNeSkhDYaeRz3B5wOT5QFiwtc=','2020-11-25 12:12:47.141420',1,'admin','','','',1,1,'2020-11-22 17:31:46.171313'),(8,'pbkdf2_sha256$216000$FFp65PV4EzJX$kUEZU87VBk3Z3TKgCW9tJQj1ZaJJqEMNuc3htQMElCM=','2020-11-25 12:11:42.959050',0,'leeon','','','leeon.ewubd@gmail.com',0,1,'2020-11-25 12:11:30.176443');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (8,'2020-11-23 04:16:40.906026','1','বীজগাণিতিক রাশি',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',10,2),(9,'2020-11-23 04:23:35.900019','1','বীজগাণিতিক রাশি',2,'[]',10,2),(10,'2020-11-25 12:10:03.189593','3','arik',3,'',4,2),(11,'2020-11-25 12:10:03.340634','7','joy',3,'',4,2),(12,'2020-11-25 12:10:03.390607','1','leeon',3,'',4,2),(13,'2020-11-25 12:10:03.526261','4','temp3',3,'',4,2),(14,'2020-11-25 12:10:03.634327','5','temp4',3,'',4,2),(15,'2020-11-25 12:10:03.834265','6','user',3,'',4,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','about'),(8,'main','blog'),(9,'main','slide'),(10,'main','video'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-22 17:27:23.474367'),(2,'auth','0001_initial','2020-11-22 17:27:27.334294'),(3,'admin','0001_initial','2020-11-22 17:27:45.930188'),(4,'admin','0002_logentry_remove_auto_add','2020-11-22 17:28:00.679767'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-22 17:28:00.992252'),(6,'contenttypes','0002_remove_content_type_name','2020-11-22 17:28:05.185570'),(7,'auth','0002_alter_permission_name_max_length','2020-11-22 17:28:11.719975'),(8,'auth','0003_alter_user_email_max_length','2020-11-22 17:28:13.509212'),(9,'auth','0004_alter_user_username_opts','2020-11-22 17:28:13.618580'),(10,'auth','0005_alter_user_last_login_null','2020-11-22 17:28:16.077803'),(11,'auth','0006_require_contenttypes_0002','2020-11-22 17:28:16.124675'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-22 17:28:16.171546'),(13,'auth','0008_alter_user_username_max_length','2020-11-22 17:28:18.926359'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-22 17:28:21.149013'),(15,'auth','0010_alter_group_name_max_length','2020-11-22 17:28:21.449694'),(16,'auth','0011_update_proxy_permissions','2020-11-22 17:28:21.730926'),(17,'auth','0012_alter_user_first_name_max_length','2020-11-22 17:28:24.380361'),(18,'main','0001_initial','2020-11-22 17:28:31.336546'),(19,'sessions','0001_initial','2020-11-22 17:28:35.840202');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7fq5vq66e4ieuqt93npem0jzax6ptvsc','.eJxVjMsOwiAQRf-FtSEzSHm4dN9vIANMpWogKe3K-O_apAvd3nPOfYlA21rC1nkJcxYXocTpd4uUHlx3kO9Ub02mVtdljnJX5EG7HFvm5_Vw_w4K9fKtGQfngYzzzgFHM52j1zrhBBYTZBxsyoqJjbaMDJ5QRQNAaG3SaI14fwDRHjc7:1khtfD:6ya-o_C0OzyPqzbmThiKNHd2SFu9v22C0W1p3ga5MKQ','2020-12-09 12:12:47.287791'),('lrodbmuw63lm35d6r5bcrhpguf70dz73','.eJxVjLEOAiEQRP-F2hCBY0FLe7-B7LIgpwaS464y_ruSXKHVJPPezEsE3NYStp6WMLM4CyUOvx1hfKQ6AN-x3pqMra7LTHIocqddXhun52V3_w4K9vJdg6XjhJC0A2eiZ0taKWt8difrvJoYUTNn0NokIg8ACKiMHpFi9uL9Ach6N6Q:1kgtDO:1Rj1qBRKWu3pva_bWk3SyfME4MD7Bkuq6QUFOTSjNgI','2020-12-06 17:31:54.940794'),('m9oekq6t49vx4bnwsomprxy8p93ew7l9','.eJxVjMsOwiAQRf-FtSEzSHm4dN9vIANMpWogKe3K-O_apAvd3nPOfYlA21rC1nkJcxYXocTpd4uUHlx3kO9Ub02mVtdljnJX5EG7HFvm5_Vw_w4K9fKtGQfngYzzzgFHM52j1zrhBBYTZBxsyoqJjbaMDJ5QRQNAaG3SaI14fwDRHjc7:1kh3Fn:v-57YWlymCfWJ9YlByD9GI37qyEUu9C0QmfUvPEpqC8','2020-12-07 04:15:03.086503');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_about`
--

DROP TABLE IF EXISTS `main_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_about`
--

LOCK TABLES `main_about` WRITE;
/*!40000 ALTER TABLE `main_about` DISABLE KEYS */;
INSERT INTO `main_about` VALUES (1,'Student Judge','Student-judge provides a nurturing and stimulating learning environment whereby, through focused individual assistance from experienced tutors, students can achieve their maximum potential and achieve the academic grades necessary to pursue the future they aspire to.\r\nWe are dedicated to providing a consistent quality of education that cultivates and nurtures students’ intellect at every stage of their academic lives, from the early years of school through to adulthood. Education and learning are broad and continual processes which are not vested purely within traditional forms and as such we happily tailor learning to the individual’s needs whether academic or vocational.','about/download.jpg');
/*!40000 ALTER TABLE `main_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_blog`
--

DROP TABLE IF EXISTS `main_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  `blog` longtext NOT NULL,
  `Class` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `author` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_blog_created_4e5e3554` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_blog`
--

LOCK TABLES `main_blog` WRITE;
/*!40000 ALTER TABLE `main_blog` DISABLE KEYS */;
INSERT INTO `main_blog` VALUES (1,'হাইজেনবার্গের গল্প: ২০০ বছর পর পিতা-পুত্রের পরিচয়','থমাস জেফারসন (১৭৪৩-১৮২৬)। আমেরিকা যুক্তরাষ্ট্রের Founding Fathers-দের মধ‍্যে অন‍্যতম। মার্কিনীদের বিখ‍্যাত Declaration of Independence এর প্রধান রচয়িতাও ছিলেন জেফারসন। ১৮০১ থেকে ১৮০৯ সাল পর্যন্ত আমেরিকার তৃতীয় প্রেসিডেন্ট হিসেবেও তিনি দায়িত্ব পালন করেন। কিন্তু, তার সম্পর্কে একটা চাপা গুঞ্জন চলে আসছে প্রায় দু’শ বছর ধরে।','থমাস জেফারসন (১৭৪৩-১৮২৬)। আমেরিকা যুক্তরাষ্ট্রের Founding Fathers-দের মধ‍্যে অন‍্যতম। মার্কিনীদের বিখ‍্যাত Declaration of Independence এর প্রধান রচয়িতাও ছিলেন জেফারসন। ১৮০১ থেকে ১৮০৯ সাল পর্যন্ত আমেরিকার তৃতীয় প্রেসিডেন্ট হিসেবেও তিনি দায়িত্ব পালন করেন। কিন্তু, তার সম্পর্কে একটা চাপা গুঞ্জন চলে আসছে প্রায় দু’শ বছর ধরে।\r\n\r\nথমাস জেফারসনের বাসায় স‍্যালি হেমিংস নামক এক কৃষ্ণাঙ্গ মহিলা দাসী হিসেবে কাজ করতেন। এক পত্রিকার সূত্রমতে, স‍্যালি হেমিংসের সাথে থমাস জেফারসনের ছিলো গভীর প্রেমের সম্পর্ক। শুধু তাই নয়, স‍্যালি হেমিংসের তৃতীয় সন্তান এস্টনের গায়ের রং ছিলো সাদাটে। অনেকেই ধারণা করতেন, এস্টন হচ্ছে জেফারসন আর হেমিংসের ভালোবাসার সন্তান। কিন্তু, প্রেসিডেন্ট জেফারসন ও একজন কৃষ্ণাঙ্গ মহিলার বিবাহ-বহির্ভূত প্রণয় তৎকালীন আমেরিকান সমাজে খুবই সংবেদনশীল বিষয় হয়ে দাঁড়াতো। তাই, নানাভাবে এই প্রণয়ের কথা ধামাচাপা দেয়া হয়েছে বলে ধারণা করা হয়। ১৮২৬ সালে থমাস জেফারসন এই বিশাল ধোয়াঁশা অমিমাংসিত রেখেই মৃত‍্যুবরণ করেন।\r\n\r\nপ্রায় দু’শ বছর পরের কথা। ততদিনে জেফারসন, স‍্যালি হেমিংস, এস্টন— সবাই মৃত‍্যুবরণ করেছেন। কিন্তু, বিজ্ঞান ততদিনে চলে গেছে কোষের ভেতরের ডিএনএ পর্যন্ত। সম্পর্ক সনাক্তকরণে ডিএনএ টেস্ট এখন আমাদের সমাজে নিত‍্যদিনের ব‍্যাপার। ১৯৯৬ সালে ভার্জিনিয়া বিশ্ববিদ‍্যালয়ের প্রফেসর ড. ইউজিন ফস্টার সিদ্ধান্ত নিলেন তিনি জেফারসন ও এস্টনের মাঝে কোন সম্পর্ক যদি থাকে তা প্রমাণ করেই ছাড়বেন।\r\n\r\nকিন্তু শত বছর আগে মারা যাওয়া তিনজন মানুষের সম্পর্ক আপনি কীভাবে প্রমাণ করবেন? তাদের সবার লাশের অবশিষ্টাংশ কিংবা অস্তিত্ব আজ খুঁজে পাওয়া দুষ্কর।\r\n\r\nউত্তরটা লুকিয়ে আছে Y ক্রোমোসোমে। আমাদের লিঙ্গ নির্ধারিত হয় X ও Y নামক দুটি ক্রোমোসোম দ্বারা। XX হলে সন্তান মেয়ে হয়; XY হলে সন্তান হবে ছেলে। Y-ক্রোমোসোমটা বাবার কাছ থেকে তার সব ছেলে সন্তানদের মাঝে অপরিবর্তিত অবস্থায় চলে যায়। যেহেতু মেয়ে হতে কোন Y-ক্রোমোসোম দরকার হয় না, সেহেতু বাবার Y-ক্রোমোসোমটা কখনই মেয়ের শরীরে যায় না। সহজ ভাষায় বলতে গেলে, Y-ক্রোমোসোমটা একই পরিবারের সব পুরুষ সদস‍্যদের মাঝে সম্পূর্ণ মিলে যাবে। আপনার দাদা, আপনার বাবা, আপনার চাচা, অাপনার সব চাচাতো ভাই এবং তাদের ছেলে সন্তানদের Y-ক্রোমোসোম সম্পূর্ণ অবিকল। তাই, Y-ক্রোমোসোম ব‍্যবহার করে বাবার দিকের পারিবারিক সম্পর্ক খুব সহজেই বের করে ফেলা যায়।','8','science','10','2020-11-22 17:47:27.359283','leeon'),(2,'জৈব রসায়ন: রাসায়নিক বিক্রিয়া আর ভুলে যাবে না! (শর্টকাটসহ)','এইচএসসিতে রসায়ন পড়ার সময় জৈব রসায়ন অধ্যায়ের নাম শুনে ভয় পায়নি, এমন মানুষ খুঁজে পাওয়াটা একটু কষ্টকর। বিশাল বিশাল রাসায়নিক বিক্রিয়া ও সমীকরণ, তাদের হাজারো ব্যাখ্যা, শত শত যৌগের সমাহার আর বইয়ের পৃষ্ঠার পর পৃষ্ঠা- জৈব রসায়নের কথা শুনলে আমাদের মাথায় এগুলোই আসতো সর্বপ্রথম।','এইচএসসিতে রসায়ন পড়ার সময় জৈব রসায়ন অধ্যায়ের নাম শুনে ভয় পায়নি, এমন মানুষ খুঁজে পাওয়াটা একটু কষ্টকর। বিশাল বিশাল রাসায়নিক বিক্রিয়া ও সমীকরণ, তাদের হাজারো ব্যাখ্যা, শত শত যৌগের সমাহার আর বইয়ের পৃষ্ঠার পর পৃষ্ঠা- জৈব রসায়নের কথা শুনলে আমাদের মাথায় এগুলোই আসতো সর্বপ্রথম। আমি নিজেও রসায়ন বইতে জৈব যৌগ অধ্যায়ের দীর্ঘ ব্যাপ্তি দেখে অনেক হতাশ হয়ে পড়েছিলাম। কিন্তু ধীরে ধীরে বুঝতে পারলাম, এতটাও কঠিন না এই জৈব রসায়ন, বরং একটু মনোযোগ দিয়ে বুঝে বুঝে পড়তে পারলে জৈব রসায়নই হতে পারে তোমার সবচেয়ে বড় অস্ত্র। অনেক সময় দেখা যায়, অনেক ছোট ও সহজ টপিকগুলো বইয়ের পাতায় অনেক বড় করে বর্ণনা করে থাকে। এটি একদিকে যেমন সময়সাপেক্ষ, অন্যদিকে এসব টপিক বুঝতেও কিছুটা বেগ পেতে হয়। ব্যক্তিগতভাবে আমি এরকম অবস্থায় সবসময় ইউটিউবে টেন মিনিট স্কুলে শামির মোন্তাজিদ ভাইয়ার ভিডিওগুলো দেখতাম। ৪-৫ মিনিটের এই ভিডিওগুলো খুব বেশি সহায়তা করবে জৈব যৌগে পারদর্শী হতে হলে।\r\n\r\n\r\n\r\n(Source: Pinterest)\r\nজৈব রসায়নের ভয় আমাদেরকে উপরের ছবির মতই বিব্রতকর অবস্থায় ফেলতে পারে। জৈব রসায়নের প্রতি এই ভয় কাটিয়ে উঠতে চাইলে যে ৫টি বিষয় না জানলেই নয়, সেগুলো আয়ত্তে আনার জন্য রয়েছে নিচের কয়েকটি সহজ নিয়ম ও কিছু শর্টকাট:\r\n\r\n১. ইলেক্ট্রোফাইল-নিউক্লিওফাইল নির্ণয়ন:\r\n\r\n“কোনটা ইলেক্ট্রোফাইল, কোনটা নিউক্লিওফাইল, কিছুই তো বুঝতে পারছি না।”\r\n\r\nসত্যি বলতে, ইলেক্ট্রোফাইল ও নিউক্লিওফাইল চিহ্নিত করা অনেক সহজ একটা ব্যাপার, যতটা না কঠিন করে আমরা চিন্তা করে থাকি। পজিটিভ-নেগেটিভের মারপ্যাচটা একবার ধরতে পারলেই ইলেক্ট্রো-নিওক্লিওফাইল ঘায়েলের ক্রিপ্টোনাইটটা আমাদের হাতের মুঠোয় চলে আসা সময়ের ব্যাপার। কিভাবে? দেখে আসা যাক-\r\n\r\nফাইল শব্দের অর্থ ভালবাসা। এতটুকু জানা থাকলেই আমরা নিজেরাই বুঝতে পারি, ইলেক্ট্রোফাইল কি আর নিওক্লিওফাইল কি। নাম শুনেই বুঝতে পারছি যে, ইলেক্ট্রোফাইল হলো ইলেকট্রনপ্রেমী ও নিওক্লিওফাইল হলো নিউক্লিয়াসপ্রেমী। আমরা ইতিমধ্যে পড়েছি যে, ইলেক্ট্রনের চার্জ ঋণাত্মক ও নিউক্লিয়াসের (প্রোটন-নিউট্রন) চার্জ ধনাত্মক। এখন মনে করো, তুমি মার্সিডিজ বেঞ্জ কোম্পানির বিরাট ভক্ত। তোমার অনেকদিন ধরে ধূসর রঙের একটা মার্সিডিজ এএমজি গাড়ি কেনার ইচ্ছা রয়েছে। মার্সিডিজ গাড়ির প্রতি তোমার এই চাহিদার মানে হলো, তোমার গ্যারেজে ঐ নির্দিষ্ট মডেলের গাড়িটা অনুপস্থিত বা ঘাটতি বিদ্যমান। ঠিক এইরকমই হলো ইলেক্ট্রোফাইল ও নিউক্লিওফাইল। ইলেক্ট্রোফাইল ইলেকট্রনপ্রেমী হওয়ায় তার নিজের কাছে ইলেকট্রনের ঘাটতি রয়েছে। ইলেকট্রনের প্রতি ইলেক্ট্রোফাইলের এই চাহিদা তাকে ধনাত্মক করে তুলে। জেনে রাখা ভাল যে, ধনাত্মক কোনো পদার্থ সর্বদা ঋণাত্মক পদার্থকে লাভ করতে চায়। অন্যদিকে, নিওক্লিওফাইল যেহেতু প্রোটন-নিউট্রনের ধনাত্মক ধর্মের ভক্ত, সুতরাং তারা নিজেরা ঋণাত্মক।\r\n\r\nশর্টকাট: ইলেক্ট্রোফাইলের ক্ষেত্রে,\r\n\r\n তুমি = ইলেক্ট্রোফাইল\r\n\r\nমার্সিডিজ গাড়ি = ইলেকট্রন\r\n\r\nমার্সিডিজ গাড়ির প্রতি তোমার আকাঙ্ক্ষা = ইলেকট্রনের প্রতি ইলেক্ট্রোফাইলের আকাঙ্ক্ষা\r\n\r\nএবার একইভাবে নিউক্লিওফাইলের শর্টকাটও নিজেরাই বের করে নিতে পারবো আমরা।\r\n\r\n২. অ্যালকিন ও অ্যালকাইনের বিক্রিয়ার সাদৃশ্যতা:\r\n\r\nজেনে রাখা ভাল যে, অ্যালকিন ও অ্যালকাইন- এই ধর্মের যৌগগুলো অধিকাংশ বিক্রিয়ায় একই রকমের আচরণ করে থাকে। মূলত এরা অন্য কোনো যৌগের সাথে সংযোজন ও বিয়োজন বিক্রিয়ায় অংশ নিয়ে সাদৃশ্যপূর্ণ আচরণ করে। যেমন: (ইথিন) কে HBr (হাইড্রোজেন ব্রোমাইড) এর সাথে যুক্ত করলে ইথিনের একটি বন্ড ভেঙ্গে যাবে, সাথে সাথে যুক্ত হবে একটি কার্বনের সাথে ও যুক্ত হবে অন্য কার্বনটির সাথে।\r\n\r\nঅ্যালকাইনের ক্ষেত্রেও একই ধরনের বিক্রিয়া দেখা যায়। একই বিক্রিয়াতে ইথাইন () এর সাথে হাইড্রোজেন ব্রোমাইড বিক্রিয়া করলে কার্বনের একটি পাই বন্ধন ভেঙ্গে একটি কার্বনের সাথে হাইড্রোজেনের ধনাত্মক অংশটি এবং অন্য কার্বনের সাথে ব্রোমাইডের ঋণাত্মক অংশটি যুক্ত হবে।\r\n\r\nশর্টকাট: অ্যালকিন ও অ্যালকাইনের একটি বন্ধন ভেঙ্গে যাবে এবং অপর বিক্রিয়কের ধনাত্মক ও ঋণাত্মক অংশগুলো কার্বনের সাথে নতুন বন্ধন গঠন করবে।\r\n\r\n\r\nঘুরে এস জৈব রসায়নের জগৎ থেকে!\r\n\r\n৩. কার্যকরী মূলকের ডিগ্রী:\r\n\r\nজৈব রসায়নের শুরুর দিকে অনেক সময় দেখতে পাবে জৈবের নামের পূর্বে ডিগ্রী লেখা থাকে এবং তারপর যৌগের কার্যকরী মূলকের নাম থাকে, যেমন ১, ২,৩  অ্যালকোহল। পরীক্ষার প্রশ্নে একটা যৌগের রাসায়নিক সংকেত দিয়ে যৌগটির কার্যকরী মূলক কত ডিগ্রী তা জানতে চাওয়া হতে পারে। অনেক সময় দেখা যায় এই ছোট প্রশ্নটির উত্তর দিতে দিতে আমাদের অনেকটা সময় চলে যায়। কিন্তু কার্যকরী মূলকের ডিগ্রী বের করার একটা সহজ পদ্ধতি রয়েছে।\r\n\r\n\r\nউপরের যৌগটি একটি অ্যালকোহল, কেননা এই যৌগে কার্যকরী মূলক হিসেবে OH বা হাইড্রক্সিল মূলক রয়েছে। এখন এই যৌগটির কার্যকরী মূলকের ডিগ্রী বের করার জন্য প্রথমেই আমরা দেখবো যে OH মূলক টা কোন কার্বনের (C) সাথে যুক্ত এবং সেই কার্বনের সাথে আর কতটি কার্বন সরাসরি সংযুক্ত। দেখা যাচ্ছে, OH মূলক যেই কার্বনের সাথে সংযুক্ত, সেই কার্বনের সাথে আরো ৩টি কার্বন যুক্ত রয়েছে। তাই এই যৌগের ক্ষেত্রে কার্যকরী মূলকটির ডিগ্রী ৩ এবং এটি একটি ৩° অ্যালকোহল। এখন বলে রাখা ভালো যে, একদম মাঝ বরাবর যেই কার্বনটি রয়েছে, তার সাথে ঠিক বাম পাশে  CH3CH2 রয়েছে। কিন্তু মাঝের কার্বনটি সরাসরি শুধুমাত্র বামপাশের CH2 এর সাথে যুক্ত। যৌগের সাথে চার্জ কিংবা ফ্রি রেডিক্যাল (মুক্ত অণু-পরমাণু-আয়ন) দেয়া থাকলেও নিয়মটা একই। দেখতে হবে যে, সেই চার্জ যেই কার্বনের সাথে যুক্ত, সেই কার্বন অন্য কতটি কার্বনের সাথে সরাসরি যুক্ত।\r\n\r\n\r\n\r\n(Source: 10 Minute School)\r\nদেখা যাচ্ছে, CH এ একটি ধনাত্মক চার্জ বিদ্যমান। সুতরাং চার্জ সম্বলিত কার্বনটি CH2  ও CH3 এর সাথে সরাসরি যুক্ত। তাই এটি হবে ২°-কার্বো ক্যাটায়ন।\r\n\r\nশূন্য ডিগ্রী বলতে কিছু নেই, শূন্য ডিগ্রীর বদলে বলা হয় মিথাইল। অর্থাৎ কোনো যৌগের ডিগ্রী শূন্য হলে তা মূলত একটি মিথাইল।\r\n\r\nশর্টকাট: কার্যকরী মূলকটি যে কার্বনে যুক্ত, সেই কার্বনটি আর কতটি কার্বনের সাথে ‘সরাসরি ‘ সংযুক্ত।\r\n\r\n৪. যৌগের রূপান্তর :\r\n\r\n\r\n\r\n(Source: byjus.com)\r\nরাসায়নিক বিক্রিয়ার মাধ্যমে এক যৌগ থেকে অন্য যৌগ তৈরি করাই মূলত জৈব যৌগের রূপান্তর বা Conversion of Organic Elements নামে পরিচিত। অনেক সময় দেখা যায়, প্রদত্ত উৎপাদ সরাসরি বিক্রিয়ক থেকে উৎপন্ন করা যায় না। তখন ধাপে ধাপে আরো অনেক যৌগ উৎপন্নের মাধ্যমে কাঙ্ক্ষিত উৎপাদ পাওয়া যায়। তবে হাজারো যৌগের মাঝে কোনটা ছেড়ে কোনটা তৈরি হবে, বিষয়টা আসলেই একটু জটিলই বটে। তবে হতাশ হয়ে পড়ার কোনো কারণ নেই কারণ সবচেয়ে জটিল জিনিসের সমাধান সবচেয়ে সহজ হয়। আর যৌগের রূপান্তর নামক ভয়ংকর এই চোরাবালি থেকে বেড়িয়ে আসার উপায় হলো- যৌগ রূপান্তরের ফ্লো চার্ট (Flow chart of Conversion Reactions) । এই চার্টের মাধ্যমে খুব সহজেই এক যৌগ থেকে অন্য যৌগ তৈরির ধাপগুলো জানা যায়।\r\n\r\n\r\n\r\n(Source: Self illustrated)\r\nউপরের ফ্লো-চার্টটি থেকে খুব সহজেই বুঝা যায় যে কোন যৌগ থেকে কোন যৌগ উৎপন্ন সম্ভব এবং তাদের অন্তর্বর্তীকালীন উৎপন্ন হওয়া যৌগগুলো। যদিও এই ছকের বাহিরেও প্রত্যেকটি যৌগ তৈরি করার অনেক নিয়ম আছে। তবে এই ফ্লো-চার্টের মাধ্যমে আমরা ভাল একটি ধারণা পাবো জৈব রসায়নের অনেক ছোটবড় যৌগ তৈরির পদ্ধতি সম্পর্কে।\r\n\r\nশর্টকাট: এক যৌগ থেকে অন্য যৌগ তৈরির উল্লেখিত ফ্লোচার্টটি তখনই পরিপূর্ণতা লাভ করবে যখন আমরা বিক্রিয়ার সম্পূর্ণ পদ্ধতি জানতে পারবো। চার্ট থেকে আমরা বিক্রিয়ায় অংশ নেয়া একটি বিক্রিয়কের তথ্য পেতে পারি। রাসায়নিক বিক্রিয়ায় অংশ নেয়া অপর বিক্রিয়কগুলো সম্বন্ধে জানতে পারবো নিম্নোক্ত তথ্যের মাধ্যমে,\r\n\r\nঅ্যালকেন থেকে অ্যালকাইল হ্যালাইড ক্লোরিন যুক্ত করতে হবে (ক্লোরিনেশন)।\r\nঅ্যালকিন থেকে অ্যালকাইল হ্যালাইড হ্যালোজেন যুক্ত করতে হবে।\r\nঅ্যালকাইন থেকে বেনজিন (অ্যারোমেটিক যৌগ) পলিমারাইজেশন করতে হবে।\r\nঅ্যালকাইল হ্যালাইড থেকে অ্যালকোহল পানি সংযোজন করতে হবে।\r\nঅ্যালকাইল হ্যালাইড থেকে অ্যালকাইল সায়নাইড নাইট্রোজেন যুক্ত করতে হবে।\r\nঅ্যালকাইল হ্যালাইড থেকে ইথার সিলভার অক্সাইড ( যুক্ত করতে হবে।\r\nঅ্যালকাইল সায়নাইড থেকে অ্যামিন অ্যালকাইল সায়নাইড লঘু করতে হবে।\r\nঅ্যালকোহল থেকে কার্বক্সিলিক এসিড অক্সিডেশন করতে হবে।\r\nপ্রাইমারী অ্যালকোহল থেকে অ্যালডিহাইড কন্ট্রোল অক্সিডেশন করতে হবে।\r\nসেকেন্ডারি অ্যালকোহল থেকে কিটোন অক্সিডেশন করতে হবে।\r\nকার্বক্সিলিক এসিড থেকে এস্টার অ্যালকোহল যুক্ত করতে হবে।\r\nকার্বক্সিলিক এসিড থেকে অ্যামাইড অ্যামোনিয়া যুক্ত করতে হবে।\r\nকার্বক্সিলিক এসিড থেকে আসাইল হ্যালাইড ফসফরাস পেন্টাক্লোরাইড ( / ফরফরাস ট্রাইক্লোরাইড  / থায়োনাইল ক্লোরাইড (যুক্ত করতে হবে।\r\nকার্বক্সিলিক এসিড থেকে অ্যানহাইড্রাইড দহন করতে হবে।\r\n৫. উর্টজ বিক্রিয়া:\r\n\r\nজৈব রসায়ন পড়ার সময় কোনো না কোনো পর্যায়ে এসে উর্টজ বিক্রিয়া্র নাম আমরা শুনেই থাকবো। উর্টজ বিক্রিয়ায় দেখা যায়, অ্যালকাইল হ্যালাইড বা হ্যালোঅ্যালকেন ধাতব সোডিয়ামের সাথে বিক্রিয়া করে উচ্চতর অ্যালকেন গঠন করে। এই বিক্রিয়া লেখার সময় আমাদের অনেকেরই ভুল হয়। তাই এটি মনে রাখার একটি শর্টকাট হলো,\r\n\r\n\r\n\r\n(Source: Self illustrated)\r\nএখানে একটি মজার ব্যাপার হলো, উৎপাদে কতগুলো অ্যালকেন তৈরি হবে তা নির্ভর করে মূল অ্যালকাইল হ্যালাইডে অ্যালকেনের সংখ্যার উপর। উৎপাদে সর্বদা মূল অ্যালকাইল হ্যালাইডের অ্যালকেনের দ্বিগুণ অ্যালকেন উৎপন্ন হবে। এখানে অনুঘটক হিসেবে উপস্থিত থাকবে শুষ্ক ইথার। এই নিয়মে বিক্রিয়কের কেবল প্রথম অ্যালকাইল হ্যালাইড ছাড়া অন্য কোনো অ্যালকাইল হ্যালাইডের সংখ্যা গণ্য করা হয় না। উক্ত সাংকেতিক বিক্রিয়ায় মূল অ্যালকাইল হ্যালাইডে একটি মাত্র অ্যালকেন রয়েছে। সুতরাং উৎপাদে তার দ্বিগুণ অর্থাৎ ২টি অ্যালকেন উৎপন্ন হবে। উপরের ছবির বিক্রিয়ার ন্যায় উৎপাদে সর্বদা সোডিয়াম ধাতুর সাথে অ্যালকাইল হ্যালাইডের হ্যালোজেন যুক্ত হবে এবং বিক্রিয়কের দুই পার্শ্ববর্তী R উৎপাদে একত্রিত হবে।\r\n\r\nআধুনিক রসায়নে জৈব রসায়ন এমন একটি গুরুত্বপূর্ণ অধ্যায়, যা বিস্তৃতি লাভ করেই চলছে। একদিনেই জৈব রসায়নে পারদর্শিতা সম্ভব, এরকম ভাবা বোকামিই হবে। তবে নিয়মিত চর্চা আর উপরের নিয়মগুলোর মত সহজ করে পড়তে পারলে জৈব যৌগের কনসেপ্ট ছোট্ট শিশুদের ধারাপাত বইয়ের মতই মজাদার আর সহজ হয়ে যাবে। আর তখন রসায়নকে সত্যিকার অর্থেই রসে পরিপূর্ণ বলে মনে হবে।','11','Chemistry','5','2020-11-22 17:49:21.339338','rohan');
/*!40000 ALTER TABLE `main_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_slide`
--

DROP TABLE IF EXISTS `main_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_slide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_slide`
--

LOCK TABLES `main_slide` WRITE;
/*!40000 ALTER TABLE `main_slide` DISABLE KEYS */;
INSERT INTO `main_slide` VALUES (1,'Welcome to Student judge','Love of learning, love of learners, and the love of bringing the first two loves together.','slide/hero-bg_9b4ypI7.jpg'),(2,'Learning Today, Leading Tomorrow','One good teacher in a lifetime may sometimes change a delinquent into a solid citizen.','slide/hero-bg1_e17sBsL.jpg'),(3,'Famous Quota','We learned about honesty and integrity - that the truth matters... that you don\'t take shortcuts or play by your own set of rules... and success doesn\'t count unless you earn it fair and square','slide/hero-bg3_xcTDx5u.jpg');
/*!40000 ALTER TABLE `main_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_video`
--

DROP TABLE IF EXISTS `main_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `video` varchar(200) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `author` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_video_created_f0c54e9e` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_video`
--

LOCK TABLES `main_video` WRITE;
/*!40000 ALTER TABLE `main_video` DISABLE KEYS */;
INSERT INTO `main_video` VALUES (1,'বীজগাণিতিক রাশি','http://youtube.com/watch?v=BrA-yv1a9d4','9','math','2','2020-11-23 04:23:35.885045','Arnob');
/*!40000 ALTER TABLE `main_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-25 21:34:52
