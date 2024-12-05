-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 08:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bulsulib`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `floor` varchar(10) NOT NULL,
  `room` varchar(30) NOT NULL,
  `slotnumber` int(11) DEFAULT NULL,
  `opentime` time NOT NULL,
  `closetime` time NOT NULL,
  `min_slot` int(11) NOT NULL,
  `max_slot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `floor`, `room`, `slotnumber`, `opentime`, `closetime`, `min_slot`, `max_slot`) VALUES
(1, 'GF', 'CYBER NOOK AREA', 10, '08:00:00', '17:00:00', 1, 3),
(2, 'GF', 'PWD COLLECTION ROOM', 10, '08:00:00', '17:00:00', 1, 3),
(3, 'GF', 'Bulsu Area', 15, '08:00:00', '17:00:00', 1, 3),
(4, '2F', 'READING AREA 1', 10, '08:00:00', '17:00:00', 1, 3),
(5, '2F', 'READING AREA 2', 10, '08:00:00', '17:00:00', 1, 3),
(6, '2F', 'READING AREA 3', 10, '08:00:00', '17:00:00', 1, 3),
(7, '2F', 'READING AREA 4', 10, '08:00:00', '17:00:00', 1, 3),
(8, '2F', 'READING AREA 5', 10, '08:00:00', '17:00:00', 1, 3),
(9, '2F', 'READING AREA 6', 10, '08:00:00', '17:00:00', 1, 3),
(10, '2F', 'READING AREA 7', 10, '08:00:00', '17:00:00', 1, 3),
(11, '2F', 'READING AREA 8', 10, '08:00:00', '17:00:00', 1, 3),
(12, '2F', 'LOUNGE AREA', 10, '08:00:00', '17:00:00', 1, 3),
(15, '3F', 'READING AREA / LOUNGE AREA', 10, '08:00:00', '17:00:00', 1, 3),
(16, '3F', 'READING AREA 1', 10, '08:00:00', '17:00:00', 1, 3),
(17, '3F', 'READING AREA 2', 10, '08:00:00', '17:00:00', 1, 3),
(18, '3F', 'READING AREA 3', 10, '08:00:00', '17:00:00', 1, 3),
(19, '4F', 'READING AREA 1', 10, '08:00:00', '17:00:00', 1, 3),
(20, '4F', 'BULACANIANA SECTION', 10, '08:00:00', '17:00:00', 1, 3),
(21, '4F', 'LOUNGE AREA', 10, '08:00:00', '17:00:00', 1, 3),
(31, '5F', 'LOUNGE', 10, '08:00:00', '17:00:00', 1, 3),
(32, '6F', 'CYBER NOOK AREA 1', 10, '08:00:00', '17:00:00', 1, 3),
(33, '6F', 'CYBER NOOK AREA 2', 10, '08:00:00', '17:00:00', 1, 3),
(34, '6F', 'CYBER NOOK AREA 3', 10, '08:00:00', '17:00:00', 1, 3),
(35, '6F', 'CYBER NOOK AREA 4', 10, '08:00:00', '17:00:00', 1, 3),
(36, '6F', 'CYBER NOOK AREA 5', 10, '08:00:00', '17:00:00', 1, 3),
(37, '6F', 'CYBER NOOK AREA 6', 10, '08:00:00', '17:00:00', 1, 3),
(38, '6F', 'LOUNGE AREA 1', 10, '08:00:00', '17:00:00', 1, 3),
(39, '6F', 'LOUNGE AREA 2', 10, '08:00:00', '17:00:00', 1, 3),
(40, '7F', 'THEATER LOBBY', 10, '08:00:00', '17:00:00', 1, 3),
(106, '2F', 'PWD Collection Room', 70, '08:00:00', '19:00:00', 1, 3),
(107, 'GF', 'Flatform Area', 10, '08:00:00', '17:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL,
  `qrcode` varchar(20) DEFAULT NULL,
  `rfid` varchar(20) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `srcode` varchar(20) DEFAULT NULL,
  `kiosk` varchar(11) DEFAULT NULL,
  `floor` varchar(5) DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  `out_time` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `building` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`id`, `category`, `qrcode`, `rfid`, `username`, `srcode`, `kiosk`, `floor`, `in_time`, `out_time`, `date`, `building`) VALUES
(5, '', '01', '', 'Ansel Christian Santos', '2023101024', 'Kiosk 1', NULL, '2024-01-18 17:08:56', '2024-01-18 17:09:04', '2024-01-18', ''),
(6, '', '2023101040', '', 'Anhar Bacsa', '2023101040', 'Kiosk 1', NULL, '2024-01-18 17:09:37', '2024-01-18 17:09:44', '2024-01-18', ''),
(7, '', '02', '', 'Lorenzo Delos Santos Jr', '2023100898', 'Kiosk 1', NULL, '2024-01-24 13:22:59', NULL, '2024-01-24', '');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `username` char(6) NOT NULL,
  `employee_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_id` char(3) NOT NULL,
  `shift_id` int(1) NOT NULL,
  `location_id` int(1) NOT NULL,
  `in_time` int(11) NOT NULL,
  `notes` varchar(120) NOT NULL,
  `image` varchar(50) NOT NULL,
  `lack_of` varchar(11) NOT NULL,
  `in_status` varchar(15) NOT NULL,
  `out_time` int(11) NOT NULL,
  `out_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `username`, `employee_id`, `department_id`, `shift_id`, `location_id`, `in_time`, `notes`, `image`, `lack_of`, `in_status`, `out_time`, `out_status`) VALUES
(45, 'ADM011', 011, 'ADM', 1, 1, 1589178316, 'sdf', 'item-200511-8f5d7be1a1.jpg', 'None', 'Late', 1589178477, 'Early'),
(48, 'ADM011', 011, 'ADM', 1, 1, 1589381121, '', 'item-200513-ad6953a07e.jpg', 'Notes', 'Late', 1589381127, 'Over Time'),
(49, 'PCD010', 010, 'PCD', 2, 1, 1589384432, 'asdasd', '', 'None,image', 'Late', 1589384514, 'Over Time'),
(50, 'ADM011', 011, 'ADM', 1, 1, 1589391038, '', '', 'Notes,image', 'On Time', 1589391056, 'Early'),
(51, 'PCD010', 010, 'PCD', 3, 1, 1622553388, 'testing', 'item-210601-3946bb00df.png', 'None', 'Late', 1622553470, 'Over Time'),
(52, 'PCD010', 010, 'PCD', 3, 2, 1631893356, 'none', '', 'None,image', 'Late', 1631893413, 'Over Time'),
(53, 'STD026', 026, 'STD', 1, 1, 1631894335, 'none', '', 'None,image', 'Late', 1631894403, 'Over Time'),
(54, 'ADM011', 011, 'ADM', 1, 2, 1631894692, 'demo', '', 'None,image', 'Late', 1631894696, 'Over Time'),
(55, 'QCD027', 027, 'QCD', 6, 2, 1631499386, 'none..', '', 'None,image', 'Late', 1631529057, 'Early'),
(56, 'QCD027', 027, 'QCD', 6, 2, 1631583036, 'none', '', 'None,image', 'Late', 1631611849, 'Early'),
(58, 'QCD027', 027, 'QCD', 6, 1, 1631733350, 'none', '', 'None,image', 'Late', 1631797356, 'Early'),
(59, 'QCD027', 027, 'QCD', 6, 4, 1631863331, 'none', '', 'None,image', 'Late', 1631896539, 'Early'),
(60, 'QCD027', 027, 'QCD', 6, 1, 1631214919, 'none', '', 'None,image', 'Late', 1631250936, 'Over Time'),
(61, 'STD026', 026, 'STD', 1, 2, 1631493955, 'none', '', 'None,image', 'On Time', 1631523613, 'Over Time'),
(62, 'ADM011', 011, 'ADM', 1, 1, 1631584873, 'none', '', 'None,image', 'Late', 1631621603, 'Over Time'),
(63, 'QCD027', 027, 'QCD', 6, 2, 1632109417, 'this is a demo note!', '', 'None,image', 'Late', 1632109437, 'Early'),
(64, '', 002, 'ACD', 2, 3, 1632109840, 'demo demo', '', 'None,image', 'On Time', 1632109845, 'Early'),
(65, 'STD026', 026, 'STD', 1, 2, 1632109903, 'test', '', 'None,image', 'Late', 1632109905, 'Early');

-- --------------------------------------------------------

--
-- Table structure for table `attend_faculty`
--

CREATE TABLE `attend_faculty` (
  `qrcode` varchar(20) DEFAULT NULL,
  `RFID` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `srcode` varchar(20) DEFAULT NULL,
  `building` varchar(11) DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attend_faculty`
--

INSERT INTO `attend_faculty` (`qrcode`, `RFID`, `username`, `srcode`, `building`, `in_time`, `date`) VALUES
('73497539', '0', 'student name', '533-53390', '1', '2023-01-26 05:22:07pm', NULL),
('46825954', '0', 'student name', '198-12777', '4', '2023-01-26 05:22:09pm', NULL),
('92140932', '0', 'student name', '696-93030', '1', '2023-01-26 05:22:11pm', NULL),
('32504289', '0', 'student name', '918-66464', '3', '2023-01-26 05:22:40pm', NULL),
('0', '80706786', 'student name', '388-20142', '2', '2023-01-26 05:22:42pm', NULL),
('96596959', '0', 'student name', '815-59958', '4', '2023-01-26 05:25:10pm', NULL),
('73021072', '0', 'student name', '406-36306', '2', '2023-01-26 05:26:17pm', NULL),
('75892643', '0', 'student name', '557-25871', '4', '2023-01-26 05:26:20pm', NULL),
('0', '70033772', 'student name', '189-48862', '1', '2023-01-26 05:26:22pm', NULL),
('0', '49942050', 'student name', '664-85130', '4', '2023-01-26 05:26:24pm', NULL),
('0', '80426505', 'student name', '228-23162', '1', '2023-01-26 05:26:26pm', NULL),
('92140932', '0', 'student name', '696-93030', '3', '2023-01-26 05:27:15pm', NULL),
('22550016', '0', 'student name', '996-41753', '2', '2023-01-26 05:27:17pm', NULL),
('88680157', '0', 'student name', '854-16183', '2', '2023-01-26 05:27:20pm', NULL),
('0', '98922019', 'student name', '968-31628', '2', '2023-01-26 05:27:22pm', NULL),
('0', '38610525', 'student name', '760-23510', '3', '2023-01-26 05:27:24pm', NULL),
('0', '93669321', 'student name', '970-25673', '3', '2023-01-26 05:29:36pm', NULL),
('0', '49174497', 'student name', '750-40315', '1', '2023-01-26 05:29:37pm', NULL),
('14349864', '0', 'student name', '918-46058', '2', '2023-01-26 05:29:38pm', NULL),
('0', '67724600', 'student name', '364-23336', '3', '2023-01-26 05:29:40pm', NULL),
('0', '56361962', 'student name', '136-53443', '1', '2023-01-26 05:30:46pm', NULL),
('0', '48489972', 'student name', '276-78656', '2', '2023-01-26 05:30:48pm', NULL),
('96710438', '0', 'student name', '134-85962', '1', '2023-01-26 05:30:49pm', NULL),
('0', '46055636', 'student name', '923-53821', '4', '2023-01-26 05:30:50pm', NULL),
('0', '15035885', 'student name', '162-30806', '2', '2023-01-26 05:30:51pm', NULL),
('0', '78285379', 'student name', '525-36878', '1', '2023-01-26 05:30:52pm', NULL),
('0', '56204755', 'student name', '851-43229', '2', '2023-01-26 05:30:53pm', NULL),
('31348726', '0', 'student name', '592-65366', '4', '2023-01-26 05:30:54pm', NULL),
('0', '91386258', 'student name', '725-91969', '4', '2023-01-26 05:30:55pm', NULL),
('61666868', '0', 'student name', '694-49790', '3', '2023-01-26 05:30:56pm', NULL),
('54647949', '0', 'student name', '197-65242', '2', '2023-01-26 05:30:58pm', NULL),
('46656965', '0', 'student name', '935-79459', '3', '2023-01-26 05:30:59pm', NULL),
('61666868', '87773533', 'Kelvin', '694-49790', '3', '3:30 pm', '2023-02-09'),
(NULL, '000000', 'student name', NULL, '1', '2023-02-14', NULL),
('000', '000', '000', '000', '003', '05:54:25pm', '0000-00-00'),
('000', '000', '000', '000', '003', '05:55:45pm', '0000-00-00'),
('000', '000', '000', '000', '3', '06:00:22pm', '2023-02-14'),
('000', '000', '000', '694-49790', '3', '06:13:02pm', '2023-02-14'),
('98161702', '31749062', 'Allen Lopez', '942-97827', '1', '06:32:45pm', '2023-02-14'),
('25674934', '91386258', 'Alisa Wong', '725-91969', '2', '06:59:25pm', '2023-02-14'),
('25674934', '91386258', 'Alisa Wong', '725-91969', '2', '07:01:00pm', '2023-02-14'),
('25674934', '91386258', 'Alisa Wong', '725-91969', '2', '09:59:23am', '2023-02-15'),
('25674934', '91386258', 'Alisa Wong', '725-91969', '2', '10:00:02am', '2023-02-15'),
('25674934', '91386258', 'Alisa Wong', '725-91969', '2', '10:00:22am', '2023-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `ban_list`
--

CREATE TABLE `ban_list` (
  `id` int(11) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `qrcode` varchar(20) DEFAULT NULL,
  `rfid` varchar(20) DEFAULT NULL,
  `at_time` datetime DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `device` int(11) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `code_type` int(11) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `room` varchar(20) DEFAULT NULL,
  `slot_id` int(8) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `in_time` varchar(30) DEFAULT NULL,
  `in_status` varchar(10) DEFAULT NULL,
  `out_time` varchar(30) DEFAULT NULL,
  `out_status` varchar(10) DEFAULT NULL,
  `at_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `device`, `user_id`, `code_type`, `code`, `floor`, `room`, `slot_id`, `date`, `start_time`, `end_time`, `in_time`, `in_status`, `out_time`, `out_status`, `at_time`) VALUES
(2, 0, '556', 0, '123456789', 'GF', 'CYBER NOOK AREA', 1, '2023-12-26', '4', '5', NULL, NULL, NULL, NULL, '2023-12-26 00:00:00'),
(3, 0, '556', 0, '123456789', 'GF', 'CYBER NOOK AREA', 1, '2023-12-26', '5', '6', NULL, NULL, NULL, NULL, '2023-12-26 00:00:00'),
(4, 0, '556', 0, '123456789', 'GF', 'CYBER NOOK AREA', 2, '2023-12-26', '0', '1', NULL, NULL, NULL, NULL, '2023-12-26 00:00:00'),
(5, 0, '556', 0, '0001', 'GF', 'CYBER NOOK AREA', 2, '2023-12-26', '1', '2', '21:03:55', 'occupied', '21:04:00', 'exit', '2023-12-26 00:00:00'),
(6, 0, '556', 0, '0001', 'GF', 'CYBER NOOK AREA', 3, '2023-12-26', '0', '1', '21:20:13', 'occupied', '21:20:18', 'exit', '2023-12-26 00:00:00'),
(7, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-03', '0', '1', '19:33:04', 'occupied', '20:00:11', 'exit', '2024-01-03 00:00:00'),
(8, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-03', '1', '2', '14:31:59', 'occupied', '14:32:05', 'exit', '2024-01-03 00:00:00'),
(9, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-03', '2', '5', '15:25:51', 'occupied', '15:25:57', 'exit', '2024-01-03 00:00:00'),
(10, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-03', '5', '8', '15:28:09', 'occupied', '15:28:15', 'exit', '2024-01-03 00:00:00'),
(11, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-03', '8', '9', NULL, NULL, '15:39:12', 'exit', '2024-01-03 00:00:00'),
(12, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 2, '2024-01-03', '0', '3', '15:39:40', 'occupied', '15:39:46', 'exit', '2024-01-03 00:00:00'),
(13, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 2, '2024-01-03', '3', '6', '15:41:13', 'occupied', '15:41:18', 'exit', '2024-01-03 00:00:00'),
(14, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 2, '2024-01-03', '6', '7', '15:48:05', 'occupied', '16:28:14', 'exit', '2024-01-03 00:00:00'),
(15, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 2, '2024-01-03', '7', '9', '16:45:13', 'occupied', '16:45:19', 'exit', '2024-01-03 00:00:00'),
(16, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 3, '2024-01-03', '0', '1', '16:51:54', 'occupied', '16:52:01', 'exit', '2024-01-03 00:00:00'),
(17, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 3, '2024-01-03', '1', '2', '15:19:34', 'occupied', '15:19:41', 'exit', '2024-01-03 00:00:00'),
(18, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-10', '0', '1', '14:41:34', 'occupied', '14:41:46', 'exit', '2024-01-05 00:00:00'),
(19, 0, '1', 0, '2023101024', 'GF', 'CYBER NOOK AREA', 1, '2024-01-05', '0', '1', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(20, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-05', '1', '2', '16:50:56', 'occupied', '16:51:00', 'exit', '2024-01-05 00:00:00'),
(21, 0, '2', 0, '02', '7F', 'THEATER LOBBY', 1, '2024-01-05', '0', '3', '16:52:20', 'occupied', '16:52:24', 'exit', '2024-01-05 00:00:00'),
(22, 0, '3', 0, '03', '2F', 'READING AREA 1', 1, '2024-01-05', '0', '3', '16:52:56', 'occupied', '16:53:01', 'exit', '2024-01-05 00:00:00'),
(23, 0, '4', 0, '04', 'GF', 'PWD COLLECTION ROOM', 3, '2024-01-05', '0', '2', NULL, NULL, '14:07:41', 'exit', '2024-01-05 00:00:00'),
(24, 0, '5', 0, '05', 'GF', 'bulsu', 3, '2024-01-05', '2', '5', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(25, 0, '6', 0, '06', '4F', 'BULACANIANA SECTION', 1, '2024-01-05', '2', '4', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(26, 0, '7', 0, '07', '6F', 'CYBER NOOK AREA 2', 1, '2024-01-05', '1', '4', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(27, 0, '8', 0, '08', '4F', 'READING AREA 1', 5, '2024-01-05', '4', '6', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(28, 0, '9', 0, '09', '6F', 'CYBER NOOK AREA 3', 1, '2024-01-05', '3', '4', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(29, 0, '10', 0, '10', '2F', 'READING AREA 2', 4, '2024-01-05', '5', '7', NULL, NULL, NULL, NULL, '2024-01-05 00:00:00'),
(30, 0, '1', 0, '01', 'GF', 'Bulsu Area', 1, '2024-01-05', '0', '3', '15:26:09', 'occupied', '15:26:15', 'exit', '2024-01-05 00:00:00'),
(31, 0, '2', 0, '02', 'GF', 'Bulsu Area', 1, '2024-01-05', '6', '9', '03:07:28', 'occupied', '03:07:38', 'exit', '2024-01-05 00:00:00'),
(32, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-06', '0', '1', '15:51:24', 'occupied', '15:51:29', 'exit', '2024-01-06 00:00:00'),
(33, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-06', '1', '2', '16:53:30', 'occupied', '16:53:34', 'exit', '2024-01-06 00:00:00'),
(34, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 2, '2024-01-06', '0', '1', '17:18:45', 'occupied', '17:18:56', 'exit', '2024-01-06 00:00:00'),
(35, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 3, '2024-01-06', '0', '1', '18:01:02', 'occupied', '18:01:07', 'exit', '2024-01-06 00:00:00'),
(36, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 6, '2024-01-06', '0', '1', '11:23:21', 'occupied', '11:23:28', 'exit', '2024-01-06 00:00:00'),
(37, 0, '2', 0, '02', 'GF', 'CYBER NOOK AREA', 1, '2024-01-09', '0', '1', '03:08:42', 'occupied', '03:08:47', 'exit', '2024-01-08 00:00:00'),
(38, 0, '2', 0, '02', 'GF', 'CYBER NOOK AREA', 2, '2024-01-10', '7', '8', '09:31:25', 'occupied', NULL, NULL, '2024-01-08 00:00:00'),
(39, 0, '1', 0, '2018109545', '4F', 'READING AREA 1', 1, '2024-01-09', '0', '1', '03:21:40', 'occupied', '03:21:53', 'exit', '2024-01-08 00:00:00'),
(40, 0, '1', 0, '2018109545', 'GF', 'CYBER NOOK AREA', 3, '2024-01-10', '1', '2', '09:27:30', 'occupied', '09:27:36', 'exit', '2024-01-10 00:00:00'),
(41, 0, '1', 0, '2018109545', '3F', 'READING AREA / LOUNG', 2, '2024-01-10', '1', '2', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(42, 0, '217', 0, '2023102701', 'GF', 'CYBER NOOK AREA', 4, '2024-01-10', '3', '4', '11:00:47', 'occupied', NULL, NULL, '2024-01-10 00:00:00'),
(43, 0, '2711', 0, '2023100265', 'GF', 'PWD COLLECTION ROOM', 4, '2024-01-10', '3', '4', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(44, 0, '2842', 0, '2023400511', 'GF', 'PWD COLLECTION ROOM', 3, '2024-01-10', '3', '6', '11:20:00', 'occupied', '11:28:32', 'exit', '2024-01-10 00:00:00'),
(45, 0, '7957', 0, '2020107436', 'GF', 'CYBER NOOK AREA', 1, '2024-01-10', '3', '4', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(46, 0, '9800', 0, '2020102279', 'GF', 'CYBER NOOK AREA', 2, '2024-01-10', '3', '4', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(47, 0, '12', 0, '2023100885', 'GF', 'CYBER NOOK AREA', 5, '2024-01-10', '5', '6', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(48, 0, '16', 0, '2023106984', 'GF', 'PWD COLLECTION ROOM', 5, '2024-01-10', '6', '7', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(49, 0, '19', 0, '2023100888', 'GF', 'Bulsu Area', 3, '2024-01-10', '5', '7', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(50, 0, '21', 0, '2023100868', 'GF', 'CYBER NOOK AREA', 6, '2024-01-10', '6', '7', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(51, 0, '25', 0, '2023100862', 'GF', 'PWD COLLECTION ROOM', 6, '2024-01-10', '6', '7', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(52, 0, '17', 0, '2023100881', 'GF', 'CYBER NOOK AREA', 7, '2024-01-10', '0', '1', '14:14:43', 'occupied', '14:14:48', 'exit', '2024-01-10 00:00:00'),
(53, 0, '17', 0, '2023100881', 'GF', 'Bulsu Area', 1, '2024-01-10', '0', '1', '14:18:09', 'occupied', '14:18:15', 'exit', '2024-01-10 00:00:00'),
(54, 0, '40', 0, '2023100886', 'GF', 'CYBER NOOK AREA', 8, '2024-01-10', '6', '7', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(55, 0, '46', 0, '2023101017', 'GF', 'Bulsu Area', 10, '2024-01-10', '6', '8', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(56, 0, '30', 0, '2023100982', 'GF', 'CYBER NOOK AREA', 10, '2024-01-10', '7', '8', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(57, 0, '34', 0, '2023101410', 'GF', 'PWD COLLECTION ROOM', 10, '2024-01-10', '7', '8', NULL, NULL, NULL, NULL, '2024-01-10 00:00:00'),
(58, 0, '11', 0, '2023101040', 'GF', 'CYBER NOOK AREA', 1, '2024-01-11', '5', '6', NULL, NULL, NULL, NULL, '2024-01-11 00:00:00'),
(115, 0, '1', 0, '1', 'GF', 'PWD COLLECTION ROOM', 3, '2024-01-24', '8', '10', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(116, 0, '1', 0, '1', '2F', 'READING AREA 3', 5, '2024-01-24', '10', '13', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(117, 0, '1', 0, '1', '2F', 'READING AREA 2', 5, '2024-01-24', '10', '12', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(118, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 2, '2024-01-24', '6', '7', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(119, 0, '1', 0, '01', 'GF', 'CYBER NOOK AREA', 1, '2024-01-24', '6', '7', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(120, 0, '3', 0, '03', 'GF', 'CYBER NOOK AREA', 2, '2024-01-24', '6', '7', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(121, 0, '1', 0, '1', 'GF', 'PWD COLLECTION ROOM', 6, '2024-01-24', '12', '13', NULL, NULL, NULL, NULL, '2024-01-24 00:00:00'),
(123, 0, '1', 0, '1', 'GF', 'PWD COLLECTION ROOM', 5, '2024-01-31', '10', '11', NULL, NULL, NULL, NULL, '2024-01-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id_course` int(255) NOT NULL,
  `name_course` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id_course`, `name_course`) VALUES
(101, 'BS-Electric '),
(107, 'BS Business A');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` char(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
('ACD', 'Accounting Department'),
('ADM', 'Admin Department'),
('HRD', 'Human Resource Department'),
('PCD', 'Production Controller Department'),
('PLD', 'Planner Department'),
('QCD', 'Quality Control Department'),
('SCD', 'Security Department'),
('STD', 'Store Department');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gender` char(1) NOT NULL,
  `image` varchar(128) NOT NULL,
  `birth_date` date NOT NULL,
  `hire_date` date NOT NULL,
  `shift_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `gender`, `image`, `birth_date`, `hire_date`, `shift_id`) VALUES
(001, 'Sadie Kelso', 'devi@gmail.com', 'F', 'default.png', '1996-06-06', '2020-03-01', 2),
(002, 'Elsa', 'intan@gmail.com', 'F', 'default.png', '1998-02-01', '2020-03-01', 2),
(003, 'Robert Northern', 'herman@gmail.com', 'M', 'default.png', '1997-11-06', '2020-03-12', 2),
(004, 'Jesse J Walsh', 'andi@gmail.com', 'M', 'default.png', '1998-01-01', '2020-03-01', 3),
(005, 'Madeline Mitchell', 'clarita@gmail.com', 'F', 'default.png', '1996-04-06', '2020-04-08', 1),
(006, 'Emmy Watts', 'oktapan@gmail.com', 'F', 'default.png', '1999-11-04', '2020-04-01', 1),
(007, 'Domingo Yorke', 'mgb@gmail.com', 'M', 'default.png', '2000-10-29', '2020-03-01', 2),
(008, 'Stephen Fernando', 'weve@gmail.com', 'M', 'default.png', '2000-11-07', '2020-03-01', 1),
(009, 'Yvonne J Gunther', 'desi@gmail.com', 'F', 'default.png', '1994-07-05', '2020-04-01', 2),
(010, 'Blake Collins', 'ddry@gmail.com', 'M', 'default.png', '2000-12-01', '2020-04-06', 3),
(011, 'Marcus', 'udin@gmail.com', 'M', 'default.png', '1993-10-12', '2020-05-03', 1),
(024, 'Vernon Keely', '123@fmail.com', 'M', 'default.png', '2001-12-31', '2020-04-28', 1),
(025, 'Admin ', 'admin@admin.com', 'M', 'default.png', '0000-00-00', '0000-00-00', 0),
(026, 'Christine', 'christine@gmail.com', 'F', 'item-210516-ab8e9ef52f.jpg', '1995-04-01', '2021-05-16', 1),
(027, 'Johnny', 'johnny@mail.com', 'M', 'default.png', '1993-04-01', '2021-08-13', 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee_department`
--

CREATE TABLE `employee_department` (
  `id` int(3) NOT NULL,
  `employee_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_id` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_department`
--

INSERT INTO `employee_department` (`id`, `employee_id`, `department_id`) VALUES
(1, 001, 'HRD'),
(2, 002, 'ACD'),
(3, 003, 'QCD'),
(4, 004, 'SCD'),
(5, 005, 'STD'),
(6, 006, 'ACD'),
(7, 007, 'PLD'),
(8, 008, 'STD'),
(9, 009, 'STD'),
(10, 010, 'PCD'),
(21, 011, 'ADM'),
(25, 024, 'HRD'),
(26, 026, 'STD'),
(27, 027, 'QCD');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `srcode` varchar(20) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `rfid` varchar(20) DEFAULT NULL,
  `qrcode` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `campus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `first_name`, `last_name`, `middle_name`, `srcode`, `course`, `rfid`, `qrcode`, `gender`, `college`, `campus`) VALUES
(437, 'JERICHO', 'AALA', 'MENDOZA', '21-04840', 'BS Mechanical Engineering', '8209D74E', '23423', 'M', NULL, NULL),
(438, 'JOHN ANGELO', 'AALA', 'LUYA', '19-01098', 'BS Electrical Engineering', '1E9CD4B2', '123454', 'M', NULL, NULL),
(439, 'JOHN LEMUEL', 'AALA', 'SARMIENTO', '21-04598', 'BS Architecture', '3236DC4E', '124123', 'M', NULL, NULL),
(440, 'KELLY JOY', 'AALA', 'MENDOZA', '19-00998', 'BS Computer Engineering', '7202B979', 'NULL', 'F', NULL, NULL),
(441, 'KIRSTEN KYLE', 'AALA', 'MENDOZA', '21-06501', 'BS Electrical Engineering', '72ADEB4E', 'NULL', 'F', NULL, NULL),
(442, 'REINDEL', 'ABACAN', 'COMETA', '21-07606', 'BS Aerospace Engineering', '126AD34E', 'NULL', 'M', NULL, NULL),
(443, 'ROSELL', 'ABACAN', 'BAES', '19-06338', 'BS Mechanical Engineering', 'BE36E9B2', 'NULL', 'F', NULL, NULL),
(444, 'ERIZ JANRELL', 'ABAD', 'DELA ROSA', '21-00662', 'BS Mechanical Engineering', '7278E14E', 'NULL', 'M', NULL, NULL),
(445, 'JEMILYN', 'ABAD', 'LUCBAN', '20-01557', 'BS Computer Engineering', '53C4FA1E', 'NULL', 'F', NULL, NULL),
(446, 'KYMBERLENE MAE', 'ABAD', 'SIMAN', '21-03350', 'BS Metallurgical Engineering', 'E23EF14E', 'NULL', 'F', NULL, NULL),
(447, 'Redwing', 'Besmonte', 'Butt Gow', 'ST-2023-00001', 'Psychology', 'YM43IP87', 'YM43IP87', 'M', NULL, NULL),
(448, 'Reucastle', 'Cabacaba', 'Wharrier', 'ST-2023-00002', 'Marketing', 'AV93EJ82', 'AV93EJ82', 'M', NULL, NULL),
(449, 'Abell', 'Simbulan', 'Crimmins', 'ST-2023-00003', 'Nursing', 'HF92WS43', 'HF92WS43', 'M', NULL, NULL),
(450, 'Kenrick', 'Jotojot', 'Blaxley', 'ST-2023-00004', 'Nursing', 'KV63LJ41', 'KV63LJ41', 'M', NULL, NULL),
(451, 'Pate', 'Pirote', 'Strettell', 'ST-2023-00005', 'Engineering', 'FQ08WA65', 'FQ08WA65', 'M', NULL, NULL),
(452, 'JERICHO', 'AALA', 'MENDOZA', '21-04840', 'BS Mechanical Engineering', '8209D74E', NULL, 'M', NULL, NULL),
(453, 'JOHN ANGELO', 'AALA', 'LUYA', '19-01098', 'BS Electrical Engineering', '1E9CD4B2', '123454', 'M', NULL, NULL),
(454, 'JOHN LEMUEL', 'AALA', 'SARMIENTO', '21-04598', 'BS Architecture', '3236DC4E', NULL, 'M', NULL, NULL),
(455, 'KELLY JOY', 'AALA', 'MENDOZA', '19-00998', 'BS Computer Engineering', '7202B979', 'NULL', 'F', NULL, NULL),
(456, 'KIRSTEN KYLE', 'AALA', 'MENDOZA', '21-06501', 'BS Electrical Engineering', '72ADEB4E', 'NULL', 'F', NULL, NULL),
(457, 'REINDEL', 'ABACAN', 'COMETA', '21-07606', 'BS Aerospace Engineering', '126AD34E', 'NULL', 'M', NULL, NULL),
(458, 'ROSELL', 'ABACAN', 'BAES', '19-06338', 'BS Mechanical Engineering', 'BE36E9B2', 'NULL', 'F', NULL, NULL),
(459, 'ERIZ JANRELL', 'ABAD', 'DELA ROSA', '21-00662', 'BS Mechanical Engineering', '7278E14E', 'NULL', 'M', NULL, NULL),
(460, 'JEMILYN', 'ABAD', 'LUCBAN', '20-01557', 'BS Computer Engineering', '53C4FA1E', 'NULL', 'F', NULL, NULL),
(461, 'KYMBERLENE MAE', 'ABAD', 'SIMAN', '21-03350', 'BS Metallurgical Engineering', 'E23EF14E', 'NULL', 'F', NULL, NULL),
(462, 'Redwing', 'Besmonte', 'Butt Gow', 'ST-2023-00001', 'Psychology', 'YM43IP87', 'YM43IP87', 'M', NULL, NULL),
(463, 'Reucastle', 'Cabacaba', 'Wharrier', 'ST-2023-00002', 'Marketing', 'AV93EJ82', 'AV93EJ82', 'M', NULL, NULL),
(464, 'Abell', 'Simbulan', 'Crimmins', 'ST-2023-00003', 'Nursing', 'HF92WS43', 'HF92WS43', 'M', NULL, NULL),
(465, 'Kenrick', 'Jotojot', 'Blaxley', 'ST-2023-00004', 'Nursing', 'KV63LJ41', 'KV63LJ41', 'M', NULL, NULL),
(466, 'Pate', 'Pirote', 'Strettell', 'ST-2023-00005', 'Engineering', 'FQ08WA65', 'FQ08WA65', 'M', NULL, NULL),
(467, 'Sujaung', 'Park', 'jang', '213129481', 'BS electric', '132312', '2131321', 'F', NULL, NULL),
(469, 'Nardo', 'Cruz', 'B.', '58696969', 'Computer Engineering Technology', '678907', '58696969', 'M', NULL, NULL),
(470, 'Jose Miguel', 'Dela Rosa', 'Flores ', '123456', 'BSIT', '123456', '123456', 'M', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty2`
--

CREATE TABLE `faculty2` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srcode` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `image` varchar(128) NOT NULL,
  `qrcode` varchar(20) DEFAULT NULL,
  `rfid` varchar(20) DEFAULT NULL,
  `course` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty2`
--

INSERT INTO `faculty2` (`id`, `first_name`, `last_name`, `srcode`, `gender`, `image`, `qrcode`, `rfid`, `course`, `name`) VALUES
(001, 'Sadie Kelso', NULL, 'devi@gmail.com', 'F', 'default.png', '1996-06-06', '2020-03-01', '2', ''),
(002, 'Elsa', NULL, 'intan@gmail.com', 'F', 'default.png', '1998-02-01', '2020-03-01', '2', ''),
(003, 'Robert Northern', NULL, 'herman@gmail.com', 'M', 'default.png', '1997-11-06', '2020-03-12', '2', ''),
(004, 'Jesse J Walsh', NULL, 'andi@gmail.com', 'M', 'default.png', '1998-01-01', '2020-03-01', '3', ''),
(005, 'Madeline Mitchell', NULL, 'clarita@gmail.com', 'F', 'default.png', '1996-04-06', '2020-04-08', '1', ''),
(006, 'Emmy Watts', NULL, 'oktapan@gmail.com', 'F', 'default.png', '1999-11-04', '2020-04-01', '1', ''),
(007, 'Domingo Yorke', NULL, 'mgb@gmail.com', 'M', 'default.png', '2000-10-29', '2020-03-01', '2', ''),
(008, 'Stephen Fernando', NULL, 'weve@gmail.com', 'M', 'default.png', '2000-11-07', '2020-03-01', '1', ''),
(009, 'Yvonne J Gunther', NULL, 'desi@gmail.com', 'F', 'default.png', '1994-07-05', '2020-04-01', '2', ''),
(010, 'Blake Collins', NULL, 'ddry@gmail.com', 'M', 'default.png', '2000-12-01', '2020-04-06', '3', ''),
(011, 'Marcus', NULL, 'udin@gmail.com', 'M', 'default.png', '1993-10-12', '2020-05-03', '1', ''),
(024, 'Vernon Keely', NULL, '123@fmail.com', 'M', 'default.png', '2001-12-31', '2020-04-28', '1', ''),
(025, 'Admin ', NULL, 'admin@admin.com', 'M', 'default.png', '0000-00-00', '0000-00-00', '0', ''),
(026, 'Christine', NULL, 'christine@gmail.com', 'F', 'item-210516-ab8e9ef52f.jpg', '1995-04-01', '2021-05-16', '1', ''),
(027, 'Johnny', NULL, 'johnny@mail.com', 'M', 'default.png', '1993-04-01', '2021-08-13', '6', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty3`
--

CREATE TABLE `faculty3` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `srcode` varchar(20) NOT NULL,
  `gender` text DEFAULT NULL,
  `qrcode` varchar(20) DEFAULT NULL,
  `rfid` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty3`
--

INSERT INTO `faculty3` (`id`, `first_name`, `last_name`, `srcode`, `gender`, `qrcode`, `rfid`, `course`) VALUES
(2, 'Leo', 'Ingram', '918-46058', 'F', '14349864', '35883140', 'Accounting'),
(3, 'Rafferty', 'Jimenez', '923-53821', 'M', '53814827', '46055636', 'Phychology'),
(4, 'Arnold', 'Cochran', '694-49790', 'F', '61666868', '87773533', 'Medical'),
(5, 'Kelvin', 'Fitzpatrick', '891-38738', 'M', '18735950', '37067617', 'BS-Electric'),
(6, 'Samson', 'Gibbons', '592-65366', 'F', '31348726', '23248138', 'Accounting'),
(7, 'Tom', 'Robbins', '428-35901', 'M', '85610614', '42456807', 'Phychology'),
(8, 'Gary', 'Knapp', '791-96578', 'F', '61509340', '96280812', 'Medical'),
(9, 'Lukas', 'Guerrero', '276-78656', 'M', '99031716', '48489972', 'BS-Electric'),
(11, 'Kieran', 'Cox', '860-13762', 'M', '14694611', '23841951', 'Phychology'),
(12, 'Courtney', 'Morse', '833-89931', 'F', '93891678', '33001539', 'Medical'),
(13, 'Ali', 'Dixon', '671-52218', 'M', '27672207', '18790656', 'BS-Electric'),
(14, 'Andre', 'Weiss', '788-55477', 'F', '65721594', '79339544', 'Accounting'),
(15, 'Ilyas', 'Sparks', '707-50099', 'M', '47767799', '50787936', 'Phychology'),
(16, 'Allan', 'Andersen', '757-70977', 'F', '63459708', '28571318', 'Medical'),
(17, 'Allen', 'Lopez', '942-97827', 'M', '98161702', '31749062', 'BS-Electric'),
(18, 'Awais', 'Cook', '615-80058', 'F', '54203452', '59126675', 'Accounting'),
(19, 'Guy', 'Rasmussen', '750-40315', 'M', '40149196', '49174497', 'Phychology'),
(20, 'Kaine', 'Gray', '996-41753', 'F', '22550016', '76978225', 'Medical'),
(21, 'William', 'Gould', '777-57474', 'M', '33449782', '94678923', 'Medical'),
(22, 'Yuvraj', 'Benton', '918-66464', 'F', '32504289', '23911932', 'BS-Electric'),
(23, 'Terry', 'Garrison', '968-31628', 'M', '19180692', '98922019', 'Accounting'),
(24, 'Vivian', 'Hess', '182-53828', 'F', '39414126', '16166394', 'Phychology'),
(25, 'Iestyn', 'Hudson', '136-53443', 'M', '12742967', '56361962', 'Medical'),
(26, 'Rhodri', 'Moss', '533-53390', 'F', '73497539', '75288942', 'BS-Electric'),
(27, 'Kaylum', 'Irwin', '514-72026', 'M', '11458199', '20016074', 'Accounting'),
(28, 'Jonas', 'Frazier', '978-52016', 'F', '23643120', '37774554', 'Phychology'),
(29, 'Damian', 'Hines', '458-25008', 'M', '47492570', '89624980', 'Medical'),
(30, 'Omar', 'Keller', '322-42769', 'F', '36488640', '39662249', 'BS-Electric'),
(31, 'Renee', 'O\'Quinn', '970-25673', 'M', '19366767', '93669321', 'Accounting'),
(32, 'Keeley', 'Contreras', '815-59958', 'F', '96596959', '87983699', 'Phychology'),
(33, 'Jim', 'Tran', '758-52716', 'M', '94912375', '49755781', 'Medical'),
(34, 'Lea', 'Grimes', '443-37924', 'F', '46167171', '91042331', 'BS-Electric'),
(35, 'Dhruv', 'O\'Reilly', '228-23162', 'M', '87914798', '80426505', 'Accounting'),
(36, 'Calvin', 'Cain', '731-24901', 'F', '48988467', '41731276', 'Phychology'),
(37, 'Ayub', 'Allison', '774-15429', 'M', '48678497', '24689612', 'Medical'),
(38, 'Jed', 'Oliver', '696-93030', 'F', '92140932', '82289696', 'BS-Electric'),
(39, 'Siobhan', 'Nguyen', '162-30806', 'M', '52442656', '15035885', 'Accounting'),
(40, 'Deacon', 'Brady', '854-16183', 'F', '88680157', '59394980', 'Phychology'),
(41, 'Jaime', 'Russo', '610-21892', 'M', '56825199', '86696652', 'Medical'),
(42, 'Anika', 'Gardner', '617-55069', 'F', '45650182', '96669903', 'BS-Electric'),
(43, 'Junaid', 'Parrish', '844-73074', 'M', '21423473', '79990412', 'Accounting'),
(44, 'Cole', 'Barton', '178-95647', 'F', '49222744', '78457447', 'Phychology'),
(45, 'Ray', 'Elliott', '226-74274', 'M', '16274208', '28162437', 'Medical'),
(46, 'Sameer', 'Ali', '668-10204', 'F', '54562174', '97020890', 'BS-Electric'),
(47, 'Russell', 'Fry', '985-36229', 'M', '76279090', '55784679', 'Accounting'),
(48, 'Aamir', 'Dorsey', '229-88493', 'F', '33697438', '32633837', 'Phychology'),
(49, 'Leroy', 'Freeman', '387-75856', 'M', '51921411', '85976855', 'Medical'),
(50, 'Douglas', 'Mathews', '452-78778', 'F', '23810608', '96835828', 'BS-Electric'),
(51, 'Danielle', 'Hawkins', '250-69245', 'M', '61901600', '76138650', 'Accounting'),
(52, 'Tiffany', 'Reid', '845-69918', 'F', '59019793', '27477514', 'Phychology'),
(53, 'Trinity', 'Thomson', '189-48862', 'M', '55753676', '70033772', 'Medical'),
(54, 'Daniella', 'Gross', '663-57089', 'F', '36071568', '56129298', 'BS-Electric'),
(55, 'Anne', 'Hurst', '388-20142', 'M', '47401080', '80706786', 'Accounting'),
(56, 'Ella', 'Nixon', '406-36306', 'F', '73021072', '74574705', 'Phychology'),
(57, 'Zuzanna', 'Ruiz', '998-51259', 'M', '68079808', '51392115', 'Medical'),
(58, 'Alyssa', 'Roth', '935-79459', 'F', '46656965', '75081437', 'BS-Electric'),
(59, 'Emelia', 'Mendez', '876-82053', 'M', '46492662', '36121255', 'Accounting'),
(60, 'Savanna', 'Beltran', '377-49711', 'F', '70343834', '26097269', 'Phychology'),
(61, 'Erica', 'Keller', '640-43301', 'M', '28633539', '44760564', 'Medical'),
(62, 'Anaya', 'Hansen', '825-91169', 'F', '47358438', '30144225', 'BS-Electric'),
(63, 'Aminah', 'Benson', '760-23510', 'M', '20891142', '38610525', 'Accounting'),
(64, 'Philippa', 'Vaughan', '196-50871', 'F', '43471614', '77703354', 'Phychology'),
(65, 'Eshal', 'Lyons', '985-55564', 'M', '80042751', '88141884', 'Medical'),
(66, 'Annika', 'Montes', '974-91375', 'F', '66289166', '50545999', 'BS-Electric'),
(67, 'Rosie', 'Osborn', '297-31731', 'M', '38098957', '67889662', 'Accounting'),
(68, 'Aishah', 'Holt', '883-79150', 'F', '92058279', '80558979', 'Phychology'),
(69, 'Lulu', 'Preston', '217-90281', 'M', '99957949', '29709198', 'Medical'),
(70, 'Sam', 'Blaese', '197-65242', 'F', '54647949', '77944721', 'BS-Electric'),
(71, 'Brenda', 'Jordan', '572-75985', 'M', '37053400', '12536267', 'Accounting'),
(72, 'Leonie', 'Gutierrez', '125-67394', 'F', '17130875', '22599238', 'Phychology'),
(73, 'Inaaya', 'Mueller', '525-36878', 'M', '90994356', '78285379', 'Medical'),
(74, 'Lexi', 'Bennett', '863-66239', 'F', '26769387', '68357556', 'BS-Electric'),
(75, 'Jennifer', 'Sims', '390-20557', 'M', '51241537', '11646068', 'Accounting'),
(76, 'Carrie', 'Rollins', '134-85962', 'F', '96710438', '95056036', 'Phychology'),
(77, 'Elouise', 'Knapp', '436-70802', 'M', '39565801', '29158009', 'Medical'),
(78, 'Monica', 'Small', '198-12777', 'F', '46825954', '33433652', 'BS-Electric'),
(79, 'Tina', 'Gamble', '851-43229', 'M', '89096351', '56204755', 'Accounting'),
(80, 'Ela', 'Wallace', '203-52950', 'F', '35928466', '72750004', 'Phychology'),
(81, 'Alisa', 'Wong', '725-91969', 'M', '25674934', '91386258', 'Medical'),
(82, 'Diana', 'Diaz', '275-18190', 'F', '44112197', '77639092', 'BS-Electric'),
(83, 'Sanaa', 'Phelps', '653-55762', 'M', '25755254', '36317694', 'Accounting'),
(84, 'Candice', 'Petersen', '511-66966', 'F', '27812467', '75677385', 'Phychology'),
(85, 'Melisa', 'Kelly', '670-35444', 'M', '85773097', '66242287', 'Medical'),
(86, 'Elena', 'Scott', '334-79437', 'F', '88968239', '98987317', 'BS-Electric'),
(87, 'Cerys', 'Sosa', '863-27412', 'M', '38592130', '77206794', 'Accounting'),
(88, 'Elliot', 'Mullen', '488-14755', 'F', '80572189', '45018445', 'Phychology'),
(89, 'Athena', 'Hudson', '642-12339', 'M', '89914508', '18978670', 'Medical'),
(90, 'Brogan', 'Carter', '888-87846', 'F', '63089258', '33575394', 'BS-Electric'),
(91, 'Alanna', 'Mccann', '886-31173', 'M', '61326700', '37713815', 'Accounting'),
(92, 'Mattie', 'Hicks', '662-38396', 'F', '63438812', '18852105', 'Phychology'),
(93, 'Veronica', 'Holden', '364-23336', 'M', '82603301', '67724600', 'Medical'),
(94, 'Kaiden', 'Lindsey', '426-14713', 'F', '91219505', '28375864', 'BS-Electric'),
(95, 'Lilia', 'Calhoun', '664-85130', 'M', '87970065', '49942050', 'Accounting'),
(96, 'Selina', 'Chen', '557-25871', 'F', '75892643', '71582257', 'Phychology'),
(97, 'Andrea', 'Terry', '102-10734', 'M', '73968193', '93987550', 'Medical'),
(98, 'Nate', 'Odling', '597-85642', 'F', '36043928', '42485881', 'BS-Electric'),
(99, 'Maisie', 'Cochran', '893-48097', 'M', '48382839', '67623312', 'Accounting'),
(100, 'Christine', 'Burgess', '731-14375', 'F', '94460517', '96364396', 'Phychology');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`) VALUES
(1, 'GF'),
(2, '2F'),
(3, '3F'),
(4, '4F'),
(6, '5F'),
(7, '6F'),
(8, '7F');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `floor` varchar(10) NOT NULL,
  `room` varchar(30) NOT NULL,
  `slotnumber` int(11) DEFAULT NULL,
  `opentime` time NOT NULL,
  `operationtime` int(2) NOT NULL,
  `closetime` time NOT NULL,
  `min_slot` int(11) NOT NULL,
  `max_slot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `floor`, `room`, `slotnumber`, `opentime`, `operationtime`, `closetime`, `min_slot`, `max_slot`) VALUES
(26, '5F', 'DISCUSSION ROOM 1', 10, '09:00:00', 10, '16:00:00', 1, 4),
(27, '5F', 'DISCUSSION ROOM 2', 10, '07:00:00', 10, '19:00:00', 2, 8),
(28, '5F', 'DISCUSSION ROOM 3', 10, '08:00:00', 10, '21:00:00', 1, 4),
(29, '5F', 'DISCUSSION ROOM 4', 10, '08:00:00', 10, '18:00:00', 1, 4),
(30, '5F', 'DISCUSSION ROOM 5', 10, '08:00:00', 10, '18:00:00', 1, 4),
(40, '7F', 'THEATER LOBBY', 10, '08:00:00', 10, '18:00:00', 1, 4),
(5002, '3F', 'Test Room', 31, '09:00:00', 10, '19:00:00', 2, 5),
(5004, '2F', 'Reading Room 7', 25, '08:00:00', 10, '06:00:00', 2, 4),
(5005, '2F', 'Reading Room 7', 69, '08:00:00', 10, '18:00:00', 2, 4),
(5007, '5f', 'Computer', 10, '08:00:00', 0, '17:00:00', 1, 3),
(5008, '5f', 'Computer Area', 10, '08:00:00', 0, '17:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roombooklog`
--

CREATE TABLE `roombooklog` (
  `id` int(11) NOT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `room` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `Noa` int(3) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `at_time` varchar(50) DEFAULT NULL,
  `in_time` varchar(30) DEFAULT NULL,
  `in_status` varchar(10) DEFAULT NULL,
  `out_time` varchar(30) DEFAULT NULL,
  `out_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roombooklog`
--

INSERT INTO `roombooklog` (`id`, `floor`, `room`, `date`, `start_time`, `end_time`, `Noa`, `title`, `username`, `contact`, `email`, `description`, `at_time`, `in_time`, `in_status`, `out_time`, `out_status`) VALUES
(1, '5F', 'DISCUSSION ROOM 1', '2024-01-05', 3, 5, 50, ' Seminar of Mathmetics', 'Michael xxx', '0922-3232-443', 'michael@mail.com', NULL, '2024-01-05 09:24:55', NULL, NULL, NULL, NULL),
(2, '5F', 'DISCUSSION ROOM 2', '2024-01-05', 0, 1, 20, ' Seminar of Mathmetics', 'Michael xxx', '0922-3232-443', 'michael@mail.com', NULL, '2024-01-05 09:28:04', NULL, NULL, NULL, NULL),
(3, '3F', 'Test Room', '2024-01-18', 0, 0, 10, 'AAA', 'AAA', 'AAA', 'delarosajosemiguelf@gmail.com', NULL, '2024-01-18 06:56:46', NULL, NULL, NULL, NULL),
(4, '5F', 'DISCUSSION ROOM 1', '2024-01-18', 0, 2, 10, 'AAA', 'AAA', 'AAA', 'mifdas@gmail.com', NULL, '2024-01-18 06:57:05', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roomslot`
--

CREATE TABLE `roomslot` (
  `id` int(11) NOT NULL,
  `floor` varchar(11) NOT NULL,
  `room` varchar(30) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `opentime` varchar(10) DEFAULT NULL,
  `operationtime` int(2) NOT NULL,
  `closetime` varchar(10) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `uniqueid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomslot`
--

INSERT INTO `roomslot` (`id`, `floor`, `room`, `date`, `opentime`, `operationtime`, `closetime`, `status`, `uniqueid`) VALUES
(1, 'GF', 'PWD COLLECTION ROOM', '2023-09-23', '08:00', 8, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(2, '3F', 'INDIVIDUAL STUDY ROOM', '2023-09-23', '09:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(3, '3F', 'SILENT ROOM', '2023-09-23', '10:00', 9, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(4, '4F', 'BULACANIANA SECTION', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(5, '5F', 'AUDIO VISIUAL ROOM 1', '2023-09-23', '07:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(6, '5F', 'AUDIO VISIUAL ROOM 2', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(7, '5F', 'PRESENTATION ROOM', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(8, '5F', 'CONFERENCE ROOM', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(9, '5F', 'DISCUSSION ROOM 2', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(10, '5F', 'DISCUSSION ROOM 3', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(11, '5F', 'DISCUSSION ROOM 4', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(12, '5F', 'DISCUSSION ROOM 5', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(13, '5F', 'LOUNGE', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(14, '7F', 'LIBRARY FUNCTION HALL', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(15, '7F', 'LIBRARY THEATER HALL', '2023-09-23', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(16, 'GF', 'PWD COLLECTION ROOM', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(17, '3F', 'INDIVIDUAL STUDY ROOM', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(18, '3F', 'SILENT ROOM', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(19, '4F', 'BULACANIANA SECTION', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(20, '5F', 'AUDIO VISIUAL ROOM 1', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(21, '5F', 'AUDIO VISIUAL ROOM 2', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(22, '5F', 'PRESENTATION ROOM', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(23, '5F', 'CONFERENCE ROOM', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(24, '5F', 'DISCUSSION ROOM 2', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(25, '5F', 'DISCUSSION ROOM 3', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(26, '5F', 'DISCUSSION ROOM 4', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(27, '5F', 'DISCUSSION ROOM 5', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(28, '5F', 'LOUNGE', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(29, '7F', 'LIBRARY FUNCTION HALL', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(30, '7F', 'LIBRARY THEATER HALL', '2023-09-20', '08:00', 10, '', '[1,1,1,0,0,0,0,0,0,0,0]', NULL),
(31, 'GF', 'PWD COLLECTION ROOM', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(32, '3F', 'INDIVIDUAL STUDY ROOM', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(33, '3F', 'SILENT ROOM', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(34, '4F', 'BULACANIANA SECTION', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(35, '5F', 'AUDIO VISIUAL ROOM 1', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(36, '5F', 'AUDIO VISIUAL ROOM 2', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(37, '5F', 'PRESENTATION ROOM', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(38, '5F', 'CONFERENCE ROOM', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(39, '5F', 'DISCUSSION ROOM 2', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(40, '5F', 'DISCUSSION ROOM 3', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(41, '5F', 'DISCUSSION ROOM 4', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(42, '5F', 'DISCUSSION ROOM 5', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(43, '5F', 'LOUNGE', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(44, '7F', 'LIBRARY FUNCTION HALL', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(45, '7F', 'LIBRARY THEATER HALL', '2023-09-21', '08:00', 10, '', '[0,0,0,0,0,1,1,1,1,1,0]', NULL),
(46, 'GF', 'PWD COLLECTION ROOM', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(47, '3F', 'INDIVIDUAL STUDY ROOM', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(48, '3F', 'SILENT ROOM', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(49, '4F', 'BULACANIANA SECTION', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(50, '5F', 'AUDIO VISIUAL ROOM 1', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(51, '5F', 'AUDIO VISIUAL ROOM 2', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(52, '5F', 'PRESENTATION ROOM', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(53, '5F', 'CONFERENCE ROOM', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(54, '5F', 'DISCUSSION ROOM 2', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(55, '5F', 'DISCUSSION ROOM 3', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(56, '5F', 'DISCUSSION ROOM 4', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(57, '5F', 'DISCUSSION ROOM 5', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(58, '5F', 'LOUNGE', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(59, '7F', 'LIBRARY FUNCTION HALL', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(60, '7F', 'LIBRARY THEATER HALL', '2023-09-22', '08:00', 10, '', '[0,0,0,1,1,0,0,1,0,0,0]', NULL),
(61, '5F', 'DISCUSSION ROOM 1', '2023-10-03', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(62, '5F', 'DISCUSSION ROOM 2', '2023-10-03', '08:00', 10, '', '[1,1,0,0,0,0,0,0,0,0,0,0]', NULL),
(63, '5F', 'DISCUSSION ROOM 3', '2023-10-03', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(64, '5F', 'DISCUSSION ROOM 4', '2023-10-03', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(65, '5F', 'DISCUSSION ROOM 5', '2023-10-03', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(66, '7F', 'THEATER LOBBY', '2023-10-03', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(69, '5F', 'DISCUSSION ROOM 1', '2023-10-05', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(70, '5F', 'DISCUSSION ROOM 2', '2023-10-05', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(71, '5F', 'DISCUSSION ROOM 3', '2023-10-05', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(72, '5F', 'DISCUSSION ROOM 4', '2023-10-05', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(73, '5F', 'DISCUSSION ROOM 5', '2023-10-05', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(74, '7F', 'THEATER LOBBY', '2023-10-05', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(75, '', 'DISCUSSION ROOM 2', '2023-10-04', '08:00', 10, '', '[1,1,0,0,0,0,0,0,0,0,0,0]', NULL),
(76, '5F', 'DISCUSSION ROOM 1', '2023-10-06', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(77, '5F', 'DISCUSSION ROOM 2', '2023-10-06', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(78, '5F', 'DISCUSSION ROOM 3', '2023-10-06', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(79, '5F', 'DISCUSSION ROOM 4', '2023-10-06', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(80, '5F', 'DISCUSSION ROOM 5', '2023-10-06', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(81, '7F', 'THEATER LOBBY', '2023-10-06', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(82, '5F', 'DISCUSSION ROOM 1', '2023-10-07', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(83, '5F', 'DISCUSSION ROOM 2', '2023-10-07', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(84, '5F', 'DISCUSSION ROOM 3', '2023-10-07', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(85, '5F', 'DISCUSSION ROOM 4', '2023-10-07', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(86, '5F', 'DISCUSSION ROOM 5', '2023-10-07', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(87, '7F', 'THEATER LOBBY', '2023-10-07', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(88, '5F', 'DISCUSSION ROOM 1', '2023-10-17', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(89, '5F', 'DISCUSSION ROOM 2', '2023-10-17', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(90, '5F', 'DISCUSSION ROOM 3', '2023-10-17', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(91, '5F', 'DISCUSSION ROOM 4', '2023-10-17', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(92, '5F', 'DISCUSSION ROOM 5', '2023-10-17', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(93, '7F', 'THEATER LOBBY', '2023-10-17', '08:00', 10, '', '[1,1,0,0,1,1,0,0,0,0,0,0]', NULL),
(94, '5F', 'DISCUSSION ROOM 1', '2023-10-18', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(95, '5F', 'DISCUSSION ROOM 2', '2023-10-18', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(96, '5F', 'DISCUSSION ROOM 3', '2023-10-18', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(97, '5F', 'DISCUSSION ROOM 4', '2023-10-18', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(98, '5F', 'DISCUSSION ROOM 5', '2023-10-18', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(99, '7F', 'THEATER LOBBY', '2023-10-18', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(100, '5F', 'DISCUSSION ROOM 1', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(101, '5F', 'DISCUSSION ROOM 2', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(102, '5F', 'DISCUSSION ROOM 3', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(103, '5F', 'DISCUSSION ROOM 4', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(104, '5F', 'DISCUSSION ROOM 5', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(105, '7F', 'THEATER LOBBY', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(106, '2F', 'test room', '2023-10-19', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(107, '5F', 'DISCUSSION ROOM 1', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(108, '5F', 'DISCUSSION ROOM 2', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(109, '5F', 'DISCUSSION ROOM 3', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(110, '5F', 'DISCUSSION ROOM 4', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(111, '5F', 'DISCUSSION ROOM 5', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(112, '7F', 'THEATER LOBBY', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(113, '2F', 'test room', '2023-10-21', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(114, '5F', 'DISCUSSION ROOM 1', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(115, '5F', 'DISCUSSION ROOM 2', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(116, '5F', 'DISCUSSION ROOM 3', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(117, '5F', 'DISCUSSION ROOM 4', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(118, '5F', 'DISCUSSION ROOM 5', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(119, '7F', 'THEATER LOBBY', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(120, '2F', 'test room', '2023-10-23', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(121, '5F', 'DISCUSSION ROOM 1', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(122, '5F', 'DISCUSSION ROOM 2', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(123, '5F', 'DISCUSSION ROOM 3', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(124, '5F', 'DISCUSSION ROOM 4', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(125, '5F', 'DISCUSSION ROOM 5', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(126, '7F', 'THEATER LOBBY', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(127, '2F', 'test room', '2023-10-29', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(128, '5F', 'DISCUSSION ROOM 1', '2023-11-02', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(129, '5F', 'DISCUSSION ROOM 2', '2023-11-02', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(130, '5F', 'DISCUSSION ROOM 3', '2023-11-02', '08:00', 10, '', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(156, '5F', 'DISCUSSION ROOM 1', '2023-11-07', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(157, '5F', 'DISCUSSION ROOM 2', '2023-11-07', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(158, '5F', 'DISCUSSION ROOM 3', '2023-11-07', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(159, '5F', 'DISCUSSION ROOM 4', '2023-11-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(160, '5F', 'DISCUSSION ROOM 5', '2023-11-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(161, '7F', 'THEATER LOBBY', '2023-11-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(162, '2F', 'test room', '2023-11-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(163, '5F', 'DISCUSSION ROOM 1', '2023-11-03', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(164, '5F', 'DISCUSSION ROOM 2', '2023-11-03', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(165, '5F', 'DISCUSSION ROOM 3', '2023-11-03', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(166, '5F', 'DISCUSSION ROOM 4', '2023-11-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(167, '5F', 'DISCUSSION ROOM 5', '2023-11-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(168, '7F', 'THEATER LOBBY', '2023-11-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(169, '2F', 'test room', '2023-11-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(170, '5F', 'DISCUSSION ROOM 1', '2023-11-06', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(171, '5F', 'DISCUSSION ROOM 2', '2023-11-06', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(172, '5F', 'DISCUSSION ROOM 3', '2023-11-06', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(173, '5F', 'DISCUSSION ROOM 4', '2023-11-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(174, '5F', 'DISCUSSION ROOM 5', '2023-11-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(175, '7F', 'THEATER LOBBY', '2023-11-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(176, '2F', 'test room', '2023-11-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(177, '5F', 'DISCUSSION ROOM 1', '2023-11-08', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(178, '5F', 'DISCUSSION ROOM 2', '2023-11-08', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(179, '5F', 'DISCUSSION ROOM 3', '2023-11-08', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(180, '5F', 'DISCUSSION ROOM 4', '2023-11-08', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(181, '5F', 'DISCUSSION ROOM 5', '2023-11-08', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(182, '7F', 'THEATER LOBBY', '2023-11-08', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(183, '2F', 'test room', '2023-11-08', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(184, '5F', 'DISCUSSION ROOM 1', '2023-11-14', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(185, '5F', 'DISCUSSION ROOM 2', '2023-11-14', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(186, '5F', 'DISCUSSION ROOM 3', '2023-11-14', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(187, '5F', 'DISCUSSION ROOM 4', '2023-11-14', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(188, '5F', 'DISCUSSION ROOM 5', '2023-11-14', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(189, '7F', 'THEATER LOBBY', '2023-11-14', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(190, '3F', 'Test Room', '2023-11-14', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(191, '5F', 'DISCUSSION ROOM 1', '2023-11-21', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(192, '5F', 'DISCUSSION ROOM 2', '2023-11-21', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(193, '5F', 'DISCUSSION ROOM 3', '2023-11-21', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(194, '5F', 'DISCUSSION ROOM 4', '2023-11-21', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(195, '5F', 'DISCUSSION ROOM 5', '2023-11-21', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(196, '7F', 'THEATER LOBBY', '2023-11-21', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(197, '3F', 'Test Room', '2023-11-21', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(198, '5F', 'DISCUSSION ROOM 1', '2023-11-28', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(199, '5F', 'DISCUSSION ROOM 2', '2023-11-28', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(200, '5F', 'DISCUSSION ROOM 3', '2023-11-28', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(201, '5F', 'DISCUSSION ROOM 4', '2023-11-28', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(202, '5F', 'DISCUSSION ROOM 5', '2023-11-28', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(203, '7F', 'THEATER LOBBY', '2023-11-28', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(204, '3F', 'Test Room', '2023-11-28', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(205, '5F', 'DISCUSSION ROOM 1', '2023-11-29', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(206, '5F', 'DISCUSSION ROOM 2', '2023-11-29', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(207, '5F', 'DISCUSSION ROOM 3', '2023-11-29', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(208, '5F', 'DISCUSSION ROOM 4', '2023-11-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(209, '5F', 'DISCUSSION ROOM 5', '2023-11-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(210, '7F', 'THEATER LOBBY', '2023-11-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(211, '3F', 'Test Room', '2023-11-29', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(212, '5F', 'DISCUSSION ROOM 1', '2023-12-07', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(213, '5F', 'DISCUSSION ROOM 2', '2023-12-07', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(214, '5F', 'DISCUSSION ROOM 3', '2023-12-07', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(215, '5F', 'DISCUSSION ROOM 4', '2023-12-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(216, '5F', 'DISCUSSION ROOM 5', '2023-12-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(217, '7F', 'THEATER LOBBY', '2023-12-07', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(218, '3F', 'Test Room', '2023-12-07', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(219, '5F', 'DISCUSSION ROOM 1', '2023-12-15', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(220, '5F', 'DISCUSSION ROOM 2', '2023-12-15', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(221, '5F', 'DISCUSSION ROOM 3', '2023-12-15', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(222, '5F', 'DISCUSSION ROOM 4', '2023-12-15', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(223, '5F', 'DISCUSSION ROOM 5', '2023-12-15', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(224, '7F', 'THEATER LOBBY', '2023-12-15', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(225, '3F', 'Test Room', '2023-12-15', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(226, '5F', 'DISCUSSION ROOM 1', '2023-12-18', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(227, '5F', 'DISCUSSION ROOM 2', '2023-12-18', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(228, '5F', 'DISCUSSION ROOM 3', '2023-12-18', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(229, '5F', 'DISCUSSION ROOM 4', '2023-12-18', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(230, '5F', 'DISCUSSION ROOM 5', '2023-12-18', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(231, '7F', 'THEATER LOBBY', '2023-12-18', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(232, '3F', 'Test Room', '2023-12-18', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(233, '5F', 'DISCUSSION ROOM 1', '2023-12-20', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(234, '5F', 'DISCUSSION ROOM 2', '2023-12-20', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(235, '5F', 'DISCUSSION ROOM 3', '2023-12-20', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(236, '5F', 'DISCUSSION ROOM 4', '2023-12-20', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(237, '5F', 'DISCUSSION ROOM 5', '2023-12-20', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(238, '7F', 'THEATER LOBBY', '2023-12-20', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(239, '3F', 'Test Room', '2023-12-20', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(240, '5F', 'DISCUSSION ROOM 1', '2023-12-21', '09:00:00', 10, '16:00:00', '[1,0,1,1,0,0,0,0,0,0,0,0]', NULL),
(241, '5F', 'DISCUSSION ROOM 2', '2023-12-21', '07:00:00', 10, '19:00:00', '[0,1,1,0,1,1,0,0,0,0,0,0]', NULL),
(242, '5F', 'DISCUSSION ROOM 3', '2023-12-21', '08:00:00', 10, '21:00:00', '[0,1,1,1,0,0,0,0,0,0,0,0]', NULL),
(243, '5F', 'DISCUSSION ROOM 4', '2023-12-21', '08:00:00', 10, '18:00:00', '[1,1,0,0,0,0,0,0,0,0,0,0]', NULL),
(244, '5F', 'DISCUSSION ROOM 5', '2023-12-21', '08:00:00', 10, '18:00:00', '[0,1,1,0,0,0,0,0,0,0,0,0]', NULL),
(245, '7F', 'THEATER LOBBY', '2023-12-21', '08:00:00', 10, '18:00:00', '[1,1,0,0,0,0,0,0,0,0,0,0]', NULL),
(246, '3F', 'Test Room', '2023-12-21', '09:00:00', 10, '19:00:00', '[1,0,0,0,0,1,0,0,0,0,0,0]', NULL),
(247, '5F', 'DISCUSSION ROOM 1', '2023-12-22', '09:00:00', 10, '16:00:00', '[1,0,0,1,1,1,0,0,0,0,0,0]', NULL),
(248, '5F', 'DISCUSSION ROOM 2', '2023-12-22', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(249, '5F', 'DISCUSSION ROOM 3', '2023-12-22', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(250, '5F', 'DISCUSSION ROOM 4', '2023-12-22', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(251, '5F', 'DISCUSSION ROOM 5', '2023-12-22', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(252, '7F', 'THEATER LOBBY', '2023-12-22', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(253, '3F', 'Test Room', '2023-12-22', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(254, '5F', 'DISCUSSION ROOM 1', '2023-12-23', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(255, '5F', 'DISCUSSION ROOM 2', '2023-12-23', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(256, '5F', 'DISCUSSION ROOM 3', '2023-12-23', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(257, '5F', 'DISCUSSION ROOM 4', '2023-12-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(258, '5F', 'DISCUSSION ROOM 5', '2023-12-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(259, '7F', 'THEATER LOBBY', '2023-12-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(260, '3F', 'Test Room', '2023-12-23', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(261, '5F', 'DISCUSSION ROOM 1', '2023-12-26', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(262, '5F', 'DISCUSSION ROOM 2', '2023-12-26', '07:00:00', 10, '19:00:00', '[0,1,1,0,0,0,0,0,0,0,0,0]', NULL),
(263, '5F', 'DISCUSSION ROOM 3', '2023-12-26', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(264, '5F', 'DISCUSSION ROOM 4', '2023-12-26', '08:00:00', 10, '18:00:00', '[1,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(265, '5F', 'DISCUSSION ROOM 5', '2023-12-26', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(266, '7F', 'THEATER LOBBY', '2023-12-26', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(267, '3F', 'Test Room', '2023-12-26', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(268, '5F', 'DISCUSSION ROOM 1', '2023-12-27', '09:00:00', 10, '16:00:00', '[0,1,0,0,0,0,0,0,0,0,0,0]', NULL),
(269, '5F', 'DISCUSSION ROOM 2', '2023-12-27', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(270, '5F', 'DISCUSSION ROOM 3', '2023-12-27', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(271, '5F', 'DISCUSSION ROOM 4', '2023-12-27', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(272, '5F', 'DISCUSSION ROOM 5', '2023-12-27', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(273, '7F', 'THEATER LOBBY', '2023-12-27', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(274, '3F', 'Test Room', '2023-12-27', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(275, '5F', 'DISCUSSION ROOM 1', '2023-12-30', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(276, '5F', 'DISCUSSION ROOM 2', '2023-12-30', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(277, '5F', 'DISCUSSION ROOM 3', '2023-12-30', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(278, '5F', 'DISCUSSION ROOM 4', '2023-12-30', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(279, '5F', 'DISCUSSION ROOM 5', '2023-12-30', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(280, '7F', 'THEATER LOBBY', '2023-12-30', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(281, '3F', 'Test Room', '2023-12-30', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(282, '5F', 'DISCUSSION ROOM 1', '2024-01-02', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(283, '5F', 'DISCUSSION ROOM 2', '2024-01-02', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(284, '5F', 'DISCUSSION ROOM 3', '2024-01-02', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(285, '5F', 'DISCUSSION ROOM 4', '2024-01-02', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(286, '5F', 'DISCUSSION ROOM 5', '2024-01-02', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(287, '7F', 'THEATER LOBBY', '2024-01-02', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(288, '3F', 'Test Room', '2024-01-02', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(289, '5F', 'DISCUSSION ROOM 1', '2024-01-03', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(290, '5F', 'DISCUSSION ROOM 2', '2024-01-03', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(291, '5F', 'DISCUSSION ROOM 3', '2024-01-03', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(292, '5F', 'DISCUSSION ROOM 4', '2024-01-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(293, '5F', 'DISCUSSION ROOM 5', '2024-01-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(294, '7F', 'THEATER LOBBY', '2024-01-03', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(295, '3F', 'Test Room', '2024-01-03', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(296, '5F', 'DISCUSSION ROOM 1', '2024-01-04', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(297, '5F', 'DISCUSSION ROOM 2', '2024-01-04', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(298, '5F', 'DISCUSSION ROOM 3', '2024-01-04', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(299, '5F', 'DISCUSSION ROOM 4', '2024-01-04', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(300, '5F', 'DISCUSSION ROOM 5', '2024-01-04', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(301, '7F', 'THEATER LOBBY', '2024-01-04', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(302, '3F', 'Test Room', '2024-01-04', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(303, '5F', 'DISCUSSION ROOM 1', '2024-01-05', '09:00:00', 10, '16:00:00', '[1,1,1,1,1,0,0,0,0,0,0,0]', NULL),
(304, '5F', 'DISCUSSION ROOM 2', '2024-01-05', '07:00:00', 10, '19:00:00', '[1,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(305, '5F', 'DISCUSSION ROOM 3', '2024-01-05', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(306, '5F', 'DISCUSSION ROOM 4', '2024-01-05', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(307, '5F', 'DISCUSSION ROOM 5', '2024-01-05', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(308, '7F', 'THEATER LOBBY', '2024-01-05', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(309, '3F', 'Test Room', '2024-01-05', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(310, '5F', 'DISCUSSION ROOM 1', '2024-01-06', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(311, '5F', 'DISCUSSION ROOM 2', '2024-01-06', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(312, '5F', 'DISCUSSION ROOM 3', '2024-01-06', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(313, '5F', 'DISCUSSION ROOM 4', '2024-01-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(314, '5F', 'DISCUSSION ROOM 5', '2024-01-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(315, '7F', 'THEATER LOBBY', '2024-01-06', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(316, '3F', 'Test Room', '2024-01-06', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(317, '5F', 'DISCUSSION ROOM 1', '2024-01-10', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(318, '5F', 'DISCUSSION ROOM 2', '2024-01-10', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(319, '5F', 'DISCUSSION ROOM 3', '2024-01-10', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(320, '5F', 'DISCUSSION ROOM 4', '2024-01-10', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(321, '5F', 'DISCUSSION ROOM 5', '2024-01-10', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(322, '7F', 'THEATER LOBBY', '2024-01-10', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(323, '3F', 'Test Room', '2024-01-10', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(324, '5F', 'DISCUSSION ROOM 1', '2024-01-11', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(325, '5F', 'DISCUSSION ROOM 2', '2024-01-11', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(326, '5F', 'DISCUSSION ROOM 3', '2024-01-11', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(327, '5F', 'DISCUSSION ROOM 4', '2024-01-11', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(328, '5F', 'DISCUSSION ROOM 5', '2024-01-11', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(329, '7F', 'THEATER LOBBY', '2024-01-11', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(330, '3F', 'Test Room', '2024-01-11', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(331, '5F', 'DISCUSSION ROOM 1', '2024-01-15', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(332, '5F', 'DISCUSSION ROOM 2', '2024-01-15', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(333, '5F', 'DISCUSSION ROOM 3', '2024-01-15', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(334, '5F', 'DISCUSSION ROOM 4', '2024-01-15', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(335, '5F', 'DISCUSSION ROOM 5', '2024-01-15', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(336, '7F', 'THEATER LOBBY', '2024-01-15', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(337, '3F', 'Test Room', '2024-01-15', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(338, '5F', 'DISCUSSION ROOM 1', '2024-01-18', '09:00:00', 10, '16:00:00', '[1,1,0,0,0,0,0,0,0,0,0,0]', NULL),
(339, '5F', 'DISCUSSION ROOM 2', '2024-01-18', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(340, '5F', 'DISCUSSION ROOM 3', '2024-01-18', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(341, '5F', 'DISCUSSION ROOM 4', '2024-01-18', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(342, '5F', 'DISCUSSION ROOM 5', '2024-01-18', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(343, '7F', 'THEATER LOBBY', '2024-01-18', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(344, '3F', 'Test Room', '2024-01-18', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(345, '5F', 'DISCUSSION ROOM 1', '2024-01-22', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(346, '5F', 'DISCUSSION ROOM 2', '2024-01-22', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(347, '5F', 'DISCUSSION ROOM 3', '2024-01-22', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(348, '5F', 'DISCUSSION ROOM 4', '2024-01-22', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(349, '5F', 'DISCUSSION ROOM 5', '2024-01-22', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(350, '7F', 'THEATER LOBBY', '2024-01-22', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(351, '3F', 'Test Room', '2024-01-22', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(352, '5F', 'DISCUSSION ROOM 1', '2024-01-23', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(353, '5F', 'DISCUSSION ROOM 2', '2024-01-23', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(354, '5F', 'DISCUSSION ROOM 3', '2024-01-23', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(355, '5F', 'DISCUSSION ROOM 4', '2024-01-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(356, '5F', 'DISCUSSION ROOM 5', '2024-01-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(357, '7F', 'THEATER LOBBY', '2024-01-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(358, '3F', 'Test Room', '2024-01-23', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(359, '2F', 'Reading Room 7', '2024-01-23', '08:00:00', 10, '06:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(360, '2F', 'Reading Room 7', '2024-01-23', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(361, '5F', 'DISCUSSION ROOM 1', '2024-01-24', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(362, '5F', 'DISCUSSION ROOM 2', '2024-01-24', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(363, '5F', 'DISCUSSION ROOM 3', '2024-01-24', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(364, '5F', 'DISCUSSION ROOM 4', '2024-01-24', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(365, '5F', 'DISCUSSION ROOM 5', '2024-01-24', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(366, '7F', 'THEATER LOBBY', '2024-01-24', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(367, '3F', 'Test Room', '2024-01-24', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(368, '2F', 'Reading Room 7', '2024-01-24', '08:00:00', 10, '06:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(369, '2F', 'Reading Room 7', '2024-01-24', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(370, '5f', 'Computer', '2024-01-24', '08:00:00', 0, '17:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(371, '5F', 'DISCUSSION ROOM 1', '2024-01-29', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(372, '5F', 'DISCUSSION ROOM 2', '2024-01-29', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(373, '5F', 'DISCUSSION ROOM 3', '2024-01-29', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(374, '5F', 'DISCUSSION ROOM 4', '2024-01-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(375, '5F', 'DISCUSSION ROOM 5', '2024-01-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(376, '7F', 'THEATER LOBBY', '2024-01-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(377, '3F', 'Test Room', '2024-01-29', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(378, '2F', 'Reading Room 7', '2024-01-29', '08:00:00', 10, '06:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(379, '2F', 'Reading Room 7', '2024-01-29', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(380, '5f', 'Computer', '2024-01-29', '08:00:00', 0, '17:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(381, '5f', 'Computer Area', '2024-01-29', '08:00:00', 0, '17:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(382, '5F', 'DISCUSSION ROOM 1', '2024-01-31', '09:00:00', 10, '16:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(383, '5F', 'DISCUSSION ROOM 2', '2024-01-31', '07:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(384, '5F', 'DISCUSSION ROOM 3', '2024-01-31', '08:00:00', 10, '21:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(385, '5F', 'DISCUSSION ROOM 4', '2024-01-31', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(386, '5F', 'DISCUSSION ROOM 5', '2024-01-31', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(387, '7F', 'THEATER LOBBY', '2024-01-31', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(388, '3F', 'Test Room', '2024-01-31', '09:00:00', 10, '19:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(389, '2F', 'Reading Room 7', '2024-01-31', '08:00:00', 10, '06:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(390, '2F', 'Reading Room 7', '2024-01-31', '08:00:00', 10, '18:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(391, '5f', 'Computer', '2024-01-31', '08:00:00', 0, '17:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL),
(392, '5f', 'Computer Area', '2024-01-31', '08:00:00', 0, '17:00:00', '[0,0,0,0,0,0,0,0,0,0,0,0]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `date`, `title`, `category`) VALUES
(3, '2023-11-01', 'all saint day', 'close'),
(4, '2023-11-02', 'special day off', 'close'),
(5, '2023-11-03', 'special day open', 'open'),
(6, '2023-11-10', 'test', 'close'),
(7, '2023-11-11', 'abc', 'open'),
(12, '2023-12-13', 'TEST123', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

CREATE TABLE `sheet1` (
  `first_name` varchar(11) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `middle_name` varchar(14) DEFAULT NULL,
  `srcode` varchar(13) DEFAULT NULL,
  `program` varchar(23) DEFAULT NULL,
  `rfid` varchar(8) DEFAULT NULL,
  `qrcode` varchar(8) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `colleage` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sheet1`
--

INSERT INTO `sheet1` (`first_name`, `last_name`, `middle_name`, `srcode`, `program`, `rfid`, `qrcode`, `gender`, `colleage`) VALUES
('Redwing', 'Besmonte', 'Butt Gow', 'ST-2023-00001', 'Psychology', 'YM43IP87', 'YM43IP87', 'Male', 'BULSU'),
('Reucastle', 'Cabacaba', 'Wharrier', 'ST-2023-00002', 'Marketing', 'AV93EJ82', 'AV93EJ82', 'Male', 'BULSU'),
('Abell', 'Simbulan', 'Crimmins', 'ST-2023-00003', 'Nursing', 'HF92WS43', 'HF92WS43', 'Male', 'BULSU'),
('Kenrick', 'Jotojot', 'Blaxley', 'ST-2023-00004', 'Nursing', 'KV63LJ41', 'KV63LJ41', 'Male', 'BULSU'),
('Pate', 'Pirote', 'Strettell', 'ST-2023-00005', 'Engineering', 'FQ08WA65', 'FQ08WA65', 'Male', 'BULSU'),
('Di Carlo', 'Baricuatro', 'Van Rembrandt', 'ST-2023-00006', 'Marketing', 'CQ90EE51', 'CQ90EE51', 'Male', 'BULSU'),
('Van Ross', 'Espenida', 'Wyldish', 'ST-2023-00007', 'Psychology', 'QQ61JX76', 'QQ61JX76', 'Male', 'BULSU'),
('Pollie', 'Bejino', 'Ranaghan', 'ST-2023-00008', 'Nursing', 'SS00DQ08', 'SS00DQ08', 'Male', 'BULSU'),
('Pavinese', 'Domingyaca', 'Colbridge', 'ST-2023-00009', 'Nursing', 'PC37XP83', 'PC37XP83', 'Male', 'BULSU'),
('Klulik', 'Elbat', 'Grob', 'ST-2023-00010', 'Graphic Design', 'KL38WI58', 'KL38WI58', 'Male', 'BULSU'),
('McGonigal', 'Aradilla', 'Gayforth', 'ST-2023-00011', 'Graphic Design', 'MA76QA54', 'MA76QA54', 'Male', 'BULSU'),
('Scargle', 'Catdula', 'Elfes', 'ST-2023-00012', 'Engineering', 'WG94FN96', 'WG94FN96', 'Female', 'BULSU'),
('Gaskell', 'De Chavez', 'Macguire', 'ST-2023-00013', 'Education', 'AX89WV35', 'AX89WV35', 'Female', 'BULSU'),
('Scini', 'Escalon', 'Minchinton', 'ST-2023-00014', 'Psychology', 'RK17LK51', 'RK17LK51', 'Male', 'BULSU'),
('Deeney', 'Daigdigan', 'Blench', 'ST-2023-00015', 'Culinary Arts', 'UB06ML51', 'UB06ML51', 'Female', 'BULSU'),
('Gatcliff', 'Dela Rosa', 'Lardeur', 'ST-2023-00016', 'Psychology', 'XE45HD19', 'XE45HD19', 'Male', 'BULSU'),
('Veck', 'Malsi', 'Emberton', 'ST-2023-00017', 'Graphic Design', 'QP40KJ69', 'QP40KJ69', 'Female', 'BULSU'),
('Candish', 'Montaray', 'Reijmers', 'ST-2023-00018', 'Engineering', 'JR46VN34', 'JR46VN34', 'Female', 'BULSU'),
('Seater', 'Moratalla', 'Bower', 'ST-2023-00019', 'Education', 'HH98DK25', 'HH98DK25', 'Female', 'BULSU'),
('Barnsley', 'Baduria', 'Tommeo', 'ST-2023-00020', 'Graphic Design', 'DU12XZ37', 'DU12XZ37', 'Male', 'BULSU'),
('Stephen', 'Mellican', 'Tomas', 'ST-2023-00021', 'Business Administration', 'HW20CG06', 'HW20CG06', 'Male', 'BULSU'),
('Ridges', 'Luzano', 'Fleeming', 'ST-2023-00022', 'Fashion Design', 'LG06RW66', 'LG06RW66', 'Male', 'BULSU'),
('Yurevich', 'Matias', 'Van der Kruijs', 'ST-2023-00023', 'Marketing', 'TR41NC88', 'TR41NC88', 'Female', 'BULSU'),
('Bartle', 'Mendoza', 'Maytum', 'ST-2023-00024', 'Culinary Arts', 'CQ91RE18', 'CQ91RE18', 'Female', 'BULSU'),
('Crewdson', 'De Guzman', 'Tewkesberry', 'ST-2023-00025', 'Graphic Design', 'UJ66VH60', 'UJ66VH60', 'Male', 'BULSU'),
('Xyto', 'Gonzales', 'Roo', 'ST-2023-00026', 'Fashion Design', 'HC94TW38', 'HC94TW38', 'Male', 'BULSU'),
('Ginnell', 'Canua', 'Kryszkiecicz', 'ST-2023-00027', 'Psychology', 'OY86KH45', 'OY86KH45', 'Female', 'BULSU'),
('Cubbino', 'Caballes', 'Robert', 'ST-2023-00028', 'Engineering', 'TS32UB15', 'TS32UB15', 'Male', 'BULSU'),
('Scole', 'Santos', 'Daelman', 'ST-2023-00029', 'Business Administration', 'VD54DR43', 'VD54DR43', 'Male', 'BULSU'),
('Brotherheed', 'Dela Cruz', 'Reiner', 'ST-2023-00030', 'Business Administration', 'GE05HE28', 'GE05HE28', 'Male', 'BULSU'),
('Sallier', 'Estocapio', 'Mesant', 'ST-2023-00031', 'Education', 'PV59ID62', 'PV59ID62', 'Male', 'BULSU'),
('Fallos', 'Gonzales', 'Smees', 'ST-2023-00032', 'Culinary Arts', 'WZ81OB02', 'WZ81OB02', 'Female', 'BULSU'),
('Brimmicombe', 'Manila', 'Edmott', 'ST-2023-00033', 'Business Administration', 'WY45EZ97', 'WY45EZ97', 'Female', 'BULSU'),
('Emberton', 'Lontes', 'Ovize', 'ST-2023-00034', 'Fashion Design', 'BF41YQ24', 'BF41YQ24', 'Male', 'BULSU'),
('Delong', 'Va-Ay', 'Gratton', 'ST-2023-00035', 'Education', 'NN33XF78', 'NN33XF78', 'Male', 'BULSU'),
('Luckie', 'Capuyan', 'Peter', 'ST-2023-00036', 'Business Administration', 'VU59LX97', 'VU59LX97', 'Female', 'BULSU'),
('Darren', 'Ramirez', 'Santos', 'ST-2023-00037', 'Psychology', 'LA01FJ04', 'LA01FJ04', 'Male', 'BULSU'),
('Gathercole', 'Valerio', 'Edinburough', 'ST-2023-00038', 'Marketing', 'RH36SK29', 'RH36SK29', 'Female', 'BULSU'),
('Westmerland', 'Larin', 'Denacamp', 'ST-2023-00039', 'Computer Science', 'XU40NW18', 'XU40NW18', 'Male', 'BULSU'),
('Yusupov', 'Anod', 'Ascraft', 'ST-2023-00040', 'Engineering', 'LB01CW04', 'LB01CW04', 'Male', 'BULSU'),
('Peevor', 'Clemente', 'Newman', 'ST-2023-00041', 'Fashion Design', 'RB11MA26', 'RB11MA26', 'Male', 'BULSU'),
('McCahey', 'Belleza', 'Minnock', 'ST-2023-00042', 'Culinary Arts', 'HB13GO42', 'HB13GO42', 'Male', 'BULSU'),
('Burdoun', 'Ricanor', 'Giorgietto', 'ST-2023-00043', 'Nursing', 'AV59FR43', 'AV59FR43', 'Male', 'BULSU'),
('Althea', 'Demoral', 'Tumulty', 'ST-2023-00044', 'Nursing', 'GC79VN68', 'GC79VN68', 'Female', 'BULSU'),
('MacMichael', 'Laguitao', 'MacNish', 'ST-2023-00045', 'Marketing', 'AI77BQ20', 'AI77BQ20', 'Female', 'BULSU'),
('Oliver', 'Angcot', 'Bassick', 'ST-2023-00046', 'Business Administration', 'WT49LT73', 'WT49LT73', 'Male', 'BULSU'),
('Buttner', 'Mustapha', 'Broggelli', 'ST-2023-00047', 'Education', 'TP19RJ35', 'TP19RJ35', 'Male', 'BULSU'),
('Hammerman', 'Organo', 'O\'Nions', 'ST-2023-00048', 'Psychology', 'UI38FK03', 'UI38FK03', 'Male', 'BULSU'),
('Brager', 'Turaray', 'Darell', 'ST-2023-00049', 'Computer Science', 'FH28AR29', 'FH28AR29', 'Female', 'BULSU'),
('Manach', 'Cos', 'Hatrick', 'ST-2023-00050', 'Business Administration', 'IZ02DJ78', 'IZ02DJ78', 'Female', 'BULSU'),
('Leheude', 'Dungca', 'Vanns', 'ST-2023-00051', 'Nursing', 'OR35NV90', 'OR35NV90', 'Male', 'BULSU'),
('Powter', 'Fernandez', 'Shewring', 'ST-2023-00052', 'Marketing', 'NS12DK35', 'NS12DK35', 'Male', 'BULSU'),
('Cabrer', 'Agustin', 'Furst', 'ST-2023-00053', 'Marketing', 'NE91AH52', 'NE91AH52', 'Female', 'BULSU'),
('Dabbs', 'Lucip', 'Olenov', 'ST-2023-00054', 'Graphic Design', 'TJ32EN49', 'TJ32EN49', 'Female', 'BULSU'),
('Currer', 'Maynagcot', 'Maker', 'ST-2023-00055', 'Nursing', 'YT48CI54', 'YT48CI54', 'Female', 'BULSU'),
('Emanson', 'Saturno', 'Rogister', 'ST-2023-00056', 'Computer Science', 'PT46UW42', 'PT46UW42', 'Male', 'BULSU'),
('Bee', 'Eguizabal', 'Rosone', 'ST-2023-00057', 'Marketing', 'KY45AW96', 'KY45AW96', 'Male', 'BULSU'),
('Barabich', 'Gallano', 'Milroy', 'ST-2023-00058', 'Computer Science', 'EO65ST03', 'EO65ST03', 'Female', 'BULSU'),
('Colbrun', 'Uy', 'Hawkslee', 'ST-2023-00059', 'Culinary Arts', 'DW15EG29', 'DW15EG29', 'Male', 'BULSU'),
('Daskiewicz', 'Calasig', 'Carruth', 'ST-2023-00060', 'Psychology', 'AO15CJ52', 'AO15CJ52', 'Female', 'BULSU'),
('Dooler', 'Canlas', 'Rissom', 'ST-2023-00061', 'Psychology', 'AQ43EQ18', 'AQ43EQ18', 'Male', 'BULSU'),
('Casarili', 'Estuesta', 'Scantlebury', 'ST-2023-00062', 'Graphic Design', 'AO46SR36', 'AO46SR36', 'Female', 'BULSU'),
('Struys', 'Sural', 'Plows', 'ST-2023-00063', 'Business Administration', 'VW97DT18', 'VW97DT18', 'Male', 'BULSU'),
('Heinschke', 'Bancifra', 'Burridge', 'ST-2023-00064', 'Business Administration', 'GL95NP00', 'GL95NP00', 'Male', 'BULSU'),
('Moore', 'Sta. Maria', 'Hackney', 'ST-2023-00065', 'Nursing', 'KS71AR58', 'KS71AR58', 'Male', 'BULSU'),
('Siflet', 'Cagasan', 'Yanshin', 'ST-2023-00066', 'Marketing', 'RF70SZ39', 'RF70SZ39', 'Female', 'BULSU'),
('Lambshine', 'De Paz', 'Myall', 'ST-2023-00067', 'Fashion Design', 'LV86DW54', 'LV86DW54', 'Female', 'BULSU'),
('Kristopher', 'De Leon', 'Panson', 'ST-2023-00068', 'Business Administration', 'TG04UJ96', 'TG04UJ96', 'Male', 'BULSU'),
('Hargie', 'Labajo', 'Girdler', 'ST-2023-00069', 'Psychology', 'TU41EC80', 'TU41EC80', 'Female', 'BULSU'),
('Lowfill', 'Sierra', 'Nerval', 'ST-2023-00070', 'Business Administration', 'EB00AT19', 'EB00AT19', 'Male', 'BULSU'),
('Pittford', 'Blacer', 'Bagnold', 'ST-2023-00071', 'Marketing', 'KV09ZV68', 'KV09ZV68', 'Male', 'BULSU'),
('Paulon', 'Lazarito', 'Yeabsley', 'ST-2023-00072', 'Business Administration', 'AO18EC46', 'AO18EC46', 'Female', 'BULSU'),
('Kilfedder', 'Tolosa', 'Scopham', 'ST-2023-00073', 'Computer Science', 'QP27TK71', 'QP27TK71', 'Male', 'BULSU'),
('Couvet', 'Millabas', 'Ackers', 'ST-2023-00074', 'Business Administration', 'KE23RV07', 'KE23RV07', 'Female', 'BULSU'),
('Ridsdale', 'Tolentino', 'Beton', 'ST-2023-00075', 'Graphic Design', 'WH97SP59', 'WH97SP59', 'Female', 'BULSU'),
('Prigmore', 'Domingo', 'Ladley', 'ST-2023-00076', 'Engineering', 'QS69UG99', 'QS69UG99', 'Female', 'BULSU'),
('Govier', 'Nabia', 'Tissington', 'ST-2023-00077', 'Marketing', 'DF63NE96', 'DF63NE96', 'Female', 'BULSU'),
('Duddan', 'Flor', 'Goodreid', 'ST-2023-00078', 'Psychology', 'LQ48IQ62', 'LQ48IQ62', 'Male', 'BULSU'),
('Mace', 'Binondo', 'Gemson', 'ST-2023-00079', 'Fashion Design', 'LD13WS81', 'LD13WS81', 'Male', 'BULSU'),
('Henaughan', 'Samillano', 'Sherwell', 'ST-2023-00080', 'Business Administration', 'YD72KL97', 'YD72KL97', 'Male', 'BULSU'),
('Backler', 'Gozarin', 'Littlefield', 'ST-2023-00081', 'Education', 'NN32BD28', 'NN32BD28', 'Male', 'BULSU'),
('Insole', 'Borja', 'Grissett', 'ST-2023-00082', 'Education', 'WA59TF77', 'WA59TF77', 'Male', 'BULSU'),
('Seckom', 'Caleja', 'Emlyn', 'ST-2023-00083', 'Business Administration', 'NJ96TF46', 'NJ96TF46', 'Male', 'BULSU'),
('Schermick', 'Macalalad', 'Kavanagh', 'ST-2023-00084', 'Computer Science', 'KC64EL82', 'KC64EL82', 'Male', 'BULSU'),
('Burrow', 'Dacanay', 'Stendell', 'ST-2023-00085', 'Marketing', 'UX26IC01', 'UX26IC01', 'Male', 'BULSU'),
('Creber', 'Cerado', 'Dabnor', 'ST-2023-00086', 'Computer Science', 'YA08CI50', 'YA08CI50', 'Male', 'BULSU'),
('Klaves', 'Avelino', 'Friend', 'ST-2023-00087', 'Education', 'KZ33ZD78', 'KZ33ZD78', 'Female', 'BULSU'),
('Korn', 'Dacanay', 'Sagrott', 'ST-2023-00088', 'Graphic Design', 'XP81XL11', 'XP81XL11', 'Male', 'BULSU'),
('Dianne', 'James', 'Smith', 'ST-2023-00089', 'Fashion Design', 'XG81EQ31', 'XG81EQ31', 'Female', 'BULSU'),
('Halkyard', 'Sanchez', 'Stutt', 'ST-2023-00090', 'Education', 'JS37ZD32', 'JS37ZD32', 'Male', 'BULSU'),
('Tarbin', 'Lopres', 'Allsworth', 'ST-2023-00091', 'Computer Science', 'EB46OZ91', 'EB46OZ91', 'Male', 'BULSU'),
('Faughnan', 'Timtiman', 'Zuan', 'ST-2023-00092', 'Marketing', 'QN23MX85', 'QN23MX85', 'Male', 'BULSU'),
('Klare', 'Alcantara', 'Westcott', 'ST-2023-00093', 'Education', 'RC25OP04', 'RC25OP04', 'Female', 'BULSU'),
('Rainey', 'Aldea', 'Tabram', 'ST-2023-00094', 'Psychology', 'SO68CS81', 'SO68CS81', 'Female', 'BULSU'),
('Shilladay', 'Cortez', 'Drepp', 'ST-2023-00095', 'Psychology', 'KZ16PL42', 'KZ16PL42', 'Male', 'BULSU'),
('Bretherick', 'Diaz', 'Williams', 'ST-2023-00096', 'Business Administration', 'RX28KD86', 'RX28KD86', 'Male', 'BULSU'),
('Sherlyn', 'Dioquino', 'Witt', 'ST-2023-00097', 'Culinary Arts', 'TE82PD65', 'TE82PD65', 'Female', 'BULSU'),
('Angela', 'Smith', 'Depp', 'ST-2023-00098', 'Engineering', 'BF71BH29', 'BF71BH29', 'Female', 'BULSU'),
('Tilby', 'Te', 'Johnes', 'ST-2023-00099', 'Business Administration', 'LE37BQ04', 'LE37BQ04', 'Female', 'BULSU'),
('Zyne', 'Ducos', 'Gosse', 'ST-2023-00100', 'Engineering', 'UV70VT24', 'UV70VT24', 'Male', 'BULSU'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Redwing', 'Besmonte', 'Butt Gow', 'ST-2023-00001', 'Psychology', 'YM43IP87', 'YM43IP87', 'Male', 'BULSU'),
('Reucastle', 'Cabacaba', 'Wharrier', 'ST-2023-00002', 'Marketing', 'AV93EJ82', 'AV93EJ82', 'Male', 'BULSU'),
('Abell', 'Simbulan', 'Crimmins', 'ST-2023-00003', 'Nursing', 'HF92WS43', 'HF92WS43', 'Male', 'BULSU'),
('Kenrick', 'Jotojot', 'Blaxley', 'ST-2023-00004', 'Nursing', 'KV63LJ41', 'KV63LJ41', 'Male', 'BULSU'),
('Pate', 'Pirote', 'Strettell', 'ST-2023-00005', 'Engineering', 'FQ08WA65', 'FQ08WA65', 'Male', 'BULSU'),
('Di Carlo', 'Baricuatro', 'Van Rembrandt', 'ST-2023-00006', 'Marketing', 'CQ90EE51', 'CQ90EE51', 'Male', 'BULSU'),
('Van Ross', 'Espenida', 'Wyldish', 'ST-2023-00007', 'Psychology', 'QQ61JX76', 'QQ61JX76', 'Male', 'BULSU'),
('Pollie', 'Bejino', 'Ranaghan', 'ST-2023-00008', 'Nursing', 'SS00DQ08', 'SS00DQ08', 'Male', 'BULSU'),
('Pavinese', 'Domingyaca', 'Colbridge', 'ST-2023-00009', 'Nursing', 'PC37XP83', 'PC37XP83', 'Male', 'BULSU'),
('Klulik', 'Elbat', 'Grob', 'ST-2023-00010', 'Graphic Design', 'KL38WI58', 'KL38WI58', 'Male', 'BULSU'),
('McGonigal', 'Aradilla', 'Gayforth', 'ST-2023-00011', 'Graphic Design', 'MA76QA54', 'MA76QA54', 'Male', 'BULSU'),
('Scargle', 'Catdula', 'Elfes', 'ST-2023-00012', 'Engineering', 'WG94FN96', 'WG94FN96', 'Female', 'BULSU'),
('Gaskell', 'De Chavez', 'Macguire', 'ST-2023-00013', 'Education', 'AX89WV35', 'AX89WV35', 'Female', 'BULSU'),
('Scini', 'Escalon', 'Minchinton', 'ST-2023-00014', 'Psychology', 'RK17LK51', 'RK17LK51', 'Male', 'BULSU'),
('Deeney', 'Daigdigan', 'Blench', 'ST-2023-00015', 'Culinary Arts', 'UB06ML51', 'UB06ML51', 'Female', 'BULSU'),
('Gatcliff', 'Dela Rosa', 'Lardeur', 'ST-2023-00016', 'Psychology', 'XE45HD19', 'XE45HD19', 'Male', 'BULSU'),
('Veck', 'Malsi', 'Emberton', 'ST-2023-00017', 'Graphic Design', 'QP40KJ69', 'QP40KJ69', 'Female', 'BULSU'),
('Candish', 'Montaray', 'Reijmers', 'ST-2023-00018', 'Engineering', 'JR46VN34', 'JR46VN34', 'Female', 'BULSU'),
('Seater', 'Moratalla', 'Bower', 'ST-2023-00019', 'Education', 'HH98DK25', 'HH98DK25', 'Female', 'BULSU'),
('Barnsley', 'Baduria', 'Tommeo', 'ST-2023-00020', 'Graphic Design', 'DU12XZ37', 'DU12XZ37', 'Male', 'BULSU'),
('Stephen', 'Mellican', 'Tomas', 'ST-2023-00021', 'Business Administration', 'HW20CG06', 'HW20CG06', 'Male', 'BULSU'),
('Ridges', 'Luzano', 'Fleeming', 'ST-2023-00022', 'Fashion Design', 'LG06RW66', 'LG06RW66', 'Male', 'BULSU'),
('Yurevich', 'Matias', 'Van der Kruijs', 'ST-2023-00023', 'Marketing', 'TR41NC88', 'TR41NC88', 'Female', 'BULSU'),
('Bartle', 'Mendoza', 'Maytum', 'ST-2023-00024', 'Culinary Arts', 'CQ91RE18', 'CQ91RE18', 'Female', 'BULSU'),
('Crewdson', 'De Guzman', 'Tewkesberry', 'ST-2023-00025', 'Graphic Design', 'UJ66VH60', 'UJ66VH60', 'Male', 'BULSU'),
('Xyto', 'Gonzales', 'Roo', 'ST-2023-00026', 'Fashion Design', 'HC94TW38', 'HC94TW38', 'Male', 'BULSU'),
('Ginnell', 'Canua', 'Kryszkiecicz', 'ST-2023-00027', 'Psychology', 'OY86KH45', 'OY86KH45', 'Female', 'BULSU'),
('Cubbino', 'Caballes', 'Robert', 'ST-2023-00028', 'Engineering', 'TS32UB15', 'TS32UB15', 'Male', 'BULSU'),
('Scole', 'Santos', 'Daelman', 'ST-2023-00029', 'Business Administration', 'VD54DR43', 'VD54DR43', 'Male', 'BULSU'),
('Brotherheed', 'Dela Cruz', 'Reiner', 'ST-2023-00030', 'Business Administration', 'GE05HE28', 'GE05HE28', 'Male', 'BULSU'),
('Sallier', 'Estocapio', 'Mesant', 'ST-2023-00031', 'Education', 'PV59ID62', 'PV59ID62', 'Male', 'BULSU'),
('Fallos', 'Gonzales', 'Smees', 'ST-2023-00032', 'Culinary Arts', 'WZ81OB02', 'WZ81OB02', 'Female', 'BULSU'),
('Brimmicombe', 'Manila', 'Edmott', 'ST-2023-00033', 'Business Administration', 'WY45EZ97', 'WY45EZ97', 'Female', 'BULSU'),
('Emberton', 'Lontes', 'Ovize', 'ST-2023-00034', 'Fashion Design', 'BF41YQ24', 'BF41YQ24', 'Male', 'BULSU'),
('Delong', 'Va-Ay', 'Gratton', 'ST-2023-00035', 'Education', 'NN33XF78', 'NN33XF78', 'Male', 'BULSU'),
('Luckie', 'Capuyan', 'Peter', 'ST-2023-00036', 'Business Administration', 'VU59LX97', 'VU59LX97', 'Female', 'BULSU'),
('Darren', 'Ramirez', 'Santos', 'ST-2023-00037', 'Psychology', 'LA01FJ04', 'LA01FJ04', 'Male', 'BULSU'),
('Gathercole', 'Valerio', 'Edinburough', 'ST-2023-00038', 'Marketing', 'RH36SK29', 'RH36SK29', 'Female', 'BULSU'),
('Westmerland', 'Larin', 'Denacamp', 'ST-2023-00039', 'Computer Science', 'XU40NW18', 'XU40NW18', 'Male', 'BULSU'),
('Yusupov', 'Anod', 'Ascraft', 'ST-2023-00040', 'Engineering', 'LB01CW04', 'LB01CW04', 'Male', 'BULSU'),
('Peevor', 'Clemente', 'Newman', 'ST-2023-00041', 'Fashion Design', 'RB11MA26', 'RB11MA26', 'Male', 'BULSU'),
('McCahey', 'Belleza', 'Minnock', 'ST-2023-00042', 'Culinary Arts', 'HB13GO42', 'HB13GO42', 'Male', 'BULSU'),
('Burdoun', 'Ricanor', 'Giorgietto', 'ST-2023-00043', 'Nursing', 'AV59FR43', 'AV59FR43', 'Male', 'BULSU'),
('Althea', 'Demoral', 'Tumulty', 'ST-2023-00044', 'Nursing', 'GC79VN68', 'GC79VN68', 'Female', 'BULSU'),
('MacMichael', 'Laguitao', 'MacNish', 'ST-2023-00045', 'Marketing', 'AI77BQ20', 'AI77BQ20', 'Female', 'BULSU'),
('Oliver', 'Angcot', 'Bassick', 'ST-2023-00046', 'Business Administration', 'WT49LT73', 'WT49LT73', 'Male', 'BULSU'),
('Buttner', 'Mustapha', 'Broggelli', 'ST-2023-00047', 'Education', 'TP19RJ35', 'TP19RJ35', 'Male', 'BULSU'),
('Hammerman', 'Organo', 'O\'Nions', 'ST-2023-00048', 'Psychology', 'UI38FK03', 'UI38FK03', 'Male', 'BULSU'),
('Brager', 'Turaray', 'Darell', 'ST-2023-00049', 'Computer Science', 'FH28AR29', 'FH28AR29', 'Female', 'BULSU'),
('Manach', 'Cos', 'Hatrick', 'ST-2023-00050', 'Business Administration', 'IZ02DJ78', 'IZ02DJ78', 'Female', 'BULSU'),
('Leheude', 'Dungca', 'Vanns', 'ST-2023-00051', 'Nursing', 'OR35NV90', 'OR35NV90', 'Male', 'BULSU'),
('Powter', 'Fernandez', 'Shewring', 'ST-2023-00052', 'Marketing', 'NS12DK35', 'NS12DK35', 'Male', 'BULSU'),
('Cabrer', 'Agustin', 'Furst', 'ST-2023-00053', 'Marketing', 'NE91AH52', 'NE91AH52', 'Female', 'BULSU'),
('Dabbs', 'Lucip', 'Olenov', 'ST-2023-00054', 'Graphic Design', 'TJ32EN49', 'TJ32EN49', 'Female', 'BULSU'),
('Currer', 'Maynagcot', 'Maker', 'ST-2023-00055', 'Nursing', 'YT48CI54', 'YT48CI54', 'Female', 'BULSU'),
('Emanson', 'Saturno', 'Rogister', 'ST-2023-00056', 'Computer Science', 'PT46UW42', 'PT46UW42', 'Male', 'BULSU'),
('Bee', 'Eguizabal', 'Rosone', 'ST-2023-00057', 'Marketing', 'KY45AW96', 'KY45AW96', 'Male', 'BULSU'),
('Barabich', 'Gallano', 'Milroy', 'ST-2023-00058', 'Computer Science', 'EO65ST03', 'EO65ST03', 'Female', 'BULSU'),
('Colbrun', 'Uy', 'Hawkslee', 'ST-2023-00059', 'Culinary Arts', 'DW15EG29', 'DW15EG29', 'Male', 'BULSU'),
('Daskiewicz', 'Calasig', 'Carruth', 'ST-2023-00060', 'Psychology', 'AO15CJ52', 'AO15CJ52', 'Female', 'BULSU'),
('Dooler', 'Canlas', 'Rissom', 'ST-2023-00061', 'Psychology', 'AQ43EQ18', 'AQ43EQ18', 'Male', 'BULSU'),
('Casarili', 'Estuesta', 'Scantlebury', 'ST-2023-00062', 'Graphic Design', 'AO46SR36', 'AO46SR36', 'Female', 'BULSU'),
('Struys', 'Sural', 'Plows', 'ST-2023-00063', 'Business Administration', 'VW97DT18', 'VW97DT18', 'Male', 'BULSU'),
('Heinschke', 'Bancifra', 'Burridge', 'ST-2023-00064', 'Business Administration', 'GL95NP00', 'GL95NP00', 'Male', 'BULSU'),
('Moore', 'Sta. Maria', 'Hackney', 'ST-2023-00065', 'Nursing', 'KS71AR58', 'KS71AR58', 'Male', 'BULSU'),
('Siflet', 'Cagasan', 'Yanshin', 'ST-2023-00066', 'Marketing', 'RF70SZ39', 'RF70SZ39', 'Female', 'BULSU'),
('Lambshine', 'De Paz', 'Myall', 'ST-2023-00067', 'Fashion Design', 'LV86DW54', 'LV86DW54', 'Female', 'BULSU'),
('Kristopher', 'De Leon', 'Panson', 'ST-2023-00068', 'Business Administration', 'TG04UJ96', 'TG04UJ96', 'Male', 'BULSU'),
('Hargie', 'Labajo', 'Girdler', 'ST-2023-00069', 'Psychology', 'TU41EC80', 'TU41EC80', 'Female', 'BULSU'),
('Lowfill', 'Sierra', 'Nerval', 'ST-2023-00070', 'Business Administration', 'EB00AT19', 'EB00AT19', 'Male', 'BULSU'),
('Pittford', 'Blacer', 'Bagnold', 'ST-2023-00071', 'Marketing', 'KV09ZV68', 'KV09ZV68', 'Male', 'BULSU'),
('Paulon', 'Lazarito', 'Yeabsley', 'ST-2023-00072', 'Business Administration', 'AO18EC46', 'AO18EC46', 'Female', 'BULSU'),
('Kilfedder', 'Tolosa', 'Scopham', 'ST-2023-00073', 'Computer Science', 'QP27TK71', 'QP27TK71', 'Male', 'BULSU'),
('Couvet', 'Millabas', 'Ackers', 'ST-2023-00074', 'Business Administration', 'KE23RV07', 'KE23RV07', 'Female', 'BULSU'),
('Ridsdale', 'Tolentino', 'Beton', 'ST-2023-00075', 'Graphic Design', 'WH97SP59', 'WH97SP59', 'Female', 'BULSU'),
('Prigmore', 'Domingo', 'Ladley', 'ST-2023-00076', 'Engineering', 'QS69UG99', 'QS69UG99', 'Female', 'BULSU'),
('Govier', 'Nabia', 'Tissington', 'ST-2023-00077', 'Marketing', 'DF63NE96', 'DF63NE96', 'Female', 'BULSU'),
('Duddan', 'Flor', 'Goodreid', 'ST-2023-00078', 'Psychology', 'LQ48IQ62', 'LQ48IQ62', 'Male', 'BULSU'),
('Mace', 'Binondo', 'Gemson', 'ST-2023-00079', 'Fashion Design', 'LD13WS81', 'LD13WS81', 'Male', 'BULSU'),
('Henaughan', 'Samillano', 'Sherwell', 'ST-2023-00080', 'Business Administration', 'YD72KL97', 'YD72KL97', 'Male', 'BULSU'),
('Backler', 'Gozarin', 'Littlefield', 'ST-2023-00081', 'Education', 'NN32BD28', 'NN32BD28', 'Male', 'BULSU'),
('Insole', 'Borja', 'Grissett', 'ST-2023-00082', 'Education', 'WA59TF77', 'WA59TF77', 'Male', 'BULSU'),
('Seckom', 'Caleja', 'Emlyn', 'ST-2023-00083', 'Business Administration', 'NJ96TF46', 'NJ96TF46', 'Male', 'BULSU'),
('Schermick', 'Macalalad', 'Kavanagh', 'ST-2023-00084', 'Computer Science', 'KC64EL82', 'KC64EL82', 'Male', 'BULSU'),
('Burrow', 'Dacanay', 'Stendell', 'ST-2023-00085', 'Marketing', 'UX26IC01', 'UX26IC01', 'Male', 'BULSU'),
('Creber', 'Cerado', 'Dabnor', 'ST-2023-00086', 'Computer Science', 'YA08CI50', 'YA08CI50', 'Male', 'BULSU'),
('Klaves', 'Avelino', 'Friend', 'ST-2023-00087', 'Education', 'KZ33ZD78', 'KZ33ZD78', 'Female', 'BULSU'),
('Korn', 'Dacanay', 'Sagrott', 'ST-2023-00088', 'Graphic Design', 'XP81XL11', 'XP81XL11', 'Male', 'BULSU'),
('Dianne', 'James', 'Smith', 'ST-2023-00089', 'Fashion Design', 'XG81EQ31', 'XG81EQ31', 'Female', 'BULSU'),
('Halkyard', 'Sanchez', 'Stutt', 'ST-2023-00090', 'Education', 'JS37ZD32', 'JS37ZD32', 'Male', 'BULSU'),
('Tarbin', 'Lopres', 'Allsworth', 'ST-2023-00091', 'Computer Science', 'EB46OZ91', 'EB46OZ91', 'Male', 'BULSU'),
('Faughnan', 'Timtiman', 'Zuan', 'ST-2023-00092', 'Marketing', 'QN23MX85', 'QN23MX85', 'Male', 'BULSU'),
('Klare', 'Alcantara', 'Westcott', 'ST-2023-00093', 'Education', 'RC25OP04', 'RC25OP04', 'Female', 'BULSU'),
('Rainey', 'Aldea', 'Tabram', 'ST-2023-00094', 'Psychology', 'SO68CS81', 'SO68CS81', 'Female', 'BULSU'),
('Shilladay', 'Cortez', 'Drepp', 'ST-2023-00095', 'Psychology', 'KZ16PL42', 'KZ16PL42', 'Male', 'BULSU'),
('Bretherick', 'Diaz', 'Williams', 'ST-2023-00096', 'Business Administration', 'RX28KD86', 'RX28KD86', 'Male', 'BULSU'),
('Sherlyn', 'Dioquino', 'Witt', 'ST-2023-00097', 'Culinary Arts', 'TE82PD65', 'TE82PD65', 'Female', 'BULSU'),
('Angela', 'Smith', 'Depp', 'ST-2023-00098', 'Engineering', 'BF71BH29', 'BF71BH29', 'Female', 'BULSU'),
('Tilby', 'Te', 'Johnes', 'ST-2023-00099', 'Business Administration', 'LE37BQ04', 'LE37BQ04', 'Female', 'BULSU'),
('Zyne', 'Ducos', 'Gosse', 'ST-2023-00100', 'Engineering', 'UV70VT24', 'UV70VT24', 'Male', 'BULSU');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(1) NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `start`, `end`) VALUES
(1, '08:00:00', '16:00:00'),
(2, '13:00:00', '21:00:00'),
(3, '18:00:00', '02:00:00'),
(4, '03:15:02', '02:05:05'),
(5, '07:00:00', '18:25:00'),
(6, '01:00:00', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `id` int(11) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `Floor` varchar(11) NOT NULL,
  `Room` varchar(30) NOT NULL,
  `Slot` int(11) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `uniqueid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`id`, `date`, `Floor`, `Room`, `Slot`, `status`, `uniqueid`) VALUES
(1, '2023-11-7', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(2, '2023-11-7', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(3, '2023-11-7', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(4, '2023-11-7', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(5, '2023-11-7', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(6, '2023-11-7', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(7, '2023-11-7', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(8, '2023-11-7', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(9, '2023-11-7', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(10, '2023-11-7', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(11, '2023-11-24', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(12, '2023-11-24', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(13, '2023-11-24', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(14, '2023-11-24', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(15, '2023-11-24', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(16, '2023-11-24', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(17, '2023-11-24', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(18, '2023-11-24', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(19, '2023-11-24', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(20, '2023-11-24', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(21, '2023-11-08', 'GF', 'CYBER NOOK AREA', 1, '[1,0,1,0,1,1,0,1,0,0,0]', ''),
(22, '2023-11-08', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(23, '2023-11-08', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(24, '2023-11-08', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(25, '2023-11-08', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(26, '2023-11-08', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(27, '2023-11-08', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(28, '2023-11-08', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(29, '2023-11-08', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(30, '2023-11-08', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(31, '2023-11-25', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(32, '2023-11-25', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(33, '2023-11-25', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(34, '2023-11-25', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(35, '2023-11-25', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(36, '2023-11-25', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(37, '2023-11-25', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(38, '2023-11-25', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(39, '2023-11-25', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(40, '2023-11-25', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(41, '2023-11-08', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(42, '2023-11-08', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(43, '2023-11-08', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(44, '2023-11-08', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(45, '2023-11-08', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(46, '2023-11-08', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(47, '2023-11-08', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(48, '2023-11-08', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(49, '2023-11-08', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(50, '2023-11-08', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(51, '2023-11-08', '7F', 'THEATER LOBBY', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(52, '2023-11-08', '7F', 'THEATER LOBBY', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(53, '2023-11-08', '7F', 'THEATER LOBBY', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(54, '2023-11-08', '7F', 'THEATER LOBBY', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(55, '2023-11-08', '7F', 'THEATER LOBBY', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(56, '2023-11-08', '7F', 'THEATER LOBBY', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(57, '2023-11-08', '7F', 'THEATER LOBBY', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(58, '2023-11-08', '7F', 'THEATER LOBBY', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(59, '2023-11-08', '7F', 'THEATER LOBBY', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(60, '2023-11-08', '7F', 'THEATER LOBBY', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(61, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(62, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(63, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(64, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(65, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(66, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(67, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(68, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(69, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(70, '2023-11-08', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(71, '2023-11-08', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(72, '2023-11-08', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(73, '2023-11-08', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(74, '2023-11-08', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(75, '2023-11-08', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(76, '2023-11-08', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(77, '2023-11-08', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(78, '2023-11-08', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(79, '2023-11-08', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(80, '2023-11-08', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(81, '2023-11-08', 'GF', 'READING AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(82, '2023-11-08', 'GF', 'READING AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(83, '2023-11-08', 'GF', 'READING AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(84, '2023-11-08', 'GF', 'READING AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(85, '2023-11-08', 'GF', 'READING AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(86, '2023-11-08', 'GF', 'READING AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(87, '2023-11-08', 'GF', 'READING AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(88, '2023-11-08', 'GF', 'READING AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(89, '2023-11-08', 'GF', 'READING AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(90, '2023-11-08', 'GF', 'READING AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(91, '2023-11-08', 'GF', 'READING AREA', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(92, '2023-11-08', 'GF', 'READING AREA', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(93, '2023-11-08', 'GF', 'READING AREA', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(94, '2023-11-08', 'GF', 'READING AREA', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(95, '2023-11-08', 'GF', 'READING AREA', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(96, '2023-11-08', 'GF', 'READING AREA', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(97, '2023-11-08', 'GF', 'READING AREA', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(98, '2023-11-08', 'GF', 'READING AREA', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(99, '2023-11-08', 'GF', 'READING AREA', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(100, '2023-11-08', 'GF', 'READING AREA', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(101, '2023-11-08', 'GF', 'READING AREA', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(102, '2023-11-08', 'GF', 'READING AREA', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(103, '2023-11-08', 'GF', 'READING AREA', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(104, '2023-11-08', 'GF', 'READING AREA', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(105, '2023-11-08', 'GF', 'READING AREA', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(106, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(107, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(108, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(109, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(110, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(111, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(112, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(113, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(114, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(115, '2023-11-08', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(116, '2023-11-08', '3F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(117, '2023-11-08', '3F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(118, '2023-11-08', '3F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(119, '2023-11-08', '3F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(120, '2023-11-08', '3F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(121, '2023-11-08', '3F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(122, '2023-11-08', '3F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(123, '2023-11-08', '3F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(124, '2023-11-08', '3F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(125, '2023-11-08', '3F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(126, '2023-11-09', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(127, '2023-11-09', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(128, '2023-11-09', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(129, '2023-11-09', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(130, '2023-11-09', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(131, '2023-11-09', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(132, '2023-11-09', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(133, '2023-11-09', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(134, '2023-11-09', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(135, '2023-11-09', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(136, '2023-11-10', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(137, '2023-11-10', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(138, '2023-11-10', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(139, '2023-11-10', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(140, '2023-11-10', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(141, '2023-11-10', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(142, '2023-11-10', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(143, '2023-11-10', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(144, '2023-11-10', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(145, '2023-11-10', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(146, '2023-11-07', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(147, '2023-11-07', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(148, '2023-11-07', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(149, '2023-11-07', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(150, '2023-11-07', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(151, '2023-11-07', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(152, '2023-11-07', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(153, '2023-11-07', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(154, '2023-11-07', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(155, '2023-11-07', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(156, '2023-11-08', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(157, '2023-11-08', '3F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(158, '2023-11-08', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(159, '2023-11-08', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(160, '2023-11-08', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(161, '2023-11-08', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(162, '2023-11-08', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(163, '2023-11-08', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(164, '2023-11-08', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(165, '2023-11-08', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(166, '2023-11-07', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(167, '2023-11-07', '3F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(168, '2023-11-07', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(169, '2023-11-07', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(170, '2023-11-07', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(171, '2023-11-07', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(172, '2023-11-07', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(173, '2023-11-07', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(174, '2023-11-07', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(175, '2023-11-07', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(176, '2023-11-15', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(177, '2023-11-15', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(178, '2023-11-15', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(179, '2023-11-15', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(180, '2023-11-15', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(181, '2023-11-15', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(182, '2023-11-15', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(183, '2023-11-15', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(184, '2023-11-15', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(185, '2023-11-15', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(186, '2023-10-31', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(187, '2023-10-31', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(188, '2023-10-31', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(189, '2023-10-31', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(190, '2023-10-31', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(191, '2023-10-31', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(192, '2023-10-31', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(193, '2023-10-31', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(194, '2023-10-31', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(195, '2023-10-31', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(196, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(197, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(198, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(199, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(200, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(201, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(202, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(203, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(204, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(205, '2023-11-10', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(206, '2023-11-10', '7F', 'THEATER LOBBY', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(207, '2023-11-10', '7F', 'THEATER LOBBY', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(208, '2023-11-10', '7F', 'THEATER LOBBY', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(209, '2023-11-10', '7F', 'THEATER LOBBY', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(210, '2023-11-10', '7F', 'THEATER LOBBY', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(211, '2023-11-10', '7F', 'THEATER LOBBY', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(212, '2023-11-10', '7F', 'THEATER LOBBY', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(213, '2023-11-10', '7F', 'THEATER LOBBY', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(214, '2023-11-10', '7F', 'THEATER LOBBY', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(215, '2023-11-10', '7F', 'THEATER LOBBY', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(216, '2023-11-03', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(217, '2023-11-03', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(218, '2023-11-03', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(219, '2023-11-03', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(220, '2023-11-03', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(221, '2023-11-03', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(222, '2023-11-03', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(223, '2023-11-03', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(224, '2023-11-03', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(225, '2023-11-03', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(226, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(227, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(228, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(229, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(230, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(231, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(232, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(233, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(234, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(235, '2023-11-10', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(236, '2023-11-10', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(237, '2023-11-10', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(238, '2023-11-10', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(239, '2023-11-10', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(240, '2023-11-10', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(241, '2023-11-10', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(242, '2023-11-10', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(243, '2023-11-10', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(244, '2023-11-10', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(245, '2023-11-10', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(246, '2023-11-10', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(247, '2023-11-10', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(248, '2023-11-10', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(249, '2023-11-10', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(250, '2023-11-10', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(251, '2023-11-10', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(252, '2023-11-10', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(253, '2023-11-10', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(254, '2023-11-10', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(255, '2023-11-10', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(256, '2023-11-23', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(257, '2023-11-23', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(258, '2023-11-23', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(259, '2023-11-23', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(260, '2023-11-23', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(261, '2023-11-23', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(262, '2023-11-23', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(263, '2023-11-23', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(264, '2023-11-23', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(265, '2023-11-23', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(266, '2023-11-27', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,1,0,0,1,1,1,0,0]', ''),
(267, '2023-11-27', 'GF', 'CYBER NOOK AREA', 2, '[0,1,0,0,0,1,1,0,0,0,0]', ''),
(268, '2023-11-27', 'GF', 'CYBER NOOK AREA', 3, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(269, '2023-11-27', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(270, '2023-11-27', 'GF', 'CYBER NOOK AREA', 5, '[1,1,0,0,1,0,0,1,1,0,0]', ''),
(271, '2023-11-27', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(272, '2023-11-27', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(273, '2023-11-27', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(274, '2023-11-27', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(275, '2023-11-27', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(276, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(277, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(278, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(279, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(280, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(281, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(282, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(283, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(284, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(285, '2023-11-27', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(286, '2023-11-27', '4F', 'LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(287, '2023-11-27', '4F', 'LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,1,0,0]', ''),
(288, '2023-11-27', '4F', 'LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(289, '2023-11-27', '4F', 'LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(290, '2023-11-27', '4F', 'LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(291, '2023-11-27', '4F', 'LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(292, '2023-11-27', '4F', 'LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(293, '2023-11-27', '4F', 'LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(294, '2023-11-27', '4F', 'LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(295, '2023-11-27', '4F', 'LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(296, '2023-11-27', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(297, '2023-11-27', '2F', 'READING AREA 1', 2, '[1,0,0,0,0,1,1,0,0,0,0]', ''),
(298, '2023-11-27', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(299, '2023-11-27', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(300, '2023-11-27', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(301, '2023-11-27', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(302, '2023-11-27', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(303, '2023-11-27', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(304, '2023-11-27', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(305, '2023-11-27', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(306, '', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(307, '', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(308, '', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(309, '', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(310, '', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(311, '', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(312, '', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(313, '', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(314, '', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(315, '', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(316, '', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(317, '', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(318, '', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(319, '', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(320, '', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(321, '', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(322, '', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(323, '', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(324, '', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(325, '', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(326, '2023-11-16', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(327, '2023-11-16', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(328, '2023-11-16', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(329, '2023-11-16', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(330, '2023-11-16', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(331, '2023-11-16', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(332, '2023-11-16', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(333, '2023-11-16', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(334, '2023-11-16', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(335, '2023-11-16', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(336, '2023-11-27', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(337, '2023-11-27', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(338, '2023-11-27', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(339, '2023-11-27', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(340, '2023-11-27', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(341, '2023-11-27', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(342, '2023-11-27', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(343, '2023-11-27', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(344, '2023-11-27', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(345, '2023-11-27', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(346, '2023-11-27', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(347, '2023-11-27', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(348, '2023-11-27', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(349, '2023-11-27', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(350, '2023-11-27', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(351, '2023-11-27', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(352, '2023-11-27', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(353, '2023-11-27', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(354, '2023-11-27', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(355, '2023-11-27', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(356, '2023-11-28', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,0,0,1,1,0,0]', ''),
(357, '2023-11-28', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,1,1,0,0,0,0]', ''),
(358, '2023-11-28', 'GF', 'CYBER NOOK AREA', 3, '[1,0,0,1,0,0,1,1,1,0,0]', ''),
(359, '2023-11-28', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(360, '2023-11-28', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(361, '2023-11-28', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(362, '2023-11-28', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(363, '2023-11-28', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(364, '2023-11-28', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(365, '2023-11-28', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(366, '2023-11-29', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(367, '2023-11-29', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(368, '2023-11-29', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(369, '2023-11-29', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(370, '2023-11-29', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(371, '2023-11-29', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(372, '2023-11-29', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(373, '2023-11-29', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(374, '2023-11-29', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(375, '2023-11-29', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(376, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(377, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(378, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(379, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(380, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(381, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(382, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(383, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(384, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(385, '2023-11-28', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(386, '2023-11-30', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(387, '2023-11-30', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(388, '2023-11-30', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(389, '2023-11-30', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(390, '2023-11-30', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(391, '2023-11-30', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(392, '2023-11-30', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(393, '2023-11-30', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(394, '2023-11-30', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(395, '2023-11-30', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(396, '2023-07-11', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(397, '2023-07-11', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(398, '2023-07-11', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(399, '2023-07-11', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(400, '2023-07-11', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(401, '2023-07-11', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(402, '2023-07-11', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(403, '2023-07-11', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(404, '2023-07-11', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(405, '2023-07-11', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(406, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(407, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(408, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(409, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(410, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(411, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(412, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(413, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(414, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(415, '2023-07-11', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(416, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(417, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(418, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(419, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(420, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(421, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(422, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(423, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(424, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(425, '2023-11-29', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(426, '2023-12-01', '2F', 'READING AREA 1', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(427, '2023-12-01', '2F', 'READING AREA 1', 2, '[0,0,0,0,1,1,1,0,0,0,0]', ''),
(428, '2023-12-01', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(429, '2023-12-01', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(430, '2023-12-01', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(431, '2023-12-01', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(432, '2023-12-01', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(433, '2023-12-01', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(434, '2023-12-01', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(435, '2023-12-01', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(436, '2023-12-01', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,1,0,0,0,0,0]', ''),
(437, '2023-12-01', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(438, '2023-12-01', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(439, '2023-12-01', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(440, '2023-12-01', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(441, '2023-12-01', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(442, '2023-12-01', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(443, '2023-12-01', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(444, '2023-12-01', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(445, '2023-12-01', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(446, '2023-12-05', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,1,0,0,0,0,0,0,0]', ''),
(447, '2023-12-05', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(448, '2023-12-05', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(449, '2023-12-05', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(450, '2023-12-05', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(451, '2023-12-05', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(452, '2023-12-05', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(453, '2023-12-05', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(454, '2023-12-05', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(455, '2023-12-05', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(456, '2023-12-05', '4F', 'BULACANIANA SECTION', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(457, '2023-12-05', '4F', 'BULACANIANA SECTION', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(458, '2023-12-05', '4F', 'BULACANIANA SECTION', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(459, '2023-12-05', '4F', 'BULACANIANA SECTION', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(460, '2023-12-05', '4F', 'BULACANIANA SECTION', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(461, '2023-12-05', '4F', 'BULACANIANA SECTION', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(462, '2023-12-05', '4F', 'BULACANIANA SECTION', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(463, '2023-12-05', '4F', 'BULACANIANA SECTION', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(464, '2023-12-05', '4F', 'BULACANIANA SECTION', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(465, '2023-12-05', '4F', 'BULACANIANA SECTION', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(466, '2023-12-05', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(467, '2023-12-05', '3F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(468, '2023-12-05', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(469, '2023-12-05', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(470, '2023-12-05', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(471, '2023-12-05', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(472, '2023-12-05', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(473, '2023-12-05', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(474, '2023-12-05', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(475, '2023-12-05', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(476, '2023-12-05', '3F', 'READING AREA 3', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(477, '2023-12-05', '3F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(478, '2023-12-05', '3F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(479, '2023-12-05', '3F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(480, '2023-12-05', '3F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(481, '2023-12-05', '3F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(482, '2023-12-05', '3F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(483, '2023-12-05', '3F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(484, '2023-12-05', '3F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(485, '2023-12-05', '3F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(486, '2023-12-05', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(487, '2023-12-05', '2F', 'READING AREA 2', 2, '[0,0,1,0,0,0,1,1,1,0,0]', ''),
(488, '2023-12-05', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(489, '2023-12-05', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(490, '2023-12-05', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(491, '2023-12-05', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(492, '2023-12-05', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(493, '2023-12-05', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(494, '2023-12-05', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(495, '2023-12-05', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(496, '2023-12-05', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(497, '2023-12-05', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(498, '2023-12-05', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(499, '2023-12-05', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(500, '2023-12-05', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(501, '2023-12-05', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(502, '2023-12-05', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(503, '2023-12-05', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(504, '2023-12-05', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(505, '2023-12-05', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(506, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(507, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(508, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(509, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(510, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(511, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(512, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(513, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(514, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(515, '2023-12-05', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(516, '2023-12-05', '2F', 'READING AREA 8', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(517, '2023-12-05', '2F', 'READING AREA 8', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(518, '2023-12-05', '2F', 'READING AREA 8', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(519, '2023-12-05', '2F', 'READING AREA 8', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(520, '2023-12-05', '2F', 'READING AREA 8', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(521, '2023-12-05', '2F', 'READING AREA 8', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(522, '2023-12-05', '2F', 'READING AREA 8', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(523, '2023-12-05', '2F', 'READING AREA 8', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(524, '2023-12-05', '2F', 'READING AREA 8', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(525, '2023-12-05', '2F', 'READING AREA 8', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(526, '2023-12-05', '3F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(527, '2023-12-05', '3F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(528, '2023-12-05', '3F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(529, '2023-12-05', '3F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(530, '2023-12-05', '3F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(531, '2023-12-05', '3F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(532, '2023-12-05', '3F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(533, '2023-12-05', '3F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(534, '2023-12-05', '3F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(535, '2023-12-05', '3F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(536, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(537, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(538, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(539, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(540, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(541, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(542, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(543, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(544, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(545, '2023-12-05', '6F', 'CYBER NOOK AREA 6', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(546, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(547, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(548, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(549, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(550, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(551, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(552, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(553, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(554, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(555, '2023-12-05', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(556, '2023-12-05', '2F', 'READING AREA 3', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(557, '2023-12-05', '2F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(558, '2023-12-05', '2F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(559, '2023-12-05', '2F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(560, '2023-12-05', '2F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(561, '2023-12-05', '2F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(562, '2023-12-05', '2F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(563, '2023-12-05', '2F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(564, '2023-12-05', '2F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(565, '2023-12-05', '2F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(566, '2023-12-06', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(567, '2023-12-06', '2F', 'READING AREA 2', 2, '[0,0,1,1,0,0,0,0,0,0,0]', ''),
(568, '2023-12-06', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(569, '2023-12-06', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(570, '2023-12-06', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(571, '2023-12-06', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(572, '2023-12-06', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(573, '2023-12-06', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(574, '2023-12-06', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(575, '2023-12-06', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(576, '2023-12-06', '3F', 'READING AREA 2', 1, '[0,0,1,1,1,0,0,0,0,0,0]', ''),
(577, '2023-12-06', '3F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(578, '2023-12-06', '3F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(579, '2023-12-06', '3F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(580, '2023-12-06', '3F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(581, '2023-12-06', '3F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(582, '2023-12-06', '3F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(583, '2023-12-06', '3F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(584, '2023-12-06', '3F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(585, '2023-12-06', '3F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(586, '2023-12-06', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(587, '2023-12-06', '3F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(588, '2023-12-06', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(589, '2023-12-06', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(590, '2023-12-06', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(591, '2023-12-06', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(592, '2023-12-06', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(593, '2023-12-06', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(594, '2023-12-06', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(595, '2023-12-06', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(596, '2023-12-06', '4F', 'BULACANIANA SECTION', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(597, '2023-12-06', '4F', 'BULACANIANA SECTION', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(598, '2023-12-06', '4F', 'BULACANIANA SECTION', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(599, '2023-12-06', '4F', 'BULACANIANA SECTION', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(600, '2023-12-06', '4F', 'BULACANIANA SECTION', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(601, '2023-12-06', '4F', 'BULACANIANA SECTION', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(602, '2023-12-06', '4F', 'BULACANIANA SECTION', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(603, '2023-12-06', '4F', 'BULACANIANA SECTION', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(604, '2023-12-06', '4F', 'BULACANIANA SECTION', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(605, '2023-12-06', '4F', 'BULACANIANA SECTION', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(606, '2023-12-06', '2F', 'READING AREA 3', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(607, '2023-12-06', '2F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(608, '2023-12-06', '2F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(609, '2023-12-06', '2F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(610, '2023-12-06', '2F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(611, '2023-12-06', '2F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(612, '2023-12-06', '2F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(613, '2023-12-06', '2F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(614, '2023-12-06', '2F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(615, '2023-12-06', '2F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(616, '2023-12-06', '2F', 'READING AREA 1', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(617, '2023-12-06', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(618, '2023-12-06', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(619, '2023-12-06', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(620, '2023-12-06', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(621, '2023-12-06', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(622, '2023-12-06', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(623, '2023-12-06', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(624, '2023-12-06', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(625, '2023-12-06', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(626, '2023-12-07', '2F', 'READING AREA 2', 1, '[0,0,1,1,0,0,0,0,0,0,0]', ''),
(627, '2023-12-07', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(628, '2023-12-07', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(629, '2023-12-07', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(630, '2023-12-07', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(631, '2023-12-07', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(632, '2023-12-07', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(633, '2023-12-07', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(634, '2023-12-07', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(635, '2023-12-07', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(636, '2023-12-07', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,1,1,1,0,0,0]', ''),
(637, '2023-12-07', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,1,0,0,0,0,0,0,0]', ''),
(638, '2023-12-07', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(639, '2023-12-07', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', '');
INSERT INTO `slot` (`id`, `date`, `Floor`, `Room`, `Slot`, `status`, `uniqueid`) VALUES
(640, '2023-12-07', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(641, '2023-12-07', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(642, '2023-12-07', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(643, '2023-12-07', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(644, '2023-12-07', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(645, '2023-12-07', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(646, '2023-12-13', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(647, '2023-12-13', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(648, '2023-12-13', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(649, '2023-12-13', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(650, '2023-12-13', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(651, '2023-12-13', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(652, '2023-12-13', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(653, '2023-12-13', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(654, '2023-12-13', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(655, '2023-12-13', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(656, '2023-12-13', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(657, '2023-12-13', '3F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(658, '2023-12-13', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(659, '2023-12-13', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(660, '2023-12-13', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(661, '2023-12-13', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(662, '2023-12-13', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(663, '2023-12-13', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(664, '2023-12-13', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(665, '2023-12-13', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(666, '2023-12-13', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(667, '2023-12-13', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(668, '2023-12-13', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(669, '2023-12-13', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(670, '2023-12-13', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(671, '2023-12-13', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(672, '2023-12-13', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(673, '2023-12-13', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(674, '2023-12-13', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(675, '2023-12-13', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(676, '2023-12-13', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(677, '2023-12-13', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(678, '2023-12-13', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(679, '2023-12-13', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(680, '2023-12-13', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(681, '2023-12-13', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(682, '2023-12-13', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(683, '2023-12-13', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(684, '2023-12-13', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(685, '2023-12-13', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(686, '2023-12-13', '2F', 'READING AREA 3', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(687, '2023-12-13', '2F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(688, '2023-12-13', '2F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(689, '2023-12-13', '2F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(690, '2023-12-13', '2F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(691, '2023-12-13', '2F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(692, '2023-12-13', '2F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(693, '2023-12-13', '2F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(694, '2023-12-13', '2F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(695, '2023-12-13', '2F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(696, '2023-12-13', '3F', 'READING AREA 2', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(697, '2023-12-13', '3F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(698, '2023-12-13', '3F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(699, '2023-12-13', '3F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(700, '2023-12-13', '3F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(701, '2023-12-13', '3F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(702, '2023-12-13', '3F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(703, '2023-12-13', '3F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(704, '2023-12-13', '3F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(705, '2023-12-13', '3F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(706, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(707, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(708, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(709, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(710, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(711, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(712, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(713, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(714, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(715, '2023-12-13', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(716, '2023-12-13', '4F', 'BULACANIANA SECTION', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(717, '2023-12-13', '4F', 'BULACANIANA SECTION', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(718, '2023-12-13', '4F', 'BULACANIANA SECTION', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(719, '2023-12-13', '4F', 'BULACANIANA SECTION', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(720, '2023-12-13', '4F', 'BULACANIANA SECTION', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(721, '2023-12-13', '4F', 'BULACANIANA SECTION', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(722, '2023-12-13', '4F', 'BULACANIANA SECTION', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(723, '2023-12-13', '4F', 'BULACANIANA SECTION', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(724, '2023-12-13', '4F', 'BULACANIANA SECTION', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(725, '2023-12-13', '4F', 'BULACANIANA SECTION', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(726, '2023-12-14', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(727, '2023-12-14', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(728, '2023-12-14', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(729, '2023-12-14', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(730, '2023-12-14', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(731, '2023-12-14', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(732, '2023-12-14', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(733, '2023-12-14', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(734, '2023-12-14', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(735, '2023-12-14', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(736, '2023-12-14', '3F', 'READING AREA 1', 1, '[1,0,1,1,0,1,1,0,1,0,0]', ''),
(737, '2023-12-14', '3F', 'READING AREA 1', 2, '[1,1,1,0,1,1,1,0,1,0,0]', ''),
(738, '2023-12-14', '3F', 'READING AREA 1', 3, '[1,1,1,0,1,0,1,1,1,0,0]', ''),
(739, '2023-12-14', '3F', 'READING AREA 1', 4, '[1,1,1,0,1,1,1,0,1,0,0]', ''),
(740, '2023-12-14', '3F', 'READING AREA 1', 5, '[1,0,0,1,1,1,1,1,1,0,0]', ''),
(741, '2023-12-14', '3F', 'READING AREA 1', 6, '[1,1,1,0,1,1,1,0,1,0,0]', ''),
(742, '2023-12-14', '3F', 'READING AREA 1', 7, '[0,0,0,1,1,0,1,1,0,0,0]', ''),
(743, '2023-12-14', '3F', 'READING AREA 1', 8, '[1,1,1,1,0,1,1,0,0,0,0]', ''),
(744, '2023-12-14', '3F', 'READING AREA 1', 9, '[1,1,0,1,1,0,1,1,1,0,0]', ''),
(745, '2023-12-14', '3F', 'READING AREA 1', 10, '[1,1,1,0,1,1,1,0,0,0,0]', ''),
(746, '2023-12-14', '3F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(747, '2023-12-14', '3F', 'READING AREA 2', 2, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(748, '2023-12-14', '3F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(749, '2023-12-14', '3F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(750, '2023-12-14', '3F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(751, '2023-12-14', '3F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(752, '2023-12-14', '3F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(753, '2023-12-14', '3F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(754, '2023-12-14', '3F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(755, '2023-12-14', '3F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(756, '2023-12-14', '2F', 'READING AREA 3', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(757, '2023-12-14', '2F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(758, '2023-12-14', '2F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(759, '2023-12-14', '2F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(760, '2023-12-14', '2F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(761, '2023-12-14', '2F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(762, '2023-12-14', '2F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(763, '2023-12-14', '2F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(764, '2023-12-14', '2F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(765, '2023-12-14', '2F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(766, '2023-12-14', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(767, '2023-12-14', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(768, '2023-12-14', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(769, '2023-12-14', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(770, '2023-12-14', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(771, '2023-12-14', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(772, '2023-12-14', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(773, '2023-12-14', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(774, '2023-12-14', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(775, '2023-12-14', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(776, '2023-12-14', '7F', 'THEATER LOBBY', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(777, '2023-12-14', '7F', 'THEATER LOBBY', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(778, '2023-12-14', '7F', 'THEATER LOBBY', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(779, '2023-12-14', '7F', 'THEATER LOBBY', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(780, '2023-12-14', '7F', 'THEATER LOBBY', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(781, '2023-12-14', '7F', 'THEATER LOBBY', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(782, '2023-12-14', '7F', 'THEATER LOBBY', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(783, '2023-12-14', '7F', 'THEATER LOBBY', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(784, '2023-12-14', '7F', 'THEATER LOBBY', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(785, '2023-12-14', '7F', 'THEATER LOBBY', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(786, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(787, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(788, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(789, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(790, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(791, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(792, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(793, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(794, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(795, '2023-12-14', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(796, '2023-12-14', 'GF', 'CYBER NOOK AREA', 1, '[0,1,1,1,0,0,1,1,1,0,0]', ''),
(797, '2023-12-14', 'GF', 'CYBER NOOK AREA', 2, '[1,1,1,0,0,0,1,1,1,0,0]', ''),
(798, '2023-12-14', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,1,1,1,0,0,1,0,0]', ''),
(799, '2023-12-14', 'GF', 'CYBER NOOK AREA', 4, '[1,0,1,1,0,0,1,1,0,0,0]', ''),
(800, '2023-12-14', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(801, '2023-12-14', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,1,1,1,0,0,0,0]', ''),
(802, '2023-12-14', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(803, '2023-12-14', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(804, '2023-12-14', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(805, '2023-12-14', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(806, '2023-12-14', '3F', 'READING AREA 3', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(807, '2023-12-14', '3F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(808, '2023-12-14', '3F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(809, '2023-12-14', '3F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(810, '2023-12-14', '3F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(811, '2023-12-14', '3F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(812, '2023-12-14', '3F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(813, '2023-12-14', '3F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(814, '2023-12-14', '3F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(815, '2023-12-14', '3F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(816, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(817, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(818, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(819, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(820, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(821, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(822, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(823, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(824, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(825, '2023-12-14', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(826, '2023-12-15', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(827, '2023-12-15', '3F', 'READING AREA 1', 2, '[0,0,1,1,0,0,0,0,0,0,0]', ''),
(828, '2023-12-15', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(829, '2023-12-15', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(830, '2023-12-15', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(831, '2023-12-15', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(832, '2023-12-15', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(833, '2023-12-15', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(834, '2023-12-15', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(835, '2023-12-15', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(836, '2023-12-15', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,1,1,1,1,0,0]', ''),
(837, '2023-12-15', 'GF', 'CYBER NOOK AREA', 2, '[1,1,1,1,0,0,0,0,0,0,0]', ''),
(838, '2023-12-15', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,1,1,1,0,0]', ''),
(839, '2023-12-15', 'GF', 'CYBER NOOK AREA', 4, '[1,1,1,0,1,1,1,0,0,0,0]', ''),
(840, '2023-12-15', 'GF', 'CYBER NOOK AREA', 5, '[1,1,1,0,0,0,1,1,1,0,0]', ''),
(841, '2023-12-15', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,1,1,1,0,0]', ''),
(842, '2023-12-15', 'GF', 'CYBER NOOK AREA', 7, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(843, '2023-12-15', 'GF', 'CYBER NOOK AREA', 8, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(844, '2023-12-15', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(845, '2023-12-15', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(846, '2023-12-15', '4F', 'READING AREA 1', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(847, '2023-12-15', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(848, '2023-12-15', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(849, '2023-12-15', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(850, '2023-12-15', '4F', 'READING AREA 1', 5, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(851, '2023-12-15', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(852, '2023-12-15', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(853, '2023-12-15', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(854, '2023-12-15', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(855, '2023-12-15', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(856, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 1, '[1,0,0,0,0,0,1,1,1,0,0]', ''),
(857, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 2, '[1,1,1,0,0,0,1,1,1,0,0]', ''),
(858, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,1,1,1,0,0]', ''),
(859, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 4, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(860, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(861, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(862, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(863, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(864, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(865, '2023-12-15', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(866, '2023-12-15', '3F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(867, '2023-12-15', '3F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(868, '2023-12-15', '3F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(869, '2023-12-15', '3F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(870, '2023-12-15', '3F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(871, '2023-12-15', '3F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(872, '2023-12-15', '3F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(873, '2023-12-15', '3F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(874, '2023-12-15', '3F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(875, '2023-12-15', '3F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(876, '2023-12-15', '4F', 'LOUNGE AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(877, '2023-12-15', '4F', 'LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(878, '2023-12-15', '4F', 'LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(879, '2023-12-15', '4F', 'LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(880, '2023-12-15', '4F', 'LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(881, '2023-12-15', '4F', 'LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(882, '2023-12-15', '4F', 'LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(883, '2023-12-15', '4F', 'LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(884, '2023-12-15', '4F', 'LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(885, '2023-12-15', '4F', 'LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(886, '2023-12-15', '7F', 'THEATER LOBBY', 1, '[0,0,0,0,0,0,1,1,1,0,0]', ''),
(887, '2023-12-15', '7F', 'THEATER LOBBY', 2, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(888, '2023-12-15', '7F', 'THEATER LOBBY', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(889, '2023-12-15', '7F', 'THEATER LOBBY', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(890, '2023-12-15', '7F', 'THEATER LOBBY', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(891, '2023-12-15', '7F', 'THEATER LOBBY', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(892, '2023-12-15', '7F', 'THEATER LOBBY', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(893, '2023-12-15', '7F', 'THEATER LOBBY', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(894, '2023-12-15', '7F', 'THEATER LOBBY', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(895, '2023-12-15', '7F', 'THEATER LOBBY', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(896, '2023-12-15', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(897, '2023-12-15', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(898, '2023-12-15', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(899, '2023-12-15', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(900, '2023-12-15', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(901, '2023-12-15', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(902, '2023-12-15', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(903, '2023-12-15', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(904, '2023-12-15', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(905, '2023-12-15', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(906, '2023-12-15', '4F', 'BULACANIANA SECTION', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(907, '2023-12-15', '4F', 'BULACANIANA SECTION', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(908, '2023-12-15', '4F', 'BULACANIANA SECTION', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(909, '2023-12-15', '4F', 'BULACANIANA SECTION', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(910, '2023-12-15', '4F', 'BULACANIANA SECTION', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(911, '2023-12-15', '4F', 'BULACANIANA SECTION', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(912, '2023-12-15', '4F', 'BULACANIANA SECTION', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(913, '2023-12-15', '4F', 'BULACANIANA SECTION', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(914, '2023-12-15', '4F', 'BULACANIANA SECTION', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(915, '2023-12-15', '4F', 'BULACANIANA SECTION', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(916, '2023-12-15', 'GF', 'bulsu', 1, '[1,0,0,1,1,0,0,0,0,0,0]', ''),
(917, '2023-12-15', 'GF', 'bulsu', 2, '[1,1,1,0,0,0,1,1,1,0,0]', ''),
(918, '2023-12-15', 'GF', 'bulsu', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(919, '2023-12-15', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(920, '2023-12-15', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(921, '2023-12-15', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(922, '2023-12-15', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(923, '2023-12-15', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(924, '2023-12-15', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(925, '2023-12-15', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(926, '2023-12-15', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(927, '2023-12-15', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(928, '2023-12-15', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(929, '2023-12-15', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(930, '2023-12-15', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(931, '2023-12-15', 'GF', 'bulsu', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(932, '2023-12-15', 'GF', 'bulsu', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(933, '2023-12-15', 'GF', 'bulsu', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(934, '2023-12-15', 'GF', 'bulsu', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(935, '2023-12-15', 'GF', 'bulsu', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(936, '2023-12-15', 'GF', 'bulsu', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(937, '2023-12-15', 'GF', 'bulsu', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(938, '2023-12-15', 'GF', 'bulsu', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(939, '2023-12-15', 'GF', 'bulsu', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(940, '2023-12-15', 'GF', 'bulsu', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(941, '2023-12-15', '2F', 'READING AREA 1', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(942, '2023-12-15', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(943, '2023-12-15', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(944, '2023-12-15', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(945, '2023-12-15', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(946, '2023-12-15', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(947, '2023-12-15', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(948, '2023-12-15', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(949, '2023-12-15', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(950, '2023-12-15', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(951, '2023-12-16', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(952, '2023-12-16', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(953, '2023-12-16', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(954, '2023-12-16', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(955, '2023-12-16', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(956, '2023-12-16', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(957, '2023-12-16', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(958, '2023-12-16', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(959, '2023-12-16', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(960, '2023-12-16', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(961, '2023-12-16', 'GF', 'bulsu', 1, '[0,0,0,0,0,0,1,1,1,0,0]', ''),
(962, '2023-12-16', 'GF', 'bulsu', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(963, '2023-12-16', 'GF', 'bulsu', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(964, '2023-12-16', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(965, '2023-12-16', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(966, '2023-12-16', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(967, '2023-12-16', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(968, '2023-12-16', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(969, '2023-12-16', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(970, '2023-12-16', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(971, '2023-12-16', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(972, '2023-12-16', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(973, '2023-12-16', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(974, '2023-12-16', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(975, '2023-12-16', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(976, '2023-12-16', 'GF', 'bulsu', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(977, '2023-12-16', 'GF', 'bulsu', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(978, '2023-12-16', 'GF', 'bulsu', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(979, '2023-12-16', 'GF', 'bulsu', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(980, '2023-12-16', 'GF', 'bulsu', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(981, '2023-12-16', 'GF', 'bulsu', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(982, '2023-12-16', 'GF', 'bulsu', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(983, '2023-12-16', 'GF', 'bulsu', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(984, '2023-12-16', 'GF', 'bulsu', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(985, '2023-12-16', 'GF', 'bulsu', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(986, '2023-12-17', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(987, '2023-12-17', 'GF', 'CYBER NOOK AREA', 2, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(988, '2023-12-17', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(989, '2023-12-17', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(990, '2023-12-17', 'GF', 'CYBER NOOK AREA', 5, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(991, '2023-12-17', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(992, '2023-12-17', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(993, '2023-12-17', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(994, '2023-12-17', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(995, '2023-12-17', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(996, '2023-12-17', '4F', 'BULACANIANA SECTION', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(997, '2023-12-17', '4F', 'BULACANIANA SECTION', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(998, '2023-12-17', '4F', 'BULACANIANA SECTION', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(999, '2023-12-17', '4F', 'BULACANIANA SECTION', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1000, '2023-12-17', '4F', 'BULACANIANA SECTION', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1001, '2023-12-17', '4F', 'BULACANIANA SECTION', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1002, '2023-12-17', '4F', 'BULACANIANA SECTION', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1003, '2023-12-17', '4F', 'BULACANIANA SECTION', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1004, '2023-12-17', '4F', 'BULACANIANA SECTION', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1005, '2023-12-17', '4F', 'BULACANIANA SECTION', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1006, '2023-12-17', '4F', 'READING AREA 1', 1, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1007, '2023-12-17', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1008, '2023-12-17', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1009, '2023-12-17', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1010, '2023-12-17', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1011, '2023-12-17', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1012, '2023-12-17', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1013, '2023-12-17', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1014, '2023-12-17', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1015, '2023-12-17', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1016, '2023-12-18', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,0,0,0,1,1,1,0,0]', ''),
(1017, '2023-12-18', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,1,1,1,0,0,0,0]', ''),
(1018, '2023-12-18', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,1,1,1,0,0,0,0]', ''),
(1019, '2023-12-18', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1020, '2023-12-18', 'GF', 'CYBER NOOK AREA', 5, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1021, '2023-12-18', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1022, '2023-12-18', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1023, '2023-12-18', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1024, '2023-12-18', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1025, '2023-12-18', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1026, '2023-12-17', '2F', 'READING AREA 1', 1, '[1,1,1,1,1,0,0,0,0,0,0]', ''),
(1027, '2023-12-17', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1028, '2023-12-17', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1029, '2023-12-17', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1030, '2023-12-17', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1031, '2023-12-17', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1032, '2023-12-17', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1033, '2023-12-17', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1034, '2023-12-17', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1035, '2023-12-17', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1036, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1037, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1038, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1039, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1040, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1041, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1042, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1043, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1044, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1045, '2023-12-17', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1046, '2023-12-17', 'GF', 'bulsu', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1047, '2023-12-17', 'GF', 'bulsu', 2, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1048, '2023-12-17', 'GF', 'bulsu', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1049, '2023-12-17', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1050, '2023-12-17', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1051, '2023-12-17', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1052, '2023-12-17', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1053, '2023-12-17', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1054, '2023-12-17', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1055, '2023-12-17', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1056, '2023-12-17', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1057, '2023-12-17', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1058, '2023-12-17', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1059, '2023-12-17', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1060, '2023-12-17', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1061, '2023-12-17', 'GF', 'bulsu', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1062, '2023-12-17', 'GF', 'bulsu', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1063, '2023-12-17', 'GF', 'bulsu', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1064, '2023-12-17', 'GF', 'bulsu', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1065, '2023-12-17', 'GF', 'bulsu', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1066, '2023-12-17', 'GF', 'bulsu', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1067, '2023-12-17', 'GF', 'bulsu', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1068, '2023-12-17', 'GF', 'bulsu', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1069, '2023-12-17', 'GF', 'bulsu', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1070, '2023-12-17', 'GF', 'bulsu', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1071, '2023-12-18', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,1,1,1,0,0]', ''),
(1072, '2023-12-18', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,1,1,1,0,0,0]', ''),
(1073, '2023-12-18', '2F', 'READING AREA 2', 3, '[0,0,1,1,1,0,0,0,0,0,0]', ''),
(1074, '2023-12-18', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1075, '2023-12-18', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1076, '2023-12-18', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1077, '2023-12-18', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1078, '2023-12-18', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1079, '2023-12-18', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1080, '2023-12-18', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1081, '2023-12-18', '3F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1082, '2023-12-18', '3F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1083, '2023-12-18', '3F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1084, '2023-12-18', '3F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1085, '2023-12-18', '3F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1086, '2023-12-18', '3F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1087, '2023-12-18', '3F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1088, '2023-12-18', '3F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1089, '2023-12-18', '3F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1090, '2023-12-18', '3F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1091, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 1, '[0,0,0,1,1,1,0,0,0,0,0]', ''),
(1092, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1093, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1094, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1095, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1096, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1097, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1098, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1099, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1100, '2023-12-18', '6F', 'CYBER NOOK AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1101, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1102, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1103, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1104, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1105, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1106, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1107, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1108, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1109, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1110, '2023-12-18', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1111, '2023-12-18', 'GF', 'bulsu', 1, '[1,1,1,1,0,0,0,0,0,0,0]', ''),
(1112, '2023-12-18', 'GF', 'bulsu', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1113, '2023-12-18', 'GF', 'bulsu', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1114, '2023-12-18', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1115, '2023-12-18', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1116, '2023-12-18', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1117, '2023-12-18', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1118, '2023-12-18', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1119, '2023-12-18', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1120, '2023-12-18', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1121, '2023-12-18', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1122, '2023-12-18', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1123, '2023-12-18', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1124, '2023-12-18', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1125, '2023-12-18', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1126, '2023-12-18', 'GF', 'bulsu', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1127, '2023-12-18', 'GF', 'bulsu', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1128, '2023-12-18', 'GF', 'bulsu', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1129, '2023-12-18', 'GF', 'bulsu', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1130, '2023-12-18', 'GF', 'bulsu', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1131, '2023-12-18', 'GF', 'bulsu', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1132, '2023-12-18', 'GF', 'bulsu', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1133, '2023-12-18', 'GF', 'bulsu', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1134, '2023-12-18', 'GF', 'bulsu', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1135, '2023-12-18', 'GF', 'bulsu', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1136, '2023-12-19', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,1,1,1,1,0,0]', ''),
(1137, '2023-12-19', 'GF', 'CYBER NOOK AREA', 2, '[1,1,1,1,1,0,1,1,1,0,0]', ''),
(1138, '2023-12-19', 'GF', 'CYBER NOOK AREA', 3, '[1,1,1,0,1,1,1,0,0,0,0]', ''),
(1139, '2023-12-19', 'GF', 'CYBER NOOK AREA', 4, '[1,1,0,0,0,0,1,1,1,0,0]', ''),
(1140, '2023-12-19', 'GF', 'CYBER NOOK AREA', 5, '[1,1,1,0,0,0,0,1,0,0,0]', ''),
(1141, '2023-12-19', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1142, '2023-12-19', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1143, '2023-12-19', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1144, '2023-12-19', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1145, '2023-12-19', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1146, '2023-12-19', 'GF', 'bulsu', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1147, '2023-12-19', 'GF', 'bulsu', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1148, '2023-12-19', 'GF', 'bulsu', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1149, '2023-12-19', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1150, '2023-12-19', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1151, '2023-12-19', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1152, '2023-12-19', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1153, '2023-12-19', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1154, '2023-12-19', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1155, '2023-12-19', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1156, '2023-12-19', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1157, '2023-12-19', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1158, '2023-12-19', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1159, '2023-12-19', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1160, '2023-12-19', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1161, '2023-12-19', 'GF', 'bulsu', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1162, '2023-12-19', 'GF', 'bulsu', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1163, '2023-12-19', 'GF', 'bulsu', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1164, '2023-12-19', 'GF', 'bulsu', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1165, '2023-12-19', 'GF', 'bulsu', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1166, '2023-12-19', 'GF', 'bulsu', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1167, '2023-12-19', 'GF', 'bulsu', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1168, '2023-12-19', 'GF', 'bulsu', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1169, '2023-12-19', 'GF', 'bulsu', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1170, '2023-12-19', 'GF', 'bulsu', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1171, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1172, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 2, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1173, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1174, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1175, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1176, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1177, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1178, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1179, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1180, '2023-12-19', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1181, '2023-12-19', '2F', 'READING AREA 2', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1182, '2023-12-19', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1183, '2023-12-19', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1184, '2023-12-19', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1185, '2023-12-19', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1186, '2023-12-19', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1187, '2023-12-19', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1188, '2023-12-19', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1189, '2023-12-19', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1190, '2023-12-19', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1191, '2023-12-19', '2F', 'READING AREA 1', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1192, '2023-12-19', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1193, '2023-12-19', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1194, '2023-12-19', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1195, '2023-12-19', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1196, '2023-12-19', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1197, '2023-12-19', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1198, '2023-12-19', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1199, '2023-12-19', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1200, '2023-12-19', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1201, '2023-12-27', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1202, '2023-12-27', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1203, '2023-12-27', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1204, '2023-12-27', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1205, '2023-12-27', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1206, '2023-12-27', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1207, '2023-12-27', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1208, '2023-12-27', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1209, '2023-12-27', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1210, '2023-12-27', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1211, '2023-12-20', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1212, '2023-12-20', 'GF', 'CYBER NOOK AREA', 2, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1213, '2023-12-20', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1214, '2023-12-20', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1215, '2023-12-20', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1216, '2023-12-20', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1217, '2023-12-20', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1218, '2023-12-20', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1219, '2023-12-20', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1220, '2023-12-20', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1221, '2023-12-21', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,1,1,1,0,0,0]', ''),
(1222, '2023-12-21', 'GF', 'CYBER NOOK AREA', 2, '[1,1,1,1,0,0,1,1,1,0,0]', ''),
(1223, '2023-12-21', 'GF', 'CYBER NOOK AREA', 3, '[1,1,1,0,0,0,1,1,0,0,0]', ''),
(1224, '2023-12-21', 'GF', 'CYBER NOOK AREA', 4, '[1,1,0,0,1,1,0,1,1,0,0]', ''),
(1225, '2023-12-21', 'GF', 'CYBER NOOK AREA', 5, '[1,1,1,1,0,0,0,0,0,0,0]', ''),
(1226, '2023-12-21', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1227, '2023-12-21', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1228, '2023-12-21', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1229, '2023-12-21', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1230, '2023-12-21', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1231, '2023-12-21', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1232, '2023-12-21', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1233, '2023-12-21', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1234, '2023-12-21', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1235, '2023-12-21', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1236, '2023-12-21', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1237, '2023-12-21', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1238, '2023-12-21', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1239, '2023-12-21', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1240, '2023-12-21', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1241, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1242, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1243, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1244, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1245, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1246, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1247, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1248, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1249, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1250, '2023-12-21', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1251, '2023-12-21', '4F', 'LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1252, '2023-12-21', '4F', 'LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1253, '2023-12-21', '4F', 'LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1254, '2023-12-21', '4F', 'LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1255, '2023-12-21', '4F', 'LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1256, '2023-12-21', '4F', 'LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1257, '2023-12-21', '4F', 'LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1258, '2023-12-21', '4F', 'LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1259, '2023-12-21', '4F', 'LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1260, '2023-12-21', '4F', 'LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1261, '2023-12-21', 'GF', 'bulsu', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1262, '2023-12-21', 'GF', 'bulsu', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1263, '2023-12-21', 'GF', 'bulsu', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1264, '2023-12-21', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1265, '2023-12-21', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1266, '2023-12-21', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1267, '2023-12-21', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1268, '2023-12-21', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1269, '2023-12-21', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1270, '2023-12-21', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1271, '2023-12-21', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1272, '2023-12-21', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1273, '2023-12-21', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1274, '2023-12-21', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1275, '2023-12-21', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1276, '2023-12-21', 'GF', 'bulsu', 16, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1277, '2023-12-21', 'GF', 'bulsu', 17, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1278, '2023-12-21', 'GF', 'bulsu', 18, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1279, '2023-12-21', 'GF', 'bulsu', 19, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1280, '2023-12-21', 'GF', 'bulsu', 20, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1281, '2023-12-21', 'GF', 'bulsu', 21, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1282, '2023-12-21', 'GF', 'bulsu', 22, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1283, '2023-12-21', 'GF', 'bulsu', 23, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1284, '2023-12-21', 'GF', 'bulsu', 24, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1285, '2023-12-21', 'GF', 'bulsu', 25, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1286, '2023-12-21', '3F', 'READING AREA 3', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1287, '2023-12-21', '3F', 'READING AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', '');
INSERT INTO `slot` (`id`, `date`, `Floor`, `Room`, `Slot`, `status`, `uniqueid`) VALUES
(1288, '2023-12-21', '3F', 'READING AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1289, '2023-12-21', '3F', 'READING AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1290, '2023-12-21', '3F', 'READING AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1291, '2023-12-21', '3F', 'READING AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1292, '2023-12-21', '3F', 'READING AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1293, '2023-12-21', '3F', 'READING AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1294, '2023-12-21', '3F', 'READING AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1295, '2023-12-21', '3F', 'READING AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1296, '2023-12-25', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1297, '2023-12-25', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1298, '2023-12-25', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1299, '2023-12-25', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1300, '2023-12-25', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1301, '2023-12-25', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1302, '2023-12-25', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1303, '2023-12-25', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1304, '2023-12-25', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1305, '2023-12-25', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1306, '2023-12-26', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,1,0,0,0,0,0]', ''),
(1307, '2023-12-26', 'GF', 'CYBER NOOK AREA', 2, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1308, '2023-12-26', 'GF', 'CYBER NOOK AREA', 3, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1309, '2023-12-26', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1310, '2023-12-26', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1311, '2023-12-26', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1312, '2023-12-26', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1313, '2023-12-26', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1314, '2023-12-26', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1315, '2023-12-26', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1316, '2023-12-22', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1317, '2023-12-22', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1318, '2023-12-22', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1319, '2023-12-22', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1320, '2023-12-22', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1321, '2023-12-22', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1322, '2023-12-22', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1323, '2023-12-22', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1324, '2023-12-22', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1325, '2023-12-22', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1326, '2023-12-22', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1327, '2023-12-22', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1328, '2023-12-22', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1329, '2023-12-22', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1330, '2023-12-22', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1331, '2023-12-22', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1332, '2023-12-22', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1333, '2023-12-22', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1334, '2023-12-22', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1335, '2023-12-22', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1336, '2024-01-03', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,1,1,1,1,1,0,0]', ''),
(1337, '2024-01-03', 'GF', 'CYBER NOOK AREA', 2, '[1,1,1,1,1,1,1,1,1,0,0]', ''),
(1338, '2024-01-03', 'GF', 'CYBER NOOK AREA', 3, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1339, '2024-01-03', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1340, '2024-01-03', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1341, '2024-01-03', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1342, '2024-01-03', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1343, '2024-01-03', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1344, '2024-01-03', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1345, '2024-01-03', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1346, '2024-01-04', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1347, '2024-01-04', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1348, '2024-01-04', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1349, '2024-01-04', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1350, '2024-01-04', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1351, '2024-01-04', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1352, '2024-01-04', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1353, '2024-01-04', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1354, '2024-01-04', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1355, '2024-01-04', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1356, '2024-01-09', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1357, '2024-01-09', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1358, '2024-01-09', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1359, '2024-01-09', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1360, '2024-01-09', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1361, '2024-01-09', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1362, '2024-01-09', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1363, '2024-01-09', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1364, '2024-01-09', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1365, '2024-01-09', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1366, '2024-01-08', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1367, '2024-01-08', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1368, '2024-01-08', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1369, '2024-01-08', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1370, '2024-01-08', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1371, '2024-01-08', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1372, '2024-01-08', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1373, '2024-01-08', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1374, '2024-01-08', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1375, '2024-01-08', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1376, '2024-01-09', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1377, '2024-01-09', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1378, '2024-01-09', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1379, '2024-01-09', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1380, '2024-01-09', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1381, '2024-01-09', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1382, '2024-01-09', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1383, '2024-01-09', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1384, '2024-01-09', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1385, '2024-01-09', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1386, '2024-01-08', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1387, '2024-01-08', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1388, '2024-01-08', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1389, '2024-01-08', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1390, '2024-01-08', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1391, '2024-01-08', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1392, '2024-01-08', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1393, '2024-01-08', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1394, '2024-01-08', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1395, '2024-01-08', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1396, '2024-01-05', 'GF', 'CYBER NOOK AREA', 1, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1397, '2024-01-05', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1398, '2024-01-05', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1399, '2024-01-05', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1400, '2024-01-05', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1401, '2024-01-05', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1402, '2024-01-05', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1403, '2024-01-05', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1404, '2024-01-05', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1405, '2024-01-05', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1406, '2024-01-10', 'GF', 'CYBER NOOK AREA', 1, '[1,0,0,1,0,0,0,0,0,0,0]', ''),
(1407, '2024-01-10', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,1,0,0,0,1,0,0,0]', ''),
(1408, '2024-01-10', 'GF', 'CYBER NOOK AREA', 3, '[0,1,0,0,0,0,0,0,0,0,0]', ''),
(1409, '2024-01-10', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,1,0,0,0,0,0,0,0]', ''),
(1410, '2024-01-10', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,1,0,0,0,0,0]', ''),
(1411, '2024-01-10', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1412, '2024-01-10', 'GF', 'CYBER NOOK AREA', 7, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1413, '2024-01-10', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1414, '2024-01-10', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1415, '2024-01-10', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,1,0,0,0]', ''),
(1416, '2024-01-05', '7F', 'THEATER LOBBY', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1417, '2024-01-05', '7F', 'THEATER LOBBY', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1418, '2024-01-05', '7F', 'THEATER LOBBY', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1419, '2024-01-05', '7F', 'THEATER LOBBY', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1420, '2024-01-05', '7F', 'THEATER LOBBY', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1421, '2024-01-05', '7F', 'THEATER LOBBY', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1422, '2024-01-05', '7F', 'THEATER LOBBY', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1423, '2024-01-05', '7F', 'THEATER LOBBY', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1424, '2024-01-05', '7F', 'THEATER LOBBY', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1425, '2024-01-05', '7F', 'THEATER LOBBY', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1426, '2024-01-05', '2F', 'READING AREA 1', 1, '[1,1,1,0,0,0,0,0,0,0,0]', ''),
(1427, '2024-01-05', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1428, '2024-01-05', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1429, '2024-01-05', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1430, '2024-01-05', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1431, '2024-01-05', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1432, '2024-01-05', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1433, '2024-01-05', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1434, '2024-01-05', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1435, '2024-01-05', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1436, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1437, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1438, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1439, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1440, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1441, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1442, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1443, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1444, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1445, '2024-01-05', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1446, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1447, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1448, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 3, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1449, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1450, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1451, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1452, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1453, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1454, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1455, '2024-01-05', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1456, '2024-01-05', 'GF', 'bulsu', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1457, '2024-01-05', 'GF', 'bulsu', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1458, '2024-01-05', 'GF', 'bulsu', 3, '[0,0,1,1,1,0,0,0,0,0,0]', ''),
(1459, '2024-01-05', 'GF', 'bulsu', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1460, '2024-01-05', 'GF', 'bulsu', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1461, '2024-01-05', 'GF', 'bulsu', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1462, '2024-01-05', 'GF', 'bulsu', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1463, '2024-01-05', 'GF', 'bulsu', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1464, '2024-01-05', 'GF', 'bulsu', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1465, '2024-01-05', 'GF', 'bulsu', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1466, '2024-01-05', 'GF', 'bulsu', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1467, '2024-01-05', 'GF', 'bulsu', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1468, '2024-01-05', 'GF', 'bulsu', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1469, '2024-01-05', 'GF', 'bulsu', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1470, '2024-01-05', 'GF', 'bulsu', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1471, '2024-01-05', '4F', 'BULACANIANA SECTION', 1, '[0,0,1,1,0,0,0,0,0,0,0]', ''),
(1472, '2024-01-05', '4F', 'BULACANIANA SECTION', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1473, '2024-01-05', '4F', 'BULACANIANA SECTION', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1474, '2024-01-05', '4F', 'BULACANIANA SECTION', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1475, '2024-01-05', '4F', 'BULACANIANA SECTION', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1476, '2024-01-05', '4F', 'BULACANIANA SECTION', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1477, '2024-01-05', '4F', 'BULACANIANA SECTION', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1478, '2024-01-05', '4F', 'BULACANIANA SECTION', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1479, '2024-01-05', '4F', 'BULACANIANA SECTION', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1480, '2024-01-05', '4F', 'BULACANIANA SECTION', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1481, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 1, '[0,1,1,1,0,0,0,0,0,0,0]', ''),
(1482, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1483, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1484, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1485, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1486, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1487, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1488, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1489, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1490, '2024-01-05', '6F', 'CYBER NOOK AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1491, '2024-01-05', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1492, '2024-01-05', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1493, '2024-01-05', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1494, '2024-01-05', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1495, '2024-01-05', '4F', 'READING AREA 1', 5, '[0,0,0,0,1,1,0,0,0,0,0]', ''),
(1496, '2024-01-05', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1497, '2024-01-05', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1498, '2024-01-05', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1499, '2024-01-05', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1500, '2024-01-05', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1501, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 1, '[0,0,0,1,0,0,0,0,0,0,0]', ''),
(1502, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1503, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1504, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1505, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1506, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1507, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1508, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1509, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1510, '2024-01-05', '6F', 'CYBER NOOK AREA 3', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1511, '2024-01-05', '2F', 'READING AREA 2', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1512, '2024-01-05', '2F', 'READING AREA 2', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1513, '2024-01-05', '2F', 'READING AREA 2', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1514, '2024-01-05', '2F', 'READING AREA 2', 4, '[0,0,0,0,0,1,1,0,0,0,0]', ''),
(1515, '2024-01-05', '2F', 'READING AREA 2', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1516, '2024-01-05', '2F', 'READING AREA 2', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1517, '2024-01-05', '2F', 'READING AREA 2', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1518, '2024-01-05', '2F', 'READING AREA 2', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1519, '2024-01-05', '2F', 'READING AREA 2', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1520, '2024-01-05', '2F', 'READING AREA 2', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1521, '2024-01-05', 'GF', 'Bulsu Area', 1, '[1,1,1,0,0,0,1,1,1,0,0]', ''),
(1522, '2024-01-05', 'GF', 'Bulsu Area', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1523, '2024-01-05', 'GF', 'Bulsu Area', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1524, '2024-01-05', 'GF', 'Bulsu Area', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1525, '2024-01-05', 'GF', 'Bulsu Area', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1526, '2024-01-05', 'GF', 'Bulsu Area', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1527, '2024-01-05', 'GF', 'Bulsu Area', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1528, '2024-01-05', 'GF', 'Bulsu Area', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1529, '2024-01-05', 'GF', 'Bulsu Area', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1530, '2024-01-05', 'GF', 'Bulsu Area', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1531, '2024-01-05', 'GF', 'Bulsu Area', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1532, '2024-01-05', 'GF', 'Bulsu Area', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1533, '2024-01-05', 'GF', 'Bulsu Area', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1534, '2024-01-05', 'GF', 'Bulsu Area', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1535, '2024-01-05', 'GF', 'Bulsu Area', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1536, '2024-01-06', '4F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1537, '2024-01-06', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1538, '2024-01-06', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1539, '2024-01-06', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1540, '2024-01-06', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1541, '2024-01-06', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1542, '2024-01-06', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1543, '2024-01-06', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1544, '2024-01-06', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1545, '2024-01-06', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1546, '2024-01-06', 'GF', 'CYBER NOOK AREA', 1, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1547, '2024-01-06', 'GF', 'CYBER NOOK AREA', 2, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1548, '2024-01-06', 'GF', 'CYBER NOOK AREA', 3, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1549, '2024-01-06', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1550, '2024-01-06', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1551, '2024-01-06', 'GF', 'CYBER NOOK AREA', 6, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1552, '2024-01-06', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1553, '2024-01-06', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1554, '2024-01-06', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1555, '2024-01-06', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1556, '2024-01-06', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1557, '2024-01-06', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1558, '2024-01-06', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1559, '2024-01-06', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1560, '2024-01-06', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1561, '2024-01-06', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1562, '2024-01-06', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1563, '2024-01-06', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1564, '2024-01-06', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1565, '2024-01-06', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1566, '2024-01-11', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,1,0,0,0,0,0]', ''),
(1567, '2024-01-11', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1568, '2024-01-11', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1569, '2024-01-11', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1570, '2024-01-11', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1571, '2024-01-11', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1572, '2024-01-11', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1573, '2024-01-11', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1574, '2024-01-11', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1575, '2024-01-11', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1576, '2024-01-10', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1577, '2024-01-10', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1578, '2024-01-10', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1579, '2024-01-10', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1580, '2024-01-10', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1581, '2024-01-10', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1582, '2024-01-10', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1583, '2024-01-10', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1584, '2024-01-10', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1585, '2024-01-10', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1586, '2024-01-11', '2F', 'READING AREA 1', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1587, '2024-01-11', '2F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1588, '2024-01-11', '2F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1589, '2024-01-11', '2F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1590, '2024-01-11', '2F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1591, '2024-01-11', '2F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1592, '2024-01-11', '2F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1593, '2024-01-11', '2F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1594, '2024-01-11', '2F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1595, '2024-01-11', '2F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1596, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1597, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1598, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1599, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1600, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1601, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1602, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1603, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1604, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1605, '2024-01-06', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1606, '2024-01-09', '4F', 'READING AREA 1', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1607, '2024-01-09', '4F', 'READING AREA 1', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1608, '2024-01-09', '4F', 'READING AREA 1', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1609, '2024-01-09', '4F', 'READING AREA 1', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1610, '2024-01-09', '4F', 'READING AREA 1', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1611, '2024-01-09', '4F', 'READING AREA 1', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1612, '2024-01-09', '4F', 'READING AREA 1', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1613, '2024-01-09', '4F', 'READING AREA 1', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1614, '2024-01-09', '4F', 'READING AREA 1', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1615, '2024-01-09', '4F', 'READING AREA 1', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1616, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1617, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 2, '[0,1,0,0,0,0,0,0,0,0,0]', ''),
(1618, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1619, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1620, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1621, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1622, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1623, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1624, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1625, '2024-01-10', '3F', 'READING AREA / LOUNGE AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1626, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1627, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1628, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 3, '[0,0,0,1,1,1,0,0,0,0,0]', ''),
(1629, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 4, '[0,0,0,1,0,0,0,0,0,0,0]', ''),
(1630, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 5, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1631, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 6, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1632, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1633, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1634, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1635, '2024-01-10', 'GF', 'PWD COLLECTION ROOM', 10, '[0,0,0,0,0,0,0,1,0,0,0]', ''),
(1636, '2024-01-10', 'GF', 'Bulsu Area', 1, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1637, '2024-01-10', 'GF', 'Bulsu Area', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1638, '2024-01-10', 'GF', 'Bulsu Area', 3, '[0,0,0,0,0,1,1,0,0,0,0]', ''),
(1639, '2024-01-10', 'GF', 'Bulsu Area', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1640, '2024-01-10', 'GF', 'Bulsu Area', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1641, '2024-01-10', 'GF', 'Bulsu Area', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1642, '2024-01-10', 'GF', 'Bulsu Area', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1643, '2024-01-10', 'GF', 'Bulsu Area', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1644, '2024-01-10', 'GF', 'Bulsu Area', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1645, '2024-01-10', 'GF', 'Bulsu Area', 10, '[0,0,0,0,0,0,1,1,0,0,0]', ''),
(1646, '2024-01-10', 'GF', 'Bulsu Area', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1647, '2024-01-10', 'GF', 'Bulsu Area', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1648, '2024-01-10', 'GF', 'Bulsu Area', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1649, '2024-01-10', 'GF', 'Bulsu Area', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1650, '2024-01-10', 'GF', 'Bulsu Area', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1651, '2024-01-11', 'GF', 'Bulsu Area', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1652, '2024-01-11', 'GF', 'Bulsu Area', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1653, '2024-01-11', 'GF', 'Bulsu Area', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1654, '2024-01-11', 'GF', 'Bulsu Area', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1655, '2024-01-11', 'GF', 'Bulsu Area', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1656, '2024-01-11', 'GF', 'Bulsu Area', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1657, '2024-01-11', 'GF', 'Bulsu Area', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1658, '2024-01-11', 'GF', 'Bulsu Area', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1659, '2024-01-11', 'GF', 'Bulsu Area', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1660, '2024-01-11', 'GF', 'Bulsu Area', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1661, '2024-01-11', 'GF', 'Bulsu Area', 11, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1662, '2024-01-11', 'GF', 'Bulsu Area', 12, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1663, '2024-01-11', 'GF', 'Bulsu Area', 13, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1664, '2024-01-11', 'GF', 'Bulsu Area', 14, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1665, '2024-01-11', 'GF', 'Bulsu Area', 15, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1666, '2024-01-12', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1667, '2024-01-12', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1668, '2024-01-12', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1669, '2024-01-12', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1670, '2024-01-12', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1671, '2024-01-12', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1672, '2024-01-12', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1673, '2024-01-12', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1674, '2024-01-12', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1675, '2024-01-12', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1676, '2024-01-16', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1677, '2024-01-16', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1678, '2024-01-16', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1679, '2024-01-16', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1680, '2024-01-16', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1681, '2024-01-16', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1682, '2024-01-16', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1683, '2024-01-16', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1684, '2024-01-16', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1685, '2024-01-16', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1686, '2024-01-12', 'GF', 'Flatform Area', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1687, '2024-01-12', 'GF', 'Flatform Area', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1688, '2024-01-12', 'GF', 'Flatform Area', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1689, '2024-01-12', 'GF', 'Flatform Area', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1690, '2024-01-12', 'GF', 'Flatform Area', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1691, '2024-01-12', 'GF', 'Flatform Area', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1692, '2024-01-12', 'GF', 'Flatform Area', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1693, '2024-01-12', 'GF', 'Flatform Area', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1694, '2024-01-12', 'GF', 'Flatform Area', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1695, '2024-01-12', 'GF', 'Flatform Area', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1696, '2024-01-15', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,1,1,1,1,0,0,0]', ''),
(1697, '2024-01-15', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,1,1,1,1,0,0,0]', ''),
(1698, '2024-01-15', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1699, '2024-01-15', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1700, '2024-01-15', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1701, '2024-01-15', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1702, '2024-01-15', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1703, '2024-01-15', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1704, '2024-01-15', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1705, '2024-01-15', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1706, '2024-01-18', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1707, '2024-01-18', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1708, '2024-01-18', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1709, '2024-01-18', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1710, '2024-01-18', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1711, '2024-01-18', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1712, '2024-01-18', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1713, '2024-01-18', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1714, '2024-01-18', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1715, '2024-01-18', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1716, '2024-01-19', 'GF', 'CYBER NOOK AREA', 1, '[1,1,1,1,0,0,0,0,0,0,0]', ''),
(1717, '2024-01-19', 'GF', 'CYBER NOOK AREA', 2, '[1,1,0,0,0,0,0,0,0,0,0]', ''),
(1718, '2024-01-19', 'GF', 'CYBER NOOK AREA', 3, '[1,0,0,0,0,0,0,0,0,0,0]', ''),
(1719, '2024-01-19', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1720, '2024-01-19', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1721, '2024-01-19', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1722, '2024-01-19', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1723, '2024-01-19', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1724, '2024-01-19', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1725, '2024-01-19', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1726, '2024-01-22', 'GF', 'CYBER NOOK AREA', 1, '[1,1,0,0,1,0,0,0,0,0,0]', ''),
(1727, '2024-01-22', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,1,0,0,0,0,0,0,0]', ''),
(1728, '2024-01-22', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1729, '2024-01-22', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1730, '2024-01-22', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1731, '2024-01-22', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1732, '2024-01-22', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1733, '2024-01-22', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1734, '2024-01-22', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1735, '2024-01-22', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1736, '2024-01-23', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1737, '2024-01-23', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1738, '2024-01-23', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1739, '2024-01-23', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1740, '2024-01-23', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1741, '2024-01-23', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1742, '2024-01-23', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1743, '2024-01-23', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1744, '2024-01-23', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1745, '2024-01-23', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1746, '2024-01-24', 'GF', 'CYBER NOOK AREA', 1, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1747, '2024-01-24', 'GF', 'CYBER NOOK AREA', 2, '[0,0,0,0,0,0,1,0,0,0,0]', ''),
(1748, '2024-01-24', 'GF', 'CYBER NOOK AREA', 3, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1749, '2024-01-24', 'GF', 'CYBER NOOK AREA', 4, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1750, '2024-01-24', 'GF', 'CYBER NOOK AREA', 5, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1751, '2024-01-24', 'GF', 'CYBER NOOK AREA', 6, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1752, '2024-01-24', 'GF', 'CYBER NOOK AREA', 7, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1753, '2024-01-24', 'GF', 'CYBER NOOK AREA', 8, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1754, '2024-01-24', 'GF', 'CYBER NOOK AREA', 9, '[0,0,0,0,0,0,0,0,0,0,0]', ''),
(1755, '2024-01-24', 'GF', 'CYBER NOOK AREA', 10, '[0,0,0,0,0,0,0,0,0,0,0]', '');

-- --------------------------------------------------------

--
-- Table structure for table `slot_status`
--

CREATE TABLE `slot_status` (
  `id` varchar(20) NOT NULL,
  `seatnumber` int(10) NOT NULL,
  `timeslot` int(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `srcode` varchar(20) DEFAULT NULL,
  `course` varchar(150) DEFAULT NULL,
  `rfid` varchar(20) DEFAULT NULL,
  `qrcode` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `college` varchar(150) DEFAULT NULL,
  `campus` varchar(20) DEFAULT NULL,
  `schoolyear` varchar(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `middle_name`, `srcode`, `course`, `rfid`, `qrcode`, `gender`, `college`, `campus`, `schoolyear`, `email`, `photo`) VALUES
(1, 'Ansel Christian', 'Santos', 'M', '2023101024', 'Bachelor of Science in Nursing', NULL, '01', 'M', 'College of Nursing (CON)', 'Main Campus', NULL, '2023101024@bulsu.edu', 'https://drive.google.com/open?id=1OzBh-ezRa4bkNpjMz5XAS3Ry_MAjSJXg'),
(2, 'Lorenzo', 'Delos Santos Jr', 'C', '2023100898', 'Bachelor of Science in Nursing', '', '02', 'M', 'College of Nursing (CON)', 'Main Campus', '', '2023100898@bulsu.edu', 'https://drive.google.com/open?id=1qZuodUF0W4TWyoozvGgv5fYSZDbfS3f7'),
(3, 'Danielle Gwyneth', 'Punzal', 'T.', '2023100948', 'Bachelor of Science in Nursing', NULL, '03', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100948@bulsu.edu', 'https://drive.google.com/open?id=1vfE9W8NcmvWZKL8Jpax7sTXuIij7GENT'),
(4, 'Heny Althea', 'Bautista', 'P', '2023101062', 'Bachelor of Science in Nursing', NULL, '04', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101062@bulsu.edu', 'https://drive.google.com/open?id=1TgUMP0NXDD_lfgkaNU1VEc_vf_d60JER'),
(5, 'Xymon', 'Concepcion', 'B.', '2023101068', 'Bachelor of Science in Nursing', NULL, '2023101068', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101068@bulsu.edu', 'https://drive.google.com/open?id=1qORBJztsA16KqGAg0iCQAWh_IGj4SzW2'),
(6, 'Johnella', 'Dalisay', 'B', '2023100899', 'Bachelor of Science in Nursing', NULL, '2023100899', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100899@bulsu.edu', 'https://drive.google.com/open?id=1-MO-seGpl9rdoSgeJpFB61aYJCywAdj-'),
(7, 'MARK ANGELO', 'LITONJUA', 'B', '2023101054', 'Bachelor of Science in Nursing', NULL, '2023101054', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101054@bulsu.edu', 'https://drive.google.com/open?id=1dbe5qifI0U8JjGHxSyOMaYuIsKpxmE7K'),
(8, 'Ayessah Lizelle', 'Espinola', 'R.', '2023101003', 'Bachelor of Science in Nursing', NULL, '2023101003', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101003@bulsu.edu', 'https://drive.google.com/open?id=1I_Sv_qnZb07bE9qtBHCihDLqDoEWLvKJ'),
(9, 'Bianca Yzavelle', 'Tragico', 'DG', '2023101004', 'Bachelor of Science in Nursing', NULL, '2023101004', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101004@bulsu.edu', 'https://drive.google.com/open?id=150idvfpjq_jhK_5QPUkmfFNuKitwJH79'),
(10, 'Thea Denise', 'Eser', 'N.', '2023101034', 'Bachelor of Science in Nursing', NULL, '2023101034', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101034@bulsu.edu', 'https://drive.google.com/open?id=1AqmSe3GbDEA9HAhDKenczQb4OunJU6Ne'),
(11, 'Anhar', 'Bacsa', NULL, '2023101040', 'Bachelor of Science in Nursing', NULL, '2023101040', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101040@bulsu.edu', 'https://drive.google.com/open?id=1nQRV-Ptr1EKr4kfvpuNawkFz5LFT0_0H'),
(12, 'FRANCES THERESE', 'EYANA', 'E.', '2023100885', 'Bachelor of Science in Nursing', NULL, '2023100885', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100885@bulsu.edu', 'https://drive.google.com/open?id=1iyEIc2C6zxyVFjePv0S5XoK5qMDRT3Y4'),
(13, 'Maylyn', 'Gonzales', 'V.', '2023100864', 'Bachelor of Science in Nursing', NULL, '2023100864', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100864@bulsu.edu', 'https://drive.google.com/open?id=1-AgrwORmzsSzEp3PkEmP_ZiEVpwATIPE'),
(14, 'RHED JOHN', 'RAMIREZ', 'C.', '2023100870', 'Bachelor of Science in Nursing', NULL, '2023100870', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100870@bulsu.edu', 'https://drive.google.com/open?id=1rAT-XYV0s0fkT9WxSZ9G6dDjwkLxzCIN'),
(15, 'Kathreena', 'Arrozal', 'M.', '2023105288', 'Bachelor of Science in Nursing', NULL, '2023105288', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105288@bulsu.edu', 'https://drive.google.com/open?id=1IHESV-D6s60qlfmCUpnr4MGTwoNp741t'),
(16, 'Ashley Faith', 'Salonga', 'R.', '2023106984', 'Bachelor of Science in Nursing', NULL, '2023106984', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023106984@bulsu.edu', 'https://drive.google.com/open?id=1MIyEjEeGxrfhybf_D7jMMyIR30L2mVZU'),
(17, 'Angelica', 'Reyes', 'B', '2023100881', 'Bachelor of Science in Nursing', NULL, '2023100881', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100881@bulsu.edu', 'https://drive.google.com/open?id=1S1hpg4hwmJApjY6c4PkQDjquus0c74L6'),
(18, 'Alliyah Nicole', 'San Agustin', 'N', '2023101083', 'Bachelor of Science in Nursing', NULL, '2023101083', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101083@bulsu.edu', 'https://drive.google.com/open?id=1z1_Axq8MQky-RgmMUghhvsnM01kiTb5q'),
(19, 'Marianne Joy', 'Bunag', 'M', '2023100888', 'Bachelor of Science in Nursing', NULL, '2023100888', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100888@bulsu.edu', 'https://drive.google.com/open?id=1GPbNZvEMB0JIdVDkXBeXHheDmjWSpfxA'),
(20, 'Jersey Ann', 'Mabilin', 'R.', '2023101084', 'Bachelor of Science in Nursing', NULL, '2023101084', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101084@bulsu.edu', 'https://drive.google.com/open?id=1ra7tu5idKJSpQ9EutQFziDQx02CJeh_B'),
(21, 'Akito', 'Mitani', 'H.', '2023100868', 'Bachelor of Science in Nursing', NULL, '2023100868', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100868@bulsu.edu', 'https://drive.google.com/open?id=1EEj_uxdfRuyXZZYzgIxdWkvI2NjX4m-Q'),
(22, 'Shiela Mae', 'Tandayag', 'S.', '2023101085', 'Bachelor of Science in Nursing', NULL, '2023101085', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101085@bulsu.edu', 'https://drive.google.com/open?id=1yBokQgkXqxIMT_79JuoU9T9JCDxhs3bl'),
(23, 'Rosecar Guillel', 'Angulo', 'B', '2023105900', 'Bachelor of Science in Nursing', NULL, '2023105900', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105900@bulsu.edu', 'https://drive.google.com/open?id=1BYzuI-BDEAYbghZcEv-bAN1t48vqeUD0'),
(24, 'Justine Kate', 'Guballa', 'S', '2023101006', 'Bachelor of Science in Nursing', NULL, '2023101006', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101006@bulsu.edu', 'https://drive.google.com/open?id=1BIbRLUJSvyhTZvd1yjDWFqRtBKblTrLe'),
(25, 'Angelo Louie', 'Litimco', 'M.', '2023100862', 'Bachelor of Science in Nursing', NULL, '2023100862', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100862@bulsu.edu', 'https://drive.google.com/open?id=1n_xI1tKEyjKtZD6YMsYn4qr6lU64_AWq'),
(26, 'Marydel', 'Millar', 'D.', '2023100980', 'Bachelor of Science in Nursing', NULL, '2023100980', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100980@bulsu.edu', 'https://drive.google.com/open?id=1_wWsgqU7oc6Tl19LM2vpuznvEOWyDMiY'),
(27, 'Ma. Nicole', 'Dela Cruz', 'M', '2017100105', 'Bachelor of Science in Nursing', NULL, '2017100105', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2017100105@bulsu.edu', 'https://drive.google.com/open?id=1QrWVc8ZV5k8h3CzefCxoLDkh43En1MUJ'),
(28, 'ERICKA MAE', 'FABRE', 'M.', '2023101013', 'Bachelor of Science in Nursing', NULL, '2023101013', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101013@bulsu.edu', 'https://drive.google.com/open?id=1b_uWTpoIuW5SjEa_J8_hpzbHjXcIaaXC'),
(29, 'Ric Kevin', 'Tolentino', 'B', '2023100854', 'Bachelor of Science in Nursing', NULL, '2023100854', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100854@bulsu.edu', 'https://drive.google.com/open?id=1E6_t84vA-L-pV-TZxsukFAWabUSJDeOe'),
(30, 'Sherlayne Erica', 'Fernandez', 'S.', '2023100982', 'Bachelor of Science in Nursing', NULL, '2023100982', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100982@bulsu.edu', 'https://drive.google.com/open?id=1bJX84m8tNZ1gn8YWyRgH1_mDfJNV8ho9'),
(31, 'Angelica Nicole', 'Garcia', 'C', '2023100996', 'Bachelor of Science in Nursing', NULL, '2023100996', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100996@bulsu.edu', 'https://drive.google.com/open?id=1Hk3aop00uywlB3F0glUaGQ9hvmdEJlcQ'),
(32, 'Michaela', 'Santos', 'E', '2023100913', 'Bachelor of Science in Nursing', NULL, '2023100913', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100913@bulsu.edu', 'https://drive.google.com/open?id=1afbY3Tv-gMq-ZWzpuvClmJITI8Tt7JuK'),
(33, 'Loise Camille', 'Tolentino', 'P.', '2023101018', 'Bachelor of Science in Nursing', NULL, '2023101018', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101018@bulsu.edu', 'https://drive.google.com/open?id=1tFYfbYy-TBosJ-dtbDlDc3TRfB-ua2Pr'),
(34, 'Nimoweh', 'Carlos', 'N.', '2023101410', 'Bachelor of Science in Nursing', NULL, '2023101410', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101410@bulsu.edu', 'https://drive.google.com/open?id=1A7EkacP3aNssa6X6ikN8MVk-VIW9CPck'),
(35, 'Precious', 'Bote', 'L', '2023101254', 'Bachelor of Science in Nursing', NULL, '2023101254', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101254@bulsu.edu', 'https://drive.google.com/open?id=1hxg0tTDaGztmXZmzV1tGJh7PN1Su1mua'),
(36, 'Trisha', 'Flores', 'S.', '2023105889', 'Bachelor of Science in Nursing', NULL, '2023105889', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105889@bulsu.edu', 'https://drive.google.com/open?id=1GJsQnf17LCWRsKVGLPUkbQYZoEE9ty2a'),
(37, 'Sharlene', 'Bondoc', 'C.', '2023101011', 'Bachelor of Science in Nursing', NULL, '2023101011', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101011@bulsu.edu', 'https://drive.google.com/open?id=1orPfkbNDgOBKZ4xikOQXhyWGtZh0Nqqr'),
(38, 'Trisha', 'Brigino', 'C.', '2023100974', 'Bachelor of Science in Nursing', NULL, '2023100974', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100974@bulsu.edu', 'https://drive.google.com/open?id=1W671Y-VOBgJ4CWLbeiJTHwM7ZzNLEzSQ'),
(39, 'Althea ', 'Dela Cruz', 'A', '2023100856', 'Bachelor of Science in Nursing', NULL, '2023100856', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100856@bulsu.edu', 'https://drive.google.com/open?id=1achFpR9s4X2pUTXRj1MTVHnc60D8XsbK'),
(40, 'John Strauss', 'Juntilla ', 'C.', '2023100886', 'Bachelor of Science in Nursing', NULL, '2023100886', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100886@bulsu.edu', 'https://drive.google.com/open?id=1H0Sd_4A0lu60OOAJr60uLFRDdg5GdauJ'),
(41, 'Abrienella', 'Mendieta', 'DC.', '2023101691', 'Bachelor of Science in Nursing', NULL, '2023101691', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101691@bulsu.edu', 'https://drive.google.com/open?id=13JGsNKNY1X16hwEiAPn7R2algYWTaf0f'),
(42, 'Yumi Rey', 'Santos', 'T', '2023100897', 'Bachelor of Science in Nursing', NULL, '2023100897', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100897@bulsu.edu', 'https://drive.google.com/open?id=13x5sh2KNXvxcgujwRgKjXcJdDO5hv_Hv'),
(43, 'RIEMA', 'DELA ROSA', 'B', '2023100915', 'Bachelor of Science in Nursing', NULL, '2023100915', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100915@bulsu.edu', 'https://drive.google.com/open?id=1jdhn4asha1un9kHTNEWJ0X-9DyRXkDGG'),
(44, 'Marjorie ', 'Fabian', 'L.', '2023101030', 'Bachelor of Science in Nursing', NULL, '2023101030', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101030@bulsu.edu', 'https://drive.google.com/open?id=1UBwaoXyzifA4YgdZRgeb2X83OPTPR4SY'),
(45, 'Leona Mei', 'Ting', 'S', '2023100911', 'Bachelor of Science in Nursing', NULL, '2023100911', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100911@bulsu.edu', 'https://drive.google.com/open?id=1JjY_ymKNkkSjko8dfX2Hic0C1BkPmz7X'),
(46, 'Bianca', 'Tan', 'G.', '2023101017', 'Bachelor of Science in Nursing', NULL, '2023101017', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101017@bulsu.edu', 'https://drive.google.com/open?id=1ksgq4KBM-Jxw8zNf9kn_snofs3PUNrxe'),
(47, 'Patricia Louise', 'Muga', 'M.', '2023100930', 'Bachelor of Science in Nursing', NULL, '2023100930', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100930@bulsu.edu', 'https://drive.google.com/open?id=1_lX7o-UZ3ER9L6hErlcSI5ORLkaGGxNe'),
(48, 'Hana Shamelle', 'Mallari', 'V', '2023100994', 'Bachelor of Science in Nursing', NULL, '2023100994', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100994@bulsu.edu', 'https://drive.google.com/open?id=1L5wmUIk-v7k9XZAiB0tmtEKOufQK1sGp'),
(49, 'Renzel', 'Coronel', ' Saces', '2023100987', 'Bachelor of Science in Nursing', NULL, '2023100987', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100987@bulsu.edu', 'https://drive.google.com/open?id=1jE2V3McrzVLqy-UHQ8uUkYri9KY8-3Bv'),
(50, 'Carlos', 'Vistan', 'C', '2023107069', 'Bachelor of Science in Nursing', NULL, '2023107069', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023107069@bulsu.edu', 'https://drive.google.com/open?id=1jReW2FIE_KJiVM-fbEGH8ex_tiCWgMOv'),
(51, 'Francine Rain', 'Vinta', 'D.', '2023101076', 'Bachelor of Science in Nursing', NULL, '2023101076', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101076@bulsu.edu', 'https://drive.google.com/open?id=1qGaGQl7o4fd6a33X6_V2bRRUE1jJxF7v'),
(52, 'Daphnie', 'Cruz', 'P.', '2023100981', 'Bachelor of Science in Nursing', NULL, '2023100981', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100981@bulsu.edu', 'https://drive.google.com/open?id=1Mjj3liS_ZhAiyWuKU0GK4qsdlbwXDLx_'),
(53, 'Pearl Justine', 'Paitan', 'V.', '2017100096', 'Bachelor of Science in Nursing', NULL, '2017100096', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2017100096@bulsu.edu', 'https://drive.google.com/open?id=1OsZ0MzHMM4r2w3Kn4-8LzPj9n-6FhEaG'),
(54, 'Sophia Noreen B.', 'Nuguid', 'Bulanadi ', '2023100907', 'Bachelor of Science in Nursing', NULL, '2023100907', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100907@bulsu.edu', 'https://drive.google.com/open?id=1qmBg0fBIKBgEHriZ1YNtnp_NrvrDbJyl'),
(55, 'Kaizer', 'Ventura', 'Bernardo', '2023100926', 'Bachelor of Science in Nursing', NULL, '2023100926', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100926@bulsu.edu', 'https://drive.google.com/open?id=1mCgRC5s6Mp_n62McabLwWFZLc0Gd5i0n'),
(56, 'Joy Andrea', 'Leoncio', 'Namuco', '2023100973', 'Bachelor of Science in Nursing', NULL, '2023100973', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100973@bulsu.edu', 'https://drive.google.com/open?id=1pYVaPr-DGU5n4qIOabgzs83Kvm6GsOoH'),
(57, 'MIKYLA', 'ZAMORA', 'A', '2023100921', 'Bachelor of Science in Nursing', NULL, '2023100921', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100921@bulsu.edu', 'https://drive.google.com/open?id=1HCTluNgeDG-sfPV_YPyhlLohRgTty9Op'),
(58, 'Jordan Isabel', 'Rivero', 'A', '2023100923', 'Bachelor of Science in Nursing', NULL, '2023100923', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100923@bulsu.edu', 'https://drive.google.com/open?id=15Io91TgsWHHexHg41qD15oepdVws3ch2'),
(59, 'Meizy Aleine', 'Mendoza', 'J', '2023101000', 'Bachelor of Science in Nursing', NULL, '2023101000', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101000@bulsu.edu', 'https://drive.google.com/open?id=1vQaHvfBn6OnKUsnRvhtqOKMbOC4AC9Zq'),
(60, 'Jet Marty', 'Concepcion', 'T', '2023101014', 'Bachelor of Science in Nursing', NULL, '2023101014', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101014@bulsu.edu', 'https://drive.google.com/open?id=1Btzy1OVh41NHyH4uhJQj8qog_mnMYZyX'),
(61, 'Sai Ena Quelle', 'Robles', 'R', '2023100863', 'Bachelor of Science in Nursing', NULL, '2023100863', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100863@bulsu.edu', 'https://drive.google.com/open?id=1AfqLy4oixweZQluAPLJL_ywCM_d2YQQd'),
(62, 'Genelle Ishi', 'Santos', 'C.', '2023100939', 'Bachelor of Science in Nursing', NULL, '2023100939', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100939@bulsu.edu', 'https://drive.google.com/open?id=1Y115IxElZ7GJI0ngL_dMmNaMOvqC0vkg'),
(63, 'Samantha', 'Soriaga', 'Isalis', '2023106362', 'Bachelor of Science in Nursing', NULL, '2023106362', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023106362@bulsu.edu', 'https://drive.google.com/open?id=1Rd3g0DFU2tvbeZ0ItUgEIpLDq19nH5nO'),
(64, 'Theresa Marie', 'Eustaquio', 'R.', '2017100079', 'Bachelor of Science in Nursing', NULL, '2017100079', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2017100079@bulsu.edu', 'https://drive.google.com/open?id=1mv7RG2TWmbwMJZykAB7WhNTGtP56aOuo'),
(65, 'Janelle', 'Ganelo', 'A', '2023100972', 'Bachelor of Science in Nursing', NULL, '2023100972', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100972@bulsu.edu', 'https://drive.google.com/open?id=1-X53B31CxcdqY2eG2RGA1iiW0ONeXR-B'),
(66, 'Lourine', 'Cruz', 'O', '2023101037', 'Bachelor of Science in Nursing', NULL, '2023101037', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101037@bulsu.edu', 'https://drive.google.com/open?id=1FxMa2347b3vnS0nsU_hkce_mSy1BU0h_'),
(67, 'MARIE CLAIRE', 'MAGALING', 'C', '2023100971', 'Bachelor of Science in Nursing', NULL, '2023100971', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100971@bulsu.edu', 'https://drive.google.com/open?id=1PC9DZ0-8M6pjoaqJ3RDi2MoSfyuuryId'),
(68, 'Arian Tiffany', 'Domingo', 'V.', '2023100874', 'Bachelor of Science in Nursing', NULL, '2023100874', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100874@bulsu.edu', 'https://drive.google.com/open?id=1e1JMpBVYrH7UWGhJ5zYAmnAfKsztyQtr'),
(69, 'Elijah Marykiel', 'Sombero', 'G', '2017100465', 'Bachelor of Science in Nursing', NULL, '2017100465', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2017100465@bulsu.edu', 'https://drive.google.com/open?id=19smclYqCg1P3_WGemlBZ7oXXu7peGse6'),
(70, 'Sofia Marie', 'De Leon', 'C.', '2023101322', 'Bachelor of Science in Nursing', NULL, '2023101322', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101322@bulsu.edu', 'https://drive.google.com/open?id=1EEu1zoA-_NWrJgb_oqO-mXCqYELkB84t'),
(71, 'Jade', 'Luciniada', 'O.', '2023100955', 'Bachelor of Science in Nursing', NULL, '2023100955', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100955@bulsu.edu', 'https://drive.google.com/open?id=1U00cO8pBg-1lBPFK3k92io7s_expxgKn'),
(72, 'Deanne Erica', 'Boringot', 'B', '2023104647', 'Bachelor of Science in Nursing', NULL, '2023104647', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104647@bulsu.edu', 'https://drive.google.com/open?id=1JOehO8rAomzlm55XlNIBdCYWOwx5wbDO'),
(73, 'Patricia Johnna', 'Layug', 'M', '2023104123', 'Bachelor of Science in Nursing', NULL, '2023104123', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104123@bulsu.edu', 'https://drive.google.com/open?id=15xVQGBzktATu5ZpF7COw9uTvKiq9Ya27'),
(74, 'Ma.Kristel', 'Cruz', 'B.', '2023101058', 'Bachelor of Science in Nursing', NULL, '2023101058', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101058@bulsu.edu', 'https://drive.google.com/open?id=1pkOvoNhQnUnAC3bo0QTbTiMQEDWqHKx4'),
(75, 'YHARI DOMINIQUE', 'POLICARPIO', 'O', '2023101036', 'Bachelor of Science in Nursing', NULL, '2023101036', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101036@bulsu.edu', 'https://drive.google.com/open?id=1Gu54CoY2hNGIuxkkPrBCd6pLel1sIltO'),
(76, 'Chrisell Love', 'Zablan', 'G', '2023101047', 'Bachelor of Science in Nursing', NULL, '2023101047', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101047@bulsu.edu', 'https://drive.google.com/open?id=1rjcIP8oFuh8wgV_ARuF2BrK4ilMUgnLK'),
(77, 'AYA NADINE', 'DELA CRUZ', 'M.', '2023101021', 'Bachelor of Science in Nursing', NULL, '2023101021', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101021@bulsu.edu', 'https://drive.google.com/open?id=1tNdcKv-vYoY6opuz5xB17QsVmSSZ3GYG'),
(78, 'Kimberly', 'Parmisano', 'P.', '2023101042', 'Bachelor of Science in Nursing', NULL, '2023101042', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023101042@bulsu.edu', 'https://drive.google.com/open?id=1mhKMzAcDZLNVW5sZuKJ9NNIzK3LZYD0s'),
(79, 'Beatriz Anne', 'Tecson', 'A.', '2023100858', 'Bachelor of Science in Nursing', NULL, '2023100858', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100858@bulsu.edu', 'https://drive.google.com/open?id=1o7ApJZv_JYHqFxAci3rOCGE4QZBhHaj_'),
(80, 'Jenn', 'Lucresio', 'NA', '2023105597', 'Bachelor of Science in Nursing', NULL, '2023105597', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105597@bulsu.edu', 'https://drive.google.com/open?id=1xtZ3UA-ajOAjoHXr4sgsqpsqUkBRMcWZ'),
(81, 'Rogen Allen France ', 'Bien', 'S', '2023106290', 'Bachelor of Science in Nursing', NULL, '2023106290', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023106290@bulsu.edu', 'https://drive.google.com/open?id=1csIn9ciR1EuLCzIu2KfWVfr4zbjlM-B2'),
(82, 'Mariel', 'Concepcion', 'Tagum', '2023104852', 'Bachelor of Science in Nursing', NULL, '2023104852', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104852@bulsu.edu', 'https://drive.google.com/open?id=19cfwmT7vZgQ9caPkVQqCoG3s3t7Y4XRl'),
(83, 'MARYLEI JASHLEY', 'ALVAREZ', 'L.', '2023105426', 'Bachelor of Science in Nursing', NULL, '2023105426', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105426@bulsu.edu', 'https://drive.google.com/open?id=1kj4qzxopPPOeerFCX7JTOTV4kz3DmDOF'),
(84, 'Ria Nazarine', 'Lo', 'L.', '2023104180', 'Bachelor of Science in Nursing', NULL, '2023104180', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104180@bulsu.edu', 'https://drive.google.com/open?id=17DUPSL5M7C1xaLw-BTEPUhuF0vuscagH'),
(85, 'Anne Gemelina ', 'Guevarra', 'S.', '2023100908', 'Bachelor of Science in Nursing', NULL, '2023100908', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100908@bulsu.edu', 'https://drive.google.com/open?id=1TG0jdfpQjl7rjgecRnOO2APu4lrPDYUZ'),
(86, 'KENT HARVEY', 'FERNANDO', 'MARBELLA', '2023104514', 'Bachelor of Science in Nursing', NULL, '2023104514', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104514@bulsu.edu', 'https://drive.google.com/open?id=111VRu3HyfuqzCAFld4uqVyWFXotH8loU'),
(87, 'Denisse Gwen', 'Concepcion', 'R.', '2023104023', 'Bachelor of Science in Nursing', NULL, '2023104023', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104023@bulsu.edu', 'https://drive.google.com/open?id=1n-jgTmuH61gk_l2EeeJIgig0QP_k3MGo'),
(88, 'Estelle Marithe Sheinlee', 'Gervacio', 'P.', '2023104053', 'Bachelor of Science in Nursing', NULL, '2023104053', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104053@bulsu.edu', 'https://drive.google.com/open?id=1IWU5uIFys1nLWQH94Bkx0c_hCHnyjDll'),
(89, 'Helen Nicole', 'Pamintuan', 'R', '2023103885', 'Bachelor of Science in Nursing', NULL, '2023103885', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023103885@bulsu.edu', 'https://drive.google.com/open?id=15h-_m7V0kChSk4px4WRbgOjdt4XvZ0YJ'),
(90, 'Franchesca Sophia', 'Paras', 'H.', '2023105880', 'Bachelor of Science in Nursing', NULL, '2023105880', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105880@bulsu.edu', 'https://drive.google.com/open?id=11lw9NNi5WZ_NG72p0XrO3pf5W1kiCHxp'),
(91, 'Jelaine Heart', 'Bautista', 'Y', '2023100998', 'Bachelor of Science in Nursing', NULL, '2023100998', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023100998@bulsu.edu', 'https://drive.google.com/open?id=1pj5RQ3heRmnWu_x9AlPtRsP9Eewdr0vG'),
(92, 'Jana Althea', 'Santos', 'C', '2023104050', 'Bachelor of Science in Nursing', NULL, '2023104050', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104050@bulsu.edu', 'https://drive.google.com/open?id=1DfexumDCFP7tpvXKg7FkBVKjMPzSv7Qv'),
(93, 'Ivan', 'Coscolluela', 'F.', '2023107673', 'Bachelor of Science in Nursing', NULL, '2023107673', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023107673@bulsu.edu', 'https://drive.google.com/open?id=1lRoR8b1dobUrMWoxSBorOvRHVwDDLYOZ'),
(94, 'Cielo Antonette', 'Francisco', 'S', '2023103391', 'Bachelor of Science in Nursing', NULL, '2023103391', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023103391@bulsu.edu', 'https://drive.google.com/open?id=1pFkzbV0V6bd85vhdYX2LvWcvut2fBfS1'),
(95, 'Leiane Lerie', 'Del Pilar', 'M.', '2017100200', 'Bachelor of Science in Nursing', NULL, '2017100200', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2017100200@bulsu.edu', 'https://drive.google.com/open?id=115roXb5rCKfMuOW03HzDnmFsvnqFL1dx'),
(96, 'Andrew Timothy', 'Blaza', 'S', '2023104130', 'Bachelor of Science in Nursing', NULL, '2023104130', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023104130@bulsu.edu', 'https://drive.google.com/open?id=13gyS_Dkz_9J0UDe1xeUX_KGYkjNz-ER6'),
(97, 'EL-JIE', 'ESTELA', 'A', '2023105040', 'Bachelor of Science in Nursing', NULL, '2023105040', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105040@bulsu.edu', 'https://drive.google.com/open?id=1Rt9fDHN85BHOYCwCxw_uwWAwN3F3TjKZ'),
(98, 'Tracy Daine', 'Andres', 'C.', '2023103326', 'Bachelor of Science in Nursing', NULL, '2023103326', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023103326@bulsu.edu', 'https://drive.google.com/open?id=1a_j1h9QNBReiOq5XBxsGWySI79y4vpzm'),
(99, 'Karylle', 'Adriano', 'N.', '2023105999', 'Bachelor of Science in Nursing', NULL, '2023105999', NULL, 'College of Nursing (CON)', 'Main Campus', NULL, '2023105999@bulsu.edu', 'https://drive.google.com/open?id=1jTERn11sJo1VzKX3WMNchIiukKgi-lpm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` char(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(50) NOT NULL,
  `employee_id` int(3) NOT NULL,
  `role_id` int(1) NOT NULL,
  `image` longtext NOT NULL,
  `floor` varchar(5) DEFAULT NULL,
  `permision` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `is_verified` varchar(255) NOT NULL,
  `verification_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `password`, `email`, `employee_id`, `role_id`, `image`, `floor`, `permision`, `is_verified`, `verification_token`) VALUES
(1, 'admin', '', '', '$2y$10$aqIT6Aotzl.3w51n/NQu7.n1LyWyrG0ldJgMRb1EHKQK6ekGhJRkS', '', 25, 1, 'default.png', '4F', '', '1', ''),
(4, 'kiosk4', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 8, 3, '', ' 2F  ', '', '', ''),
(10, 'kiosk3', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 8, 3, '', ' 3F', '', '', ''),
(20, 'kiosk2', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 8, 3, '', '2F ', '', '', ''),
(23, 'Kiosk 4', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 8, 3, '', '2F', '', '', ''),
(64, 'Miguel123', 'Jose Miguel', 'Dela Rosa', '$2y$10$6f720GN69GgUNP2qteb2P.f3OqRCxG6lz8CZ4T4nJJdumW..7rn2e', 'delarosajosemiguelf@gmail.com', 0, 2, '', '', '{\"My Profile\":1,\"Dashboard\":0,\"Room\":0,\"Area\":0,\"Faculty\":0,\"Student\":0,\"Librarian\":0,\"CMS\":0,\"Attendance\":0,\"Attend Seat\":0,\"Attend Room\":0,\"Reservation Seat\":0,\"Reservation Room\":0,\"Transaction Report\":0,\"Seat Status\":0,\"Room Status\":0,\"Room Reservation\":0,\"Live Monitoring\":0,\"Seat Reservation\":1}', '1', ''),
(67, 'choco', 'patrick', 'rosales', '$2y$10$jPShp67scC2AjQiSrljZm.JGXaDcgtA6kzeYRTAr8cCGX37p5K3U.', 'chocomalt083093@gmail.com', 0, 2, '', '', '{\"My Profile\":1,\"Dashboard\":1,\"Room\":1,\"Area\":1,\"Faculty\":1,\"Student\":1,\"Librarian\":0,\"CMS\":1,\"Attendance\":1,\"Attend Seat\":1,\"Attend Room\":1,\"Reservation Seat\":1,\"Reservation Room\":1,\"Transaction Report\":1,\"Seat Status\":1,\"Room Status\":1,\"Room Reservation\":1,\"Live Monitoring\":1}', '1', ''),
(68, 'patik', 'patrick', 'rosales', '$2y$10$imUEKiKrT/bPD.nWvLwjJefzxUfZqOdNdgJiEQ54KA4wfW/9H/cjW', 'chocomalt083093@gmail.com', 0, 2, '', NULL, '{\"My Profile\":1,\"Dashboard\":0,\"Room\":0,\"Area\":0,\"Faculty\":0,\"Student\":0,\"Librarian\":0,\"CMS\":0,\"Attendance\":0,\"Attend Seat\":0,\"Attend Room\":0,\"Reservation Seat\":0,\"Reservation Room\":0,\"Transaction Report\":0,\"Seat Status\":0,\"Room Status\":0,\"Room Reservation\":0,\"Live Monitoring\":0}', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `id` int(2) NOT NULL,
  `role_id` int(1) NOT NULL,
  `menu_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(2) NOT NULL,
  `menu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Master'),
(3, 'Attendance'),
(4, 'Profile'),
(5, 'Report'),
(6, 'Seat');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(1) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Employee'),
(3, 'Kiosk');

-- --------------------------------------------------------

--
-- Table structure for table `user_submenu`
--

CREATE TABLE `user_submenu` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `title` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_submenu`
--

INSERT INTO `user_submenu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 4, 'My Profile', 'profile', 'fas fa-fw fa-id-card', 1),
(2, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(3, 2, 'Room', 'master/room', 'fas fa-fw fa-id-badge', 1),
(4, 2, 'Area', 'master/area', 'fas fa-fw fa-id-badge', 1),
(6, 2, 'Faculty', 'master/faculty', 'fas fa-fw fa-id-badge', 1),
(7, 2, 'Student', 'master/student', 'fas fa-fw fa-id-badge', 1),
(8, 2, 'Librarian', 'master/users', 'fas fa-fw fa-users', 1),
(9, 2, 'CMS', 'admin/cms', 'fas fa-fw fa-building', 1),
(10, 3, 'Attendance', 'attendance', 'fas fa-fw fa-clipboard-list', 1),
(11, 5, 'Attend Seat', 'report/attend_seat', 'fas fa-fw fa-paste', 1),
(12, 5, 'Attend Room', 'report/attend_room', 'fas fa-fw fa-paste', 1),
(13, 5, 'Reservation Seat', 'report/book_seat_view', 'fas fa-fw fa-paste', 1),
(14, 5, 'Reservation Room', 'report/book_room_view', 'fas fa-fw fa-paste', 1),
(15, 5, 'Transaction Report', 'report/transaction_room', 'fas fa-fw fa-paste', 1),
(16, 6, 'Seat Status', 'seat/slotstatus', 'fas fa-fw fa-building', 1),
(17, 6, 'Room Status', 'seat/roomstatus', 'fas fa-fw fa-building', 1),
(18, 6, 'Room Reservation', 'seat/bookroom', 'fas fa-fw fa-building', 1),
(19, 6, 'Live Monitoring', 'seat/monitoring', 'fas fa-fw fa-building', 1),
(20, 6, 'Seat Reservation', 'reservation', 'fas fa-fw fa-paste', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `rfid` varchar(50) NOT NULL,
  `qrcode` varchar(50) NOT NULL,
  `gender` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `name`, `rfid`, `qrcode`, `gender`) VALUES
(1, 'visitor1', '123455', '12345', ''),
(3, 'visitor 2', '132312', '23423', 'M'),
(4, 'visitor 3', '132312555', '2342555', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ban_list`
--
ALTER TABLE `ban_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_department`
--
ALTER TABLE `employee_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_department_ibfk_1` (`employee_id`),
  ADD KEY `employee_department_ibfk_2` (`department_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombooklog`
--
ALTER TABLE `roombooklog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomslot`
--
ALTER TABLE `roomslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `role_id` (`role_id`);
ALTER TABLE `users` ADD FULLTEXT KEY `username` (`username`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_submenu`
--
ALTER TABLE `user_submenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `attend`
--
ALTER TABLE `attend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ban_list`
--
ALTER TABLE `ban_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employee_department`
--
ALTER TABLE `employee_department`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5009;

--
-- AUTO_INCREMENT for table `roombooklog`
--
ALTER TABLE `roombooklog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roomslot`
--
ALTER TABLE `roomslot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1756;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_submenu`
--
ALTER TABLE `user_submenu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_department`
--
ALTER TABLE `employee_department`
  ADD CONSTRAINT `employee_department_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_access`
--
ALTER TABLE `user_access`
  ADD CONSTRAINT `user_access_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_access_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_submenu`
--
ALTER TABLE `user_submenu`
  ADD CONSTRAINT `user_submenu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
