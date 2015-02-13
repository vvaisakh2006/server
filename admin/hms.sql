-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 13, 2015 at 05:21 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `mid` int(40) DEFAULT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `medicine_name` varchar(50) DEFAULT NULL,
  `tm_1` int(2) DEFAULT '0',
  `tm_2` int(2) NOT NULL DEFAULT '0',
  `tm_3` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`mid`, `dosage`, `medicine_name`, `tm_1`, `tm_2`, `tm_3`) VALUES
(2147483647, '11', 'A', 0, 1, 0),
(2147483647, '22', 'B', 0, 0, 1),
(2147483647, '33', 'C', 0, 1, 1),
(2147483647, '', '', 0, 0, 0),
(2147483647, '', '', 0, 0, 0),
(2147483647, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `gender`, `occupation`, `mobile`, `address`) VALUES
(0, 'MF', 0, '', '', 0, ''),
(11, 'Suresh Gopi', 50, 'M', 'Doctor', 999, 'Sasi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `instructions` varchar(50) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `med_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `diagnosis`, `instructions`, `doc_name`, `med_id`) VALUES
(11, 'SAD', 'ADA', 'Sasi', 2147483647),
(0, '', '', '', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('hello', 'pass');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
