-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2019 at 03:48 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sphatlodbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `sphatlo`
--

CREATE TABLE `sphatlo` (
  `sphatloId` int(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sphatlo`
--

INSERT INTO `sphatlo` (`sphatloId`, `name`, `description`, `price`) VALUES
(5, 'Zama Zama', 'Chips, Archar, Polony', '16'),
(6, 'Zama Impilo', 'Chips, Archar, Polony, Special', '16'),
(7, 'Malwela', 'Chips, Archar, Polony, Special, Cheese', '18'),
(8, 'Monate Ntwaa', 'Chips, Archar, Polony, Special, Cheese, Vienna', '20'),
(9, 'Skhambane', 'Chips, Archar, Polony, Special, Cheese, Russian', '24'),
(10, 'Woza Name', 'Chips, Archar, Polony, Special, Cheese, Russian, Lettice', '25'),
(11, 'King Monate', 'Chips, Archar, Polony, Special, Cheese, Russian, Burger, Lettice', '28'),
(12, 'King Bozza', 'Chips, Archar, Polony, Special, Cheese, Russian, Burger, Lettice, Boiled Eggs', '32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sphatlo`
--
ALTER TABLE `sphatlo`
  ADD PRIMARY KEY (`sphatloId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sphatlo`
--
ALTER TABLE `sphatlo`
  MODIFY `sphatloId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
