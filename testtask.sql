-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 09:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `bed_space`
--

CREATE TABLE `bed_space` (
  `bed_space_id` int(11) NOT NULL,
  `propertyId` int(11) NOT NULL,
  `king` int(11) NOT NULL,
  `queen` int(11) NOT NULL,
  `double_s` int(11) NOT NULL,
  `single` int(11) NOT NULL,
  `sofa` int(11) NOT NULL,
  `bunk` int(11) NOT NULL,
  `mates` int(11) NOT NULL,
  `couch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_space`
--

INSERT INTO `bed_space` (`bed_space_id`, `propertyId`, `king`, `queen`, `double_s`, `single`, `sofa`, `bunk`, `mates`, `couch`) VALUES
(1, 7, 2, 0, 0, 0, 0, 0, 2, 0),
(3, 14, 1, 0, 2, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `propertyId` int(11) NOT NULL,
  `propertyType` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `identificator_nab` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `apt` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `starting_date` varchar(50) NOT NULL,
  `owner_stays` varchar(50) NOT NULL,
  `compulsory_inclusions` longtext NOT NULL,
  `guests` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`propertyId`, `propertyType`, `owner`, `identificator_nab`, `country`, `street`, `apt`, `city`, `state`, `postcode`, `starting_date`, `owner_stays`, `compulsory_inclusions`, `guests`, `bedrooms`, `bathrooms`, `created_at`, `updated_at`) VALUES
(7, 'House', 'Owner3', '123', 'USA', 'Shahkot', '123', 'Samundri', 'KPK', '39610', '2020-09-09', 'on', 'fire,first,vacuum,mop', 2, 12, 2, '2020-09-29 07:34:41.000000', '2020-09-29 20:55:05.000000'),
(14, 'Town House', 'Owner3', '12', 'USA', 'Shahkot', '', 'Shahkot', 'Punjab', '39610', '2020-09-24', 'on', 'fire,smoke,mop', 2, 2, 1, '2020-09-29 20:58:17.000000', '2020-09-29 20:58:58.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bed_space`
--
ALTER TABLE `bed_space`
  ADD PRIMARY KEY (`bed_space_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`propertyId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bed_space`
--
ALTER TABLE `bed_space`
  MODIFY `bed_space_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `propertyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
