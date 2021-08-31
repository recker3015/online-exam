-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 06:04 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oep`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `nos` int(255) NOT NULL,
  `t_dept` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`nos`, `t_dept`, `type`, `name`) VALUES
(1, 'alteng', 'HONS', 'TDC Honours '),
(2, 'alteng', 'PASS', 'TDC Pass'),
(3, 'compsca', 'BCSHONS', 'TDC BCS Honours'),
(4, 'compsca', 'BCAHONS', 'TDC BCA Honours'),
(5, 'compsca', 'PASS', 'TDC Pass');

-- --------------------------------------------------------

--
-- Table structure for table `qs`
--

CREATE TABLE `qs` (
  `nos` int(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `e_id` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `marks` int(100) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qs`
--

INSERT INTO `qs` (`nos`, `unique_id`, `e_id`, `question`, `ans`, `marks`, `time`) VALUES
(1, 'ab12', 'a1', 'tuAA', '', 0, '2021-08-31 02:46:26'),
(2, 'ab12', 'a1', 'he is a mother fucker bitch?', '', 0, '2021-08-31 02:46:26'),
(4, 'ab12', 'a2', 'hey hey hye monika', '', 0, '2021-08-31 02:46:26'),
(5, 'ab12', 'a2', 'YO MOTHERFUCKER', '', 0, '2021-08-31 02:46:26'),
(6, 'kb1', 'd1', '1st set of question test?', '', 0, '2021-08-31 02:46:26'),
(7, 'kb1', 'd1', 'hoqdy rouqdy?', '', 0, '2021-08-31 02:46:26'),
(8, 'kb1', 'd1', 'Tmr maar Biya?', '', 0, '2021-08-31 02:46:26'),
(9, 'kb1', 'k1', '2nd set of question', '', 0, '2021-08-31 02:46:26'),
(10, 'kb1', 'k1', 'hua kiya alg alg?', '', 0, '2021-08-31 02:46:26'),
(11, 'kb1', 'k1', 'tumar maar pund?', '', 0, '2021-08-31 02:46:26'),
(12, 'ab12', 'z1', 'whsts up?', '', 0, '2021-08-31 02:46:26'),
(13, 'kb1', 'e1', '1sst question?', '', 0, '2021-08-31 02:46:26'),
(14, 'kb1', 'e1', 'tunmar heta?', '', 0, '2021-08-31 02:46:26'),
(15, 'kb1', 'e1', 'last question??', '', 0, '2021-08-31 02:46:26'),
(16, 'kb1', 'r1', 'aaaaddd', '', 0, '2021-08-31 02:46:26'),
(17, 'ab12', 'w1', 'adsdas', '', 0, '2021-08-31 02:46:26'),
(18, 'ab12', 'w1', 'dasdasd', '', 0, '2021-08-31 02:46:26'),
(19, 'ab12', 'w1', 'dasdasd', '', 0, '2021-08-31 02:46:26'),
(20, 'ab12', 'w1', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(21, 'ab12', 'w1', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(22, 'ab12', '55', 'sb zzzzzzd', '', 0, '2021-08-31 02:46:26'),
(23, 'ab12', '55', 'Ami ZOD', '', 0, '2021-08-31 02:46:26'),
(32, 'e12', 'EID-339140', '1st', '', 0, '2021-08-31 02:46:26'),
(33, 'e12', 'EID-339140', '2ds', '', 0, '2021-08-31 02:46:26'),
(34, 'e12', 'EID-339140', '3rdf', '', 0, '2021-08-31 02:46:26'),
(35, 'e12', 'EID-BCS601448', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(36, 'e12', 'EID-BCS601448', 'sdasdasd', '', 0, '2021-08-31 02:46:26'),
(37, 'e12', 'EID-BCS601448', 'asdasda', '', 0, '2021-08-31 02:46:26'),
(38, 'e12', 'EID-BCS601448', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(39, 'e12', 'EID-PASS919761', '1', '', 0, '2021-08-31 02:46:26'),
(40, 'e12', 'EID-PASS919761', '23', '', 0, '2021-08-31 02:46:26'),
(41, 'e12', 'EID-PASS919761', '33', '', 0, '2021-08-31 02:46:26'),
(42, 'e12', 'EID-PASS919761', 'sdas', '', 0, '2021-08-31 02:46:26'),
(43, 'ab12', 'EID-BCA593829', 'asdas', '', 0, '2021-08-31 02:46:26'),
(44, 'ab12', 'EID-BCA593829', 'dqwe', '', 0, '2021-08-31 02:46:26'),
(45, 'ab12', 'EID-BCA593829', 'dasda', '', 0, '2021-08-31 02:46:26'),
(46, 'ab12', 'EID-BCA593829', 'ass', '', 0, '2021-08-31 02:46:26'),
(47, 'ab12', 'EID-PASS4TH061060', 'dasdasd', '', 0, '2021-08-31 02:46:26'),
(48, 'ab12', 'EID-PASS4TH061060', 'Ami hetya', '', 0, '2021-08-31 02:46:26'),
(49, 'ab12', 'EID-PASS4TH061060', 'Ami ZOD', '', 0, '2021-08-31 02:46:26'),
(50, 'ab12', 'EID-PASS4TH061060', 'tukar mar heta', '', 0, '2021-08-31 02:46:26'),
(51, 'sdaweq', 'EIDBCS3RD912728', 'hi i m kmla', '', 0, '2021-08-31 02:46:26'),
(52, 'sdaweq', 'EIDBCS3RD912728', 'amr pl churto', '', 0, '2021-08-31 02:46:26'),
(53, 'sdaweq', 'EIDBCS3RD912728', 'tum dadu kala', '', 0, '2021-08-31 02:46:26'),
(54, 'sdaweq', 'EID-PASS4TH614871', 'hey', '', 0, '2021-08-31 02:46:26'),
(55, 'sdaweq', 'EID-PASS4TH614871', 'kamlar heta', '', 0, '2021-08-31 02:46:26'),
(56, 'sdaweq', 'EID-PASS4TH614871', 'hasdh', '', 0, '2021-08-31 02:46:26'),
(57, 'sdaweq', 'EID-PASS4TH614871', 'knsd', '', 0, '2021-08-31 02:46:26'),
(58, 'gu12', 'EID-BCA3RD952046', 'how is it working', '', 0, '2021-08-31 02:46:26'),
(59, 'gu12', 'EID-BCA3RD952046', '2nd ani', '', 0, '2021-08-31 02:46:26'),
(60, 'gu12', 'EID-BCA3RD952046', 'anssda', '', 0, '2021-08-31 02:46:26'),
(61, 'gu12', 'EID-BCA3RD952046', 'dasdaeqw123', '', 0, '2021-08-31 02:46:26'),
(62, 'gu12', 'EID-BCA3RD952046', 'how the fuck are u', '', 0, '2021-08-31 02:46:26'),
(63, 'gu12', 'EID-BCA3RD952046', 'tumar pal kala', '', 0, '2021-08-31 02:46:26'),
(64, 'gu12', 'EID-BCA3RD952046', 'asdasdasd', '', 0, '2021-08-31 02:46:26'),
(65, 'gu12', 'EID-BCA3RD952046', 'dasdasdasd', '', 0, '2021-08-31 02:46:26'),
(66, 'gu12', 'EID-BCS3RD058225', 'how is tt workling test 2', '', 0, '2021-08-31 02:46:26'),
(67, 'gu12', 'EID-BCS3RD058225', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(68, 'gu12', 'EID-BCS3RD058225', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(69, 'gu12', 'EID-BCS3RD058225', 'asda', '', 0, '2021-08-31 02:46:26'),
(70, 'gu12', 'EID-BCS3RD058225', 'asdasdasd', '', 0, '2021-08-31 02:46:26'),
(71, 'gu12', 'EID-BCS3RD058225', '3123123', '', 0, '2021-08-31 02:46:26'),
(72, 'gu12', 'EID-BCS3RD058225', 'dasdasdwe12q', '', 0, '2021-08-31 02:46:26'),
(73, 'gu12', 'EID-BCS3RD058225', 'asdasdaweq8', '', 0, '2021-08-31 02:46:26'),
(74, 'gu12', 'EID-BCS3RD058225', 'asdaewqeq', '', 0, '2021-08-31 02:46:26'),
(75, 'gu12', 'EID-BCS3RD058225', 'dasdasd', '', 0, '2021-08-31 02:46:26'),
(76, 'gu12', 'EID-BCS3RD058225', '1retc', '', 0, '2021-08-31 02:46:26'),
(77, 'gu12', 'EID-BCS3RD058225', 'sdwe123', '', 0, '2021-08-31 02:46:26'),
(78, 'gu12', 'EID-BCS3RD058225', 'asdas34', '', 0, '2021-08-31 02:46:26'),
(79, 'gu12', 'EID-BCS3RD058225', 'fasda', '', 0, '2021-08-31 02:46:26'),
(80, 'gu12', 'EID-BCS3RD058225', 'sewqeq', '', 0, '2021-08-31 02:46:26'),
(81, 'gu12', 'EID-BCS3RD058225', 'eqweqwe', '', 0, '2021-08-31 02:46:26'),
(82, 'gu12', 'EID-BCS3RD058225', '123123asdsdas', '', 0, '2021-08-31 02:46:26'),
(83, 'gu12', 'EID-BCS3RD058225', '12312', '', 0, '2021-08-31 02:46:26'),
(84, 'gu12', 'EID-BCS3RD058225', 'end', '', 0, '2021-08-31 02:46:26'),
(85, 'gu12', 'EID-BCS3RD058225', 'asdasdasdase123', '', 0, '2021-08-31 02:46:26'),
(86, 'gu12', 'EID-BCS3RD058225', 'awsd123', '', 0, '2021-08-31 02:46:26'),
(87, 'gu12', 'EID-BCS3RD058225', 'end', '', 0, '2021-08-31 02:46:26'),
(88, 'gu12', 'EID-BCA3RD952046', 'dasdqwe3', '', 0, '2021-08-31 02:46:26'),
(89, 'gu12', 'EID-BCA3RD952046', '31231', '', 0, '2021-08-31 02:46:26'),
(90, 'gu12', 'EID-BCA3RD952046', 'end1', '', 0, '2021-08-31 02:46:26'),
(91, 'gu12', 'EID-BCS3RD058225', 'asdawseqw34231', '', 0, '2021-08-31 02:46:26'),
(92, 'gu12', 'EID-BCS3RD058225', 'asdaw', '', 0, '2021-08-31 02:46:26'),
(93, 'gu12', 'EID-BCS3RD058225', '2nd', '', 0, '2021-08-31 02:46:26'),
(94, 'gu12', 'EID-BCS3RD058225', 'adsd', '', 0, '2021-08-31 02:46:26'),
(95, 'gu12', 'EID-BCS3RD058225', 'aweawe', '', 0, '2021-08-31 02:46:26'),
(96, 'gu12', 'EID-BCS3RD058225', '9999999', '', 0, '2021-08-31 02:46:26'),
(97, 'gu12', '<?php echo EID-BCA2ND530117; ?>', '1231asddd', '', 0, '2021-08-31 02:46:26'),
(98, 'gu12', '<?php echo EID-BCA2ND530117; ?>', '2ndas', '', 0, '2021-08-31 02:46:26'),
(99, 'gu12', '<?php echo EID-BCA2ND530117; ?>', '3rdf', '', 0, '2021-08-31 02:46:26'),
(100, 'gu12', 'EID-BCA4TH046369', 'dasd', '', 0, '2021-08-31 02:46:26'),
(101, 'gu12', 'EID-BCA4TH046369', 'dasda', '', 0, '2021-08-31 02:46:26'),
(102, 'gu12', 'EID-BCA4TH046369', 'dasd', '', 0, '2021-08-31 02:46:26'),
(103, 'gu12', 'EID-BCA4TH046369', 'asda', '', 0, '2021-08-31 02:46:26'),
(104, 'gu12', 'EID-BCA4TH046369', 'sdasd', '', 0, '2021-08-31 02:46:26'),
(105, 'gu12', 'EID-BCA4TH046369', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(106, 'gu12', 'EID-BCA4TH046369', 'dasd', '', 0, '2021-08-31 02:46:26'),
(107, 'gu12', 'EID-BCA4TH046369', 'asd', '', 0, '2021-08-31 02:46:26'),
(108, 'gu12', 'EID-BCA4TH046369', 'asdasda5', '', 0, '2021-08-31 02:46:26'),
(109, 'gu12', 'EID-BCA4TH046369', 'qweqweqweqe', '', 0, '2021-08-31 02:46:26'),
(110, 'gu12', 'EID-BCA4TH046369', 'qwqweqwe', '', 0, '2021-08-31 02:46:26'),
(111, 'gu12', 'EID-BCA4TH046369', 'test2', '', 0, '2021-08-31 02:46:26'),
(112, 'gu12', 'EID-BCA3RD952046', 'adsd', '', 0, '2021-08-31 02:46:26'),
(113, 'gu12', 'EID-BCA3RD952046', 'asda', '', 0, '2021-08-31 02:46:26'),
(139, 'putki12', 'EID-BCS1ST821949', '3', '', 0, '2021-08-31 02:46:26'),
(145, 'ab12', 'EID-PASS4TH061060', 'dasd', '', 0, '2021-08-31 02:46:26'),
(146, 'ab12', 'EID-PASS4TH061060', 'asdasda', '', 0, '2021-08-31 02:46:26'),
(147, 'ab12', 'EID-PASS4TH061060', 'sda31231end', '', 0, '2021-08-31 02:46:26'),
(148, 'ab12', 'a1', 'xczxc', '', 0, '2021-08-31 02:46:26'),
(149, 'ab12', 'a1', 'czxcz', '', 0, '2021-08-31 02:46:26'),
(151, 'ab12', 'EID-PASS4TH061060', 'dasd', '', 0, '2021-08-31 02:46:26'),
(152, 'ab12', 'EID-PASS4TH061060', 'asdas', '', 0, '2021-08-31 02:46:26'),
(153, 'ab12', 'EID-PASS4TH061060', 'last omnr', '', 0, '2021-08-31 02:46:26'),
(172, 'putki12', 'EID-BCS1ST501063', 'dasd', '', 0, '2021-08-31 02:46:26'),
(173, 'putki12', 'EID-BCS1ST501063', 'asd', '', 0, '2021-08-31 02:46:26'),
(174, 'putki12', 'EID-BCS1ST501063', 'dasd', '', 0, '2021-08-31 02:46:26'),
(175, 'putki12', 'EID-BCS1ST501063', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(176, 'putki12', 'EID-BCS1ST501063', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(177, 'putki12', 'EID-BCS1ST501063', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(178, 'putki12', 'EID-BCS1ST821949', 'dsfsdf', '', 0, '2021-08-31 02:46:26'),
(179, 'putki12', 'EID-BCS1ST821949', 'sdfsdf', '', 0, '2021-08-31 02:46:26'),
(180, 'putki12', 'EID-BCS1ST821949', 'sdfsdfsdf', '', 0, '2021-08-31 02:46:26'),
(181, 'putki12', 'EID-BCS1ST821949', 'dasdasd', '', 0, '2021-08-31 02:46:26'),
(182, 'putki12', 'EID-BCS1ST821949', 'sdfaf', '', 0, '2021-08-31 02:46:26'),
(183, 'putki12', 'EID-BCS1ST821949', 'fdfdfdasfasdfa', '', 0, '2021-08-31 02:46:26'),
(184, 'putki12', 'EID-BCS1ST501063', 'dasdasd', '', 0, '2021-08-31 02:46:26'),
(185, 'putki12', 'EID-BCS1ST501063', 'asdasda', '', 0, '2021-08-31 02:46:26'),
(186, 'putki12', 'EID-BCS1ST501063', 'sdasdasd', '', 0, '2021-08-31 02:46:26'),
(187, 'putki12', 'EID-BCS1ST501063', 'adsa', '', 0, '2021-08-31 02:46:26'),
(188, 'putki12', 'EID-BCS1ST501063', 'dasd', '', 0, '2021-08-31 02:46:26'),
(189, 'putki12', 'EID-BCS1ST501063', 'asdend', '', 0, '2021-08-31 02:46:26'),
(190, 'putki12', 'EID-BCS1ST501063', 'dasd', '', 0, '2021-08-31 02:46:26'),
(191, 'putki12', 'EID-BCS1ST501063', 'asd', '', 0, '2021-08-31 02:46:26'),
(206, 'putki12', 'EID-BCS3RD323715', 'DASDAS', '', 0, '2021-08-31 02:46:26'),
(207, 'putki12', 'EID-BCS3RD323715', 'DASDASDS34121312', '', 0, '2021-08-31 02:46:26'),
(209, 'ab12', '21', 'asdasdadddddddddddddddddddddddddddddddddddd', '', 0, '2021-08-31 02:46:26'),
(210, 'ab12', '21', 'ASDASDASDASD', '', 0, '2021-08-31 02:46:26'),
(215, 'ab12', '33', 'dasd', '', 0, '2021-08-31 02:46:26'),
(220, 'ab12', '33', 'dasd', '', 0, '2021-08-31 02:46:26'),
(221, 'ab12', '33', 'how are u', '', 0, '2021-08-31 02:46:26'),
(223, 'ab12', 'EID-PASS1ST650439', 'chek', '', 0, '2021-08-31 02:46:26'),
(224, 'ab12', 'EID-PASS1ST650439', 'sad', '', 0, '2021-08-31 02:46:26'),
(225, 'ab12', 'EID-PASS1ST650439', 'asd', '', 0, '2021-08-31 02:46:26'),
(226, 'ab12', 'EID-PASS1ST650439', 'asd', '', 0, '2021-08-31 02:46:26'),
(227, 'ab12', 'EID-PASS1ST650439', 'dasd', '', 0, '2021-08-31 02:46:26'),
(229, 'ab12', 'EID-PASS1ST650439', 'ad', '', 0, '2021-08-31 02:46:26'),
(230, 'ab12', 'EID-PASS1ST650439', 'sd', '', 0, '2021-08-31 02:46:26'),
(231, 'ab12', 'EID-PASS1ST650439', 'end', '', 0, '2021-08-31 02:46:26'),
(232, 'ab12', 'a2', 'dasd', '', 0, '2021-08-31 02:46:26'),
(233, 'ab12', 'a2', 'asd', '', 0, '2021-08-31 02:46:26'),
(234, 'ab12', 'a2', 'asd', '', 0, '2021-08-31 02:46:26'),
(235, 'ab12', 'EID-BCS2ND644976', '22', '', 0, '2021-08-31 02:46:26'),
(236, 'ab12', 'EID-BCS2ND644976', 'hoi jibnp', '', 0, '2021-08-31 02:46:26'),
(237, 'ab12', 'EID-BCS2ND644976', 'last', '', 0, '2021-08-31 02:46:26'),
(238, 'ab12', 'EID-BCS2ND644976', 'asd', '', 0, '2021-08-31 02:46:26'),
(239, 'ab12', 'EID-BCS2ND644976', 'asd', '', 0, '2021-08-31 02:46:26'),
(240, 'ab12', 'EID-BCS2ND644976', 'asdend', '', 0, '2021-08-31 02:46:26'),
(241, 'ps12', 'EID-PASS3RD099246', 'tumR PL ', '', 0, '2021-08-31 02:46:26'),
(243, 'ps12', 'EID-PASS3RD099246', 'jklhjkh', '', 0, '2021-08-31 02:46:26'),
(245, 'ps12', 'EID-PASS3RD099246', 'hjghjkg', '', 0, '2021-08-31 02:46:26'),
(247, 'ps12', 'EID-PASS3RD099246', '', '', 0, '2021-08-31 02:46:26'),
(248, 'ps12', 'EID-PASS3RD099246', '1', '', 0, '2021-08-31 02:46:26'),
(249, 'ps12', 'EID-BCA1ST053595', 'KLHKL', '', 0, '2021-08-31 02:46:26'),
(250, 'ps12', 'EID-BCA1ST053595', 'HUVGHJ', '', 0, '2021-08-31 02:46:26'),
(253, 'sk12', 'EID-BCS4TH831830', 'asdwqedasda', '', 0, '2021-08-31 02:46:26'),
(254, 'sk12', 'EID-BCS4TH831830', 'qweqwe', '', 0, '2021-08-31 02:46:26'),
(255, 'sk12', 'EID-BCS4TH831830', 'dqwe', '', 0, '2021-08-31 02:46:26'),
(256, 'sk12', 'EID-BCS4TH831830', 'qweqwe', '', 0, '2021-08-31 02:46:26'),
(257, 'sk12', 'EID-BCS4TH831830', 'abhi', '', 0, '2021-08-31 02:46:26'),
(258, 'sk12', 'EID-BCS4TH831830', 'weqweqw', '', 0, '2021-08-31 02:46:26'),
(259, 'sk12', 'EID-BCS4TH831830', 'dasd', '', 0, '2021-08-31 02:46:26'),
(260, 'sk12', 'EID-BCS4TH831830', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(261, 'sk12', 'EID-PASS4TH568462', 'qweqwe', '', 0, '2021-08-31 02:46:26'),
(262, 'sk12', 'EID-PASS4TH568462', 'qweqwe', '', 0, '2021-08-31 02:46:26'),
(263, 'sk12', 'EID-PASS4TH568462', 'eqwe', '', 0, '2021-08-31 02:46:26'),
(264, 'sk12', 'EID-PASS4TH568462', 'qweqwe', '', 0, '2021-08-31 02:46:26'),
(265, 'ab12', 'a2', 'sadasda', '', 0, '2021-08-31 02:46:26'),
(267, 'ab12', 'a2', 'sdasdas', '', 0, '2021-08-31 02:46:26'),
(268, 'ab12', 'a2', 'sdada', '', 0, '2021-08-31 02:46:26'),
(269, 'ab12', 'EID-BCA1ST415576', 'ew', '', 0, '2021-08-31 02:46:26'),
(270, 'ab12', 'EID-BCA1ST415576', 'ewe', '', 0, '2021-08-31 02:46:26'),
(272, 'kr12', 'EID-PASS3RD695647', 'qweqeweqwe', '', 0, '2021-08-31 02:46:26'),
(273, 'kr12', 'EID-PASS3RD695647', 'eqweq', '', 0, '2021-08-31 02:46:26'),
(275, 'kr12', 'EID-PASS3RD695647', 'asda', '', 0, '2021-08-31 02:46:26'),
(276, 'kr12', 'EID-PASS3RD695647', 'dasd', '', 0, '2021-08-31 02:46:26'),
(281, 'kr12', 'EID-BCS1ST551118', 'dasd', '', 0, '2021-08-31 02:46:26'),
(282, 'kr12', 'EID-BCS1ST551118', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(283, 'kr12', 'EID-BCS1ST551118', 'dasd', '', 0, '2021-08-31 02:46:26'),
(284, 'kr12', 'EID-BCS1ST551118', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(285, 'kr12', 'EID-BCS1ST551118', 'ddd', '', 0, '2021-08-31 02:46:26'),
(286, 'kr12', 'EID-BCS1ST551118', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(287, 'kr12', 'EID-BCS1ST551118', 'dd', '', 0, '2021-08-31 02:46:26'),
(288, 'kr12', 'EID-BCS1ST551118', 'dd', '', 0, '2021-08-31 02:46:26'),
(291, 'nw12', 'EID-BCA3RD389955', 'd', '', 0, '2021-08-31 02:46:26'),
(292, 'nw12', 'EID-BCA3RD389955', 'dd', '', 0, '2021-08-31 02:46:26'),
(297, 'nww12', 'EID-HONS1ST751712', 'ads', '', 0, '2021-08-31 02:46:26'),
(298, 'nww12', 'EID-HONS1ST751712', 'adsasd', '', 0, '2021-08-31 02:46:26'),
(299, 'bs12', 'EID-BCAHONS1ST194460', 'dads', '', 0, '2021-08-31 02:46:26'),
(300, 'bs12', 'EID-BCAHONS1ST194460', 'test', '', 0, '2021-08-31 02:46:26'),
(301, 'bs12', 'EID-BCAHONS1ST194460', 'dasd', '', 0, '2021-08-31 02:46:26'),
(302, 'bs12', 'EID-BCAHONS1ST194460', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(303, 'bs12', 'EID-PASS3RD468412', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(304, 'bs12', 'EID-PASS3RD468412', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(305, 'bs12', 'EID-PASS3RD468412', 'dasddd', '', 0, '2021-08-31 02:46:26'),
(306, 'bs12', 'EID-PASS3RD468412', 'asdasd', '', 0, '2021-08-31 02:46:26'),
(307, 'bs12', 'EID-BCSHONS2ND443326', 'd', '', 0, '2021-08-31 02:46:26'),
(308, 'bs12', 'EID-BCSHONS2ND443326', 'd', '', 0, '2021-08-31 02:46:26'),
(312, 'nww12', 'EID-PASS3RD571412', 'asdasda', '', 0, '2021-08-31 02:56:26'),
(313, 'nww12', 'EID-PASS3RD571412', 'adsad', '', 0, '2021-08-31 02:57:49'),
(314, 'nww12', 'EID-PASS3RD571412', 'asdasda', '', 0, '2021-08-31 02:57:49'),
(315, 'nww12', 'EID-PASS3RD571412', 'asdasd', '', 0, '2021-08-31 02:57:56'),
(316, 'nww12', 'EID-PASS3RD571412', 'eddd', '', 0, '2021-08-31 02:57:56'),
(317, 'nww12', 'EID-PASS3RD886408', '312', '', 0, '2021-08-31 03:10:40'),
(318, 'nww12', 'EID-PASS3RD886408', '32', '', 0, '2021-08-31 03:10:40'),
(321, 'nww12', 'EID-PASS1ST260307', 'DASD', '', 0, '2021-08-31 03:14:29'),
(322, 'nww12', 'EID-PASS1ST260307', 'ASDASD', '', 0, '2021-08-31 03:14:29'),
(323, 'nww12', 'EID-HONS1ST404212', 'DASD', '', 0, '2021-08-31 03:14:48'),
(324, 'nww12', 'EID-HONS1ST404212', 'ASDASD', '', 0, '2021-08-31 03:14:48'),
(325, 'nww12', 'EID-PASS3RD307928', 'eqwe', '', 0, '2021-08-31 03:18:37'),
(326, 'nww12', 'EID-PASS3RD307928', 'qweqwe', '', 0, '2021-08-31 03:18:37'),
(327, 'nww12', 'EID-PASS3RD307928', '3231wsd', '', 0, '2021-08-31 03:18:39'),
(329, 'nww12', 'EID-PASS1ST315140', 'asdasd', '', 0, '2021-08-31 20:55:49'),
(330, 'nww12', 'EID-PASS1ST315140', 'asdasd', '', 0, '2021-08-31 20:55:49'),
(331, 'nww12', 'EID-PASS1ST315140', 'asdasd', '', 0, '2021-08-31 20:56:39'),
(332, 'nww12', 'EID-PASS1ST315140', 'adend', '', 0, '2021-08-31 20:56:39'),
(333, 'nww12', 'EID-PASS1ST315140', 'dawe2ed', '', 0, '2021-08-31 20:56:44'),
(334, 'nww12', 'EID-PASS1ST315140', 'wdasdw333', '', 0, '2021-08-31 20:56:44'),
(335, 'nww12', 'EID-PASS1ST315140', 'end 1', '', 0, '2021-08-31 20:57:21'),
(336, 'nww12', 'EID-PASS1ST315140', 'end 2', '', 0, '2021-08-31 20:57:21'),
(337, 'nww12', 'EID-PASS1ST315140', 'end 2', '', 0, '2021-08-31 20:57:21'),
(338, 'nww12', 'EID-PASS1ST315140', 'das', '', 0, '2021-08-31 20:57:33'),
(339, 'nww12', 'EID-PASS1ST315140', 'dasdasd', '', 0, '2021-08-31 20:57:33'),
(340, 'nww12', 'EID-PASS1ST315140', 'dasdasd', '', 0, '2021-08-31 20:57:33'),
(341, 'nww12', 'EID-PASS1ST315140', 'dasd', '', 0, '2021-08-31 20:57:35'),
(342, 'nww12', 'EID-PASS1ST315140', 'asdasdasd', '', 0, '2021-08-31 20:57:35'),
(343, 'nww12', 'EID-PASS1ST315140', 'asdasdasd', '', 0, '2021-08-31 20:57:35'),
(344, 'nww12', 'EID-PASS4TH057884', 'end', '', 0, '2021-08-31 20:57:53'),
(345, 'nww12', 'EID-PASS4TH057884', 'eeeeeendsdd', '', 0, '2021-08-31 20:57:53'),
(347, 'nww12', 'EID-PASS4TH057884', 'dasd', '', 0, '2021-08-31 20:58:08'),
(348, 'nww12', 'EID-PASS4TH057884', 'asdend', '', 0, '2021-08-31 20:58:08'),
(349, 'nww12', 'EID-PASS4TH057884', 'asdend', '', 0, '2021-08-31 20:58:08'),
(350, 'nww12', 'EID-PASS4TH057884', 'end', '', 0, '2021-08-31 20:58:12'),
(351, 'nww12', 'EID-PASS4TH057884', 'end2', '', 0, '2021-08-31 20:58:12'),
(352, 'nww12', 'EID-PASS4TH057884', 'end2', '', 0, '2021-08-31 20:58:12'),
(353, 'nww12', 'EID-PASS4TH057884', 'weqwe', '', 0, '2021-08-31 20:58:44'),
(354, 'nww12', 'EID-PASS4TH057884', 'qweqwe', '', 0, '2021-08-31 20:58:44'),
(355, 'nww12', 'EID-PASS4TH057884', 'qweqwe', '', 0, '2021-08-31 20:58:44'),
(356, 'nww12', 'EID-PASS4TH057884', 'dqweqweqwe', '', 0, '2021-08-31 20:58:47'),
(357, 'nww12', 'EID-PASS4TH057884', 'qweqweqwe', '', 0, '2021-08-31 20:58:47'),
(358, 'nww12', 'EID-PASS4TH057884', 'qweqweqwe', '', 0, '2021-08-31 20:58:47'),
(359, 'nww12', 'EID-PASS4TH057884', 'qwefvv', '', 0, '2021-08-31 20:58:52'),
(360, 'nww12', 'EID-PASS4TH057884', '9999999', '', 0, '2021-08-31 20:58:52'),
(362, 'nww12', 'EID-PASS4TH057884', 'das', '', 0, '2021-08-31 20:59:00'),
(363, 'nww12', 'EID-PASS4TH057884', 'dasd', '', 0, '2021-08-31 20:59:00'),
(364, 'nww12', 'EID-PASS4TH057884', 'dasd', '', 0, '2021-08-31 20:59:00'),
(365, 'nww12', 'EID-HONS1ST331915', '123asd', '', 0, '2021-08-31 20:59:10'),
(368, 'nww12', 'EID-HONS1ST331915', 'end 1', '', 0, '2021-08-31 20:59:33'),
(370, 'nww12', 'EID-HONS1ST331915', 'end 2', '', 0, '2021-08-31 20:59:33'),
(371, 'nww12', 'EID-HONS1ST331915', 'end', '', 0, '2021-08-31 21:00:19'),
(372, 'nww12', 'EID-HONS1ST331915', 'end', '', 0, '2021-08-31 21:00:19'),
(373, 'nww12', 'EID-HONS1ST331915', 'end5', '', 0, '2021-08-31 21:00:19'),
(374, 'nww12', 'EID-HONS1ST331915', 'end5e', '', 0, '2021-08-31 21:00:19'),
(375, 'nww12', 'EID-HONS1ST331915', 'asdas', '', 0, '2021-08-31 21:01:01'),
(376, 'nww12', 'EID-HONS1ST331915', 'dasdend12', '', 0, '2021-08-31 21:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `q_set`
--

CREATE TABLE `q_set` (
  `nos` int(100) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `e_name` varchar(255) NOT NULL,
  `f_mark` int(100) NOT NULL,
  `p_mark` int(100) NOT NULL,
  `e_duration` int(100) NOT NULL,
  `e_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `q_set`
--

INSERT INTO `q_set` (`nos`, `unique_id`, `sem`, `course`, `e_name`, `f_mark`, `p_mark`, `e_duration`, `e_id`, `date`) VALUES
(1, 'ab12', '2', 'BCS', '1st test', 100, 34, 230, 'a1', '2021-08-25 14:27:39'),
(2, 'ab12', '4', 'BCS', '2nd', 111, 33, 123, 'a2', '2021-08-25 14:29:28'),
(3, 'kb1', '1', 'BCS', '1st test', 100, 30, 120, 'd1', '2021-08-25 14:32:52'),
(4, 'kb1', '4', 'BCS', '2nd test', 100, 21, 20, 'k1', '2021-08-25 14:33:31'),
(5, 'ab12', '2', 'BCS', 'asdasd', 123, 120, 120, 'z1', '2021-08-25 15:02:38'),
(6, 'kb1', '2', 'PASS', '3rd', 123, 44, 123, 'e1', '2021-08-25 17:32:21'),
(7, 'kb1', '4', 'BCS', 'hore ram o', 33, 123, 100, 'r1', '2021-08-25 17:33:37'),
(10, 'ab12', '3', 'BCS', 'asdasdas', 33, 2, 109, 'w1', '2021-08-25 18:15:18'),
(19, 'ab12', '2', 'BCA', 'adasd', 213, 32, 312, '21', '2021-08-27 20:41:59'),
(21, 'ab12', '1', 'BCA', '222', 123, 0, 120, '33', '2021-08-27 20:43:50'),
(22, 'ab12', '3', 'PASS', 'sadas', 123, 312, 32, '55', '2021-08-27 20:47:35'),
(23, 'e12', '3', 'BCS', 'asdasd', 213, 33, 333, '22', '2021-08-27 21:13:07'),
(26, 'e12', '3', 'BCS', 'dasd', 213, 32, 23, 'EID-BCS601448', '2021-08-27 22:22:11'),
(27, 'e12', '6', 'PASS', 'assssss', 123, 33, 33, 'EID-PASS919761', '2021-08-27 22:23:00'),
(28, 'ab12', '3', 'BCA', 'dsdd', 3123, 32, 33, 'EID-BCA593829', '2021-08-27 22:23:45'),
(29, 'ab12', '4th', 'PASS', 'asd', 123, 32, 33, 'EID-PASS4TH061060', '2021-08-27 22:34:22'),
(30, 'sdaweq', '3rd', 'BCS', 'ami kamla', 123, 3, 33, 'EIDBCS3RD912728', '2021-08-27 22:36:27'),
(31, 'sdaweq', '4th', 'PASS', 'MY NAME IS KAMLA BETA', 100, 23, 123, 'EID-PASS4TH614871', '2021-08-27 22:41:06'),
(32, 'gu12', '3rd', 'BCA', '1st unit test', 100, 30, 120, 'EID-BCA3RD952046', '2021-08-27 23:18:28'),
(33, 'gu12', '3rd', 'BCS', 'new test', 1200, 23, 213, 'EID-BCS3RD058225', '2021-08-27 23:58:11'),
(34, 'gu12', '4th', 'BCS', 'testin last', 100, 23, 123, 'EID-BCS4TH258758', '2021-08-28 01:24:10'),
(35, 'gu12', '4th', 'BCS', 'testin last', 100, 23, 123, 'EID-BCS4TH129306', '2021-08-28 01:26:55'),
(36, 'gu12', '2nd', 'BCA', 'testin lastdasd', 100, 23, 123, 'EID-BCA2ND530117', '2021-08-28 01:28:24'),
(37, 'gu12', '4th', 'PASS', '123123123asdas', 12, 3, 33, 'EID-PASS4TH740699', '2021-08-28 01:33:50'),
(38, 'gu12', '4th', 'BCA', 'abvhi', 12, 3, 123, 'EID-BCA4TH046369', '2021-08-28 01:37:31'),
(39, 'putki12', '3rd', 'BCS', 'ass sucker', 123, 3123, 213, 'EID-BCS3RD323715', '2021-08-28 01:44:27'),
(40, 'putki12', '1st', 'BCS', 'asd', 123, 33, 23, 'EID-BCS1ST821949', '2021-08-28 01:45:21'),
(41, 'putki12', '1st', 'BCS', 'TUMAR mar heta', 120, 34, 212, 'EID-BCS1ST501063', '2021-08-29 01:26:00'),
(42, 'ab12', '1st', 'PASS', 'TESTING', 100, 30, 120, 'EID-PASS1ST650439', '2021-08-29 21:26:58'),
(43, 'ab12', '2nd', 'BCS', '2nd test ONE FILE', 12, 3, 3, 'EID-BCS2ND644976', '2021-08-29 21:37:40'),
(44, 'ps12', '3rd', 'PASS', '1st unit literature', 70, 24, 180, 'EID-PASS3RD099246', '2021-08-30 00:25:31'),
(45, 'ps12', '1st', 'BCA', 'HJVGHJFV', 1, 1, 678, 'EID-BCA1ST053595', '2021-08-30 00:28:02'),
(46, 'sk12', '4th', 'BCS', '1st unit', 100, 30, 120, 'EID-BCS4TH831830', '2021-08-30 01:13:35'),
(47, 'sk12', '4th', 'PASS', 'dasda', 22, 33, 13, 'EID-PASS4TH568462', '2021-08-30 01:15:26'),
(48, 'ab12', '1st', 'BCA', 'sd', 123, 33, 33, 'EID-BCA1ST415576', '2021-08-30 05:39:19'),
(49, 'kr12', '3rd', 'PASS', 'MOther fcuker', 123, 12, 33, 'EID-PASS3RD695647', '2021-08-31 00:20:03'),
(50, 'kr12', '1st', 'BCS', 'adsd', 123, 33, 23, 'EID-BCS1ST551118', '2021-08-31 00:21:42'),
(51, 'nw12', '3rd', 'BCA', 'heta', 123, 33, 33, 'EID-BCA3RD389955', '2021-08-31 01:48:44'),
(52, 'nww12', '1st', 'PASS', 'sdasd', 123, 33, 123, 'EID-PASS1ST260307', '2021-08-31 02:40:05'),
(53, 'nww12', '1st', 'HONS', '123123123qwedqw', 23, 12, 33, 'EID-HONS1ST751712', '2021-08-31 02:40:22'),
(54, 'bs12', '1st', 'BCAHONS', 'wqe1', 23, 12, 33, 'EID-BCAHONS1ST194460', '2021-08-31 02:43:52'),
(55, 'bs12', '3rd', 'PASS', 'qweqwe', 123, 33, 123, 'EID-PASS3RD468412', '2021-08-31 02:44:37'),
(56, 'bs12', '2nd', 'BCSHONS', 'adsdasd', 12, 3, 3, 'EID-BCSHONS2ND443326', '2021-08-31 02:45:11'),
(57, 'nww12', '3rd', 'PASS', 'SAdadasd', 123, 15, 123, 'EID-PASS3RD571412', '2021-08-31 02:56:17'),
(58, 'nww12', '3rd', 'PASS', 'sdasd', 123, 33, 3, 'EID-PASS3RD886408', '2021-08-31 03:10:37'),
(59, 'nww12', '1st', 'HONS', 'ASD', 2, 3, 3, 'EID-HONS1ST404212', '2021-08-31 03:14:46'),
(60, 'nww12', '3rd', 'PASS', 'dasd', 123, 33, 3, 'EID-PASS3RD307928', '2021-08-31 03:18:34'),
(61, 'nww12', '1st', 'PASS', 'new prepare', 12, 123, 3, 'EID-PASS1ST315140', '2021-08-31 20:54:42'),
(62, 'nww12', '4th', 'PASS', 'asdasdasd', 123, 123, 123, 'EID-PASS4TH057884', '2021-08-31 20:57:47'),
(63, 'nww12', '1st', 'HONS', 'wdwda', 123, 33, 33, 'EID-HONS1ST331915', '2021-08-31 20:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `nos` int(11) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `courses` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`nos`, `dept`, `courses`, `date`) VALUES
(1, 'PHY', 'PASS', '0000-00-00 00:00:00'),
(2, 'PHY', 'HNRS', '0000-00-00 00:00:00'),
(3, 'CHEM', 'HNRS', '0000-00-00 00:00:00'),
(4, 'CHEM', 'PASS', '0000-00-00 00:00:00'),
(5, 'sdasd', 'dasdasd', '2021-08-30 01:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `t_registered`
--

CREATE TABLE `t_registered` (
  `nos` int(100) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `t_pass` varchar(255) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_dept` varchar(255) NOT NULL,
  `t_email` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_registered`
--

INSERT INTO `t_registered` (`nos`, `unique_id`, `t_pass`, `t_name`, `t_dept`, `t_email`, `date`) VALUES
(1, 'ab12', '123', 'Abhishek Das', 'bca', 'Ab@q1', '2021-08-25 14:14:51'),
(2, 'kb1', '123', 'kamla', 'chem', 'S@S', '2021-08-25 14:32:20'),
(3, 'rr12', '123', 'rohim', 'ComScince', 'r@e', '2021-08-25 17:55:36'),
(5, 'e12', '123', 'rrasd', 'comscience', 'W@r', '2021-08-25 17:58:28'),
(9, 'eqw', '123', 'asdasd', 'chem', 'asd@ee', '2021-08-27 12:21:15'),
(10, 'as12', '123', 'Abfgu', 'chem', 'A@EE', '2021-08-27 12:22:52'),
(11, 'ass', '123', 'phy', 'phy', 'y@er', '2021-08-27 12:23:44'),
(12, 'aw32', '123', 'phy', 'comscience', 'AE@sd', '2021-08-27 12:24:18'),
(13, 'asd', '123', 'Abhishek Das', 'phy', 'homsweethome252@gmail.com', '2021-08-27 12:29:14'),
(14, 'aa12334', '123', 'ASdASd', 'comscience', 'AS@31d', '2021-08-27 12:30:37'),
(15, 'aaw2', '123', 'rahul', 'phy', 'A@eewq', '2021-08-27 12:33:28'),
(16, 'zx1', '123', 'suraj', 'phy', 'A@ggggh', '2021-08-27 12:49:53'),
(17, 'jk12', '123', 'Abhishek Das', 'phy', 'asa@fsjk', '2021-08-27 12:53:09'),
(18, 'sdaweq', '123', 'suraj roy', 'chem', 'A2@ad', '2021-08-27 22:35:47'),
(19, 'gu12', '123', 'deathsmack', 'comscience', 'a@dwe', '2021-08-27 23:17:56'),
(20, 'putki12', '123', 'deathsmack CHUTLUK', 'phy', 'a@dew', '2021-08-28 01:43:50'),
(21, 'ps12', '123', 'pallabi sarma', 'comscience', 'p@gh', '2021-08-30 00:23:43'),
(22, 'sk12', '123', 'skanta', 'phy', 'A@er', '2021-08-30 01:02:01'),
(23, 'kr12', '123', 'kriti', 'comscience', 'a@ewe', '2021-08-31 00:19:29'),
(24, 'avbdsdw', '123', 'nw12', 'bio', 'a@err', '2021-08-31 01:40:44'),
(25, 'nw12', '123', 'asdasd', 'hist', 'a@ddf', '2021-08-31 01:41:03'),
(26, 're12', '123', 'RECKER', 'compsca', 'r@da', '2021-08-31 02:10:48'),
(27, 'nww12', '123', 'test', 'alteng', 'asd@e', '2021-08-31 02:32:03'),
(28, 'bs12', '123', 'asdasd', 'compsca', 'a@de', '2021-08-31 02:41:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`nos`);

--
-- Indexes for table `qs`
--
ALTER TABLE `qs`
  ADD PRIMARY KEY (`nos`);

--
-- Indexes for table `q_set`
--
ALTER TABLE `q_set`
  ADD PRIMARY KEY (`nos`),
  ADD UNIQUE KEY `e_id` (`e_id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`nos`);

--
-- Indexes for table `t_registered`
--
ALTER TABLE `t_registered`
  ADD PRIMARY KEY (`nos`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `nos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qs`
--
ALTER TABLE `qs`
  MODIFY `nos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `q_set`
--
ALTER TABLE `q_set`
  MODIFY `nos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `nos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_registered`
--
ALTER TABLE `t_registered`
  MODIFY `nos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;