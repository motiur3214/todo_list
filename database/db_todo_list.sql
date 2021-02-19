-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 01:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_todo_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archived_content`
--

CREATE TABLE `tbl_archived_content` (
  `id` int(11) NOT NULL,
  `old_id` int(11) NOT NULL,
  `todo_text` varchar(255) NOT NULL,
  `completed_flag` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo_content`
--

CREATE TABLE `tbl_todo_content` (
  `id` int(11) NOT NULL,
  `todo_text` varchar(255) NOT NULL,
  `completed_flag` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_todo_content`
--

INSERT INTO `tbl_todo_content` (`id`, `todo_text`, `completed_flag`) VALUES
(323, 'One', NULL),
(324, 'Two', NULL),
(325, 'Three', 1),
(326, 'As Many As I Want', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_archived_content`
--
ALTER TABLE `tbl_archived_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_todo_content`
--
ALTER TABLE `tbl_todo_content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_archived_content`
--
ALTER TABLE `tbl_archived_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `tbl_todo_content`
--
ALTER TABLE `tbl_todo_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
