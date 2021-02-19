-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 12:45 PM
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

--
-- Dumping data for table `tbl_archived_content`
--

INSERT INTO `tbl_archived_content` (`id`, `old_id`, `todo_text`, `completed_flag`) VALUES
(1, 130, 'one', 1),
(2, 131, 'two', 1),
(3, 132, 'three', 1),
(4, 133, 'as many as i want', 1),
(5, 137, 'catch me', 1),
(6, 134, 'all the way', 1),
(7, 136, 'get me', 1),
(8, 135, 'to the west', 1),
(9, 138, 'hello', 1),
(10, 139, 'get out', 1),
(11, 140, 'heyyy', 1),
(12, 141, '', 1),
(13, 142, '', 1),
(14, 143, 'vbgbvnvbnbn', 1),
(15, 144, '', 1),
(16, 146, 'jkkj', 1),
(17, 148, 'hhh', 1),
(18, 145, 'gjkkj', 1),
(19, 147, 'hgjhkj', 1),
(20, 149, 'szdffd', 1),
(21, 150, 'assasa', 1),
(22, 151, 'assas', 1),
(23, 152, 'asassa', 1),
(24, 153, 'dssd', 1),
(25, 154, 'fhfg', 1),
(26, 155, 'sdkj', 1),
(27, 156, 'dfgf', 1),
(28, 157, 'sadads', 1),
(29, 158, 'dffd', 1),
(30, 159, 'hjk', 1),
(31, 160, 'fgghhg', 1),
(32, 161, 'dfgdf', 1),
(33, 162, 'fdsdf', 1),
(34, 163, 'ghjgh', 1),
(35, 164, 'ghjh', 1),
(36, 165, 'ghjgvvb', 1),
(37, 166, 'vgnvbb', 1),
(38, 167, 'gfhfghfg', 1),
(39, 168, 'fghfghf', 1),
(40, 169, 'gvhnvnv  ccbv', 1),
(41, 170, 'fghggfg', 1),
(42, 171, 'dfgfddf', 1),
(43, 172, 'hello', 1),
(44, 173, 'fsdafsd', 1),
(45, 174, 'cxzxz', 1),
(46, 175, 'cvcv', 1),
(47, 176, 'ddf', 1),
(48, 177, 'fsfds', 1),
(49, 178, 'sad', 1),
(50, 179, 'sad', 1),
(51, 180, 'sa', 1),
(52, 181, 'd', 1),
(53, 182, 'sad', 1),
(54, 183, 'asd', 1),
(55, 184, 'asd', 1),
(56, 185, 'sad', 1),
(57, 186, 'asd', 1),
(58, 187, 'asd', 1),
(59, 188, 'asd', 1),
(60, 189, 'asd', 1),
(61, 190, 'asdsad', 1),
(62, 191, 'as', 1),
(63, 192, 'fd', 1),
(64, 193, 'fwfwe', 1),
(65, 194, 'fwefe', 1),
(66, 195, 'wwe', 1),
(67, 196, 'wewe', 1),
(68, 197, 'we', 1),
(69, 198, 'we', 1),
(70, 199, 'w', 1),
(71, 200, 'we', 1),
(72, 201, 'we', 1),
(73, 202, 'we', 1),
(74, 203, 'we', 1),
(75, 204, 'ewwewe', 1),
(76, 205, 'weew', 1),
(77, 206, 'gg', 1),
(78, 207, 'ff', 1),
(79, 208, 'tyr', 1),
(80, 209, 'asdasd', 1),
(81, 210, 'jj', 1),
(82, 211, 'xcffd', 1),
(83, 212, 'gghgh', 1),
(84, 213, 'ff', 1),
(85, 214, 'rr', 1),
(86, 215, 'df', 1),
(87, 216, 'dfdffddf', 1),
(88, 217, 'dfdfdfdfdf', 1),
(89, 218, 'ff', 1),
(90, 219, 'weff', 1),
(91, 220, 'wefsd', 1),
(92, 221, 'fs', 1),
(93, 222, 'dfsd', 1),
(94, 223, 'sdfd', 1),
(95, 224, 'sdfsdf', 1),
(96, 225, 'dsfd', 1),
(97, 226, 'dx', 1),
(98, 227, 'xcxzc', 1),
(99, 228, 'zxxz', 1),
(100, 229, 'dszfsdf', 1),
(101, 230, 'dfgdf', 1),
(102, 231, 'fgfd', 1),
(103, 232, 'fdf', 1),
(104, 233, 'wedf', 1),
(105, 234, 'jgkj', 1),
(106, 235, 'jkkl', 1),
(107, 236, 'jklkl', 1),
(108, 237, 'kj', 1),
(109, 238, 'hgj', 1),
(110, 239, 'klk', 1),
(111, 240, 'jhkl', 1),
(112, 241, 'hjh', 1),
(113, 242, 'jkhkj', 1),
(114, 243, 'ghf', 1),
(115, 244, 'fgg', 1),
(116, 245, 'cbvcb', 1),
(117, 246, 'xvcxcv', 1),
(118, 247, 'ff', 1),
(119, 248, 'vbbv', 1),
(120, 249, 'bnjkj', 1),
(121, 250, 'bvnv', 1),
(122, 251, 'gfg', 1),
(123, 252, 'nj', 1),
(124, 253, 'fghh', 1),
(125, 254, 'fggh', 1),
(126, 255, 'fghh', 1),
(127, 256, 'fgh', 1),
(128, 257, 'gjhhj', 1),
(129, 258, 'hgghhg', 1),
(130, 259, 'gh', 1),
(131, 260, 'hjhg', 1),
(132, 261, 'dfg', 1),
(133, 262, 'dfg', 1),
(134, 263, 'fd', 1),
(135, 264, 'gdf', 1),
(136, 265, 'g', 1),
(137, 266, 'fdg', 1),
(138, 267, 'dfg', 1),
(139, 268, 'fd', 1),
(140, 269, 'df', 1),
(141, 270, 'dfg', 1),
(142, 271, 'df', 1),
(143, 272, 'gdf', 1),
(144, 273, 'f', 1),
(145, 274, 'fd', 1),
(146, 277, 'fg', 1),
(147, 278, 'fg', 1),
(148, 279, 'fg', 1),
(149, 275, 'df', 1),
(150, 276, 'fd', 1),
(151, 280, 'dfg', 1),
(152, 281, 'dfg', 1),
(153, 282, 'fdg', 1),
(154, 283, 'df', 1),
(155, 284, 'one', 1),
(156, 285, 'two', 1),
(157, 286, 'three', 1),
(158, 287, 'hty', 1),
(159, 288, 'ds', 1),
(160, 289, 'sdf', 1),
(161, 290, 'sdf', 1),
(162, 304, 'fsdfdfsdf', 1),
(163, 305, 'f', 1),
(164, 308, 'sd', 1),
(165, 309, 'f', 1),
(166, 310, 'mAUM', 1),
(167, 311, 'SADSA', 1),
(168, 294, 'jjk', 1),
(169, 295, 'sdf', 1),
(170, 296, 'fsd', 1),
(171, 297, 'sdf', 1),
(172, 291, 'sdf', 1),
(173, 292, 'ds', 1),
(174, 293, 'masum', 1),
(175, 298, 's', 1),
(176, 299, 'df', 1),
(177, 300, 'sdf', 1),
(178, 301, 'sdf', 1),
(179, 302, 's', 1),
(180, 303, 'df', 1),
(181, 306, 'fsf', 1),
(182, 307, 'fds', 1),
(183, 312, 'asdsad', 1),
(184, 313, 'fbvb', 1),
(185, 314, 'bngb', 1),
(186, 315, 'hu', 1),
(187, 317, 'j', 1),
(188, 316, 'ji', 1),
(189, 318, 'sdfd', 1),
(190, 319, 'sdfds', 1),
(191, 322, 'fdfgy', 1);

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
(320, 'sdfdf', NULL),
(321, 'masum', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
