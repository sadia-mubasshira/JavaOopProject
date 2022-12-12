-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 07:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mgmt_sadia`
--

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(55) NOT NULL,
  `EMAIL` varchar(55) NOT NULL,
  `BLOODGROUP` varchar(10) NOT NULL,
  `POST` varchar(55) NOT NULL,
  `PRESENTADDRESS` varchar(55) NOT NULL,
  `PERMANENTADDRESS` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `USERID` int(15) NOT NULL,
  `STUDENTNAME` varchar(55) NOT NULL,
  `STUDENTFATHERNAME` varchar(55) NOT NULL,
  `STUDENTMOTHERNAME` varchar(55) NOT NULL,
  `STUDENTEMAIL` varchar(55) NOT NULL,
  `STUDENTPHONE` varchar(13) NOT NULL,
  `STUDENTFATHERPHONE` varchar(13) NOT NULL,
  `STUDENTPERMANENTADDRESS` varchar(55) NOT NULL,
  `STUDENTPRESENTADDRESS` varchar(55) NOT NULL,
  `STUDENTGENDER` varchar(10) NOT NULL,
  `STUDENTNID` varchar(20) NOT NULL,
  `STUDENTCOURSE` varchar(55) NOT NULL,
  `STUDENTSSC` varchar(10) NOT NULL,
  `STUDENTHSC` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`USERID`, `STUDENTNAME`, `STUDENTFATHERNAME`, `STUDENTMOTHERNAME`, `STUDENTEMAIL`, `STUDENTPHONE`, `STUDENTFATHERPHONE`, `STUDENTPERMANENTADDRESS`, `STUDENTPRESENTADDRESS`, `STUDENTGENDER`, `STUDENTNID`, `STUDENTCOURSE`, `STUDENTSSC`, `STUDENTHSC`) VALUES
(1, 'NAME ', 'NAME C', 'NAME D', 'NAME@NAME.COM', '123456789', '123045678', 'ADRRESS PERMANENT', 'ADDRESS PRESENT', 'MALE', '120123456789', 'CSE', '4.50', '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `superuser`
--

CREATE TABLE `superuser` (
  `USERID` int(15) NOT NULL,
  `USEREMAIL` varchar(55) NOT NULL,
  `PASSWORD` varchar(55) NOT NULL,
  `USERNAME` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `superuser`
--

INSERT INTO `superuser` (`USERID`, `USEREMAIL`, `PASSWORD`, `USERNAME`) VALUES
(101, '101', '101', 'SUPER USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `USERID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `superuser`
--
ALTER TABLE `superuser`
  MODIFY `USERID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
