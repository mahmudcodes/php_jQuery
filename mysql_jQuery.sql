-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2021 at 08:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysqljquery`
--
CREATE DATABASE IF NOT EXISTS `mysqljquery` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mysqljquery`;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `batch_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `batch_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_name`, `batch_id`) VALUES
(1, 'Round 46', '46'),
(2, 'Round 45', '45'),
(3, 'Round 43', '43'),
(4, 'Round 44', '44');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `batch_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `batch_id`, `course_id`) VALUES
(1, 'DDD', '43', 'ddd'),
(2, 'GAVE', '44', 'gave'),
(3, 'NT', '46', 'nt'),
(4, 'WDPF', '45', 'wdpf'),
(5, 'PWAD', '43', 'pwad'),
(6, 'ESAD', '43', 'esad');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `div_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dis_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dis_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `div_id`, `dis_name`, `dis_id`) VALUES
(1, 'dk', 'Gazipur', 'gazi'),
(2, 'dk', 'Manikganj', 'manik'),
(3, 'rj', 'Natore', 'nat'),
(4, 'rj', 'Bogura', 'bog'),
(5, 'ku', 'Bagerhat', 'bag'),
(6, 'ku', 'Chuadanga', 'chu');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `div_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `div_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `div_name`, `div_id`) VALUES
(1, 'Dhaka', 'dk'),
(2, 'Khulna', 'ku'),
(3, 'Rajshahi ', 'rj');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `round` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `batch_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_name`, `course`, `round`, `batch_id`, `course_id`) VALUES
(1, 'Mahmud Hasan', 'DDD', 'Round 43', '43', 'ddd'),
(2, 'Eliyas Akondo', 'GAVE', 'Round 44', '44', 'gave'),
(3, 'Mehrab Hossain', 'DDD', 'Round 43', '43', 'ddd'),
(4, 'Abdul Alim', 'ESAD', 'Round 43', '43', 'esad');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `town_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `town_info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `div_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dis_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `town_name`, `town_info`, `div_id`, `dis_id`) VALUES
(1, 'Kaliakair Upazila', 'Kaliakair (Bengali: কালিয়াকৈর) is an upazila (sub-district) of the Gazipur District in central Bangladesh, part of the Dhaka Division.', 'dk', 'gazi'),
(2, 'Singair Upazila', 'Singair (Bengali: সিঙ্গাইর) is an upazila of Manikganj District in the Division of Dhaka, Bangladesh.', 'dk', 'manik'),
(3, 'Sherpur', 'Sherpur Upazila (Bengali: শেরপুর উপজেলা) is an upazila of Bogra District in the Division of Rajshahi, Bangladesh.', 'rj', 'nat'),
(4, 'Dhunat', 'Dhunat Upazila (Bengali: ধুনট উপজেলা) is an upazila of Bogra District in the Division of Rajshahi, Bangladesh.', 'rj', 'bog'),
(5, 'Alamdanga Upazila', 'Alamdanga (Bengali: আলমডাঙ্গা) is an upazila of Chuadanga District in the Division of Khulna, Bangladesh.', 'ku', 'chu'),
(6, 'Bagerhat Sadar Upazila', 'Bagerhat Sadar (Bengali: বাগেরহাট সদর) is an upazila of Bagerhat District in the Division of Khulna, Bangladesh.', 'ku', 'bag');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
