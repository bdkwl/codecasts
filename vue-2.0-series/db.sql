/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - codecasts_vuetodos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`codecasts_vuetodos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codecasts_vuetodos`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_05_28_060938_create_todos_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `todos` */

DROP TABLE IF EXISTS `todos`;

CREATE TABLE `todos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `todos` */

insert  into `todos`(`id`,`title`,`completed`,`created_at`,`updated_at`) values (1,'qD8yLdSXz7w4MFquAjvt',1,NULL,'2018-06-01 13:52:38'),(3,'z4Tv2YB1lO0FOd7trIZJ',0,NULL,NULL),(4,'Ipwcruokhhikqf6C0SeH',0,NULL,NULL),(5,'Vy68YtuOT5yRUtFdip7K',0,NULL,NULL),(6,'BobX1ZHJw2GitMdJb5s7',0,NULL,NULL),(7,'ROaePTyHnfwg3YxWFSYo',0,NULL,NULL),(8,'VziuuWgxTaqPDqc8veMW',0,NULL,NULL),(9,'KBu9wVgeJnpNSgfbcMva',0,NULL,NULL),(10,'ZSU7IQrQbifYF7WIWn6b',0,NULL,NULL),(11,'GPTZ22xFk2Bpvc3BtlA3',0,NULL,NULL),(12,'86pii5skcU2GJmtOubYr',0,NULL,NULL),(13,'xvchlyJ6YwwbZ36ZMEAp',0,NULL,NULL),(14,'pU50o9nfndPH7gFNTudJ',0,NULL,NULL),(15,'oW7yY5rl8tWxcGqveHhy',0,NULL,NULL),(16,'4i2psNEqi4v7PpWxduSd',0,NULL,NULL),(17,'WHBXvJFsJSmXCADGouQN',0,NULL,NULL),(18,'VfL62t3vmVU8dYZINEn0',0,NULL,NULL),(19,'CBboaciIkzltZQrpcO2L',0,NULL,NULL),(20,'0sD5AOHUfAt4c0RpblaO',0,NULL,NULL),(21,'eeeee',0,'2018-06-01 05:42:23','2018-06-01 05:42:23'),(22,'go to shop',0,'2018-06-01 13:45:21','2018-06-01 13:45:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
