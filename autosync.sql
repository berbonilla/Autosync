-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autosync`
--

-- --------------------------------------------------------

--
-- Table structure for table `errorlog`
--

CREATE TABLE `errorlog` (
  `ErrorID` int(11) NOT NULL,
  `MachineID` int(11) DEFAULT NULL,
  `ErrorCode` varchar(20) NOT NULL,
  `ErrorDescription` text NOT NULL,
  `Timestamp` datetime DEFAULT current_timestamp(),
  `Resolved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `errorlog`
--

INSERT INTO `errorlog` (`ErrorID`, `MachineID`, `ErrorCode`, `ErrorDescription`, `Timestamp`, `Resolved`) VALUES
(1, 54, '813', 'Grinding Machine: Alignment error in moving parts', '2025-02-23 11:46:00', 0),
(2, 58, '713', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-23 13:47:00', 0),
(3, 57, '699', 'Robotic Welder: Excessive vibration detected', '2025-02-28 09:07:00', 0),
(4, 57, '951', 'Grinding Machine: Sensor failure detected', '2025-01-21 14:56:00', 1),
(5, 58, '857', 'CNC Lathe: Excessive vibration detected', '2025-01-03 16:13:00', 0),
(6, 59, '973', 'Milling Machine: Communication timeout with control system', '2025-02-05 11:39:00', 1),
(7, 53, '634', 'Milling Machine: Temperature sensor out of range', '2025-02-10 06:15:00', 1),
(8, 59, '637', 'Injection Molder: Alignment error in moving parts', '2025-02-12 16:12:00', 0),
(9, 56, '586', 'Hydraulic Press: Software update failed', '2025-02-07 03:46:00', 0),
(10, 51, '737', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-22 14:21:00', 1),
(11, 58, '127', 'Assembly Robot: Excessive vibration detected', '2025-02-25 01:31:00', 0),
(12, 56, '714', 'Stamping Press: Overheating detected during continuous operation', '2025-01-28 01:58:00', 1),
(13, 54, '759', 'Stamping Press: Calibration error affecting precision', '2025-02-01 07:00:00', 0),
(14, 54, '525', 'Robotic Welder: Sensor failure detected', '2025-02-17 19:41:00', 0),
(15, 52, '826', 'Injection Molder: Excessive vibration detected', '2025-02-12 02:25:00', 1),
(16, 56, '569', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-29 05:39:00', 1),
(17, 54, '641', 'CNC Lathe: Communication timeout with control system', '2025-01-16 20:28:00', 1),
(18, 57, '806', 'Heat Treatment Oven: Lubrication system malfunction', '2025-03-01 04:01:00', 1),
(19, 55, '868', 'Grinding Machine: Alignment error in moving parts', '2025-02-10 10:14:00', 1),
(20, 56, '999', 'Injection Molder: Sensor failure detected', '2025-01-30 07:02:00', 0),
(21, 55, '500', 'Assembly Robot: Lubrication system malfunction', '2025-01-17 19:12:00', 1),
(22, 55, '557', 'Hydraulic Press: Overheating detected during continuous operation', '2025-01-06 04:35:00', 0),
(23, 54, '555', 'Injection Molder: Excessive vibration detected', '2025-02-08 18:51:00', 0),
(24, 55, '469', 'Laser Cutter: Temperature sensor out of range', '2025-02-20 01:45:00', 1),
(25, 57, '567', 'Stamping Press: Alignment error in moving parts', '2025-01-19 15:14:00', 0),
(26, 57, '556', 'Laser Cutter: Calibration error affecting precision', '2025-01-12 11:45:00', 0),
(27, 56, '728', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-08 04:53:00', 1),
(28, 53, '297', 'Robotic Welder: Sensor failure detected', '2025-01-20 18:45:00', 1),
(29, 55, '504', 'CNC Lathe: Temperature sensor out of range', '2025-01-30 08:19:00', 1),
(30, 57, '783', 'Assembly Robot: Alignment error in moving parts', '2025-01-02 01:12:00', 1),
(31, 59, '531', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-02-13 08:37:00', 0),
(32, 55, '287', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-06 05:19:00', 1),
(33, 57, '604', 'Assembly Robot: Sensor failure detected', '2025-01-11 22:05:00', 1),
(34, 51, '465', 'Assembly Robot: Alignment error in moving parts', '2025-01-09 14:36:00', 0),
(35, 53, '781', 'Heat Treatment Oven: Sensor failure detected', '2025-01-12 18:12:00', 1),
(36, 52, '436', 'Laser Cutter: Sensor failure detected', '2025-01-27 01:55:00', 0),
(37, 55, '916', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-02-16 00:48:00', 1),
(38, 56, '649', 'Laser Cutter: Alignment error in moving parts', '2025-02-23 09:16:00', 0),
(39, 53, '642', 'Milling Machine: Lubrication system malfunction', '2025-02-18 11:56:00', 0),
(40, 58, '841', 'Grinding Machine: Temperature sensor out of range', '2025-01-20 07:32:00', 1),
(41, 55, '940', 'Milling Machine: Sensor failure detected', '2025-02-23 12:57:00', 0),
(42, 54, '807', 'CNC Lathe: Temperature sensor out of range', '2025-02-17 15:52:00', 0),
(43, 55, '989', 'Stamping Press: Overheating detected during continuous operation', '2025-01-30 07:02:00', 0),
(44, 53, '494', 'Injection Molder: Excessive vibration detected', '2025-02-28 07:37:00', 0),
(45, 52, '401', 'CNC Lathe: Communication timeout with control system', '2025-02-16 15:51:00', 0),
(46, 55, '248', 'Robotic Welder: Communication timeout with control system', '2025-02-26 11:29:00', 0),
(47, 59, '858', 'Grinding Machine: Lubrication system malfunction', '2025-01-11 08:08:00', 1),
(48, 52, '452', 'Stamping Press: Overheating detected during continuous operation', '2025-01-27 23:31:00', 1),
(49, 60, '663', 'Milling Machine: Lubrication system malfunction', '2025-01-02 09:49:00', 0),
(50, 56, '677', 'Stamping Press: Calibration error affecting precision', '2025-02-25 04:05:00', 1),
(51, 54, '101', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-11 07:31:00', 1),
(52, 58, '739', 'Robotic Welder: Lubrication system malfunction', '2025-02-19 09:28:00', 0),
(53, 58, '322', 'Grinding Machine: Communication timeout with control system', '2025-02-14 08:35:00', 1),
(54, 56, '431', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-23 13:45:00', 0),
(55, 51, '154', 'Hydraulic Press: Lubrication system malfunction', '2025-01-24 05:00:00', 0),
(56, 58, '518', 'Milling Machine: Temperature sensor out of range', '2025-02-25 10:29:00', 0),
(57, 52, '557', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-14 18:15:00', 1),
(58, 60, '179', 'Injection Molder: Overheating detected during continuous operation', '2025-02-26 12:46:00', 0),
(59, 53, '561', 'Stamping Press: Temperature sensor out of range', '2025-02-26 08:00:00', 1),
(60, 58, '695', 'Milling Machine: Overheating detected during continuous operation', '2025-02-05 19:22:00', 0),
(61, 58, '812', 'Laser Cutter: Lubrication system malfunction', '2025-01-13 06:43:00', 1),
(62, 59, '100', 'Robotic Welder: Alignment error in moving parts', '2025-01-25 22:34:00', 0),
(63, 54, '664', 'Hydraulic Press: Excessive vibration detected', '2025-02-08 17:47:00', 1),
(64, 55, '942', 'Robotic Welder: Excessive vibration detected', '2025-01-22 04:53:00', 1),
(65, 56, '327', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-01-17 17:44:00', 1),
(66, 58, '133', 'Grinding Machine: Sensor failure detected', '2025-02-22 10:36:00', 1),
(67, 58, '697', 'CNC Lathe: Calibration error affecting precision', '2025-02-05 13:05:00', 1),
(68, 55, '220', 'Milling Machine: Temperature sensor out of range', '2025-01-05 02:22:00', 1),
(69, 55, '632', 'Stamping Press: Alignment error in moving parts', '2025-01-13 01:41:00', 0),
(70, 52, '228', 'Hydraulic Press: Lubrication system malfunction', '2025-03-01 10:07:00', 0),
(71, 56, '650', 'Robotic Welder: Calibration error affecting precision', '2025-01-27 20:53:00', 1),
(72, 59, '698', 'Stamping Press: Communication timeout with control system', '2025-01-13 15:40:00', 0),
(73, 60, '548', 'Stamping Press: Software update failed', '2025-02-12 15:06:00', 1),
(74, 59, '397', 'Hydraulic Press: Lubrication system malfunction', '2025-01-23 05:02:00', 1),
(75, 55, '818', 'Laser Cutter: Lubrication system malfunction', '2025-02-16 08:30:00', 0),
(76, 59, '756', 'Hydraulic Press: Lubrication system malfunction', '2025-01-26 09:39:00', 0),
(77, 57, '105', 'Heat Treatment Oven: Software update failed', '2025-02-13 18:46:00', 1),
(78, 53, '597', 'Hydraulic Press: Software update failed', '2025-01-23 00:56:00', 1),
(79, 55, '336', 'Heat Treatment Oven: Calibration error affecting precision', '2025-02-17 11:00:00', 1),
(80, 60, '108', 'Hydraulic Press: Excessive vibration detected', '2025-02-16 07:08:00', 1),
(81, 57, '642', 'Milling Machine: Power surge caused unexpected shutdown', '2025-02-02 23:18:00', 1),
(82, 52, '788', 'Injection Molder: Overheating detected during continuous operation', '2025-02-17 20:49:00', 1),
(83, 56, '979', 'Milling Machine: Calibration error affecting precision', '2025-02-25 07:41:00', 1),
(84, 59, '354', 'CNC Lathe: Calibration error affecting precision', '2025-02-26 03:52:00', 1),
(85, 60, '209', 'Stamping Press: Overheating detected during continuous operation', '2025-01-23 13:46:00', 0),
(86, 55, '748', 'Milling Machine: Sensor failure detected', '2025-02-12 13:39:00', 1),
(87, 53, '248', 'Hydraulic Press: Sensor failure detected', '2025-01-23 18:41:00', 0),
(88, 57, '931', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-01-15 14:18:00', 1),
(89, 58, '664', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-02-11 18:49:00', 1),
(90, 55, '772', 'Injection Molder: Calibration error affecting precision', '2025-01-28 18:25:00', 1),
(91, 60, '232', 'Heat Treatment Oven: Power surge caused unexpected shutdown', '2025-01-18 20:16:00', 1),
(92, 57, '407', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-19 13:22:00', 0),
(93, 58, '416', 'Injection Molder: Overheating detected during continuous operation', '2025-01-01 21:23:00', 0),
(94, 53, '341', 'Stamping Press: Alignment error in moving parts', '2025-01-04 10:55:00', 0),
(95, 60, '799', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-18 12:42:00', 0),
(96, 59, '425', 'Hydraulic Press: Excessive vibration detected', '2025-02-10 19:07:00', 0),
(97, 53, '924', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-01-02 06:14:00', 0),
(98, 53, '962', 'Hydraulic Press: Temperature sensor out of range', '2025-01-21 12:30:00', 1),
(99, 55, '464', 'Laser Cutter: Temperature sensor out of range', '2025-02-15 17:17:00', 0),
(100, 57, '251', 'CNC Lathe: Lubrication system malfunction', '2025-02-09 16:24:00', 0),
(101, 60, '651', 'Milling Machine: Sensor failure detected', '2025-02-20 07:04:00', 0),
(102, 58, '459', 'Grinding Machine: Calibration error affecting precision', '2025-01-04 20:09:00', 0),
(103, 57, '603', 'Grinding Machine: Lubrication system malfunction', '2025-01-24 04:44:00', 0),
(104, 57, '779', 'Assembly Robot: Temperature sensor out of range', '2025-01-15 01:32:00', 1),
(105, 52, '189', 'CNC Lathe: Excessive vibration detected', '2025-01-09 03:21:00', 0),
(106, 57, '994', 'Hydraulic Press: Excessive vibration detected', '2025-02-16 06:05:00', 1),
(107, 60, '776', 'Heat Treatment Oven: Communication timeout with control system', '2025-02-01 04:24:00', 0),
(108, 51, '752', 'Laser Cutter: Temperature sensor out of range', '2025-01-03 22:31:00', 1),
(109, 55, '121', 'Stamping Press: Calibration error affecting precision', '2025-02-21 19:32:00', 0),
(110, 55, '739', 'Hydraulic Press: Lubrication system malfunction', '2025-01-19 22:45:00', 1),
(111, 57, '446', 'Heat Treatment Oven: Sensor failure detected', '2025-01-11 17:07:00', 0),
(112, 58, '716', 'CNC Lathe: Calibration error affecting precision', '2025-01-30 02:58:00', 1),
(113, 53, '275', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-10 17:11:00', 1),
(114, 52, '691', 'Assembly Robot: Temperature sensor out of range', '2025-01-24 19:52:00', 1),
(115, 52, '951', 'Milling Machine: Sensor failure detected', '2025-02-22 10:33:00', 0),
(116, 57, '872', 'Robotic Welder: Calibration error affecting precision', '2025-02-14 05:54:00', 1),
(117, 57, '656', 'Hydraulic Press: Excessive vibration detected', '2025-02-22 18:11:00', 1),
(118, 60, '592', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-29 05:42:00', 1),
(119, 53, '674', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-15 04:37:00', 1),
(120, 59, '811', 'Milling Machine: Overheating detected during continuous operation', '2025-02-03 12:53:00', 1),
(121, 59, '698', 'Stamping Press: Communication timeout with control system', '2025-01-18 00:12:00', 1),
(122, 54, '613', 'Heat Treatment Oven: Software update failed', '2025-01-10 18:22:00', 1),
(123, 60, '766', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-27 01:29:00', 0),
(124, 58, '240', 'Injection Molder: Alignment error in moving parts', '2025-01-10 17:13:00', 1),
(125, 58, '221', 'Injection Molder: Alignment error in moving parts', '2025-02-19 06:54:00', 1),
(126, 60, '459', 'Milling Machine: Overheating detected during continuous operation', '2025-01-25 23:35:00', 0),
(127, 57, '851', 'Robotic Welder: Calibration error affecting precision', '2025-02-15 08:32:00', 1),
(128, 55, '604', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-07 11:02:00', 1),
(129, 57, '210', 'Laser Cutter: Lubrication system malfunction', '2025-02-19 14:29:00', 1),
(130, 60, '681', 'Injection Molder: Calibration error affecting precision', '2025-01-23 12:26:00', 1),
(131, 59, '440', 'Robotic Welder: Lubrication system malfunction', '2025-02-05 09:10:00', 1),
(132, 51, '122', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-19 06:31:00', 1),
(133, 51, '272', 'Assembly Robot: Calibration error affecting precision', '2025-01-24 14:52:00', 1),
(134, 60, '479', 'Hydraulic Press: Sensor failure detected', '2025-01-14 04:10:00', 0),
(135, 53, '191', 'Grinding Machine: Excessive vibration detected', '2025-02-04 11:38:00', 1),
(136, 60, '465', 'Hydraulic Press: Temperature sensor out of range', '2025-01-10 13:19:00', 1),
(137, 57, '448', 'CNC Lathe: Calibration error affecting precision', '2025-01-22 11:16:00', 1),
(138, 60, '116', 'Hydraulic Press: Temperature sensor out of range', '2025-01-10 13:27:00', 1),
(139, 54, '198', 'Injection Molder: Calibration error affecting precision', '2025-01-22 06:14:00', 0),
(140, 54, '659', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-14 00:26:00', 0),
(141, 53, '843', 'Injection Molder: Temperature sensor out of range', '2025-01-24 16:21:00', 1),
(142, 55, '170', 'CNC Lathe: Calibration error affecting precision', '2025-01-25 15:01:00', 0),
(143, 60, '103', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-30 16:00:00', 1),
(144, 58, '104', 'Stamping Press: Communication timeout with control system', '2025-01-08 06:01:00', 0),
(145, 55, '215', 'Injection Molder: Temperature sensor out of range', '2025-02-06 16:40:00', 0),
(146, 53, '533', 'Stamping Press: Excessive vibration detected', '2025-01-28 14:35:00', 0),
(147, 52, '281', 'Laser Cutter: Calibration error affecting precision', '2025-01-14 14:19:00', 1),
(148, 60, '587', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-02-18 08:21:00', 1),
(149, 55, '152', 'CNC Lathe: Excessive vibration detected', '2025-01-14 13:06:00', 1),
(150, 51, '544', 'Injection Molder: Lubrication system malfunction', '2025-02-09 13:50:00', 1),
(151, 52, '250', 'Robotic Welder: Sensor failure detected', '2025-01-28 08:29:00', 0),
(152, 51, '432', 'Stamping Press: Sensor failure detected', '2025-02-01 15:41:00', 1),
(153, 56, '214', 'CNC Lathe: Alignment error in moving parts', '2025-01-23 19:51:00', 1),
(154, 52, '723', 'Hydraulic Press: Temperature sensor out of range', '2025-01-08 10:51:00', 1),
(155, 51, '640', 'Assembly Robot: Overheating detected during continuous operation', '2025-01-05 02:17:00', 0),
(156, 59, '111', 'Robotic Welder: Excessive vibration detected', '2025-01-11 07:59:00', 0),
(157, 52, '802', 'Robotic Welder: Lubrication system malfunction', '2025-02-14 22:31:00', 1),
(158, 55, '867', 'Grinding Machine: Software update failed', '2025-02-26 21:45:00', 0),
(159, 59, '131', 'Assembly Robot: Lubrication system malfunction', '2025-02-03 02:56:00', 0),
(160, 58, '918', 'Milling Machine: Communication timeout with control system', '2025-01-30 03:17:00', 1),
(161, 51, '318', 'Hydraulic Press: Temperature sensor out of range', '2025-02-05 15:24:00', 0),
(162, 53, '950', 'CNC Lathe: Calibration error affecting precision', '2025-02-20 16:53:00', 0),
(163, 55, '140', 'Grinding Machine: Software update failed', '2025-01-28 08:22:00', 1),
(164, 51, '736', 'Injection Molder: Software update failed', '2025-01-22 00:00:00', 0),
(165, 52, '535', 'CNC Lathe: Software update failed', '2025-01-20 21:27:00', 1),
(166, 60, '819', 'Hydraulic Press: Calibration error affecting precision', '2025-01-24 12:26:00', 1),
(167, 60, '953', 'Assembly Robot: Overheating detected during continuous operation', '2025-02-17 21:07:00', 1),
(168, 52, '123', 'Stamping Press: Sensor failure detected', '2025-02-20 00:41:00', 0),
(169, 55, '558', 'CNC Lathe: Excessive vibration detected', '2025-01-14 10:35:00', 1),
(170, 52, '152', 'Grinding Machine: Excessive vibration detected', '2025-02-13 04:40:00', 1),
(171, 52, '256', 'Injection Molder: Excessive vibration detected', '2025-02-22 18:17:00', 0),
(172, 57, '138', 'Hydraulic Press: Excessive vibration detected', '2025-02-02 05:29:00', 1),
(173, 56, '395', 'Heat Treatment Oven: Software update failed', '2025-02-28 21:35:00', 0),
(174, 55, '423', 'Laser Cutter: Alignment error in moving parts', '2025-02-18 22:20:00', 1),
(175, 53, '702', 'Stamping Press: Overheating detected during continuous operation', '2025-01-18 09:08:00', 1),
(176, 51, '913', 'Milling Machine: Alignment error in moving parts', '2025-01-27 06:57:00', 0),
(177, 53, '387', 'Assembly Robot: Temperature sensor out of range', '2025-02-05 15:30:00', 1),
(178, 54, '300', 'Heat Treatment Oven: Software update failed', '2025-01-02 06:10:00', 0),
(179, 52, '564', 'CNC Lathe: Communication timeout with control system', '2025-01-25 13:32:00', 0),
(180, 58, '528', 'Hydraulic Press: Sensor failure detected', '2025-01-22 16:16:00', 0),
(181, 52, '539', 'CNC Lathe: Temperature sensor out of range', '2025-01-31 08:19:00', 1),
(182, 57, '693', 'Robotic Welder: Temperature sensor out of range', '2025-02-25 05:23:00', 0),
(183, 51, '513', 'Hydraulic Press: Lubrication system malfunction', '2025-01-20 21:25:00', 1),
(184, 53, '842', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-21 13:45:00', 0),
(185, 52, '677', 'Stamping Press: Communication timeout with control system', '2025-01-04 00:59:00', 1),
(186, 53, '662', 'Injection Molder: Sensor failure detected', '2025-01-27 02:13:00', 1),
(187, 54, '483', 'CNC Lathe: Excessive vibration detected', '2025-03-01 12:41:00', 1),
(188, 52, '281', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-05 04:09:00', 0),
(189, 55, '915', 'CNC Lathe: Lubrication system malfunction', '2025-01-29 18:29:00', 0),
(190, 52, '366', 'CNC Lathe: Lubrication system malfunction', '2025-01-22 05:00:00', 0),
(191, 51, '936', 'Laser Cutter: Software update failed', '2025-01-03 09:55:00', 0),
(192, 52, '570', 'Milling Machine: Lubrication system malfunction', '2025-02-27 05:20:00', 1),
(193, 59, '554', 'Grinding Machine: Temperature sensor out of range', '2025-01-04 03:27:00', 1),
(194, 54, '767', 'Assembly Robot: Alignment error in moving parts', '2025-02-14 21:15:00', 1),
(195, 53, '574', 'Grinding Machine: Lubrication system malfunction', '2025-01-07 23:38:00', 0),
(196, 53, '411', 'Hydraulic Press: Lubrication system malfunction', '2025-01-28 13:29:00', 1),
(197, 54, '401', 'Assembly Robot: Lubrication system malfunction', '2025-01-29 19:39:00', 1),
(198, 53, '816', 'Hydraulic Press: Communication timeout with control system', '2025-02-24 01:35:00', 1),
(199, 51, '155', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-03 10:58:00', 1),
(200, 51, '467', 'Heat Treatment Oven: Communication timeout with control system', '2025-02-02 06:48:00', 0),
(201, 56, '159', 'Assembly Robot: Lubrication system malfunction', '2025-01-28 15:49:00', 0),
(202, 57, '720', 'Injection Molder: Overheating detected during continuous operation', '2025-02-19 01:49:00', 1),
(203, 54, '706', 'Injection Molder: Calibration error affecting precision', '2025-02-05 08:07:00', 0),
(204, 52, '134', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-02-15 22:20:00', 1),
(205, 58, '155', 'Heat Treatment Oven: Communication timeout with control system', '2025-02-10 21:24:00', 0),
(206, 58, '601', 'Laser Cutter: Overheating detected during continuous operation', '2025-01-26 02:13:00', 1),
(207, 55, '990', 'Injection Molder: Power surge caused unexpected shutdown', '2025-01-03 08:35:00', 1),
(208, 51, '246', 'Assembly Robot: Communication timeout with control system', '2025-02-24 04:13:00', 1),
(209, 53, '415', 'CNC Lathe: Communication timeout with control system', '2025-02-15 14:39:00', 0),
(210, 56, '283', 'Robotic Welder: Sensor failure detected', '2025-02-13 12:19:00', 0),
(211, 56, '395', 'CNC Lathe: Sensor failure detected', '2025-02-02 16:44:00', 1),
(212, 53, '327', 'Injection Molder: Communication timeout with control system', '2025-01-07 02:04:00', 0),
(213, 56, '272', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-01-07 19:40:00', 0),
(214, 51, '195', 'Injection Molder: Excessive vibration detected', '2025-01-08 22:22:00', 0),
(215, 60, '738', 'Stamping Press: Sensor failure detected', '2025-02-12 11:11:00', 1),
(216, 53, '445', 'Milling Machine: Power surge caused unexpected shutdown', '2025-02-04 23:14:00', 0),
(217, 56, '874', 'Assembly Robot: Overheating detected during continuous operation', '2025-01-14 20:41:00', 1),
(218, 60, '509', 'Robotic Welder: Communication timeout with control system', '2025-02-27 14:06:00', 1),
(219, 54, '516', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-01-11 04:30:00', 1),
(220, 60, '949', 'Heat Treatment Oven: Software update failed', '2025-02-27 21:31:00', 0),
(221, 55, '351', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-04 15:01:00', 0),
(222, 60, '125', 'Robotic Welder: Temperature sensor out of range', '2025-02-05 18:01:00', 1),
(223, 51, '870', 'CNC Lathe: Excessive vibration detected', '2025-02-23 23:15:00', 0),
(224, 51, '992', 'Heat Treatment Oven: Lubrication system malfunction', '2025-01-10 01:51:00', 0),
(225, 58, '736', 'Hydraulic Press: Excessive vibration detected', '2025-01-31 02:03:00', 1),
(226, 55, '344', 'Hydraulic Press: Software update failed', '2025-01-16 10:30:00', 0),
(227, 53, '896', 'Stamping Press: Communication timeout with control system', '2025-01-12 18:10:00', 1),
(228, 56, '823', 'Injection Molder: Temperature sensor out of range', '2025-02-09 22:36:00', 0),
(229, 55, '663', 'Stamping Press: Lubrication system malfunction', '2025-02-18 07:06:00', 1),
(230, 60, '794', 'CNC Lathe: Temperature sensor out of range', '2025-02-03 15:35:00', 0),
(231, 53, '381', 'Assembly Robot: Excessive vibration detected', '2025-02-26 04:06:00', 1),
(232, 55, '443', 'Laser Cutter: Alignment error in moving parts', '2025-02-16 19:41:00', 0),
(233, 60, '919', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-01-23 03:43:00', 0),
(234, 54, '444', 'Heat Treatment Oven: Sensor failure detected', '2025-01-11 17:09:00', 1),
(235, 54, '171', 'Robotic Welder: Communication timeout with control system', '2025-01-13 16:48:00', 1),
(236, 55, '245', 'Laser Cutter: Communication timeout with control system', '2025-01-19 06:31:00', 1),
(237, 52, '752', 'CNC Lathe: Overheating detected during continuous operation', '2025-02-25 13:07:00', 1),
(238, 53, '489', 'Injection Molder: Excessive vibration detected', '2025-01-01 11:21:00', 0),
(239, 58, '544', 'Robotic Welder: Calibration error affecting precision', '2025-02-17 11:03:00', 1),
(240, 60, '406', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-13 12:28:00', 1),
(241, 55, '862', 'Heat Treatment Oven: Calibration error affecting precision', '2025-01-02 15:04:00', 0),
(242, 53, '614', 'Milling Machine: Communication timeout with control system', '2025-02-06 15:23:00', 0),
(243, 51, '917', 'Laser Cutter: Software update failed', '2025-01-02 08:46:00', 1),
(244, 56, '427', 'Milling Machine: Software update failed', '2025-01-07 17:16:00', 0),
(245, 54, '979', 'Grinding Machine: Communication timeout with control system', '2025-02-04 13:04:00', 1),
(246, 53, '345', 'Laser Cutter: Excessive vibration detected', '2025-02-15 04:34:00', 0),
(247, 51, '162', 'Milling Machine: Calibration error affecting precision', '2025-01-07 23:34:00', 1),
(248, 51, '465', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-18 18:30:00', 0),
(249, 54, '477', 'Heat Treatment Oven: Sensor failure detected', '2025-02-25 14:17:00', 1),
(250, 54, '712', 'Injection Molder: Calibration error affecting precision', '2025-01-26 16:08:00', 1),
(251, 58, '754', 'Injection Molder: Calibration error affecting precision', '2025-02-01 01:39:00', 0),
(252, 58, '359', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-25 09:44:00', 1),
(253, 55, '618', 'Laser Cutter: Calibration error affecting precision', '2025-01-07 01:54:00', 0),
(254, 53, '120', 'Robotic Welder: Excessive vibration detected', '2025-01-17 17:47:00', 1),
(255, 54, '748', 'Injection Molder: Software update failed', '2025-01-30 14:35:00', 0),
(256, 59, '740', 'Hydraulic Press: Communication timeout with control system', '2025-02-25 06:31:00', 1),
(257, 56, '281', 'Injection Molder: Communication timeout with control system', '2025-01-09 07:05:00', 1),
(258, 53, '829', 'Milling Machine: Excessive vibration detected', '2025-02-02 03:04:00', 1),
(259, 54, '215', 'Laser Cutter: Calibration error affecting precision', '2025-01-27 14:45:00', 1),
(260, 56, '909', 'Grinding Machine: Sensor failure detected', '2025-01-19 11:25:00', 1),
(261, 53, '422', 'Grinding Machine: Communication timeout with control system', '2025-01-21 11:23:00', 1),
(262, 54, '389', 'Injection Molder: Lubrication system malfunction', '2025-01-11 05:41:00', 1),
(263, 56, '660', 'Injection Molder: Sensor failure detected', '2025-01-15 06:35:00', 0),
(264, 53, '539', 'Assembly Robot: Communication timeout with control system', '2025-02-25 05:22:00', 0),
(265, 58, '238', 'Laser Cutter: Communication timeout with control system', '2025-01-22 13:43:00', 1),
(266, 55, '460', 'Assembly Robot: Sensor failure detected', '2025-02-02 17:01:00', 1),
(267, 55, '738', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-10 22:13:00', 0),
(268, 58, '830', 'Grinding Machine: Software update failed', '2025-01-07 15:01:00', 0),
(269, 56, '624', 'Hydraulic Press: Excessive vibration detected', '2025-02-21 18:21:00', 0),
(270, 59, '333', 'Stamping Press: Communication timeout with control system', '2025-01-19 05:11:00', 0),
(271, 57, '762', 'Laser Cutter: Temperature sensor out of range', '2025-02-23 05:33:00', 0),
(272, 57, '184', 'Injection Molder: Calibration error affecting precision', '2025-01-25 12:27:00', 1),
(273, 60, '673', 'Injection Molder: Calibration error affecting precision', '2025-02-13 00:50:00', 0),
(274, 57, '513', 'Robotic Welder: Alignment error in moving parts', '2025-02-21 10:42:00', 0),
(275, 58, '133', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-02-25 23:05:00', 1),
(276, 53, '779', 'CNC Lathe: Excessive vibration detected', '2025-01-07 00:50:00', 0),
(277, 60, '487', 'Robotic Welder: Sensor failure detected', '2025-02-19 01:43:00', 1),
(278, 55, '649', 'Assembly Robot: Excessive vibration detected', '2025-01-05 20:56:00', 0),
(279, 51, '575', 'Stamping Press: Lubrication system malfunction', '2025-01-05 14:42:00', 1),
(280, 59, '844', 'Stamping Press: Lubrication system malfunction', '2025-02-26 01:30:00', 0),
(281, 53, '159', 'Stamping Press: Overheating detected during continuous operation', '2025-01-28 01:53:00', 0),
(282, 58, '110', 'Assembly Robot: Lubrication system malfunction', '2025-02-18 06:55:00', 1),
(283, 52, '342', 'Heat Treatment Oven: Calibration error affecting precision', '2025-02-18 12:16:00', 1),
(284, 59, '244', 'Hydraulic Press: Communication timeout with control system', '2025-02-09 23:52:00', 0),
(285, 57, '165', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-14 11:39:00', 1),
(286, 55, '633', 'Stamping Press: Sensor failure detected', '2025-02-11 13:42:00', 1),
(287, 52, '154', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-15 06:01:00', 0),
(288, 57, '281', 'CNC Lathe: Temperature sensor out of range', '2025-01-23 17:34:00', 1),
(289, 56, '781', 'Hydraulic Press: Communication timeout with control system', '2025-01-01 13:45:00', 0),
(290, 54, '407', 'Stamping Press: Sensor failure detected', '2025-02-21 03:05:00', 0),
(291, 51, '986', 'Grinding Machine: Calibration error affecting precision', '2025-01-21 04:00:00', 0),
(292, 51, '971', 'Assembly Robot: Temperature sensor out of range', '2025-01-21 14:04:00', 1),
(293, 54, '251', 'Grinding Machine: Lubrication system malfunction', '2025-01-25 07:16:00', 1),
(294, 58, '197', 'Robotic Welder: Communication timeout with control system', '2025-01-07 05:45:00', 0),
(295, 55, '927', 'Hydraulic Press: Calibration error affecting precision', '2025-01-07 04:33:00', 0),
(296, 57, '386', 'Assembly Robot: Temperature sensor out of range', '2025-01-22 16:16:00', 0),
(297, 59, '516', 'Stamping Press: Temperature sensor out of range', '2025-02-12 09:47:00', 1),
(298, 58, '493', 'Grinding Machine: Temperature sensor out of range', '2025-01-31 03:11:00', 1),
(299, 51, '612', 'Assembly Robot: Calibration error affecting precision', '2025-01-30 23:24:00', 0),
(300, 53, '890', 'Assembly Robot: Excessive vibration detected', '2025-01-21 00:07:00', 1),
(301, 55, '624', 'Laser Cutter: Software update failed', '2025-01-02 08:39:00', 0),
(302, 52, '174', 'Heat Treatment Oven: Lubrication system malfunction', '2025-01-02 08:45:00', 1),
(303, 53, '345', 'Laser Cutter: Temperature sensor out of range', '2025-01-16 23:09:00', 1),
(304, 57, '676', 'Robotic Welder: Excessive vibration detected', '2025-01-10 06:53:00', 1),
(305, 54, '898', 'Injection Molder: Communication timeout with control system', '2025-01-06 00:47:00', 1),
(306, 52, '283', 'Injection Molder: Alignment error in moving parts', '2025-01-06 09:43:00', 0),
(307, 51, '732', 'Laser Cutter: Communication timeout with control system', '2025-01-30 06:56:00', 1),
(308, 55, '857', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-02-18 09:34:00', 1),
(309, 56, '989', 'Hydraulic Press: Excessive vibration detected', '2025-02-09 18:59:00', 1),
(310, 59, '531', 'Heat Treatment Oven: Calibration error affecting precision', '2025-02-18 17:15:00', 0),
(311, 57, '902', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-01-17 18:04:00', 0),
(312, 51, '197', 'Robotic Welder: Lubrication system malfunction', '2025-01-28 18:26:00', 1),
(313, 53, '487', 'Injection Molder: Software update failed', '2025-01-31 14:34:00', 1),
(314, 53, '308', 'Injection Molder: Communication timeout with control system', '2025-01-11 08:15:00', 0),
(315, 55, '437', 'Stamping Press: Software update failed', '2025-02-28 23:52:00', 1),
(316, 51, '614', 'Assembly Robot: Overheating detected during continuous operation', '2025-02-22 07:53:00', 1),
(317, 53, '394', 'Heat Treatment Oven: Software update failed', '2025-02-21 09:19:00', 0),
(318, 54, '623', 'Assembly Robot: Excessive vibration detected', '2025-02-25 04:04:00', 1),
(319, 53, '559', 'Grinding Machine: Alignment error in moving parts', '2025-02-12 14:53:00', 1),
(320, 57, '315', 'Milling Machine: Lubrication system malfunction', '2025-02-27 04:01:00', 1),
(321, 60, '776', 'CNC Lathe: Excessive vibration detected', '2025-01-20 23:00:00', 0),
(322, 53, '899', 'Grinding Machine: Communication timeout with control system', '2025-02-18 15:48:00', 0),
(323, 51, '163', 'Hydraulic Press: Communication timeout with control system', '2025-02-24 03:02:00', 1),
(324, 58, '495', 'Heat Treatment Oven: Sensor failure detected', '2025-02-19 04:25:00', 1),
(325, 55, '825', 'Laser Cutter: Sensor failure detected', '2025-01-13 22:59:00', 0),
(326, 58, '545', 'Hydraulic Press: Overheating detected during continuous operation', '2025-01-01 20:17:00', 1),
(327, 54, '425', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-06 18:39:00', 1),
(328, 59, '539', 'Assembly Robot: Lubrication system malfunction', '2025-01-08 02:14:00', 1),
(329, 56, '254', 'Milling Machine: Lubrication system malfunction', '2025-01-08 23:29:00', 1),
(330, 52, '156', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-18 11:53:00', 0),
(331, 58, '492', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-12 22:38:00', 0),
(332, 59, '155', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-13 11:10:00', 0),
(333, 57, '927', 'Stamping Press: Alignment error in moving parts', '2025-01-03 08:34:00', 1),
(334, 58, '988', 'Assembly Robot: Temperature sensor out of range', '2025-01-20 11:25:00', 1),
(335, 51, '499', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-15 23:10:00', 1),
(336, 60, '310', 'Milling Machine: Sensor failure detected', '2025-01-10 17:11:00', 1),
(337, 51, '110', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-28 14:00:00', 0),
(338, 55, '272', 'Assembly Robot: Overheating detected during continuous operation', '2025-02-28 18:56:00', 0),
(339, 53, '836', 'Injection Molder: Excessive vibration detected', '2025-02-26 02:41:00', 0),
(340, 58, '496', 'Grinding Machine: Temperature sensor out of range', '2025-01-27 20:00:00', 0),
(341, 53, '922', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-02-16 04:35:00', 0),
(342, 54, '582', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-14 19:45:00', 0),
(343, 58, '698', 'Heat Treatment Oven: Software update failed', '2025-02-16 00:48:00', 1),
(344, 54, '109', 'Heat Treatment Oven: Lubrication system malfunction', '2025-01-03 12:32:00', 0),
(345, 60, '288', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-08 13:26:00', 1),
(346, 54, '399', 'Injection Molder: Sensor failure detected', '2025-01-31 09:24:00', 1),
(347, 53, '535', 'Assembly Robot: Calibration error affecting precision', '2025-02-02 06:46:00', 0),
(348, 58, '920', 'Hydraulic Press: Calibration error affecting precision', '2025-01-09 07:13:00', 0),
(349, 59, '241', 'CNC Lathe: Software update failed', '2025-02-03 21:44:00', 0),
(350, 53, '841', 'Injection Molder: Excessive vibration detected', '2025-02-13 04:40:00', 1),
(351, 54, '224', 'Stamping Press: Temperature sensor out of range', '2025-02-15 14:43:00', 1),
(352, 60, '410', 'Grinding Machine: Calibration error affecting precision', '2025-01-04 23:41:00', 1),
(353, 56, '146', 'Stamping Press: Sensor failure detected', '2025-02-05 22:56:00', 1),
(354, 55, '641', 'Assembly Robot: Excessive vibration detected', '2025-02-27 07:44:00', 1),
(355, 54, '793', 'Stamping Press: Calibration error affecting precision', '2025-02-13 03:29:00', 0),
(356, 59, '105', 'Laser Cutter: Lubrication system malfunction', '2025-01-11 06:45:00', 0),
(357, 59, '205', 'CNC Lathe: Overheating detected during continuous operation', '2025-02-24 11:38:00', 1),
(358, 52, '257', 'Laser Cutter: Software update failed', '2025-01-27 05:44:00', 0),
(359, 52, '709', 'Grinding Machine: Calibration error affecting precision', '2025-01-09 07:12:00', 0),
(360, 56, '746', 'Grinding Machine: Sensor failure detected', '2025-02-28 21:30:00', 1),
(361, 59, '686', 'Stamping Press: Communication timeout with control system', '2025-01-22 08:45:00', 1),
(362, 60, '934', 'Assembly Robot: Excessive vibration detected', '2025-02-23 00:21:00', 1),
(363, 59, '861', 'Assembly Robot: Overheating detected during continuous operation', '2025-01-02 01:08:00', 1),
(364, 55, '742', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-10 21:07:00', 1),
(365, 60, '135', 'Injection Molder: Overheating detected during continuous operation', '2025-02-23 08:06:00', 0),
(366, 51, '125', 'Grinding Machine: Calibration error affecting precision', '2025-01-15 18:05:00', 0),
(367, 55, '812', 'Stamping Press: Temperature sensor out of range', '2025-02-28 13:48:00', 0),
(368, 56, '553', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-02-07 20:28:00', 1),
(369, 55, '122', 'Assembly Robot: Communication timeout with control system', '2025-01-10 09:34:00', 1),
(370, 56, '889', 'Stamping Press: Temperature sensor out of range', '2025-02-04 17:55:00', 0),
(371, 53, '151', 'Laser Cutter: Communication timeout with control system', '2025-02-16 11:01:00', 1),
(372, 55, '325', 'Grinding Machine: Sensor failure detected', '2025-01-23 18:44:00', 0),
(373, 58, '461', 'Grinding Machine: Calibration error affecting precision', '2025-01-04 22:24:00', 0),
(374, 52, '851', 'Assembly Robot: Communication timeout with control system', '2025-02-20 20:44:00', 0),
(375, 57, '809', 'Heat Treatment Oven: Sensor failure detected', '2025-02-25 13:59:00', 0),
(376, 56, '781', 'Hydraulic Press: Alignment error in moving parts', '2025-02-20 03:11:00', 1),
(377, 60, '434', 'Heat Treatment Oven: Communication timeout with control system', '2025-02-13 02:27:00', 1),
(378, 51, '596', 'Stamping Press: Lubrication system malfunction', '2025-02-27 01:21:00', 1),
(379, 53, '503', 'Robotic Welder: Communication timeout with control system', '2025-01-02 20:16:00', 1),
(380, 59, '253', 'Milling Machine: Alignment error in moving parts', '2025-01-26 06:02:00', 0),
(381, 51, '129', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-22 21:21:00', 0),
(382, 55, '845', 'Grinding Machine: Excessive vibration detected', '2025-02-18 09:28:00', 0),
(383, 58, '140', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-18 18:30:00', 0),
(384, 55, '774', 'Robotic Welder: Communication timeout with control system', '2025-01-09 10:45:00', 0),
(385, 52, '247', 'Injection Molder: Temperature sensor out of range', '2025-02-07 17:41:00', 0),
(386, 56, '682', 'Stamping Press: Communication timeout with control system', '2025-01-10 11:56:00', 0),
(387, 55, '494', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-08 00:12:00', 1),
(388, 53, '487', 'Robotic Welder: Sensor failure detected', '2025-02-17 21:08:00', 1),
(389, 55, '436', 'Injection Molder: Sensor failure detected', '2025-01-11 20:47:00', 0),
(390, 57, '118', 'Hydraulic Press: Temperature sensor out of range', '2025-01-07 09:35:00', 1),
(391, 55, '728', 'Hydraulic Press: Alignment error in moving parts', '2025-02-11 13:49:00', 0),
(392, 56, '696', 'Laser Cutter: Excessive vibration detected', '2025-02-05 08:59:00', 1),
(393, 56, '860', 'Assembly Robot: Overheating detected during continuous operation', '2025-02-27 17:42:00', 0),
(394, 60, '387', 'Grinding Machine: Communication timeout with control system', '2025-01-24 18:35:00', 1),
(395, 58, '794', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-10 15:16:00', 0),
(396, 52, '418', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-26 21:40:00', 1),
(397, 55, '383', 'Hydraulic Press: Alignment error in moving parts', '2025-02-15 22:21:00', 0),
(398, 51, '105', 'Heat Treatment Oven: Software update failed', '2025-02-18 03:16:00', 1),
(399, 59, '543', 'Grinding Machine: Software update failed', '2025-01-12 00:32:00', 1),
(400, 56, '978', 'Hydraulic Press: Temperature sensor out of range', '2025-02-03 08:09:00', 1),
(401, 51, '294', 'Grinding Machine: Temperature sensor out of range', '2025-01-02 21:27:00', 1),
(402, 57, '509', 'Robotic Welder: Calibration error affecting precision', '2025-02-19 16:56:00', 1),
(403, 57, '977', 'CNC Lathe: Sensor failure detected', '2025-01-23 23:42:00', 1),
(404, 60, '950', 'Grinding Machine: Communication timeout with control system', '2025-02-11 01:16:00', 0),
(405, 51, '675', 'Hydraulic Press: Alignment error in moving parts', '2025-02-19 05:45:00', 0),
(406, 59, '384', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-26 10:24:00', 1),
(407, 55, '908', 'Milling Machine: Communication timeout with control system', '2025-02-09 20:20:00', 0),
(408, 57, '666', 'Robotic Welder: Excessive vibration detected', '2025-01-08 03:22:00', 0),
(409, 51, '992', 'Assembly Robot: Excessive vibration detected', '2025-01-02 12:36:00', 0),
(410, 54, '375', 'Laser Cutter: Software update failed', '2025-01-05 11:11:00', 1),
(411, 60, '482', 'Hydraulic Press: Communication timeout with control system', '2025-02-19 18:26:00', 1),
(412, 60, '109', 'Robotic Welder: Lubrication system malfunction', '2025-02-28 01:28:00', 0),
(413, 55, '554', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-25 19:49:00', 1),
(414, 60, '543', 'Assembly Robot: Sensor failure detected', '2025-01-21 18:47:00', 1),
(415, 58, '113', 'Assembly Robot: Alignment error in moving parts', '2025-03-01 00:03:00', 0),
(416, 53, '354', 'Assembly Robot: Excessive vibration detected', '2025-01-07 22:18:00', 1),
(417, 51, '726', 'Injection Molder: Calibration error affecting precision', '2025-01-15 21:38:00', 1),
(418, 52, '885', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-16 06:33:00', 1),
(419, 52, '912', 'CNC Lathe: Lubrication system malfunction', '2025-01-24 10:57:00', 1),
(420, 59, '531', 'Heat Treatment Oven: Power surge caused unexpected shutdown', '2025-01-23 03:34:00', 0),
(421, 56, '478', 'Injection Molder: Excessive vibration detected', '2025-01-10 03:17:00', 1),
(422, 60, '977', 'Heat Treatment Oven: Excessive vibration detected', '2025-01-11 11:52:00', 1),
(423, 51, '636', 'Assembly Robot: Excessive vibration detected', '2025-02-27 08:48:00', 1),
(424, 56, '724', 'Grinding Machine: Sensor failure detected', '2025-02-26 17:55:00', 0),
(425, 60, '922', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-01-19 21:33:00', 0),
(426, 60, '265', 'Hydraulic Press: Communication timeout with control system', '2025-02-02 10:31:00', 0),
(427, 53, '151', 'Laser Cutter: Excessive vibration detected', '2025-01-15 18:07:00', 0),
(428, 52, '770', 'Robotic Welder: Communication timeout with control system', '2025-01-26 15:58:00', 1),
(429, 57, '453', 'CNC Lathe: Sensor failure detected', '2025-01-15 06:34:00', 0),
(430, 58, '437', 'Stamping Press: Sensor failure detected', '2025-02-07 02:36:00', 1),
(431, 58, '829', 'Stamping Press: Software update failed', '2025-02-09 10:19:00', 0),
(432, 54, '762', 'Assembly Robot: Alignment error in moving parts', '2025-01-08 12:14:00', 1),
(433, 54, '222', 'Injection Molder: Software update failed', '2025-01-31 13:17:00', 1),
(434, 52, '196', 'Milling Machine: Excessive vibration detected', '2025-02-02 03:02:00', 1),
(435, 60, '354', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-04 16:45:00', 1),
(436, 52, '782', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-01-16 13:08:00', 1),
(437, 54, '790', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-07 00:12:00', 1),
(438, 52, '850', 'Assembly Robot: Sensor failure detected', '2025-01-18 11:37:00', 1),
(439, 52, '841', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-01-14 05:28:00', 1),
(440, 59, '468', 'Injection Molder: Excessive vibration detected', '2025-01-09 01:56:00', 0),
(441, 56, '566', 'Grinding Machine: Communication timeout with control system', '2025-01-03 17:30:00', 0),
(442, 53, '174', 'Assembly Robot: Communication timeout with control system', '2025-02-28 14:01:00', 0),
(443, 58, '549', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-01-10 02:00:00', 1),
(444, 57, '143', 'Milling Machine: Sensor failure detected', '2025-02-12 14:56:00', 1),
(445, 54, '184', 'Laser Cutter: Sensor failure detected', '2025-01-17 06:27:00', 1),
(446, 53, '547', 'Grinding Machine: Excessive vibration detected', '2025-01-27 18:33:00', 0),
(447, 57, '692', 'Injection Molder: Communication timeout with control system', '2025-02-11 03:42:00', 0),
(448, 54, '629', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-02-20 11:48:00', 1),
(449, 57, '554', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-09 04:00:00', 0),
(450, 52, '468', 'Stamping Press: Excessive vibration detected', '2025-02-06 08:53:00', 0),
(451, 55, '874', 'CNC Lathe: Lubrication system malfunction', '2025-02-20 10:42:00', 0),
(452, 58, '282', 'Assembly Robot: Sensor failure detected', '2025-01-19 12:37:00', 1),
(453, 52, '115', 'Laser Cutter: Excessive vibration detected', '2025-01-30 22:07:00', 1),
(454, 51, '689', 'CNC Lathe: Communication timeout with control system', '2025-02-20 23:16:00', 0),
(455, 57, '860', 'Milling Machine: Lubrication system malfunction', '2025-01-14 08:07:00', 1),
(456, 54, '145', 'Milling Machine: Calibration error affecting precision', '2025-02-16 13:29:00', 1),
(457, 54, '462', 'CNC Lathe: Temperature sensor out of range', '2025-02-28 12:37:00', 1),
(458, 60, '948', 'Heat Treatment Oven: Software update failed', '2025-02-12 18:48:00', 1),
(459, 51, '220', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-21 09:27:00', 0),
(460, 52, '301', 'Grinding Machine: Sensor failure detected', '2025-01-22 16:27:00', 0),
(461, 56, '290', 'Robotic Welder: Sensor failure detected', '2025-01-31 12:59:00', 0),
(462, 54, '558', 'Robotic Welder: Communication timeout with control system', '2025-02-22 03:08:00', 0),
(463, 58, '294', 'Assembly Robot: Software update failed', '2025-01-30 15:49:00', 0),
(464, 52, '403', 'Milling Machine: Sensor failure detected', '2025-02-23 10:31:00', 0),
(465, 51, '499', 'Heat Treatment Oven: Sensor failure detected', '2025-01-07 08:24:00', 0),
(466, 60, '634', 'Hydraulic Press: Software update failed', '2025-01-24 01:08:00', 1),
(467, 53, '517', 'Stamping Press: Overheating detected during continuous operation', '2025-01-11 16:59:00', 1),
(468, 55, '637', 'Stamping Press: Sensor failure detected', '2025-02-21 05:31:00', 1),
(469, 54, '915', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-01-12 02:58:00', 1),
(470, 60, '110', 'Milling Machine: Overheating detected during continuous operation', '2025-01-27 04:37:00', 1),
(471, 59, '814', 'Milling Machine: Overheating detected during continuous operation', '2025-02-02 10:32:00', 0),
(472, 56, '514', 'Stamping Press: Excessive vibration detected', '2025-01-07 02:12:00', 1),
(473, 51, '988', 'Grinding Machine: Calibration error affecting precision', '2025-01-22 06:13:00', 0),
(474, 52, '537', 'CNC Lathe: Overheating detected during continuous operation', '2025-02-20 02:59:00', 1),
(475, 52, '155', 'Assembly Robot: Lubrication system malfunction', '2025-01-24 09:45:00', 1),
(476, 51, '201', 'Injection Molder: Calibration error affecting precision', '2025-01-19 01:22:00', 1),
(477, 55, '367', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-27 23:31:00', 1),
(478, 60, '554', 'Assembly Robot: Sensor failure detected', '2025-01-18 12:45:00', 0),
(479, 57, '857', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-02-22 14:17:00', 1),
(480, 56, '608', 'Milling Machine: Alignment error in moving parts', '2025-01-28 08:23:00', 1),
(481, 53, '562', 'Grinding Machine: Excessive vibration detected', '2025-02-05 10:20:00', 0),
(482, 53, '943', 'Grinding Machine: Alignment error in moving parts', '2025-02-07 03:55:00', 0),
(483, 59, '970', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-26 10:59:00', 1),
(484, 52, '164', 'Assembly Robot: Alignment error in moving parts', '2025-02-16 01:54:00', 0),
(485, 54, '459', 'CNC Lathe: Excessive vibration detected', '2025-01-20 23:55:00', 1),
(486, 57, '336', 'Robotic Welder: Excessive vibration detected', '2025-01-07 01:04:00', 0),
(487, 57, '657', 'Milling Machine: Calibration error affecting precision', '2025-01-19 00:07:00', 1),
(488, 56, '256', 'CNC Lathe: Software update failed', '2025-01-26 07:14:00', 0),
(489, 59, '485', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-03 03:00:00', 1),
(490, 52, '711', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-12 03:13:00', 1),
(491, 54, '902', 'Injection Molder: Lubrication system malfunction', '2025-01-28 15:44:00', 1),
(492, 51, '659', 'Heat Treatment Oven: Calibration error affecting precision', '2025-02-01 08:06:00', 1),
(493, 53, '784', 'CNC Lathe: Temperature sensor out of range', '2025-02-26 07:43:00', 1),
(494, 53, '383', 'Assembly Robot: Temperature sensor out of range', '2025-02-10 00:07:00', 1),
(495, 53, '898', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-04 18:12:00', 1),
(496, 57, '184', 'Stamping Press: Software update failed', '2025-01-02 03:38:00', 1),
(497, 59, '995', 'Injection Molder: Calibration error affecting precision', '2025-01-24 13:40:00', 1),
(498, 54, '761', 'Stamping Press: Excessive vibration detected', '2025-01-28 17:15:00', 0),
(499, 59, '810', 'Injection Molder: Excessive vibration detected', '2025-01-05 17:19:00', 1),
(500, 56, '250', 'Milling Machine: Alignment error in moving parts', '2025-02-03 20:31:00', 0),
(501, 51, '963', 'Laser Cutter: Overheating detected during continuous operation', '2025-01-23 19:57:00', 0),
(502, 59, '241', 'Milling Machine: Software update failed', '2025-02-11 17:36:00', 1),
(503, 55, '532', 'Hydraulic Press: Lubrication system malfunction', '2025-02-27 05:23:00', 0),
(504, 58, '458', 'Stamping Press: Excessive vibration detected', '2025-01-24 10:04:00', 0),
(505, 51, '868', 'Milling Machine: Temperature sensor out of range', '2025-01-05 00:59:00', 1),
(506, 51, '871', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-27 13:01:00', 0),
(507, 58, '664', 'Heat Treatment Oven: Alignment error in moving parts', '2025-02-12 10:09:00', 0),
(508, 58, '401', 'Injection Molder: Sensor failure detected', '2025-01-27 02:14:00', 1),
(509, 55, '970', 'Robotic Welder: Temperature sensor out of range', '2025-02-25 05:23:00', 0),
(510, 52, '235', 'Hydraulic Press: Sensor failure detected', '2025-01-26 23:33:00', 1),
(511, 59, '644', 'Injection Molder: Power surge caused unexpected shutdown', '2025-01-11 00:33:00', 1),
(512, 52, '400', 'Milling Machine: Communication timeout with control system', '2025-02-02 05:28:00', 1),
(513, 52, '506', 'Heat Treatment Oven: Power surge caused unexpected shutdown', '2025-01-30 17:07:00', 0),
(514, 59, '765', 'Milling Machine: Calibration error affecting precision', '2025-02-26 06:31:00', 1),
(515, 56, '420', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-06 17:17:00', 0),
(516, 57, '280', 'Hydraulic Press: Calibration error affecting precision', '2025-01-15 18:09:00', 0),
(517, 60, '250', 'CNC Lathe: Excessive vibration detected', '2025-01-05 18:39:00', 0),
(518, 51, '250', 'Assembly Robot: Calibration error affecting precision', '2025-01-21 10:09:00', 0),
(519, 59, '873', 'Assembly Robot: Calibration error affecting precision', '2025-01-28 21:06:00', 1),
(520, 60, '980', 'Hydraulic Press: Software update failed', '2025-01-19 14:06:00', 1),
(521, 54, '513', 'Robotic Welder: Calibration error affecting precision', '2025-02-21 20:35:00', 0),
(522, 56, '395', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-13 21:53:00', 1);
INSERT INTO `errorlog` (`ErrorID`, `MachineID`, `ErrorCode`, `ErrorDescription`, `Timestamp`, `Resolved`) VALUES
(523, 51, '863', 'Milling Machine: Lubrication system malfunction', '2025-02-25 02:40:00', 0),
(524, 55, '847', 'Grinding Machine: Software update failed', '2025-01-18 11:30:00', 0),
(525, 52, '376', 'Hydraulic Press: Lubrication system malfunction', '2025-02-09 11:30:00', 0),
(526, 60, '374', 'Assembly Robot: Software update failed', '2025-01-29 11:57:00', 0),
(527, 52, '432', 'Laser Cutter: Communication timeout with control system', '2025-02-01 09:19:00', 1),
(528, 57, '583', 'Grinding Machine: Communication timeout with control system', '2025-01-01 13:48:00', 0),
(529, 54, '852', 'CNC Lathe: Lubrication system malfunction', '2025-02-21 13:12:00', 0),
(530, 53, '369', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-12 07:00:00', 0),
(531, 54, '465', 'CNC Lathe: Calibration error affecting precision', '2025-01-28 21:05:00', 1),
(532, 56, '685', 'Injection Molder: Sensor failure detected', '2025-02-02 13:11:00', 0),
(533, 58, '160', 'CNC Lathe: Excessive vibration detected', '2025-01-07 01:59:00', 1),
(534, 59, '200', 'Grinding Machine: Calibration error affecting precision', '2025-01-07 01:57:00', 1),
(535, 52, '795', 'Laser Cutter: Sensor failure detected', '2025-01-06 10:56:00', 0),
(536, 51, '175', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-19 19:08:00', 0),
(537, 59, '695', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-11 04:26:00', 1),
(538, 59, '578', 'Heat Treatment Oven: Power surge caused unexpected shutdown', '2025-02-02 19:22:00', 1),
(539, 54, '430', 'Assembly Robot: Communication timeout with control system', '2025-01-07 05:45:00', 0),
(540, 55, '927', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-25 07:54:00', 1),
(541, 60, '419', 'Assembly Robot: Excessive vibration detected', '2025-02-25 00:24:00', 1),
(542, 56, '845', 'Laser Cutter: Calibration error affecting precision', '2025-01-13 12:05:00', 1),
(543, 59, '640', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-15 11:08:00', 0),
(544, 60, '201', 'Laser Cutter: Lubrication system malfunction', '2025-01-03 13:42:00', 1),
(545, 59, '146', 'Laser Cutter: Temperature sensor out of range', '2025-01-13 16:46:00', 1),
(546, 60, '187', 'Stamping Press: Calibration error affecting precision', '2025-02-10 22:41:00', 1),
(547, 60, '970', 'Heat Treatment Oven: Software update failed', '2025-02-18 04:33:00', 0),
(548, 54, '385', 'Injection Molder: Calibration error affecting precision', '2025-01-20 06:20:00', 1),
(549, 55, '744', 'Hydraulic Press: Lubrication system malfunction', '2025-01-18 20:18:00', 1),
(550, 51, '492', 'Heat Treatment Oven: Sensor failure detected', '2025-02-16 23:33:00', 1),
(551, 55, '934', 'Hydraulic Press: Calibration error affecting precision', '2025-01-16 19:14:00', 1),
(552, 53, '808', 'Milling Machine: Excessive vibration detected', '2025-01-26 16:04:00', 0),
(553, 55, '306', 'Grinding Machine: Sensor failure detected', '2025-01-29 05:38:00', 1),
(554, 51, '525', 'Milling Machine: Lubrication system malfunction', '2025-01-21 22:42:00', 1),
(555, 55, '172', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-12 17:03:00', 0),
(556, 55, '150', 'Assembly Robot: Excessive vibration detected', '2025-02-14 05:59:00', 0),
(557, 52, '875', 'CNC Lathe: Communication timeout with control system', '2025-01-11 13:13:00', 0),
(558, 57, '829', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-02-25 18:11:00', 1),
(559, 55, '588', 'Milling Machine: Temperature sensor out of range', '2025-01-08 05:45:00', 0),
(560, 54, '606', 'Stamping Press: Communication timeout with control system', '2025-01-27 20:50:00', 1),
(561, 60, '581', 'Heat Treatment Oven: Software update failed', '2025-01-06 13:32:00', 0),
(562, 56, '495', 'Stamping Press: Overheating detected during continuous operation', '2025-01-25 19:45:00', 0),
(563, 58, '412', 'Stamping Press: Overheating detected during continuous operation', '2025-01-17 06:33:00', 1),
(564, 52, '952', 'Milling Machine: Power surge caused unexpected shutdown', '2025-02-13 18:38:00', 1),
(565, 58, '162', 'CNC Lathe: Excessive vibration detected', '2025-01-09 05:45:00', 0),
(566, 52, '553', 'CNC Lathe: Temperature sensor out of range', '2025-02-12 04:47:00', 0),
(567, 58, '348', 'Milling Machine: Lubrication system malfunction', '2025-02-15 05:55:00', 1),
(568, 60, '776', 'CNC Lathe: Excessive vibration detected', '2025-02-28 11:29:00', 1),
(569, 55, '392', 'Milling Machine: Sensor failure detected', '2025-02-20 05:40:00', 1),
(570, 52, '724', 'Hydraulic Press: Lubrication system malfunction', '2025-01-30 18:16:00', 0),
(571, 59, '837', 'Laser Cutter: Sensor failure detected', '2025-02-26 17:51:00', 0),
(572, 59, '139', 'Stamping Press: Overheating detected during continuous operation', '2025-01-18 08:53:00', 0),
(573, 54, '681', 'CNC Lathe: Lubrication system malfunction', '2025-01-31 20:40:00', 1),
(574, 55, '506', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-12 22:38:00', 0),
(575, 58, '840', 'Grinding Machine: Lubrication system malfunction', '2025-02-02 22:06:00', 1),
(576, 52, '726', 'CNC Lathe: Software update failed', '2025-02-13 19:47:00', 1),
(577, 56, '817', 'Injection Molder: Software update failed', '2025-01-25 02:23:00', 1),
(578, 58, '204', 'Milling Machine: Software update failed', '2025-02-17 05:45:00', 0),
(579, 55, '794', 'Laser Cutter: Sensor failure detected', '2025-01-05 08:38:00', 0),
(580, 55, '959', 'Injection Molder: Lubrication system malfunction', '2025-01-15 14:15:00', 1),
(581, 59, '555', 'CNC Lathe: Software update failed', '2025-01-25 05:00:00', 0),
(582, 55, '332', 'CNC Lathe: Sensor failure detected', '2025-01-31 14:30:00', 1),
(583, 52, '622', 'Injection Molder: Sensor failure detected', '2025-02-04 18:12:00', 1),
(584, 57, '381', 'Stamping Press: Overheating detected during continuous operation', '2025-02-01 10:39:00', 1),
(585, 59, '247', 'Robotic Welder: Communication timeout with control system', '2025-01-16 19:17:00', 1),
(586, 52, '715', 'CNC Lathe: Software update failed', '2025-02-28 20:17:00', 1),
(587, 58, '158', 'CNC Lathe: Excessive vibration detected', '2025-01-23 05:05:00', 1),
(588, 55, '955', 'Injection Molder: Sensor failure detected', '2025-01-24 21:20:00', 0),
(589, 51, '381', 'Robotic Welder: Temperature sensor out of range', '2025-02-14 11:06:00', 0),
(590, 54, '567', 'Injection Molder: Lubrication system malfunction', '2025-02-03 02:48:00', 1),
(591, 54, '612', 'Assembly Robot: Software update failed', '2025-02-09 08:43:00', 1),
(592, 60, '130', 'Milling Machine: Software update failed', '2025-01-04 10:06:00', 0),
(593, 58, '105', 'Grinding Machine: Calibration error affecting precision', '2025-01-23 07:29:00', 0),
(594, 51, '610', 'Grinding Machine: Sensor failure detected', '2025-01-07 14:43:00', 1),
(595, 58, '420', 'Laser Cutter: Temperature sensor out of range', '2025-01-09 08:25:00', 0),
(596, 60, '813', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-14 01:08:00', 1),
(597, 51, '940', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-19 12:05:00', 1),
(598, 53, '628', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-03 18:11:00', 1),
(599, 58, '836', 'Assembly Robot: Communication timeout with control system', '2025-01-07 00:49:00', 0),
(600, 57, '251', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-23 19:55:00', 0),
(601, 51, '987', 'Stamping Press: Calibration error affecting precision', '2025-01-06 19:54:00', 0),
(602, 56, '486', 'Stamping Press: Temperature sensor out of range', '2025-02-19 22:08:00', 1),
(603, 54, '916', 'Injection Molder: Alignment error in moving parts', '2025-02-10 12:30:00', 0),
(604, 56, '590', 'Hydraulic Press: Sensor failure detected', '2025-01-03 05:01:00', 0),
(605, 53, '801', 'Hydraulic Press: Alignment error in moving parts', '2025-02-01 17:09:00', 1),
(606, 53, '471', 'Injection Molder: Overheating detected during continuous operation', '2025-02-25 10:22:00', 1),
(607, 60, '117', 'Hydraulic Press: Temperature sensor out of range', '2025-01-14 21:48:00', 0),
(608, 54, '773', 'Stamping Press: Software update failed', '2025-01-01 02:23:00', 1),
(609, 54, '756', 'Laser Cutter: Communication timeout with control system', '2025-02-16 10:48:00', 1),
(610, 55, '847', 'Grinding Machine: Excessive vibration detected', '2025-02-10 18:56:00', 0),
(611, 58, '778', 'Laser Cutter: Lubrication system malfunction', '2025-01-02 11:20:00', 0),
(612, 54, '805', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-29 22:21:00', 1),
(613, 55, '530', 'CNC Lathe: Software update failed', '2025-02-11 12:26:00', 1),
(614, 53, '909', 'Grinding Machine: Temperature sensor out of range', '2025-02-26 13:58:00', 0),
(615, 60, '366', 'Laser Cutter: Overheating detected during continuous operation', '2025-01-26 00:51:00', 0),
(616, 55, '748', 'Hydraulic Press: Excessive vibration detected', '2025-01-30 00:37:00', 0),
(617, 55, '139', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-02-07 09:04:00', 0),
(618, 57, '661', 'Milling Machine: Sensor failure detected', '2025-01-07 10:53:00', 0),
(619, 59, '798', 'Injection Molder: Excessive vibration detected', '2025-01-10 02:02:00', 1),
(620, 54, '939', 'Assembly Robot: Temperature sensor out of range', '2025-02-03 14:18:00', 1),
(621, 58, '518', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-03-01 03:42:00', 0),
(622, 55, '199', 'CNC Lathe: Software update failed', '2025-02-11 13:42:00', 1),
(623, 52, '359', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-25 09:15:00', 0),
(624, 56, '429', 'Robotic Welder: Communication timeout with control system', '2025-01-27 18:30:00', 0),
(625, 59, '457', 'Injection Molder: Overheating detected during continuous operation', '2025-02-22 05:34:00', 0),
(626, 52, '290', 'Stamping Press: Communication timeout with control system', '2025-01-20 07:38:00', 0),
(627, 52, '193', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-09 12:05:00', 1),
(628, 54, '811', 'CNC Lathe: Excessive vibration detected', '2025-02-27 07:45:00', 1),
(629, 59, '918', 'Heat Treatment Oven: Temperature sensor out of range', '2025-01-14 18:14:00', 1),
(630, 54, '479', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-27 04:35:00', 0),
(631, 54, '501', 'Hydraulic Press: Alignment error in moving parts', '2025-02-01 18:15:00', 1),
(632, 52, '629', 'Stamping Press: Communication timeout with control system', '2025-01-10 13:21:00', 0),
(633, 53, '339', 'Injection Molder: Communication timeout with control system', '2025-02-13 08:41:00', 0),
(634, 56, '784', 'Hydraulic Press: Lubrication system malfunction', '2025-01-19 20:26:00', 1),
(635, 55, '550', 'Milling Machine: Lubrication system malfunction', '2025-01-20 19:03:00', 1),
(636, 53, '546', 'Grinding Machine: Lubrication system malfunction', '2025-01-11 07:59:00', 0),
(637, 54, '710', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-26 09:45:00', 1),
(638, 55, '718', 'CNC Lathe: Calibration error affecting precision', '2025-02-11 23:46:00', 1),
(639, 56, '796', 'Milling Machine: Software update failed', '2025-02-23 16:40:00', 0),
(640, 58, '601', 'Stamping Press: Communication timeout with control system', '2025-01-28 21:09:00', 0),
(641, 60, '633', 'CNC Lathe: Communication timeout with control system', '2025-02-26 11:31:00', 0),
(642, 54, '430', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-23 00:04:00', 0),
(643, 60, '890', 'Stamping Press: Alignment error in moving parts', '2025-01-28 05:43:00', 1),
(644, 57, '585', 'Stamping Press: Communication timeout with control system', '2025-01-31 02:03:00', 1),
(645, 55, '501', 'Heat Treatment Oven: Calibration error affecting precision', '2025-01-15 15:33:00', 1),
(646, 56, '156', 'Assembly Robot: Alignment error in moving parts', '2025-02-15 23:31:00', 1),
(647, 53, '178', 'Laser Cutter: Alignment error in moving parts', '2025-02-06 00:21:00', 1),
(648, 54, '536', 'Laser Cutter: Calibration error affecting precision', '2025-01-09 06:53:00', 1),
(649, 59, '237', 'Hydraulic Press: Lubrication system malfunction', '2025-02-27 06:31:00', 1),
(650, 55, '934', 'Milling Machine: Power surge caused unexpected shutdown', '2025-02-14 21:14:00', 1),
(651, 59, '915', 'Grinding Machine: Lubrication system malfunction', '2025-03-01 10:10:00', 1),
(652, 56, '847', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-01 22:05:00', 1),
(653, 52, '577', 'Robotic Welder: Software update failed', '2025-02-18 04:29:00', 1),
(654, 52, '825', 'Stamping Press: Overheating detected during continuous operation', '2025-01-11 17:07:00', 0),
(655, 58, '720', 'CNC Lathe: Calibration error affecting precision', '2025-02-13 02:25:00', 1),
(656, 56, '461', 'Robotic Welder: Temperature sensor out of range', '2025-02-06 19:10:00', 0),
(657, 59, '879', 'Assembly Robot: Calibration error affecting precision', '2025-01-29 22:16:00', 1),
(658, 60, '133', 'Robotic Welder: Temperature sensor out of range', '2025-02-02 12:57:00', 0),
(659, 52, '429', 'Milling Machine: Overheating detected during continuous operation', '2025-02-08 00:10:00', 1),
(660, 54, '555', 'Injection Molder: Alignment error in moving parts', '2025-02-26 18:57:00', 0),
(661, 57, '647', 'Hydraulic Press: Calibration error affecting precision', '2025-02-27 11:36:00', 1),
(662, 59, '570', 'Hydraulic Press: Calibration error affecting precision', '2025-02-01 00:33:00', 1),
(663, 58, '886', 'CNC Lathe: Communication timeout with control system', '2025-03-01 18:55:00', 0),
(664, 57, '611', 'Assembly Robot: Calibration error affecting precision', '2025-01-20 05:13:00', 0),
(665, 53, '256', 'CNC Lathe: Excessive vibration detected', '2025-01-03 14:00:00', 0),
(666, 58, '356', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-09 05:03:00', 1),
(667, 51, '322', 'Hydraulic Press: Software update failed', '2025-01-19 17:42:00', 0),
(668, 58, '619', 'Stamping Press: Lubrication system malfunction', '2025-02-22 16:47:00', 1),
(669, 51, '747', 'Robotic Welder: Alignment error in moving parts', '2025-01-15 05:23:00', 0),
(670, 54, '948', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-09 01:15:00', 0),
(671, 60, '540', 'Injection Molder: Software update failed', '2025-01-09 23:23:00', 0),
(672, 53, '236', 'Grinding Machine: Overheating detected during continuous operation', '2025-01-26 02:07:00', 0),
(673, 57, '995', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-04 13:33:00', 0),
(674, 53, '556', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-28 04:29:00', 1),
(675, 53, '286', 'Injection Molder: Lubrication system malfunction', '2025-01-20 02:28:00', 0),
(676, 60, '393', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-27 06:05:00', 1),
(677, 58, '764', 'Laser Cutter: Alignment error in moving parts', '2025-02-07 03:48:00', 1),
(678, 58, '116', 'Assembly Robot: Lubrication system malfunction', '2025-01-28 17:14:00', 0),
(679, 54, '786', 'Assembly Robot: Sensor failure detected', '2025-02-09 04:55:00', 0),
(680, 56, '418', 'Milling Machine: Power surge caused unexpected shutdown', '2025-02-04 01:38:00', 1),
(681, 51, '201', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-04 04:17:00', 1),
(682, 54, '370', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-09 12:13:00', 1),
(683, 60, '265', 'CNC Lathe: Temperature sensor out of range', '2025-02-11 02:32:00', 0),
(684, 51, '393', 'Injection Molder: Calibration error affecting precision', '2025-01-29 22:18:00', 1),
(685, 55, '297', 'Assembly Robot: Calibration error affecting precision', '2025-01-20 06:24:00', 0),
(686, 59, '507', 'Grinding Machine: Temperature sensor out of range', '2025-01-15 00:17:00', 0),
(687, 53, '868', 'Stamping Press: Communication timeout with control system', '2025-02-05 12:47:00', 0),
(688, 56, '790', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-12 17:59:00', 1),
(689, 51, '975', 'Stamping Press: Calibration error affecting precision', '2025-01-05 19:46:00', 1),
(690, 52, '505', 'Stamping Press: Software update failed', '2025-02-26 17:52:00', 0),
(691, 52, '187', 'Hydraulic Press: Lubrication system malfunction', '2025-01-11 06:52:00', 1),
(692, 60, '420', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-28 13:55:00', 1),
(693, 58, '256', 'Laser Cutter: Calibration error affecting precision', '2025-01-02 17:34:00', 1),
(694, 57, '199', 'Stamping Press: Calibration error affecting precision', '2025-02-01 06:42:00', 1),
(695, 58, '626', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-06 20:24:00', 0),
(696, 53, '635', 'Robotic Welder: Software update failed', '2025-02-12 16:15:00', 0),
(697, 55, '755', 'Hydraulic Press: Lubrication system malfunction', '2025-01-24 06:08:00', 1),
(698, 52, '182', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-29 00:37:00', 0),
(699, 56, '655', 'Robotic Welder: Excessive vibration detected', '2025-01-25 09:39:00', 0),
(700, 59, '929', 'Heat Treatment Oven: Software update failed', '2025-02-18 07:02:00', 0),
(701, 56, '738', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-28 00:36:00', 0),
(702, 56, '411', 'Hydraulic Press: Software update failed', '2025-01-05 13:38:00', 0),
(703, 55, '885', 'Heat Treatment Oven: Sensor failure detected', '2025-02-07 04:58:00', 0),
(704, 59, '130', 'Assembly Robot: Lubrication system malfunction', '2025-02-01 23:23:00', 1),
(705, 57, '288', 'Milling Machine: Sensor failure detected', '2025-01-19 09:06:00', 0),
(706, 52, '932', 'Hydraulic Press: Software update failed', '2025-01-12 04:26:00', 1),
(707, 57, '605', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-02-28 01:19:00', 0),
(708, 55, '763', 'Robotic Welder: Alignment error in moving parts', '2025-01-11 21:54:00', 1),
(709, 58, '971', 'Stamping Press: Sensor failure detected', '2025-02-23 08:03:00', 0),
(710, 60, '210', 'Assembly Robot: Sensor failure detected', '2025-01-25 02:13:00', 1),
(711, 57, '510', 'Injection Molder: Software update failed', '2025-01-23 23:48:00', 0),
(712, 51, '994', 'Assembly Robot: Overheating detected during continuous operation', '2025-02-08 04:56:00', 0),
(713, 52, '239', 'Robotic Welder: Calibration error affecting precision', '2025-02-26 03:57:00', 0),
(714, 59, '132', 'Assembly Robot: Alignment error in moving parts', '2025-02-19 07:07:00', 1),
(715, 60, '953', 'Assembly Robot: Software update failed', '2025-01-20 20:17:00', 1),
(716, 56, '214', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-30 00:39:00', 0),
(717, 60, '110', 'Robotic Welder: Alignment error in moving parts', '2025-01-23 20:04:00', 1),
(718, 51, '538', 'Injection Molder: Alignment error in moving parts', '2025-02-27 20:28:00', 1),
(719, 55, '143', 'Assembly Robot: Excessive vibration detected', '2025-02-21 18:10:00', 1),
(720, 57, '426', 'Grinding Machine: Calibration error affecting precision', '2025-01-11 10:42:00', 0),
(721, 58, '375', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-31 19:34:00', 0),
(722, 55, '868', 'Heat Treatment Oven: Sensor failure detected', '2025-02-12 13:37:00', 0),
(723, 54, '652', 'Grinding Machine: Alignment error in moving parts', '2025-01-26 06:59:00', 0),
(724, 60, '238', 'Heat Treatment Oven: Sensor failure detected', '2025-02-10 10:09:00', 1),
(725, 52, '145', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-01-31 21:51:00', 1),
(726, 59, '141', 'Assembly Robot: Temperature sensor out of range', '2025-01-22 14:53:00', 1),
(727, 57, '176', 'Laser Cutter: Temperature sensor out of range', '2025-02-22 04:16:00', 1),
(728, 54, '430', 'Stamping Press: Sensor failure detected', '2025-02-21 02:00:00', 1),
(729, 56, '553', 'Heat Treatment Oven: Calibration error affecting precision', '2025-02-28 10:12:00', 1),
(730, 52, '682', 'Stamping Press: Communication timeout with control system', '2025-01-05 02:20:00', 0),
(731, 58, '747', 'Robotic Welder: Communication timeout with control system', '2025-01-28 20:50:00', 1),
(732, 60, '768', 'Grinding Machine: Temperature sensor out of range', '2025-01-29 00:40:00', 0),
(733, 56, '826', 'Robotic Welder: Lubrication system malfunction', '2025-01-28 17:12:00', 1),
(734, 58, '402', 'Milling Machine: Communication timeout with control system', '2025-01-20 06:25:00', 0),
(735, 52, '942', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-29 17:13:00', 1),
(736, 51, '614', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-01 20:42:00', 1),
(737, 56, '173', 'Stamping Press: Calibration error affecting precision', '2025-02-04 11:46:00', 0),
(738, 56, '626', 'Robotic Welder: Temperature sensor out of range', '2025-02-28 13:49:00', 0),
(739, 60, '485', 'Hydraulic Press: Alignment error in moving parts', '2025-02-17 23:27:00', 0),
(740, 56, '715', 'Assembly Robot: Communication timeout with control system', '2025-01-18 23:02:00', 0),
(741, 53, '632', 'CNC Lathe: Alignment error in moving parts', '2025-01-10 17:07:00', 0),
(742, 51, '637', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-22 15:13:00', 0),
(743, 51, '820', 'Grinding Machine: Excessive vibration detected', '2025-02-23 18:06:00', 0),
(744, 51, '461', 'Grinding Machine: Calibration error affecting precision', '2025-01-14 15:31:00', 1),
(745, 60, '763', 'Assembly Robot: Lubrication system malfunction', '2025-02-09 13:45:00', 0),
(746, 55, '743', 'Milling Machine: Sensor failure detected', '2025-02-14 18:35:00', 1),
(747, 55, '381', 'Milling Machine: Calibration error affecting precision', '2025-01-08 02:15:00', 1),
(748, 60, '778', 'CNC Lathe: Excessive vibration detected', '2025-01-16 16:42:00', 0),
(749, 60, '715', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-17 06:59:00', 0),
(750, 58, '312', 'Heat Treatment Oven: Calibration error affecting precision', '2025-01-01 10:15:00', 1),
(751, 58, '186', 'Hydraulic Press: Alignment error in moving parts', '2025-02-21 06:39:00', 1),
(752, 59, '696', 'Stamping Press: Communication timeout with control system', '2025-01-04 01:02:00', 0),
(753, 52, '667', 'Stamping Press: Communication timeout with control system', '2025-01-26 15:57:00', 1),
(754, 53, '883', 'Laser Cutter: Calibration error affecting precision', '2025-02-28 12:36:00', 0),
(755, 57, '852', 'Hydraulic Press: Communication timeout with control system', '2025-02-08 20:22:00', 0),
(756, 54, '778', 'Grinding Machine: Temperature sensor out of range', '2025-01-19 07:36:00', 0),
(757, 60, '205', 'Grinding Machine: Excessive vibration detected', '2025-02-17 08:26:00', 0),
(758, 54, '274', 'CNC Lathe: Lubrication system malfunction', '2025-01-31 00:35:00', 1),
(759, 58, '934', 'Injection Molder: Communication timeout with control system', '2025-01-05 21:19:00', 1),
(760, 56, '255', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-28 15:19:00', 1),
(761, 57, '936', 'Assembly Robot: Calibration error affecting precision', '2025-01-24 12:30:00', 1),
(762, 60, '134', 'Robotic Welder: Temperature sensor out of range', '2025-01-29 06:50:00', 0),
(763, 58, '355', 'Milling Machine: Sensor failure detected', '2025-02-23 11:48:00', 1),
(764, 54, '115', 'CNC Lathe: Sensor failure detected', '2025-02-03 16:42:00', 1),
(765, 56, '401', 'Grinding Machine: Communication timeout with control system', '2025-02-03 10:27:00', 0),
(766, 59, '938', 'Milling Machine: Sensor failure detected', '2025-01-07 10:56:00', 0),
(767, 51, '176', 'Milling Machine: Power surge caused unexpected shutdown', '2025-01-16 13:09:00', 0),
(768, 57, '199', 'Stamping Press: Software update failed', '2025-02-14 20:04:00', 1),
(769, 58, '615', 'Injection Molder: Alignment error in moving parts', '2025-02-17 00:47:00', 1),
(770, 60, '173', 'Stamping Press: Temperature sensor out of range', '2025-01-08 05:51:00', 1),
(771, 52, '268', 'Injection Molder: Alignment error in moving parts', '2025-02-20 07:04:00', 0),
(772, 59, '157', 'Assembly Robot: Communication timeout with control system', '2025-01-05 00:53:00', 0),
(773, 54, '563', 'Laser Cutter: Calibration error affecting precision', '2025-03-01 14:04:00', 1),
(774, 57, '499', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-01-17 15:29:00', 0),
(775, 58, '638', 'Stamping Press: Power surge caused unexpected shutdown', '2025-02-05 03:50:00', 1),
(776, 57, '572', 'Grinding Machine: Lubrication system malfunction', '2025-01-15 14:12:00', 0),
(777, 58, '899', 'Milling Machine: Communication timeout with control system', '2025-01-27 22:27:00', 0),
(778, 57, '156', 'Robotic Welder: Lubrication system malfunction', '2025-02-17 06:54:00', 1),
(779, 60, '671', 'Milling Machine: Communication timeout with control system', '2025-01-30 01:45:00', 1),
(780, 51, '361', 'Milling Machine: Lubrication system malfunction', '2025-02-14 04:40:00', 1),
(781, 60, '528', 'Injection Molder: Excessive vibration detected', '2025-01-03 12:31:00', 0),
(782, 57, '981', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-15 09:17:00', 0),
(783, 53, '460', 'Robotic Welder: Alignment error in moving parts', '2025-01-20 13:48:00', 0),
(784, 54, '828', 'Heat Treatment Oven: Calibration error affecting precision', '2025-01-01 13:51:00', 1),
(785, 54, '977', 'Grinding Machine: Power surge caused unexpected shutdown', '2025-02-11 18:46:00', 1),
(786, 55, '700', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-25 03:32:00', 0),
(787, 55, '614', 'Laser Cutter: Software update failed', '2025-01-17 10:20:00', 0),
(788, 60, '642', 'Hydraulic Press: Software update failed', '2025-01-09 23:31:00', 1),
(789, 58, '776', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-17 04:35:00', 0),
(790, 53, '852', 'Laser Cutter: Power surge caused unexpected shutdown', '2025-02-12 16:23:00', 1),
(791, 51, '799', 'Stamping Press: Calibration error affecting precision', '2025-02-11 23:50:00', 0),
(792, 57, '627', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-01-23 16:24:00', 1),
(793, 54, '859', 'Milling Machine: Software update failed', '2025-02-09 14:03:00', 0),
(794, 51, '794', 'Grinding Machine: Temperature sensor out of range', '2025-01-20 08:47:00', 1),
(795, 52, '977', 'Injection Molder: Communication timeout with control system', '2025-02-08 00:06:00', 0),
(796, 51, '945', 'Injection Molder: Lubrication system malfunction', '2025-01-30 16:56:00', 1),
(797, 55, '503', 'Assembly Robot: Lubrication system malfunction', '2025-01-31 19:30:00', 0),
(798, 51, '909', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-21 10:15:00', 1),
(799, 58, '110', 'Grinding Machine: Calibration error affecting precision', '2025-01-06 02:16:00', 0),
(800, 53, '385', 'Assembly Robot: Excessive vibration detected', '2025-01-07 20:01:00', 1),
(801, 55, '795', 'Injection Molder: Calibration error affecting precision', '2025-01-19 01:20:00', 1),
(802, 58, '883', 'Milling Machine: Alignment error in moving parts', '2025-01-30 11:56:00', 0),
(803, 54, '265', 'Assembly Robot: Sensor failure detected', '2025-02-02 12:05:00', 1),
(804, 60, '320', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-05 07:17:00', 1),
(805, 58, '359', 'Hydraulic Press: Temperature sensor out of range', '2025-01-21 11:25:00', 1),
(806, 51, '388', 'Injection Molder: Overheating detected during continuous operation', '2025-01-06 05:59:00', 0),
(807, 60, '281', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-02-03 03:09:00', 0),
(808, 60, '806', 'Hydraulic Press: Communication timeout with control system', '2025-02-08 22:48:00', 0),
(809, 58, '935', 'Injection Molder: Lubrication system malfunction', '2025-01-16 16:35:00', 1),
(810, 52, '711', 'CNC Lathe: Overheating detected during continuous operation', '2025-01-11 17:07:00', 0),
(811, 58, '345', 'Milling Machine: Communication timeout with control system', '2025-02-08 18:49:00', 1),
(812, 51, '618', 'Stamping Press: Temperature sensor out of range', '2025-02-07 22:45:00', 1),
(813, 57, '417', 'Assembly Robot: Excessive vibration detected', '2025-02-20 16:54:00', 0),
(814, 58, '282', 'Grinding Machine: Communication timeout with control system', '2025-02-08 22:52:00', 1),
(815, 60, '143', 'Injection Molder: Sensor failure detected', '2025-01-12 22:05:00', 1),
(816, 51, '142', 'Milling Machine: Overheating detected during continuous operation', '2025-01-26 01:01:00', 1),
(817, 57, '393', 'Assembly Robot: Temperature sensor out of range', '2025-01-25 21:11:00', 0),
(818, 59, '593', 'CNC Lathe: Excessive vibration detected', '2025-02-14 07:19:00', 1),
(819, 55, '146', 'CNC Lathe: Excessive vibration detected', '2025-01-26 10:53:00', 0),
(820, 54, '952', 'Grinding Machine: Calibration error affecting precision', '2025-02-02 02:54:00', 0),
(821, 56, '880', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-02-15 03:31:00', 0),
(822, 51, '974', 'Stamping Press: Sensor failure detected', '2025-02-10 09:55:00', 0),
(823, 55, '777', 'Laser Cutter: Communication timeout with control system', '2025-01-27 22:28:00', 1),
(824, 51, '919', 'Robotic Welder: Temperature sensor out of range', '2025-01-04 21:23:00', 0),
(825, 60, '191', 'Stamping Press: Excessive vibration detected', '2025-01-31 20:47:00', 0),
(826, 57, '227', 'Stamping Press: Software update failed', '2025-02-13 17:34:00', 1),
(827, 56, '665', 'Laser Cutter: Overheating detected during continuous operation', '2025-02-07 21:39:00', 1),
(828, 59, '592', 'Hydraulic Press: Sensor failure detected', '2025-02-26 20:20:00', 0),
(829, 51, '460', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-16 14:44:00', 1),
(830, 51, '849', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-02-11 05:57:00', 0),
(831, 51, '893', 'Hydraulic Press: Software update failed', '2025-01-26 05:53:00', 1),
(832, 52, '520', 'Grinding Machine: Overheating detected during continuous operation', '2025-01-22 19:58:00', 0),
(833, 52, '702', 'Assembly Robot: Software update failed', '2025-01-19 16:37:00', 0),
(834, 54, '448', 'CNC Lathe: Software update failed', '2025-02-22 09:19:00', 0),
(835, 53, '186', 'Stamping Press: Temperature sensor out of range', '2025-02-28 15:11:00', 0),
(836, 58, '469', 'Heat Treatment Oven: Sensor failure detected', '2025-02-17 02:01:00', 1),
(837, 54, '184', 'Injection Molder: Excessive vibration detected', '2025-02-15 09:37:00', 1),
(838, 60, '849', 'Robotic Welder: Calibration error affecting precision', '2025-02-23 22:57:00', 1),
(839, 51, '489', 'Heat Treatment Oven: Sensor failure detected', '2025-02-22 09:20:00', 1),
(840, 57, '857', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-27 14:06:00', 1),
(841, 55, '217', 'Hydraulic Press: Alignment error in moving parts', '2025-01-26 08:25:00', 0),
(842, 52, '637', 'Injection Molder: Lubrication system malfunction', '2025-01-17 18:04:00', 0),
(843, 59, '428', 'Hydraulic Press: Temperature sensor out of range', '2025-01-15 23:13:00', 0),
(844, 51, '746', 'Laser Cutter: Sensor failure detected', '2025-01-21 14:03:00', 0),
(845, 51, '906', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-01 01:13:00', 1),
(846, 52, '943', 'Hydraulic Press: Overheating detected during continuous operation', '2025-02-20 22:14:00', 0),
(847, 52, '684', 'Assembly Robot: Software update failed', '2025-01-18 17:43:00', 0),
(848, 51, '182', 'Hydraulic Press: Alignment error in moving parts', '2025-02-14 17:22:00', 1),
(849, 54, '828', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-02-15 13:25:00', 0),
(850, 51, '910', 'Robotic Welder: Software update failed', '2025-02-11 16:20:00', 1),
(851, 52, '875', 'Grinding Machine: Alignment error in moving parts', '2025-02-16 20:59:00', 0),
(852, 59, '186', 'Heat Treatment Oven: Lubrication system malfunction', '2025-01-01 06:22:00', 0),
(853, 60, '738', 'Assembly Robot: Sensor failure detected', '2025-02-18 22:10:00', 0),
(854, 52, '343', 'Heat Treatment Oven: Software update failed', '2025-02-11 18:46:00', 1),
(855, 54, '157', 'Robotic Welder: Communication timeout with control system', '2025-01-21 06:21:00', 0),
(856, 60, '723', 'Stamping Press: Overheating detected during continuous operation', '2025-01-31 08:07:00', 1),
(857, 58, '820', 'Grinding Machine: Alignment error in moving parts', '2025-02-11 14:59:00', 0),
(858, 57, '966', 'Assembly Robot: Calibration error affecting precision', '2025-01-08 08:20:00', 1),
(859, 53, '212', 'Heat Treatment Oven: Lubrication system malfunction', '2025-02-20 13:13:00', 0),
(860, 57, '703', 'Laser Cutter: Alignment error in moving parts', '2025-02-07 04:04:00', 1),
(861, 59, '913', 'Grinding Machine: Temperature sensor out of range', '2025-01-11 13:14:00', 1),
(862, 51, '666', 'Heat Treatment Oven: Software update failed', '2025-02-18 05:45:00', 0),
(863, 52, '508', 'Grinding Machine: Excessive vibration detected', '2025-02-15 04:40:00', 1),
(864, 51, '670', 'Hydraulic Press: Excessive vibration detected', '2025-02-05 12:54:00', 1),
(865, 51, '624', 'Stamping Press: Sensor failure detected', '2025-02-26 14:15:00', 0),
(866, 56, '323', 'Stamping Press: Lubrication system malfunction', '2025-02-17 06:58:00', 0),
(867, 56, '688', 'Injection Molder: Communication timeout with control system', '2025-02-15 10:57:00', 0),
(868, 54, '469', 'CNC Lathe: Excessive vibration detected', '2025-01-07 01:01:00', 1),
(869, 56, '931', 'Heat Treatment Oven: Power surge caused unexpected shutdown', '2025-01-06 19:52:00', 1),
(870, 57, '716', 'Injection Molder: Sensor failure detected', '2025-01-22 17:32:00', 1),
(871, 60, '155', 'Laser Cutter: Alignment error in moving parts', '2025-01-31 14:26:00', 0),
(872, 58, '534', 'Hydraulic Press: Communication timeout with control system', '2025-02-23 23:10:00', 1),
(873, 54, '906', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-02-24 22:59:00', 0),
(874, 56, '576', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-02-07 20:21:00', 0),
(875, 53, '568', 'Grinding Machine: Communication timeout with control system', '2025-02-24 04:05:00', 1),
(876, 57, '382', 'Laser Cutter: Overheating detected during continuous operation', '2025-01-27 00:52:00', 0),
(877, 58, '181', 'CNC Lathe: Calibration error affecting precision', '2025-02-02 05:27:00', 1),
(878, 58, '885', 'Hydraulic Press: Software update failed', '2025-02-04 21:49:00', 0),
(879, 57, '851', 'Robotic Welder: Overheating detected during continuous operation', '2025-01-23 16:13:00', 0),
(880, 51, '811', 'Grinding Machine: Alignment error in moving parts', '2025-01-02 01:14:00', 0),
(881, 54, '736', 'Injection Molder: Power surge caused unexpected shutdown', '2025-01-02 06:16:00', 1),
(882, 60, '141', 'Injection Molder: Excessive vibration detected', '2025-01-13 09:21:00', 1),
(883, 51, '296', 'CNC Lathe: Lubrication system malfunction', '2025-02-07 11:30:00', 0),
(884, 52, '249', 'Injection Molder: Software update failed', '2025-01-27 05:52:00', 1),
(885, 56, '868', 'Stamping Press: Lubrication system malfunction', '2025-02-20 13:22:00', 0),
(886, 56, '485', 'Injection Molder: Excessive vibration detected', '2025-01-08 23:35:00', 1),
(887, 52, '734', 'Hydraulic Press: Lubrication system malfunction', '2025-01-17 18:07:00', 0),
(888, 58, '210', 'Robotic Welder: Sensor failure detected', '2025-02-04 22:53:00', 1),
(889, 59, '973', 'Injection Molder: Calibration error affecting precision', '2025-01-31 03:05:00', 0),
(890, 52, '459', 'Stamping Press: Excessive vibration detected', '2025-01-29 18:27:00', 1),
(891, 56, '944', 'Heat Treatment Oven: Excessive vibration detected', '2025-02-01 00:33:00', 1),
(892, 60, '426', 'Hydraulic Press: Communication timeout with control system', '2025-02-22 02:49:00', 1),
(893, 57, '778', 'Grinding Machine: Software update failed', '2025-01-11 01:45:00', 1),
(894, 59, '419', 'Milling Machine: Calibration error affecting precision', '2025-02-24 03:02:00', 1),
(895, 56, '406', 'Milling Machine: Software update failed', '2025-01-22 18:52:00', 1),
(896, 54, '933', 'Injection Molder: Lubrication system malfunction', '2025-02-03 23:12:00', 0),
(897, 59, '118', 'Laser Cutter: Lubrication system malfunction', '2025-01-11 05:36:00', 0),
(898, 59, '448', 'Milling Machine: Sensor failure detected', '2025-02-12 13:46:00', 0),
(899, 54, '432', 'Assembly Robot: Excessive vibration detected', '2025-02-10 23:49:00', 0),
(900, 56, '293', 'Robotic Welder: Power surge caused unexpected shutdown', '2025-02-27 03:56:00', 0),
(901, 51, '899', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-02-22 11:50:00', 1),
(902, 52, '733', 'Heat Treatment Oven: Alignment error in moving parts', '2025-02-01 14:25:00', 0),
(903, 55, '329', 'Grinding Machine: Alignment error in moving parts', '2025-02-13 14:46:00', 0),
(904, 52, '450', 'Laser Cutter: Alignment error in moving parts', '2025-01-21 22:35:00', 0),
(905, 52, '182', 'CNC Lathe: Calibration error affecting precision', '2025-01-23 11:20:00', 0),
(906, 53, '675', 'Robotic Welder: Temperature sensor out of range', '2025-02-12 07:24:00', 0),
(907, 54, '653', 'Grinding Machine: Lubrication system malfunction', '2025-01-11 03:18:00', 0),
(908, 54, '467', 'Hydraulic Press: Sensor failure detected', '2025-01-22 18:49:00', 1),
(909, 54, '331', 'Robotic Welder: Calibration error affecting precision', '2025-01-29 00:38:00', 0),
(910, 60, '279', 'Hydraulic Press: Power surge caused unexpected shutdown', '2025-02-04 06:33:00', 0),
(911, 55, '239', 'Injection Molder: Temperature sensor out of range', '2025-01-17 06:26:00', 0),
(912, 59, '117', 'Injection Molder: Communication timeout with control system', '2025-02-06 18:58:00', 1),
(913, 60, '287', 'CNC Lathe: Temperature sensor out of range', '2025-02-01 09:22:00', 1),
(914, 54, '891', 'Hydraulic Press: Sensor failure detected', '2025-01-10 17:06:00', 0),
(915, 56, '647', 'Injection Molder: Power surge caused unexpected shutdown', '2025-02-26 23:06:00', 1),
(916, 57, '536', 'Injection Molder: Excessive vibration detected', '2025-02-17 10:54:00', 0),
(917, 52, '160', 'Heat Treatment Oven: Temperature sensor out of range', '2025-02-21 23:19:00', 1),
(918, 55, '281', 'Stamping Press: Alignment error in moving parts', '2025-01-21 18:45:00', 0),
(919, 52, '271', 'Laser Cutter: Sensor failure detected', '2025-02-28 19:12:00', 1),
(920, 54, '975', 'Assembly Robot: Overheating detected during continuous operation', '2025-02-27 14:08:00', 1),
(921, 60, '393', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-18 16:38:00', 0),
(922, 55, '263', 'Injection Molder: Temperature sensor out of range', '2025-01-23 14:56:00', 1),
(923, 56, '956', 'Milling Machine: Power surge caused unexpected shutdown', '2025-02-12 17:31:00', 0),
(924, 58, '219', 'Laser Cutter: Sensor failure detected', '2025-01-16 03:01:00', 1),
(925, 53, '216', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-27 18:31:00', 0),
(926, 52, '583', 'Robotic Welder: Calibration error affecting precision', '2025-02-14 04:47:00', 0),
(927, 56, '625', 'Milling Machine: Lubrication system malfunction', '2025-01-09 22:16:00', 1),
(928, 60, '161', 'Laser Cutter: Sensor failure detected', '2025-01-04 08:34:00', 1),
(929, 54, '321', 'Milling Machine: Sensor failure detected', '2025-01-17 05:17:00', 1),
(930, 51, '108', 'Grinding Machine: Overheating detected during continuous operation', '2025-02-15 16:13:00', 1),
(931, 53, '465', 'Milling Machine: Excessive vibration detected', '2025-02-01 03:13:00', 1),
(932, 55, '321', 'Heat Treatment Oven: Calibration error affecting precision', '2025-02-12 03:40:00', 1),
(933, 55, '535', 'Hydraulic Press: Calibration error affecting precision', '2025-02-04 06:38:00', 0),
(934, 60, '615', 'CNC Lathe: Lubrication system malfunction', '2025-02-10 16:20:00', 1),
(935, 55, '972', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-19 19:12:00', 1),
(936, 53, '587', 'Heat Treatment Oven: Overheating detected during continuous operation', '2025-02-06 18:04:00', 0),
(937, 60, '673', 'Robotic Welder: Temperature sensor out of range', '2025-02-25 05:26:00', 1),
(938, 53, '628', 'Milling Machine: Lubrication system malfunction', '2025-02-22 18:09:00', 1),
(939, 54, '888', 'Injection Molder: Lubrication system malfunction', '2025-02-09 11:21:00', 0),
(940, 51, '777', 'Assembly Robot: Lubrication system malfunction', '2025-01-29 16:03:00', 0),
(941, 59, '830', 'Robotic Welder: Lubrication system malfunction', '2025-01-23 08:33:00', 1),
(942, 55, '649', 'Grinding Machine: Calibration error affecting precision', '2025-02-02 03:04:00', 1),
(943, 56, '136', 'Injection Molder: Overheating detected during continuous operation', '2025-01-07 07:11:00', 0),
(944, 57, '272', 'Heat Treatment Oven: Calibration error affecting precision', '2025-01-07 23:29:00', 1),
(945, 53, '789', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-08 19:34:00', 1),
(946, 60, '940', 'Heat Treatment Oven: Software update failed', '2025-02-28 22:50:00', 0),
(947, 54, '757', 'Laser Cutter: Communication timeout with control system', '2025-02-02 10:38:00', 1),
(948, 54, '169', 'Injection Molder: Excessive vibration detected', '2025-02-17 12:19:00', 1),
(949, 60, '978', 'Heat Treatment Oven: Alignment error in moving parts', '2025-01-28 08:28:00', 0),
(950, 60, '753', 'Heat Treatment Oven: Communication timeout with control system', '2025-01-16 02:42:00', 0),
(951, 51, '596', 'Stamping Press: Sensor failure detected', '2025-01-05 05:58:00', 0),
(952, 60, '266', 'CNC Lathe: Software update failed', '2025-01-22 00:58:00', 1),
(953, 54, '997', 'CNC Lathe: Sensor failure detected', '2025-01-24 00:51:00', 0),
(954, 59, '376', 'CNC Lathe: Sensor failure detected', '2025-01-23 23:45:00', 1),
(955, 51, '626', 'Grinding Machine: Sensor failure detected', '2025-01-18 10:12:00', 1),
(956, 54, '552', 'Robotic Welder: Sensor failure detected', '2025-01-29 10:46:00', 1),
(957, 55, '716', 'CNC Lathe: Software update failed', '2025-02-18 03:19:00', 0),
(958, 60, '294', 'Milling Machine: Communication timeout with control system', '2025-01-27 23:28:00', 0),
(959, 60, '517', 'Robotic Welder: Lubrication system malfunction', '2025-01-24 10:05:00', 0),
(960, 51, '310', 'Heat Treatment Oven: Excessive vibration detected', '2025-01-22 08:39:00', 0),
(961, 53, '414', 'Hydraulic Press: Lubrication system malfunction', '2025-01-18 20:26:00', 1),
(962, 58, '996', 'Stamping Press: Sensor failure detected', '2025-02-18 23:26:00', 0),
(963, 51, '418', 'Stamping Press: Power surge caused unexpected shutdown', '2025-01-28 09:32:00', 1),
(964, 51, '845', 'Grinding Machine: Excessive vibration detected', '2025-02-20 11:59:00', 0),
(965, 53, '736', 'Heat Treatment Oven: Lubrication system malfunction', '2025-03-01 06:25:00', 0),
(966, 53, '428', 'CNC Lathe: Calibration error affecting precision', '2025-02-03 08:07:00', 1),
(967, 53, '758', 'Grinding Machine: Calibration error affecting precision', '2025-01-20 01:24:00', 1),
(968, 60, '175', 'Stamping Press: Overheating detected during continuous operation', '2025-01-26 21:11:00', 0),
(969, 58, '782', 'Stamping Press: Calibration error affecting precision', '2025-02-04 12:48:00', 0),
(970, 51, '780', 'Stamping Press: Software update failed', '2025-02-21 09:26:00', 0),
(971, 58, '686', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-01-10 01:44:00', 1),
(972, 57, '563', 'Stamping Press: Lubrication system malfunction', '2025-01-06 16:06:00', 0),
(973, 52, '326', 'Grinding Machine: Sensor failure detected', '2025-01-18 10:14:00', 1),
(974, 59, '435', 'Injection Molder: Software update failed', '2025-01-29 13:26:00', 0),
(975, 51, '867', 'CNC Lathe: Software update failed', '2025-01-19 18:52:00', 0),
(976, 59, '846', 'Stamping Press: Software update failed', '2025-02-24 12:52:00', 1),
(977, 55, '707', 'Hydraulic Press: Lubrication system malfunction', '2025-01-28 15:47:00', 0),
(978, 58, '664', 'Heat Treatment Oven: Temperature sensor out of range', '2025-01-01 17:40:00', 0),
(979, 59, '661', 'Stamping Press: Sensor failure detected', '2025-02-08 07:34:00', 1),
(980, 53, '278', 'Milling Machine: Temperature sensor out of range', '2025-01-09 07:08:00', 1),
(981, 56, '561', 'Grinding Machine: Communication timeout with control system', '2025-01-01 13:52:00', 1),
(982, 55, '583', 'Milling Machine: Alignment error in moving parts', '2025-01-29 10:42:00', 0),
(983, 52, '202', 'CNC Lathe: Excessive vibration detected', '2025-01-05 19:57:00', 0),
(984, 55, '617', 'Injection Molder: Lubrication system malfunction', '2025-01-21 02:24:00', 1),
(985, 58, '244', 'Stamping Press: Software update failed', '2025-02-18 02:10:00', 1),
(986, 52, '250', 'Robotic Welder: Sensor failure detected', '2025-01-28 09:32:00', 1),
(987, 51, '861', 'Heat Treatment Oven: Calibration error affecting precision', '2025-01-06 22:17:00', 1),
(988, 59, '921', 'CNC Lathe: Alignment error in moving parts', '2025-02-25 17:49:00', 1),
(989, 56, '572', 'Hydraulic Press: Software update failed', '2025-02-01 16:57:00', 1),
(990, 57, '224', 'Assembly Robot: Power surge caused unexpected shutdown', '2025-02-26 01:23:00', 1),
(991, 51, '829', 'Grinding Machine: Temperature sensor out of range', '2025-01-05 06:05:00', 1),
(992, 51, '150', 'Milling Machine: Calibration error affecting precision', '2025-02-28 10:17:00', 0),
(993, 58, '264', 'Assembly Robot: Communication timeout with control system', '2025-02-13 07:30:00', 1),
(994, 52, '322', 'Assembly Robot: Excessive vibration detected', '2025-01-06 22:24:00', 0),
(995, 58, '439', 'Injection Molder: Sensor failure detected', '2025-01-15 04:10:00', 0),
(996, 52, '655', 'Assembly Robot: Temperature sensor out of range', '2025-02-11 02:29:00', 0),
(997, 53, '996', 'Hydraulic Press: Lubrication system malfunction', '2025-01-17 20:27:00', 1),
(998, 51, '307', 'Heat Treatment Oven: Power surge caused unexpected shutdown', '2025-01-16 14:09:00', 0),
(999, 56, '775', 'CNC Lathe: Power surge caused unexpected shutdown', '2025-02-23 18:08:00', 0),
(1000, 58, '494', 'Heat Treatment Oven: Sensor failure detected', '2025-01-01 23:53:00', 0),
(1024, 59, 'E105', 'Unexpected shutdown', '2025-03-02 09:51:00', 0),
(1025, 55, 'E103', 'Sensor malfunction', '2025-03-02 09:51:04', 0),
(1026, 56, 'E103', 'Sensor malfunction', '2025-03-02 09:51:08', 0),
(1027, 55, 'E101', 'Overheating detected', '2025-03-02 09:51:10', 0),
(1028, 52, 'E102', 'Power failure', '2025-03-02 09:51:13', 0),
(1029, 57, 'E101', 'Overheating detected', '2025-03-02 09:51:15', 0),
(1030, 51, 'E103', 'Sensor malfunction', '2025-03-02 09:51:17', 0),
(1031, 60, 'E103', 'Sensor malfunction', '2025-03-02 09:51:17', 0),
(1032, 58, '105', 'Unexpected shutdown', '2025-03-02 11:45:19', 0),
(1033, 57, '102', 'Power failure', '2025-03-02 11:45:22', 0),
(1034, 60, '101', 'Overheating detected', '2025-03-02 11:45:26', 0),
(1035, 54, '101', 'Overheating detected', '2025-03-02 11:45:29', 0),
(1036, 56, '101', 'Overheating detected', '2025-03-02 11:45:34', 0),
(1037, 52, '102', 'Power failure', '2025-03-02 11:45:35', 0),
(1038, 51, '103', 'Sensor malfunction', '2025-03-02 11:45:36', 0),
(1039, 60, '105', 'Unexpected shutdown', '2025-03-02 11:45:36', 0),
(1040, 53, '101', 'Overheating detected', '2025-03-02 11:45:40', 0),
(1041, 59, '105', 'Unexpected shutdown', '2025-03-02 11:45:40', 0),
(1042, 54, '105', 'Unexpected shutdown', '2025-03-02 11:45:42', 0),
(1043, 52, '103', 'Sensor malfunction', '2025-03-02 11:45:44', 0),
(1044, 52, '105', 'Unexpected shutdown', '2025-03-02 11:45:45', 0),
(1045, 53, '101', 'Overheating detected', '2025-03-02 11:45:49', 0),
(1046, 57, '103', 'Sensor malfunction', '2025-03-02 11:45:51', 0),
(1047, 58, '104', 'Communication loss', '2025-03-02 11:45:53', 0),
(1048, 59, '102', 'Power failure', '2025-03-02 11:45:53', 0),
(1049, 59, '101', 'Overheating detected', '2025-03-02 11:45:55', 0),
(1050, 56, '105', 'Unexpected shutdown', '2025-03-02 11:45:59', 0),
(1051, 53, '103', 'Sensor malfunction', '2025-03-02 11:46:05', 0),
(1052, 51, '105', 'Unexpected shutdown', '2025-03-02 11:46:06', 0),
(1053, 51, '101', 'Overheating detected', '2025-03-02 11:46:14', 0),
(1054, 56, '103', 'Sensor malfunction', '2025-03-02 11:46:16', 0),
(1055, 51, '104', 'Communication loss', '2025-03-02 11:46:20', 0),
(1056, 52, '102', 'Power failure', '2025-03-02 11:46:25', 0),
(1057, 54, '101', 'Overheating detected', '2025-03-02 11:46:27', 0),
(1058, 53, '105', 'Unexpected shutdown', '2025-03-02 11:46:39', 0),
(1059, 53, '101', 'Overheating detected', '2025-03-02 11:46:40', 0),
(1060, 57, '105', 'Unexpected shutdown', '2025-03-02 11:46:42', 0),
(1061, 55, '105', 'Unexpected shutdown', '2025-03-02 11:46:46', 0),
(1062, 54, '104', 'Communication loss', '2025-03-02 11:46:50', 0),
(1063, 55, '105', 'Unexpected shutdown', '2025-03-02 11:46:50', 0),
(1064, 60, '104', 'Communication loss', '2025-03-02 11:46:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `MachineID` int(11) NOT NULL,
  `MachineName` varchar(100) NOT NULL,
  `MachineType` varchar(100) NOT NULL,
  `Status` enum('Active','Idle','Under Maintenance','Error') NOT NULL,
  `Utilization` decimal(5,2) DEFAULT NULL CHECK (`Utilization` between 0 and 100),
  `NumOfProcesses` int(11) DEFAULT 0,
  `WorkstationID` int(11) DEFAULT NULL,
  `CurrentTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`MachineID`, `MachineName`, `MachineType`, `Status`, `Utilization`, `NumOfProcesses`, `WorkstationID`, `CurrentTime`) VALUES
(51, 'Hydraulic Press', 'Hydraulic Press', 'Active', 67.01, 43, 1, '2025-03-02 03:46:54'),
(52, 'Milling Machine', 'Milling Machine', 'Active', 59.41, 66, 1, '2025-03-02 03:46:54'),
(53, 'Robotic Welder', 'Robotic Welder', 'Active', 94.59, 36, 1, '2025-03-02 03:46:54'),
(54, 'Injection Molder', 'Injection Molder', 'Idle', 100.00, 63, 1, '2025-03-02 03:46:53'),
(55, 'Laser Cutter', 'Laser Cutter', 'Idle', 100.00, 35, 1, '2025-03-02 03:46:54'),
(56, 'Stamping Press', 'Stamping Press', 'Active', 57.16, 95, 1, '2025-03-02 03:46:54'),
(57, 'Assembly Robot', 'Assembly Robot', 'Idle', 100.00, 7, 1, '2025-03-02 03:46:54'),
(58, 'Grinding Machine', 'Grinding Machine', 'Active', 39.53, 67, 1, '2025-03-02 03:46:54'),
(59, 'Heat Treatment Oven', 'Heat Treatment Oven', 'Active', 59.13, 8, 1, '2025-03-02 03:46:54'),
(60, 'Quality Control Scanner', 'Quality Control Scanner', 'Error', 31.46, 23, 1, '2025-03-02 03:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `MaintenanceID` int(11) NOT NULL,
  `MachineID` int(11) DEFAULT NULL,
  `WorkerID` int(11) DEFAULT NULL,
  `ScheduledDate` date NOT NULL,
  `CompletionDate` date DEFAULT NULL,
  `MaintenanceType` enum('Preventive','Emergency','Calibration') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `OperationID` int(11) NOT NULL,
  `TransactionID` int(11) DEFAULT NULL,
  `MachineID` int(11) DEFAULT NULL,
  `OperationType` enum('Production','Maintenance','Shutdown','Error','Calibration') NOT NULL,
  `Duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `Output` varchar(255) DEFAULT NULL COMMENT 'Products Created or Efficiency %'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `ProcessID` int(11) NOT NULL,
  `MachineID` int(11) DEFAULT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `Timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rfidsensor`
--

CREATE TABLE `rfidsensor` (
  `RFIDSensorID` int(11) NOT NULL,
  `RFID` varchar(50) DEFAULT NULL,
  `MachineID` int(11) DEFAULT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `ShiftID` int(11) NOT NULL,
  `ShiftName` enum('Day Shift','Night Shift','Weekend Shift') NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`ShiftID`, `ShiftName`, `StartTime`, `EndTime`) VALUES
(1, 'Day Shift', '08:00:00', '16:00:00'),
(2, 'Night Shift', '16:00:00', '00:00:00'),
(3, 'Weekend Shift', '08:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` int(11) NOT NULL,
  `WorkerID` int(11) DEFAULT NULL,
  `MachineID` int(11) DEFAULT NULL,
  `ProcessID` int(11) DEFAULT NULL,
  `Timestamp` datetime DEFAULT current_timestamp(),
  `TransactionType` enum('Start Process','Stop Process','Manual Override') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `WorkerID` int(11) NOT NULL,
  `WorkerFname` varchar(50) NOT NULL,
  `WorkerLname` varchar(50) NOT NULL,
  `RFID` varchar(50) NOT NULL,
  `Role` enum('Technician','Supervisor','Operator','Other') NOT NULL,
  `AccessLevel` enum('Read-Only','Operator','Maintenance') NOT NULL,
  `ShiftID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`WorkerID`, `WorkerFname`, `WorkerLname`, `RFID`, `Role`, `AccessLevel`, `ShiftID`) VALUES
(1, 'John', 'Doe', 'D3DD2DAD', 'Technician', 'Operator', 1),
(2, 'Jane', 'Smith', '6276E26D', 'Operator', 'Operator', 2),
(3, 'Mike', 'Johnson', '123218D2', 'Supervisor', 'Read-Only', 3);

-- --------------------------------------------------------

--
-- Table structure for table `workstation`
--

CREATE TABLE `workstation` (
  `WorkstationID` int(11) NOT NULL,
  `WorkstationName` varchar(100) NOT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workstation`
--

INSERT INTO `workstation` (`WorkstationID`, `WorkstationName`, `Location`) VALUES
(1, 'Main Workstation', 'Factory A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `errorlog`
--
ALTER TABLE `errorlog`
  ADD PRIMARY KEY (`ErrorID`),
  ADD KEY `MachineID` (`MachineID`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`MachineID`),
  ADD KEY `WorkstationID` (`WorkstationID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`MaintenanceID`),
  ADD KEY `MachineID` (`MachineID`),
  ADD KEY `WorkerID` (`WorkerID`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`OperationID`),
  ADD KEY `TransactionID` (`TransactionID`),
  ADD KEY `MachineID` (`MachineID`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`ProcessID`),
  ADD KEY `MachineID` (`MachineID`);

--
-- Indexes for table `rfidsensor`
--
ALTER TABLE `rfidsensor`
  ADD PRIMARY KEY (`RFIDSensorID`),
  ADD KEY `RFID` (`RFID`),
  ADD KEY `MachineID` (`MachineID`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`ShiftID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `WorkerID` (`WorkerID`),
  ADD KEY `MachineID` (`MachineID`),
  ADD KEY `ProcessID` (`ProcessID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`WorkerID`),
  ADD UNIQUE KEY `RFID` (`RFID`),
  ADD KEY `ShiftID` (`ShiftID`);

--
-- Indexes for table `workstation`
--
ALTER TABLE `workstation`
  ADD PRIMARY KEY (`WorkstationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `errorlog`
--
ALTER TABLE `errorlog`
  MODIFY `ErrorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1065;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `MachineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `MaintenanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `OperationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `ProcessID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rfidsensor`
--
ALTER TABLE `rfidsensor`
  MODIFY `RFIDSensorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `ShiftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `WorkerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `workstation`
--
ALTER TABLE `workstation`
  MODIFY `WorkstationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `errorlog`
--
ALTER TABLE `errorlog`
  ADD CONSTRAINT `errorlog_ibfk_1` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`);

--
-- Constraints for table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `machine_ibfk_1` FOREIGN KEY (`WorkstationID`) REFERENCES `workstation` (`WorkstationID`);

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`),
  ADD CONSTRAINT `maintenance_ibfk_2` FOREIGN KEY (`WorkerID`) REFERENCES `worker` (`WorkerID`);

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `transaction` (`TransactionID`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`);

--
-- Constraints for table `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `process_ibfk_1` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`);

--
-- Constraints for table `rfidsensor`
--
ALTER TABLE `rfidsensor`
  ADD CONSTRAINT `rfidsensor_ibfk_1` FOREIGN KEY (`RFID`) REFERENCES `worker` (`RFID`),
  ADD CONSTRAINT `rfidsensor_ibfk_2` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`WorkerID`) REFERENCES `worker` (`WorkerID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`ProcessID`) REFERENCES `process` (`ProcessID`);

--
-- Constraints for table `worker`
--
ALTER TABLE `worker`
  ADD CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`ShiftID`) REFERENCES `shift` (`ShiftID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
