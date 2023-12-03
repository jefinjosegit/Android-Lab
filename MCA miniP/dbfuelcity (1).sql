-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2022 at 07:17 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbfuelcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblallocation`
--

CREATE TABLE IF NOT EXISTS `tblallocation` (
  `allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `dbId` int(11) NOT NULL,
  PRIMARY KEY (`allocation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblallocation`
--

INSERT INTO `tblallocation` (`allocation_id`, `request_id`, `dbId`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE IF NOT EXISTS `tblcustomer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `idproof` varchar(200) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`customer_id`, `customer_name`, `address`, `place`, `pin`, `email`, `contact`, `idproof`) VALUES
(1, 'Thomas', 'Thuruthil', 'Aluva', '685947', 'thomas@gmail.com', '6985471023', ''),
(2, 'faru', 'puthiyaveetil', 'koprakalam', '680687', 'faru@gmail.com', '9072841842', ''),
(3, 'Thanvi', 'jhb', 'jh', '693251', 'thanvi@gmail.com', '9630258741', ''),
(4, 'Stuart', 'Aluva', 'Aluva', '689510', 'stuart@gmail.com', '9587461023', '/media/apoose.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbldboy`
--

CREATE TABLE IF NOT EXISTS `tbldboy` (
  `dbId` int(11) NOT NULL AUTO_INCREMENT,
  `dbName` varchar(50) NOT NULL,
  `dbAddress` varchar(100) NOT NULL,
  `dbEmail` varchar(50) NOT NULL,
  `dbContact` varchar(50) NOT NULL,
  `dbProof` varchar(500) NOT NULL,
  `pumpId` int(11) NOT NULL,
  PRIMARY KEY (`dbId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbldboy`
--

INSERT INTO `tbldboy` (`dbId`, `dbName`, `dbAddress`, `dbEmail`, `dbContact`, `dbProof`, `pumpId`) VALUES
(1, 'Mithun', 'Aluva', 'mithun@gmail.com', '9856102347', '/media/Screenshot%20(4).png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblfuel`
--

CREATE TABLE IF NOT EXISTS `tblfuel` (
  `fuel_id` int(11) NOT NULL AUTO_INCREMENT,
  `fuel` varchar(50) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`fuel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblfuel`
--

INSERT INTO `tblfuel` (`fuel_id`, `fuel`, `rate`) VALUES
(1, 'Petrol', '105.45'),
(2, 'diesel', '94.60');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE IF NOT EXISTS `tbllogin` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`login_id`, `uname`, `pwd`, `utype`, `status`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '1'),
(2, 'thomas@gmail.com', 'thomas', 'Customer', '1'),
(3, 'krishnafuels@gmail.com', 'krishna', 'pump', '1'),
(4, 'faru@gmail.com', '11117777', 'Customer', '1'),
(5, 'hp@gmail.com', 'hp', 'pump', '1'),
(6, 'thanvi@gmail.com', 'thanvi', 'Customer', '1'),
(7, 'hpfuels@gmail.com', 'HPfules@123', 'pump', '1'),
(8, 'stuart@gmail.com', 'Stuart@123', 'Customer', '1'),
(9, 'mithun@gmail.com', 'mithun', 'dboy', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpump`
--

CREATE TABLE IF NOT EXISTS `tblpump` (
  `pump_id` int(11) NOT NULL AUTO_INCREMENT,
  `pump_name` varchar(50) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  PRIMARY KEY (`pump_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblpump`
--

INSERT INTO `tblpump` (`pump_id`, `pump_name`, `license_number`, `address`, `place`, `pin`, `email`, `contact`, `latitude`, `longitude`) VALUES
(1, 'Krishna Fuels', 'ijn58475', 'Alangad', 'Alangad', '683511', 'krishnafuels@gmail.com', '8596471023', '10.12889', '76.30195'),
(2, 'HP Koratty', 'jkhb5488', 'kjnjh', 'Koratty', '658947', 'hp@gmail.com', '8596471023', '10.26891', '76.34760'),
(3, 'HP Fuels', 'j527', 'Aluva', 'Aluva', '689510', 'hpfuels@gmail.com', '9856320147', '10.10783', '76.35971');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest`
--

CREATE TABLE IF NOT EXISTS `tblrequest` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `fuel_id` int(11) NOT NULL,
  `rDate` date NOT NULL,
  `request` varchar(100) DEFAULT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `pump_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`request_id`, `customer_id`, `fuel_id`, `rDate`, `request`, `quantity`, `latitude`, `longitude`, `pump_id`, `status`) VALUES
(1, 4, 1, '0000-00-00', 'Urgently needed', '1', '10.09922', '76.34261', 3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock`
--

CREATE TABLE IF NOT EXISTS `tblstock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `pump_id` int(11) NOT NULL,
  `fuel_id` int(11) NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblstock`
--

INSERT INTO `tblstock` (`stock_id`, `pump_id`, `fuel_id`, `quantity`) VALUES
(1, 1, 1, '780000'),
(2, 2, 1, '485000'),
(3, 3, 1, '7850000');
