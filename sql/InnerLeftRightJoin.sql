-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table test.inner_join1
CREATE TABLE IF NOT EXISTS `inner_join1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inner_join_1` text DEFAULT NULL,
  `inner_join_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table test.inner_join1: ~4 rows (approximately)
INSERT INTO `inner_join1` (`id`, `inner_join_1`, `inner_join_id`) VALUES
	(1, 'inner join text 1', 111),
	(2, 'inner join text 2', 222),
	(3, 'inner join 1 text 3', 111),
	(4, 'inner join 1, text 4', 777);

-- Dumping structure for table test.inner_join2
CREATE TABLE IF NOT EXISTS `inner_join2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inner_join_2` text DEFAULT NULL,
  `inner_join_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table test.inner_join2: ~5 rows (approximately)
INSERT INTO `inner_join2` (`id`, `inner_join_2`, `inner_join_id`) VALUES
	(1, 'inner join 2 text 11', 111),
	(2, 'inner join 2 text 222', 222),
	(3, 'inner join 2 text 33', 111),
	(4, 'Inner join 2 texxt 444', 444),
	(5, 'Inner Join 2 text 55', 222);

-- Dumping structure for table test.left_join1
CREATE TABLE IF NOT EXISTS `left_join1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `left_join_1` text DEFAULT NULL,
  `left_join_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table test.left_join1: ~4 rows (approximately)
INSERT INTO `left_join1` (`id`, `left_join_1`, `left_join_id`) VALUES
	(1, 'left join text 1', 111),
	(2, 'left join text 2', 222),
	(3, 'left join 1 text 3', 111),
	(4, 'Left joij 1, text 4', 999);

-- Dumping structure for table test.left_join2
CREATE TABLE IF NOT EXISTS `left_join2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `left_join_2` text DEFAULT NULL,
  `left_join_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table test.left_join2: ~6 rows (approximately)
INSERT INTO `left_join2` (`id`, `left_join_2`, `left_join_id`) VALUES
	(1, 'left join 2 text 11', 111),
	(2, 'left join 2 text 222', 222),
	(3, 'left join 2 text 33', 111),
	(4, 'left join 2 texxt 444', 444),
	(5, 'left Join 2 text 55', 222),
	(6, 'Left join 2, texxti 66', 222);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
