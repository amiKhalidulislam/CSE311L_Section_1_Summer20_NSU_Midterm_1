-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 06:07 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midterm-su`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `name` varchar(40) NOT NULL,
  `meets_at` varchar(20) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `fid` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`name`, `meets_at`, `room`, `fid`) VALUES
('Archaeology of the Incas', 'MWF 3-4:15', 'R128', '248965255'),
('Data Structures', 'MWF 10', 'R128', '489456522'),
('Database Systems', 'MWF 12:30-1:45', '1320 DCL', '142519864'),
('Operating System Design', 'TuTh 12-1:20', '20 AVW', '489456522');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `snum` decimal(9,0) NOT NULL,
  `cname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`snum`, `cname`) VALUES
('51135593', 'Communication Networks'),
('115987938', 'Database Systems'),
('455798411', 'Operating System Design');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `fid` decimal(9,0) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `deptid` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`fid`, `fname`, `deptid`) VALUES
('11564812', 'John Williams', '68'),
('141582651', 'Mary Johnson', '20'),
('142519864', 'Ivana Teach', '20'),
('159542516', 'William Moore', '33'),
('242518965', 'James Smith', '68'),
('248965255', 'Barbara Wilson', '12'),
('254099823', 'Patricia Jones', '68'),
('287321212', 'Michael Miller', '12'),
('356187925', 'Robert Brown', '12'),
('489456522', 'Linda Das', '20');

-- --------------------------------------------------------

--
-- Table structure for table `goodies`
--

CREATE TABLE `goodies` (
  `pid` int(9) NOT NULL,
  `pname` varchar(40) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goodies`
--

INSERT INTO `goodies` (`pid`, `pname`, `color`) VALUES
(1, 'Left Handed Bacon Stretcher Cover', 'Red'),
(2, 'Smoke Shifter End', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `sid` int(9) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `sid` int(9) NOT NULL,
  `pid` int(9) NOT NULL,
  `cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`sid`, `pid`, `cost`) VALUES
(1, 3, 1),
(1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `snum` decimal(9,0) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `major` varchar(25) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `age` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`snum`, `sname`, `major`, `level`, `age`) VALUES
('51135593', 'Maria White', 'English', 'SR', '21'),
('60839453', 'Charles Harris', 'Architecture', 'SR', '22'),
('99354543', 'Susan Martin', 'Law', 'JR', '20'),
('112348546', 'Joseph Thompson', 'Computer Science', 'SO', '19'),
('115987938', 'Christopher Garcia', 'Computer Science', 'JR', '20'),
('132977562', 'Angela Martinez', 'History', 'SR', '20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`snum`,`cname`),
  ADD UNIQUE KEY `cname` (`cname`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `goodies`
--
ALTER TABLE `goodies`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`sid`,`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`snum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
