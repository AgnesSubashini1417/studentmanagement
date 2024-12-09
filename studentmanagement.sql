-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 06:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `addclass`
--

CREATE TABLE `addclass` (
  `id` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `Roomno` varchar(255) NOT NULL,
  `strength` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addclass`
--

INSERT INTO `addclass` (`id`, `classname`, `section`, `Roomno`, `strength`) VALUES
(17, 'Eighth', 'A', '100', '25'),
(18, 'Ninth', 'A', '101', '30'),
(19, 'Tenth', 'A', '201', '30'),
(20, 'Eleventh', 'A', '301', '30'),
(21, 'Twelth', 'B', '401', '20'),
(22, 'Tenth', 'A', '101', '20');

-- --------------------------------------------------------

--
-- Table structure for table `addstudent`
--

CREATE TABLE `addstudent` (
  `id` int(11) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `studentclass` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addstudent`
--

INSERT INTO `addstudent` (`id`, `studentid`, `studentname`, `studentclass`, `section`, `Gender`, `Date`) VALUES
(7, '1001', 'Suba', 'Eighth', 'A', 'female', '2014-05-14'),
(8, '1002', 'Hafsa', 'NINTH', 'A', 'female', '2015-06-15'),
(9, '1003', 'HeamanVasudev', 'Tenth', 'A', 'male', '2014-09-10'),
(10, '1004', 'Vijay', 'Tenth', 'A', 'male', '2014-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `noticetitle` varchar(255) NOT NULL,
  `noticefor` varchar(255) DEFAULT NULL,
  `noticemessage` varchar(255) NOT NULL,
  `noticedate` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `noticetitle`, `noticefor`, `noticemessage`, `noticedate`, `timestamp`) VALUES
(7, 'Holiday', 'All', 'Due to cyclone', '2024-12-01', '2024-12-01 07:27:45'),
(8, 'Holiday', 'All', 'Christmas', '2024-12-01', '2024-12-01 07:28:04'),
(9, 'Half yearly exams', 'Tenth', 'TIMETABLE POSTED ON NOTICE BOARD', '2024-12-01', '2024-12-01 07:29:11'),
(10, 'Specialclass', 'NINTH', 'saturday 2PM to 4pm', '2024-12-01', '2024-12-01 07:31:28'),
(11, 'Specialclass', 'Tenth', 'Today 3 to 4 pm', '2024-12-02', '2024-12-02 06:44:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addclass`
--
ALTER TABLE `addclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addstudent`
--
ALTER TABLE `addstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addclass`
--
ALTER TABLE `addclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `addstudent`
--
ALTER TABLE `addstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
