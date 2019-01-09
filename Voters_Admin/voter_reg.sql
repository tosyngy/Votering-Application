-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2015 at 03:37 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `voters_reg`
--
CREATE DATABASE `voters_reg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `voters_reg`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', 'admin', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `agent_reg`
--

CREATE TABLE IF NOT EXISTS `agent_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `othername` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `baselocation` varchar(100) NOT NULL,
  `sysid` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `regdate` varchar(50) NOT NULL,
  `adminid` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `agent_reg`
--

INSERT INTO `agent_reg` (`id`, `firstname`, `othername`, `address`, `baselocation`, `sysid`, `mobile`, `level`, `regdate`, `adminid`, `status`) VALUES
(1, 'adeleke', 'segun', 'no 2,ashimpowu street ,gbagada loagos', 'LAG/MUS/4727', 'COM/201/4184', '09087675433', '3', 'Sun 15:20:29 21-Dec-2014', 'admin', '0'),
(2, 'aden iyi', 'oluwakemi', '113 ipamesan road,sango otta.', 'LAG/MUS/4727', 'COM/201/4184', '08167692280', '3', 'Mon 12:03:14 12-Jan-2015', 'admin', '0'),
(3, 'Osoba', 'Oluwabusola', 'isabo', 'OGU/ABE/9152', 'DEL/IP5/6256', '08132445342', '3', 'Mon 12:27:33 12-Jan-2015', 'admin', '0');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactiontype` varchar(100) NOT NULL,
  `agentid` varchar(50) NOT NULL,
  `systemid` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=244 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `transactiontype`, `agentid`, `systemid`, `date`, `status`) VALUES
(1, 'Admin login', 'Admin', '', '16:34:36 20-Dec-2014', '0'),
(2, 'Admin login', 'admin', '', '14:46:53 21-Dec-2014', '0'),
(3, 'Admin login', 'admin', '', '14:50:30 21-Dec-2014', '0'),
(4, 'Admin login', 'admin', '', '14:56:10 21-Dec-2014', '0'),
(5, 'Admin login', 'admin', '', '14:58:56 21-Dec-2014', '0'),
(6, 'Admin login', 'admin', '', '14:59:25 21-Dec-2014', '0'),
(7, 'Poll Added', 'admin', '', '15:00:27 21-Dec-2014', '0'),
(8, 'Admin login', 'admin', '', '15:02:22 21-Dec-2014', '0'),
(9, 'Admin login', 'admin', '', '15:02:48 21-Dec-2014', '0'),
(10, 'Admin login', 'admin', '', '15:03:25 21-Dec-2014', '0'),
(11, 'Admin login', 'admin', '', '15:07:24 21-Dec-2014', '0'),
(12, 'System Added', 'admin', '', '15:09:54 21-Dec-2014', '0'),
(13, 'Admin login', 'admin', '', '15:16:05 21-Dec-2014', '0'),
(14, 'Agent Register', 'admin', '', '15:20:51 21-Dec-2014', '0'),
(15, 'System Alter', 'admin', '', '15:24:19 21-Dec-2014', '0'),
(16, 'Admin login', 'admin', '', '15:27:50 21-Dec-2014', '0'),
(17, 'System Alter', 'admin', '', '15:28:11 21-Dec-2014', '0'),
(18, 'login', 'LAG/COM/6013', '', '16:29:14 21-Dec-2014', '0'),
(19, 'login', 'LAG/COM/6013', '', '16:38:29 21-Dec-2014', '0'),
(20, 'login', 'LAG/COM/6013', '', '17:15:56 21-Dec-2014', '0'),
(21, 'New User Registered with reg id T2J3444I3T7GPMUQBUU25Y6WM', 'LAG/COM/6013', '', '17:18:38 21-Dec-2014', '0'),
(22, 'login', 'LAG/COM/6013', '', '17:21:24 21-Dec-2014', '0'),
(23, 'login', 'LAG/COM/6013', '', '17:23:28 21-Dec-2014', '0'),
(24, 'Preview T2J3444I3T7GPMUQBUU25Y6WM Info', 'LAG/COM/6013', '', '17:25:08 21-Dec-2014', '0'),
(25, 'Voters''s T2J3444I3T7GPMUQBUU25Y6WMdetails updated', 'LAG/COM/6013', '', '17:27:43 21-Dec-2014', '0'),
(26, 'login', 'LAG/COM/6013', '', '17:51:41 21-Dec-2014', '0'),
(27, 'New User Registered with reg id IZWQLZ94KB5XJFD8QU5NUAXS9', 'LAG/COM/6013', '', '17:54:58 21-Dec-2014', '0'),
(28, 'login', 'LAG/COM/6013', '', '17:57:25 21-Dec-2014', '0'),
(29, 'login', 'LAG/COM/6013', '', '17:59:10 21-Dec-2014', '0'),
(30, 'login', 'LAG/COM/6013', '', '18:02:27 21-Dec-2014', '0'),
(31, 'login', 'LAG/COM/6013', '', '09:19:03 22-Dec-2014', '0'),
(32, 'login', 'LAG/COM/6013', '', '09:21:21 22-Dec-2014', '0'),
(33, 'issue card to T2J3444I3T7GPMUQBUU25Y6WM', 'LAG/COM/6013', '', '09:22:20 22-Dec-2014', '0'),
(34, 'Preview T2J3444I3T7GPMUQBUU25Y6WM Info', 'LAG/COM/6013', '', '09:23:29 22-Dec-2014', '0'),
(35, 'login', 'LAG/COM/6013', '', '15:48:04 05-Jan-2015', '0'),
(36, 'Preview IZWQLZ94KB5XJFD8QU5NUAXS9 Info', 'LAG/COM/6013', '', '15:50:44 05-Jan-2015', '0'),
(37, 'Admin login', 'admin', '', '15:53:55 05-Jan-2015', '0'),
(38, 'login', 'LAG/COM/6013', '', '22:48:42 08-Jan-2015', '0'),
(39, 'login', 'LAG/COM/6013', '', '22:53:52 08-Jan-2015', '0'),
(40, 'login', 'LAG/COM/6013', '', '23:07:37 08-Jan-2015', '0'),
(41, 'login', 'LAG/COM/6013', '', '23:21:39 08-Jan-2015', '0'),
(42, 'login', 'LAG/COM/6013', '', '23:26:12 08-Jan-2015', '0'),
(43, 'login', 'LAG/COM/6013', '', '23:33:52 08-Jan-2015', '0'),
(44, 'New User Registered with reg id 6JWBWLUEPE3TX2RV4VIVPPYY5', 'LAG/COM/6013', '', '23:35:34 08-Jan-2015', '0'),
(45, 'login', 'LAG/COM/6013', '', '00:08:14 09-Jan-2015', '0'),
(46, 'login', 'LAG/COM/6013', '', '09:46:34 09-Jan-2015', '0'),
(47, 'login', 'LAG/COM/6013', '', '09:52:05 09-Jan-2015', '0'),
(48, 'login', 'LAG/COM/6013', '', '09:59:12 09-Jan-2015', '0'),
(49, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '09:59:34 09-Jan-2015', '0'),
(50, 'login', 'LAG/COM/6013', '', '10:01:15 09-Jan-2015', '0'),
(51, 'login', 'LAG/COM/6013', '', '10:07:28 09-Jan-2015', '0'),
(52, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '10:07:51 09-Jan-2015', '0'),
(53, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '10:08:03 09-Jan-2015', '0'),
(54, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '10:08:04 09-Jan-2015', '0'),
(55, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '10:08:14 09-Jan-2015', '0'),
(56, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '10:08:17 09-Jan-2015', '0'),
(57, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '10:08:19 09-Jan-2015', '0'),
(58, 'login', 'LAG/COM/6013', '', '11:00:17 09-Jan-2015', '0'),
(59, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '11:00:37 09-Jan-2015', '0'),
(60, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '11:00:53 09-Jan-2015', '0'),
(61, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '11:00:54 09-Jan-2015', '0'),
(62, 'login', 'LAG/COM/6013', '', '11:02:13 09-Jan-2015', '0'),
(63, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '11:02:38 09-Jan-2015', '0'),
(64, 'login', 'LAG/COM/6013', '', '11:11:59 09-Jan-2015', '0'),
(65, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '11:12:32 09-Jan-2015', '0'),
(66, 'login', 'LAG/COM/6013', '', '11:12:57 09-Jan-2015', '0'),
(67, 'login', 'LAG/COM/6013', '', '11:13:44 09-Jan-2015', '0'),
(68, 'login', 'LAG/COM/6013', '', '11:28:10 09-Jan-2015', '0'),
(69, 'login', 'LAG/COM/6013', '', '11:30:01 09-Jan-2015', '0'),
(70, 'login', 'LAG/COM/6013', '', '11:36:06 09-Jan-2015', '0'),
(71, 'login', 'LAG/COM/6013', '', '11:39:14 09-Jan-2015', '0'),
(72, 'login', 'LAG/COM/6013', '', '11:59:03 09-Jan-2015', '0'),
(73, 'login', 'LAG/COM/6013', '', '12:00:38 09-Jan-2015', '0'),
(74, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '12:01:04 09-Jan-2015', '0'),
(75, 'login', 'LAG/COM/6013', '', '12:01:16 09-Jan-2015', '0'),
(76, 'login', 'LAG/COM/6013', '', '12:02:25 09-Jan-2015', '0'),
(77, 'login', 'LAG/COM/6013', '', '12:07:16 09-Jan-2015', '0'),
(78, 'login', 'LAG/COM/6013', '', '12:08:21 09-Jan-2015', '0'),
(79, 'login', 'LAG/COM/6013', '', '12:10:41 09-Jan-2015', '0'),
(80, 'login', 'LAG/COM/6013', '', '12:11:41 09-Jan-2015', '0'),
(81, 'login', 'LAG/COM/6013', '', '12:15:41 09-Jan-2015', '0'),
(82, 'login', 'LAG/COM/6013', '', '12:18:30 09-Jan-2015', '0'),
(83, 'login', 'LAG/COM/6013', '', '12:19:50 09-Jan-2015', '0'),
(84, 'login', 'LAG/COM/6013', '', '12:24:20 09-Jan-2015', '0'),
(85, 'login', 'LAG/COM/6013', '', '12:24:45 09-Jan-2015', '0'),
(86, 'login', 'LAG/COM/6013', '', '12:32:21 09-Jan-2015', '0'),
(87, 'login', 'LAG/COM/6013', '', '12:33:34 09-Jan-2015', '0'),
(88, 'login', 'LAG/COM/6013', '', '12:44:16 09-Jan-2015', '0'),
(89, 'login', 'LAG/COM/6013', '', '12:48:10 09-Jan-2015', '0'),
(90, 'login', 'LAG/COM/6013', '', '13:00:26 09-Jan-2015', '0'),
(91, 'login', 'LAG/COM/6013', '', '13:05:34 09-Jan-2015', '0'),
(92, 'login', 'LAG/COM/6013', '', '13:06:29 09-Jan-2015', '0'),
(93, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '13:07:34 09-Jan-2015', '0'),
(94, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '13:07:58 09-Jan-2015', '0'),
(95, 'login', 'LAG/COM/6013', '', '13:08:08 09-Jan-2015', '0'),
(96, 'login', 'LAG/COM/6013', '', '13:14:27 09-Jan-2015', '0'),
(97, 'login', 'LAG/COM/6013', '', '14:02:03 09-Jan-2015', '0'),
(98, 'login', 'LAG/COM/6013', '', '14:06:46 09-Jan-2015', '0'),
(99, 'login', 'LAG/COM/6013', '', '14:07:40 09-Jan-2015', '0'),
(100, 'login', 'LAG/COM/6013', '', '14:09:31 09-Jan-2015', '0'),
(101, 'login', 'LAG/COM/6013', '', '14:14:04 09-Jan-2015', '0'),
(102, 'login', 'LAG/COM/6013', '', '14:18:23 09-Jan-2015', '0'),
(103, 'login', 'LAG/COM/6013', '', '14:21:10 09-Jan-2015', '0'),
(104, 'login', 'LAG/COM/6013', '', '14:21:54 09-Jan-2015', '0'),
(105, 'login', 'LAG/COM/6013', '', '14:23:06 09-Jan-2015', '0'),
(106, 'login', 'LAG/COM/6013', '', '14:31:46 09-Jan-2015', '0'),
(107, 'login', 'LAG/COM/6013', '', '14:33:32 09-Jan-2015', '0'),
(108, 'New User Registered with reg id 1PJUNDAKCSS8OL6NC4S2WYL4A', 'LAG/COM/6013', '', '14:37:04 09-Jan-2015', '0'),
(109, 'login', 'LAG/COM/6013', '', '14:37:42 09-Jan-2015', '0'),
(110, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:38:42 09-Jan-2015', '0'),
(111, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '14:39:17 09-Jan-2015', '0'),
(112, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '14:39:18 09-Jan-2015', '0'),
(113, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '14:41:49 09-Jan-2015', '0'),
(114, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '14:41:55 09-Jan-2015', '0'),
(115, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:43:17 09-Jan-2015', '0'),
(116, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:43:19 09-Jan-2015', '0'),
(117, 'issue card to ', 'LAG/COM/6013', '', '14:43:36 09-Jan-2015', '0'),
(118, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:44:02 09-Jan-2015', '0'),
(119, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:44:04 09-Jan-2015', '0'),
(120, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:44:38 09-Jan-2015', '0'),
(121, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:44:39 09-Jan-2015', '0'),
(122, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:44:40 09-Jan-2015', '0'),
(123, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:44:41 09-Jan-2015', '0'),
(124, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:45:22 09-Jan-2015', '0'),
(125, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:45:25 09-Jan-2015', '0'),
(126, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:45:26 09-Jan-2015', '0'),
(127, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:45:26 09-Jan-2015', '0'),
(128, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:45:27 09-Jan-2015', '0'),
(129, 'Preview 1PJUNDAKCSS8OL6NC4S2WYL4A Info', 'LAG/COM/6013', '', '14:45:27 09-Jan-2015', '0'),
(130, 'login', 'LAG/COM/6013', '', '16:36:14 09-Jan-2015', '0'),
(131, 'login', 'LAG/COM/6013', '', '16:49:25 09-Jan-2015', '0'),
(132, 'login', 'LAG/COM/6013', '', '16:50:11 09-Jan-2015', '0'),
(133, 'login', 'LAG/COM/6013', '', '16:57:33 09-Jan-2015', '0'),
(134, 'Preview IZWQLZ94KB5XJFD8QU5NUAXS9 Info', 'LAG/COM/6013', '', '16:58:34 09-Jan-2015', '0'),
(135, 'Preview IZWQLZ94KB5XJFD8QU5NUAXS9 Info', 'LAG/COM/6013', '', '16:59:06 09-Jan-2015', '0'),
(136, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '17:00:52 09-Jan-2015', '0'),
(137, 'login', 'LAG/COM/6013', '', '19:02:36 09-Jan-2015', '0'),
(138, 'login', 'LAG/COM/6013', '', '19:03:59 09-Jan-2015', '0'),
(139, 'login', 'LAG/COM/6013', '', '10:53:39 12-Jan-2015', '0'),
(140, 'login', 'LAG/COM/6013', '', '10:55:14 12-Jan-2015', '0'),
(141, 'login', 'LAG/COM/6013', '', '10:58:54 12-Jan-2015', '0'),
(142, 'login', 'LAG/COM/6013', '', '10:59:39 12-Jan-2015', '0'),
(143, 'Admin login', 'admin', '', '11:08:40 12-Jan-2015', '0'),
(144, 'login', 'LAG/COM/6013', '', '11:16:33 12-Jan-2015', '0'),
(145, 'login', 'LAG/COM/6013', '', '11:17:14 12-Jan-2015', '0'),
(146, 'login', 'LAG/COM/6013', '', '11:30:06 12-Jan-2015', '0'),
(147, 'login', 'LAG/COM/6013', '', '11:32:25 12-Jan-2015', '0'),
(148, 'Preview 6JWBWLUEPE3TX2RV4VIVPPYY5 Info', 'LAG/COM/6013', '', '11:34:53 12-Jan-2015', '0'),
(149, 'issue card to IZWQLZ94KB5XJFD8QU5NUAXS9', 'LAG/COM/6013', '', '11:44:30 12-Jan-2015', '0'),
(150, 'Admin login', 'admin', '', '11:58:26 12-Jan-2015', '0'),
(151, 'Agent Register', 'admin', '', '12:03:18 12-Jan-2015', '0'),
(152, 'System Added', 'admin', '', '12:08:06 12-Jan-2015', '0'),
(153, 'Poll Added', 'admin', '', '12:12:36 12-Jan-2015', '0'),
(154, 'login', 'LAG/COM/1964', '', '12:21:51 12-Jan-2015', '0'),
(155, 'Admin login', 'admin', '', '12:23:51 12-Jan-2015', '0'),
(156, 'Agent Register', 'admin', '', '12:27:41 12-Jan-2015', '0'),
(157, 'Poll Added', 'admin', '', '12:35:18 12-Jan-2015', '0'),
(158, 'Admin login', 'admin', '', '12:44:09 12-Jan-2015', '0'),
(159, 'Agent Editted', 'admin', '', '12:47:50 12-Jan-2015', '0'),
(160, 'System Added', 'admin', '', '12:50:20 12-Jan-2015', '0'),
(161, 'System Alter', 'admin', '', '12:52:15 12-Jan-2015', '0'),
(162, 'login', 'LAG/COM/1964', '', '12:57:48 12-Jan-2015', '0'),
(163, 'New User Registered with reg id A0992JKZYXSYFL3W38TJKMCXG', 'LAG/COM/1964', '', '13:18:43 12-Jan-2015', '0'),
(164, 'Preview A0992JKZYXSYFL3W38TJKMCXG Info', 'LAG/COM/1964', '', '13:19:56 12-Jan-2015', '0'),
(165, 'Preview A0992JKZYXSYFL3W38TJKMCXG Info', 'LAG/COM/1964', '', '13:20:26 12-Jan-2015', '0'),
(166, 'issue card to ', 'LAG/COM/1964', '', '13:20:47 12-Jan-2015', '0'),
(167, 'Preview A0992JKZYXSYFL3W38TJKMCXG Info', 'LAG/COM/1964', '', '13:22:12 12-Jan-2015', '0'),
(168, 'Preview A0992JKZYXSYFL3W38TJKMCXG Info', 'LAG/COM/1964', '', '13:22:51 12-Jan-2015', '0'),
(169, 'Preview A0992JKZYXSYFL3W38TJKMCXG Info', 'LAG/COM/1964', '', '13:22:51 12-Jan-2015', '0'),
(170, 'Admin login', 'admin', '', '13:27:15 12-Jan-2015', '0'),
(171, 'Admin login', 'admin', '', '13:31:02 12-Jan-2015', '0'),
(172, 'Admin login', 'admin', '', '13:31:46 12-Jan-2015', '0'),
(173, 'Admin login', 'admin', '', '13:34:08 12-Jan-2015', '0'),
(174, 'Admin login', 'admin', '', '13:35:11 12-Jan-2015', '0'),
(175, 'Admin login', 'admin', '', '13:36:40 12-Jan-2015', '0'),
(176, 'Admin login', 'admin', '', '18:09:31 12-Jan-2015', '0'),
(177, 'Admin login', 'admin', '', '18:11:47 12-Jan-2015', '0'),
(178, 'Admin login', 'admin', '', '18:15:51 12-Jan-2015', '0'),
(179, 'Admin login', 'admin', '', '18:18:26 12-Jan-2015', '0'),
(180, 'Admin login', 'admin', '', '18:21:04 12-Jan-2015', '0'),
(181, 'Admin login', 'admin', '', '18:26:51 12-Jan-2015', '0'),
(182, 'Admin login', 'admin', '', '18:56:24 12-Jan-2015', '0'),
(183, 'Admin login', 'admin', '', '18:57:48 12-Jan-2015', '0'),
(184, 'Admin login', 'admin', '', '19:00:25 12-Jan-2015', '0'),
(185, 'Admin login', 'admin', '', '19:01:09 12-Jan-2015', '0'),
(186, 'Admin login', 'admin', '', '19:03:55 12-Jan-2015', '0'),
(187, 'Admin login', 'admin', '', '19:05:43 12-Jan-2015', '0'),
(188, 'Admin login', 'admin', '', '19:09:11 12-Jan-2015', '0'),
(189, 'Admin login', 'admin', '', '19:10:19 12-Jan-2015', '0'),
(190, 'issue card to 1PJUNDAKCSS8OL6NC4S2WYL4A', 'admin', '', '19:10:42 12-Jan-2015', '0'),
(191, 'Admin login', 'admin', '', '19:11:33 12-Jan-2015', '0'),
(192, 'Admin login', 'admin', '', '19:15:08 12-Jan-2015', '0'),
(193, 'New User Registered with reg id P6JLZW7QN83NZOPF5LXD4IXJY', '', '', '19:37:18 13-Jan-2015', '0'),
(194, 'Admin login', 'admin', '', '20:35:55 13-Jan-2015', '0'),
(195, 'Admin login', 'admin', '', '20:41:03 13-Jan-2015', '0'),
(196, 'New User Registered with reg id GQSS7F3LSAQ6STAZPPWKXMN8Q', '', '', '20:52:09 13-Jan-2015', '0'),
(197, 'Admin login', 'admin', '', '06:07:43 14-Jan-2015', '0'),
(198, 'Admin login', 'admin', '', '06:09:37 14-Jan-2015', '0'),
(199, 'issue card to GQSS7F3LSAQ6STAZPPWKXMN8Q', 'admin', '', '06:10:20 14-Jan-2015', '0'),
(200, 'Admin login', 'admin', '', '06:13:19 14-Jan-2015', '0'),
(201, 'Admin login', 'admin', '', '06:14:45 14-Jan-2015', '0'),
(202, 'Admin login', 'admin', '', '06:15:43 14-Jan-2015', '0'),
(203, 'Admin login', 'admin', '', '06:16:43 14-Jan-2015', '0'),
(204, 'Admin login', 'admin', '', '06:17:34 14-Jan-2015', '0'),
(205, 'Admin login', 'admin', '', '06:18:30 14-Jan-2015', '0'),
(206, 'Admin login', 'admin', '', '06:19:02 14-Jan-2015', '0'),
(207, 'Admin login', 'admin', '', '06:19:39 14-Jan-2015', '0'),
(208, 'issue card to P6JLZW7QN83NZOPF5LXD4IXJY', 'admin', '', '06:20:33 14-Jan-2015', '0'),
(209, 'Admin login', 'admin', '', '06:23:50 14-Jan-2015', '0'),
(210, 'issue card to 1PJUNDAKCSS8OL6NC4S2WYL4A', 'admin', '', '06:24:32 14-Jan-2015', '0'),
(211, 'issue card to GQSS7F3LSAQ6STAZPPWKXMN8Q', 'admin', '', '06:25:33 14-Jan-2015', '0'),
(212, 'New User Registered with reg id 7BJQEG7MUEF9C4JSO4FVCCS2D', '', '', '06:51:38 14-Jan-2015', '0'),
(213, 'Admin login', 'admin', '', '07:28:20 14-Jan-2015', '0'),
(214, 'Admin login', 'admin', '', '07:30:26 14-Jan-2015', '0'),
(215, 'Admin login', 'admin', '', '07:31:20 14-Jan-2015', '0'),
(216, 'Admin login', 'admin', '', '07:33:39 14-Jan-2015', '0'),
(217, 'Admin login', 'admin', '', '07:34:49 14-Jan-2015', '0'),
(218, 'Admin login', 'admin', '', '07:38:32 14-Jan-2015', '0'),
(219, 'Admin login', 'admin', '', '07:39:28 14-Jan-2015', '0'),
(220, 'New User Registered with reg id 9HP4ZYANPJH1EYNM6ZIVMVXKI', '', '', '15:06:33 16-Jan-2015', '0'),
(221, 'Admin login', 'admin', '', '15:14:30 16-Jan-2015', '0'),
(222, 'Admin login', 'admin', '', '15:14:58 16-Jan-2015', '0'),
(223, 'login', 'OGU/DEL/9684', '', '15:23:43 16-Jan-2015', '0'),
(224, 'Admin login', 'admin', '', '16:34:55 17-Jan-2015', '0'),
(225, 'Admin login', 'admin', '', '16:51:35 17-Jan-2015', '0'),
(226, 'Admin login', 'admin', '', '16:52:49 17-Jan-2015', '0'),
(227, 'Admin login', 'admin', '', '17:01:11 17-Jan-2015', '0'),
(228, 'Admin login', 'admin', '', '17:01:42 17-Jan-2015', '0'),
(229, 'Admin login', 'admin', '', '17:02:26 17-Jan-2015', '0'),
(230, 'Admin login', 'admin', '', '17:02:59 17-Jan-2015', '0'),
(231, 'Admin login', 'admin', '', '17:21:59 17-Jan-2015', '0'),
(232, 'Admin login', 'admin', '', '17:22:33 17-Jan-2015', '0'),
(233, 'New User Registered with reg id DY2HC61IN2NIKF3WAS7R12BVW', '', '', '08:54:55 18-Jan-2015', '0'),
(234, 'Admin login', 'ADMIN', '', '09:23:22 18-Jan-2015', '0'),
(235, 'Admin login', 'admin', '', '09:23:51 18-Jan-2015', '0'),
(236, 'Admin login', 'admin', '', '09:32:14 18-Jan-2015', '0'),
(237, 'Admin login', 'admin', '', '09:36:42 18-Jan-2015', '0'),
(238, 'Admin login', 'admin', '', '00:32:45 19-Jan-2015', '0'),
(239, 'Admin login', 'admin', '', '00:32:57 19-Jan-2015', '0'),
(240, 'Admin login', 'admin', '', '00:33:11 19-Jan-2015', '0'),
(241, 'Admin login', 'admin', '', '00:33:59 19-Jan-2015', '0'),
(242, 'login', 'LAG/COM/1964', '', '15:48:47 25-Jan-2015', '0'),
(243, 'Preview A0992JKZYXSYFL3W38TJKMCXG Info', 'LAG/COM/1964', '', '15:49:58 25-Jan-2015', '0');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `level` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `agentid`, `password`, `userid`, `level`, `status`) VALUES
(1, 'LAG/COM/1579', '33445', '1', 3, 0),
(2, 'LAG/COM/1964', 'dami', '2', 3, 0),
(3, 'OGU/DEL/9684', '1111', '3', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_centers`
--

CREATE TABLE IF NOT EXISTS `poll_centers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `localgovt` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `regdate` varchar(50) NOT NULL,
  `adminid` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `poll_centers`
--

INSERT INTO `poll_centers` (`id`, `pollid`, `state`, `localgovt`, `location`, `regdate`, `adminid`, `status`) VALUES
(1, 'LAG/MUS/4727', 'Lagos', 'mushin', 'obada', 'Sun 15:00:25 21-Dec-2014', 'admin', 0),
(2, 'OGU/ABE/9152', 'Ogun', 'abeokuta south', 'ake', 'Mon 12:12:32 12-Jan-2015', 'admin', 0),
(3, 'OGU/ABE/7188', 'Ogun', 'abeokuta north', 'Isabo', 'Mon 12:34:44 12-Jan-2015', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register_detaila`
--

CREATE TABLE IF NOT EXISTS `register_detaila` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `secondname` varchar(100) NOT NULL,
  `othername` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `stateoforigin` varchar(20) NOT NULL,
  `localgovt` varchar(50) NOT NULL,
  `meiden_name` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `stateofbirth` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `thumb_finger` longblob NOT NULL,
  `index_finger` longblob NOT NULL,
  `pix` text NOT NULL,
  `dateofreg` varchar(20) NOT NULL,
  `timeofreg` varchar(50) NOT NULL,
  `colectiondate` varchar(20) NOT NULL DEFAULT '0',
  `collectiontime` varchar(20) NOT NULL DEFAULT '0',
  `issue_agent` varchar(50) NOT NULL DEFAULT '0',
  `placeofissue` varchar(50) NOT NULL DEFAULT '0',
  `placeofreg` varchar(20) NOT NULL DEFAULT '0',
  `agentid` varchar(20) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `register_detaila`
--

INSERT INTO `register_detaila` (`id`, `reg_id`, `firstname`, `secondname`, `othername`, `dob`, `gender`, `occupation`, `stateoforigin`, `localgovt`, `meiden_name`, `street`, `stateofbirth`, `mobileno`, `marital_status`, `thumb_finger`, `index_finger`, `pix`, `dateofreg`, `timeofreg`, `colectiondate`, `collectiontime`, `issue_agent`, `placeofissue`, `placeofreg`, `agentid`, `status`) VALUES
(10, 'DY2HC61IN2NIKF3WAS7R12BVW', 'Sofowoke', 'Olubunmi', 'Atinuke', '1/8/91', 'Female', 'Student', 'ogun', 'ikenne', 'atinuke', '2, sogbetan houst, round abt ode remo', 'ogun', '07032049447', 'Single', 0x00f87e01c82ae3735cc0413709ab71b0a01455926e7097dcfa7ab0e89c54007c01e0050b241a6540426a2cd439ecba43ab57eafb9d1549a3310b5f2380bc16d9530bee2ad0fafe6d6a1f28a71c828338ed9d281827ae903608d46ade2363faae0852f46360c4b0d7153f5351744ce5a5950fc8a1731b898fa8d85933fb3d4e0818836b2c773fff3685e395b0f1d2b6cae3313e21a476f45bd8cd5fbeae654be0da8c17479b2b6fcdf48e2c389bd8fdb920f9bc989fddbc00708e8f77c985e1d2127acd50db885e1972341420a808d31994db875cdcd483f280d95caa555de450271eea89565b619bdef2eb8298b3709fadd85b7c18f6964524a42e954fee8c83a804fb3ac81581f00f8d984265d43e83b1cac3ef2b7f79649ab86516d971f9e8c7380078131098ca5c40d8b7b3dc59f1c6fb6f0f6334df8cae6235ab013e5962dfb10fa45914c22283d41d3350840fff10938226355b3615ff69e740bf9ed91aa84b40b8856add71a1b4b835bb44c8c3a2d700b8c21f719434dbc38a3e7d9f180dc96f00f87f01c82ae3735cc0413709ab7130bc14559220d45b14964d39f3e5cf7dfb32d70b1817d67a1c8d1aa7b6505064e9fed998441dfa82459207413a5c7fc66ca3f0f71a8c21977c9c5ca5128be65e1775e88608227121834998a302d9b732a3fde9aa71842f4f24163d750753c27445b39d2e164676edaeaba5fbd09d259ebc42092d98595f1c07645b0ff45e3b02c6c61d8623f0a5f6696faaadad3f6648544038e6fda8d02709bff241e042102a3f7420ca76e0615221ffe42899647d82a35c4c6b5d96c00ee5deb4ab2c475eac91f289255c0260bc7b224b3ff09c673530b656f5d548d47da3b557d44c44e91b29a4296d1414bec58819ed15c545396429efd7103540dd942cb24dbb0102e582c392947ab4ae533ae9072c5a6a79da86019e7364ac027bc5a17cc2d72b42d58613783a5202e236a1e96bb742dd3a3546a58485e045c855ab8c8d69757991c27fdbf46c3b17346e2abb501818bfe8f7858c0c4820741de147455acf7c5ab19157f7d23893ac3d198a5e2ef5dfcfd3eb3b11ca7e996f00f87f01c82ae3735cc0413709ab71b0a4145592934833968afe145fc1d4465f9d1d0921b5630e23d19f5cef98c4a93adf53eb5ffca30ba023fefb751aed5cd9c2086a956ad44bf4a938b057174fe6bc3679e6f532b0e77bf4662485993858a03a8d70f9d77bfa9dbec71e4c502b6c0d1630eef43f3286547c46214a901db23b81c10c3d6b8307d3984b7a1246f600ee3b688a4b26615aea1141132363fdb76117acc8f7e714fbbe98e6aac0671c988b424d9d876e583bbf0660da3f28bcba00c955a699e51cf29c30e9f7c5bbc786893587ecbe6df747f26d63543c92d32187ae6c61e054f0cc9f9f53b837f05f413a5a8543df557b25ae12050697e0c10b4d2d7668be8afcedfca9936d2d552837c54ca8b2d49b571067a8657496448a54951339c63b4097e121ea88fddb54c5fc437bf997d4501650ba182cbd34e6910b7720dbfdd5839df2d95938195f094315b8584053aa0a23fa11dad2368102112c3d3611c621517fc21a4a4116c6d8c41532cedd90be5f23af988905eefc1cfc4bc4a49df16f00e87e01c82ae3735cc0413124e0eeaae0b4ef5d8acb0c7a5cde4c9b99322def5e14e16d69686ed8d6d79f843b9e2b4dc8235a43223311475c2b3823c802eb88d11b87bd2c280a9cb21aacfb4692a34fba37836c7eeaa725aa7c20ed6a7eeee5d7e80c8243f08fdcb313c53e4fea683f1de7c0cc0479712248ccc6d053ed6c283b2ee338ca88d631f3f0bfa3c8329c6fc8ebabbf6fe280860ad30d2815125587103152ae221b29f753c6ee62726352870db56cd418b83a4fb128a8d878d0ae31fb6c808f28eb1973979fb277ef83e862daeb38513bb6ddb88cff2328f399b0702781140924650fe95ae9ebbf8ad31ab7a7a4e2742c3efcef881786130966e96b45b789f230a1bffa1aa3c81552e0c658ea74f04ba3fcd032a64d1b9c6d25e7a9c531bd21fd663c90ca26fcd654ea6fc88850c38ca85f1a3b6874918023bd2829931230f2598cd406f05fb020741cdd96d9d3a8bfd81c4a1de8e7f341e2d96db3b09eb503214f0f64c096578bd07fd1b057a740514a885cd64189e08c5c15138c3fe86f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00f87e01c82ae3735cc0413709ab7130af1455920f6b9ccb2ee21cc71bd632da0cd6595ec00dbb64031f841c75453ae965295a759faa3c6be86a1ea38bf70c3c989693132202ba5a97a4f2170793b5b2b99e2b245054c244e691637e6ca9f40b5a81aadb4fe151e590d05c197c18ba3281f13111f7414af39036fd0343a3498ffc1edb533fe13511db514a1ed63d0ce6be45641b73186dd319072d54b3e62c65978eb31c619b769c533d76303aca32dd2ab91b2715e6624dffb8b1a8222b4e53441a3dc3a8f5459eccbd4b68b849aec92ca13335204b814a89072197191ade44b4fcda2ac203a29bd6054e3c71ed320d8909e9a5733cd25fa5c9d0668c1557b3c33179f94955bc2ba77cab0109838decfd4f3d1af6ed204e184167d2d63f5e363a0e65d9924fec114514742462e55be39a5d14938f20797ae03c2a54b1deefac989b9b7b1497d90dc7c1fb5ba5df3306ab4f27201ccd2acb0371351dc330721a2529b70cb17f5cca519094f2cfcdb9ca6183ee3f4fe7878ab26c0b6f82eb63e1ab816f00f87e01c82ae3735cc0413709ab7170af1455924f3ad7481978fe510943c7eb4f85bce2ec0a81de2d4cb9fcb9aea059d303ffcdbaf391dc6f8b3ccafa355ecd09b6e39161fb96750f52c05534b1a0fc4144d7d25e86e51cbea12fc774e989b46eceb707f32a5a554f3ba8fabbe3407a964d8d98688e2ab0e823526c5ceae41babc634415975c6ad9ffb4339e2b935b9b6fd0ded10a3f2422ef3edbf0aeac3e809436c8287d935b50d481534146e8228a4f723edafd17c17d1baa8e9bddb43963b833fe94a2b22d5d43d89ab2aea3ae3267f55ed15fa77cb291bc08f74b82a971171858d5e906b167465450c21f81350596b77f2e6ade90c5e074aa55cf42ffaae63ccc2272ba82e924c844b9102a025037ca48484d4ed7c3d7704a7660003dfc0b2c0b20a06f3869621e221c3f3e3c84333e84953f9277436076b82c0414a402ebbf713940e2f3f87ca0aaefca510cf540404a1e8194fa7febb03270137e44ca8f963a5c8b30a9236e23100f559fb9941cef83cb0c189f8f0eacfeb8e6c4ce955cf6f00f87e01c82ae3735cc0413709ab71309d1455929c64fbc361c7a0b48061b74f2d87c84bdb583b3bc88a4ef05f35f2fabba14b8b2a3aec8f8b344786faa5f1a6c83ceacc2dfbdac14716149bfcdb643969a204bbe4332b67e3509250d5086a83cb87211b23c35613324bd74bfa9bdc8f6612ecedd94c71204d4af7192f4ea2ffc656307948888c2bc6109b9c63886545d64979ca1bfba0211d955ea9940cd0e772f06e39c2be630124e12286da89ed6ed6c5a2c0dc97d0da721de65a292a8f9bf09510f0a1c9a151b9ff24eee57099553df340c41ee6e7b881008acdb64d6cde02acf980138a0993a8ff32de18849e5ffb3e52cbeb2274b75e8fa9dd271f1fe83128806a92e8fa217e7de661e09062e056e8dd12c1b6911ed4711972d7b242a277fcda703a6a2e381a6801f0b99bea4736c7592a13b124e4d196527f9b4cd22e706ffd88d1ee40708e82cd207ee97537106b7e7e7572bd7894976d1b50068abe9c90700433cbd1c61dcd52d28cddd45275684e3cf594d150c884bf7b7722ffe715396f00e88001c82ae3735cc0413709ab71308e14559273057063a310007b51cd55956de8176fd20e57ae115a8dd709e4ca55bec3a6b50a17ac6f5faad746cd54a5ad413185af1e3e4e731b96119f9ade3df62a45e19a58f46dbd5d5fd058478de671c14089cbed196a959bb8a33c4f813dcda70d7d6bbc61f0a630885fb2bcc03b72f4ceda5bb669965c9b7bb6ffbae19da8aa08317812049bfc66f125486af96968c18c8ad595246819e2ae29a514558b17f9d2ae0c8bc69cd5b2f4b4521a40d8c8f97608f19faced1883845fb9fc8688c8b731070fdece885509524ca423e89ede18f21022c3542ca8c07fb3212ce04f258d6803d631aab993188fbcfd3795149cdcadcfa2e8ad49b2422f0381d7da0344db24c4ae9826fa9eb645e78a169a73bb89892bc1f137bb3f91917e97c2aa60e1e2b9180342ee9c1671522c21ef428618f80cf40fb478a367e6405387fada45b8f6c0643611b9f7214a0b7ec330e622d18c7677fe344c9353e7fd730b787bbcf3fd94a126b2275abb9fff1c66a4cb4af5473412756f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'C:\\Users\\Oginni\\Documents\\NetBeansProjects\\voters\\Voter_Reg_Sys\\1421567665114.jpg', '18-Jan-2015', '08:54:55', '', '0', '0', '0', '', '', '0'),
(7, 'GQSS7F3LSAQ6STAZPPWKXMN8Q', 'abiola', 'adisa', 'dcob', '06/05/89', 'Male', 'student', 'osun', 'irewole', 'mary', '4 akerele lane maryland', 'lagos', '08024162244', 'Single', 0x00f87f01c82ae3735cc0413709ab71f05e1555920e40ec0c09bba209ffa7646bb3696563e633c4109206367677e6b335b8e11d865a459bec0e38e835ba09400f5d8052be1c8c5ffff189419b7d45ae6d32fc0c8590e04a167b1bf40424712bbd620f283d89e7e580217295caccea0ad8c997510e304ad0f4dc0ea87ef6c5fb288c542c8203843cdf5c83788647295c2d4b010b13f2ed93482920a6810c43f471d6707139a86134622d371d20d2838f6379c6bd41659f75b5f0de39155c49042580d2711777f46c0da6871ca3d7ca8593ccea26281d44b2af331f6d0fa4e16f34c1a51d7306c47cce7d981468daa8ed371c1781288853195a6388c546ee78567cb55f7fe929da62406a5bd4680e7b116a02c9929d5e31a6094e97ea73db37b57ce66fac59e24be12c7cf420c83f896de920ec129c2185df69fe644500254782410e83a3b7cc5179d0af1363369d1d57af9794c332b9052f4d3740a8a3f0cebb350001c1f439183ca68b83df7b0d673e98cb8dac8c5f10d4ea9a403025466a77607ecb136f00f88101c82ae3735cc0413709ab71f044155592f60afb2b30b45c05924c804bb92e0f19ad9f7002fc70e75e57784fb8824bd4cb520945e6bd19c031adef93116d2399ed1a3d7d6514504e0179fdcfae2734bcd94b419f1e45c4ab47f3f04967a5a4e3e963327842417ed9f1324ce8016f02ab90f6f286c1311b9e30b51a2b7d46d09221634cc5eab8b10a0ba115242bf4018fbe8fc26ad909dd145b125a40cc22b52f4ae2806e69f05000f6886345e40a3083154fac757bc9bb315e97bcfd7c2b757f1685bed71c3111a5681dfaa3cead853c95460019049938c4136f2699bf313ecc94a47a136b7c79ce104682a6fd03fb9368ef83899a3b8080b47522d5b4e34efb77fbfc7485b00b8bdc86eb3266cde8a4bb355e7f3caaf392de32165862fdf410fda1d2f29d9ba74ee6e2cf70fdf25a0182d3c34d6fb68fe26bf749ada53ed01ddc445d4476b8498030e99ebd77fda4bb5a4ebf624db14dde392afa34e008af9d7826019fcccb85f977a03c7020c99962d5bdd7d29a3e23a6e0c7249ede8f202522506f00f88001c82ae3735cc0413709ab71b05f15559235a77d7d2537dd116889bc9be2d3b5e7e012d0c92d2329ca86240519edcc0489bf1828a58559ca68ecff0dd5f61df9edc5ee4ae2d59626b3855220c6ddd33051640dc405256dad7899bc840cd991e1b2233db3f11a70aa43af05b9e93ca3352ff349e81443e2ac1364521099fd94b16a93c22fe1c4f4d38d6708499f584b7bdf4d2ef3155a7d75e16b6159ddc0641f0f71effbb8aa86165706ee825d46be4832de67d7526f50f85ff35babf93813c9a25ec580d48c102dbfd515687b836f86ae07b7cc3ce9587ece46584b383090f6e5b439a0d8f50d17f4d044fdd3499ce4ebf518f2d336232ac1bb55e818286a6dbd4a04aea2c2cb6b5a70e2f8eb04e1d6cce15d446773a48fd680dbba9bd6a8a36748d8ac7071442ef63cbdbf15ac4b67d708cbdf085a325e79eb656ae996e778035e44a55d6e829fc0eba881ada57606af50cd05a96efd6b692f1a1b2c15ecb9bead6ba038820cf35ee5a73b6b5c7a0981226474d05742e72cf95352ce3ccaa3ae6f00e88001c82ae3735cc0413709ab71b05e1555920450cbec7d6f32fabb91258acdd94f7014b1a8bc3f9eb59f777f5c779fa5f86862ef67f369f94c8ba4d86a311d2ef174c7e9334d66e2746819772416c866fd60927be8ec782aa27dcb5dcef9db6f9d4df949738ed7af5159aeb15d6f9f1959a0b9461cde450ea207c935687fae87ac3386c7d828cf5741377370cafa789709b9cdb037a5e929cc86a88967171e17288fa3625a0cdec5ec8f959deae4a926876be4368ffbcce06e55671ed2756e1922284b38387d8357d050d8abb71cdb1ebaa1ea135b169524bb837f759fed6ddb4c2267cc9ad6131ad25509ffc3259fea387e2f1457142be1e73cf505964602cb5b7b137b0bbc9a43322935fc9a371b13544d5f99edb57533a4d53725f5bd2cbb3a67bb1f035ff5e2b1b3306d01dcdbf3bc4cda9f3574a5d151559322a8da529b858463c3f61d9c29c8c47dbc3dd2ee796d18d7304041a310387642906fc2610d550e05ff9ce3b79d019b19c3d5ad53a16c0e1d688e40aadd1944a3e6a8330a081de36f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00f87f01c82ae3735cc0413709ab71b0ab1455928d64e3b4a94c1d4aafafe044fbdb2d305a1286350d4fb46ac44e9db8d6f5bb91a5d55f86e7c29d895b70e014c17a0b1ac0b87c0ea36225912e017873ff0020075144b2127a9d994c00ae2474fa1bdf5e25b97e96345fb96c27b4711a02cc383affc46e6927e411c0ae64950e50aed3602ece2f18f8daf80dca13adf4adc79b2a132bd9d79e786e1d8fd17f944695925c78ec8096f753e51187de1eca1e4ec8aef03daa971f1c0ee3988a81b6c38c29113e01fb599013260f0d1f2ccf1b609559c87034476bb24e9dd3d52dc9bc15a497cc7313257e2b86ab2d2f4882413f4f459a098f894d7379d19b4453fafd7cf02e4a4359ae96687a843acec53d035ef84501517a3735790f3b6b42028bfe94de4ee2851ce855e1282ff684f27e08e979239529dbdd5125bc7838d3dd69fd177ef2b65a0ca5895679e1504688281d9afc6b7c4fc72b3ee2c05fc0ca63e5130d215b199895c5b29b6fa1ff26a2e80575e79b2c6a4400dddaba722140ba2b1e51d46f00f88101c82ae3735cc0413709ab7170bb14559250527410598325fd908d137da53e472fe4dc8a33e74e437102b50ceca8c01405dc009e8911e4f0c17ad42e462a92bacec2aef41d0991377de2a31a8e1a8d477aee1244768cafb84b4d55dd3199cea2bd85577e242b22a5791d68144358962088e650a0bdff3e2219bed8c97f7a6572be84df178fd988fdb8eb907f83e2819435626d7d14c234bda49ddf5d4ed4e3876a4025df2857592627d009ed957b061d95c3c1107b55bae06e5943cf344b51dbe78b939d20c8895d9ed937e62be95dc739eeaa8d27bc7377d0c5b754c89739fcdf819c7c052b84a5282e61a4f815992d8e7e4d206a501986568c05d6201621d40531209d694892bef0be715cb984aee7172c5390397d0342e93ea7cdb418f2ffcaa2cf4c4e4753ac882ae9e70fca280a91aacfeb152be75e2c06553fde93c5b5c3848e47623e3f94cc00bf2a7858c61b6bc170252b52a468cc29ae390aa7f8d8e43982f4aa98614a528f1b48623dd04ec1c2b404055961af9cd2ad24127745ace18c6f00f87f01c82ae3735cc0413709ab71b0b6145592218183b397c9abf3005d6cb3b4c0acea22a863e00ebbfbbbc7c02400ca6eb830b8c95b998cdb73233be2343920346bdb550075ac4ecf708d89afe61ca9ef2398b03bfb120f6c64acb66aca1912d8d806e2c7ab038df5c9b0fe0174f1171490a8227b7e2c5c293b63127793b014748eb81128c3365cc2b565904fa88ece719ceb2003c0e9bd3b9238103b7d729d5f44ce42de358ca40dbf4cf1a5ced840fb6ade1d676fabf64cf6e7ab939e7aa721e290f5bbac86a18834a010cea11b81e3670db67b22c954c3f30aa84dba33f384c6adeace654d4c89f827940e408438e3747e0df85e243cc29d0b8741de34315a9668dea58261e0f9de623f28433331712e988f941c0749e637f77c61b412fbb808623367cfbfeac8468e51114a2f67f6f9aa32dc99673788e38ecb10170037e07c687bba47be2a74c4f133da3556e5d9657cbb592c2d1eed5dd877c1dc07bbf0418737c301545799c82a31fd928270142b528dc9a19021bf7b94d262cbeadd33b06f00e88001c82ae3735cc0413709ab7130aa145592b0116c17dbd11f9cb3567b46bb6d39b9fbf7d5d9afe4360f7941c4ce8a76114ec0398ec91bfffd78f4f2bc9850f97ec05e5e3b504047837e993df7343ac35b09636867f8b548aff7e6e3b2668623ef2abd61ea9aba8c7120625a79fc6fce91aa5ab1e566ab59f253ba26d9aa0bedc4e861b51baee0133e92b47af0d80b6f6a28a6f3595cb7b6a68baea383efce2f74e461640ed03533efb0bae99c97f1a253d873c635127b07f6ef33284b31ab2393bd20ee1a41fe7093bb6251ad6ee7b198b371c8bb6177ec21fe24afce05dd362ee11e28180f2b21406697297dbbcd13ae526f35df2e119ad8fdf5371dedbbb38a692a4010a442b2d6fe7b2b7663795dea1e8da7f0ee038a288f71efdfcb264e703585ea04839327c02065f460acf6e8d6a21b48f908c0055ea381dc84cb50e20e617c8f26b37939544df877a6bf73b84c3ac40f731db6bc9c113020328be7fc279dfbaa9d834a547897c1d37afeec9524ac64d5bb5cdac1584cf3d3c02e61f841556f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'C:\\Users\\Oginni\\Documents\\NetBeansProjects\\Voter_Reg_Sys\\1421178696135.jpg', '13-Jan-2015', '20:52:09', '14-Jan-2015', '06:25:33', 'admin', '0', '', '', '0'),
(4, '1PJUNDAKCSS8OL6NC4S2WYL4A', 'Omotunde', 'John', 'Oluwaseun', '12/06/92', 'Male', 'Developer', 'Ogun', 'Yewa North', 'Xta', 'Lagos Nigeria', 'Lagos, Nigeria', '08029711518', 'Single', 0x00f88001c82ae3735cc0413709ab7170a31455924b98a506b5a546ac1a3fbde7c33daed11b65767a21c29534e314e11351c31df78f416e9e88b43f0ae8f84fe1f026c64f1c806e9e8c728c8d2a99ee0dce3db567905762394900a8933d4096e52c75aac3ae3a69fdd85e969148a338a81757ca1473d77f7fa7c23de8ae292ea510c92d0c56e280d1d1934b31890af4f553252f00b7b36a15d6a1592cafd0e77d1386571218877ad3e1219aa42770d5666f4aebc9668bfc3a801d8c367f5b4180f7887621fd9684dab67496b167c5abf396d7bce43b0b6e7798348312b45680ee917126303a429d57db10b35e6587a38ad37fd428981a359f66ec9236031886c3b91918504419015097de00f351ddcf630a0ddd50e16f61caae192635cce2485d53871c5a48e7f308aed9a640ab003895e0107f4cb1759593b9ecf14b082c40444580956a99a57ffc31950a3d2f130096eecda86c38f0978bd16b376d4d4ea464e9e537e9bfe48dda0006c2102b0e63c0307ddb2aebbdc6cf4d36826b41ad736e0c62b5556f00f87e01c82ae3735cc0413709ab71f0a01455928547bf766968804bacd4c501faaf988492172c587e1911eee3189ba2fdc2cd1a257aaa5e2965a9c366a6b492ceaf07d44baf5c3e44ae150aa7c46011d87db85557b419b3abfbbdc0984b13008726ed16e09ccbd7a22ed43751e6b3e469f07435b19ffc7a054f71a74586465bead8b1d9db321aa385855b61c57aad762d7d327c529beb9bf7e821f6a7b976193a9e93f0ee488e888a2ede79b530d7344b311dafbe1f26ad5344358a0910a940584f786a48de4d794a8971387feab192ec92ed2f2d084e705ac079a1fac7d8e131b2cebe2f34067e81ad7692625a489f140320e24f5629cf62126a13011a57c91fc01562f45d8d901e76d51c5e1d07e7d27b5d51aae5b4cd19b00feae32d61317d325f59ad281b9975160fa684271636364bbe064889369f02dcbb68441b29b8101debe255a6985e8129ed4efa73e40a91366b66ccb14f90159bc5aa20873b40493eca6b92e431fe8ef3a0a980d2e829a5e68cdef1fada1fdc8ef19d8e7014b3ac006f00f88001c82ae3735cc0413709ab71f0a01455928440be7b687bdbf622dd694f1f744d3589424501c8bcc0b20379666b9d6a2da7b25b66dc8ff0e810e2a11e7214898c286aff0d17c057f5cc525e0e89e180a69598db53168f9d675ddc6d81a3ec34463b0a639e2015a23591da083abb1ec13f79559bb6b07982815f4ae38dd4937ea1625c295cf68b67bfaf6c0bfccbba02cd1fa3c6e2cc1c0b61841cf297dca4abca73c8f2bd7224a11ac6683309c4da388da1c349aec6dac1b08c00e4d7a6bd199b1cd48d154753d852521d410df87d4a4342a9766be747c1747ef29a43afac756c665aaaab13102ca98e8d2b67ef08ba5c7631bfcb0e14d75d3180e7719dfed13362f2015de88d9b1de0974e39de5d2c81fcb6fb3165cf1444d379c3949d6294369c541bca752c0d37a4be69b6d0d98dc4634e4c38d6f5366dd3361db6d605aa933bb96b6900d0be149b197019c2c5ec0381dc95f13e821aeff027c3e0c34a6b69a3e8a1df62332bf90769795b6143f8b8b98d6bd641635d8028886d511e061ae37f6f00e88001c82ae3735cc0413709ab71f0a01455928442bd71696c7e5354a4845fc5521d22c0aff0b81c8bf1723f12d8504b0a4756fcdb9b4d8eea7519a7b0cf210c5f78820d7f267fb855d4a6c4473c93e09cb943fe1bf0d25b7555f3a6de01d5bf30d5ccb828619dda8f245026eeffca61c0eec630fabad628643964914d11df7d50428a276813353b7322f8d1c88656f648cee34893268769e663fc34c5e288220e7ea2a84e9532a7f2bcb836c07c14a2e5e5317bfeff3aa25eea4a6ab7d25f72a98fc9d29e7f67ca134f561cd774f9fff1615bd0dca2acfeae60ab2eb3ad46d05a4a19b96d04f43eac12748e21c6e5b1321f181eec8cb265b2e5f221baaefb9f91c33fb71d29a487d6278bf7e6b31b65a569b075c0689464f395bc034bcb90300553ce43536f02d8fa5e7f9cbcab0ecda9df40dba52e0526d795b6fdc4ccd416b53aa63240aa0fc2ab930ae83f55e5067ddc47c4c1004896a6d2d4bf85727fa3ff2aeb8136d0a9b109c3f37b06c2dc063d4fb78cb128519c87b6a154d5db2b0e3e75976f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00f87f01c82ae3735cc0413709ab717082145592dec2773f883730da06455b345dc59335a0e306a988d141ec5c3910691de073fb6da3944e62ad876c3603e396b6627aa2ec3228b69dcedf5f881d89411113ac9981e8477b1aa430445d8695b97a291b4acd74c80c6a5a7d6fa5be944c85d5d5086361a219f5f02addd8e82429ef31b531558765848771329610f4c8e0822b9ca9d15dab0cc664774c752601b04051d51d14952567d343355dc45e7cc9a6ab5d31897c292ad7d594437c3626183b0a0372c94cb3c19977007b2255ec542ed2633e469f65e39bd1cd19fc8b8ef8bb0d5ec35018db6876577d4a761ed67bf9de859d0d60b6348029e362d62ad4102435ee3f9a25eda5081a86c01632e7cd3a5ed9acab746a49356a8a8309eac17df73bd49f4cdfffc57a03d7d8dea30b2b154ca3c0fbc6e35bb108a3054612161fb88d1c2a169e5b400ef887eda9cfd11b8e877c32eba2a3ab07970ed0faa2c679a26cd386a25bc5fbf69be5abd5af15bb4ec46278dc7a46bb4591f15d763c0a872e80106f00f88101c82ae3735cc0413709ab71309c14559205e084675684c87ce05093d3783b81b6a9caba6070e0c411fcfa853f1e61d6f8a44b49629366c3851b378f52cd027db3f0ee6f931059a5ef925b61dc40688a1c82e09d4e3ba97bb2a27ddd17b9a00e9165ec8e56c85d4cc0a8ed3fddcc8357727d3da38593c67605bb2aac4f78a3a385ca612c52371b157d8628aebdf76d2a0b20125622ec0e6a2bd3b79490f1832bde54c86e98c1e9000d273f68c9f974fc5bcf617eea13fe09ee467302e44e5d002be8ec7895bf7fb17b00464631a2bfee8d049cefda319dfc33caca23b6c5bc972037209067c64d82af6c5dabf2305685ca37464bcbdd23e7f34ce187268c31d6e6a1bd1e5c7075b7de499d2d326b0d89223a8bbf35f01632c5026dad2556e513fad83efaf68cdbc67f612949e4e8e5c68821f07e046f1969d2dc084fdc8954e44330dff575d0807f1be23d9df5700c9038dbd3d2986721421ee66423fa7302f4e60d3112d46baedfc7f41b51299eab3523ce9a49185b2d4d96bc925634e81bfb4b846f00f88101c82ae3735cc0413709ab71b0f2145592d7f110358233dad9e5688a66a50e643147ffbac765317035113fa911b48bc0cc510307eaa1fe661b7c8dcea95c3182ac4415f82c58c2543b5483eda7f3ffc9bbaece1df9f0db459e0238f1668ec0110a40b00dd683556330177b11b7fef530430cb648507d215220156ab5a12cad2c8eef2937300a1aa8326490b81161ed91e9d4de8b8316051beffa5e0a3b98e07e975d9ec143725273383851bed06f3af26097252e28cb28de994c0cc6571c5358576d6fd0e7270d960f6967e58ad1ef7435d06950ce8b6df7dd0eaad8b6452d74c0f86ca2a38e1086bcb49347f8c0fb38437ca5def773b425cdd0b9e086715b033f0a5680d993d902430c786fe4bd371e2d1543d80dc057d9019dbb8b0744cfc5c11d55f9970891fb076f39daf080d4bed8fa44b4a6fcff3636fe3a9ed95171d168ca1b2ffd9ce228beb5dd8021fecddd9ffe1bec864ba3c0eabc6e9ab7fad317bdcc1e819bf82138a5efda8b3d3629b32c693bfc1477a32e6af95e0da38765c054cf6f00e88001c82ae3735cc0413709ab71308514559230e18df6703f0dd91317c174bf84fc9d823dd877b92f7c8ca7a118629cf9d8a18c2f30f8cc3c88f3aada75a6f57fb9678dad2b61202dedd245cdeb6fc1410cc2865cc95c3d04a6fbbe106ca89101359b89cea2065d775656dcaaf4fc8cef32b225d73430a8e6542d67bb86ad50475e76d0dedf37dab5ea190b2699a1db666fb709dd16eada1f56a71c10d7750594f7f18230e2b85a8d496fe4fa5049a112e6b76d6a77d445f033d9058bfa150be2e5417cbb6af1341559fac6961760db1413e4cf0b9dc786f34ec3ee100e20fdad8d205cc0407b11973bec0d036a93a17449da84ebc53607e66232bbd7d7a459e1182556c0cde582a5c2a103a91cca4a41f11ce36f280dfee65168ca7fecec9e680339ca902be4b5da7fecb8011fe827f8d1928c46f3d42443a8fe17dcc684ad78a3ce30b0a512e46143ac93be03ed91ee7eeb7de2faef2cacb4d540437fa4b72b5a1810c9ad1534ad5982cc0fd95493e31c816f4026b49ef3a8df77ff88b6131c96636f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'C:\\Users\\Oginni\\Documents\\NetBeansProjects\\Voter_Reg_Sys\\1420810503515.jpg', '09-Jan-2015', '14:37:04', '14-Jan-2015', '06:24:32', 'admin', 'LAG/MUS/4727', 'LAG/MUS/4727', 'LAG/COM/6013', '1'),
(5, 'A0992JKZYXSYFL3W38TJKMCXG', 'osoba', 'oluwabusola', 'omotoyosi', '01/12/90', 'Female', 'student', 'ogun', 'abeokuta south', 'victoria', 'n0 4 isabo', 'abeokuta', '08144217919', 'Single', 0x00f87501c82ae3735cc0413709ab71f0fe1455928ce0394dff781e7f3f28856f54e1be3e0272d59c967dc9545762ceea85eae323e77a3d93f948037a992ec4c4b9f8a381078f450e1844cd189b60e76fb620ceb5ef495ad1dc949524d57b18c413a6591de5351fc45a407a576da41e4ca9a1262ef468021a9cc2bb854a11b9ec27db71078042991bbdd1743973562a4f9b016b7e82171abd99f9adac0bffb81ea264df74a5c63977877a7dc38004631e0a1413c3c55b64d0efed6f0a4fbefe4e11222c6800902695500a663d7161eabaa4d79f270be8a52e77308e5747bed9caf900fa1ad06ba947984545f01c06f297c9991008749f157e5ea460bdb36cc676632404ca2c0f17eb28643fcd78d249181d86b9c17496a93cc34946f96c47e60f41f359f9387b93ef64bf08357bc79f4d25ea951136cca34555f625cef68b00f83544a8dd8c0ad3efb6eb90e53348ad1dbf553f843ee2955f817b2b5e5ba5c14bb3972e595b84df27c037e1e314c5555df677dd7595fcefa0976f00f87f01c82ae3735cc0413709ab71f0f114559228d31aca97afd8368a60d06fc5ff845614bdb1eb4587109651896497fc7687304e0ddb7853f435540f931242a3c6d23fb8e94c8f55ba1e71251936ccf84ad43b776c71d80b1332c6f334280adecfdb854ee5befacc01764d0768ca3f3f34a9c46250919fabfb4c22ad99887560b6fc1ed02eb39908c6ca12825ba5cbff8b340a44608215a6c5491ae549f86c21303d902f745ad2f64f0bc970c7934b73d461f1161fa06cc2435f751e421ef482d2f2651abf3db0ede92945d9020abe8756c02fa4fa1dc318cb9deb0a83ebb46b5fa3c093bcd12f485e48efb276a2e759c7c4f81d267fca3d764ee59faae3d348d15770900ef9bbc690f3997059d4b46ad61f6fae8f5a3a1e6fc1c01aca7e00fe66729b8abb58e84bbecf810e852146031f5b6eada6c919a41dfe5b557f8ce62a3d08e389e5adf069cc72ff5993c96249a6d949f1d863a27a16f42555f3e796fc89d6656d4ddb2f97889faedbb13b71f15f7550a917a870b37e660390ec623227967b6f00f88001c82ae3735cc0413709ab71b08b145592e5a6d14db389ac291677c9f560b7071846c1bcdc5e4b2eb17d474dfc0cd2e1d9ac48f1f6fe058625d9586102e80d307c0653fa8335acc7033c50c8e69d0ec8e78ef19bfc1f75e57646cfed7e1a5867805559de78ebc984c0f396cd3b5d4fa72feee99a1b30f272b332fe6f51f7ec551575d22a1a83095daf93b7bbe2388eb9f57c231d9b423d6a5a7ca5be3714dcfbb5fc62dd43b7e9df3ff1ddda0230faabb5252a362481fcde69af276342251572f8aef15a0451f7f66c3e6cbc65b9ded545d9c49653d881ec7d277aef4f0a13524ea6e4c22075b58226aaac532f52f9fc4d3acb5d7dbbec1964146add874e887981eb01f08492be38d0ae3f4ccc6ec43e960021b7b9adc303bb636dc1f8f63de5f09681704a60aa73fc310b40151c3cceff6198b69ee1f83c966b31c3d59c3a6d2fe92c76d0dfbef33d896419c489c6d0566be3dea94148262d03b2c1e4db21d17492b5abd26094266010e3640d6a007273adc38515f8ebc4e950c04f88923db5856f00e88001c82ae3735cc0413709ab71b0f4145592728ba8a651ead7b9d6efe7a31860eac4b547b2d13ffedbbde1ccf22ebe9d437edf4d4b45171677597f6e0c80b06578f6cbc6784a97d48a2e692ec5b84481e5f2b956364eeb09249c6e6169b20354ce3163015550ec7992d2e7c076b917f7788cdc1e306b466bf2b20e1612b5386be5863e969b160e0501ffd53d496982afe675e03e553cb7bd199997f8e3ac9c207157ac802540170ab7c73a26799ed3d71b0509434ca896bdb0b380a490816a58be3757560aa5302f14893f4cd1d4338d34ba19788536af2c85d8326d334ad91024dac4ba3551c1e1c90a6bd7ba83be86284b9fee4ead14af3f5794f4c922d845d6ca1ea789fbfbb982e3d97f35beba5b592c5602bfdb07b6472f8a13a1694171ef78caa220c9f7cf9bd5f2fa1e76e9fb717be6fb63481c904904375aeec3a4814dbe09f909193f8ed1bb6114c68d3285a8e78a7b81c9b38ad32debd47d5ffcefca6c34e41e0f09247ade56aff8e22110e17b80bec6da17fe51c4e529f48bedb34a2b6f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00f88101c82ae3735cc0413709ab71b0fe145592830d6538fa1aab9925513bfa476321500851853b8df6c834ad4a9077358f7de87bdd51f06f64aab2add0de536459ccd4f8f3e3e3d9db491e91df9efb4891fb7db578233834a8f83783fc87fd7f310b7deabb096b2995445dbf47c36c50090fd302e11306b11841a0ae45c5491239b1e5484c889ed9c51f43e003d9bcfbe8752ecb46aa0ecf825040357a2312fb75782493dcd16dd3743de64420bd88d1ae258ab3977299f203325705a7bc04d4271cf654f457613311d19883101c6c66750380168a8a1843c7cccdd58fa753398e1b371916a530df02b5f643b2fdf3cc55c36e8f0251e1b655c6f26f177ce06cb564b58a296282504fb49d9889460d6a34ff18a654f2d4d473e787d19427e59924e30a8f69b16fbf1663fea859558fa201eb849ac69ce02e2de6e854b324a83bc8eba4045de9ea0338eb0968794fe58dc6a43dc87e3e33ffd36cb3be9749d85ac260370f0a5399d243725599d0c853c011a9ee3fb29ff199ac9e6a8a36e0793772770f836f00f88101c82ae3735cc0413709ab7130fb145592231fab96db50d592fccd13372bc3cf37e59a44ec45e66b1c4a8127521c374b4cd48a345b22ab730d1cf1a6e3ed2e906cc74c828ae04a488c66581cf8622f2861da721933fb92f5db1f38ba6524ca95e7db91d60e73d03cfa610183648c1e7644993eb2df7926a57312db1c7d13c2660222c77a8631795461a2a8622382830dd2d32dd382c49038fd16ebb752d0ec63debf76d8469d1dc628d99e674f46ff22f5c9a714e43d04b9294e8c62cf5ada9830f47af7ba16aad7c8feb6fb05e236f64c54a512516daa44cfdd860c49c9d1895489c972e978fd127c629c44c8e7d675a04d963e095976ee9ea63643cb38ffbcb10efd6422394bc70ef06ee3c58003c3d076325aa0568c3a6ee896236ce3698994dd8c7109b13b8f7267a1a35991e4e3450ff039f0cf202a542ddb4ddb95aab8063e9ee9b4e82b8807b5a05bd5f62dde4b0e68965f37f082bb6f2c642b915883661e6607daf1ec00b2441215c4fefcdd09ebfc0bcd9555bf2483df7ec3866bbe82c96f00f88001c82ae3735cc0413709ab7130e7145592b33e979f7040d5e73e5750a1eab6a03d307887e13e1da5026380916292359997f1c36f95a4ee0f0568542b301f273793b3769663c83ac73821a5817654cfaaf56e86f143c209e0f02125b785c62be5ba6cd117c2667d076fbedb8e5c4506f7584f9b86bfbdf95122b63703aa4ba1c362f221817d59dd9d5b1253dce7848a8e43b1a4d5630d9c977313d7b3a848e35c39c89e9fe43fc5d9199a2475f47670ac42e6c0b7f4337a483285199b06f75bcec4083a73ae5c9eaf3cea0e305853a04096d84ea28ae86bb564dc014fb06c7f8e2f1c565417c932bc591eda0195e9981cc4bb2e5e1e46ecf057071603cddb9b362056a5d0cbda1ab463014f9a88ee4ba1896cffdca852f2259752921ad3379066b9992bf0560442cd4e0fb33d2438e1ee1ed59d34d75d005fdeb93caba16264e51c7dd536a30e2edc8633b01c5e8ee396818c6ddaf3fbf0d433e0cff9a43e84310d45f095071fba8428985f298bc9c34590c2627a2e73bee3b67fd89084ddccdbbd6f00e86401c82ae3735cc0413709ab7130f8145592e2aa7c2d69021b94600bc030c4e18f6a9d756ba1a5b3911589cfe4e7187cfad3e21d2b25dc6733686493a1b2ffa5c38a9fc6bcf77388bb6198b469cf0ad5082cfd1c4376e2a8fc6b9732f4de18bced89f3a215d37f39ddb4550b216e1e153a2042b1faafafe7d6bdf286ed23bdb262e8eb171d709b1f351047e5c8117f0f5ca8251398556803e820f1f6b14a7312e5039dc51612af7497949ebe98a6a99d5c3882667524b2302fc3db9fbd0f1a3ec3f8303a8b691d4f4673a8af9e75ed443b227aa9e8ec27dc9ec24d9a15924d18bfcc59c6b39c95c783bb6fe1b2d723552f5be5682c79f207e581741ca746a349efc987e23c8f8e65f969579a2e8864ec2809226be7725db56533192e3af854f3428792097aca89fd4524f4de67a4493c32bf5f339192963983f450ffa6b897b3f6902c888eeb2cb6aab0b5f5a84393a51a087f097c4ba1d09643697097cb165f3bb3be3b32406f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'C:\\Users\\Oginni\\Documents\\NetBeansProjects\\Voter_Reg_Sys\\1421064860581.jpg', '12-Jan-2015', '13:18:43', '12-Jan-2015', '13:20:47', 'LAG/COM/1964', 'LAG/MUS/4727', 'LAG/MUS/4727', 'LAG/COM/1964', '1'),
(9, '9HP4ZYANPJH1EYNM6ZIVMVXKI', 'oginni', 'tosin', 'mike', '1/10/94', 'Male', 'Student', 'ogun', 'ifo', 'tolu', 'here or there', 'here', '08028466355', 'Single', 0x00f87e01c82ae3735cc0413709ab7170bb1455922e4b639fae9948f6b381d5bd812a0c603310a6bc75944369e1a9f8965ba95402c619de09d0de10135c6d214171707b9768d1202080da87eb34f7728c8878ca0464cf35e6d9aba2a203a89ed859cc492aec98f891492680b08e16c5d7927a94f71c2a6746a3705715e022bb38ddded9836fba74ca4d5d22afbeb1d3c47bfd529e438abb58b4f5bc2d5d1c14886f6d60e081f630d952f1148dc0dac336e6198cd2380425bc06fca1fc7952238061a82a817b673e28b0a69474cc9332450f23543f85aad065232b666eba43456d3fc4469c6c8423efad8d4e97be072060d2f6731d6f4a44bf15f9c5acb17054cb9aa9a2a446f276f1a00270d80b60c2545da06df3bfdc2eb148cf2234ce6ffd3bb65736e5db2ca01480cb3f769b33423952fe767c9f214238d04173a053d5ef9d47b2c354d7580bf5290515dfb93630c7ca6e09ce262916dbcb217122abeb005de38d47a7d2897c5ec48344dab9039ba5ff57381c032fba69d58c182634b3f29e2df86f00f88101c82ae3735cc0413709ab71b0a914559204ef64ac22e21276009cedf2d00aee38052b132a89a9b7f1ec4cc04d374b793b1c142c46492bac4d0b047f5f38c9e2fae2d06a732fdb73c47280e13f139120bbffd714a29e41325e53fe3a5f9c03e1b09219a551bcdbae27c577bf9a2ecd2b18aa35ef406d57c5c6d1dd197e43baf3a95cb31ad0ca69ffd1d07dc72458fb4d3457647ee30fec597466fa871d670cb4134d81435a063222e9b2b82e7534886d09dba396458753eaf6b7993c29d56f0597da4c746b345d683da728b951c01e88a457eebe32fe56468f3b7844a11c2270e4b37970e8637bebc9e4edf1ac2a9f57b32e52513e8eef012fcad53712f88fe1df8fc46059eb80001028f009aacc3db9c5336aebbbad9859c53ae79c39a4b8bfc030bf8441143bada98ad87798323baf9701666c669309fabff5e05b6267e8bffcb4a12fcf4f6fda456395a6677435ccd9454e1bb67f0b76fe413cc05a429e449e3c6d0c942375d29822810b63ae377095017a987be10719a9731ac635466cd92ce56f00f87e01c82ae3735cc0413709ab71b04b155592f0d507525d9141ae5952db32aef2bfa6b7036a6f08ded5ba2123e65828b5f128e2e1ad98daed61f8c92562beae135dd5bdc4311e9dbb6bab347357596ce297f9c8c4cc1b5a355639811530d930be2507fc42d84a34fc8bf6f94a3ac33366822805173f1fd8cd979071bd2aa342037fe124b9490a00ab106b1d92b531902c328f8ec62fbbe527b5f4ff05fdc440cd6fa5e37c42097ba85f06b64eb13f71701ef73936ebcd82d45bdf013a426507b0950590642a2bd1f92a37551e093ff6b8cff691fa4912677040b8d8847983d9ec8f19512964bad9dec696153aed55fcade67eb6577010c1a925674948fe47657bac808ce080958667b9a07fd2c2a8e45a464a1453857a89c3ac0d25da5f079e18dda8c90a7ce3ef38a8964c1541ff416aa381e052a46c2fa85604a9e1b939ea766d77262265cf475e3433039e68520fee4d4698a0db61eb55dbfbaedadedf0d5b8d4ca3b342d7c64e9985379d301331f0cf81d8804df9be668e167a8585475e466f00e87f01c82ae3735cc0413709ab71f049155592a805c1ae9e27659e6699d6935de1525c316083b3323b91439651dfeff2a9e405afa947187018d38ddd8996ee9c8d59fad14e76d1ee6d569df656495a57cc72e913d3c8eea093b8c63ba7f67251c108f1a27feab2d9e62225c2e1666f70fb1007f0950fd0756fbe6f4098db28b84a8a4b521e720dc378929b3ae24af22b16be139a3df307d1ab450656fc51e75488b0efee7d48d61ff66cc4a9e1ffd972b3748f07ba0022ec2a499ed26a6b404518678ff0a05b43164cd846512602d3ee492146e0e44f2d4412a462ca194f5975db8ac9daf054a45c05b41c737fc28e3868c62bab7b65a4555bf3a38cb8eeebfbd1c27ea2109deda1069e930801711961c5810a43ff438583c1af9476a3ad540a2e1318d923791bb19e3d8ed91939a3e6ebb9314c53be0924d8c5ef9cd77ab5008a26f982514b1fad4604c9096cb25fb6f77300cf38cf5f87c5a78e8ecb6d538fa79b62c9dc0dca363ae00f25b18ab65636155bcbccfa52229261e8fe0214467b77336f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00f87f01c82ae3735cc0413709ab7170af1455924e3f9fd3077218a33e48718f1052a81a0dc323f57263ae1838d4daab029a21aec6bc3a914300b06952f725d26fe26e1e7e8ffc849eae4d5a403d1e52f1a1dab6e72e58bfcc6b94ba67ee89861f52d590d4422bd012a8a5359f31658ba27ffdf55f98866716e8d07be43fd0837e240bdd91183b18a91874a822af45c56e7f8fc4b71dee3175389b12ea7feb789d9c831d12d3a80ed2224a719796ada8eaeacf7800b29b74a4f4cf28eea9a5dd9f3403f3054894c8c509d14d1fa98f5a5aeea8b01e5dbd6abfa9d935aad5095800b1c05e20f1c40253d0bd1a64f259b1994018c014671416a1b4bda46a4119e0984447bebcef906f00be709c457250fa79d58be0981814b3cd1dabb869a34f0640c76e8b8ab2e5385a4e1f3559a72a04a2a8f0a8dfdb18639810d5dfca47862f386d0b53be475be9c143ce48172421b99fd6f99582e1cf9c356e199d5c9e0612dd1049a5eff5f432981eee8cc984a103ffa8e577b590b511c03ffdd64f4ebc3b2d673f6f00f87f01c82ae3735cc0413709ab71b0a61455920f436be6bf1e19c2ed1029d1111f0987cbd12f9500f818ed8318421f6072547d0720406696f799e4689aef9b20f443e5ca6efaa618cc70e9e04ca14f322f079b9a213f1631f053d096106a5e7ba813839a7826790826bb1a01679720e11885ed7cc370fe43b369fd7b64c856156c853f4f611bf635df47171f0d31a5959893fad01b7d264632dfad29018b065526cc55dc92557bfb002cc36e7b333cafabf812e47a2c2210d78ca7ef5d7fd6490979ca299ce108da13458f1a7470ae8e9260dc7558ba4800fa3d7be4d9ff4ca2f2dd545579255558441ffd115b06e860d133d35ea81a6344362246ce543b05adee6c50d279c4ff596c54ec0ec5a1927b748c2fc940180e11c7d6d2c33bc352570ed4719e6e486c883503a27353125fe3a5bc69151c5c2d6e4ff74721bef0499b729b4893853e1461cb3bf6362035fa96bd4253f5e8bc33354e8193e93e86f476d69b748879a7fcacdd85eff54c0a793a1f94049533a1479c45f7daf8a140102f9a546f00f87f01c82ae3735cc0413709ab7130a91455920d85fc70830a7ed56a38ae596f7cfc5862886362d4a07ad63cf68f9dcab33d7581f37edee0ea6b678e6ed42a9e9cf8ef47bafb588734f819bd6da1328599d55d124113f944cafeab2c9754418c1f13b053e53bc55554209d7b7731e462cf73512e40b119bc26b8597c76c64fc78d5bbe45005b795448385581dfe4c7091dbb349855e15dfa9ddeb222512824c14a8cf197b1466dfbb45751acef506447eb4ce18d3ee7639f5e32503f4dbfbe9c46f2a9933dbd782d57e968f2de0a1c0b90045e285c27294b7a3c5c3e6a76f93121812eedf30f027bf1a2494021e750e029639d5d23db28857b006208819cfe913d1d244786b088a103c9aac8c723117598302dae9c9b857590ac44a4711cb3d0e8d4fa187c4d253be8601f4e5a0a385ac13224ed593a675ae25494130c9d83e11e9c95dc3d05e3f5594f7595e3e18e12c266abf5325f066310727182f172238398a86d21ba697bb495b8bfca5f261a3280218affc85213a0a9fbd47a6cf6d10fc5b26f00e87f01c82ae3735cc0413709ab71b0a01455926e7fcc2313732d6ac891a10e6615ce12dbe7560a735200e533a7f13ccad4eacb64222e153014471a521f11fcf0cfd59a00431881813d37a20954f4fdc7eba24df0daacdd97e34527e45206e2b7e249cfae6e787b30f28d7d2990687b447992d3a957051adce2bbbbf89d925294ce60d476c2adfa7a4293644ca59589de319c4e43f95f36f482575900766397dc501bf54073ded7de583b682b4d1a2e03923198b0e5b15cb6786bf31063aa7635010c7b27656270d95a7d3ccbc28abe3850ac7295f37a6bd455e5d0452d64d45b34eba26b971e1c31ed7e798fe71f0ee3a2f8707551972361dd4539949aee7be5e223d908e8cc3d1b62ae60addcbb05d7b3c6bd95259a39a21bd1e7d36f1cf1f8bc25464080b70f5dbb860e759dd8ae21b5da0ef9e3b8157e454e5313c167fd9c7f8906250f4f559860b9510e45fdec57632f36c4bc51764eed70bdde9a3584c88e16149d7f8a5084c34880fa71781ac8fdccde1e004cc31b95f9a34ba42c9bdd27436f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'C:\\Users\\Oginni\\Documents\\NetBeansProjects\\Voter_Reg_Sys\\1421417145015.jpg', '16-Jan-2015', '15:06:33', '', '0', '0', '0', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemid` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `maker` varchar(30) NOT NULL,
  `serial_no` varchar(50) NOT NULL,
  `systemdetails` text NOT NULL,
  `regdate` varchar(50) NOT NULL,
  `adminid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `systemid`, `name`, `maker`, `serial_no`, `systemdetails`, `regdate`, `adminid`, `status`) VALUES
(1, 'COM/201/4184', 'compaq', '20123', '23467765ed', 'new system', 'Sun 15:09:51 21-Dec-2014', 'admin', '0'),
(2, 'DEL/IP5/6256', 'dell', 'ip5030', '745321', 'ok', 'Mon 12:08:02 12-Jan-2015', 'admin', '0'),
(3, 'HP/GH7/7091', 'hp', 'gh7', '4567', 'ok', 'Mon 12:50:09 12-Jan-2015', 'admin', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
