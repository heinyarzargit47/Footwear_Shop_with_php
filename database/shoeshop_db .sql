-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2022 at 06:24 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoeshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `brand_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_code`, `created_at`, `updated_at`) VALUES
(4, 'Addidas', 'ADS', '2020-08-14 06:58:15', '2020-08-14 06:58:15'),
(5, 'Calvin Klein', 'CKL', '2020-08-14 06:58:31', '2020-08-14 06:58:31'),
(6, 'Converse', 'Cov', '2020-08-14 06:58:43', '2020-08-14 06:58:43'),
(7, 'Michael Kors', 'MKO', '2020-08-14 06:59:16', '2020-08-14 06:59:16'),
(8, 'Nike', 'NKE', '2020-08-14 06:59:24', '2020-08-14 06:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_code`, `created_at`, `updated_at`) VALUES
(10, 'Athletic', 'ATH', '2020-08-14 07:00:24', '2020-08-14 07:00:24'),
(11, 'Slippers', 'SLP', '2020-08-14 07:00:33', '2020-08-14 07:00:33'),
(12, 'Boots', 'BOT', '2020-08-14 07:00:45', '2020-08-14 07:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`, `created_at`, `updated_at`) VALUES
(1, 'male', '2020-08-13 05:22:24', '2020-08-13 05:22:24'),
(2, 'female', '2020-08-13 05:22:24', '2020-08-13 05:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'confirm', '2020-08-20 03:44:25', '2020-08-20 03:44:25'),
(2, 'delivering', '2020-08-20 03:44:25', '2020-08-20 03:44:25'),
(3, 'delivered', '2020-08-20 03:44:36', '2020-08-20 03:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_brand_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_gender_id` tinyint(4) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `product_brand_id`, `product_category_id`, `product_gender_id`, `product_price`, `product_photo`, `product_description`, `created_at`, `updated_at`) VALUES
(25, 'Mo mo', 'CKL-SLP-00001', 5, 11, 2, 13000, 'images/1808200505505f3b458e2e082.jpeg', 'for female', '2020-08-18 03:05:50', '2020-08-18 03:05:50'),
(27, 'Vovo nnn', 'SLP-SLP-00002', 5, 11, 2, 19000, 'images/1808200541115f3b4dd714b17.jpeg', 'for female', '2020-08-18 03:38:08', '2020-08-18 03:47:43'),
(28, 'jj', 'ADS-ATH-00001', 4, 10, 1, 45454, 'images/1808200600495f3b5271c007e.jpeg', 'for male', '2020-08-18 04:00:49', '2020-08-18 04:00:49'),
(29, 'aa', 'ATH-ATH-00002', 4, 10, 1, 8000, 'images/1808200601125f3b52889e034.jpeg', 'for male', '2020-08-18 04:01:12', '2020-08-18 04:01:12'),
(30, 'bb', 'Cov-ATH-00001', 6, 11, 2, 50000, 'images/1808200601415f3b52a594f8e.jpeg', 'for female', '2020-08-18 04:01:41', '2020-08-18 04:01:41'),
(31, 'cc', 'ATH-ATH-00003', 4, 10, 1, 7000, 'images/1808200602055f3b52bd00f0e.jpeg', 'for male', '2020-08-18 04:02:05', '2020-08-18 04:02:05'),
(32, 'dd', 'ATH-ATH-00004', 8, 10, 1, 8500, 'images/1808200602365f3b52dc5bc36.jpeg', 'for amel', '2020-08-18 04:02:36', '2020-08-18 04:02:36'),
(33, 'ee', 'MKO-SLP-00001', 7, 11, 2, 7500, 'images/27012106062460119d90376b4.jpeg', 'for female', '2020-08-18 04:03:05', '2021-01-27 17:06:24'),
(34, 'Ribar', 'SLP-SLP-00003', 5, 11, 2, 12000, 'images/2701210623036011a17794aa6.jpeg', 'for femal', '2020-08-18 04:03:37', '2021-01-27 17:23:03'),
(35, 'IQsoft', 'MKO-ATH-00001', 7, 10, 1, 14000, 'images/1808200604045f3b533431f3c.jpeg', 'for mele', '2020-08-18 04:04:04', '2021-01-27 17:04:16'),
(36, 'Aerosoft', 'ATH-ATH-00004', 4, 10, 1, 16000, 'images/27012106060760119d7fccb0e.jpeg', 'for male', '2020-08-18 04:04:29', '2021-01-27 17:06:07'),
(37, 'Jajako', 'NKE-BOT-00001', 8, 12, 2, 20000, 'images/2701210622146011a146e8f4d.jpeg', 'for female', '2020-08-18 07:27:42', '2021-01-27 17:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `order_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `voucherid`, `user_id`, `order_date`, `order_status`, `created_at`, `updated_at`) VALUES
(26, '20082020-0214035f3e29c3ad074', 17, '2020-08-20', 1, '2020-08-20 07:44:03', '2020-08-20 07:44:03'),
(27, '20082020-0215585f3e2a36e1976', 18, '2020-08-20', 1, '2020-08-20 07:45:59', '2020-08-20 07:45:59'),
(28, '20082020-0218225f3e2ac65fba6', 19, '2020-08-20', 1, '2020-08-20 07:48:22', '2020-08-20 07:48:22'),
(29, '20082020-0220205f3e2b3c539ca', 20, '2020-08-20', 1, '2020-08-20 07:50:20', '2020-08-20 07:50:20'),
(30, '20082020-0224535f3e2c4d9c8b3', 21, '2020-08-20', 1, '2020-08-20 07:54:53', '2020-08-20 07:54:53'),
(31, '10012021-0956195ffb1c9b69af0', 27, '2021-01-10', 1, '2021-01-10 15:26:19', '2021-01-10 15:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders_detail`
--

CREATE TABLE `product_orders_detail` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_orders_detail`
--

INSERT INTO `product_orders_detail` (`id`, `voucherid`, `product_id`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(71, '20082020-0214035f3e29c3ad074', 25, 13000, 1, '2020-08-20 07:44:03', '2020-08-20 07:44:03'),
(72, '20082020-0214035f3e29c3ad074', 36, 16000, 1, '2020-08-20 07:44:03', '2020-08-20 07:44:03'),
(73, '20082020-0215585f3e2a36e1976', 36, 16000, 1, '2020-08-20 07:45:58', '2020-08-20 07:45:58'),
(74, '20082020-0215585f3e2a36e1976', 31, 7000, 2, '2020-08-20 07:45:59', '2020-08-20 07:45:59'),
(75, '20082020-0215585f3e2a36e1976', 35, 14000, 1, '2020-08-20 07:45:59', '2020-08-20 07:45:59'),
(76, '20082020-0218225f3e2ac65fba6', 37, 20000, 2, '2020-08-20 07:48:22', '2020-08-20 07:48:22'),
(77, '20082020-0218225f3e2ac65fba6', 30, 50000, 1, '2020-08-20 07:48:22', '2020-08-20 07:48:22'),
(78, '20082020-0220205f3e2b3c539ca', 34, 12000, 1, '2020-08-20 07:50:20', '2020-08-20 07:50:20'),
(79, '20082020-0220205f3e2b3c539ca', 33, 7500, 2, '2020-08-20 07:50:20', '2020-08-20 07:50:20'),
(80, '20082020-0224535f3e2c4d9c8b3', 37, 20000, 1, '2020-08-20 07:54:53', '2020-08-20 07:54:53'),
(81, '20082020-0224535f3e2c4d9c8b3', 35, 14000, 1, '2020-08-20 07:54:53', '2020-08-20 07:54:53'),
(82, '10012021-0956195ffb1c9b69af0', 36, 16000, 1, '2021-01-10 15:26:19', '2021-01-10 15:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_role`, `created_at`, `updated_at`) VALUES
(17, 'Ma Ei Mar Htun13', 'ei@gmail.com', '09787926608', '111111', 1, '2020-08-20 07:43:00', '2020-08-20 19:15:59'),
(18, 'Mg Hein Yarzar', 'hein@gmail.com', '09775194535', '111111', 1, '2020-08-20 07:44:45', '2020-08-20 07:44:45'),
(19, 'Mg Thura Naing', 'thura@gmail.com', '09256153127', '111111', 1, '2020-08-20 07:47:28', '2020-08-21 07:09:39'),
(20, 'Mg Nay Myo Zaw', 'nay@gmail.com', '09751623458', '111111', 1, '2020-08-20 07:49:19', '2020-08-20 07:49:19'),
(21, 'Mg Htet Wai Yan Soe', 'htet@gmail.com', '09444918880', '111111', 1, '2020-08-20 07:54:37', '2020-08-20 07:54:37'),
(22, 'Hein Yarzar', 'heinyarzar@gmail.com', '09775194535', '111111', 2, '2020-08-20 08:06:44', '2020-08-20 08:06:44'),
(23, '', '', '', '', 1, '2020-08-20 17:25:23', '2020-08-20 17:25:23'),
(24, 'ei ei', 'eiei@gmail.com', '09787926608', '28526928', 1, '2020-10-17 03:42:10', '2020-10-17 03:42:10'),
(25, 'mar', 'mar@gmail.com', '09787926608', '285269', 1, '2020-10-17 03:43:26', '2020-10-17 03:43:26'),
(26, 'qq', 'qq@gmail.com', '09775194535', '12345678', 1, '2021-01-10 15:24:50', '2021-01-10 15:24:50'),
(27, 'tt', 'tt@gmail.com', '09775194535', '123456', 1, '2021-01-10 15:25:54', '2021-01-10 15:25:54'),
(28, 'Hein', 'heinhein@gmail.com', '09775194535', 'heinhein', 1, '2022-04-01 04:07:20', '2022-04-01 04:07:20'),
(29, 'hein two', 'heintwo@gmail.com', '09775194535', 'heintw', 1, '2022-04-01 04:09:08', '2022-04-01 04:09:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders_detail`
--
ALTER TABLE `product_orders_detail`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_orders_detail`
--
ALTER TABLE `product_orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
