-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2018 at 07:05 PM
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
  `std_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_blood` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pk_student`
--

INSERT INTO `pk_student` (`std_id`, `std_code`, `std_gender`, `std_prename`, `std_name`, `std_lname`, `std_pin_id`, `std_birthday`, `std_username`, `std_password`, `g_code`, `std_blood`) VALUES
(1, '6139010001', 'ชาย', 'นาย', 'ชาติชาย', 'ชัยภูมิ', '1468890567893', '12/12/1999', 'user01', 'user01', '61390101', NULL),
(2, '6139010002', 'หญิง', 'นางสาว', 'สมหญิง', 'สกุลไทย', '1468890567894', '12/12/1999', 'user02', 'user02', '61390101', NULL),
(3, '1', 'ชาย', 'นาย', 'name', 'lname', '2', 'birth', '', '', '', 'A'),
(4, '2', 'หญิง', 'นางสาว', 'นิชา', 'เติบ', '2', '5 พ.ค.2540', '', '', '', 'B'),
(5, '2', 'หญิง', 'นางสาว', 'นิชา', 'เติบ', '2', '5 พ.ค.2540', NULL, NULL, NULL, 'B'),
(6, '6039010002', 'ชาย', 'นาย', 'ชาญ', 'บุญ', '1369900467391', '24 พ.ย. 2541', NULL, NULL, NULL, 'B'),
(7, '6039010002', 'ชาย', 'นาย', 'ชาญ', 'บุญ', '1369900467391', '24 พ.ย. 2541', '6039010002', '1369900467391', NULL, 'B'),
(8, '6039010002', 'ชาย', 'นาย', 'ชาฐ', 'บุญ', '1369900467391', '24 พ.ย. 2541', '6039010002', '13699004673911', '60390101', 'B'),
(10, '', '', '', '', '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', '', '', '', '', ''),
(12, '1', '', '', '1', '1', '1', '1', '1', '1', '1', ''),
(13, '', '', '', '', '', '', '', '', '', '', ''),
(14, '', '', '', '', '', '', '', '', '', '', ''),
(15, '252525', '', '', '', '', '', '', '252525', '', '', '');

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
MODIFY `std_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
