-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for hp_online
CREATE DATABASE IF NOT EXISTS `hp_online` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hp_online`;

-- Dumping structure for table hp_online.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hp_online.admin: ~4 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`Username`, `Password`) VALUES
	('Atta', 'Ashiap'),
	('Felix', 'Brofist'),
	('Ria', 'Squishy'),
	('Saaih', 'Mantab');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table hp_online.pembeli
CREATE TABLE IF NOT EXISTS `pembeli` (
  `NIK` varchar(13) NOT NULL,
  `Nama` varchar(15) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `Merk_HP` varchar(10) NOT NULL,
  `Tipe_HP` varchar(20) NOT NULL,
  `Warna_HP` varchar(10) NOT NULL,
  `Banyak_HP` varchar(2) NOT NULL,
  `Metode_bayar` varchar(20) NOT NULL,
  `no_rekening` varchar(15) NOT NULL,
  `total_harga` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`NIK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hp_online.pembeli: ~9 rows (approximately)
/*!40000 ALTER TABLE `pembeli` DISABLE KEYS */;
INSERT INTO `pembeli` (`NIK`, `Nama`, `Alamat`, `Merk_HP`, `Tipe_HP`, `Warna_HP`, `Banyak_HP`, `Metode_bayar`, `no_rekening`, `total_harga`) VALUES
	('135791', 'Anshor', 'Cikunir', 'Sony', 'Xperia 1 6/128GB', 'Putih', '2', 'Bank Mandiri', '089173', 14500000),
	('239864', 'Aceng', 'Cibaduyut', 'Samsung', 'Galaxy S10 6/128GB', 'Hitam', '1', 'Bank Danamon', '678125', 12999000),
	('287659', 'Achmad', 'Pagarsih', 'Samsung', 'Galaxy S10e 6/128GB', 'Hitam', '1', 'Bank Mandiri', '753693', 10499000),
	('293579', 'Udin', 'Holis', 'Sony', 'Xperia 10 4/64GB', 'Putih', '1', 'Bank BRI', '127679', 5000000),
	('327322', 'Bambang', 'Cijambe', 'iPhone', 'iPhone XR 256GB', 'Putih', '5', 'Bank Mandiri', '231646', 91495000),
	('327322149', 'Benyamin', 'Bandung', 'Sony', 'Xperia 10 Plus 4/64G', 'Hitam', '3', 'Bank BNI', '31546', 18000000),
	('327322569465', 'hu tao', 'wangsen', 'iPhone', 'iPhone XR 128GB', 'Hitam', '2', 'Bank BCA', '3161331', 32998000),
	('384756', 'Asep', 'Cibiru', 'iPhone', 'iPhone XS 64GB', 'Putih', '1', 'Bank Mandiri', '237898', 20499000),
	('925697', 'Umar', 'Cijambe', 'iPhone', 'iPhone XS 256GB', 'Putih', '2', 'Bank BCA', '087342', 23499000);
/*!40000 ALTER TABLE `pembeli` ENABLE KEYS */;

-- Dumping structure for table hp_online.status_pembelian
CREATE TABLE IF NOT EXISTS `status_pembelian` (
  `NIK_pembeli` varchar(13) NOT NULL,
  `nama_pembeli` varchar(20) NOT NULL,
  `HP_yang_dibeli` varchar(30) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Keterangan` varchar(25) NOT NULL,
  PRIMARY KEY (`Keterangan`),
  KEY `NIK_pembeli` (`NIK_pembeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hp_online.status_pembelian: ~3 rows (approximately)
/*!40000 ALTER TABLE `status_pembelian` DISABLE KEYS */;
INSERT INTO `status_pembelian` (`NIK_pembeli`, `nama_pembeli`, `HP_yang_dibeli`, `Status`, `Keterangan`) VALUES
	('135791', 'Anshor', 'Sony Xperia 1 6/128GB', 'Dikirim', 'Sampai di kota tujuan'),
	('239864', 'Aceng', 'Samsung Galaxy S10 6/128GB', 'Diproses', 'Sedang dikemas'),
	('112234', 'Udin', 'Samsung Galaxy S10+ 8/512GB', 'Dibatalkan', 'Stock kosong');
/*!40000 ALTER TABLE `status_pembelian` ENABLE KEYS */;

-- Dumping structure for table hp_online.stock_hp
CREATE TABLE IF NOT EXISTS `stock_hp` (
  `Merk_HP` varchar(10) NOT NULL,
  `Tipe_HP` varchar(20) NOT NULL,
  `Stock_Tersedia` int(3) NOT NULL,
  PRIMARY KEY (`Stock_Tersedia`),
  KEY `Merk_HP` (`Merk_HP`),
  KEY `Tipe_HP` (`Tipe_HP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hp_online.stock_hp: ~8 rows (approximately)
/*!40000 ALTER TABLE `stock_hp` DISABLE KEYS */;
INSERT INTO `stock_hp` (`Merk_HP`, `Tipe_HP`, `Stock_Tersedia`) VALUES
	('Samsung', 'Galaxy S10+ 12/1TB', 7),
	('Sony', 'Xperia 1 6/128GB', 8),
	('Samsung', 'Galaxy S10e 6/128GB ', 10),
	('Samsung', 'Galaxy S10+ 8/128GB', 12),
	('Sony', 'Xperia 10 4/64GB', 13),
	('iPhone', 'iPhone XS 256GB', 15),
	('Samsung ', 'Galaxy S10 6/128GB', 20),
	('iPhone', 'iPhone XR 64GB', 25);
/*!40000 ALTER TABLE `stock_hp` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
