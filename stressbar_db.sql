-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2026 at 07:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stressbar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `stress_results`
--

CREATE TABLE `stress_results` (
  `id` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `life_stage` varchar(20) DEFAULT NULL,
  `q1` int(11) DEFAULT NULL,
  `q2` int(11) DEFAULT NULL,
  `q3` int(11) DEFAULT NULL,
  `q4` int(11) DEFAULT NULL,
  `q5` int(11) DEFAULT NULL,
  `q6` int(11) DEFAULT NULL,
  `stress_sources` text DEFAULT NULL,
  `coping` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `stress_level` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stress_results`
--

INSERT INTO `stress_results` (`id`, `name`, `age`, `gender`, `email`, `life_stage`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `stress_sources`, `coping`, `feedback`, `score`, `stress_level`, `created_at`) VALUES
(1, 'Sharvi Bhavsar', 19, 'Female', 'sharvibhavsar12@gmail.com', 'College', 2, 0, 2, 0, 2, 2, 'Studies,Health,Relationships', 'Music,Exercise,Meditation,Sleep', '', 8, 'Medium', '2026-02-14 13:03:41'),
(2, 'Ankit', 19, 'Male', 'ankitnandoliya32@gmail.com', 'College', 3, 2, 1, 1, 2, 1, 'Studies,Relationships', 'Friends,Gaming', '', 10, 'Medium', '2026-02-14 13:15:08'),
(3, 'Krishna Patel', 20, 'Female', 'krishna.276.patel@gmail.com', 'College', 1, 2, 1, 1, 2, 1, 'Studies,Family', 'Music,Sleep', '', 8, 'Medium', '2026-02-16 14:36:18'),
(4, 'Sharvi Bhavsar', 20, 'Female', 'sharvibhavsar12@gmail.com', 'Working', 1, 1, 1, 1, 2, 2, 'Family,Money,Health,Relationships', 'Friends,Meditation', '', 8, 'Medium', '2026-02-17 05:49:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stress_results`
--
ALTER TABLE `stress_results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stress_results`
--
ALTER TABLE `stress_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
