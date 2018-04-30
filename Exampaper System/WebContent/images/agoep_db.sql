-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2016 at 08:21 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agoep_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `contact_number` varchar(32) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `user_name`, `password`, `contact_number`, `reg_date`) VALUES
('102', 'kaptan singh', 'kaptan2008@gmail.com', 'kaptan', '123', '9650771454', '2016-04-06 17:47:34'),
('103', 'Harendra Kumar', 'harendrak14@gmail.com', 'harendra', 'abcd', '8447212556', '2016-04-06 23:13:31'),
('104', 'Harendra', 'singhragh95@gmail.com', 'abc', '123', '9911551864', '2016-04-07 23:27:57'),
('105', 'Hemant', 'hemant@gmail.com', 'hemant', '123', '9650771454', '2016-04-07 23:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` varchar(256) NOT NULL,
  `institute` varchar(512) NOT NULL,
  `question` varchar(2048) NOT NULL,
  `doq` varchar(128) NOT NULL,
  `module` varchar(64) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `semester` varchar(32) NOT NULL,
  `branch` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `institute`, `question`, `doq`, `module`, `subject`, `semester`, `branch`) VALUES
('1001', 'Jss Ate Noida', 'sdsdsd', 'Easy', '1', 'NW', '2', 'IT'),
('1002', 'Jss Ate Noida', 'sdsdsd', 'Easy', '1', 'NW', '2', 'IT');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
