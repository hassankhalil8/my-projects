-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 11:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agent_code` char(50) NOT NULL,
  `agent_name` char(50) DEFAULT NULL,
  `working_area` char(50) DEFAULT NULL,
  `comission` varchar(11) DEFAULT NULL,
  `phone_number` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agent_code`, `agent_name`, `working_area`, `comission`, `phone_number`) VALUES
('A01', 'Andrew', 'London', '2%', '07635971237'),
('A02', 'Helena', 'Manchester', '3%', '07436432564'),
('A03', 'Rickey', 'York', '2.5%', '07436437644'),
('A04', 'Melvin', 'Birmingham', '0.5%', '07871432564'),
('A05', 'Kris', 'Wales', '3%', '07436432564');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_code` int(11) NOT NULL,
  `cust_name` varchar(40) NOT NULL,
  `cust_city` char(35) DEFAULT NULL,
  `working_area` varchar(55) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `opening_amount` float NOT NULL,
  `receive_amount` float NOT NULL,
  `payment_amount` float NOT NULL,
  `outstanding_amount` float NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `agent_code` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_code`, `cust_name`, `cust_city`, `working_area`, `grade`, `opening_amount`, `receive_amount`, `payment_amount`, `outstanding_amount`, `phone_number`, `agent_code`) VALUES
(1, 'Pedro', 'York', 'York', 2, 2000, 1000, 3000, 2000, '07425686433', 'A04'),
(2, 'Curt', 'Wales', 'Wales', 1, 3000, 4000, 1000, 2000, '0742556467641', 'A02'),
(3, 'Angelo', 'Leeds', 'Leeds', 4, 2000, 3000, 1000, 5000, '075345323675', 'A05'),
(4, 'Werner', 'Glasgow', 'Glasgow', 2, 3000, 1000, 2000, 4000, '07135646752', 'A01'),
(5, 'Claire', 'Leeds', 'Leeds', 5, 1000, 3000, 2000, 4000, '071356467525', 'A05');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_num` int(11) NOT NULL,
  `order_amount` int(11) NOT NULL,
  `advance_amount` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `cust_code` int(30) NOT NULL,
  `agent_code` varchar(40) NOT NULL,
  `order_description` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_num`, `order_amount`, `advance_amount`, `order_date`, `cust_code`, `agent_code`, `order_description`) VALUES
(20010, 1000, 500, '0000-00-00', 1, 'A04', 'shoe'),
(20011, 3000, 2000, '0000-00-00', 2, 'A02', 'clothes'),
(20012, 2000, 1000, '0000-00-00', 3, 'A05', 'clothes'),
(20013, 5000, 3000, '0000-00-00', 4, 'A01', 'shoe'),
(20014, 2000, 1200, '0000-00-00', 5, 'A05', 'clothes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agent_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_code`),
  ADD KEY `agent_code` (`agent_code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_num`),
  ADD KEY `agent_code` (`agent_code`),
  ADD KEY `cust_code` (`cust_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`agent_code`) REFERENCES `agents` (`agent_code`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`agent_code`) REFERENCES `agents` (`agent_code`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cust_code`) REFERENCES `customer` (`cust_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
