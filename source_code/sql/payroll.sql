-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 10:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'charitha', '20089'),
(2, 'anvitha', '20146'),
(3, 'prashamsa ', '20147'),
(4, 'sunaini', '20207');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Depart_id` int(11) NOT NULL,
  `Depart_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Depart_id`, `Depart_name`) VALUES
(1001, 'executive'),
(1002, 'director'),
(1003, 'manager'),
(1004, 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Start_date` date NOT NULL,
  `d_birth` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `loan` float NOT NULL,
  `pfund` float NOT NULL,
  `salary` float NOT NULL,
  `jobtitle` varchar(50) NOT NULL,
  `Depart_id` int(11) NOT NULL,
  `managesDepart_id` int(11) NOT NULL,
  `b_accno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Name`, `Address`, `Phone_no`, `Email`, `Start_date`, `d_birth`, `gender`, `loan`, `pfund`, `salary`, `jobtitle`, `Depart_id`, `managesDepart_id`, `b_accno`) VALUES
(20089, 'charitha', 'kadapa', '9823749743', 'cherry@gmail.com', '2020-06-16', '1999-03-04', 'male', 0, 0, 50000, 'executive', 1001, 1001, 234256657),
(20146, 'anvitha', 'kadapa', '8711843790', 'anvi@gmail.com', '2019-06-09', '1998-11-19', 'male', 0, 0, 0, 'director', 1002, 1002, 324456478),
(20147, 'prashamsa', 'tirupati', '9763512831', 'prashu@gmail.com', '2020-11-12', '1999-02-16', 'male', 0, 0, 0, 'accountant', 1003, 1003, 2142536785),
(20207, 'sunaini', 'kadapa', '9723468123', 'su@gmail.com', '2021-03-08', '1998-05-20', 'male', 0, 0, 0, 'manager', 1004, 1004, 324536768);

-- --------------------------------------------------------

--

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_no` int(11) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `accno` int(20) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `absence` int(11) NOT NULL,
  `loan_cut` float NOT NULL,
  `pfund_cut` float NOT NULL,
  `overtime` float NOT NULL,
  `season_bonus` float NOT NULL,
  `other_bonus` float NOT NULL,
  `medi_allow` float NOT NULL,
  `house_allow` float NOT NULL,
  `total_pay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_no`, `emp_id`, `name`, `accno`, `year`, `month`, `absence`, `loan_cut`, `pfund_cut`, `overtime`, `season_bonus`, `other_bonus`, `medi_allow`, `house_allow`, `total_pay`) VALUES
(6, '20089', '', 0, 2022, 'january', 5, 0, 0, 5, 2, 0, 0, 0, 502);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Depart_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`),
  ADD KEY `Depart_id` (`Depart_id`),
  ADD KEY `managesDepart_id` (`managesDepart_id`);

--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Depart_id`) REFERENCES `department` (`Depart_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`managesDepart_id`) REFERENCES `department` (`Depart_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
