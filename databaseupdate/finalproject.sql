-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2015 at 07:38 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(10) NOT NULL auto_increment,
  `picture` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `picture`, `description`, `name`) VALUES
(9, '3131420986907222bfd8698.jpg', '1420986907693268.txt', 'Duis ornare magna sit amet dui eleifend imperdiet.'),
(10, '8721420986970tary-school.jpg', '1420986970897522.txt', ' Maecenas mollis nisl ut diam condimentum, eu sagi'),
(11, '6711421234001edu.jpg', '1421234001582489.txt', 'test data');

-- --------------------------------------------------------

--
-- Table structure for table `academiccalender`
--

CREATE TABLE `academiccalender` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) default NULL,
  `descriptionfile` varchar(30) default NULL,
  `academiccalendertypeid` int(10) NOT NULL,
  `cdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `academiccalendertypeid` (`academiccalendertypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `academiccalender`
--

INSERT INTO `academiccalender` (`id`, `name`, `description`, `descriptionfile`, `academiccalendertypeid`, `cdate`) VALUES
(2, 'Book List', '1411716586359863.txt', '3521411716586e security.docx', 3, '2014-09-26 13:29:46'),
(3, 'Lession Plan', '1411716977338928.txt', '39141171697710249774aes.pdf', 1, '2014-09-26 13:36:17'),
(4, 'List of hoolydah', '14117170464700.txt', '7331411717046e security.docx', 2, '2014-09-26 13:37:26'),
(5, 'Syllabus', '1411717080669433.txt', '5951411717080slam - copy.doc', 5, '2014-09-26 13:38:00'),
(6, 'name', '141405386937079.txt', '8091414053869e security.docx', 7, '2014-10-23 14:44:29'),
(7, 'Shohel Rana', '1421751709852783.txt', '', 1, '2015-01-20 17:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `academiccalendertype`
--

CREATE TABLE `academiccalendertype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `academiccalendertype`
--

INSERT INTO `academiccalendertype` (`id`, `name`) VALUES
(1, 'Lession Plan'),
(2, 'List Of Hollyday'),
(3, 'Book List'),
(5, 'Syllabus');

-- --------------------------------------------------------

--
-- Table structure for table `accountlogin`
--

CREATE TABLE `accountlogin` (
  `id` int(11) NOT NULL auto_increment,
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `accountlogin`
--

INSERT INTO `accountlogin` (`id`, `userid`, `password`) VALUES
(2, 'account', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `adminclarklogin`
--

CREATE TABLE `adminclarklogin` (
  `id` int(10) NOT NULL auto_increment,
  `userid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `adminclarklogin`
--

INSERT INTO `adminclarklogin` (`id`, `userid`, `password`) VALUES
(1, 'clark', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` varchar(20) NOT NULL,
  `person` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `name`, `picture`, `description`, `person`) VALUES
(3, 'Principal', '5061420984618p.jpg', '1420984618480530.txt', 'Precident'),
(4, 'Precident', '8551420984632a.png', '1420984632432312.txt', 'Principal'),
(5, 'Assistence Principal', '905142098468313_hd_color.jpg', '142098468337232.txt', 'Assistence Principal');

-- --------------------------------------------------------

--
-- Table structure for table `administrationlogin`
--

CREATE TABLE `administrationlogin` (
  `id` int(10) NOT NULL auto_increment,
  `userid` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `administrationlogin`
--

INSERT INTO `administrationlogin` (`id`, `userid`, `password`) VALUES
(1, '123456', '123456'),
(3, 'account', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `assigningclassforstudent`
--

CREATE TABLE `assigningclassforstudent` (
  `studentid` int(10) NOT NULL,
  `classid` int(10) NOT NULL,
  `classroll` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  `sectionid` int(10) NOT NULL,
  `shiftid` int(10) NOT NULL,
  `teacherid` int(10) NOT NULL,
  PRIMARY KEY  (`studentid`,`classid`,`yearid`,`shiftid`,`sectionid`),
  KEY `classid` (`classid`),
  KEY `yearid` (`yearid`),
  KEY `sectionid` (`sectionid`),
  KEY `shiftid` (`shiftid`),
  KEY `teacherid` (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigningclassforstudent`
--

INSERT INTO `assigningclassforstudent` (`studentid`, `classid`, `classroll`, `yearid`, `sectionid`, `shiftid`, `teacherid`) VALUES
(1114, 1, 1, 3, 1, 4, 15001),
(1115, 1, 2, 2, 1, 4, 15001),
(1116, 1, 3, 2, 1, 4, 15001);

-- --------------------------------------------------------

--
-- Table structure for table `assigningteacher`
--

CREATE TABLE `assigningteacher` (
  `id` int(10) NOT NULL auto_increment,
  `classid` int(10) NOT NULL,
  `teacherid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `classid` (`classid`),
  KEY `teacherid` (`teacherid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `assigningteacher`
--

INSERT INTO `assigningteacher` (`id`, `classid`, `teacherid`) VALUES
(1, 1, 15001),
(2, 2, 15001),
(3, 1, 15002),
(4, 2, 15004),
(5, 2, 15003);

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(10) NOT NULL auto_increment,
  `studentid` int(10) NOT NULL,
  `classid` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  `teacherid` int(10) NOT NULL,
  `sectionid` int(10) NOT NULL,
  `shiftid` int(10) NOT NULL,
  `present` varchar(5) NOT NULL,
  `absent` varchar(5) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `studentid` (`studentid`,`classid`,`yearid`,`shiftid`,`sectionid`),
  KEY `teacherid` (`teacherid`),
  KEY `sectionid` (`sectionid`),
  KEY `yearid` (`yearid`),
  KEY `shiftid` (`shiftid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`id`, `studentid`, `classid`, `yearid`, `teacherid`, `sectionid`, `shiftid`, `present`, `absent`, `date`) VALUES
(3, 1115, 1, 2, 15001, 1, 4, 'Yes', 'No', ''),
(4, 1116, 1, 2, 15001, 1, 4, 'No', 'Yes', ''),
(5, 1115, 1, 2, 15001, 1, 4, 'Yes', 'No', ''),
(6, 1116, 1, 2, 15001, 1, 4, 'No', 'Yes', ''),
(7, 1115, 1, 2, 15001, 1, 4, 'Yes', 'No', ''),
(8, 1116, 1, 2, 15001, 1, 4, 'No', 'Yes', ''),
(9, 1114, 1, 3, 15001, 1, 4, 'Yes', 'No', ''),
(10, 1114, 1, 3, 15001, 1, 4, 'Yes', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL auto_increment,
  `studentid` int(10) default NULL,
  `teacherid` int(10) default NULL,
  `comment` varchar(20) NOT NULL,
  `cdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blog`
--


-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`id`, `name`) VALUES
(1, 'o+'),
(2, 'a+'),
(3, 'ab+'),
(5, 'ab-'),
(6, '0-');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`) VALUES
(1, 'Class One'),
(2, 'Class Two'),
(3, 'Class Three'),
(4, 'Class Four'),
(5, 'Class Five'),
(6, 'Class Six'),
(7, 'Class Seven'),
(8, 'Class Eight'),
(9, 'Class Nine'),
(10, 'Class Ten'),
(11, 'HSC 1st'),
(12, 'HSC 2nd');

-- --------------------------------------------------------

--
-- Table structure for table `classblog`
--

CREATE TABLE `classblog` (
  `id` int(10) NOT NULL auto_increment,
  `studentid` int(10) default NULL,
  `teacherid` int(10) default NULL,
  `classid` int(10) NOT NULL,
  `description` varchar(40) NOT NULL,
  `cdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `cb_fk_cid` (`classid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `classblog`
--


-- --------------------------------------------------------

--
-- Table structure for table `classmaterial`
--

CREATE TABLE `classmaterial` (
  `id` int(10) NOT NULL auto_increment,
  `classid` int(10) NOT NULL,
  `classmaterialtypeid` int(10) NOT NULL,
  `docfile` varchar(30) NOT NULL,
  `assigningteacherid` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `cdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `assigningteacherid` (`assigningteacherid`),
  KEY `classmaterialtypeid` (`classmaterialtypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `classmaterial`
--

INSERT INTO `classmaterial` (`id`, `classid`, `classmaterialtypeid`, `docfile`, `assigningteacherid`, `description`, `cdate`) VALUES
(10, 2, 4, '7941413971983e security.docx', 1, '1413971983156494.txt', '2014-10-22 15:59:43'),
(11, 1, 5, '7781413972003e security.docx', 1, '141397200337446.txt', '2014-10-22 16:00:04'),
(12, 2, 4, '', 15004, '1421748291764709.txt', '2015-01-20 16:04:51'),
(13, 2, 4, '', 15004, '1421748320448822.txt', '2015-01-20 16:05:20'),
(14, 0, 0, '', 15004, '1421748375376465.txt', '2015-01-20 16:06:15'),
(15, 0, 0, '', 15004, '1421748533661407.txt', '2015-01-20 16:08:53'),
(16, 0, 0, '', 15004, '1421748552454529.txt', '2015-01-20 16:09:12'),
(17, 0, 0, '', 15004, '1421748924951629.txt', '2015-01-20 16:15:24'),
(18, 0, 0, '', 15004, '1421748959244995.txt', '2015-01-20 16:15:59'),
(19, 0, 0, '', 15004, '1421748977143708.txt', '2015-01-20 16:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `classmaterialtype`
--

CREATE TABLE `classmaterialtype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `classmaterialtype`
--

INSERT INTO `classmaterialtype` (`id`, `name`) VALUES
(3, 'Class Attendence'),
(4, 'Class Work'),
(5, 'Home Work'),
(6, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) NOT NULL auto_increment,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `description`) VALUES
(5, '141144858270557.txt');

-- --------------------------------------------------------

--
-- Table structure for table `contactususer`
--

CREATE TABLE `contactususer` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contactnumber` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `messagesubject` varchar(40) NOT NULL,
  `message` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contactususer`
--

INSERT INTO `contactususer` (`id`, `name`, `email`, `contactnumber`, `location`, `messagesubject`, `message`) VALUES
(4, 'indenpendent day', 'suzon@gmail.com', '0987654', 'dhaka', 'information of our school', '1411121702332337.txt'),
(5, 'Shoriful Islam', 'shoriful', '0987654', 'dhakdhsjfd', 'hjgfjs', '1412068546382050.txt');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `name`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `id` int(10) NOT NULL auto_increment,
  `amount` varchar(15) NOT NULL,
  `earntypeid` int(10) NOT NULL,
  `dayid` int(10) NOT NULL,
  `monthid` int(20) NOT NULL,
  `yearid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `earntypeid` (`earntypeid`),
  KEY `dayid` (`dayid`),
  KEY `monthid` (`monthid`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `earn`
--

INSERT INTO `earn` (`id`, `amount`, `earntypeid`, `dayid`, `monthid`, `yearid`) VALUES
(3, '10000', 4, 9, 1, 2),
(4, '10000', 4, 9, 1, 2),
(5, '300.50', 6, 11, 1, 2),
(6, '10000', 4, 10, 2, 2),
(7, '3000', 6, 7, 2, 2),
(8, '3000', 4, 3, 3, 2),
(9, '10000', 4, 11, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `earntype`
--

CREATE TABLE `earntype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `earntype`
--

INSERT INTO `earntype` (`id`, `name`) VALUES
(4, 'From Student'),
(6, 'Sell Diary 4'),
(7, 'test data');

-- --------------------------------------------------------

--
-- Table structure for table `examname`
--

CREATE TABLE `examname` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `examname`
--

INSERT INTO `examname` (`id`, `name`) VALUES
(1, 'First Tutorial Exam'),
(2, 'Second Tutotial Exam'),
(3, 'Mid Term Exam'),
(4, 'Third Tutorial Exam'),
(5, 'Fourth Tutorial Exam'),
(6, 'Final Exam');

-- --------------------------------------------------------

--
-- Table structure for table `expence`
--

CREATE TABLE `expence` (
  `id` int(10) NOT NULL auto_increment,
  `amount` varchar(15) NOT NULL,
  `expencetypeid` int(10) NOT NULL,
  `dayid` int(10) NOT NULL,
  `monthid` int(20) NOT NULL,
  `yearid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `expencetypeid` (`expencetypeid`),
  KEY `dayid` (`dayid`),
  KEY `monthid` (`monthid`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `expence`
--

INSERT INTO `expence` (`id`, `amount`, `expencetypeid`, `dayid`, `monthid`, `yearid`) VALUES
(1, '2000', 3, 12, 1, 2),
(2, '300.50', 5, 3, 1, 2),
(3, '300.50', 4, 5, 2, 2),
(4, '2000', 4, 3, 2, 2),
(5, '2000', 4, 2, 3, 2),
(6, '2000', 4, 6, 3, 2),
(7, '300.50', 4, 4, 4, 2),
(8, '2000', 4, 8, 4, 2),
(9, '2000', 3, 5, 5, 2),
(10, '100.50', 5, 4, 6, 2),
(11, '300.50', 4, 6, 7, 2),
(12, '100.50', 5, 11, 8, 2),
(13, '300.50', 4, 12, 9, 2),
(14, '100.50', 4, 11, 12, 2),
(15, '300.50', 5, 5, 14, 2),
(16, '300.50', 4, 11, 14, 2),
(17, '300.50', 4, 4, 13, 2),
(18, '10000', 6, 6, 12, 2),
(19, '3000', 6, 4, 14, 2),
(20, '300.50', 4, 12, 13, 2),
(21, '300.50', 4, 5, 1, 4),
(22, '445', 4, 6, 6, 2),
(23, '100.50', 3, 12, 1, 4),
(24, '10000', 6, 5, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `expenceforgardiantarrangement`
--

CREATE TABLE `expenceforgardiantarrangement` (
  `id` int(10) NOT NULL auto_increment,
  `amount` varchar(15) NOT NULL,
  `expenceforgardiantarrangementid` int(10) NOT NULL,
  `dayid` int(10) NOT NULL,
  `monthid` int(20) NOT NULL,
  `yearid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `expenceforgardiantarrangementid` (`expenceforgardiantarrangementid`),
  KEY `dayid` (`dayid`),
  KEY `monthid` (`monthid`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `expenceforgardiantarrangement`
--

INSERT INTO `expenceforgardiantarrangement` (`id`, `amount`, `expenceforgardiantarrangementid`, `dayid`, `monthid`, `yearid`) VALUES
(1, '10000', 1, 7, 1, 2),
(2, '100.50', 1, 1, 1, 2),
(3, '3000', 2, 2, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `expenceforgardiantarrangementtype`
--

CREATE TABLE `expenceforgardiantarrangementtype` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `expenceforgardiantarrangementtype`
--

INSERT INTO `expenceforgardiantarrangementtype` (`id`, `name`) VALUES
(1, 'Decoration'),
(2, 'Geust');

-- --------------------------------------------------------

--
-- Table structure for table `expenceforpublish`
--

CREATE TABLE `expenceforpublish` (
  `id` int(10) NOT NULL auto_increment,
  `amount` varchar(15) NOT NULL,
  `expenceforpublishtypeid` int(10) NOT NULL,
  `dayid` int(10) NOT NULL,
  `monthid` int(20) NOT NULL,
  `yearid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `expenceforpublishtypeid` (`expenceforpublishtypeid`),
  KEY `dayid` (`dayid`),
  KEY `monthid` (`monthid`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `expenceforpublish`
--

INSERT INTO `expenceforpublish` (`id`, `amount`, `expenceforpublishtypeid`, `dayid`, `monthid`, `yearid`) VALUES
(1, '2000', 3, 11, 1, 2),
(4, '10000', 4, 29, 1, 2),
(5, '3000', 3, 24, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `expenceforpublishtype`
--

CREATE TABLE `expenceforpublishtype` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `expenceforpublishtype`
--

INSERT INTO `expenceforpublishtype` (`id`, `name`) VALUES
(1, 'Poster'),
(2, 'Peston'),
(3, 'Liplate'),
(4, 'Annuncemen');

-- --------------------------------------------------------

--
-- Table structure for table `expencetype`
--

CREATE TABLE `expencetype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `expencetype`
--

INSERT INTO `expencetype` (`id`, `name`) VALUES
(3, 'Paper Bill'),
(4, 'Mobile Bill'),
(5, 'Electricty Bill'),
(6, 'House Rent');

-- --------------------------------------------------------

--
-- Table structure for table `gardianmember`
--

CREATE TABLE `gardianmember` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gardianmember`
--

INSERT INTO `gardianmember` (`id`, `name`, `picture`, `designation`, `description`) VALUES
(4, 'Shoriful Islam', '3391410289979umb(35).php.jpg', 'Gardian Member', '1410290205799865.txt'),
(5, 'Mr.Islam Mondol', '2321410290064anna-bhatia.jpg', 'Gardian Member', '1410290064942382.txt'),
(6, 'Mr.Islam Uddin', '8451410290109cauliflower.jpg', 'Gardian Member', '14102901099186.txt'),
(7, 'Abdul Hannan', '114120682311 (7).jpg', 'Gardian Member', '1412068231989440.txt'),
(8, 'Siyem Mohammad', '9271414056572cauliflower.jpg', 'hhsdkfas', '1414056572725189.txt');

-- --------------------------------------------------------

--
-- Table structure for table `homewelcome`
--

CREATE TABLE `homewelcome` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `homewelcome`
--

INSERT INTO `homewelcome` (`id`, `name`, `type`) VALUES
(2, '1411723744347778.txt', 'w'),
(3, '1414054958180085.txt', 'hw');

-- --------------------------------------------------------

--
-- Table structure for table `iqtest`
--

CREATE TABLE `iqtest` (
  `id` int(10) NOT NULL auto_increment,
  `questionno` int(10) NOT NULL,
  `subjectnameid` int(10) NOT NULL,
  `question` varchar(100) NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `questionno` (`questionno`),
  KEY `subjectnameid` (`subjectnameid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `iqtest`
--

INSERT INTO `iqtest` (`id`, `questionno`, `subjectnameid`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(5, 3, 2, 'what is bangla ?', 'bangla', 'english', 'math', 'ariby', 'bangla'),
(6, 4, 5, 'Big river of bangladesh', 'padma', 'megna', 'jomuna', 'kornofuly', 'jomuna'),
(7, 5, 4, 'what is general knowledge ?', 'bnngla', 'golpo', 'uppons', 'select', 'select'),
(8, 6, 1, 'What is english ?', 'english', 'bangla', 'math', 'none', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'Jun'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(12, 'October'),
(13, 'November'),
(14, 'December'),
(15, 'hggj');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL auto_increment,
  `headline` varchar(50) NOT NULL,
  `description` varchar(30) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `cdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `headline`, `description`, `picture`, `cdate`) VALUES
(4, 'diam neque sed diam', '1420987445140107.txt', '2411420987445acktoschool.jpg', '2015-01-11 20:44:05'),
(5, 'amPellentesque lobortis,', '1420987465433746.txt', '2891420987465v.jpg', '2015-01-11 20:44:25'),
(7, ' Proin lorem lacus', '1420987496472809.txt', '2351420987496upil-asking.jpg', '2015-01-11 20:44:56'),
(8, 'news', '1421751559813293.txt', '8691421751559cauliflower.jpg', '2015-01-20 16:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `noticbord`
--

CREATE TABLE `noticbord` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) default NULL,
  `descriptionfile` varchar(30) default NULL,
  `notictypeid` int(10) NOT NULL,
  `cdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `notictypeid` (`notictypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `noticbord`
--

INSERT INTO `noticbord` (`id`, `name`, `description`, `descriptionfile`, `notictypeid`, `cdate`) VALUES
(1, 'Exam Routine', '1410471382174439.txt', '5781410471382e security.docx', 1, '2014-09-12 03:36:22'),
(2, 'Class Routine', '1410471459456085.txt', '200141047145910249774aes.pdf', 2, '2014-09-12 03:37:39'),
(3, 'Nobi boron', '1414054741554016.txt', '3581414054741e security.docx', 1, '2014-10-23 14:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `notictype`
--

CREATE TABLE `notictype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notictype`
--

INSERT INTO `notictype` (`id`, `name`) VALUES
(1, 'Exam Routine'),
(2, 'Class Routine'),
(3, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `paidamount`
--

CREATE TABLE `paidamount` (
  `id` int(10) NOT NULL auto_increment,
  `studentid` int(10) NOT NULL,
  `classid` int(10) NOT NULL,
  `dayid` int(10) NOT NULL,
  `monthid` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  `shiftid` int(10) NOT NULL,
  `sectionid` int(10) NOT NULL,
  `payorpaidamounttypeid` int(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `slno` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `slno` (`slno`),
  KEY `studentid` (`studentid`),
  KEY `classid` (`classid`),
  KEY `dayid` (`dayid`),
  KEY `monthid` (`monthid`),
  KEY `yearid` (`yearid`),
  KEY `shiftid` (`shiftid`),
  KEY `sectionid` (`sectionid`),
  KEY `payorpaidamounttypeid` (`payorpaidamounttypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `paidamount`
--

INSERT INTO `paidamount` (`id`, `studentid`, `classid`, `dayid`, `monthid`, `yearid`, `shiftid`, `sectionid`, `payorpaidamounttypeid`, `amount`, `slno`) VALUES
(1, 1114, 1, 1, 1, 2, 4, 1, 1, '3500', '2090');

-- --------------------------------------------------------

--
-- Table structure for table `payableamount`
--

CREATE TABLE `payableamount` (
  `classid` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  `shiftid` int(10) NOT NULL,
  `payorpaidamounttypeid` int(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(25) NOT NULL,
  PRIMARY KEY  (`classid`,`yearid`,`shiftid`),
  KEY `payorpaidamounttypeid` (`payorpaidamounttypeid`),
  KEY `yearid` (`yearid`),
  KEY `shiftid` (`shiftid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payableamount`
--

INSERT INTO `payableamount` (`classid`, `yearid`, `shiftid`, `payorpaidamounttypeid`, `amount`, `date`) VALUES
(2, 2, 4, 5, '10000', 'Sun-Jan-2015'),
(2, 3, 4, 1, '13000', 'Wed-Dec-2014'),
(3, 2, 4, 1, '6733', 'Sun-Jan-2015'),
(3, 3, 4, 1, '14000', 'Wed-Dec-2014'),
(5, 6, 5, 5, '3333', 'Sun-Jan-2015'),
(12, 6, 4, 1, '22222', 'Sun-Jan-2015');

-- --------------------------------------------------------

--
-- Table structure for table `payorpaidamounttype`
--

CREATE TABLE `payorpaidamounttype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `payorpaidamounttype`
--

INSERT INTO `payorpaidamounttype` (`id`, `name`) VALUES
(1, 'Monthly Salari'),
(5, 'Exam Fee');

-- --------------------------------------------------------

--
-- Table structure for table `photogallary`
--

CREATE TABLE `photogallary` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `phototypeid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `phototypeid` (`phototypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `photogallary`
--

INSERT INTO `photogallary` (`id`, `name`, `picture`, `phototypeid`) VALUES
(6, 'indenpendent day', '3741420987309garten02www.jpg', 7),
(8, 'indenpendent day', '6171420987324l-story-top.jpg', 7),
(9, 'Sport Day', '1561420987344x.jpg', 5),
(10, 'Sport Day', '9921420987360o-school-is.jpg', 5),
(11, 'Sport Day', '751420987374arand reads.jpg', 5),
(12, '21 feb', '9731420987263222bfd8698.jpg', 6),
(13, '21 feb', '381420987279e-classroom.jpg', 6),
(14, 'asker', '2251420987294acktoschool.jpg', 6),
(15, 'all student of our s', '3921411376462images (1).jpg', 8),
(16, 'Nobi boron', '3571414054851410288857s1.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `photoslider`
--

CREATE TABLE `photoslider` (
  `id` int(10) NOT NULL auto_increment,
  `headline` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `picture` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `photoslider`
--

INSERT INTO `photoslider` (`id`, `headline`, `description`, `picture`) VALUES
(5, 'amPellentesque lobor', '1420982657241516.txt', '3041420982657images.jpg'),
(6, 'School Preview', '1424780746417755.txt', '6461424780746school.jpg'),
(7, 'School Previews', '1424780877619018.txt', '4121424780877school.jpg1.jpg'),
(8, 'School Previewss', '1425018350393158.txt', '8091425018350dhanmondi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phototype`
--

CREATE TABLE `phototype` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `phototype`
--

INSERT INTO `phototype` (`id`, `name`) VALUES
(5, 'Sport Day'),
(6, '21st Feb'),
(7, 'Independent Day'),
(8, 'School Tour'),
(9, 'Nobin Boran'),
(10, 'Holiday');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `name`) VALUES
(1, 'islam'),
(3, 'Chistran'),
(4, 'Hindu');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `studentid` int(10) NOT NULL,
  `classid` int(10) NOT NULL,
  `subjectid` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  `teacherid` int(10) NOT NULL,
  `sectionid` int(10) NOT NULL,
  `shiftid` int(10) NOT NULL,
  `fullmarks` varchar(10) NOT NULL,
  `MidSubjectivemarks` varchar(10) NOT NULL,
  `MidObjectivemarks` varchar(10) NOT NULL,
  `firsttutorial` varchar(5) NOT NULL,
  `secondtutorial` varchar(5) NOT NULL,
  `FinalSubjectivemarks` varchar(10) NOT NULL,
  `FinalObjectivemarks` varchar(10) NOT NULL,
  `thirdtutorial` varchar(10) NOT NULL,
  `fourthtutorial` varchar(10) NOT NULL,
  PRIMARY KEY  (`studentid`,`classid`,`yearid`,`subjectid`),
  KEY `studentid` (`studentid`,`classid`,`yearid`,`shiftid`,`sectionid`),
  KEY `subjectid` (`subjectid`),
  KEY `teacherid` (`teacherid`),
  KEY `sectionid` (`sectionid`),
  KEY `yearid` (`yearid`),
  KEY `shiftid` (`shiftid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`studentid`, `classid`, `subjectid`, `yearid`, `teacherid`, `sectionid`, `shiftid`, `fullmarks`, `MidSubjectivemarks`, `MidObjectivemarks`, `firsttutorial`, `secondtutorial`, `FinalSubjectivemarks`, `FinalObjectivemarks`, `thirdtutorial`, `fourthtutorial`) VALUES
(1114, 1, 1, 3, 15001, 1, 4, '', '0', '40', '0', '0', '0', '0', '0', '0'),
(1115, 1, 1, 2, 15001, 1, 4, '', '0', '2', '2', '2', '2', '2', '2', '2'),
(1116, 1, 1, 2, 15001, 1, 4, '', '2', '2', '2', '2', '2', '0', '0', '2');

-- --------------------------------------------------------

--
-- Table structure for table `schoolcontact`
--

CREATE TABLE `schoolcontact` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL,
  `teln` varchar(15) NOT NULL,
  `mobn` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `schoolcontact`
--

INSERT INTO `schoolcontact` (`id`, `name`, `description`, `teln`, `mobn`, `fax`) VALUES
(9, 'Chinamura L.N High School', '1425281816456329.txt', '01938161058', '01684825641', '092837');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `name`) VALUES
(4, 'Day'),
(5, 'Evening');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `classid` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `dateofbirth` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  `religionid` int(10) NOT NULL,
  `bloodgroupid` int(10) default NULL,
  `mobile` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(20) default NULL,
  `alternativeemail` varchar(20) default NULL,
  `password` varchar(20) NOT NULL,
  `nationalid` varchar(15) default NULL,
  `aboutstudent` varchar(35) default NULL,
  `previousinstitute` varchar(100) NOT NULL,
  `paddress` varchar(20) NOT NULL,
  `peraddress` varchar(20) NOT NULL,
  PRIMARY KEY  (`studentid`),
  UNIQUE KEY `email` (`email`),
  KEY `classid` (`classid`),
  KEY `yearid` (`yearid`),
  KEY `bloodgroupid` (`bloodgroupid`),
  KEY `religionid` (`religionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `name`, `picture`, `classid`, `yearid`, `fname`, `mname`, `dateofbirth`, `gender`, `nationality`, `religionid`, `bloodgroupid`, `mobile`, `phone`, `email`, `alternativeemail`, `password`, `nationalid`, `aboutstudent`, `previousinstitute`, `paddress`, `peraddress`) VALUES
(1114, 'shoriful islam', '1021418497003mo_image_04.jpg', 1, 3, 'fname', 'mname', '01/12/12', 'm', 'b', 1, 1, '0965456', '79557687', 'email', 'email', '123456', '608543', 'nothing', 'no isti', '1418497003123261.txt', '141849700377759.txt'),
(1115, 'Tamanna Khatun', '7071420714657410288857s1.jpg', 1, 2, 'Milon Hossain', 'Mother Name', '21-12-15', 'f', 'b', 1, 1, '1234567', '12345678', 'tamanna@gmail.com', 'tamanna@gmail.com', '123456', '2345678', 'nothing', 'no web', '1420714657633667.txt', '1420714657508942.txt'),
(1116, 'Rifat Hossain', '3981420714767anna-bhatia.jpg', 1, 2, 'Milon Hossain', 'Mother Name', '21-12-15', 'm', 'b', 1, 1, '1234567', '12345678', 'rifat@gmail.com', 'rifat@gmail.com', '123456', '2345678', 'nothing', 'no web', '1420714767130219.txt', '1420714767773681.txt'),
(1117, 'Tanvir Amin', '5831420714860ske-d4t4chv.jpg', 1, 2, 'Father Name', 'Mother Name', '21-12-15', 'm', 'b', 1, 2, '1234567', '12345678', 'tanvir@gmail.com', 'tanvir@gmail.com', '123456', '2345678', 'nothing', 'no web', '142071486037293.txt', '142071486097870.txt'),
(1118, 'Asad', '8581420715007757flickr-8.jpg', 1, 2, 'Father Name', 'Mother Name', '21-12-15', 'm', 'b', 1, 2, '1234567', '12345678', 'asad@gmail.com', 'asad@gmail.com', '123456', '2345678', 'nothing', 'no web', '1420715007315155.txt', '1420715007744262.txt'),
(1119, 'Safique', '8581420715007757flickr-8.jpg', 1, 2, 'Father Name', 'Mother Name', '21-12-15', 'm', 'b', 1, 2, '1234567', '12345678', 'safique@gmail.com', 'safique@gmail.com', '123456', '2345678', 'nothing', 'no web', '1420715007315155.txt', '1420715007744262.txt'),
(1214, 'fakhrul hassan', '8701418507429mo_image_01.jpg', 1, 3, 'fname', 'mname', '9/9/10', 'm', 'b', 1, 2, '0965456', '79557687', 'email1', 'email1', '123456', '608543', 'nothing', 'no isti', '1418507429395722.txt', '1418507429276001.txt'),
(1314, 'farhad evan', '2191418508106mo_image_03.jpg', 1, 3, 'fname', 'mname', '01/12/12', 'm', 'b', 1, 1, '0965456', '79557687', 'email2', 'email2', '123456', '608543', 'nothing', 'no isti', '1418508106642670.txt', '1418508106255860.txt');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `classid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `classid` (`classid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `classid`) VALUES
(1, 'Bangla', 1),
(2, 'English', 1),
(3, 'Math', 1),
(4, 'bangla2', 10);

-- --------------------------------------------------------

--
-- Table structure for table `subject_question`
--

CREATE TABLE `subject_question` (
  `id` int(10) NOT NULL auto_increment,
  `subjectname` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subject_question`
--

INSERT INTO `subject_question` (`id`, `subjectname`) VALUES
(1, 'English'),
(2, 'Bangla'),
(4, 'General Knowledge'),
(5, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherid` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `groupp` varchar(30) NOT NULL,
  `academicqualification` varchar(40) NOT NULL,
  `trainingexprience` varchar(40) NOT NULL,
  `teachingarea` varchar(40) NOT NULL,
  `previousemployment` varchar(40) NOT NULL,
  `personalwebpage` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `paddress` varchar(20) NOT NULL,
  `peraddress` varchar(20) NOT NULL,
  `joiningdate` date default NULL,
  `workingduration` varchar(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  PRIMARY KEY  (`teacherid`),
  UNIQUE KEY `unique_key_teacher_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherid`, `name`, `picture`, `groupp`, `academicqualification`, `trainingexprience`, `teachingarea`, `previousemployment`, `personalwebpage`, `phone`, `mobile`, `gender`, `email`, `password`, `fname`, `mname`, `paddress`, `peraddress`, `joiningdate`, `workingduration`, `qualification`) VALUES
(15001, 'Fakhrul Hassan', '3711421612765acktoschool.jpg', 'Science', '1421612765346527.txt', '1421612765601318.txt', 'omputer science', 'nothing exprience', 'www.fakhrul.com', '0123456789', '12345678', 'm', 'fakhrul@gmail.com', '123456', 'Fname', 'Mname', '142161276545441.txt', '1421612765689148.txt', '2001-12-15', '10 year', 'Engineering'),
(15002, 'Shohel Rana', '7531421746530acktoschool.jpg', 'Science', '1421746530362000.txt', '1421746530240937.txt', 'omputer science', 'nothing exprience', 'www.shohelrana.com', '0123456789', '12345678', 'm', 'shohel@gmail.com', '123456', 'Fname', 'Mname', '1421746530654419.txt', '1421746530145905.txt', '2001-12-15', '10 year', 'Engineering'),
(15003, 'Mizanur Rahman', '7531421746530acktoschool.jpg', 'Science', '1421746530362000.txt', '1421746530240937.txt', 'omputer science', 'nothing exprience', 'www.shohelrana.com', '0123456789', '12345678', 'm', 'mizan@gmail.com', '123456', 'Fname', 'Mname', '1421746530654419.txt', '1421746530145905.txt', '2001-12-15', '10 year', 'Engineering'),
(15004, 'Shoriful Islam', '7531421746530acktoschool.jpg', 'Science', '1421746530362000.txt', '1421746530240937.txt', 'omputer science', 'nothing exprience', 'www.shoriful.com', '0123456789', '12345678', 'm', 'shoriful@gmail.com', '123456', 'Fname', 'Mname', '1421746530654419.txt', '1421746530145905.txt', '2001-12-15', '10 year', 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `teacheraccountinfo`
--

CREATE TABLE `teacheraccountinfo` (
  `id` int(10) NOT NULL auto_increment,
  `teacherid` int(10) NOT NULL,
  `paidamount` varchar(15) NOT NULL,
  `typeteacherid` int(10) NOT NULL,
  `dayid` int(10) NOT NULL,
  `monthid` int(10) NOT NULL,
  `yearid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `teacherid` (`teacherid`),
  KEY `typeteacherid` (`typeteacherid`),
  KEY `dayid` (`dayid`),
  KEY `monthid` (`monthid`),
  KEY `yearid` (`yearid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `teacheraccountinfo`
--

INSERT INTO `teacheraccountinfo` (`id`, `teacherid`, `paidamount`, `typeteacherid`, `dayid`, `monthid`, `yearid`) VALUES
(1, 15001, '1000', 2, 11, 1, 2),
(2, 15001, '1000', 2, 11, 1, 2),
(3, 15001, '1000', 2, 7, 2, 2),
(5, 15001, '4000', 2, 24, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `typeteacher`
--

CREATE TABLE `typeteacher` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `typeteacher`
--

INSERT INTO `typeteacher` (`id`, `name`) VALUES
(1, 'Monthly Salary'),
(2, 'House Rant');

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevent`
--

CREATE TABLE `upcomingevent` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `description` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `upcomingevent`
--

INSERT INTO `upcomingevent` (`id`, `name`, `date`, `time`, `description`) VALUES
(1, 'indenpendent day', '10 may 2014', '10:10:00', '1411374057822601.txt'),
(2, 'Sport Day', '11 may 2014', '09:19:10', '141138126487250.txt'),
(3, 'Tour', '10 dec 2014', '05:12:10', '14113812896714.txt'),
(4, 'Nobi boron', '12.12.14', '00:00:10', '1414053944865875.txt');

-- --------------------------------------------------------

--
-- Table structure for table `usefullink`
--

CREATE TABLE `usefullink` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `link` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `usefullink`
--

INSERT INTO `usefullink` (`id`, `name`, `link`) VALUES
(1, 'Bangladesh news paper', 'www.bangladeshnewspaper'),
(2, 'Protom Alo', 'www.prothom-alo.com'),
(3, 'Live Cricket Update', 'www.cricinfo.com'),
(4, 'result of ssc', 'www.sscresult.com');

-- --------------------------------------------------------

--
-- Table structure for table `waiver`
--

CREATE TABLE `waiver` (
  `id` int(10) NOT NULL auto_increment,
  `studentid` int(10) NOT NULL,
  `persent` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `studentid` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `waiver`
--


-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `name`) VALUES
(2, '2015'),
(3, '2014'),
(4, '2016'),
(5, '2017'),
(6, '2018');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigningclassforstudent`
--
ALTER TABLE `assigningclassforstudent`
  ADD CONSTRAINT `assigningclassforstudent_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`),
  ADD CONSTRAINT `assigningclassforstudent_ibfk_2` FOREIGN KEY (`classid`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `assigningclassforstudent_ibfk_3` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`),
  ADD CONSTRAINT `assigningclassforstudent_ibfk_4` FOREIGN KEY (`sectionid`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `assigningclassforstudent_ibfk_5` FOREIGN KEY (`shiftid`) REFERENCES `shift` (`id`),
  ADD CONSTRAINT `assigningclassforstudent_ibfk_6` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`teacherid`);

--
-- Constraints for table `assigningteacher`
--
ALTER TABLE `assigningteacher`
  ADD CONSTRAINT `assigningteacher_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `assigningteacher_ibfk_2` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`teacherid`);

--
-- Constraints for table `attendence`
--
ALTER TABLE `attendence`
  ADD CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`studentid`, `classid`, `yearid`, `shiftid`, `sectionid`) REFERENCES `assigningclassforstudent` (`studentid`, `classid`, `yearid`, `shiftid`, `sectionid`),
  ADD CONSTRAINT `attendence_ibfk_2` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`),
  ADD CONSTRAINT `attendence_ibfk_3` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`teacherid`),
  ADD CONSTRAINT `attendence_ibfk_4` FOREIGN KEY (`sectionid`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `attendence_ibfk_5` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`),
  ADD CONSTRAINT `attendence_ibfk_6` FOREIGN KEY (`shiftid`) REFERENCES `shift` (`id`);

--
-- Constraints for table `classblog`
--
ALTER TABLE `classblog`
  ADD CONSTRAINT `cb_fk_cid` FOREIGN KEY (`classid`) REFERENCES `class` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `earn`
--
ALTER TABLE `earn`
  ADD CONSTRAINT `earn_ibfk_1` FOREIGN KEY (`earntypeid`) REFERENCES `earntype` (`id`),
  ADD CONSTRAINT `earn_ibfk_2` FOREIGN KEY (`dayid`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `earn_ibfk_3` FOREIGN KEY (`monthid`) REFERENCES `month` (`id`),
  ADD CONSTRAINT `earn_ibfk_4` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`);

--
-- Constraints for table `expence`
--
ALTER TABLE `expence`
  ADD CONSTRAINT `expence_ibfk_1` FOREIGN KEY (`expencetypeid`) REFERENCES `expencetype` (`id`),
  ADD CONSTRAINT `expence_ibfk_2` FOREIGN KEY (`dayid`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `expence_ibfk_3` FOREIGN KEY (`monthid`) REFERENCES `month` (`id`),
  ADD CONSTRAINT `expence_ibfk_4` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`);

--
-- Constraints for table `expenceforgardiantarrangement`
--
ALTER TABLE `expenceforgardiantarrangement`
  ADD CONSTRAINT `expenceforgardiantarrangement_ibfk_1` FOREIGN KEY (`expenceforgardiantarrangementid`) REFERENCES `expenceforgardiantarrangement` (`id`),
  ADD CONSTRAINT `expenceforgardiantarrangement_ibfk_2` FOREIGN KEY (`dayid`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `expenceforgardiantarrangement_ibfk_3` FOREIGN KEY (`monthid`) REFERENCES `month` (`id`),
  ADD CONSTRAINT `expenceforgardiantarrangement_ibfk_4` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`);

--
-- Constraints for table `expenceforpublish`
--
ALTER TABLE `expenceforpublish`
  ADD CONSTRAINT `expenceforpublish_ibfk_1` FOREIGN KEY (`expenceforpublishtypeid`) REFERENCES `expenceforpublishtype` (`id`),
  ADD CONSTRAINT `expenceforpublish_ibfk_2` FOREIGN KEY (`dayid`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `expenceforpublish_ibfk_3` FOREIGN KEY (`monthid`) REFERENCES `month` (`id`),
  ADD CONSTRAINT `expenceforpublish_ibfk_4` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`);

--
-- Constraints for table `iqtest`
--
ALTER TABLE `iqtest`
  ADD CONSTRAINT `iqtest_ibfk_1` FOREIGN KEY (`subjectnameid`) REFERENCES `subject_question` (`id`);

--
-- Constraints for table `paidamount`
--
ALTER TABLE `paidamount`
  ADD CONSTRAINT `paidamount_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`),
  ADD CONSTRAINT `paidamount_ibfk_2` FOREIGN KEY (`classid`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `paidamount_ibfk_3` FOREIGN KEY (`dayid`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `paidamount_ibfk_4` FOREIGN KEY (`monthid`) REFERENCES `month` (`id`),
  ADD CONSTRAINT `paidamount_ibfk_5` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`),
  ADD CONSTRAINT `paidamount_ibfk_6` FOREIGN KEY (`shiftid`) REFERENCES `shift` (`id`),
  ADD CONSTRAINT `paidamount_ibfk_7` FOREIGN KEY (`sectionid`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `paidamount_ibfk_8` FOREIGN KEY (`payorpaidamounttypeid`) REFERENCES `payorpaidamounttype` (`id`);

--
-- Constraints for table `payableamount`
--
ALTER TABLE `payableamount`
  ADD CONSTRAINT `payableamount_ibfk_1` FOREIGN KEY (`payorpaidamounttypeid`) REFERENCES `payorpaidamounttype` (`id`),
  ADD CONSTRAINT `payableamount_ibfk_2` FOREIGN KEY (`classid`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `payableamount_ibfk_3` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`),
  ADD CONSTRAINT `payableamount_ibfk_4` FOREIGN KEY (`shiftid`) REFERENCES `shift` (`id`);

--
-- Constraints for table `photogallary`
--
ALTER TABLE `photogallary`
  ADD CONSTRAINT `photogallary_ibfk_1` FOREIGN KEY (`phototypeid`) REFERENCES `phototype` (`id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`studentid`, `classid`, `yearid`, `shiftid`, `sectionid`) REFERENCES `assigningclassforstudent` (`studentid`, `classid`, `yearid`, `shiftid`, `sectionid`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`teacherid`),
  ADD CONSTRAINT `result_ibfk_4` FOREIGN KEY (`sectionid`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `result_ibfk_5` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`),
  ADD CONSTRAINT `result_ibfk_6` FOREIGN KEY (`shiftid`) REFERENCES `shift` (`id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`id`);

--
-- Constraints for table `teacheraccountinfo`
--
ALTER TABLE `teacheraccountinfo`
  ADD CONSTRAINT `teacheraccountinfo_ibfk_1` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`teacherid`),
  ADD CONSTRAINT `teacheraccountinfo_ibfk_2` FOREIGN KEY (`typeteacherid`) REFERENCES `typeteacher` (`id`),
  ADD CONSTRAINT `teacheraccountinfo_ibfk_3` FOREIGN KEY (`dayid`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `teacheraccountinfo_ibfk_4` FOREIGN KEY (`monthid`) REFERENCES `month` (`id`),
  ADD CONSTRAINT `teacheraccountinfo_ibfk_5` FOREIGN KEY (`yearid`) REFERENCES `year` (`id`);

--
-- Constraints for table `waiver`
--
ALTER TABLE `waiver`
  ADD CONSTRAINT `waiver_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);
