-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for giaysneaker
CREATE DATABASE IF NOT EXISTS `giaysneaker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `giaysneaker`;

-- Dumping structure for table giaysneaker.chitietdonhang
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `userId` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `gia` float NOT NULL,
  PRIMARY KEY (`userId`,`masp`),
  KEY `masp` (`masp`),
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `nguoidung` (`id`),
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table giaysneaker.chitietgiohang
CREATE TABLE IF NOT EXISTS `chitietgiohang` (
  `userId` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gia` float NOT NULL,
  PRIMARY KEY (`userId`,`masp`),
  KEY `masp` (`masp`),
  CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `nguoidung` (`id`),
  CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table giaysneaker.donhang
CREATE TABLE IF NOT EXISTS `donhang` (
  `maDH` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` float NOT NULL,
  `ngay` date NOT NULL,
  PRIMARY KEY (`maDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table giaysneaker.giohang
CREATE TABLE IF NOT EXISTS `giohang` (
  `idUser` int(11) NOT NULL,
  `tongtien` float NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table giaysneaker.loaisanpham
CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table giaysneaker.nguoidung
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gt` bit(1) DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table giaysneaker.sanpham
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gia` float NOT NULL,
  `hinh` varchar(100) DEFAULT NULL,
  `maloai` int(11) DEFAULT NULL,
  PRIMARY KEY (`masp`),
  KEY `maloai` (`maloai`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
