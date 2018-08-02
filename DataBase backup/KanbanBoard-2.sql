-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 08:25 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `KanbanBoard`
--

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
  `DepartmentId` int(11) NOT NULL,
  `DepartmentName` varchar(50) NOT NULL,
  `DepartmentStatus` int(11) NOT NULL DEFAULT '1',
  `DepartmentComment` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`DepartmentId`, `DepartmentName`, `DepartmentStatus`, `DepartmentComment`) VALUES
(1, 'Injection', 1, ''),
(2, 'Casing Preparation', 1, ''),
(3, 'SMT', 1, ''),
(4, 'Manual Mounting', 1, ''),
(5, 'Optical System', 1, ''),
(6, 'Chemical', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `OrderPriority`
--

CREATE TABLE IF NOT EXISTS `OrderPriority` (
  `PriorityId` int(11) NOT NULL,
  `PriorityName` varchar(50) NOT NULL,
  `PriorityStatus` int(11) NOT NULL DEFAULT '1',
  `PriorityComment` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OrderPriority`
--

INSERT INTO `OrderPriority` (`PriorityId`, `PriorityName`, `PriorityStatus`, `PriorityComment`) VALUES
(1, 'Low ', 1, ''),
(3, 'Normal', 1, ''),
(4, 'High', 1, ''),
(5, 'Very High', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE IF NOT EXISTS `Orders` (
  `OrderId` int(11) unsigned NOT NULL,
  `OrderCode` varchar(12) NOT NULL,
  `OrderName` varchar(50) NOT NULL,
  `OrderTo` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `Order4Date` date NOT NULL,
  `OrderedBy` int(11) NOT NULL,
  `OrderPriority` int(11) NOT NULL,
  `OrderStatus` int(11) NOT NULL,
  `OrderComment` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`OrderId`, `OrderCode`, `OrderName`, `OrderTo`, `OrderDate`, `Order4Date`, `OrderedBy`, `OrderPriority`, `OrderStatus`, `OrderComment`) VALUES
(1, '', 'First order', 3, '2018-03-18', '2018-05-01', 1, 1, 3, 'This order is the 1st test order'),
(2, '', '2nd order', 3, '2018-03-18', '2018-06-01', 1, 1, 2, 'This order is a 2nd test order'),
(3, '', '3rd order', 3, '2018-03-18', '2018-05-01', 1, 1, 1, 'This order is a 3rd test order'),
(4, 'new order 2', 'Casing20180322', 3, '2018-03-18', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(5, 'new order 2', 'Casing20180322', 3, '0000-00-00', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(6, 'new order 3', 'Casing20180322', 3, '0000-00-00', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(7, 'new order 4', 'Casing20180322', 3, '0000-00-00', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(8, 'new order 5', 'Casing20180322', 3, '2018-03-22', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(9, 'new order 4', 'Casing20180322', 3, '2018-03-22', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(10, 'new order 6', 'Casing20180322', 3, '2018-03-22', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.22 to Casing department'),
(11, 'new order 7', 'Casing20180318', 3, '2018-03-22', '2018-05-01', 1, 1, 1, 'This is an order placed on 2018.03.18 to Casing department'),
(12, 'new order 8', 'Casing20180318', 3, '2018-03-22', '0000-00-00', 1, 1, 1, 'This is an order placed on 2018.03.18 to Casing department'),
(13, 'new order 9', 'Casing20180318', 3, '2018-03-22', '2018-04-06', 1, 1, 1, 'This is an order placed on 2018.03.18 to Casing department'),
(14, 'new order', 'Casing20180318', 25, '2018-03-22', '2018-04-06', 1, 1, 1, 'This is an order placed on 2018.03.18 to Casing department'),
(15, 'new order', 'Casing20180318', 1, '2018-03-22', '2018-04-06', 1, 3, 1, 'This is an order placed on 2018.03.18 to Casing department'),
(16, 'order test', 'Casing20180322', 3, '2018-03-22', '2018-04-06', 1, 4, 1, '	test order'),
(17, 'CS20180323', 'Casing Preparation 20180323', 3, '2018-03-23', '2018-04-07', 1, 3, 1, '	test order for '),
(18, 'new order12', 'Casing20180318', 1, '2018-03-24', '2018-04-08', 1, 2, 1, '	'),
(19, 'new order13', 'Casing20180318', 1, '2018-03-24', '2018-04-08', 1, 2, 1, '	'),
(20, 'new order', 'Casing20180318', 1, '2018-03-24', '2018-04-08', 1, 2, 1, ' Here is a simple text. Here is a simple text.Here is a simple text.Here is a simple text.Here is a simple text.Here is a simple text.Here is a simple text.Here is a simple text.Here is a simple text.'),
(21, '', '', 0, '2018-03-24', '2018-04-08', 1, 0, 1, ''),
(22, 'MM2018', 'Manual Mounting 2018', 2, '2018-03-24', '2018-04-08', 1, 4, 2, 'this is only a simple examples. this is only a simple examples. this is only a simple examples. this is only a simple examples. this is only a simple examples. this is only a simple examples. this is '),
(23, 'SMT2018', 'SMT 2018', 3, '2018-03-24', '2018-04-08', 1, 5, 2, ' An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  A'),
(24, 'SMT2018', 'SMT 2018', 3, '2018-03-24', '2018-04-08', 1, 5, 2, ' An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  An order to SMT.  A'),
(25, 'New order', 'Casing Preparation 2018', 2, '2018-03-25', '2018-04-09', 1, 3, 1, ' Test order'),
(26, 'cs2018', 'Casing Preparation 2018', 2, '2018-03-25', '2018-04-09', 1, 3, 2, ' test2'),
(27, 'CS201803', 'Casing prep', 3, '2018-03-26', '2018-04-10', 1, 3, 9, ' asfadsfasf asfadsfasf asfadsfasf'),
(28, '', '', 1, '2018-03-31', '2018-04-15', 1, 1, 1, ' '),
(29, '', '', 1, '2018-03-31', '2018-04-15', 1, 1, 1, ' '),
(30, '', '', 1, '2018-03-31', '2018-04-15', 1, 1, 1, ' '),
(31, '', '', 1, '2018-03-31', '2018-04-15', 1, 1, 1, ' '),
(32, '', '', 1, '2018-04-01', '2018-04-16', 1, 1, 1, ' '),
(33, '', '', 1, '2018-04-01', '2018-04-16', 1, 1, 1, ' '),
(34, '', '', 1, '2018-04-01', '2018-04-16', 1, 1, 1, ' '),
(35, '', '', 0, '2018-04-01', '2018-04-16', 1, 0, 0, ''),
(36, '', '', 1, '2018-04-01', '2018-04-16', 1, 1, 1, ' '),
(37, '', '', 0, '2018-04-01', '2018-04-16', 1, 0, 0, ''),
(38, '', '', 0, '2018-04-01', '2018-04-16', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `OrderStatus`
--

CREATE TABLE IF NOT EXISTS `OrderStatus` (
  `StatusId` int(11) NOT NULL,
  `StatusName` varchar(50) NOT NULL,
  `StatusStatus` int(11) NOT NULL DEFAULT '1',
  `StatusComment` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OrderStatus`
--

INSERT INTO `OrderStatus` (`StatusId`, `StatusName`, `StatusStatus`, `StatusComment`) VALUES
(1, 'Pending', 1, '0'),
(2, 'WIP', 1, '0'),
(3, 'In Hold, missing materials', 1, '0'),
(4, 'In Hold, non-conform materials', 1, '0'),
(5, 'In Hold, equipment issue', 1, '0'),
(6, 'In Hold, technical issue', 1, '0'),
(7, 'In Hold, HR issue', 1, '0'),
(8, 'In Hold, other issue', 1, '0'),
(9, 'Completed', 1, '0'),
(10, 'Canceled', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `PassAccount`
--

CREATE TABLE IF NOT EXISTS `PassAccount` (
  `passId` int(10) unsigned NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassAccount`
--

INSERT INTO `PassAccount` (`passId`, `email`, `pass`, `status`, `comment`) VALUES
(1, 'user@hanna.ro', '098f6bcd4621d373cade4e832627b4f6', 1, 'user@hanna.ro, test, active');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE IF NOT EXISTS `Product` (
  `prod_id` int(11) NOT NULL,
  `prod_code` varchar(15) NOT NULL,
  `prod_description` varchar(50) NOT NULL,
  `prod_type_id` int(11) NOT NULL,
  `prod_group_id` int(11) NOT NULL,
  `prod_category_id` int(11) NOT NULL,
  `prod_status_id` int(11) NOT NULL,
  `prod_supplier_id` int(11) NOT NULL,
  `prod_um` varchar(5) NOT NULL,
  `prod_pack` varchar(5) NOT NULL,
  `prod_update` date NOT NULL,
  `prod_update_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`prod_id`, `prod_code`, `prod_description`, `prod_type_id`, `prod_group_id`, `prod_category_id`, `prod_status_id`, `prod_supplier_id`, `prod_um`, `prod_pack`, `prod_update`, `prod_update_by`) VALUES
(1, 'HI98103', '', 0, 0, 0, 0, 0, '', '', '2018-04-06', 0),
(3, 'HI8424', 'pH portable', 0, 0, 0, 0, 0, '', '', '0000-00-00', 0),
(4, 'HI9146', 'DO portable', 0, 0, 0, 1, 0, 'pc', '1', '2018-04-06', 1),
(5, 'HI9147', 'DO portable', 0, 0, 0, 1, 0, 'pc', '1', '0000-00-00', 1),
(6, 'HI9241', 'DO portable', 0, 0, 0, 1, 0, 'pc', '1', '2018-04-06', 1),
(10, '', '', 0, 0, 0, 1, 0, 'pc', '1', '2018-04-06', 1),
(11, 'HI331', 'probe', 0, 0, 0, 1, 0, 'pc', '1', '2018-04-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ProductCategory`
--

CREATE TABLE IF NOT EXISTS `ProductCategory` (
  `category_id` int(11) NOT NULL,
  `category_code` varchar(15) NOT NULL,
  `category_description` varchar(50) NOT NULL,
  `category_status` int(11) NOT NULL,
  `category_comment` varchar(200) NOT NULL,
  `category_update` date NOT NULL,
  `category_update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProductGroup`
--

CREATE TABLE IF NOT EXISTS `ProductGroup` (
  `group_id` int(11) NOT NULL,
  `group_code` varchar(15) NOT NULL,
  `group_description` varchar(50) NOT NULL,
  `group_status` int(11) NOT NULL,
  `group_comment` varchar(200) NOT NULL,
  `group_update` date NOT NULL,
  `group_update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProductStatus`
--

CREATE TABLE IF NOT EXISTS `ProductStatus` (
  `status_id` int(11) NOT NULL,
  `status_code` varchar(15) NOT NULL,
  `status_description` varchar(50) NOT NULL,
  `status_comment` varchar(200) NOT NULL,
  `status_update` date NOT NULL,
  `status_update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProductType`
--

CREATE TABLE IF NOT EXISTS `ProductType` (
  `type_id` int(11) NOT NULL,
  `type_code` varchar(15) NOT NULL,
  `type_description` varchar(50) NOT NULL,
  `type_status` int(11) NOT NULL,
  `type_comment` varchar(200) NOT NULL,
  `type_update` date NOT NULL,
  `type_update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`DepartmentId`),
  ADD UNIQUE KEY `departmentName` (`DepartmentName`);

--
-- Indexes for table `OrderPriority`
--
ALTER TABLE `OrderPriority`
  ADD PRIMARY KEY (`PriorityId`),
  ADD UNIQUE KEY `PriorityName` (`PriorityName`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD UNIQUE KEY `OrderId` (`OrderId`);

--
-- Indexes for table `OrderStatus`
--
ALTER TABLE `OrderStatus`
  ADD PRIMARY KEY (`StatusId`),
  ADD UNIQUE KEY `StatusName` (`StatusName`);

--
-- Indexes for table `PassAccount`
--
ALTER TABLE `PassAccount`
  ADD PRIMARY KEY (`passId`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`prod_id`),
  ADD UNIQUE KEY `prod_code` (`prod_code`);

--
-- Indexes for table `ProductCategory`
--
ALTER TABLE `ProductCategory`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `type_code` (`category_code`);

--
-- Indexes for table `ProductGroup`
--
ALTER TABLE `ProductGroup`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `type_code` (`group_code`);

--
-- Indexes for table `ProductStatus`
--
ALTER TABLE `ProductStatus`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `type_code` (`status_code`);

--
-- Indexes for table `ProductType`
--
ALTER TABLE `ProductType`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_code` (`type_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `DepartmentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `OrderPriority`
--
ALTER TABLE `OrderPriority`
  MODIFY `PriorityId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `OrderId` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `OrderStatus`
--
ALTER TABLE `OrderStatus`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `PassAccount`
--
ALTER TABLE `PassAccount`
  MODIFY `passId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ProductCategory`
--
ALTER TABLE `ProductCategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ProductGroup`
--
ALTER TABLE `ProductGroup`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ProductStatus`
--
ALTER TABLE `ProductStatus`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ProductType`
--
ALTER TABLE `ProductType`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
