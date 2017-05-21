-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2017 at 02:09 PM
-- Server version: 5.7.18-0ubuntu0.17.04.1
-- PHP Version: 7.0.18-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `connected`
--

CREATE TABLE `connected` (
  `id` int(11) NOT NULL,
  `userId` int(9) NOT NULL,
  `friendId` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connected`
--

INSERT INTO `connected` (`id`, `userId`, `friendId`) VALUES
(52, 1, 2),
(53, 2, 1),
(54, 2, 3),
(55, 3, 2),
(56, 3, 4),
(57, 3, 5),
(58, 3, 7),
(59, 4, 3),
(60, 5, 3),
(61, 5, 6),
(62, 5, 11),
(63, 5, 10),
(64, 5, 7),
(65, 6, 5),
(66, 7, 3),
(67, 7, 5),
(68, 7, 20),
(69, 7, 12),
(70, 7, 8),
(71, 8, 7),
(72, 9, 12),
(73, 10, 5),
(74, 10, 11),
(75, 11, 5),
(76, 11, 10),
(77, 11, 19),
(78, 11, 20),
(79, 12, 7),
(80, 12, 9),
(81, 12, 13),
(82, 12, 20),
(83, 13, 12),
(84, 13, 14),
(85, 13, 20),
(86, 14, 13),
(87, 14, 15),
(88, 15, 14),
(89, 16, 18),
(90, 16, 20),
(91, 17, 18),
(92, 17, 20),
(93, 18, 17),
(94, 19, 11),
(95, 19, 20),
(96, 20, 7),
(97, 20, 11),
(98, 20, 12),
(99, 20, 13),
(100, 20, 16),
(101, 20, 17),
(102, 20, 19);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(1) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `genderId` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `surname`, `age`, `genderId`) VALUES
(1, 'Paul', 'Crowe', 28, 1),
(2, 'Rob', 'Fitz', 23, 1),
(3, 'Ben', 'Carolan', 20, 1),
(4, 'Victor', 'Victor', 28, 1),
(5, 'Peter', 'Mac', 29, 1),
(6, 'John', 'Barry', 18, 1),
(7, 'Sarah', 'Lane', 30, 2),
(8, 'Susan', 'Downe', 28, 2),
(9, 'Jack', 'Stam', 28, 1),
(10, 'Amy', 'Lane', 24, 2),
(11, 'Sandra', 'Phelan', 28, 2),
(12, 'Laura', 'Murphy', 33, 2),
(13, 'Lisa', 'Daly', 28, 2),
(14, 'Mark', 'Johnson', 28, 1),
(15, 'Seamus', 'Crowe', 24, 1),
(16, 'Daren', 'Slater', 28, 1),
(17, 'Dara', 'Zoltan', 48, 1),
(18, 'Marie', 'D', 28, 2),
(19, 'Catriona', 'Long', 28, 2),
(20, 'Katy', 'Couch', 28, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connected`
--
ALTER TABLE `connected`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connected`
--
ALTER TABLE `connected`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
