-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 12:19 PM
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
-- Database: `s`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id1` int(1) NOT NULL,
  `agent_name` char(50) DEFAULT NULL,
  `comisson` varchar(11) DEFAULT NULL,
  `phone_number` char(50) DEFAULT NULL,
  `working_area` char(50) DEFAULT NULL,
  `cust_city` char(35) DEFAULT NULL,
  `cust_name` varchar(40) NOT NULL,
  `c_working_area` varchar(55) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `opening_amount` float NOT NULL,
  `outstanding_amount` float NOT NULL,
  `payment_amount` float NOT NULL,
  `c_phone_number` varchar(11) NOT NULL,
  `receive_amount` float NOT NULL,
  `advance_amount` int(11) NOT NULL,
  `order_amount` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_description` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id1`, `agent_name`, `comisson`, `phone_number`, `working_area`, `cust_city`, `cust_name`, `c_working_area`, `grade`, `opening_amount`, `outstanding_amount`, `payment_amount`, `c_phone_number`, `receive_amount`, `advance_amount`, `order_amount`, `order_date`, `order_description`) VALUES
(1, 'Andrew', '2%', '07635971237', 'London', 'York', 'Pedro', 'York', 2, 2000, 2000, 3000, '07425686433', 1000, 500, 1000, '0000-00-00', 'shoe'),
(2, 'Helena', '3%', '07436432564', 'Manchester', 'Wales', 'Curt', 'Wales', 1, 3000, 2000, 1000, '07425564676', 4000, 2000, 3000, '0000-00-00', 'clothes'),
(3, 'Rickey', '2.5%', '07436437644', 'York', 'Leads', 'Angelo', 'Leads', 4, 2000, 5000, 1000, '07534532367', 3000, 1000, 2000, '0000-00-00', 'clothes'),
(4, 'Melvin', '0.5%', '07871432564', 'Birmingham', 'Glasgow', 'Werner', 'Glasgow', 2, 3000, 4000, 2000, '07135646725', 1000, 3000, 5000, '0000-00-00', 'shoe'),
(5, 'Kris', '3%', '07436432564', 'Wales', 'Leeds', 'Claire', 'Leeds', 5, 1000, 4000, 2000, '07135646752', 3000, 1200, 2000, '0000-00-00', 'clothes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id1` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
