-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 04:22 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverisements`
--

CREATE TABLE `adverisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adverisements`
--

INSERT INTO `adverisements` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'homepage_secion_banner_one', '{\"banner_one\":{\"banner_url\":\"fsadfasdfsd\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf1a03b212.png\"}}', '2023-04-28 19:48:59', '2023-04-28 22:59:52'),
(2, 'homepage_secion_banner_two', '{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf177be491.png\"},\"banner_two\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce7818d45e.png\"}}', '2023-04-28 21:49:52', '2023-04-28 23:42:09'),
(3, 'homepage_secion_banner_three', '{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce82555973.png\"},\"banner_two\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce7c48fc61.png\"},\"banner_three\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce89a6d389.png\"}}', '2023-04-28 22:17:48', '2023-04-28 22:21:22'),
(4, 'homepage_secion_banner_four', '{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce9ed3b6ca.png\"}}', '2023-04-28 22:27:01', '2023-04-28 22:27:01'),
(5, 'productpage_banner_section', '{\"banner_one\":{\"banner_url\":\"#\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf035b903b.png\"}}', '2023-04-28 22:53:49', '2023-04-28 22:53:49'),
(6, 'cartpage_banner_section', '{\"banner_one\":{\"banner_url\":\"#\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf14006136.png\"},\"banner_two\":{\"banner_url\":\"#\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf14006649.png\"}}', '2023-04-28 22:58:16', '2023-04-28 22:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `slug`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(4, 'uploads/media_644897a747a6e.jpg', 'Canon', 'canon', 0, 1, '2023-04-24 04:22:19', '2023-05-07 17:22:54'),
(5, 'uploads/media_644897a20c397.png', 'DJI', 'dji', 0, 1, '2023-04-24 04:23:14', '2023-04-25 15:48:05'),
(6, 'uploads/media_6448979d64984.jpg', 'gopro', 'gopro', 0, 1, '2023-04-24 04:23:46', '2023-05-07 17:21:33'),
(7, 'uploads/media_644897980f6ba.png', 'Pantax', 'pantax', 0, 1, '2023-04-24 04:24:51', '2023-04-25 15:48:08'),
(8, 'uploads/media_64489792ba531.jpg', 'MSI', 'msi', 1, 1, '2023-04-24 21:48:02', '2024-05-30 04:31:19'),
(9, 'uploads/media_64587fc52e0e8.jpg', 'ASUS', 'asus', 1, 1, '2023-04-24 21:48:18', '2023-05-07 17:21:17'),
(10, 'uploads/media_64587fa3a492b.jpg', 'LENOVO', 'lenovo', 1, 1, '2023-04-24 21:48:32', '2023-05-07 17:20:57'),
(11, 'uploads/media_64587f97097b1.jpg', 'Acer', 'acer', 1, 1, '2023-04-24 21:53:59', '2023-05-07 17:20:31'),
(12, 'uploads/media_64578dd29ae43.jpg', 'Apolo fashion', 'apolo-fashion', 1, 1, '2023-05-07 00:08:58', '2023-05-07 00:08:58'),
(13, 'uploads/media_64578e3ab91dc.jpg', 'women fashion', 'women-fashion', 1, 1, '2023-05-07 00:09:27', '2023-05-07 00:10:42'),
(14, 'uploads/media_64578e00ce00f.jpg', 'Indiana', 'indiana', 1, 1, '2023-05-07 00:09:44', '2023-05-07 00:09:44'),
(15, 'uploads/media_64586c94c48c3.jpg', 'Womens Fashion', 'womens-fashion', 1, 1, '2023-05-07 15:59:24', '2023-05-07 15:59:24'),
(16, 'uploads/media_665ad8b2b204f.jpg', 'Doctor Extra Soft', 'doctor-extra-soft', 1, 1, '2024-06-01 02:45:46', '2024-06-01 02:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Electronics', 'electronics', 'fas fa-mobile-alt', 1, '2023-04-24 04:13:07', '2023-04-24 04:13:07'),
(11, 'Men\'s Fashion', 'mens-fashion', 'fas fa-tshirt', 1, '2023-05-07 00:01:57', '2024-05-31 22:53:22'),
(12, 'Women\'s Fashion', 'womens-fashion', 'fas fa-female', 1, '2023-05-07 16:00:18', '2024-05-31 22:53:31'),
(13, 'Kid\'s Fashion', 'kids-fashion', 'fab fa-kickstarter', 1, '2023-05-07 16:02:22', '2024-05-31 22:44:18'),
(14, 'Health and Beauty', 'health-and-beauty', 'fas fa-hands-helping', 1, '2023-05-07 16:56:57', '2023-05-07 16:56:57'),
(15, 'Books', 'books', 'fas fa-book-open', 1, '2023-05-07 16:57:21', '2024-05-31 22:42:26'),
(16, 'Home and Kitchen', 'home-and-kitchen', 'fas fa-home', 1, '2023-05-07 16:57:49', '2024-05-31 22:41:28'),
(17, 'Sports and Fitness', 'sports-and-fitness', 'fas fa-football-ball', 1, '2023-05-07 16:58:39', '2024-05-31 22:41:13'),
(18, 'Vehicles', 'vehicles', 'fas fa-car-alt', 1, '2023-05-07 16:58:55', '2024-05-31 23:14:22'),
(19, 'Baby products and Toys', 'baby-products-and-toys', 'fas fa-child', 1, '2023-05-07 16:59:22', '2024-05-31 22:40:31'),
(20, 'Note', 'note', 'far fa-address-book', 1, '2024-05-31 22:54:20', '2024-05-31 22:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 10, 13, 'Canon', 'canon', 1, '2023-04-24 04:14:29', '2023-04-24 04:14:29'),
(12, 10, 13, 'DJI', 'dji', 1, '2023-04-24 04:14:44', '2023-04-24 04:14:44'),
(13, 10, 13, 'GoPro', 'gopro', 1, '2023-04-24 04:15:05', '2023-04-24 04:15:05'),
(14, 10, 14, 'HP', 'hp', 1, '2023-04-24 04:15:48', '2024-05-31 23:27:39'),
(15, 10, 14, 'Acer', 'acer', 1, '2023-04-24 04:16:16', '2023-04-24 04:16:16'),
(16, 10, 14, 'ASUS', 'asus', 1, '2023-04-24 04:16:31', '2023-04-24 04:16:31'),
(17, 10, 14, 'Lenovo', 'lenovo', 1, '2023-04-24 04:16:55', '2023-04-24 04:16:55'),
(18, 10, 15, 'Samsung', 'samsung', 1, '2023-04-24 04:17:15', '2024-05-31 23:28:54'),
(19, 10, 15, 'Google Pixel', 'google-pixel', 1, '2023-04-24 04:19:06', '2023-04-24 04:19:06'),
(20, 10, 15, 'One Plus', 'one-plus', 1, '2023-04-24 04:19:29', '2023-04-24 04:19:29'),
(21, 10, 13, 'Sony', 'sony', 1, '2023-04-24 04:19:46', '2024-05-31 23:24:40'),
(22, 10, 13, 'NIKON', 'nikon', 1, '2023-04-24 04:20:05', '2024-05-31 23:25:17'),
(23, 10, 17, 'Cases and covers', 'cases-and-covers', 1, '2024-05-31 23:30:07', '2024-05-31 23:30:07'),
(24, 10, 17, 'Headsets', 'headsets', 1, '2024-05-31 23:30:47', '2024-05-31 23:30:47'),
(25, 10, 17, 'Adapters and cables', 'adapters-and-cables', 1, '2024-05-31 23:31:27', '2024-05-31 23:31:27'),
(26, 11, 21, 'Men\'s T-Shirts', 'mens-t-shirts', 1, '2024-05-31 23:32:27', '2024-05-31 23:32:27'),
(27, 11, 21, 'Men\'s Shirt', 'mens-shirt', 1, '2024-05-31 23:32:48', '2024-05-31 23:32:48'),
(28, 11, 21, 'Men\'s Trousers', 'mens-trousers', 1, '2024-05-31 23:33:05', '2024-05-31 23:33:05'),
(29, 11, 21, 'Men\'s Jean', 'mens-jean', 1, '2024-05-31 23:33:22', '2024-05-31 23:33:22'),
(30, 11, 22, 'Watch', 'watch', 1, '2024-05-31 23:34:14', '2024-05-31 23:34:26'),
(31, 11, 22, 'Sunglasses', 'sunglasses', 1, '2024-05-31 23:34:45', '2024-05-31 23:34:45'),
(32, 11, 22, 'Wallets', 'wallets', 1, '2024-05-31 23:34:59', '2024-05-31 23:34:59'),
(33, 11, 23, 'Formal', 'formal', 1, '2024-05-31 23:35:39', '2024-05-31 23:35:39'),
(34, 11, 23, 'Casual', 'casual', 1, '2024-05-31 23:35:55', '2024-05-31 23:35:55'),
(35, 11, 23, 'Sneaker', 'sneaker', 1, '2024-05-31 23:36:13', '2024-05-31 23:36:13'),
(36, 12, 24, 'Western wear', 'western-wear', 1, '2024-05-31 23:37:26', '2024-05-31 23:37:26'),
(37, 12, 24, 'Ethnic wear', 'ethnic-wear', 1, '2024-05-31 23:37:44', '2024-05-31 23:37:44'),
(38, 12, 24, 'Night wear', 'night-wear', 1, '2024-05-31 23:38:05', '2024-05-31 23:38:05'),
(39, 12, 25, 'Handbag', 'handbag', 1, '2024-05-31 23:38:37', '2024-05-31 23:38:37'),
(40, 12, 25, 'Gold and Diamond', 'gold-and-diamond', 1, '2024-05-31 23:38:53', '2024-05-31 23:38:53'),
(41, 12, 25, 'Clutches', 'clutches', 1, '2024-05-31 23:39:16', '2024-05-31 23:39:16'),
(42, 12, 26, 'Women\'s Sneaker', 'womens-sneaker', 1, '2024-05-31 23:40:18', '2024-06-01 02:49:31'),
(43, 12, 26, 'Fashion Sandals', 'fashion-sandals', 1, '2024-05-31 23:40:40', '2024-05-31 23:40:40'),
(44, 13, 18, 'Kid\'s T-shirts', 'kids-t-shirts', 1, '2024-05-31 23:41:32', '2024-05-31 23:41:32'),
(45, 13, 18, 'Kurtas and shirts', 'kurtas-and-shirts', 1, '2024-05-31 23:41:52', '2024-05-31 23:41:52'),
(46, 13, 19, 'Bata', 'bata', 1, '2024-05-31 23:42:40', '2024-05-31 23:42:40'),
(47, 13, 19, 'Crocs', 'crocs', 1, '2024-05-31 23:43:08', '2024-05-31 23:43:08'),
(48, 13, 20, 'Backpacks', 'backpacks', 1, '2024-05-31 23:43:56', '2024-05-31 23:43:56'),
(49, 13, 20, 'School Bags', 'school-bags', 1, '2024-05-31 23:44:15', '2024-05-31 23:44:15'),
(50, 13, 20, 'Pencil Cases', 'pencil-cases', 1, '2024-05-31 23:44:34', '2024-05-31 23:44:34'),
(51, 14, 36, 'Eyes', 'eyes', 1, '2024-05-31 23:45:11', '2024-05-31 23:45:11'),
(52, 14, 36, 'Lips', 'lips', 1, '2024-05-31 23:45:23', '2024-05-31 23:45:23'),
(53, 14, 36, 'Face', 'face', 1, '2024-05-31 23:45:38', '2024-05-31 23:45:38'),
(54, 14, 36, 'Body', 'body', 1, '2024-05-31 23:46:03', '2024-05-31 23:46:03'),
(55, 14, 37, 'Family Nutrition', 'family-nutrition', 1, '2024-05-31 23:47:00', '2024-05-31 23:47:00'),
(56, 14, 37, 'Sports Supplements', 'sports-supplements', 1, '2024-05-31 23:47:19', '2024-05-31 23:47:19'),
(57, 14, 37, 'Weight Management Products', 'weight-management-products', 1, '2024-05-31 23:47:47', '2024-05-31 23:47:47'),
(58, 15, 30, 'Classic Fiction', 'classic-fiction', 1, '2024-05-31 23:48:51', '2024-05-31 23:48:51'),
(59, 15, 30, 'Action and Adventure', 'action-and-adventure', 1, '2024-05-31 23:49:18', '2024-05-31 23:49:18'),
(60, 15, 30, 'Crime , Mystery and Thrillers', 'crime-mystery-and-thrillers', 1, '2024-05-31 23:49:51', '2024-05-31 23:49:51'),
(61, 15, 31, 'Fantasy', 'fantasy', 1, '2024-05-31 23:56:16', '2024-05-31 23:56:16'),
(62, 15, 31, 'Comics & Graphic Novels', 'comics-graphic-novels', 1, '2024-05-31 23:56:52', '2024-05-31 23:56:52'),
(63, 16, 38, 'Decorative Stickers', 'decorative-stickers', 1, '2024-05-31 23:59:39', '2024-05-31 23:59:39'),
(64, 16, 38, 'Accents', 'accents', 1, '2024-06-01 00:00:27', '2024-06-01 00:00:27'),
(65, 16, 38, 'Clocks & Frames', 'clocks-frames', 1, '2024-06-01 00:00:48', '2024-06-01 00:00:48'),
(66, 16, 39, 'Microwave Sets', 'microwave-sets', 1, '2024-06-01 00:01:50', '2024-06-01 00:01:50'),
(67, 16, 39, 'Water Bottles', 'water-bottles', 1, '2024-06-01 00:02:28', '2024-06-01 00:02:28'),
(68, 16, 39, 'Jars & Containers', 'jars-containers', 1, '2024-06-01 00:02:49', '2024-06-01 00:02:49'),
(69, 16, 39, 'Bread Bins', 'bread-bins', 1, '2024-06-01 00:03:19', '2024-06-01 00:03:19'),
(70, 16, 40, 'Sofas & Couches', 'sofas-couches', 1, '2024-06-01 00:03:54', '2024-06-01 00:03:54'),
(71, 16, 40, 'Bookshelves', 'bookshelves', 1, '2024-06-01 00:04:21', '2024-06-01 00:04:21'),
(72, 16, 40, 'Tables & Chairs', 'tables-chairs', 1, '2024-06-01 00:04:49', '2024-06-01 00:04:49'),
(73, 17, 33, 'Mats, Bags & Straps', 'mats-bags-straps', 1, '2024-06-01 00:05:45', '2024-06-01 00:05:45'),
(74, 17, 33, 'Starter Sets', 'starter-sets', 1, '2024-06-01 00:06:11', '2024-06-01 00:06:11'),
(75, 17, 34, 'Complete Sets', 'complete-sets', 1, '2024-06-01 00:06:39', '2024-06-01 00:06:39'),
(76, 17, 34, 'Equipment Bags', 'equipment-bags', 1, '2024-06-01 00:07:03', '2024-06-01 00:07:03'),
(77, 17, 34, 'Shuttlecock & Nets', 'shuttlecock-nets', 1, '2024-06-01 00:07:36', '2024-06-01 00:07:36'),
(78, 17, 35, 'Balls', 'balls', 1, '2024-06-01 00:07:58', '2024-06-01 00:07:58'),
(79, 17, 35, 'Bats', 'bats', 1, '2024-06-01 00:08:14', '2024-06-01 00:08:14'),
(80, 17, 35, 'Gloves & kits', 'gloves-kits', 1, '2024-06-01 00:08:33', '2024-06-01 00:08:33'),
(81, 18, 41, 'Exterior Accessories', 'exterior-accessories', 1, '2024-06-01 00:10:58', '2024-06-01 00:10:58'),
(82, 18, 41, 'Interior Accessories', 'interior-accessories', 1, '2024-06-01 00:11:18', '2024-06-01 00:11:18'),
(83, 18, 43, 'Cleaning Kits', 'cleaning-kits', 1, '2024-06-01 00:15:56', '2024-06-01 00:15:56'),
(84, 18, 43, 'Engine & Glass Care', 'engine-glass-care', 1, '2024-06-01 00:16:20', '2024-06-01 00:16:20'),
(85, 18, 43, 'Rust Converters and Removers', 'rust-converters-and-removers', 1, '2024-06-01 00:16:41', '2024-06-01 00:16:41'),
(86, 19, 27, 'Pants', 'pants', 1, '2024-06-01 00:17:49', '2024-06-01 00:17:49'),
(87, 19, 27, 'Baby Casual', 'baby-casual', 1, '2024-06-01 00:18:27', '2024-06-01 00:18:27'),
(88, 19, 27, 'Baby\'s T-shirt', 'babys-t-shirt', 1, '2024-06-01 00:18:59', '2024-06-01 00:18:59'),
(89, 19, 28, 'Shampoos', 'shampoos', 1, '2024-06-01 00:19:56', '2024-06-01 00:19:56'),
(90, 19, 28, 'Soaps', 'soaps', 1, '2024-06-01 00:20:10', '2024-06-01 00:20:10'),
(91, 19, 28, 'Nail & Hair Grooming Set', 'nail-hair-grooming-set', 1, '2024-06-01 00:20:57', '2024-06-01 00:20:57'),
(92, 19, 28, 'Baby care kit', 'baby-care-kit', 1, '2024-06-01 00:21:31', '2024-06-01 00:21:31'),
(93, 19, 29, 'Dancing Cactus', 'dancing-cactus', 1, '2024-06-01 00:23:15', '2024-06-01 00:23:15'),
(94, 19, 29, 'Ducks stairs', 'ducks-stairs', 1, '2024-06-01 00:23:40', '2024-06-01 00:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `max_use` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_used` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `quantity`, `max_use`, `start_date`, `end_date`, `discount_type`, `discount`, `status`, `total_used`, `created_at`, `updated_at`) VALUES
(2, '50% discount', 'OFFER30', 1000, 1, '2023-04-05', '2023-04-29', 'percent', 50, 1, 0, '2023-04-03 23:03:04', '2023-04-09 20:30:58'),
(3, 'Flat 100 discount', 'Flat100', 1000, 2, '2023-04-09', '2023-05-31', 'amount', 100, 1, 0, '2023-04-09 23:27:00', '2023-05-03 23:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `email`, `host`, `username`, `password`, `port`, `encryption`, `created_at`, `updated_at`) VALUES
(1, 'support@sazao.com', 'sandbox.smtp.mailtrap.io', '06315509852650', '49b4e9f784e827', '2525', 'tls', '2023-04-26 22:23:19', '2023-11-26 19:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `end_date`, `created_at`, `updated_at`) VALUES
(2, '2023-05-31', '2023-04-24 04:10:47', '2023-04-24 04:10:47'),
(3, '2023-05-31', '2023-05-06 17:12:08', '2023-05-06 17:12:08'),
(4, '2023-05-31', '2023-05-06 17:12:37', '2023-05-06 17:12:37'),
(5, '2023-05-31', '2023-05-06 17:14:04', '2023-05-06 17:14:04'),
(6, '2023-05-31', '2023-05-06 17:15:25', '2023-05-06 17:15:25'),
(7, '2024-06-05', '2024-05-31 08:13:07', '2024-05-31 08:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `flash_sale_id` int(11) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_items`
--

INSERT INTO `flash_sale_items` (`id`, `product_id`, `flash_sale_id`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(6, 23, 2, 1, 1, '2023-04-25 15:49:41', '2024-05-31 08:12:18'),
(7, 12, 2, 1, 1, '2023-04-25 15:50:00', '2023-04-25 15:50:00'),
(8, 13, 2, 1, 1, '2023-04-25 15:50:13', '2023-04-25 15:50:13'),
(9, 20, 2, 1, 1, '2023-04-25 15:50:21', '2023-04-25 15:50:21'),
(10, 15, 2, 1, 1, '2023-04-25 15:50:46', '2023-04-25 15:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `footer_grid_threes`
--

CREATE TABLE `footer_grid_threes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_grid_threes`
--

INSERT INTO `footer_grid_threes` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Contact', 'https://www.skillshare.com/en/classes/Inspiration-To-Reality-Make-A-Vision-Board-For-Your-Goals/783727951', 1, '2023-04-26 19:37:03', '2023-04-26 19:43:59'),
(3, 'Team Member', 'https://www.linkedin.com/', 1, '2023-05-07 18:10:39', '2023-05-07 18:10:39'),
(4, 'Order History', 'https://www.linkedin.com/', 1, '2023-05-07 18:10:52', '2023-05-07 18:10:52'),
(5, 'Affilate', 'https://www.linkedin.com/', 1, '2023-05-07 18:11:05', '2023-05-07 18:11:05'),
(6, 'Team Member', 'https://www.linkedin.com/', 1, '2023-05-07 18:11:33', '2023-05-07 18:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `footer_grid_twos`
--

CREATE TABLE `footer_grid_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_grid_twos`
--

INSERT INTO `footer_grid_twos` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'About', 'https://www.skillshare.com/en/classes/Inspiration-To-Reality-Make-A-Vision-Board-For-Your-Goals/783727951', 1, '2023-04-26 17:49:52', '2023-04-26 17:52:26'),
(3, 'Terms andconditions', 'http://ecommerce.test/terms-and-conditions', 1, '2023-05-07 18:05:21', '2023-05-07 18:05:21'),
(4, 'contact', 'http://ecommerce.test/contact', 1, '2023-05-07 18:06:23', '2023-05-07 18:06:23'),
(5, 'Flash Sale', 'http://127.0.0.1:8000/flash-sale', 1, '2023-05-07 18:07:54', '2024-05-31 08:08:46'),
(6, 'Career', 'https://www.linkedin.com/', 1, '2023-05-07 18:10:18', '2023-05-07 18:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `logo`, `phone`, `email`, `address`, `copyright`, `created_at`, `updated_at`) VALUES
(1, NULL, '+91 9874563214', 'admin@okpazar.com', 'Siruseri, Chennai, Tamilnadu, India.', 'Copyright © 2024 OKpazar shop. All Rights Reserved.', '2023-04-25 23:52:10', '2024-05-31 08:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `footer_socials`
--

CREATE TABLE `footer_socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_socials`
--

INSERT INTO `footer_socials` (`id`, `icon`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(3, 'fab fa-twitter', 'Twitter', 'https://www.skillshare.com/en/classes/Inspiration-To-Reality-Make-A-Vision-Board-For-Your-Goals/783727951', 1, '2023-04-26 16:43:12', '2023-04-26 16:48:04'),
(4, 'fab fa-facebook-f', 'Facebook', 'https://www.skillshare.com/en/classes/Inspiration-To-Reality-Make-A-Vision-Board-For-Your-Goals/783727951', 1, '2023-04-26 16:51:42', '2023-04-26 16:51:42'),
(5, 'fab fa-linkedin-in', 'linkedin', 'https://www.linkedin.com/', 1, '2023-05-07 17:53:54', '2023-05-07 17:53:54'),
(6, 'fab fa-instagram', 'instagram', 'https://www.linkedin.com/', 1, '2023-05-07 17:54:19', '2023-05-07 17:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `footer_titles`
--

CREATE TABLE `footer_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `footer_grid_two_title` varchar(255) DEFAULT NULL,
  `footer_grid_three_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_titles`
--

INSERT INTO `footer_titles` (`id`, `footer_grid_two_title`, `footer_grid_three_title`, `created_at`, `updated_at`) VALUES
(1, 'More Links', 'Help Links', '2023-04-26 18:45:52', '2023-04-26 19:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `contact_email`, `contact_phone`, `contact_address`, `map`, `currency_name`, `currency_icon`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'OKpazar', 'contact@sazao.com', '+69522145000001', 'India', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.1435090089785!2d90.42196781465853!3d23.81349539228068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c62fb95f16c1%3A0xb333248370356dee!2sJamuna%20Future%20Park!5e0!3m2!1sen!2sbd!4v1639724859199!5m2!1sen!2sbd', 'USD', '$', 'Indian/Chagos', '2023-04-03 18:49:00', '2024-06-04 07:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'popular_category_section', '[{\"category\":\"18\",\"sub_category\":\"41\",\"child_category\":null},{\"category\":\"11\",\"sub_category\":null,\"child_category\":null},{\"category\":\"12\",\"sub_category\":null,\"child_category\":null},{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}]', '2023-04-17 00:10:26', '2024-06-01 04:26:33'),
(3, 'product_slider_section_one', '{\"category\":\"11\",\"sub_category\":null,\"child_category\":null}', '2023-04-17 22:03:40', '2023-05-07 23:35:36'),
(4, 'product_slider_section_two', '{\"category\":\"12\",\"sub_category\":null,\"child_category\":null}', '2023-04-17 23:52:15', '2023-05-07 16:23:05'),
(5, 'product_slider_section_three', '[{\"category\":\"10\",\"sub_category\":\"14\",\"child_category\":\"17\"},{\"category\":\"10\",\"sub_category\":\"13\",\"child_category\":null}]', '2023-04-18 16:36:29', '2024-05-30 04:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `logo_settings`
--

CREATE TABLE `logo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo_settings`
--

INSERT INTO `logo_settings` (`id`, `logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66596902e3aee.png', 'uploads/media_66596aec44d82.jpg', '2023-05-05 22:41:41', '2024-05-31 00:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_042304_create_sliders_table', 2),
(6, '2023_03_17_041346_create_categories_table', 3),
(7, '2023_03_18_040045_create_sub_categories_table', 4),
(8, '2023_03_18_093303_create_child_categories_table', 5),
(9, '2023_03_20_073728_create_brands_table', 6),
(12, '2023_03_21_042848_create_vendors_table', 7),
(15, '2023_03_21_093706_create_products_table', 8),
(17, '2023_03_23_052909_create_product_image_galleries_table', 9),
(18, '2023_03_23_111346_create_product_variants_table', 10),
(19, '2023_03_25_061804_create_product_variant_items_table', 11),
(20, '2023_03_28_060014_add_shop_name_to_vendors_table', 12),
(23, '2023_04_02_045506_create_flash_sales_table', 13),
(24, '2023_04_02_045530_create_flash_sale_items_table', 13),
(25, '2023_04_04_045608_create_general_settings_table', 14),
(27, '2023_04_04_094057_create_coupons_table', 15),
(30, '2023_04_05_042237_create_shipping_rules_table', 16),
(32, '2023_04_05_075356_create_user_addresses_table', 17),
(33, '2023_04_12_070712_create_paypal_settings_table', 18),
(34, '2023_04_13_055255_create_orders_table', 19),
(35, '2023_04_13_061135_create_order_products_table', 19),
(36, '2023_04_13_071626_create_orders_table', 20),
(37, '2023_04_13_073423_create_order_products_table', 20),
(38, '2023_04_13_073819_create_transactions_table', 20),
(39, '2023_04_13_092825_create_stripe_settings_table', 21),
(40, '2023_04_15_035210_create_razorpay_settings_table', 22),
(41, '2023_04_17_091708_create_home_page_settings_table', 23),
(42, '2023_04_26_054246_create_wishlists_table', 24),
(45, '2023_04_26_103843_create_footer_infos_table', 25),
(46, '2023_04_27_032049_create_footer_socials_table', 26),
(47, '2023_04_27_045654_create_footer_grid_twos_table', 27),
(48, '2023_04_27_060549_create_footer_titles_table', 28),
(49, '2023_04_27_065446_create_footer_grid_threes_table', 29),
(50, '2023_04_27_093629_create_email_configurations_table', 30),
(51, '2023_04_27_104025_create_newsletter_subscribers_table', 31),
(52, '2023_04_29_060826_create_adverisements_table', 32),
(53, '2023_04_30_041753_create_product_reviews_table', 33),
(54, '2023_04_30_042756_create_product_review_galleries_table', 33),
(55, '2023_05_01_101558_create_vendor_conditions_table', 34),
(56, '2023_05_01_110235_create_abouts_table', 35),
(57, '2023_05_01_113433_create_terms_and_conditions_table', 36),
(58, '2023_05_03_035158_create_blog_categories_table', 37),
(62, '2023_05_03_053816_create_blogs_table', 38),
(63, '2023_05_03_111615_create_blog_comments_table', 39),
(64, '2023_05_06_063011_create_cod_settings_table', 40),
(65, '2023_05_06_094648_create_logo_settings_table', 41),
(66, '2023_09_24_050156_create_withdraw_methods_table', 42),
(67, '2023_09_24_102346_create_withdraw_requests_table', 43),
(68, '2023_11_28_154734_create_pusher_settings_table', 44),
(69, '2023_11_29_033947_create_chats_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invocie_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `amount` double NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_address` text NOT NULL,
  `shpping_method` text NOT NULL,
  `coupon` text NOT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invocie_id`, `user_id`, `sub_total`, `amount`, `currency_name`, `currency_icon`, `product_qty`, `payment_method`, `payment_status`, `order_address`, `shpping_method`, `coupon`, `order_status`, `created_at`, `updated_at`) VALUES
(7, '891778', 3, 3000, 3000, 'USD', '$', 1, 'paypal', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":3,\"name\":\"Free Shipping\",\"type\":\"min_cost\",\"cost\":0}', 'null', 'delivered', '2023-04-29 17:30:06', '2023-05-02 00:11:14'),
(8, '818716', 3, 250, 200, 'USD', '$', 1, 'stripe', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"Flat 100 discount\",\"coupon_code\":\"Flat100\",\"discount_type\":\"amount\",\"discount\":100}', 'delivered', '2023-05-03 23:50:12', '2023-05-03 23:55:43'),
(9, '909112', 3, 3000, 3000, 'USD', '$', 1, 'COD', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":3,\"name\":\"Free Shipping\",\"type\":\"min_cost\",\"cost\":0}', 'null', 'delivered', '2023-05-05 19:27:16', '2023-05-07 23:30:24'),
(11, '978743', 3, 560, 510, 'USD', '$', 1, 'paypal', 1, '{\"id\":2,\"user_id\":3,\"name\":\"Erasmus Hutchinson\",\"email\":\"user@gmail.com\",\"phone\":\"+1 (448) 117-4101\",\"country\":\"United States\",\"state\":\"California\",\"city\":\"California\",\"zip\":\"64842\",\"address\":\"Ipsum ad in accusamu\",\"created_at\":\"2023-04-05T10:45:24.000000Z\",\"updated_at\":\"2023-04-05T10:45:24.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"Flat 100 discount\",\"coupon_code\":\"Flat100\",\"discount_type\":\"amount\",\"discount\":100}', 'delivered', '2023-05-07 23:03:54', '2024-05-30 04:32:01'),
(12, '66742', 3, 50, 100, 'USD', '$', 1, 'paypal', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', 'null', 'processed_and_ready_to_ship', '2023-09-26 17:59:11', '2024-05-31 06:43:40'),
(13, '446237', 1, 38990, 39040, 'INR', '₹', 1, 'paypal', 1, '{\"id\":8,\"user_id\":1,\"name\":\"Admin H\",\"email\":\"admin@gmail.com\",\"phone\":\"987654312\",\"country\":\"India\",\"state\":\"Tamilnadu\",\"city\":\"Thanjavur\",\"zip\":\"613204\",\"address\":\"437, Punalvasal\",\"created_at\":\"2024-06-04T09:16:32.000000Z\",\"updated_at\":\"2024-06-04T09:16:32.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', 'null', 'pending', '2024-06-04 04:10:09', '2024-06-04 04:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `variants` text NOT NULL,
  `variant_total` int(11) DEFAULT NULL,
  `unit_price` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `vendor_id`, `product_name`, `variants`, `variant_total`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(12, 7, 23, 1, 'ASUS TUF Gaming F15 (2022) Gaming Laptop, 15.6” FHD 144Hz Display, GeForce RTX', '[]', 0, '3000', 1, '2023-04-29 17:30:06', '2023-04-29 17:30:06'),
(13, 8, 24, 2, 'Wrangler Men\'s Iconic Denim Regular Fit Snap Shirt', '[]', 0, '250', 1, '2023-05-03 23:50:13', '2023-05-03 23:50:13'),
(14, 9, 23, 1, 'ASUS TUF Gaming F15 (2022) Gaming Laptop, 15.6” FHD 144Hz Display, GeForce RTX', '[]', 0, '3000', 1, '2023-05-05 19:27:16', '2023-05-05 19:27:16'),
(16, 11, 12, 1, 'DJI Osmo Action 3 Standard Combo, Waterproof Action Camera with 4K HDR', '[]', 0, '280', 2, '2023-05-07 23:03:54', '2023-05-07 23:03:54'),
(17, 12, 25, 2, 'Amazon Essentials Men\'s Short-Sleeve Chambray ShirtProduct Image', '[]', 0, '50', 1, '2023-09-26 17:59:11', '2023-09-26 17:59:11'),
(18, 13, 3, 1, 'GoPro HERO12 Waterproof Action Camera', '[]', 0, '38990', 1, '2024-06-04 04:10:09', '2024-06-04 04:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$MI4UggOQTxHtIVd26olI2ePqcoK29S/gQtG0o3KIa1UZrIIPwQsFO', '2023-11-27 03:54:44'),
('user@gmail.com', '$2y$10$EErrFL5CZyZiaUOeWfaq4erizyyBuYUwuH5ToLMysfTtQuhk22DZm', '2023-11-27 02:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settings`
--

CREATE TABLE `paypal_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text NOT NULL,
  `secret_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_settings`
--

INSERT INTO `paypal_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'United States', 'USD', 1, 'AY32ZF5lk0BgBQMVa8ESxYAO7y09pu1wMD4OwjIBdZa10gPcieqo4SW1fZpDQnN1kcsTtdRL8W7EyFhf', 'EFK9VQpOq7gpqBk1Yy_Y8CrszcSX9PYAO-uDbYlF2H5Fr2APanZjx9JQtD9Qe18nhNf_i0jyz3qKwi90', '2023-04-11 19:53:22', '2024-06-04 03:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` text NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `child_category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `video_link` text DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_image_galleries`
--

CREATE TABLE `product_image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image_galleries`
--

INSERT INTO `product_image_galleries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(30, 'uploads/media_6446bc86746a3.JPG', 10, '2023-04-24 05:59:42', '2023-04-24 05:59:42'),
(31, 'uploads/media_6446bc8674b3d.JPG', 10, '2023-04-24 05:59:42', '2023-04-24 05:59:42'),
(32, 'uploads/media_6446bc8674e70.JPG', 10, '2023-04-24 05:59:42', '2023-04-24 05:59:42'),
(33, 'uploads/media_6446bc8675197.JPG', 10, '2023-04-24 05:59:42', '2023-04-24 05:59:42'),
(34, 'uploads/media_6446bc86757b3.JPG', 10, '2023-04-24 05:59:42', '2023-04-24 05:59:42'),
(35, 'uploads/media_6446bc8675d42.JPG', 10, '2023-04-24 05:59:42', '2023-04-24 05:59:42'),
(36, 'uploads/media_6446bca9dba82.JPG', 11, '2023-04-24 06:00:17', '2023-04-24 06:00:17'),
(37, 'uploads/media_6446bca9dc0d3.JPG', 11, '2023-04-24 06:00:17', '2023-04-24 06:00:17'),
(38, 'uploads/media_6446bca9dc47e.JPG', 11, '2023-04-24 06:00:17', '2023-04-24 06:00:17'),
(39, 'uploads/media_6446bca9dc7c2.JPG', 11, '2023-04-24 06:00:17', '2023-04-24 06:00:17'),
(40, 'uploads/media_6446bca9dcae9.JPG', 11, '2023-04-24 06:00:17', '2023-04-24 06:00:17'),
(41, 'uploads/media_6446bef95fcaa.JPG', 12, '2023-04-24 06:10:09', '2023-04-24 06:10:09'),
(42, 'uploads/media_6446bef96014e.JPG', 12, '2023-04-24 06:10:09', '2023-04-24 06:10:09'),
(43, 'uploads/media_6446bef9604a6.JPG', 12, '2023-04-24 06:10:09', '2023-04-24 06:10:09'),
(44, 'uploads/media_6446bef9607ec.JPG', 12, '2023-04-24 06:10:09', '2023-04-24 06:10:09'),
(45, 'uploads/media_6446c0094d81d.JPG', 13, '2023-04-24 06:14:41', '2023-04-24 06:14:41'),
(46, 'uploads/media_6446c0094dc8c.JPG', 13, '2023-04-24 06:14:41', '2023-04-24 06:14:41'),
(47, 'uploads/media_6446c0094dfa7.JPG', 13, '2023-04-24 06:14:41', '2023-04-24 06:14:41'),
(48, 'uploads/media_6446c0094e556.JPG', 13, '2023-04-24 06:14:41', '2023-04-24 06:14:41'),
(49, 'uploads/media_6446c0094e8b3.JPG', 13, '2023-04-24 06:14:41', '2023-04-24 06:14:41'),
(50, 'uploads/media_6446c0094eed4.JPG', 13, '2023-04-24 06:14:41', '2023-04-24 06:14:41'),
(51, 'uploads/media_6446c0d2bf8cf.JPG', 14, '2023-04-24 06:18:02', '2023-04-24 06:18:02'),
(52, 'uploads/media_6446c0d2bff82.JPG', 14, '2023-04-24 06:18:02', '2023-04-24 06:18:02'),
(53, 'uploads/media_6446c0d2c06f2.JPG', 14, '2023-04-24 06:18:02', '2023-04-24 06:18:02'),
(54, 'uploads/media_6446c0d2c0a5f.JPG', 14, '2023-04-24 06:18:02', '2023-04-24 06:18:02'),
(55, 'uploads/media_6446c0d2c0d83.JPG', 14, '2023-04-24 06:18:02', '2023-04-24 06:18:02'),
(56, 'uploads/media_6446c0d2c109f.JPG', 14, '2023-04-24 06:18:02', '2023-04-24 06:18:02'),
(57, 'uploads/media_6446c252735a2.JPG', 15, '2023-04-24 06:24:26', '2023-04-24 06:24:26'),
(58, 'uploads/media_6446c25273b39.JPG', 15, '2023-04-24 06:24:26', '2023-04-24 06:24:26'),
(59, 'uploads/media_6446c25273e8a.JPG', 15, '2023-04-24 06:24:26', '2023-04-24 06:24:26'),
(60, 'uploads/media_6446c252742d5.JPG', 15, '2023-04-24 06:24:26', '2023-04-24 06:24:26'),
(61, 'uploads/media_6446c25274640.JPG', 15, '2023-04-24 06:24:26', '2023-04-24 06:24:26'),
(62, 'uploads/media_6446c3a525306.JPG', 16, '2023-04-24 06:30:05', '2023-04-24 06:30:05'),
(63, 'uploads/media_6446c3a525788.JPG', 16, '2023-04-24 06:30:05', '2023-04-24 06:30:05'),
(64, 'uploads/media_6446c3a525ac9.JPG', 16, '2023-04-24 06:30:05', '2023-04-24 06:30:05'),
(65, 'uploads/media_6446c3a525df9.JPG', 16, '2023-04-24 06:30:05', '2023-04-24 06:30:05'),
(66, 'uploads/media_6446c3a52614a.JPG', 16, '2023-04-24 06:30:05', '2023-04-24 06:30:05'),
(67, 'uploads/media_6446c3a526466.JPG', 16, '2023-04-24 06:30:05', '2023-04-24 06:30:05'),
(68, 'uploads/media_64479bc3dd6fb.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(69, 'uploads/media_64479bc3ddb88.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(70, 'uploads/media_64479bc3ddeb3.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(71, 'uploads/media_64479bc3de1fd.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(72, 'uploads/media_64479bc3de515.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(73, 'uploads/media_64479bc3de846.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(74, 'uploads/media_64479bc3deb7a.JPG', 19, '2023-04-24 21:52:11', '2023-04-24 21:52:11'),
(75, 'uploads/media_64479c87a16d7.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(76, 'uploads/media_64479c87a1ae3.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(77, 'uploads/media_64479c87a1e22.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(78, 'uploads/media_64479c87a2148.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(79, 'uploads/media_64479c87a2658.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(80, 'uploads/media_64479c87a2d8c.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(81, 'uploads/media_64479c87a3122.JPG', 20, '2023-04-24 21:55:27', '2023-04-24 21:55:27'),
(82, 'uploads/media_64479d904aebd.JPG', 21, '2023-04-24 21:59:52', '2023-04-24 21:59:52'),
(83, 'uploads/media_64479d904b5c5.JPG', 21, '2023-04-24 21:59:52', '2023-04-24 21:59:52'),
(84, 'uploads/media_64479d904b97c.JPG', 21, '2023-04-24 21:59:52', '2023-04-24 21:59:52'),
(85, 'uploads/media_64479d904bce5.JPG', 21, '2023-04-24 21:59:52', '2023-04-24 21:59:52'),
(86, 'uploads/media_64479d904c061.JPG', 21, '2023-04-24 21:59:52', '2023-04-24 21:59:52'),
(87, 'uploads/media_64479d904c3b7.JPG', 21, '2023-04-24 21:59:52', '2023-04-24 21:59:52'),
(88, 'uploads/media_64578eee9f3b4.jpg', 25, '2023-05-07 00:13:42', '2023-05-07 00:13:42'),
(89, 'uploads/media_64578eee9f872.jpg', 25, '2023-05-07 00:13:42', '2023-05-07 00:13:42'),
(90, 'uploads/media_64578eee9fc47.jpg', 25, '2023-05-07 00:13:42', '2023-05-07 00:13:42'),
(91, 'uploads/media_64578eee9ffb3.jpg', 25, '2023-05-07 00:13:42', '2023-05-07 00:13:42'),
(92, 'uploads/media_6458693aae7f9.JPG', 29, '2023-05-07 15:45:06', '2023-05-07 15:45:06'),
(93, 'uploads/media_6458693aaedaf.JPG', 29, '2023-05-07 15:45:06', '2023-05-07 15:45:06'),
(94, 'uploads/media_6458693aaf22c.JPG', 29, '2023-05-07 15:45:06', '2023-05-07 15:45:06'),
(95, 'uploads/media_6458693aaf5e8.JPG', 29, '2023-05-07 15:45:06', '2023-05-07 15:45:06'),
(96, 'uploads/media_6458693aaf9b0.JPG', 29, '2023-05-07 15:45:06', '2023-05-07 15:45:06'),
(97, 'uploads/media_64586db840422.jpg', 33, '2023-05-07 16:04:16', '2023-05-07 16:04:16'),
(98, 'uploads/media_64586db840a25.jpg', 33, '2023-05-07 16:04:16', '2023-05-07 16:04:16'),
(99, 'uploads/media_64586db840e1e.jpg', 33, '2023-05-07 16:04:16', '2023-05-07 16:04:16'),
(100, 'uploads/media_64586db8411ae.jpg', 33, '2023-05-07 16:04:16', '2023-05-07 16:04:16'),
(101, 'uploads/media_64586e2f19e09.jpg', 34, '2023-05-07 16:06:15', '2023-05-07 16:06:15'),
(102, 'uploads/media_64586e2f1a370.jpg', 34, '2023-05-07 16:06:15', '2023-05-07 16:06:15'),
(103, 'uploads/media_64586e2f1a71b.jpg', 34, '2023-05-07 16:06:15', '2023-05-07 16:06:15'),
(104, 'uploads/media_64586e2f1aa9a.jpg', 34, '2023-05-07 16:06:15', '2023-05-07 16:06:15'),
(105, 'uploads/media_64586e2f1aed7.jpg', 34, '2023-05-07 16:06:15', '2023-05-07 16:06:15'),
(106, 'uploads/media_64586ec857382.jpg', 35, '2023-05-07 16:08:48', '2023-05-07 16:08:48'),
(107, 'uploads/media_64586ec857867.jpg', 35, '2023-05-07 16:08:48', '2023-05-07 16:08:48'),
(108, 'uploads/media_64586ec857d1f.jpg', 35, '2023-05-07 16:08:48', '2023-05-07 16:08:48'),
(109, 'uploads/media_64586ec858132.jpg', 35, '2023-05-07 16:08:48', '2023-05-07 16:08:48'),
(110, 'uploads/media_64586ec858544.jpg', 35, '2023-05-07 16:08:48', '2023-05-07 16:08:48'),
(111, 'uploads/media_64586ec858951.jpg', 35, '2023-05-07 16:08:48', '2023-05-07 16:08:48'),
(112, 'uploads/media_64586f31666d2.JPG', 36, '2023-05-07 16:10:33', '2023-05-07 16:10:33'),
(113, 'uploads/media_64586f3166b43.JPG', 36, '2023-05-07 16:10:33', '2023-05-07 16:10:33'),
(114, 'uploads/media_64586f3167003.JPG', 36, '2023-05-07 16:10:33', '2023-05-07 16:10:33'),
(115, 'uploads/media_64586f31673d1.JPG', 36, '2023-05-07 16:10:33', '2023-05-07 16:10:33'),
(116, 'uploads/media_64586f31677be.JPG', 36, '2023-05-07 16:10:33', '2023-05-07 16:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 23, 3, 1, 'good products', '5', 1, '2023-04-29 18:21:02', '2023-04-29 18:21:02'),
(2, 23, 3, 1, 'test review', '4', 0, '2023-04-29 18:22:17', '2023-04-29 21:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_review_galleries`
--

CREATE TABLE `product_review_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_review_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_review_galleries`
--

INSERT INTO `product_review_galleries` (`id`, `product_review_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/media_644e01c65194e.jpg', '2023-04-29 18:21:02', '2023-04-29 18:21:02'),
(2, 2, 'uploads/media_644e02114e15e.jpg', '2023-04-29 18:22:17', '2023-04-29 18:22:17'),
(3, 2, 'uploads/media_644e02114e6d3.png', '2023-04-29 18:22:17', '2023-04-29 18:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(11, 11, 'Color', 1, '2023-05-07 23:23:28', '2023-05-07 23:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `name`, `price`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(14, 11, 'Red', 0, 1, 1, '2023-05-07 23:23:52', '2023-05-07 23:23:52'),
(15, 11, 'Black', 30, 0, 1, '2023-05-07 23:24:07', '2023-05-07 23:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_settings`
--

CREATE TABLE `pusher_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pusher_app_id` varchar(255) NOT NULL,
  `pusher_key` varchar(255) NOT NULL,
  `pusher_secret` varchar(255) NOT NULL,
  `pusher_cluster` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_settings`
--

INSERT INTO `pusher_settings` (`id`, `pusher_app_id`, `pusher_key`, `pusher_secret`, `pusher_cluster`, `created_at`, `updated_at`) VALUES
(1, '1715951', '7e683f71cce89b04bf45', 'ea6436c0db4edcd98c28', 'mt1', '2023-11-28 04:29:44', '2023-11-28 04:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `min_cost` double DEFAULT NULL,
  `cost` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `name`, `type`, `min_cost`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Express Delivery', 'flat_cost', NULL, 50, 1, '2023-04-04 17:43:04', '2023-04-04 19:07:37'),
(3, 'Free Shipping', 'min_cost', 1000, 0, 1, '2023-04-10 19:28:10', '2023-04-10 19:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `starting_price` varchar(255) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `banner`, `type`, `title`, `starting_price`, `btn_url`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(6, 'uploads/media_665bcd5a41a42.png', 'Today Trending', 'Spring Special', '200', 'http://ecommerce.test/admin/slider/create', 1, 1, '2023-03-16 00:36:18', '2024-06-01 20:09:38'),
(7, 'uploads/media_665bc8acd15f8.png', 'New arrivals', 'Kid\'s fashion', '100', 'http://ecommerce.test/admin/slider/create', 2, 1, '2023-03-16 00:37:09', '2024-06-01 19:49:40'),
(8, 'uploads/media_665bc89e38b69.png', 'Hot Deals', 'Women collection', '60', 'http://ecommerce.test/admin/slider/create', 3, 1, '2023-03-16 00:37:45', '2024-06-01 19:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(13, 10, 'Camera', 'camera', 1, '2023-04-24 04:13:34', '2023-04-24 04:13:34'),
(14, 10, 'Laptops', 'laptops', 1, '2023-04-24 04:13:46', '2023-05-06 23:08:57'),
(15, 10, 'Mobile Phones', 'mobile-phones', 1, '2023-04-24 04:14:03', '2024-05-31 22:45:51'),
(17, 10, 'Accessories', 'accessories', 1, '2024-05-31 22:47:11', '2024-05-31 22:47:11'),
(18, 13, 'Kid\'s Clothing', 'kids-clothing', 1, '2024-05-31 22:47:54', '2024-05-31 22:50:39'),
(19, 13, 'Kid\'s Shoes', 'kids-shoes', 1, '2024-05-31 22:48:08', '2024-05-31 22:51:31'),
(20, 13, 'Kid\'s Bags', 'kids-bags', 1, '2024-05-31 22:48:20', '2024-05-31 22:51:18'),
(21, 11, 'Men\'s Clothing', 'mens-clothing', 1, '2024-05-31 22:49:44', '2024-05-31 22:50:50'),
(22, 11, 'Men\'s Accessories', 'mens-accessories', 1, '2024-05-31 22:51:58', '2024-05-31 22:51:58'),
(23, 11, 'Men\'s Shoes', 'mens-shoes', 1, '2024-05-31 22:52:25', '2024-05-31 22:52:25'),
(24, 12, 'Women\'s Clothing', 'womens-clothing', 1, '2024-05-31 22:52:51', '2024-05-31 22:52:51'),
(25, 12, 'Women\'s Accessories', 'womens-accessories', 1, '2024-05-31 22:56:14', '2024-05-31 22:56:14'),
(26, 12, 'Women\'s Shoes', 'womens-shoes', 1, '2024-05-31 22:56:37', '2024-05-31 22:56:37'),
(27, 19, 'Baby\'s Clothing', 'babys-clothing', 1, '2024-05-31 22:57:21', '2024-05-31 22:57:21'),
(28, 19, 'Bath & Grooming', 'bath-grooming', 1, '2024-05-31 22:57:39', '2024-05-31 22:57:39'),
(29, 19, 'Toys', 'toys', 1, '2024-05-31 22:57:53', '2024-05-31 22:57:53'),
(30, 15, 'Fiction Books', 'fiction-books', 1, '2024-05-31 22:58:23', '2024-05-31 22:58:23'),
(31, 15, 'Children\'s Book', 'childrens-book', 1, '2024-05-31 22:58:36', '2024-05-31 23:55:11'),
(32, 20, 'Ruled and Unruled', 'ruled-and-unruled', 1, '2024-05-31 22:58:49', '2024-05-31 23:58:35'),
(33, 17, 'Yoga', 'yoga', 1, '2024-05-31 23:10:52', '2024-05-31 23:10:52'),
(34, 17, 'Badminton', 'badminton', 1, '2024-05-31 23:11:09', '2024-05-31 23:11:09'),
(35, 17, 'Cricket', 'cricket', 1, '2024-05-31 23:11:21', '2024-05-31 23:11:21'),
(36, 14, 'Make-up Things', 'make-up-things', 1, '2024-05-31 23:11:45', '2024-05-31 23:11:59'),
(37, 14, 'Diet & Nutrition', 'diet-nutrition', 1, '2024-05-31 23:12:11', '2024-05-31 23:12:11'),
(38, 16, 'Home Decor', 'home-decor', 1, '2024-05-31 23:12:54', '2024-05-31 23:12:54'),
(39, 16, 'Storage and Containers', 'storage-and-containers', 1, '2024-05-31 23:13:10', '2024-05-31 23:16:20'),
(40, 16, 'Furniture', 'furniture', 1, '2024-05-31 23:13:22', '2024-05-31 23:13:22'),
(41, 18, 'Car', 'car', 1, '2024-05-31 23:14:43', '2024-05-31 23:14:50'),
(42, 18, 'Motorbike', 'motorbike', 1, '2024-05-31 23:15:05', '2024-05-31 23:15:05'),
(43, 18, 'Parts', 'parts', 1, '2024-05-31 23:15:20', '2024-05-31 23:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `amount_real_currency` double NOT NULL,
  `amount_real_currency_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_method`, `amount`, `amount_real_currency`, `amount_real_currency_name`, `created_at`, `updated_at`) VALUES
(7, 7, '61L47556S35664905', 'paypal', 3000, 3000, 'USD', '2023-04-29 17:30:06', '2023-04-29 17:30:06'),
(11, 11, '6HC57725K9940524A', 'paypal', 510, 510, 'USD', '2023-05-07 23:03:54', '2023-05-07 23:03:54'),
(12, 12, '4VJ41701BM666020N', 'paypal', 100, 100, 'USD', '2023-09-26 17:59:11', '2023-09-26 17:59:11'),
(13, 13, '19055593G6600102Y', 'paypal', 39040, 39040, 'USD', '2024-06-04 04:10:09', '2024-06-04 04:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `phone`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin user123', 'adminuser', '/uploads/1160885760_photo-1628563694622-5a76957fd09c.jpeg', NULL, 'admin@gmail.com', 'admin', 'active', NULL, '$2y$10$WqWy1DLHyv6peYHrZjDude/RVKXCEvvEpmkWJv.Qjpq1Tgt3.3mXC', 'GlgIXckKUV2nOZz3QFe14WIBf0XwcnTZTXFTq0PMhvRJTwnGLH5qZDDiGs5p', NULL, '2024-06-01 02:41:01'),
(2, 'Vendor', 'vendoruser', 'uploads/1962076306_365-3650435_men-wear1-mens-wear-model-png.png', NULL, 'vendor@gmail.com', 'vendor', 'active', NULL, '$2y$10$FsDMmEhTSpJ8dXOIZ4wKvOeZKIKgDPsWjXhQ/sk8/7S59x72JA4E6', NULL, NULL, '2024-05-31 06:40:23'),
(3, 'Alice', 'user', 'uploads/2138622900_profile-pic(21)(1).png', NULL, 'user@gmail.com', 'user', 'active', NULL, '$2y$10$tmEjA2Oge.Rpmbhd/A8ImuY/iKz6gIv1sEoC7DVDIFzzc2BOWqGL2', 'IQMIOez0xgPmPX7JqtmwTrIgHEPNUXMQYsdf4lVVtm1zSwJazzrpY6EOJEOH', NULL, '2024-05-31 02:02:11'),
(4, 'test user', NULL, NULL, NULL, 'testuser@gmail.com', 'user', 'active', NULL, '$2y$10$LOuKX3hW/e3BZks78gwkseSZcFv9dposqqGpKbnnoEHyEhv64WnTq', NULL, '2023-02-26 20:33:19', '2023-04-30 22:30:43'),
(6, 'seller', NULL, NULL, NULL, 'seller@gmail.com', 'vendor', 'active', NULL, '$2y$10$rdKu.8vdImqKoGudaOm3OOznu36b77PlxizUvPGau62jcY1Pg4NWe', NULL, '2023-04-30 17:54:41', '2023-04-30 22:04:30'),
(7, 'seller 2', NULL, NULL, NULL, 'seller2@gmail.com', 'vendor', 'active', NULL, '$2y$10$jDvi1GbTLPqOkkqiD9NN3O1QOxk/E9P1nRYRcTqXd.bXLwFOzZo7O', NULL, '2023-04-30 19:27:38', '2023-05-07 23:38:21'),
(8, 'new user', NULL, NULL, NULL, 'newUser@gmail.com', 'user', 'active', NULL, '$2y$10$tRNZhJ4Z3PterH5GhQ8YjeiwwHRROSsqpbpqc9mzooALrT7VvvLhi', NULL, '2023-05-01 20:10:59', '2023-05-01 20:10:59'),
(10, 'User 234', NULL, NULL, NULL, 'user123@gmail.com', 'user', 'active', NULL, '$2y$10$d1jl/ucdr0Lk.fI90jj8UeH.vuygxdmcTo9QFKW1tI7c6WpsqJTAu', NULL, '2023-05-01 20:28:10', '2023-05-07 23:37:51'),
(11, 'Jhone Deo', NULL, NULL, NULL, 'jhonedeo@gmail.com', 'user', 'active', NULL, '$2y$10$CtbZ4DyWF1FobUm/lmTnUOmprguZC9bOrqT8U0Ez7rhd.uZi6JWJ.', NULL, '2023-09-26 16:59:56', '2024-05-30 04:28:04'),
(12, 'Mama Earth', NULL, 'uploads/1782459304_IMG_3607-1.png', NULL, 'mamaearth@gmail.com', 'user', 'active', NULL, '$2y$10$ELC7Sg8K1.XRDT8mG5WzUO0kISNIGKP79gh.3NnxTjd0HI7YxtR3K', NULL, '2024-05-30 06:10:51', '2024-05-31 08:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country`, `state`, `city`, `zip`, `address`, `created_at`, `updated_at`) VALUES
(2, 3, 'Erasmus Hutchinson', 'user@gmail.com', '+1 (448) 117-4101', 'United States', 'California', 'California', '64842', 'Ipsum ad in accusamu', '2023-04-04 23:15:24', '2023-04-04 23:15:24'),
(3, 3, 'Jhon Deo', 'test@gmail.com', '+8801960000000', 'United States', 'test', 'California', '423432', '1731 Arbor Court Rawlins, WY 82301', '2023-04-10 17:58:49', '2023-04-10 17:58:49'),
(4, 3, 'Neville Valencia', 'cibev@mailinator.com', '+1 (912) 321-1981', 'Liberia', 'Dolor nisi nulla deb', 'Tempore et quo irur', '19380', 'Minima et id dolores', '2023-04-10 18:44:53', '2023-04-10 18:44:53'),
(5, 3, 'Tobias Oneil', 'juheg@mailinator.com', '+1 (695) 824-3125', 'Korea, North', 'Laboris proident qu', 'Officia molestiae ob', '423432', 'Voluptas consequatur', '2023-04-10 18:49:38', '2023-04-10 18:49:38'),
(6, 11, 'Jhone Deo', 'jhonedeo@gmail.com', '+1 (106) 882-8138', 'United States', 'test', 'California', '423432', '7232 Broadway Suite 308, Jackson Heights, 11372, NY, United States', '2023-09-26 17:00:36', '2023-09-26 17:00:36'),
(7, 2, 'vendor', 'sd@gmail.com', '9765431234', 'Afghanistan', 'asfaf', 'sdg', '2345', 'sf', '2024-05-31 06:22:20', '2024-05-31 06:22:20'),
(8, 1, 'Admin H', 'admin@gmail.com', '987654312', 'India', 'Tamilnadu', 'Thanjavur', '613204', '437, Punalvasal', '2024-06-04 03:46:32', '2024-06-04 03:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `fb_link` text DEFAULT NULL,
  `tw_link` text DEFAULT NULL,
  `insta_link` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `banner`, `phone`, `email`, `address`, `description`, `fb_link`, `tw_link`, `insta_link`, `user_id`, `created_at`, `updated_at`, `shop_name`, `status`) VALUES
(1, 'uploads/media_64588c2960e13.jpg', '+8801960000000', 'admin@gmail.com', 'Usa', '<p>test descdescription&nbsp;<br></p>', 'https://www.facebook.com/', NULL, NULL, 1, '2023-03-20 17:51:13', '2023-05-07 18:14:09', 'Admin Shop', 1),
(2, 'uploads/media_6658751214c2f.png', '9876543215', 'vendor@gmail.com', 'Usa', 'is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing', 'https://www.vendor.com/', NULL, NULL, 2, '2023-03-27 16:59:17', '2024-05-30 07:16:10', 'Vendor shop', 1),
(3, 'uploads/media_64588cfc32607.jpg', '+1 (125) 132-4566', 'belij@mailinator.com', 'Iure qui rem quia qu', 'is simply dummy text of the printing and typesetting industry. Lorem \r\nIpsum has been the industry\'s standard dummy text ever since the 1500s, \r\nwhen an unknown printer took a galley of type and scrambled it to make a\r\n type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. \r\nIt was popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing', NULL, NULL, NULL, 6, '2023-04-30 17:57:58', '2023-05-07 18:17:40', 'TopSHop', 1),
(4, 'uploads/media_64588d2172aef.jpg', '23423423412', 'test@gmail.com', 'usa', 'is simply dummy text of the printing and typesetting industry. Lorem \r\nIpsum has been the industry\'s standard dummy text ever since the 1500s, \r\nwhen an unknown printer took a galley of type and scrambled it to make a\r\n type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. \r\nIt was popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing', NULL, NULL, NULL, 7, '2023-04-30 19:36:09', '2023-05-07 18:18:17', 'Daily Need', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_conditions`
--

CREATE TABLE `vendor_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_conditions`
--

INSERT INTO `vendor_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>Vendor Terms and Conditions</h3><p>Lorem Ipsum is simply dummy text of \r\nthe printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book.</p><p></p>', '2023-04-30 22:58:03', '2023-04-30 23:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `minimum_amount` double NOT NULL,
  `maximum_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `minimum_amount`, `maximum_amount`, `withdraw_charge`, `description`, `created_at`, `updated_at`) VALUES
(2, 'BANK', 100, 1000, 10, '<p>Please provide your Bank Account information :&nbsp;</p>\r\n\r\n<p>Bank Name: Your bank name</p>\r\n\r\n<p><span style=\"background-color:transparent;\">Account Number:&nbsp; Your bank account number</span></p>\r\n\r\n<p>Routing Number: Your bank routing number</p>\r\n\r\n<p>Branch: Your bank branch name</p><p></p>', '2023-09-23 21:46:58', '2023-09-23 21:46:58'),
(3, 'Paypal', 100, 1000, 10, '<p>Please provide your Paypal Email address<br></p>', '2023-09-23 21:49:03', '2023-09-23 21:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `status` enum('pending','paid','decline') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `vendor_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'BANK', 100, 90, 10, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 'paid', '2023-09-24 17:10:47', '2023-09-25 17:48:45'),
(2, 2, 'Paypal', 100, 90, 10, 's', 'pending', '2024-05-31 06:42:36', '2024-05-31 06:42:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverisements`
--
ALTER TABLE `adverisements`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_socials`
--
ALTER TABLE `footer_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_titles`
--
ALTER TABLE `footer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_settings`
--
ALTER TABLE `logo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paypal_settings`
--
ALTER TABLE `paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_requests_vendor_id_foreign` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adverisements`
--
ALTER TABLE `adverisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_socials`
--
ALTER TABLE `footer_socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_titles`
--
ALTER TABLE `footer_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo_settings`
--
ALTER TABLE `logo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `paypal_settings`
--
ALTER TABLE `paypal_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD CONSTRAINT `withdraw_requests_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
