-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 06:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springbusbooking1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `mobile`, `name`, `password`) VALUES
(1, 'admin@gmail.com', '8308166114', 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `seat_number` varchar(255) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_date`, `seat_number`, `route_id`, `user_id`) VALUES
(31, '2025-02-07', '3', 40, 31),
(33, '2025-02-07', '6', 40, 33),
(34, '2025-02-07', '2', 40, 34),
(35, '2025-02-08', '2', 40, 35),
(36, '2025-02-07', '2', 46, 36),
(42, '2025-02-08', '4', 47, 42),
(44, '2025-02-08', '3', 40, 44),
(46, '2025-02-08', '5', 40, 46),
(47, '2025-02-08', '6', 40, 47),
(48, '0006-02-07', '1', 40, 48),
(49, '0001-02-07', '2', 40, 49),
(50, '0001-02-07', '1', 40, 50),
(51, '2025-02-12', '2', 40, 51),
(52, '2025-02-12', '4', 40, 52),
(53, '2025-02-12', '3', 40, 53),
(57, '2025-02-13', '3', 40, 60),
(58, '2025-02-13', '2', 40, 61),
(59, '2025-02-13', '4', 40, 62),
(60, '2025-02-13', '2', 41, 63),
(61, '2025-02-13', '2', 41, 63),
(72, '2025-02-14', '2', 40, 66),
(73, '2025-02-14', '3', 40, 67),
(74, '2025-02-14', '4', 40, 67),
(75, '2025-02-14', '5', 40, 66),
(76, '2025-02-14', '8', 40, 67),
(77, '2025-02-14', '8', 40, 67),
(78, '2025-02-14', '6', 40, 67),
(79, '2025-02-14', '6', 40, 67),
(80, '2025-02-14', '6', 40, 67),
(81, '2025-02-14', '2', 41, 68);

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(11) NOT NULL,
  `bus_name` varchar(255) DEFAULT NULL,
  `bus_number` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `capacity`, `destination`, `source`, `status`) VALUES
(40, 40, 'Karad → Vita → Atpadi', 'Mumbai → Pune → Satara ', 'active'),
(41, 40, 'Shirwal → Satara → Karad → Vita → Atpadi', 'Mumbai → Navi Mumbai → Lonavala → Pune ', 'active'),
(42, 40, 'Pune → Lonavala → Panvel → Mumbai', 'Atpadi → Vita → Karad → Satara → Shirwal', 'active'),
(43, 40, ' Alephata → Malshej Ghat → Murbad → Kalyan → Mumbai', 'Atpadi → Sangola → Pandharpur → Tembhurni → Karmala', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sitting_place` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender`, `mobile`, `name`, `sitting_place`, `password`) VALUES
(31, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(32, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(33, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(34, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(35, 'Male', '8308166119', 'sanket  pawar', '----------=', NULL),
(36, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(37, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(38, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(39, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(40, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(41, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(42, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(43, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(44, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(45, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(46, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(47, 'Male', '9011708203', 'adi deshmukh', '--------', NULL),
(48, 'Male', '8308166114', 'sanket  pawar', '-------', NULL),
(49, 'Male', '8308166114', 'adinath deshmukh', '-------', NULL),
(50, 'Male', '8308166114', 'sanket  pawar', '-------', NULL),
(51, 'Male', '8308166114', 'sanket  pawar', '--------', NULL),
(52, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(53, 'Male', '8308166114', 'sanket  pawar', '--------', NULL),
(54, 'Male', '8308166114', 'sanket  pawar', NULL, '1111'),
(55, 'Male', '8308166114', 'sanket  pawar', NULL, '1111'),
(56, 'Male', '8308166114', 'sanket  pawar', NULL, '1111'),
(57, 'Male', '8308166114', 'sanket  pawar', NULL, '1111'),
(58, 'Male', '8308166114', 'sanket  pawar', NULL, '1111'),
(59, 'Male', '8308166114', 'sanket  pawar', NULL, '4334'),
(60, 'Male', '8308166114', 'sanket  pawar', NULL, '4334'),
(61, 'Male', '8308166114', 'sanket  pawar', NULL, 'ytyt'),
(62, 'Female', '9011708203', 'adi deshmukh', '--------', NULL),
(63, 'Male', '8308166114', 'sanket  pawar', NULL, 'gfgf'),
(64, 'Male', '8308166114', 'sanket  pawar', '--------', NULL),
(65, 'Male', '8308166114', 'sanket  pawar', '----------=', NULL),
(66, 'Male', '8308166114', 'sanket  pawar', NULL, '123'),
(67, 'Male', '8308166114', 'sanket  pawar', NULL, 'sanket'),
(68, 'Male', '8308166114', 'sanket  pawar', NULL, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp9llkfdw32yg750n7eg2n01rp` (`route_id`),
  ADD KEY `FKeyog2oic85xg7hsu2je2lx3s6` (`user_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKryb7cf7s26rht8lyp8ry0ek0g` (`route_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKnuscjm6x127hkb15kcb8n56wo` (`booking_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `FKeyog2oic85xg7hsu2je2lx3s6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKp9llkfdw32yg750n7eg2n01rp` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `FKryb7cf7s26rht8lyp8ry0ek0g` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FKc52o2b1jkxttngufqp3t7jr3h` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
