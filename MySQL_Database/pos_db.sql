-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 04:46 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(20) NOT NULL,
  `dep_description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_table`
--

INSERT INTO `department_table` (`dep_id`, `dep_name`, `dep_description`) VALUES
(1, 'HR', 'Human Resource'),
(2, 'Finance', 'Finance Department'),
(3, 'Sales', 'Sales Department'),
(4, 'Food', 'Food Department'),
(5, 'Drinks', 'Drink Department'),
(6, 'IT', 'IT Department');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `item_code` varchar(120) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_description` varchar(512) DEFAULT NULL,
  `item_cateogry` varchar(100) DEFAULT NULL,
  `item_type` varchar(100) DEFAULT NULL,
  `item_measuring_unit` varchar(100) DEFAULT NULL,
  `item_manufacturer` varchar(200) DEFAULT NULL,
  `item_quantity` varchar(4) DEFAULT NULL,
  `item_cost_price` float DEFAULT NULL,
  `item_tag_price` float DEFAULT NULL,
  `stock_reorder_limit` float DEFAULT NULL,
  `account_code` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_code`, `item_name`, `item_description`, `item_cateogry`, `item_type`, `item_measuring_unit`, `item_manufacturer`, `item_quantity`, `item_cost_price`, `item_tag_price`, `stock_reorder_limit`, `account_code`) VALUES
('hi', '123', 'good', 'Rice', 'MATR', 'Box', 'nestle', '2', 11, 122, 2, 'Item 1'),
('sasa', 'sss', 'sdsds', 'Rice', 'MATR', 'Box', 'dsd', '11', 2, 33, 1, 'Item 1'),
('wewe', 'qqq', 'asaa', 'Rice', 'MATR', 'Box', 'sdsds', '111', 22, 23, 1, 'Item 1'),
('wewe', 'qqq', 'asaa', 'Rice', 'MATR', 'Box', 'sdsds', '111', 22, 23, 1, 'Item 1'),
('wewe', 'qqq', 'asaa', 'Rice', 'MATR', 'Box', 'sdsds', '111', 22, 23, 1, 'Item 1'),
('aaa', 'aaa', 'aaa', 'Rice', 'MATR', 'Box', 'aaa', '111', 222, 333, 111, 'Item 1'),
('asc', 'aaa', 'assa', 'Rice', 'MATR', 'Box', 'aaa', '5', 20, 25, 1, 'Item 1');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_batch`
--

CREATE TABLE `inventory_batch` (
  `line_number` int(20) NOT NULL,
  `batch_code` varchar(20) NOT NULL,
  `manufacture_date` varchar(20) NOT NULL,
  `expire_date` varchar(20) NOT NULL,
  `quantity` float NOT NULL,
  `cost` float NOT NULL,
  `selling_price` float NOT NULL,
  `total_cost` float NOT NULL,
  `add_discount` float NOT NULL,
  `notes` varchar(500) NOT NULL,
  `add_date` varchar(20) NOT NULL,
  `reference_code` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_batch`
--

INSERT INTO `inventory_batch` (`line_number`, `batch_code`, `manufacture_date`, `expire_date`, `quantity`, `cost`, `selling_price`, `total_cost`, `add_discount`, `notes`, `add_date`, `reference_code`) VALUES
(1, '1223', '09-10-2018', '02-10-2018', 12, 2, 3, 1, 2, 'sddd', '04-10-2018', 'qwqww'),
(2, 'sss', '03-10-2018', '03-10-2018', 1, 23, 121, 232, 12, 'sdsdsdd', '11-10-2018', 'ssd'),
(3, '', '01-10-2018', '31-10-2018', 5, 10, 20, 122, 10, 'sdsd', '02-10-2018', 'qqq'),
(4, '', '01-10-2018', '03-10-2018', 5, 100, 200, 0, 10, 'sdsd', '03-10-2018', '111'),
(5, '', '03-10-2018', '03-10-2018', 10, 25, 30, 0, 2, 'sds', '03-10-2018', 'dsd'),
(6, '', '10-10-2018', '31-10-2018', 5, 10, 15, 0, 10, 'gggg', '12-10-2018', 'asas'),
(7, '', '03-10-2018', '12-10-2018', 2, 10, 5000, 0, 2, 'dsds', '12-10-2018', 'qq'),
(8, '', '02-10-2018', '12-10-2018', 12, 50, 60, 0, 10, 'jnjnj', '12-10-2018', 'qqqq'),
(9, '', '02-10-2018', '11-10-2018', 10, 8, 10, 0, 12, 'jnsjd', '12-10-2018', 'vvv'),
(10, '', '02-10-2018', '10-10-2018', 12, 10, 25, 0, 10, 'dwwew', '03-10-2018', 'jnj'),
(11, '', '01-10-2018', '31-10-2018', 10, 5, 20, 194, 3, 'hello', '12-10-2018', ''),
(12, '', '01-10-2018', '31-10-2018', 10, 44, 99, 891, 10, 'wwee', '12-10-2018', 'sds');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_types`
--

CREATE TABLE `inventory_types` (
  `item_code` varchar(100) NOT NULL,
  `item_description` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_types`
--

INSERT INTO `inventory_types` (`item_code`, `item_description`) VALUES
('MATR', 'Raw Materials'),
('PROD', 'Product'),
('SRVC', 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `category_code` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `category_description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`category_code`, `category_name`, `category_description`) VALUES
(1, 'Rice', ''),
(2, 'Milk Powder', ''),
(3, 'Soap', ''),
(4, 'Stationary', ''),
(5, 'Spices', ''),
(6, 'Biscuit', ''),
(7, 'Chocolate', ''),
(8, 'Hair Oil', ''),
(9, 'Sauce', ''),
(10, 'Hand Wash', ''),
(11, 'Laptop', '');

-- --------------------------------------------------------

--
-- Table structure for table `measuring_unit`
--

CREATE TABLE `measuring_unit` (
  `code_id` varchar(50) NOT NULL,
  `unit_description` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measuring_unit`
--

INSERT INTO `measuring_unit` (`code_id`, `unit_description`) VALUES
('Box', 'Box'),
('btl', 'Bottle'),
('Item', 'Item'),
('kg', 'Kilograms'),
('pkts', 'Packets'),
('Tin', 'Tin');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `employee_name` varchar(10) DEFAULT NULL,
  `employee_id` varchar(3) NOT NULL,
  `employee_nic` int(9) DEFAULT NULL,
  `employee_tele` int(10) DEFAULT NULL,
  `employee_passwd` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_details`
--

CREATE TABLE `member_details` (
  `emp_id` int(11) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `nic_no` varchar(10) NOT NULL,
  `add1` varchar(10) NOT NULL,
  `add2` varchar(20) NOT NULL,
  `add3` varchar(20) NOT NULL,
  `tel_no` int(10) NOT NULL,
  `date_started` varchar(20) NOT NULL,
  `department_no` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_details`
--

INSERT INTO `member_details` (`emp_id`, `f_name`, `l_name`, `nic_no`, `add1`, `add2`, `add3`, `tel_no`, `date_started`, `department_no`) VALUES
(2, 'gggg', 'gggg', 'aaa', 'fff', 'ttt', 'nnn', 77777, '10-10-2018', 'item1'),
(3, 'jj', 'hh', '9988888', '89', 'hbbh', 'kooo', 5555555, '04-10-2018', 'item1'),
(4, 'ddd', 'eet', '', 'hjhj', 'kmkm', 'kknk', 898, '03-10-2018', 'HR'),
(5, 'ddd', 'eet', 'dddd', 'hjhj', 'kmkm', 'kknk', 898, '03-10-2018', 'HR'),
(6, '', '', 'dddd', 'hjhj', 'kmkm', 'kknk', 898, '03-10-2018', 'HR'),
(7, 'kmkmkm', 'kmkkm', 'kmkmkm', 'kmkkm', 'kmkmkm', 'kmkmkm', 44444, '17-10-2018', 'HR'),
(8, 'john', 'smith', '23323232', '123', 'galle road', 'colombo 04', 2729729, '02-10-2018', 'Drinks'),
(9, 'john', 'smith', '23323232', '123', 'galle road', 'colombo 04', 2729729, '02-10-2018', 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `stock_location`
--

CREATE TABLE `stock_location` (
  `location_code` varchar(20) DEFAULT NULL,
  `location_name` varchar(20) DEFAULT NULL,
  `location_description` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_location`
--

INSERT INTO `stock_location` (`location_code`, `location_name`, `location_description`) VALUES
('ccc', 'aaa', 'aaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `inventory_batch`
--
ALTER TABLE `inventory_batch`
  ADD PRIMARY KEY (`line_number`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`category_code`);

--
-- Indexes for table `measuring_unit`
--
ALTER TABLE `measuring_unit`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `member_details`
--
ALTER TABLE `member_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_table`
--
ALTER TABLE `department_table`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `inventory_batch`
--
ALTER TABLE `inventory_batch`
  MODIFY `line_number` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `category_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `member_details`
--
ALTER TABLE `member_details`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
