/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.1.37-MariaDB : Database - db_karyawan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_karyawan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_karyawan`;

/*Table structure for table `tb_karyawan` */

DROP TABLE IF EXISTS `tb_karyawan`;

CREATE TABLE `tb_karyawan` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `divisi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tb_karyawan` */

LOCK TABLES `tb_karyawan` WRITE;

insert  into `tb_karyawan`(`no`,`nik`,`nama_karyawan`,`jabatan`,`tgl_masuk`,`divisi`) values (6,'17300002','Hafif','Technical Support','2019-06-07','Umum'),(9,'17300003','Mas Untoro','Technical Support','2019-06-11','Staff'),(10,'17300001','Untoro R','Technical Support','2019-06-10','Staff'),(12,'17300004','Husna Hulzanah','Accounting','2019-04-01','Staff');

UNLOCK TABLES;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `level` enum('admin','user','superuser') DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

LOCK TABLES `tb_user` WRITE;

insert  into `tb_user`(`no`,`nik`,`nama_karyawan`,`level`,`password`) values (1,'101651016','Untoro','admin','123admin456'),(2,'101651016','Untoro','admin','123admin456');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
