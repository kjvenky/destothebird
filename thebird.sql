-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2013 at 05:45 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thebird`
--
CREATE DATABASE IF NOT EXISTS `thebird` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `thebird`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_11_22_061208_create_users_table', 1),
('2013_11_22_085326_create_password_reminders_table', 2),
('2013_11_25_090212_create_users_upload_table', 3),
('2013_11_25_123726_create_users_upload_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('chinmoym2004@gmail.com', '94a999f2309313fa2bbf5d7ae872e6dca484115c', '2013-11-22 03:26:17'),
('chinmoym2004@gmail.com', 'b03b8dd3b0d4187d52a2d415b3239410382c53de', '2013-11-25 00:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'chiin', 'Maity', 'chinmoym2004@gmail.com', '$2y$08$WMhmJoK.rktjdBOIbpbSeeDXRpw5jRTWpNLfYEo0TP9Y55.iQGzbm', '2013-11-22 03:03:18', '2013-11-25 00:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `users_upload`
--

CREATE TABLE IF NOT EXISTS `users_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filpath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('verified','processing','unknown') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_upload_uid_index` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users_upload`
--

INSERT INTO `users_upload` (`id`, `uid`, `filpath`, `status`, `created_at`, `updated_at`) VALUES
(9, '1', 'uploads/o_18a7ksui8jss1rrikrucok1tuqr.jpg', 'processing', '2013-11-25 07:19:17', '2013-11-25 12:49:17'),
(10, '1', 'uploads/o_18a7ksui8jqt1hri1q9ftgl1tsts.jpg', 'processing', '2013-11-25 07:19:18', '2013-11-25 12:49:18'),
(11, '1', 'uploads/o_18a7ksui9qtkp779u9193m1oldt.jpg', 'processing', '2013-11-25 07:19:20', '2013-11-25 12:49:20'),
(12, '1', 'uploads/o_18a7ksui91nujckj1t7h16jiqrru.jpg', 'processing', '2013-11-25 07:19:22', '2013-11-25 12:49:22'),
(13, '1', 'uploads/o_18a7ksui9lrt1in6139u10h81rfev.jpg', 'processing', '2013-11-25 07:19:23', '2013-11-25 12:49:23'),
(14, '1', 'uploads/o_18a7ksuiaqlqvb35irnqfv210.jpg', 'processing', '2013-11-25 07:19:25', '2013-11-25 12:49:25'),
(15, '1', 'uploads/o_18a7ksuian191k3317fm2auv5211.jpg', 'processing', '2013-11-25 07:19:27', '2013-11-25 12:49:27'),
(16, '1', 'uploads/o_18a7ksuia1eishs615u049n20112.jpg', 'processing', '2013-11-25 07:19:28', '2013-11-25 12:49:28'),
(17, '1', 'uploads/o_18a7m9hbkht11nnu18gvrvhos0m.jpg', 'processing', '2013-11-25 07:43:37', '2013-11-25 13:13:37'),
(18, '1', 'uploads/o_18a7m9hbkpgtku2kaik911v3jn.jpg', 'processing', '2013-11-25 07:43:39', '2013-11-25 13:13:39'),
(19, '1', 'uploads/o_18a7m9hbkkn71f6l1pu51qhb4j1o.jpg', 'processing', '2013-11-25 07:43:41', '2013-11-25 13:13:41');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
