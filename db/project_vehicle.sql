-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2018 at 02:01 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `pk_student`
--

CREATE TABLE IF NOT EXISTS `pk_student` (
`std_id` int(5) NOT NULL,
  `std_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_gender` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_prename` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_pin_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pk_student`
--

INSERT INTO `pk_student` (`std_id`, `std_code`, `std_gender`, `std_prename`, `std_name`, `std_lname`, `std_pin_id`, `std_birthday`, `std_username`, `std_password`, `g_code`) VALUES
(1, '6139010001', 'ชาย', 'นาย', 'ชาติชาย', 'ชัยภูมิ', '1468890567893', '12/12/1999', 'user01', 'user01', '61390101'),
(2, '6139010002', 'หญิง', 'นางสาว', 'สมหญิง', 'สกุลไทย', '1468890567894', '12/12/1999', 'user02', 'user02', '61390101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pk_student`
--
ALTER TABLE `pk_student`
 ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pk_student`
--
ALTER TABLE `pk_student`
MODIFY `std_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
