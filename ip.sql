-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 30, 2018 at 03:03 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ip`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `bid` int(4) NOT NULL AUTO_INCREMENT,
  `bname` varchar(40) NOT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `bname` (`bname`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bid`, `bname`) VALUES
(201, 'Computer Science'),
(202, 'Electronics and Telecomm'),
(203, 'Information Technology'),
(204, 'Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exid` int(4) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(50) NOT NULL,
  `min` int(3) NOT NULL,
  `max` int(3) NOT NULL,
  `tsid` int(4) NOT NULL,
  PRIMARY KEY (`exid`),
  KEY `tsid` (`tsid`)
) ENGINE=InnoDB AUTO_INCREMENT=7047 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exid`, `exam_name`, `min`, `max`, `tsid`) VALUES
(7000, 'IA1', 7, 20, 9000),
(7001, 'IA1', 7, 20, 9001),
(7002, 'IA1', 7, 20, 9002),
(7003, 'IA1', 7, 20, 9003),
(7004, 'IA1', 7, 20, 9004),
(7008, 'IA1', 7, 20, 9006),
(7009, 'IA1', 7, 20, 9007),
(7010, 'IA1', 7, 20, 9008),
(7011, 'IA1', 7, 20, 9009),
(7012, 'IA1', 7, 20, 9010),
(7013, 'IA1', 7, 20, 9011),
(7014, 'IA1', 7, 20, 9012),
(7015, 'IA1', 7, 20, 9013),
(7016, 'IA1', 7, 20, 9013),
(7017, 'IA1', 7, 20, 9014),
(7019, 'IA1', 7, 20, 9016),
(7020, 'IA1', 7, 20, 9017),
(7021, 'IA1', 7, 20, 9018),
(7022, 'IA1', 7, 20, 9019),
(7023, 'IA2', 7, 20, 9001),
(7024, 'IA2', 7, 20, 9000),
(7025, 'IA2', 7, 20, 9002),
(7026, 'IA2', 7, 20, 9003),
(7027, 'IA2', 7, 20, 9004),
(7030, 'IA2', 7, 20, 9005),
(7031, 'IA2', 7, 20, 9006),
(7032, 'IA2', 7, 20, 9007),
(7033, 'IA2', 7, 20, 9008),
(7034, 'IA2', 7, 20, 9009),
(7035, 'IA2', 7, 20, 9010),
(7036, 'IA2', 7, 20, 9011),
(7037, 'IA2', 7, 20, 9012),
(7038, 'IA2', 7, 20, 9013),
(7039, 'IA2', 7, 20, 9014),
(7042, 'IA2', 7, 20, 9016),
(7043, 'IA2', 7, 20, 9017),
(7044, 'IA2', 7, 20, 9018),
(7045, 'IA2', 7, 20, 9019),
(7046, 'IA2', 7, 20, 9015);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `exid` int(4) NOT NULL,
  `sid` int(4) NOT NULL,
  `marks` int(4) NOT NULL,
  KEY `exid` (`exid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`exid`, `sid`, `marks`) VALUES
(7000, 20160, 20),
(7001, 20160, 20),
(7002, 20160, 16),
(7003, 20160, 12),
(7004, 20160, 11),
(7008, 20160, 11),
(7000, 20162, 14),
(7001, 20162, 15),
(7002, 20162, 13),
(7003, 20162, 7),
(7004, 20162, 15),
(7008, 20162, 10),
(7000, 20163, 11),
(7001, 20163, 17),
(7002, 20163, 7),
(7003, 20163, 14),
(7004, 20163, 11),
(7008, 20163, 12),
(7000, 20164, 13),
(7001, 20164, 2),
(7002, 20164, 14),
(7003, 20164, 16),
(7004, 20164, 10),
(7008, 20164, 4),
(7000, 20165, 5),
(7001, 20165, 2),
(7002, 20165, 7),
(7003, 20165, 10),
(7004, 20165, 0),
(7008, 20165, 6),
(7000, 20166, 0),
(7001, 20166, 10),
(7002, 20166, 13),
(7003, 20166, 11),
(7004, 20166, 7),
(7008, 20166, 17),
(7000, 20167, 18),
(7001, 20167, 11),
(7002, 20167, 20),
(7003, 20167, 20),
(7004, 20167, 20),
(7008, 20167, 20),
(7000, 20168, 14),
(7001, 20168, 16),
(7002, 20168, 17),
(7003, 20168, 12),
(7004, 20168, 17),
(7008, 20168, 17),
(7000, 20169, 4),
(7001, 20169, 14),
(7002, 20169, 5),
(7003, 20169, 11),
(7004, 20169, 10),
(7008, 20169, 3),
(7000, 20170, 13),
(7001, 20170, 12),
(7002, 20170, 9),
(7003, 20170, 8),
(7004, 20170, 11),
(7008, 20170, 13);

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

DROP TABLE IF EXISTS `sem`;
CREATE TABLE IF NOT EXISTS `sem` (
  `semid` int(4) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) NOT NULL,
  `sem` int(3) NOT NULL,
  PRIMARY KEY (`semid`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`semid`, `cname`, `sem`) VALUES
(300, 'FE_IT', 1),
(301, 'FE_IT', 2),
(302, 'SE_IT', 3),
(303, 'SE_IT', 4),
(304, 'TE_IT', 5),
(305, 'TE_IT', 6),
(306, 'BE_IT', 7),
(307, 'BE_IT', 8),
(308, 'FE_Comps', 1),
(309, 'FE_Comps', 2),
(310, 'SE_Comps', 3),
(311, 'SE_Comps', 4),
(312, 'TE_Comps', 5),
(313, 'TE_Comps', 6),
(314, 'BE_Comps', 7),
(315, 'BE_Comps', 8),
(316, 'FE_MECH', 1),
(317, 'FE_MECH', 2),
(318, 'SE_MECH', 3),
(319, 'SE_MECH', 4),
(320, 'TE_MECH', 5),
(321, 'TE_MECH', 6),
(322, 'BE_MECH', 7),
(323, 'BE_MECH', 8),
(324, 'FE_EXTC', 1),
(325, 'FE_EXTC', 2),
(326, 'SE_EXTC', 3),
(327, 'SE_EXTC', 4),
(328, 'TE_EXTC', 5),
(329, 'TE_EXTC', 6),
(330, 'BE_EXTC', 7),
(331, 'BE_EXTC', 8);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `contact` decimal(11,0) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(2) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bid` int(4) NOT NULL,
  `semid` int(4) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `email` (`email`),
  KEY `bid` (`bid`),
  KEY `classid` (`semid`)
) ENGINE=InnoDB AUTO_INCREMENT=20215 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `age`, `contact`, `email`, `dob`, `gender`, `address`, `bid`, `semid`) VALUES
(20160, 'Sarah', 17, '7506330267', 'sarahsolkar123@gmail.com', '1999-03-13', 'f', 'Military Road,Marol', 203, 300),
(20162, 'Silia', 17, '7229909227', 'silia@gmail.com', '1999-04-20', 'f', 'Tary Road,Dombivli', 203, 300),
(20163, 'Laila', 17, '7211119227', 'laila@gmail.com', '1999-11-10', 'f', 'Lokmanya Road,Khar', 203, 300),
(20164, 'Mahatma', 17, '9311119227', 'Mahatma@gmail.com', '1999-12-18', 'm', 'LGuru Road,Mahim', 203, 300),
(20165, 'Ankit', 17, '9312349227', 'ankit@gmail.com', '1999-02-11', 'm', 'Gururaj Road,Vile Parle', 203, 300),
(20166, 'Pritesh', 17, '9389299227', 'rohan@gmail.com', '1999-01-02', 'm', 'Jaggi Road,Colaba', 203, 300),
(20167, 'Nilesh', 17, '9312399227', 'nilwa@gmail.com', '1999-09-02', 'm', 'JJ Road,Barapada', 203, 300),
(20168, 'Jina', 17, '7212399227', 'jina@gmail.com', '1999-12-27', 'f', 'MK Road,Khaugali', 203, 300),
(20169, 'Lolita', 17, '7212397865', 'lolita@gmail.com', '1999-09-02', 'f', 'JK Road,Dongri', 203, 300),
(20170, 'Gargi', 17, '9912435865', 'gargi@gmail.com', '1999-06-11', 'f', 'KK Road,Kandivali', 203, 300),
(20172, 'Nikki', 18, '9912764865', 'nikki@gmail.com', '1998-01-12', 'f', 'KK Road,Kurla', 203, 302),
(20173, 'Geetu', 18, '9923164865', 'geetu@gmail.com', '1998-07-11', 'f', 'LL Road,Andheri', 203, 302),
(20174, 'Anooja', 18, '9893164865', 'anooja@gmail.com', '1998-04-05', 'f', 'PL Road,Bhayendar', 203, 302),
(20175, 'Nazir', 18, '9893168755', 'nazir@gmail.com', '1998-11-22', 'm', 'SVK Road,Borivali', 203, 302),
(20176, 'Gaitonde', 18, '9274593755', 'gaitonde@gmail.com', '1998-08-11', 'm', 'Gaitonde Road,CST', 203, 302),
(20177, 'Anish', 18, '9274593231', 'anish@gmail.com', '1998-08-31', 'm', 'Gai Road,Jogeshwari', 203, 302),
(20178, 'Lukhiya', 18, '9222593642', 'lukhiya@gmail.com', '1998-05-21', 'f', 'Gau Road,Chakala', 203, 302),
(20179, 'Kajal', 18, '9122593642', 'kajal@gmail.com', '1998-12-21', 'f', 'Loni Road,WEH', 203, 302),
(20180, 'Neha', 18, '9722526742', 'neha@gmail.com', '1998-02-01', 'f', 'Sn Road,Asalpha', 203, 302),
(20181, 'Googli', 18, '7728722342', 'googli@gmail.com', '1998-03-16', 'f', 'LN Road,Saki Naka', 203, 302),
(20182, 'Sabu', 19, '7728733342', 'sabu@gmail.com', '1997-03-01', 'f', 'LN Road,Saki Naka', 203, 304),
(20183, 'Shweta', 19, '9998712342', 'shweta@gmail.com', '1997-06-25', 'f', 'NJN Road,SakiVihar', 203, 304),
(20184, 'Bebo', 19, '9998482342', 'bebo@gmail.com', '1997-10-02', 'f', 'NJ Road,CST', 203, 304),
(20185, 'Rajasi', 19, '9912489842', 'rajasi@gmail.com', '1997-11-02', 'f', 'NJ Road,Ambernath', 203, 304),
(20186, 'Calden', 19, '9922489842', 'calden@gmail.com', '1997-01-02', 'm', 'J Road,Bhandup', 203, 304),
(20187, 'Chai', 19, '9922219821', 'chai@gmail.com', '1997-11-02', 'm', 'J Road,Borivali', 203, 304),
(20188, 'Deepika', 19, '9922229821', 'deepika@gmail.com', '1997-12-02', 'f', 'JK Road,Chakala', 203, 304),
(20189, 'Nihaal', 19, '9912389842', 'nihaal@gmail.com', '1997-09-02', 'm', 'NJ Road,Ambernath', 203, 304),
(20190, 'Nihala', 19, '9912879532', 'nihala@gmail.com', '1997-09-02', 'm', 'NJ Road,Ambernath', 203, 304),
(20191, 'Nidhi', 19, '9696239532', 'nidhi@gmail.com', '1997-06-02', 'f', 'NJ Road,MULUND', 203, 304),
(20192, 'Divya', 19, '9626222532', 'divya@gmail.com', '1996-11-03', 'f', 'NJ Road,MULUND', 203, 306),
(20193, 'Gigi', 19, '9627626532', 'gigi@gmail.com', '1996-12-13', 'f', 'OP Road,Sakinaka', 203, 306),
(20194, 'Gogi', 20, '9627236532', 'gogi@gmail.com', '1996-05-10', 'm', 'kP Road,Chakala', 203, 306),
(20195, 'Raju', 20, '9932337632', 'raj@gmail.com', '1996-05-09', 'm', 'PP Road,Sahar', 203, 306),
(20196, 'Rajubabu', 20, '9842337632', 'raju@gmail.com', '1996-04-17', 'f', 'PP Road,Marol', 203, 306),
(20197, 'Ayush', 20, '9843837632', 'ayush@gmail.com', '1996-04-28', 'f', 'LP Road,Marol', 203, 306),
(20198, 'Junaid', 20, '9843547112', 'juni@gmail.com', '1996-03-04', 'f', 'FP Road,Marol', 203, 306),
(20199, 'Leehant', 20, '9843546212', 'leehant@gmail.com', '1996-10-09', 'm', 'KK Road,colaba', 203, 306),
(20200, 'Mithilesh', 20, '9864512212', 'mithi@gmail.com', '1996-09-11', 'm', 'KK Road,Ghatkopar', 203, 306),
(20201, 'Abuzer', 20, '9869916212', 'junaibar@gmail.com', '1996-03-04', 'm', 'KK Road,Ghar', 203, 306),
(20202, 'Abu', 17, '9638475212', 'aaa@gmail.com', '1999-03-11', 'm', 'KK Road,Ghar', 201, 308),
(20203, 'Ashraf', 17, '9928474212', 'bb@gmail.com', '1999-07-15', 'f', 'KK Road,Mulund', 201, 308),
(20204, 'Ashrafiya', 17, '9928471912', 'asd@gmail.com', '1999-12-09', 'f', 'LA', 201, 308),
(20205, 'Asakasa', 17, '9128463912', 'dsa@gmail.com', '1999-04-19', 'f', 'PA road', 201, 308),
(20206, 'Dumroo', 17, '9129361112', 'dumroo@gmail.com', '1999-02-01', 'm', 'SU road', 201, 308),
(20207, 'Nino', 17, '9182361112', 'nino@gmail.com', '1999-02-15', 'm', 'aGU road', 201, 308),
(20208, 'Lucky Ali', 17, '9183728112', 'lucky@gmail.com', '1999-11-25', 'm', 'GU road', 201, 308),
(20209, 'Shivani', 17, '9188528212', 'shivani@gmail.com', '1999-07-28', 'f', 'IU road', 201, 308),
(20210, 'Nehru', 17, '9187422612', 'nehru@gmail.com', '1999-11-14', 'm', 'AAREY road', 201, 308),
(20211, 'Nehra', 17, '9185423612', 'nehra@gmail.com', '1999-01-24', 'm', 'Akola road', 201, 308),
(20212, 'Monica', 18, '9189528212', 'monica@gmail.com', '1998-02-16', 'f', 'Gol road', 201, 310),
(20213, 'Hasmita', 18, '7189528112', 'hasmita@gmail.com', '1998-02-18', 'f', 'Gololx road', 201, 310),
(20214, 'Asmita', 18, '7189528132', 'asmita@gmail.com', '1998-02-18', 'f', 'Gololx road', 201, 310);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `sub_id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `bid` int(4) NOT NULL,
  `semid` int(4) NOT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `name` (`name`),
  KEY `bid` (`bid`),
  KEY `classid` (`semid`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `name`, `bid`, `semid`) VALUES
(1000, 'Applied Physics', 203, 300),
(1001, 'Applied Chemistry', 203, 300),
(1002, 'Applied Math', 203, 300),
(1003, 'Mechanics', 203, 300),
(1004, 'BEE', 203, 300),
(1005, 'Environmental Science', 203, 300),
(1006, 'Data Structures', 203, 302),
(1007, 'Logic Design', 203, 302),
(1008, 'Database Management Systems', 203, 302),
(1009, 'JAVA', 203, 302),
(1010, 'POC', 203, 302),
(1011, 'Applied Mathematics 3', 203, 302),
(1012, 'MCES', 203, 304),
(1013, 'ADMT', 203, 304),
(1014, 'Internet Programming', 203, 304),
(1015, 'CNS', 203, 304),
(1016, 'PYTHON', 203, 304),
(1017, 'Enterpise Design', 203, 306),
(1018, 'Infrastructure Security', 203, 306),
(1019, 'Artificial Intelligence', 203, 306);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `tid` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` decimal(11,0) NOT NULL,
  `post` varchar(25) NOT NULL,
  `bid` int(4) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `password` (`password`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=5018 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `name`, `email`, `contact`, `post`, `bid`, `password`) VALUES
(5001, 'Sameer Hadkar', 'sameer@gmail.com', '7738629183', 'Asst Prof', 203, 'd524813536b71639999ba12bdb3621a8'),
(5002, 'Anice Mathew', 'anice@gmail.com', '7936289183', 'Asst Prof', 203, '9d47521c583685173beae3f08204f306'),
(5003, 'Shirly Chacko', 'shirly@gmail.com', '9938256183', 'Asst Prof', 203, 'ad74e5153e75cbe76bd72dbe3050b4df'),
(5004, 'Gejo George', 'gejo@gmail.com', '8564256193', 'Asst Prof', 203, 'd414eed7ddbc7b4124fdc70f389d056e'),
(5005, 'Babitha', 'babi@gmail.com', '9984966193', 'Asst Prof', 203, 'bd8040a5e0dbf70b7bd33dfe175d4fa9'),
(5006, 'Jeffy Thomas', 'jeffy@gmail.com', '7984975833', 'Asst Prof', 203, 'c4a2320eff25e3181ccf10c6367cd17f'),
(5007, 'Sushree Satapaty', 'sushree@gmail.com', '9984745621', 'Asst Prof', 203, 'a20ec78295fd1932d5eecbf1a7037a40'),
(5008, 'Prasad Padalkar', 'prasad@gmail.com', '9942645621', 'Asst Prof', 203, 'c246ad314ab52745b71bb00f4608c82a'),
(5009, 'Aruna Khubalkar', 'aruna@gmail.com', '9945117453', 'Asst Prof', 203, 'd3a28ff91cb58754c40f63161ae5e028'),
(5010, 'Sunantha Krishnan', 'sunantha@gmail.com', '9945227495', 'Asst Prof', 203, '69496dcc8cdb7ba8a08134879c7295fb'),
(5011, 'Revathy S', 'revathy@gmail.com', '7745227386', 'Asst Prof', 203, '143577483e0bad490034a45a2251e7c7'),
(5012, 'Janhavi B', 'janhavi@gmail.com', '9945227312', 'Asst Prof', 203, '3ff3d8840874349205712bf53852d0ec'),
(5013, 'Vaishali S', 'vaishali@gmail.com', '9941127975', 'Asst Prof', 203, 'c83ffd5f4c0e41a79f9c1c9809296dae'),
(5014, 'Nilesh Ghavate', 'nilesh@gmail.com', '7766554433', 'Asst Prof', 203, '5c5a4bf04d39cc8905f350b352a4dbd0'),
(5015, 'Uday Nayak', 'uday@gmail.com', '7773526411', 'Asst Prof', 203, '64cdce3a9cbb8e3a4209bd3b6c1add09'),
(5016, 'Tayyabali Sayyed', 'tayyabali@gmail.com', '9962526411', 'Asst Prof', 203, '924ca58725c7dee1b4d98927f8d982db'),
(5017, 'Anagha Shastri', 'anagha@gmail.com', '7772526427', 'Asst Prof', 203, 'd0ba19748f63d2ea4c8a5730ccfc6f9e');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

DROP TABLE IF EXISTS `teacher_subject`;
CREATE TABLE IF NOT EXISTS `teacher_subject` (
  `tsid` int(4) NOT NULL AUTO_INCREMENT,
  `tid` int(4) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `semid` int(4) DEFAULT NULL,
  PRIMARY KEY (`tsid`),
  KEY `tid` (`tid`),
  KEY `sub_id` (`sub_id`),
  KEY `classid` (`semid`)
) ENGINE=InnoDB AUTO_INCREMENT=9020 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`tsid`, `tid`, `sub_id`, `semid`) VALUES
(9000, 5001, 1000, 300),
(9001, 5002, 1001, 300),
(9002, 5003, 1002, 300),
(9003, 5004, 1004, 300),
(9004, 5005, 1003, 300),
(9005, 5006, 1005, 300),
(9006, 5007, 1006, 302),
(9007, 5008, 1007, 302),
(9008, 5009, 1008, 302),
(9009, 5010, 1009, 302),
(9010, 5011, 1011, 302),
(9011, 5008, 1010, 302),
(9012, 5012, 1012, 302),
(9013, 5009, 1013, 302),
(9014, 5013, 1014, 302),
(9015, 5014, 1015, 302),
(9016, 5014, 1016, 302),
(9017, 5010, 1017, 302),
(9018, 5014, 1018, 302),
(9019, 5015, 1019, 302);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`tsid`) REFERENCES `teacher_subject` (`tsid`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`exid`) REFERENCES `exam` (`exid`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`semid`) REFERENCES `sem` (`semid`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  ADD CONSTRAINT `subject_ibfk_2` FOREIGN KEY (`semid`) REFERENCES `sem` (`semid`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`);

--
-- Constraints for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD CONSTRAINT `teacher_subject_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`),
  ADD CONSTRAINT `teacher_subject_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`),
  ADD CONSTRAINT `teacher_subject_ibfk_3` FOREIGN KEY (`semid`) REFERENCES `sem` (`semid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
