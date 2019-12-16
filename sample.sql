-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 03:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `dp_pdd_tbl`
--

CREATE TABLE `dp_pdd_tbl` (
  `id` int(10) NOT NULL,
  `DEALER_ID` int(8) NOT NULL,
  `ASSET_CATEGORY` int(8) DEFAULT NULL,
  `AGREEMENTNO` varchar(50) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(500) DEFAULT NULL,
  `loan_amount` decimal(20,8) DEFAULT NULL,
  `insurance_doc_recd` varchar(50) DEFAULT NULL,
  `invoice_doc_recd` varchar(50) DEFAULT NULL,
  `rc_beform_doc_recd` varchar(50) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `make` varchar(10) DEFAULT NULL,
  `model` varchar(10) DEFAULT NULL,
  `vehicle_regi_no` varchar(50) DEFAULT NULL,
  `chassis_No` varchar(50) DEFAULT NULL,
  `engine_no` varchar(50) DEFAULT NULL,
  `rcbook_no` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(50) DEFAULT NULL,
  `insurance_no` varchar(50) DEFAULT NULL,
  `dorl_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `S.NO` int(11) NOT NULL,
  `FNAME` varchar(100) NOT NULL,
  `LNAME` varchar(250) DEFAULT NULL,
  `MOBILE_NO` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(250) DEFAULT NULL,
  `E_ID` varchar(250) DEFAULT NULL,
  `PASSWORD` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`S.NO`, `FNAME`, `LNAME`, `MOBILE_NO`, `EMAIL_ID`, `E_ID`, `PASSWORD`) VALUES
(1, 'TEST', NULL, '9659134238', NULL, NULL, NULL),
(2, 'value', NULL, '9659134239', NULL, NULL, NULL),
(3, 'Ananth', 'Raj', '9543211480', 'ananth@gmail.com', 'CTS001', '1234'),
(4, 'Pramot', 'S', '8072984711', 'pramot@gamil.com', 'SF00275', '0987'),
(5, 'Gowri', 'Sankar', '9597093188', 'gowri@gmail.com', 'SF00205', '6789');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `NAME` varchar(250) DEFAULT NULL,
  `MOBILE_NO` varchar(250) NOT NULL,
  `EMAIL_ID` varchar(250) NOT NULL,
  `ADDRESS` varchar(250) NOT NULL,
  `GENDER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`NAME`, `MOBILE_NO`, `EMAIL_ID`, `ADDRESS`, `GENDER`) VALUES
('iuoiu', '89798789', '', '', ''),
('iuoiu', '89798789', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dp_pdd_tbl`
--
ALTER TABLE `dp_pdd_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`S.NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dp_pdd_tbl`
--
ALTER TABLE `dp_pdd_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `S.NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
