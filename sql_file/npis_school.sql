-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2021 at 04:30 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `npis_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_phoneno` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `email`, `password`, `username`, `admin_phoneno`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'deepa', 9087654321);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int NOT NULL,
  `img_type` int NOT NULL COMMENT '1=>gallery,2=>events',
  `gallery_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gallery_title` text COLLATE utf8mb4_general_ci NOT NULL,
  `gallery_status` int NOT NULL DEFAULT '1' COMMENT '1=active 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `img_type`, `gallery_img`, `gallery_title`, `gallery_status`, `created_at`) VALUES
(1, 1, '1634895947-2.jpg', 'Tittle definition ', 1, '2021-10-14 06:51:14'),
(3, 2, '1635065504-4.jpg', 'hiii', 1, '2021-10-24 08:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE `news_events` (
  `news_events-id` int NOT NULL,
  `news_events_title` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_events_status` int NOT NULL DEFAULT '1' COMMENT '1=active 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_events`
--

INSERT INTO `news_events` (`news_events-id`, `news_events_title`, `created_at`, `news_events_status`) VALUES
(1, 'The page you requested was not found.The page you requested was not found.', '2021-10-13 10:11:57', 1),
(3, 'zapmeta.ws has been visited by 1M+ users in the past month  Find How To Search Title. Search Faster, Better & Smarter Here!', '2021-10-13 10:54:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `slider_title` text COLLATE utf8mb4_general_ci NOT NULL,
  `slider_status` int NOT NULL DEFAULT '1' COMMENT '1=active 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_img`, `slider_title`, `slider_status`) VALUES
(9, '1635058828-7.jpg', '', 1),
(10, '1635058865-1.jpg', '', 1),
(11, '1635058899-4.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int NOT NULL,
  `testimonial_title` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `testimonial_description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `testimonial_rating` int NOT NULL,
  `testimonial_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_id`, `testimonial_title`, `testimonial_description`, `testimonial_rating`, `testimonial_status`, `created_at`) VALUES
(1, 'Tittle definition is - a point or small sign used as a diacritical mark in writing or printing. How to use tittle in a sentence111', 'Tittle definition is - a point or small sign used as a diacritical mark in writing or printing. How to use tittle in a sentenceTittle definition is - a point or small sign used as a diacritical mark in writing or printing. How to use tittle in a sentence111', 4, 1, '2021-10-15 08:19:36'),
(3, 'The page you requested ', 'The page you requested was not found.The page you requested was not found.The page you requested was not found.', 2, 1, '2021-10-24 08:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `toppers`
--

CREATE TABLE `toppers` (
  `toppers_id` int NOT NULL,
  `toppers_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `toppers_title` text COLLATE utf8mb4_general_ci NOT NULL,
  `toppers_class` text COLLATE utf8mb4_general_ci NOT NULL,
  `toppers_percentage` text COLLATE utf8mb4_general_ci NOT NULL,
  `toppers_status` int NOT NULL DEFAULT '1' COMMENT '1=active 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toppers`
--

INSERT INTO `toppers` (`toppers_id`, `toppers_img`, `toppers_title`, `toppers_class`, `toppers_percentage`, `toppers_status`, `created_at`) VALUES
(3, '1634284767-slide1-1.jpg', 'Tittle2', '12', '30%', 1, '2021-10-15 07:59:27'),
(5, '1634284823-slide1-1.jpg', 'Tittle3', '10', '40%', 1, '2021-10-15 08:00:23'),
(6, '1635064069-about.jpg', 'title4', '12', '67%', 1, '2021-10-24 08:27:49'),
(7, '1635064494-about.jpg', 'title1', '10', '70%', 1, '2021-10-24 08:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videos_id` int NOT NULL,
  `videos_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `video_cat` int NOT NULL COMMENT '1=>gallery,2=>events',
  `video` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `vid_status` int NOT NULL DEFAULT '1' COMMENT '1=>active,0=>inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videos_id`, `videos_title`, `video_cat`, `video`, `vid_status`) VALUES
(2, 'hii events', 2, '853-VID-20210502-WA0021.mp4', 0),
(3, 'hiii gallery', 1, '13-VID-20210502-WA0021.mp4', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `news_events`
--
ALTER TABLE `news_events`
  ADD PRIMARY KEY (`news_events-id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `toppers`
--
ALTER TABLE `toppers`
  ADD PRIMARY KEY (`toppers_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_events`
--
ALTER TABLE `news_events`
  MODIFY `news_events-id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `toppers`
--
ALTER TABLE `toppers`
  MODIFY `toppers_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videos_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
