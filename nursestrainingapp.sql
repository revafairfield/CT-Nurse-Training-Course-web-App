-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 22, 2018 at 07:16 AM
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
-- Database: `nursestrainingapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_section`
--

DROP TABLE IF EXISTS `course_section`;
CREATE TABLE IF NOT EXISTS `course_section` (
  `courseID` int(11) NOT NULL AUTO_INCREMENT,
  `courseSequence` int(3) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseDescription` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `documentID` int(11) NOT NULL AUTO_INCREMENT,
  `documentFile` varchar(255) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`documentID`),
  KEY `fk_document-course` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lookup`
--

DROP TABLE IF EXISTS `lookup`;
CREATE TABLE IF NOT EXISTS `lookup` (
  `lookupID` int(11) NOT NULL AUTO_INCREMENT,
  `lookupName` varchar(255) NOT NULL,
  `lookupValue` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lookupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `permissionID` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(255) NOT NULL,
  `permissionDescription` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`permissionID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `schoolID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(255) NOT NULL,
  `schoolCity` varchar(255) NOT NULL DEFAULT '',
  `schoolState` varchar(255) NOT NULL,
  `schoolCountry` varchar(255) DEFAULT 'USA',
  PRIMARY KEY (`schoolID`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolID`, `schoolName`, `schoolCity`, `schoolState`, `schoolCountry`) VALUES
(51, 'Connecticut College', '', 'CT', 'USA'),
(50, 'Central Connecticut State University', '', 'CT', 'USA'),
(47, 'Albertus Magnus College', '', 'CT', 'USA'),
(48, 'Asnuntuck Community College', '', 'CT', 'USA'),
(49, 'Capital Community College', '', 'CT', 'USA'),
(79, 'Tunxis Community College', '', 'CT', 'USA'),
(78, 'Trinity College', '', 'CT', 'USA'),
(77, 'Three Rivers Community College', '', 'CT', 'USA'),
(76, 'St Vincents College', '', 'CT', 'USA'),
(75, 'Southern Connecticut State University', '', 'CT', 'USA'),
(74, 'Sanford Brown College Farmington', '', 'CT', 'USA'),
(73, 'Saint Joseph College', '', 'CT', 'USA'),
(72, 'Sacred Heart University', '', 'CT', 'USA'),
(71, 'Quinnipiac University', '', 'CT', 'USA'),
(70, 'Quinebaug Valley Community College', '', 'CT', 'USA'),
(69, 'Post University', '', 'CT', 'USA'),
(68, 'Paier College of Art Inc', '', 'CT', 'USA'),
(67, 'Norwalk Community College', '', 'CT', 'USA'),
(66, 'Northwestern Connecticut Community College', '', 'CT', 'USA'),
(65, 'Naugatuck Valley Community College', '', 'CT', 'USA'),
(64, 'Mitchell College', '', 'CT', 'USA'),
(63, 'Middlesex Community College', '', 'CT', 'USA'),
(62, 'Manchester Community College', '', 'CT', 'USA'),
(61, 'Lyme Academy College of Fine Arts', '', 'CT', 'USA'),
(60, 'Lincoln College of New England Suffield', '', 'CT', 'USA'),
(59, 'Lincoln College of New England Southington', '', 'CT', 'USA'),
(58, 'Lincoln College of New England Hartford', '', 'CT', 'USA'),
(57, 'Housatonic Community College', '', 'CT', 'USA'),
(56, 'Holy Apostles College and Seminary', '', 'CT', 'USA'),
(55, 'Goodwin College', '', 'CT', 'USA'),
(54, 'Gateway Community College', '', 'CT', 'USA'),
(53, 'Fairfield University', '', 'CT', 'USA'),
(52, 'Eastern Connecticut State University', '', 'CT', 'USA'),
(80, 'United States Coast Guard Academy', '', 'CT', 'USA'),
(81, 'University of Bridgeport', '', 'CT', 'USA'),
(82, 'University of Connecticut', '', 'CT', 'USA'),
(83, 'University of Connecticut Avery Point', '', 'CT', 'USA'),
(84, 'University of Connecticut Stamford', '', 'CT', 'USA'),
(85, 'University of Connecticut Tri Campus', '', 'CT', 'USA'),
(86, 'University of Hartford', '', 'CT', 'USA'),
(87, 'University of New Haven', '', 'CT', 'USA'),
(88, 'University of Phoenix Fairfield County Campus', '', 'CT', 'USA'),
(89, 'Wesleyan University', '', 'CT', 'USA'),
(90, 'Western Connecticut State University', '', 'CT', 'USA'),
(91, 'Yale University', '', 'CT', 'USA'),
(92, 'Other', '', 'NON-CT', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `test_answer`
--

DROP TABLE IF EXISTS `test_answer`;
CREATE TABLE IF NOT EXISTS `test_answer` (
  `answerID` int(11) NOT NULL AUTO_INCREMENT,
  `answerName` varchar(255) DEFAULT NULL,
  `isAnswer` varchar(1) DEFAULT NULL,
  `answerDifficulty` varchar(255) DEFAULT NULL,
  `isActive` varchar(1) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `testID` int(11) DEFAULT NULL,
  PRIMARY KEY (`answerID`),
  KEY `fk_answer-test` (`testID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_question`
--

DROP TABLE IF EXISTS `test_question`;
CREATE TABLE IF NOT EXISTS `test_question` (
  `questionID` int(11) NOT NULL AUTO_INCREMENT,
  `questionName` varchar(255) DEFAULT NULL,
  `questionDifficulty` varchar(255) DEFAULT NULL,
  `isActive` varchar(1) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `courseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`questionID`),
  KEY `fk_question-course` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `securityQuestion` varchar(255) NOT NULL,
  `securityAnswer` varchar(255) NOT NULL,
  `graduationYear` int(4) NOT NULL,
  `isActive` varchar(1) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `universityFlag` char(1) NOT NULL,
  `otherUniversity` varchar(255) DEFAULT NULL,
  `schoolID` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `fk_user-school` (`schoolID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

DROP TABLE IF EXISTS `user_permission`;
CREATE TABLE IF NOT EXISTS `user_permission` (
  `userPermissionID` int(11) NOT NULL AUTO_INCREMENT,
  `isActive` varchar(1) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `permissionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`userPermissionID`),
  KEY `fk_permissions-userpermissions` (`permissionID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_test`
--

DROP TABLE IF EXISTS `user_test`;
CREATE TABLE IF NOT EXISTS `user_test` (
  `testID` int(11) NOT NULL AUTO_INCREMENT,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isCorrect` varchar(1) DEFAULT NULL,
  `answerID` int(11) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`testID`),
  KEY `fk_usertest-question` (`questionID`),
  KEY `fk_usertest-answer` (`answerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_test_result`
--

DROP TABLE IF EXISTS `user_test_result`;
CREATE TABLE IF NOT EXISTS `user_test_result` (
  `resultID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `testID` int(11) DEFAULT NULL,
  `startDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `grade` int(3) DEFAULT NULL,
  PRIMARY KEY (`resultID`),
  KEY `fk_result-user` (`userID`),
  KEY `fk_result-test` (`testID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
