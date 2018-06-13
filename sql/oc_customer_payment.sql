-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2018 at 10:05 AM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_payment`
--

CREATE TABLE IF NOT EXISTS `oc_customer_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT 'none',
  `bank_name` varchar(255) NOT NULL DEFAULT 'none',
  `security_code` int(11) NOT NULL DEFAULT '0',
  `card_no` varchar(255) NOT NULL DEFAULT 'none',
  `expire_date` varchar(255) NOT NULL DEFAULT 'none',
  `security_no` int(11) NOT NULL DEFAULT '0',
  `phone_no` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) NOT NULL DEFAULT 'none',
  `last_name` varchar(255) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_customer_payment`
--

INSERT INTO `oc_customer_payment` (`id`, `customer_id`, `payment_method`, `link`, `bank_name`, `security_code`, `card_no`, `expire_date`, `security_no`, `phone_no`, `first_name`, `last_name`) VALUES
(4, 27, 1, 'dadsadsadsdads', 'bank4', 1234, 'none', 'none', 0, 0, 'none', 'none'),
(5, 28, 0, 'none', 'none', 0, 'none', 'none', 0, 0, 'none', 'none');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
