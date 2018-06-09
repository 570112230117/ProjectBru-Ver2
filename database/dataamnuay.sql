-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table amnuay.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping data for table amnuay.repair: ~10 rows (approximately)
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` (`repair_id`, `repair_date`, `repair_name`, `repair_address`, `repair_phone`, `repair_email`, `repair_warranty`, `repair_serialnumber`, `repair_type`, `repair_product`, `repair_waste`, `repair_detail`, `repair_appointment`) VALUES
	(78, '2018-05-28 00:42:56', 'อำนวย กลีบม่วง', '129/2 บ้านหนองขอน อ.กระสัง จ.บุรีรัมย์', '0998094514', 'am-nuay2010@hotmail.com', 'ในประกัน', 'AOG', '4', 'คอมพิวเตอร์', 'เปิดไม่ติด', '', '2018-05-29'),
	(79, '2018-05-28 14:14:11', 'นายสกล กมลรัมย์', 'ประโคนชัย', '0831238921', 'a@a.com', 'นอกประกัน', 'ewqewq', '2', 'กระติกน้ำร้อน', 'พัง', '', '2018-05-31'),
	(80, '2018-05-29 14:40:41', 'bbb', 'bbb', 'bbb', 'aaa', 'นอกประกัน', 'aa', '2', 'เตาไมโครเวฟ', 'aaa', '', NULL),
	(81, '2018-05-29 14:50:32', 'top', 'll', 'll', 'll', 'นอกประกัน', 'll', '2', 'หม้อหุงข้าว', 'll', '', NULL),
	(82, '2018-05-29 14:54:50', 'dd', 'dd', 'dd', 'dd', '', 'dd', '3', 'หลอดไฟ', 'dd', '', NULL),
	(83, '2018-05-29 14:57:23', 'sakon', '', '', '', '', '', '', '', '', '', NULL),
	(84, '2018-05-29 14:58:24', 'sakonp', '', '', '', '', '', '', '', '', '', NULL),
	(85, '2018-06-03 22:41:51', 'aa', 'aaa', 'aaa', 'aaa', 'นอกประกัน', 'aaa', '1', 'ตู้เย็น ', 'aa', 'aa', '2018-06-09'),
	(86, '2018-06-05 02:34:46', 'xxx', 'xxx', 'xxx', 'am-nuay2010@hotmail.com', 'ในประกัน', 'xxx', '2', 'กระติกน้ำร้อน', 'xxx', 'xxx', '2018-06-06'),
	(87, '2018-06-05 02:34:46', 'xxx', 'xxx', 'xxx', 'am-nuay2010@hotmail.com', '', 'xxx', '', NULL, 'xxx', 'xxx', '2018-06-06');
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;

-- Dumping data for table amnuay.type_appliances: ~5 rows (approximately)
/*!40000 ALTER TABLE `type_appliances` DISABLE KEYS */;
INSERT INTO `type_appliances` (`id`, `type_name`) VALUES
	(1, 'ประเภทเครื่องทำความเย็น'),
	(2, 'ประเภทเครื่องทำความร้อน'),
	(3, 'ประเภทให้แสงสว่าง'),
	(4, 'ประเภทให้ความบันเทิง'),
	(5, 'ประเภทมอเตอร์และสายพาน');
/*!40000 ALTER TABLE `type_appliances` ENABLE KEYS */;

-- Dumping data for table amnuay.type_product: ~17 rows (approximately)
/*!40000 ALTER TABLE `type_product` DISABLE KEYS */;
INSERT INTO `type_product` (`id`, `product`, `type_name`, `type_id`) VALUES
	(1, 'แอร์', 'ประเภทเครื่องทำความเย็น', 1),
	(2, 'ตู้เย็น ', 'ประเภทเครื่องทำความเย็น', 1),
	(3, 'กระติกน้ำร้อน', 'ประเภทเครื่องทำความร้อน', 2),
	(4, 'หม้อหุงข้าว', 'ประเภทเครื่องทำความร้อน', 2),
	(5, 'เครื่องทำน้ำอุ่น', 'ประเภทเครื่องทำความร้อน', 2),
	(6, 'เตาไมโครเวฟ', 'ประเภทเครื่องทำความร้อน', 2),
	(7, 'กระทะไฟฟ้า', 'ประเภทเครื่องทำความร้อน', 2),
	(8, 'เครื่องปิ่งขนมปัง', 'ประเภทเครื่องทำความร้อน', 2),
	(9, 'เตารีด', 'ประเภทเครื่องทำความร้อน', 2),
	(10, 'ไฟฉาย', 'ประเภทให้แสงสว่าง', 3),
	(11, 'หลอดไฟ', 'ประเภทให้แสงสว่าง', 3),
	(12, 'โทรทัศน์', 'ประเภทให้ความบันเทิง', 4),
	(13, 'เสตอริโอ', 'ประเภทให้ความบันเทิง', 4),
	(14, 'คอมพิวเตอร์', 'ประเภทให้ความบันเทิง', 4),
	(15, 'พัดลม', 'ประเภทมอเตอร์และสายพาน', 5),
	(16, 'เครื่องซักผ้า', 'ประเภทมอเตอร์และสายพาน', 5),
	(17, 'เครื่องปั่นผลไม้', 'ประเภทมอเตอร์และสายพาน', 5);
/*!40000 ALTER TABLE `type_product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
