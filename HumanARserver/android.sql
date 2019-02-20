-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2018 at 05:27 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `android`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(20) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `activity_date` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `activity_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `activity_name`, `activity_date`, `user_id`, `activity_id`) VALUES
(41, 'Standing', '08/14/2018', '52f7df5f8cd49320', 5),
(42, 'Standing', '08/14/2018', '52f7df5f8cd49320', 6),
(43, 'Standing', '08/14/2018', '52f7df5f8cd49320', 7),
(44, 'Standing', '08/14/2018', '52f7df5f8cd49320', 8),
(45, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 9),
(46, 'Walking', '08/14/2018', '52f7df5f8cd49320', 10),
(47, 'Standing', '08/14/2018', '83f52c743971409e', 1),
(48, 'Standing', '08/14/2018', '83f52c743971409e', 2),
(49, 'Standing', '08/14/2018', '83f52c743971409e', 3),
(50, 'Standing', '08/14/2018', '83f52c743971409e', 4),
(51, 'Standing', '08/14/2018', '83f52c743971409e', 5),
(52, 'Walking', '08/14/2018', '83f52c743971409e', 6),
(53, 'Walking', '08/14/2018', '83f52c743971409e', 7),
(54, 'Walking', '08/14/2018', '83f52c743971409e', 8),
(55, 'Walking', '08/14/2018', '83f52c743971409e', 9),
(56, 'Standing', '08/14/2018', '83f52c743971409e', 10),
(57, 'Standing', '08/14/2018', '83f52c743971409e', 11),
(58, 'Standing', '08/14/2018', '52f7df5f8cd49320', 11),
(59, 'Standing', '08/14/2018', '52f7df5f8cd49320', 12),
(60, 'Walking', '08/14/2018', '52f7df5f8cd49320', 13),
(61, 'Walking', '08/14/2018', '52f7df5f8cd49320', 14),
(62, 'Walking', '08/14/2018', '52f7df5f8cd49320', 15),
(63, 'Standing', '08/14/2018', '4cfa53c4d9e5c102', 1),
(64, 'Standing', '08/14/2018', '4cfa53c4d9e5c102', 2),
(65, 'Walking', '08/14/2018', '4cfa53c4d9e5c102', 3),
(66, 'Walking', '08/14/2018', '4cfa53c4d9e5c102', 4),
(67, 'Standing', '08/14/2018', '4cfa53c4d9e5c102', 1),
(68, 'Standing', '08/14/2018', '4cfa53c4d9e5c102', 2),
(69, 'Walking', '08/14/2018', '4cfa53c4d9e5c102', 3),
(70, 'Walking', '08/14/2018', '4cfa53c4d9e5c102', 4),
(71, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 16),
(72, 'Walking', '08/14/2018', '52f7df5f8cd49320', 17),
(73, 'Walking', '08/14/2018', '52f7df5f8cd49320', 18),
(74, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 16),
(75, 'Walking', '08/14/2018', '52f7df5f8cd49320', 17),
(76, 'Walking', '08/14/2018', '52f7df5f8cd49320', 18),
(77, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 16),
(78, 'Walking', '08/14/2018', '52f7df5f8cd49320', 17),
(79, 'Walking', '08/14/2018', '52f7df5f8cd49320', 18),
(80, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 16),
(81, 'Walking', '08/14/2018', '52f7df5f8cd49320', 17),
(82, 'Walking', '08/14/2018', '52f7df5f8cd49320', 18),
(83, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 16),
(84, 'Walking', '08/14/2018', '52f7df5f8cd49320', 17),
(85, 'Walking', '08/14/2018', '52f7df5f8cd49320', 18),
(86, 'Standing', '08/14/2018', '52f7df5f8cd49320', 19),
(87, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 16),
(88, 'Walking', '08/14/2018', '52f7df5f8cd49320', 17),
(89, 'Walking', '08/14/2018', '52f7df5f8cd49320', 18),
(90, 'Standing', '08/14/2018', '52f7df5f8cd49320', 19),
(91, 'Sitting', '08/14/2018', '52f7df5f8cd49320', 20),
(92, 'Standing', '08/14/2018', '52f7df5f8cd49320', 21),
(93, 'Walking', '08/14/2018', '52f7df5f8cd49320', 22),
(94, 'Walking', '08/14/2018', '419dd499ed2b010f', 1),
(95, 'Sitting', '08/14/2018', '419dd499ed2b010f', 2),
(96, 'Sitting', '08/14/2018', '419dd499ed2b010f', 3),
(97, 'Walking', '08/14/2018', '419dd499ed2b010f', 4),
(98, 'Sitting', '08/14/2018', '419dd499ed2b010f', 5),
(99, 'Walking', '08/14/2018', '419dd499ed2b010f', 6),
(100, 'Walking', '08/14/2018', '419dd499ed2b010f', 7),
(101, 'Walking', '08/14/2018', '419dd499ed2b010f', 8),
(102, 'Walking', '08/14/2018', '419dd499ed2b010f', 9),
(103, 'Walking', '08/14/2018', '419dd499ed2b010f', 10),
(104, 'Walking', '08/14/2018', '419dd499ed2b010f', 11),
(105, 'Sitting', '08/15/2018', '52f7df5f8cd49320', 23),
(106, 'Standing', '08/15/2018', '52f7df5f8cd49320', 24),
(107, 'Walking', '08/15/2018', '52f7df5f8cd49320', 25),
(108, 'Sitting', '08/15/2018', '52f7df5f8cd49320', 26),
(109, 'Standing', '08/16/2018', '52f7df5f8cd49320', 27),
(110, 'Standing', '08/16/2018', '52f7df5f8cd49320', 28),
(111, 'Standing', '08/16/2018', '52f7df5f8cd49320', 29),
(112, 'Sitting', '08/16/2018', '52f7df5f8cd49320', 30),
(113, 'Walking', '08/16/2018', '52f7df5f8cd49320', 31),
(114, 'Walking', '08/16/2018', '52f7df5f8cd49320', 32),
(115, 'Walking', '08/16/2018', '52f7df5f8cd49320', 33),
(116, 'Sitting', '08/16/2018', '52f7df5f8cd49320', 34),
(117, 'Standing', '08/16/2018', '52f7df5f8cd49320', 35),
(118, 'Walking', '08/16/2018', '52f7df5f8cd49320', 36),
(119, 'Walking', '08/16/2018', '52f7df5f8cd49320', 37),
(120, 'Standing', '08/16/2018', '52f7df5f8cd49320', 38),
(121, 'Standing', '08/16/2018', '52f7df5f8cd49320', 39),
(122, 'Standing', '08/16/2018', '52f7df5f8cd49320', 40),
(123, 'Standing', '08/16/2018', '52f7df5f8cd49320', 41),
(124, 'Standing', '08/16/2018', '52f7df5f8cd49320', 42),
(125, 'Standing', '08/16/2018', '52f7df5f8cd49320', 43),
(126, 'Standing', '08/16/2018', '52f7df5f8cd49320', 44),
(127, 'Standing', '08/16/2018', '52f7df5f8cd49320', 45),
(128, 'Standing', '08/16/2018', '52f7df5f8cd49320', 46),
(129, 'Standing', '08/16/2018', '52f7df5f8cd49320', 47),
(130, 'Standing', '08/16/2018', '52f7df5f8cd49320', 48),
(131, 'Standing', '08/16/2018', '52f7df5f8cd49320', 49),
(132, 'Standing', '08/16/2018', '52f7df5f8cd49320', 50),
(133, 'Standing', '08/16/2018', '52f7df5f8cd49320', 51),
(134, 'Standing', '08/16/2018', '52f7df5f8cd49320', 52),
(135, 'Standing', '08/16/2018', '52f7df5f8cd49320', 53),
(136, 'Standing', '08/16/2018', '52f7df5f8cd49320', 54);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
