-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2019 at 05:12 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

DROP TABLE IF EXISTS `tblexpense`;
CREATE TABLE IF NOT EXISTS `tblexpense` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(2, 2, '2019-05-15', 'Vegitables', '520', '2019-05-15 10:06:19'),
(3, 2, '2019-05-15', 'Household Items', '5200', '2019-05-15 10:07:08'),
(4, 2, '2019-05-14', 'Milk', '83', '2019-05-15 10:07:27'),
(5, 2, '2019-05-14', 'Bed Sheets', '1120', '2019-05-15 10:07:49'),
(6, 2, '2019-05-12', 'Fruits', '890', '2019-05-15 10:08:09'),
(7, 2, '2019-05-10', 'Household Items', '5600', '2019-05-15 10:08:26'),
(8, 2, '2019-04-24', 'Milk', '102', '2019-05-15 10:08:44'),
(9, 2, '2019-05-08', 'Bed Sheets', '890', '2019-05-15 10:08:57'),
(10, 2, '2018-12-19', 'Household Items', '1120', '2019-05-15 10:09:34'),
(11, 2, '2018-12-19', 'Fruits', '560', '2019-05-15 10:09:52'),
(13, 2, '2018-12-20', 'Tour of Manali', '30000', '2019-05-15 10:15:47'),
(14, 2, '2019-05-14', 'Milk', '360', '2019-05-15 10:21:31'),
(15, 3, '2019-05-15', 'Milk', '123', '2019-05-15 10:29:56'),
(16, 3, '2019-05-15', 'Household Items', '360', '2019-05-15 10:30:06'),
(17, 3, '2019-05-15', 'Bed Sheets', '3000', '2019-05-15 10:30:18'),
(18, 3, '2019-05-07', 'Milk', '123', '2019-05-15 10:30:28'),
(19, 3, '2019-05-14', 'Household Items', '3600', '2019-05-15 10:30:38'),
(20, 2, '2019-05-14', 'Electric Board Extension', '300', '2019-05-15 15:11:33'),
(21, 2, '2019-04-11', 'Milk', '123', '2019-05-15 17:50:24'),
(22, 2, '2019-04-10', 'Household Items', '520', '2019-05-15 17:50:37'),
(23, 2, '2019-05-16', 'Household Items', '360', '2019-05-16 07:29:54'),
(25, 8, '2019-05-17', 'Milk', '3600', '2019-05-17 05:35:13'),
(26, 8, '2019-05-16', 'Bed Sheets', '1025', '2019-05-17 05:35:42'),
(27, 1, '2019-05-17', 'Computer Mouse', '500', '2019-05-18 05:19:05'),
(30, 1, '2019-05-18', 'Milk + Bread', '80', '2019-05-18 05:22:01'),
(31, 10, '2019-05-16', 'Computer Mouse', '500', '2019-05-18 05:35:45'),
(32, 10, '2019-05-17', 'Milk+Bread', '80', '2019-05-18 05:36:06'),
(33, 10, '2019-05-18', 'Room Rent', '10000', '2019-05-18 05:36:26'),
(34, 11, '2019-12-06', 'Book', '550', '2019-12-06 05:29:15'),
(35, 11, '2019-12-05', 'tea ', '175', '2019-12-06 05:43:17'),
(36, 1, '2019-12-12', 'Book', '750', '2019-12-12 18:40:02'),
(37, 12, '2019-12-10', 'Book', '350', '2019-12-22 17:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblincome`
--

DROP TABLE IF EXISTS `tblincome`;
CREATE TABLE IF NOT EXISTS `tblincome` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `IncomeDate` date DEFAULT NULL,
  `IncomeFrom` varchar(200) DEFAULT NULL,
  `Income` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblincome`
--

INSERT INTO `tblincome` (`ID`, `UserId`, `IncomeDate`, `IncomeFrom`, `Income`, `NoteDate`) VALUES
(1, 1, '2022-02-03', 'Tea Sell', '750', '2019-12-22 13:16:52'),
(100, 1, '2019-02-02', 'Sels', '1000', '2019-12-22 13:21:24'),
(102, 1, '2019-10-10', 'car drive', '12000', '2019-12-22 13:22:46'),
(105, 1, '2020-02-02', 'Book sell', '5000', '2019-12-22 13:33:19'),
(105, 1, '2019-10-10', 'tea ', '1600', '2019-12-22 13:34:42'),
(105, 1, '2019-12-22', 'Book Sell', '5000', '2019-12-22 14:00:48'),
(100, 1, '2019-12-21', 'Book', '300', '2019-12-22 14:18:56'),
(1, 12, '2019-12-22', 'Book sell', '5000', '2019-12-22 17:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'MD ARIFUL ISLAM', 'arif@gmail.com', 1950839247, '821f3157e1a3456bfe1a000a1adf0862', '2019-05-15 08:52:27'),
(2, 'MD Hasan', 'hasan@gmail.com', 8989898897, '821f3157e1a3456bfe1a000a1adf0862', '2019-05-15 08:52:27'),
(3, 'Khusi Akter', 'khusi@gmail.com', 1835869522, '821f3157e1a3456bfe1a000a1adf0862', '2019-05-15 08:52:27'),
(10, 'Test User demo', 'testuser@gmail.com', 987654321, '821f3157e1a3456bfe1a000a1adf0862', '2019-05-18 05:34:53'),
(11, 'MD ARIFUL ISLAM', 'Rotnokothok@gmail.com', 1950839247, '821f3157e1a3456bfe1a000a1adf0862', '2019-12-06 05:16:22'),
(12, 'habib', 'habib@gmail.com', 1950839247, '827ccb0eea8a706c4c34a16891f84e7b', '2019-12-22 17:08:40');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
