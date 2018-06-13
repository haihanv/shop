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
-- Table structure for table `oc_customer_images`
--

CREATE TABLE IF NOT EXISTS `oc_customer_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `image_1` varchar(255) NOT NULL DEFAULT 'default.png',
  `image_2` varchar(255) NOT NULL DEFAULT 'default.png',
  `image_3` varchar(255) NOT NULL DEFAULT 'default.png',
  `image_4` varchar(255) NOT NULL DEFAULT 'default.png',
  `image_5` varchar(255) NOT NULL DEFAULT 'default.png',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_customer_images`
--

INSERT INTO `oc_customer_images` (`image_id`, `customer_id`, `image_1`, `image_2`, `image_3`, `image_4`, `image_5`) VALUES
(4, 27, 'http://10.184.140.222/shop/image/custome/customers/27_image_1.png', 'http://10.184.140.222/shop/image/custome/customers/27_image_2.png', 'http://10.184.140.222/shop/image/custome/customers/27_image_3.png', 'http://10.184.140.222/shop/image/custome/customers/27_image_4.png', 'http://10.184.140.222/shop/image/custome/customers/27_image_5.png'),
(5, 28, 'default.png', 'default.png', 'default.png', 'default.png', 'default.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
