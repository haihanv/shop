-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2018 at 10:06 AM
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
-- Table structure for table `oc_customer_states`
--

CREATE TABLE IF NOT EXISTS `oc_customer_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `state_1` int(11) NOT NULL DEFAULT '1',
  `state_2` int(11) NOT NULL DEFAULT '0',
  `state_3` int(11) NOT NULL DEFAULT '0',
  `state_4` int(11) NOT NULL DEFAULT '0',
  `admin_message` varchar(255) NOT NULL DEFAULT 'none',
  `time` varchar(255) NOT NULL DEFAULT 'none',
  `current_step` int(11) NOT NULL DEFAULT '1',
  `order_status` int(11) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `order_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_customer_states`
--

INSERT INTO `oc_customer_states` (`id`, `customer_id`, `state_1`, `state_2`, `state_3`, `state_4`, `admin_message`, `time`, `current_step`, `order_status`) VALUES
(4, 27, 1, 1, 5, 0, 'default', '10.am - 11.am', 3, 0),
(5, 28, 1, 0, 0, 0, 'default', 'default', 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
