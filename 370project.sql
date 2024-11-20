-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 09:36 AM
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
-- Database: `370project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(102, 'Su', 'Htet', 'suhtet@gmail.com', '1234', '2001-02-13', 'Female', '0202', 303, 'Sanchaung', 'IT', 'BSc', 'images/sh.jpg'),
(103, 'Htet Thiri', 'Naing', 'htetthiri@gmail.com', '1234', '2001-01-16', 'Female', '5252', 6262, 'South Oakala', 'IT', 'BSc', 'images/no.jpg'),
(104, 'Warso', 'Phoo', 'warsophoo@gmail.com', '1234', '2001-08-16', 'Female', '9595', 5959, 'North Oakalapa', 'IT', 'Business', 'images/no.jpg'),
(105, 'San Htar', 'Htet Zaw', 'sanhtar@gmail.com', '1234', '2001-06-12', 'Female', '8585', 5858, 'Latha', 'IT', 'BSc', 'images/no.jpg'),
(106, 'Chan Nyein', 'Han', 'channyein@gmail.com', '1234', '2000-02-17', 'Male', '7575', 5757, 'Latha', 'IT', 'BSc', 'images/no.jpg'),
(107, 'Aye ', 'Aye', 'ayeaye@gmail.com', '1234', '1998-03-11', 'Female', '4545', 5454, 'North Dagon', 'Network security', 'MSc', 'images/no.jpg'),
(108, 'Kyaw', ' Kyaw', 'kyawkyaw@gmail.com', '1234', '1996-04-16', 'Male', '758758', 857857, 'South Dagon', 'AI', 'PhD', 'images/no.jpg'),
(109, 'Su ', 'Su', 'susu@gmail.com', '1234', '1985-01-01', 'Female', '852852', 258258, 'Hledan', 'AI', 'PhD', 'images/no.jpg'),
(110, 'Aung', 'Bo', 'aungbo@gmail.com', '1234', '1995-09-19', 'Male', '147147', 741741, 'aungbo@gmail.com', 'NetworkSecurity', 'PhD', 'images/no.jpg'),
(111, 'Kyaw', 'Su', 'kyawsu@gmail.com', '1234', '2001-02-15', 'Male', '0187282', 112233, 'South Dagon', 'Management', 'BSc.', 'images/no.jpg'),
(112, 'Htet ', 'Htet', 'htet@gmail.com', '1234', '2005-02-10', 'Male', '091234567', 3, 'Myanmar', 'IT', 'BCSc', 'images/no.jpg'),
(113, 'Hla', 'Hla', 'hlahla@gmail.com', '1234', '2002-01-16', 'Female', '099876543', 123454, 'Yangon', 'HR department', 'BE', 'images/no.jpg'),
(114, 'Paing', 'Zay', 'zaykhant@gmail.com', '1234', '2000-10-05', 'Male', '09960332321', 27946, 'Hlaing', 'Business', 'Bcom', 'images/pzk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(102, 305, '2019-04-07', '2019-04-08', 'Urgent Family Cause', 'Approved'),
(103, 306, '2019-04-08', '2019-04-08', 'Concert Tour', 'Approved'),
(105, 308, '2019-04-26', '2019-04-30', 'Launching Tesla Model Y', 'Approved'),
(111, 309, '2019-04-09', '2019-04-13', 'Visit to Kings Landing', 'Pending'),
(104, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending'),
(112, 311, '0000-00-00', '0000-00-00', '', 'Pending'),
(112, 312, '0000-00-00', '0000-00-00', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `prjlink` varchar(200) DEFAULT NULL,
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `prjlink`, `mark`, `status`) VALUES
(214, 102, 'Test', '2019-04-10', '0000-00-00', '', 9, 'Due'),
(215, 105, 'Tesla Model Y', '2019-04-19', '2019-04-06', '', 10, 'Submitted'),
(216, 106, 'Hack', '2019-05-04', '2019-04-05', '', 5, 'Submitted'),
(217, 111, 'Do Nothing', '2019-04-02', '2024-02-21', '', 8, 'Submitted'),
(218, 105, 'Tesla Model X', '2019-04-03', '2019-04-03', '', 10, 'Submitted'),
(220, 110, 'Data Analysis', '2019-04-16', '2019-04-04', '', 8, 'Submitted'),
(221, 110, 'Data Analysis', '2019-04-16', '2019-04-04', '', 7, 'Submitted'),
(222, 103, 'Statistical', '2019-04-19', '2019-04-04', '', 6, 'Submitted'),
(223, 108, 'Software Scema', '2019-04-09', '2019-04-02', '', 3, 'Submitted'),
(224, 107, 'Security Check', '2019-04-26', '2019-04-05', '', 9, 'Submitted'),
(225, 109, 'ML', '2019-04-03', '2019-04-04', '', 6, 'Submitted'),
(229, 111, 'Weather Forecasting', '2024-02-21', '2024-02-21', '', 4, 'Submitted'),
(230, 112, 'Cha kwar', '2024-03-20', '2024-02-23', '', 11, 'Submitted'),
(231, 113, 'Data Collect', '2024-03-01', '0000-00-00', '', 3, 'Due'),
(232, 102, 'Testing', '2024-02-24', '0000-00-00', '', 8, 'Due'),
(233, 114, '1xBet', '2024-03-15', '0000-00-00', NULL, 0, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(102, 25),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 9),
(108, 3),
(109, 6),
(110, 15),
(111, 12),
(112, 21),
(113, 3),
(114, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(102, 16500, 25, 20625),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 9, 83930),
(108, 50000, 3, 51500),
(109, 85000, 6, 90100),
(110, 47000, 15, 54050),
(111, 45000, 12, 50400),
(112, 500000, 21, 605000),
(113, 670000, 3, 690100),
(114, 200000, 0, 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
