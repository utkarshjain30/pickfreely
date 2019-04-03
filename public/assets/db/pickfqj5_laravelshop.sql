-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2019 at 03:05 PM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pickfqj5_laravelshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `product`, `created_at`, `updated_at`, `mobile_image`) VALUES
(3, 'slide3', 'banners\\December2018\\qZWORRxHFtLBaxEdozgr.jpg', 3, '2018-12-30 04:50:00', '2019-01-12 20:50:19', 'banners/January2019/QG942PwcNhuhcA39iVbx.jpg'),
(7, 'slide3', 'banners/January2019/kfwg0DTDYPi0ECTd0GKT.jpg', 1, '2019-01-05 17:41:00', '2019-01-12 20:49:41', 'banners/January2019/osfy8iSGsnQCUcxnZGD0.jpg'),
(8, 'LAKME', 'banners/January2019/PFXyhVZASxmvoNzAXojR.jpg', 1, '2019-01-05 17:43:00', '2019-01-12 20:50:00', 'banners/January2019/lKLwS5cUKdxgy4mmyU1p.jpg'),
(9, 'slide 4', 'banners/January2019/JxbW8wOveqY8TFGpNwhL.png', 3, '2019-01-07 05:14:00', '2019-01-12 20:49:03', 'banners/January2019/B20ZddTvaAHd2gQBXnra.jpg'),
(10, 'lotus herbal', 'banners/January2019/R1ZanOQr6cmYEPSJOJFo.jpg', 1, '2019-01-07 05:15:00', '2019-01-12 20:48:37', 'banners/January2019/GTTWf2XJOs1y8nSWqRyy.jpg'),
(11, 'Welcome offer', 'banners/January2019/tAVeJ5xly6EolxhcEAlc.jpg', 3, '2019-01-08 04:26:00', '2019-01-12 20:48:07', 'banners/January2019/JKFUW7PXwZeYDYLJ8x5u.jpg'),
(12, 'LAKME', 'banners/January2019/80WrAvNTquARbA0FYFUo.png', 3, '2019-01-08 17:38:00', '2019-01-12 20:47:46', 'banners/January2019/2GGluKEtMB7uy0lQNrEP.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_at`, `updated_at`, `banner_image`) VALUES
(1, 'Loreal', 'brands\\December2018\\2e4VOyUtq8kOfJrf8wMF.png', '2018-12-29 12:43:19', '2018-12-29 12:43:19', NULL),
(2, 'Himalaya', 'brands\\December2018\\lPnwgZfIstxcoMclNZPx.png', '2018-12-29 12:43:47', '2018-12-29 12:43:47', NULL),
(3, 'Lakme', 'brands\\December2018\\Wxbu3HTi65GJAWyaPFJt.png', '2018-12-29 12:44:26', '2018-12-29 12:44:26', NULL),
(4, 'Revon', 'brands\\December2018\\RPMwCgqhdwlQ2u9131jy.png', '2018-12-29 12:44:50', '2018-12-29 12:44:50', NULL),
(5, 'NYX', 'brands\\December2018\\ZtwizOu8SJGCnROzrui1.png', '2018-12-29 12:48:31', '2018-12-29 12:48:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_categories`
--

CREATE TABLE `cosmetic_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetic_categories`
--

INSERT INTO `cosmetic_categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Makeup', '<p>Contains makeup categories</p>', NULL, '2018-12-28 12:27:00', '2019-01-12 17:09:29'),
(2, 'Skin', '<p>contains Skin categories</p>', NULL, '2018-12-28 12:28:00', '2019-01-12 17:09:13'),
(3, 'Hair', '<p>contains hairs categories</p>', NULL, '2018-12-28 12:28:00', '2019-01-12 17:08:56'),
(4, 'Appliances', '<p>contains appliances categories</p>', NULL, '2018-12-28 12:29:00', '2019-01-12 17:08:35'),
(5, 'Nail', NULL, NULL, '2019-01-17 12:27:12', '2019-01-17 12:27:12'),
(6, 'Hair sampoo', NULL, NULL, '2019-01-25 16:36:07', '2019-01-25 16:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_main_categories`
--

CREATE TABLE `cosmetic_main_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetic_main_categories`
--

INSERT INTO `cosmetic_main_categories` (`id`, `category_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'face', 'Contains face categories', NULL, '2018-12-28 13:00:39', '2018-12-28 13:00:39'),
(2, 1, 'eye', 'contains eye categories', NULL, '2018-12-28 13:01:22', '2018-12-28 13:01:22'),
(3, 2, 'lip care', 'contains lip care categories', NULL, '2018-12-28 13:02:38', '2018-12-28 13:02:38'),
(4, 2, 'body', 'contains body care categores', NULL, '2018-12-28 13:03:18', '2018-12-28 13:03:18'),
(5, 5, 'Nail Wear', NULL, NULL, '2019-01-17 12:28:12', '2019-01-17 12:28:12'),
(6, 3, 'Hair Color And Creme', NULL, NULL, '2019-01-24 10:18:12', '2019-01-24 10:18:12'),
(7, 3, 'hair sampoo', NULL, NULL, '2019-01-25 16:37:19', '2019-01-25 16:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_sub_categories`
--

CREATE TABLE `cosmetic_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetic_sub_categories`
--

INSERT INTO `cosmetic_sub_categories` (`id`, `main_category_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'face primer', 'Contains face primer products', NULL, '2018-12-28 13:43:20', '2018-12-28 13:43:20'),
(2, '1', 'Foundation', 'Contains foundation products', NULL, '2018-12-28 13:47:45', '2018-12-28 13:47:45'),
(3, '2', 'kajal', NULL, NULL, '2018-12-28 13:48:21', '2018-12-28 13:48:21'),
(4, '3', 'LipStick', NULL, NULL, '2018-12-28 13:49:01', '2018-12-28 13:49:01'),
(5, '1', 'face powder', 'contains face powder', NULL, '2019-01-08 04:15:57', '2019-01-08 04:15:57'),
(6, '1', 'Concealer', 'contains face concealers', NULL, '2019-01-08 04:16:20', '2019-01-08 04:16:20'),
(7, '2', 'Mascara', 'contains eye mascara', NULL, '2019-01-08 04:16:53', '2019-01-08 04:16:53'),
(8, '3', 'Lip gloss', 'contains lip gloss', NULL, '2019-01-08 04:17:21', '2019-01-08 04:17:21'),
(9, '1', 'Cream', 'contains creme for face', NULL, '2019-01-08 04:18:00', '2019-01-08 04:20:11'),
(10, '1', 'Facewash', 'contains face wash', NULL, '2019-01-08 04:18:58', '2019-01-08 04:18:58'),
(11, '1', 'gel', 'moisturizing gel', NULL, '2019-01-08 04:41:02', '2019-01-08 04:41:02'),
(12, '5', 'Nail polish', NULL, NULL, '2019-01-17 12:29:40', '2019-01-17 12:29:40'),
(13, '6', 'Hair Color', NULL, NULL, '2019-01-24 10:39:00', '2019-01-24 10:39:00'),
(14, '7', 'hair sampoo', NULL, NULL, '2019-01-25 16:41:48', '2019-01-25 16:41:48'),
(15, '7', 'loreal sampoo', NULL, NULL, '2019-01-25 16:43:35', '2019-01-25 16:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sayed akhtar', 'sayed182@gmail.com', '2019-01-10 09:31:43', '$2y$10$0JOL551W2FRm4ZDhLK3/Ze/9hhazjaD.5YcXxGwud3d1b6k5ZcyFu', '9QNEHYKHdagYp0R28DpXAeJ2ZvnibQJPtegbrYyBcsvXZyRPNgsstXiOhkmu', '2019-01-02 02:39:37', '2019-01-10 09:31:43'),
(4, 'test', 'test@test.com', NULL, '$2y$10$MLRlaRqIwCmlpN7OdcZ0mOLL/lds8FX74BNjfo5NvX/OXRRmeIVfC', 'QrRKNpeaUHKPubiDZdr37ZVoP6pqoTs3QJSbxwl00eHgof9Jqwr1xtZG6JJl', '2019-01-05 20:18:26', '2019-01-05 20:18:26'),
(5, 'test', 'mailhostingserver@gmail.com', NULL, '$2y$10$QOYjNOeq4XZN6xiBl5lYkeoGB.tBTN/bG6.1U0mq1XGpPN0NvTRfm', NULL, '2019-01-07 05:55:50', '2019-01-07 05:55:50'),
(6, 'test', 'test@tt.com', '2019-01-10 11:25:33', '$2y$10$C2ZbZXx0kgapEdUOncy.2.FwfHcAI5VMJrNwcbfiTCQWfvnddfAUe', 'USEVNs5cOqZIjn7RXzgoCvzGR929lvtE0Dp6d39ToifFroDxNz3ZGKxrkygF', '2019-01-10 11:25:33', '2019-01-10 11:25:33'),
(7, 'Rajiv Pugalia', 'rajivmdj@gmail.com', '2019-01-10 16:43:56', '$2y$10$eaPoGhorBg2R6f2rxCbiDOM2DLe8Z2gzX56SALPweNQcjH9T5M4Fu', 'DPDTdZcQL3a1qNUJm8lZVRJh7S5SEi7nYlPfZtC10rvSOh3Hjf6pzvB4oYQv', '2019-01-10 15:06:41', '2019-01-10 16:43:56'),
(8, 'test', 'test@gmail.com', NULL, '$2y$10$KO5O1VwefUP1nY0k69wOw.tn..w3HHXEuEyXFYEXrAgV5bFiQ4Mam', NULL, '2019-01-12 20:47:53', '2019-01-12 20:47:53'),
(9, 'test', 'test8@test.com', NULL, '$2y$10$khUZH3R9hvJFBkVRjwNPI.1yk0EOG6GO7ltpUqVTDthzXYDe.8GnK', NULL, '2019-01-25 18:55:53', '2019-01-25 18:55:53'),
(10, 'new', 'gehod@utooemail.com', '2019-01-25 19:21:27', '$2y$10$6X00jcUrxABjVodK2sOJ4uxnBIFmqQIuqNwXojNBdiZiXR92dxO1W', NULL, '2019-01-25 19:21:04', '2019-01-25 19:21:27'),
(11, 'Narayan Shaw', 'narayan.shaw254@gmail.com', NULL, '$2y$10$BWnLlEwcFqDYUQlU7eqDGubw9w7eVJ61EaHCT0ftzRlfiMzhetZRa', NULL, '2019-02-18 11:51:12', '2019-02-18 11:51:12'),
(12, 'Deepak Goyal', 'deepakgl881@gmail.com', '2019-02-26 12:50:17', '$2y$10$4VK2x2Gkl5e8TIK8fk4Ehee3uAZtjut24OB3DN2trTmEObM3WYVwG', 'X5tpr8kdYakO0jIlZX48nggkinrF8M8pyBxppk4A0ZKGlY2JTtaIdU7khOiO', '2019-02-26 06:41:35', '2019-02-26 12:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `customers_infos`
--

CREATE TABLE `customers_infos` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_infos`
--

INSERT INTO `customers_infos` (`customer_id`, `name`, `address`, `phone`, `email`, `orders`, `image`, `created_at`, `updated_at`, `zip_code`, `city`, `state`) VALUES
(1, 'SAYED Akhtar', '52,nando ghosh road', 7602121828, 'sayed182@gmail.com', NULL, NULL, NULL, '2019-01-21 12:19:21', '711101', 'Howrah', 'West Bengal'),
(4, 'Test Person', 'Test test test, TEST-00000', 0, '', NULL, NULL, '2019-01-08 10:40:10', '2019-01-08 10:40:10', NULL, NULL, NULL),
(6, 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari', 7602121828, 'sayed182@gmail.com', NULL, NULL, '2019-01-10 11:25:33', '2019-01-10 11:28:53', NULL, NULL, NULL),
(7, 'Rajiv Pugalia', 'F24/192 Rohini sector 3', 9831628002, 'rajivmdj@gmail.com', NULL, NULL, '2019-01-10 15:06:41', '2019-01-10 16:46:50', NULL, NULL, NULL),
(8, 'test', NULL, NULL, 'test@gmail.com', NULL, NULL, '2019-01-12 20:47:53', '2019-01-12 20:47:53', NULL, NULL, NULL),
(9, 'test', NULL, NULL, 'test8@test.com', NULL, NULL, '2019-01-25 18:55:52', '2019-01-25 18:55:52', NULL, NULL, NULL),
(10, 'new', NULL, NULL, 'gehod@utooemail.com', NULL, NULL, '2019-01-25 19:21:27', '2019-01-25 19:21:27', NULL, NULL, NULL),
(11, 'Deepak Goyal', NULL, NULL, 'deepakgl881@gmail.com', NULL, NULL, '2019-02-26 12:50:17', '2019-02-26 12:50:17', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(59, 13, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 9),
(61, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(62, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(63, 16, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 16, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(68, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 17, 'category_id', 'select_dropdown', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(72, 17, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(73, 17, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(74, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(77, 17, 'cosmetic_main_category_belongstomany_cosmetic_category_relationship', 'relationship', 'cosmetic_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\cosmetic_categories\",\"table\":\"cosmetic_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cosmetic_categories\",\"pivot\":\"0\",\"taggable\":\"on\"}', 3),
(85, 18, 'cosmetic_sub_cetegory_belongsto_cosmetic_main_category_relationship', 'relationship', 'cosmetic_main_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\cosmetic_main_categories\",\"table\":\"cosmetic_main_categories\",\"type\":\"belongsTo\",\"column\":\"main_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cosmetic_categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(88, 13, 'category', 'text', 'Category', 0, 1, 1, 1, 1, 1, '{}', 13),
(89, 13, 'main_category', 'text', 'Main Category', 0, 1, 1, 1, 1, 1, '{}', 14),
(90, 13, 'sub_category', 'text', 'Sub Category', 0, 1, 1, 1, 1, 1, '{}', 15),
(91, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 23, 'main_category_id', 'text', 'Main Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 23, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(94, 23, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(95, 23, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(96, 23, 'cosmetic_sub_category_belongsto_cosmetic_main_category_relationship', 'relationship', 'cosmetic_main_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\cosmetic_main_categories\",\"table\":\"cosmetic_main_categories\",\"type\":\"belongsTo\",\"column\":\"main_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cosmetic_categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(98, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(99, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(100, 13, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 8),
(101, 13, 'feature_image', 'image', 'Feature Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(102, 13, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 12),
(103, 26, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 26, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 26, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"865\",\"height\":\"250\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(106, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(107, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(108, 13, 'product_belongsto_brand_relationship', 'relationship', 'brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\brand\",\"table\":\"brands\",\"type\":\"belongsTo\",\"column\":\"brand\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(109, 13, 'brand', 'text', 'Brand', 0, 1, 1, 1, 1, 1, '{}', 7),
(110, 29, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(111, 29, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(112, 29, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1370\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true}', 3),
(113, 29, 'product', 'number', 'Product', 0, 1, 1, 1, 1, 1, '{}', 4),
(114, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(115, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(116, 29, 'banner_belongsto_brand_relationship', 'relationship', 'brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\brand\",\"table\":\"brands\",\"type\":\"belongsTo\",\"column\":\"product\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(117, 30, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 30, 'name', 'text', 'Name', 1, 1, 0, 0, 0, 1, '{}', 2),
(119, 30, 'email', 'text', 'Email', 1, 1, 0, 0, 0, 1, '{}', 3),
(120, 30, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 4),
(121, 30, 'password', 'text', 'Password', 1, 1, 1, 0, 0, 1, '{}', 5),
(122, 30, 'remember_token', 'text', 'Remember Token', 0, 1, 1, 0, 0, 1, '{}', 6),
(123, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(124, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(125, 32, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(126, 32, 'customer_id', 'number', 'Customer Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(127, 32, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(128, 32, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(129, 32, 'payment_method', 'text', 'Payment Method', 0, 1, 1, 1, 1, 1, '{}', 7),
(130, 32, 'payment_status', 'checkbox', 'Payment Status', 0, 1, 1, 0, 0, 1, '{}', 8),
(131, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(132, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(134, 32, 'order_hasmany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(135, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(136, 33, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(137, 33, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(138, 33, 'quantity', 'text', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 4),
(139, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(140, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(141, 33, 'ordered_product_belongsto_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsToMany\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(142, 33, 'ordered_product_belongstomany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders\",\"pivot\":\"1\",\"taggable\":\"0\"}', 8),
(143, 32, 'order_hasone_customer_relationship', 'relationship', 'customers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(144, 32, 'total_price', 'number', 'Total Price', 0, 1, 1, 1, 1, 1, '{}', 13),
(145, 32, 'name', 'text', 'Name', 0, 1, 1, 0, 0, 1, '{}', 6),
(146, 13, 'featured', 'checkbox', 'Featured', 0, 1, 1, 1, 1, 1, '{\"on\":\"1\",\"off\":\"0\",\"checked\":\"fasle\"}', 13),
(147, 34, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(148, 34, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(149, 34, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 19),
(150, 34, 'feature_image', 'image', 'Feature Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(151, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(152, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(153, 34, 'category', 'text', 'Category', 0, 1, 1, 1, 1, 1, '{}', 7),
(154, 34, 'main_category', 'text', 'Main Category', 0, 1, 1, 1, 1, 1, '{}', 9),
(155, 34, 'sub_category', 'text', 'Sub Category', 0, 1, 1, 1, 1, 1, '{}', 12),
(156, 34, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 14),
(157, 34, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 16),
(158, 34, 'brand', 'text', 'Brand', 0, 1, 1, 1, 1, 1, '{}', 13),
(159, 34, 'featured', 'checkbox', 'Featured', 0, 1, 1, 1, 1, 1, '{\"on\":\"Featured\",\"off\":\"Not Featured\",\"checked\":\"false\"}', 17),
(161, 34, 'discount', 'number', 'Discount', 0, 1, 1, 1, 1, 1, '{}', 18),
(162, 34, 'product_belongsto_cosmetic_category_relationship', 'relationship', 'cosmetic_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\cosmetic_categories\",\"table\":\"cosmetic_categories\",\"type\":\"belongsTo\",\"column\":\"category\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(163, 34, 'product_belongsto_cosmetic_main_category_relationship', 'relationship', 'cosmetic_main_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\cosmetic_main_categories\",\"table\":\"cosmetic_main_categories\",\"type\":\"belongsTo\",\"column\":\"main_category\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(164, 34, 'product_belongsto_cosmetic_sub_category_relationship', 'relationship', 'cosmetic_sub_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\cosmetic_sub_categories\",\"table\":\"cosmetic_sub_categories\",\"type\":\"belongsTo\",\"column\":\"sub_category\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(165, 34, 'stocks', 'number', 'Stocks', 0, 1, 1, 1, 1, 1, '{}', 15),
(166, 32, 'order_id', 'text', 'Order Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(167, 32, 'mobile', 'text', 'Mobile', 0, 1, 1, 1, 1, 1, '{}', 10),
(168, 32, 'transac_id', 'text', 'Transac Id', 0, 1, 1, 1, 1, 1, '{}', 15),
(169, 32, 'completed', 'text', 'Completed', 0, 1, 1, 1, 1, 1, '{}', 17),
(170, 32, 'quantity', 'text', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 18),
(171, 35, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(172, 35, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(173, 35, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(174, 35, 'feature_image', 'image', 'Feature Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(175, 35, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 5),
(176, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(177, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(179, 36, 'customer_id', 'hidden', 'Customer Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(180, 36, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(181, 36, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 4),
(182, 36, 'phone', 'number', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(183, 36, 'orders', 'text', 'Orders', 0, 1, 1, 1, 1, 1, '{}', 6),
(184, 36, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(185, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(186, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(187, 36, 'customers_info_hasone_customer_relationship', 'relationship', 'customers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(188, 32, 'product_quantity', 'text', 'Product Quantity', 0, 1, 1, 1, 1, 1, '{}', 9),
(189, 36, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(190, 40, 'customer_id', 'number', 'Customer Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(191, 40, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(192, 40, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(193, 40, 'phone', 'number', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(194, 40, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(195, 40, 'orders', 'text', 'Orders', 0, 1, 1, 1, 1, 1, '{}', 6),
(196, 40, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(197, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(198, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(199, 34, 'product_belongsto_brand_relationship_1', 'relationship', 'brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Brand\",\"table\":\"brands\",\"type\":\"belongsTo\",\"column\":\"brand\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(200, 29, 'mobile_image', 'image', 'Mobile Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"name\":\"cropped\",\"crop\":{\"width\":\"400\",\"height\":\"400\"}}', 7),
(201, 53, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(202, 53, 'status_id', 'number', 'Status Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(203, 53, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 3),
(204, 53, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(205, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(206, 32, 'order_belongsto_delivery_status_relationship', 'relationship', 'delivery_statuses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\DeliveryStatus\",\"table\":\"delivery_statuses\",\"type\":\"belongsTo\",\"column\":\"completed\",\"key\":\"status\",\"label\":\"status\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(207, 54, 'customer_id', 'number', 'Customer Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(208, 54, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(209, 54, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(210, 54, 'phone', 'number', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(211, 54, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(212, 54, 'orders', 'text', 'Orders', 0, 1, 1, 1, 1, 1, '{}', 6),
(213, 54, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(214, 54, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(215, 54, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(216, 32, 'cancelled', 'checkbox', 'Cancelled', 0, 1, 1, 1, 1, 1, '{\"on\":\"ORDER CANCELLED\",\"off\":\"ORDER PLACED\",\"checked\":\"false\"}', 17),
(217, 26, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-12-27 22:54:49', '2018-12-27 22:54:49'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-12-27 22:54:50', '2018-12-27 22:54:50'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-12-27 22:54:50', '2018-12-27 22:54:50'),
(12, 'product', 'product', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-28 12:07:45', '2018-12-28 12:07:45'),
(15, 'cosmetic_category', 'cosmetic-category', 'Cosmetic Category', 'Cosmetic Categories', NULL, 'App\\cosmetic_category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-28 12:21:51', '2018-12-28 12:21:51'),
(16, 'cosmetic_categories', 'cosmetic-categories', 'Cosmetic Category', 'Cosmetic Categories', NULL, 'App\\cosmetic_categories', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-28 12:23:43', '2019-01-05 07:28:51'),
(17, 'cosmetic_main_categories', 'cosmetic-main-categories', 'Cosmetic Main Category', 'Cosmetic Main Categories', 'voyager-categories', 'App\\cosmetic_main_categories', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-28 12:38:07', '2019-01-05 08:19:32'),
(18, 'cosmetic_sub_cetegories', 'cosmetic-sub-categories', 'Cosmetic Sub Category', 'Cosmetic Sub Categories', NULL, 'App\\cosmetic_sub_categories', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-28 13:07:05', '2018-12-28 13:22:58'),
(23, 'cosmetic_sub_categories', 'cosmetic-sub-category', 'Cosmetic Sub Category', 'Cosmetic Sub Categories', NULL, 'App\\cosmetic_sub_categories', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-28 13:30:56', '2019-01-05 07:28:36'),
(25, 'brand', 'brand', 'Brand', 'Brands', NULL, 'App\\brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-29 12:35:04', '2018-12-29 12:38:39'),
(26, 'brands', 'brands', 'Brand', 'Brands', NULL, 'App\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-29 12:41:23', '2019-01-14 20:13:39'),
(29, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banners', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-30 04:40:30', '2019-01-12 20:47:00'),
(30, 'customers', 'customers', 'Customer', 'Customers', NULL, 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-02 03:47:25', '2019-01-02 03:47:25'),
(32, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2019-01-02 03:54:19', '2019-01-12 11:07:44'),
(33, 'ordered_product', 'ordered-product', 'Ordered Product', 'Ordered Products', NULL, 'App\\ordered_product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-02 04:25:33', '2019-01-02 04:39:38'),
(34, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-05 08:32:21', '2019-01-12 17:28:17'),
(35, 'pages', 'pages', 'Page', 'Pages', NULL, 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-07 11:24:22', '2019-01-07 11:24:22'),
(52, 'delivery_status', 'delivery-status', 'Delivery Status', 'Delivery Statuses', NULL, 'App\\DeliveryStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-11 19:21:05', '2019-01-11 19:21:05'),
(53, 'delivery_statuses', 'delivery-statuses', 'Delivery Status', 'Delivery Statuses', NULL, 'App\\DeliveryStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-11 19:22:57', '2019-01-11 19:22:57'),
(54, 'customers_infos', 'customers-infos', 'Customers Info', 'Customers Infos', NULL, 'App\\CustomersInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-11 19:35:51', '2019-01-11 19:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_statuses`
--

CREATE TABLE `delivery_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_statuses`
--

INSERT INTO `delivery_statuses` (`id`, `status_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Order Placed', '2019-01-11 19:25:01', '2019-01-11 19:25:01'),
(2, 1, 'Order Shipped', '2019-01-11 19:25:37', '2019-01-11 19:25:37'),
(4, 2, 'Order Delivered', '2019-01-11 19:26:00', '2019-01-11 19:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-12-27 22:54:51', '2018-12-27 22:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-12-27 22:54:51', '2018-12-27 22:54:51', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2018-12-27 22:54:52', '2018-12-29 12:49:56', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2018-12-27 22:54:52', '2018-12-29 12:49:59', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 8, '2018-12-27 22:54:52', '2018-12-29 12:49:56', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 2, '2018-12-27 22:54:52', '2018-12-28 13:27:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-12-27 22:54:52', '2018-12-28 12:32:13', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-12-27 22:54:52', '2018-12-28 12:32:30', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-12-27 22:54:52', '2018-12-28 12:32:30', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-12-27 22:54:52', '2018-12-28 12:32:30', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2018-12-27 22:54:52', '2018-12-29 12:49:56', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2018-12-27 22:55:01', '2018-12-29 12:49:56', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 11, '2018-12-27 22:55:04', '2018-12-29 12:49:59', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 9, '2018-12-27 22:55:06', '2018-12-29 12:49:56', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-12-27 22:55:09', '2018-12-28 12:32:30', 'voyager.hooks', NULL),
(18, 1, 'Products', '', '_self', NULL, NULL, NULL, 5, '2018-12-28 12:13:13', '2018-12-29 12:49:56', 'voyager.products.index', NULL),
(20, 1, 'Cosmetic Categories', '', '_self', NULL, NULL, 11, 1, '2018-12-28 12:23:44', '2018-12-28 12:32:30', 'voyager.cosmetic-categories.index', NULL),
(21, 1, 'Cosmetic Main Categories', '', '_self', NULL, NULL, 11, 2, '2018-12-28 12:38:07', '2018-12-29 12:49:59', 'voyager.cosmetic-main-categories.index', NULL),
(24, 1, 'Cosmetic Sub Categories', 'admin/cosmetic-sub-category', '_self', 'voyager-categories', '#000000', 11, 3, '2018-12-28 13:47:07', '2018-12-29 12:49:59', NULL, ''),
(26, 1, 'Brands', '', '_self', NULL, NULL, NULL, 3, '2018-12-29 12:41:24', '2018-12-29 12:49:56', 'voyager.brands.index', NULL),
(27, 1, 'Banners', '', '_self', NULL, NULL, NULL, 12, '2018-12-30 04:36:25', '2018-12-30 04:36:25', 'voyager.banner.index', NULL),
(28, 1, 'Banners', '', '_self', NULL, NULL, NULL, 13, '2018-12-30 04:40:30', '2018-12-30 04:40:30', 'voyager.banners.index', NULL),
(29, 1, 'Customers', '', '_self', NULL, NULL, NULL, 14, '2019-01-02 03:47:25', '2019-01-02 03:47:25', 'voyager.customers.index', NULL),
(30, 1, 'Orders', '', '_self', NULL, NULL, NULL, 15, '2019-01-02 03:54:20', '2019-01-02 03:54:20', 'voyager.orders.index', NULL),
(31, 1, 'Ordered Products', '', '_self', NULL, NULL, NULL, 16, '2019-01-02 04:25:33', '2019-01-02 04:25:33', 'voyager.ordered-product.index', NULL),
(32, 1, 'Deliverystatuses', '', '_self', NULL, NULL, NULL, 17, '2019-01-11 19:15:31', '2019-01-11 19:15:31', 'voyager.deliverystatus.index', NULL),
(33, 1, 'Delivery Statuses', '', '_self', NULL, NULL, NULL, 18, '2019-01-11 19:18:53', '2019-01-11 19:18:53', 'voyager.delivery-status.index', NULL),
(34, 1, 'Delivery Statuses', '', '_self', NULL, NULL, NULL, 19, '2019-01-11 19:22:57', '2019-01-11 19:22:57', 'voyager.delivery-statuses.index', NULL),
(35, 1, 'Customers Infos', '', '_self', NULL, NULL, NULL, 20, '2019-01-11 19:35:51', '2019-01-11 19:35:51', 'voyager.customers-infos.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_01_02_070933_customers', 3),
(28, '2019_01_02_071611_create_customers_password_reset', 4),
(29, '2019_01_02_080505_create_customer_password_resets_table', 5),
(30, '2019_01_02_080505_create_customers_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product`
--

CREATE TABLE `ordered_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `mobile` bigint(20) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transac_id` text COLLATE utf8mb4_unicode_ci,
  `completed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `product_id`, `name`, `address`, `mobile`, `total_price`, `payment_method`, `payment_status`, `transac_id`, `completed`, `created_at`, `updated_at`, `quantity`, `product_quantity`, `cancelled`) VALUES
(9, '1546819200557350', 0, '3,', 'Rajiv ', '81 chintamony dey road Howrah', 9831628002, 698, 'COD', 'Pending', NULL, '1', '2019-01-07 06:52:00', '2019-01-07 14:30:46', 'REVITALIFT®=1/=0/', NULL, 0),
(12, '1546905600814274', 4, '6,7,', 'test test', 'test,test test test', 7602121828, 667, 'COD', 'Pending', NULL, 'Order Placed', '2019-01-08 11:25:00', '2019-01-12 11:08:15', 'Lakme Perfecting Foundation shade 1=1/Lakme Eyeconic  curling mascara=2/=0/', '1,2,0,', 1),
(13, '1546905600418974', 4, '14,15,12,', 'Test 2 @@@', 'this is fake ', 0, 1287, 'COD', 'Pending', NULL, NULL, '2019-01-08 11:35:47', '2019-01-08 11:35:47', 'Lakme CC color Transforming cream, Beige=1/Lakme eye liner=1/Lakme face magic Souffle=2/=0/', '1,1,2,0,', 0),
(14, '15469920008885554', 4, '6,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 7602121828, 319, 'online', 'Pending', NULL, NULL, '2019-01-09 15:24:13', '2019-01-09 15:24:13', 'Lakme Perfecting Foundation shade 1=1/=0/', '1,0,', 0),
(16, '15469920002405374', 4, '6,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 7602121828, 319, 'online', 'Pending', NULL, NULL, '2019-01-09 15:29:49', '2019-01-09 15:29:49', 'Lakme Perfecting Foundation shade 1=1/=0/', '1,0,', 0),
(19, '15469920001211854', 4, '7,', 'SAYED Akhtar', '52, Nando ghosh road, pilkhana, Howrah 711101, Near bridge and roof ', 7602121828, 249, 'online', 'Pending', NULL, NULL, '2019-01-09 17:19:01', '2019-01-09 17:19:01', 'Lakme Eyeconic  curling mascara=1/=0/', '1,0,', 0),
(20, '15469920003526824', 4, '6,', 'SAYED Akhtar', '52, Nando ghosh road, pilkhana, Howrah 711101, Near bridge and roof ', 7602121828, 319, 'online', 'Pending', NULL, NULL, '2019-01-09 17:35:38', '2019-01-09 17:35:38', 'Lakme Perfecting Foundation shade 1=1/=0/', '1,0,', 0),
(21, '15469920003389784', 4, '6,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 7602121828, 319, 'online', 'Paid', '108501794202', NULL, '2019-01-09 17:38:40', '2019-01-09 17:38:40', 'Lakme Perfecting Foundation shade 1=1/=0/', '1,0,', 0),
(22, '15469920009972084', 4, '29,', 'SAYED Akhtar', '52, Nando ghosh road, pilkhana, Howrah 711101 ', 917602121828, 51, 'online', 'Pending', NULL, NULL, '2019-01-09 18:04:22', '2019-01-09 18:04:22', 'test product=1/=0/', '1,0,', 0),
(23, '15469920003312144', 4, '29,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 917602121828, 1, 'online', 'Pending', NULL, NULL, '2019-01-09 18:09:05', '2019-01-09 18:09:05', 'test product=1/=0/', '1,0,', 0),
(24, '15469920008288254', 4, '29,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 917602121828, 1, 'online', 'Paid', '108501808298', NULL, '2019-01-09 18:30:38', '2019-01-09 18:30:38', 'test product=1/=0/', '1,0,', 0),
(25, '15470784008256307', 7, '3,', 'Rajiv Pugalia', 'F24/192 ', 9831628002, 698, 'online', 'Pending', NULL, NULL, '2019-01-10 16:49:38', '2019-01-10 16:49:38', 'REVITALIFT®=1/=0/', '1,0,', 0),
(26, '15470784009853547', 7, '3,', 'Rajiv Pugalia', 'F24/192', 9831628002, 698, 'COD', 'Not Aplicable', NULL, 'Order Placed', '2019-01-10 16:56:00', '2019-01-14 05:19:17', '=0/=0/', '0,0,', 1),
(27, '15471648002969791', 1, '3,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari', 917602121828, 698, 'COD', 'Not Aplicable', NULL, 'Order Placed', '2019-01-11 19:53:00', '2019-01-12 12:44:48', 'REVITALIFT®=1/=0/', '1,0,', 1),
(28, '15480288007805421', 1, '7,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 7602121828, 249, 'online', 'Pending', NULL, NULL, '2019-01-21 10:56:07', '2019-01-21 10:56:07', 'Lakme Eyeconic  curling mascara=1/=0/', '1,0,', 0),
(29, '15480288003185321', 1, '6,', 'sayed akhtar', '52, nando ghosh road, pilkhana, golabari ', 7602121828, 319, 'COD', 'Not Aplicable', NULL, NULL, '2019-01-21 12:15:59', '2019-01-21 12:15:59', 'Lakme Perfecting Foundation shade 1=1/=0/', '1,0,', 0),
(30, '15483744009964357', 7, '6,', 'Rajiv Pugalia', 'F24/192 Rohini sector 3 ', 9831628002, 319, 'online', 'Pending', NULL, NULL, '2019-01-25 19:06:44', '2019-01-25 19:06:44', 'Lakme Perfecting Foundation shade 1=1/=0/', '1,0,', 0),
(31, '15484608009721877', 7, '7,', 'Rajiv Pugalia', 'F24/192 ', 9831628002, 249, 'online', 'Pending', NULL, NULL, '2019-01-26 10:59:59', '2019-01-26 10:59:59', 'Lakme Eyeconic  curling mascara=1/=0/', '1,0,', 0),
(32, '15487200007521971', 1, '12,', 'SAYED Akhtar', '52,nando ghosh road ', 7602121828, 409, 'online', 'Pending', NULL, NULL, '2019-01-29 10:46:17', '2019-01-29 10:46:17', 'Lakme face magic Souffle=1/=0/', '1,0,', 0),
(33, '15489792002994977', 7, '123,', 'Rajiv Pugalia', 'F24/192 ', 9831628002, 1100, 'online', 'Pending', NULL, NULL, '2019-02-01 05:38:49', '2019-02-01 05:38:49', 'L\'oreal paris casting creme gloss,  Sonams dark chocolate=2/=0/', '2,0,', 0),
(34, '15493248002132677', 7, '7,', 'Rajiv Pugalia', 'F24/192 ', 9831628002, 249, 'online', 'Pending', NULL, NULL, '2019-02-05 05:05:12', '2019-02-05 05:05:12', 'Lakme Eyeconic  curling mascara=1/=0/', '1,0,', 0),
(35, '15493248003899657', 7, '7,', 'Rajiv Pugalia', 'F24/192 ', 9831628002, 249, 'online', 'Pending', NULL, NULL, '2019-02-05 05:05:37', '2019-02-05 05:05:37', '=0/=0/', '0,0,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `feature_image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cancellation Policy', '<p><strong><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></strong></p>\r\n<p><strong><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">1. Cancellation before shipment :</span></span></strong></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">If the order or the item(s) that you want to cancel have not been shipped yet, you can</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">write to our customer support team on support@pickfreely.com.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">In such cases, the order will be cancelled and the money will be refunded to you within</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">24-48 business hours after the cancellation request.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">2. Cancellation post shipment :</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">If you wish to cancel an order that has been shipped but has not yet been delivered,</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">please get in touch with our Customer Support team on support@pickfreely.com.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">In case you have cancelled an order, which has already been handed over to the courier</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">company on our end, they may still attempt delivery. Kindly do not accept the delivery of</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">the order. Once we receive the product(s) back and verify its packaging/condition, we</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">will refund your money within 24-48 business hours.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">How will I get refunded for the cancelled orders and how long will this process</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">take?&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">In case of cancellation before shipment, we process the refund within 24-48 business</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">hours after receiving the cancellation request.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">In case of cancellation if the shipment has already been dispatched or if it is being</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">returned, we process the refund once the products have been received and verified at</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">our warehouse.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">For payments done through credit/debit cards or net banking, the refund will be</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">processed to the same account from which the payment was made within 24-48</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">business hours of us receiving the products back. It may take 2-3 additional business</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">days for the amount to reflect in your account.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">For cash on delivery transactions, we will initiate a bank transfer against the refund</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">amount against the billing details shared by you. This process will be completed within</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">24-48 business hours of us receiving the products back and your bank details on email.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">It will take an additional 2-3 business days for the amount to get in your account. In</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">addition, we also provide the hassle-free option of refund through Pickfreely Wallet</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">balance, which can be used during future purchases.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">What if I used discount vouchers or loyalty points during time of payment and I</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">have to cancel my order?&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Discount vouchers are intended for one-time use only and shall be treated as used even</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">if you cancel the order. If you had redeemed loyalty points for an order, the same will be</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">credited back to your account in the case of a cancellation.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\"># Returns, Replacements and Refunds :-</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">How do I return an item purchased on &lsquo;PickFreely&rsquo;?</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">PickFreely offers its customers an &rsquo;Easy return policy&rsquo;, wherein you can raise a</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">return/exchange request of a product within 5 days of its delivery. We also accept partial</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">returns wherein you can raise a return request for one or all products in you order.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Step 1: Contact our Customer Support team via email (support@pickfreely.com) within 5</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">business days of receiving the order.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Step 2: Provide us with your order ID details and your request to return/replace/refund</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">your order. Kindly email an image of the product and the invoice for our reference.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Step 3: We will pick up the products within 2-4 business days. We will initiate the refund</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">or replacement process only if the products are received by us in their original packaging</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">with their seals, labels and barcodes intact.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">NOTE : If it is a case of replacement, it is subject to the availability of stock. In cases</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">when a replacement may not be available, we will refund you the full amount. Kindly</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">refer to the next question for exclusions to refunds.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Which are the items that cannot be returned/exchanged?&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Returns will not be accepted under the following conditions:&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Product is damaged due to misuse/overuse.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Returned without original packaging including, price tags, labels, original packing,</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">freebies and other accessories or if original packaging is damaged.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Serial Number is tampered.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Defective products that are covered under Seller/Manufacturer&rsquo;s warranty.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Product is used or altered.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- If request is initiated after 5 business days of order delivery.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Free product provided by brand categories are not eligible for return. Customized</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Products (eg: lipsticks, compacts, mascaras, etc) cannot be returned since they are</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">available during select promotions and ordered on demand.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">- Personal care appliances cannot be returned due to hygiene issues.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Please note : For certain marketing campaigns or mega sale periods, special</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">return/exchange/refund rules may apply. Information regarding this is visible on the</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">promotion banner. For any clarification, please feel free to contact our customer care.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">I have received a damaged or defective item/wrong product in my order, how</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">should I proceed?&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Our shipments go through rigorous quality check processes before they leave our</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">warehouse. However in the rare case that your product is damaged during shipment or</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">transit, you can request for a replacement or cancellation and refund.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">If you have received an item in a damaged/defective condition or have been sent a</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">wrong product, you can follow a few simple steps to initiate your return/refund within 5</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">days of receiving the order:</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Step 1: Contact our Customer Support team via email (support@pickfreely.com) within 5</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">business days of receiving the order.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Step 2: Provide us with your order ID details and your request to return/replace/refund</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">the defective/wrong items in your order. Kindly share an image of the product and the</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">invoice for our reference.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Step 3: We will pick up the products within 2-4 business days. We will initiate the refund</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">or replacement process only if the products are received by us in their original packaging</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">with their seals, labels and barcodes intact.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">NOTE: If it is a case of replacement, it is subject to the availability of stock. In case that a</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">replacement may not be available, we will refund you the full amount.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Do I have to return the free gift when I return a product?&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Yes. The free gift is included as a part of the item order and needs to be returned along</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">with the originally delivered product.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Can I return part of my order?&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Yes. A return can be created at item level and if you have ordered multiple items, you</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">can initiate a return/replacement/refund for any individual item. However, any product</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">being returned needs to be returned in full including all components as well as any</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">complimentary gifts or products which came along with it.&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Any more Queries?</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Feel free to contact our Customer Help Executive.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp; OR</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Email us your query at help@pickfreely.com.</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Thank You,</span></span></p>\r\n<p><span style=\"color: #000000; font-family: monospace;\"><span style=\"font-size: 13px; white-space: pre-wrap;\">Team PickFreely.</span></span></p>', NULL, 'cancellation', '2019-01-07 11:30:00', '2019-01-07 15:53:10'),
(2, 'Privacy Policy', '<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">- PRIVACY POLICY :</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">We, at Pickfreely.com, heartily value the trust and love you have for us. As you are very much worried about your privacy, so are we. We try our best to keep your data safe with our highest standards of secure transactions and customer information privacy.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">The following writings describe the privacy policy of \'Pickfreely.com\'. Each very time you visit us, you accept and consent to the practices described in the following Privacy Notice.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; text-indent: -34.5pt;\"><em style=\"mso-bidi-font-style: normal;\">NOTE</em><span style=\"mso-spacerun: yes;\">&nbsp; </span>:<span style=\"mso-spacerun: yes;\">&nbsp; </span>The privacy policy is subject to change at any time without prior notice. Your continued use<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>of the Site following such changes to the Policy constitutes your acceptance of the changed Policy and to be bound by such changes.</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt;\">In order to be aware of the changes in privacy policies, you must visit the site and especially the \'Privacy Policy\' section, from time to time.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">1. What do we collect from you ?</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">We collect your Personal Sensitive Information like Name, Address, Phone no., City, Postal Code, Email id ,etc, whenever you Register or Sign Up or Shop through our website by entering details . We may also gather information of the device through which you visit us, by sending you Cookies.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">2. Why do we gather your information ?</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">We collect your personal identifiable information so as to make your work easier and cozier. By gathering your information, we always tend to provide you a smooth and seamless experience each time you visit us.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">When you register your account to our website, we securely store your information so that you need not enter all these info when you visit us again. We automatically fetch it up all and prevent you from repeating the same stuff again and again.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>We may also maintain record of your information<span style=\"mso-spacerun: yes;\">&nbsp; </span>for future references.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\">Pickfreely </strong><span style=\"mso-spacerun: yes;\">&nbsp;</span>uses your collected Personal Infomations to :-</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 18.0pt;\">- <span style=\"mso-spacerun: yes;\">&nbsp;</span>fulfill the necessary details to complete any transaction.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 18.0pt;\">-<span style=\"mso-spacerun: yes;\">&nbsp; </span>send you or your desired ones, the products you ordered.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 18.0pt;\">-<span style=\"mso-spacerun: yes;\">&nbsp; </span>know about your shopping preferences,</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 18.0pt;\">-<span style=\"mso-spacerun: yes;\">&nbsp; </span>send you promotions or offers.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 18.0pt;\">-<span style=\"mso-spacerun: yes;\">&nbsp; </span>take up your feedback and experience to help us improve our service.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 18.0pt;\">-<span style=\"mso-spacerun: yes;\">&nbsp; </span>send you any update through Email or Phone number.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">3. Whom do we share your Informations with ?</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">We never share your confidential information<span style=\"mso-spacerun: yes;\">&nbsp; </span>with anyone except :-</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>- Our authorised work executives.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>- Our affiliates.</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt;\">- Service providers performing on our behalf. However, they do have no power to disclose<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp; </span>your information to anyone.</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt;\">Notwithstanding anything contained in this Privacy Policy, we reserve the right to disclose any Personal or Sensitive Information that may be required to be disclosed mandatorily under applicable law or where the disclosure is necessary to comply with any legal obligation or to law enforcement authorities or other government officials, without prior notice or consent of the site / app user.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">4. What about COOKIES ?</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">Well, you need not worry about cookies. They are just used to allow you a good experience throughout our website. They are certain files that get stored to your computer\'s drive. They are never harmful. They keep a record of your visits, your actions or informations you share to us. They are adopted to serve the clients better. By visiting our website, you \'Agree\' to accept the Cookies.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">In case you don\'t, you may turn them off from your browser settings. Without Cookies, your experience through hour website may be little glitchy.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">5. How long we keep your data ?</strong></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>We keep your data safe and in record as long as it may be reasonably required. We retain your Personal Information until it has been properly used to fulfill the purpose for which it was collected. Your information is safeguarded against foreign access and disclosures.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">6. How safe is your Personal Sensitive Information ?</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">Well, <span style=\"mso-spacerun: yes;\">&nbsp;</span>you need not worry about that. We store your data safe in a very secure place with our executives keeping an sharp eye to prevent any type of Information leakage.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">We do never lend out or sell your informations to any third party.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">We shall not be liable to any user for any loss, damage (whether direct, indirect, consequential or incidental) or harm caused to the user due to the unauthorized access or misuse of the Personal or Sensitive Information by any third party.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">7. Can I make changes or opt to stop receiving promotional offers or Quit?</strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt;\">Yes, you can. In \"My Profile\" section, you can make changes in your Personal Informations as many times you wish to.</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">-You can Unsubscribe from our Promotional offers, emails, messages and notifications.</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt;\">-You can delete or remove your consents, reviews or any info that you share publically on our website.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>In case you wish to<strong style=\"mso-bidi-font-weight: normal;\"> QUIT</strong> with us and disable or deactivate your account, you can contact our customer help executive to help you out.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-indent: 36.0pt;\">All the above statements are subject to change. Do visit the site frequently to get them in the know.<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This <span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; background: white;\">Privacy Policy is applicable to all the services offered by, and the website www.pickfreely.com operated by, the company Pick Freely Sales Corporations, whose registered office is located at 52, Dharmatala Road, Salkia, Howrah, West Bengal 711106 .</span><span style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; background: white;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Thank You,</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Team <span style=\"mso-spacerun: yes;\">&nbsp;</span>Pickfreely.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp; &nbsp;&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', NULL, 'privacy', '2019-01-08 04:09:59', '2019-01-08 04:09:59');
INSERT INTO `pages` (`id`, `title`, `description`, `feature_image`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Terms and Conditions', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">This domain name Pickfreely.com is owned by<strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"> &lsquo;Pickfreely Sales and Services Ltd&rsquo;</em></strong>, a company incorporated under Companies Act , 1956 with its authorised registered office at<span style=\"mso-spacerun: yes;\">&nbsp; </span>52, Dharmatolla Road, Salkia, Howrah, West Bengal 711106, India.</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Your each visit to our site is governed by the following listed &ldquo;<strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\">Terms and Conditions</em></strong>&rdquo;. </span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">You are subjected to all the policies listed down as terms. You are also subjected to various rules, conditions, and guidelines stated below. </span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">However, we have the reserved right to change the rules or guidelines or terms of use periodically without your consent or any notice. It is your responsibility to visit our website frequently to be aware of the changes and updates.</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 16.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">1. </span></em></strong><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: \'Cambria\',\'serif\'; mso-ascii-theme-font: major-latin; mso-hansi-theme-font: major-latin;\">Conditions for an Individual to use our website -</span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 10.5pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">You must not use the website in any way that causes, or is likely to cause, the website or access to it to be interrupted, damaged or impaired in any way. You understand that you, and not Pickfreely.com is responsible for all electronic communications and contents sent from you to us and you must use the website for lawful purposes only.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 10.5pt; line-height: normal; background: white;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Cambria\',\'serif\'; mso-ascii-theme-font: major-latin; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-latin; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">Rules for Your Account</span></em><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\"> :</span></em></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l2 level1 lfo2; background: white; margin: 0cm 0cm 10.5pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #111111; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">You must provide correct information regarding yourself i.e Name, Address, City, Pincode, Mobile Number etc.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l2 level1 lfo2; background: white; margin: 0cm 0cm 10.5pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #111111; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">You must fill in correct details without being in connection with any sort of wicked ideals.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l2 level1 lfo2; background: white; margin: 0cm 0cm 10.5pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #111111; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">You can update your account as many times, at any time you wish.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l2 level1 lfo2; background: white; margin: 0cm 0cm 10.5pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 16.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #111111; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; background: white;\">You must<span style=\"mso-spacerun: yes;\">&nbsp; </span>agree and acknowledge that you will use your account on the website to purchase products only for your personal use and not for business purposes.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-bottom: 10.5pt; mso-add-space: auto; line-height: normal; background: white;\"><span style=\"font-size: 16.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 10.5pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">You must not use the website for any of the following cases :</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo3; background: white; margin: 0cm 0cm .0001pt 39.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #949494; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">for fraudulent purposes, or in connection with a criminal offense or other unlawful activity</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo3; background: white; margin: 0cm 0cm .0001pt 39.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #949494; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">to send, use or reuse any material that does not belong to you; or is illegal, offensive (including but not limited to material that is sexually explicit content or which promotes racism, bigotry, hatred or physical harm), deceptive, misleading, abusive, indecent, harassing, <span style=\"mso-spacerun: yes;\">&nbsp;</span>obscene, pornographic or menacing. </span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo3; background: white; margin: 0cm 0cm .0001pt 39.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #949494; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">to cause annoyance, inconvenience or needless anxiety.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 15.75pt; background: white;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 15.75pt; background: white;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">You must not <span style=\"mso-spacerun: yes;\">&nbsp;</span>display, upload, modify, publish, update or share any information which:</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">belongs to another person and to which You does not have any right to;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">is grossly harmful, harassing, blasphemous, defamatory, obscene, pornographic, paedophilic, libellous, invasive of another\'s privacy, hateful, or racially, or ethnically objectionable;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">is misleading;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">is offensive to the online community, such as sexually explicit content, or content that promotes obscenity, racism, bigotry, hatred or physical harm of any kind;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">harasses or advocates harassment of another person;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">involves the transmission of \"junk mail&rdquo; or<span style=\"mso-spacerun: yes;\">&nbsp; </span>\"spamming\";</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">promotes illegal activities or conduct that is abusive, threatening, obscene or<span style=\"mso-spacerun: yes;\">&nbsp; </span>defamatory;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">promotes an illegal or unauthorized copy of another person\'s copyrighted such as providing pirated computer programs or providing pirated music or links to pirated files;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">contains video, photographs, or images of another person (with a minor or an adult).</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">promotes gambling or engages in any gambling activity which we believe illegal;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">directs to any website or URL that, contains materials that are inappropriate for the Website or any other website, contains content that would be prohibited or violates the rules of these Terms of Use;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">may be harmful for <span style=\"mso-spacerun: yes;\">&nbsp;</span>minors in any way;</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">threatens the unity, integrity, security of any individual or the country.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-add-space: auto; text-indent: -18.0pt; line-height: normal; mso-list: l1 level1 lfo1; background: white; margin: 11.25pt 0cm .0001pt 38.25pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #212121; mso-fareast-language: EN-IN;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">shall not be false, inaccurate or misleading;</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 11.25pt 0cm .0001pt 0cm;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.5pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #212121; mso-fareast-language: EN-IN;\">You must not reverse look-up, trace or seek to trace any information on any other User of or visitor to Website, or any other customer.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 0cm 0cm .0001pt 21.0pt;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #949494; mso-fareast-language: EN-IN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; font-family: \'Cambria\',\'serif\'; mso-ascii-theme-font: major-latin; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-latin; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">2. Terms regarding your Privacy -</span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">&nbsp;</span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">You and only you are responsible for the safeguard of your Personal sensitive information like your account password or bank details. We are not liable to hear or get accused of leaking the information in any situation arising due to your misconduct or misuse or your carelessness.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">To learn more regarding Privacy policy, please visit our PRIVACY POLICY section. </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; mso-fareast-language: EN-IN;\">&nbsp;</span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Cambria\',\'serif\'; mso-ascii-theme-font: major-latin; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-latin; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #949494; mso-fareast-language: EN-IN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: \'Cambria\',\'serif\'; mso-ascii-theme-font: major-latin; mso-hansi-theme-font: major-latin;\">3. Copyright Policy -</span></em></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">All the contents on our website such as images, texts, icons, logos, banners, graphics, data and software, are the sole property of Pickfreely.com.</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">You cannot extract or re-utilise the various parts of the contents of the website without our consent.</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 16.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: \'Cambria\',\'serif\'; mso-ascii-theme-font: major-latin; mso-hansi-theme-font: major-latin;\">4. Disclaimer -</span></em></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: #111111; background: white;\">You acknowledge and undertake that you are accessing the services on the website and transacting at your own risk and are using your best and prudent judgment before entering into any transactions through the website. You further acknowledge and undertake that you will use the website to order products only for your personal use and not for business purposes.</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 24.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', NULL, 'terms', '2019-01-08 04:14:08', '2019-01-08 04:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(2, 'browse_bread', NULL, '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(3, 'browse_database', NULL, '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(4, 'browse_media', NULL, '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(5, 'browse_compass', NULL, '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(6, 'browse_menus', 'menus', '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(7, 'read_menus', 'menus', '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(8, 'edit_menus', 'menus', '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(9, 'add_menus', 'menus', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(10, 'delete_menus', 'menus', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(11, 'browse_roles', 'roles', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(12, 'read_roles', 'roles', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(13, 'edit_roles', 'roles', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(14, 'add_roles', 'roles', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(15, 'delete_roles', 'roles', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(16, 'browse_users', 'users', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(17, 'read_users', 'users', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(18, 'edit_users', 'users', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(19, 'add_users', 'users', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(20, 'delete_users', 'users', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(21, 'browse_settings', 'settings', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(22, 'read_settings', 'settings', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(23, 'edit_settings', 'settings', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(24, 'add_settings', 'settings', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(25, 'delete_settings', 'settings', '2018-12-27 22:54:53', '2018-12-27 22:54:53'),
(41, 'browse_hooks', NULL, '2018-12-27 22:55:09', '2018-12-27 22:55:09'),
(57, 'browse_product', 'product', '2018-12-28 12:07:45', '2018-12-28 12:07:45'),
(58, 'read_product', 'product', '2018-12-28 12:07:45', '2018-12-28 12:07:45'),
(59, 'edit_product', 'product', '2018-12-28 12:07:45', '2018-12-28 12:07:45'),
(60, 'add_product', 'product', '2018-12-28 12:07:45', '2018-12-28 12:07:45'),
(61, 'delete_product', 'product', '2018-12-28 12:07:45', '2018-12-28 12:07:45'),
(67, 'browse_cosmetic_category', 'cosmetic_category', '2018-12-28 12:21:51', '2018-12-28 12:21:51'),
(68, 'read_cosmetic_category', 'cosmetic_category', '2018-12-28 12:21:51', '2018-12-28 12:21:51'),
(69, 'edit_cosmetic_category', 'cosmetic_category', '2018-12-28 12:21:51', '2018-12-28 12:21:51'),
(70, 'add_cosmetic_category', 'cosmetic_category', '2018-12-28 12:21:51', '2018-12-28 12:21:51'),
(71, 'delete_cosmetic_category', 'cosmetic_category', '2018-12-28 12:21:51', '2018-12-28 12:21:51'),
(72, 'browse_cosmetic_categories', 'cosmetic_categories', '2018-12-28 12:23:43', '2018-12-28 12:23:43'),
(73, 'read_cosmetic_categories', 'cosmetic_categories', '2018-12-28 12:23:43', '2018-12-28 12:23:43'),
(74, 'edit_cosmetic_categories', 'cosmetic_categories', '2018-12-28 12:23:43', '2018-12-28 12:23:43'),
(75, 'add_cosmetic_categories', 'cosmetic_categories', '2018-12-28 12:23:43', '2018-12-28 12:23:43'),
(76, 'delete_cosmetic_categories', 'cosmetic_categories', '2018-12-28 12:23:43', '2018-12-28 12:23:43'),
(77, 'browse_cosmetic_main_categories', 'cosmetic_main_categories', '2018-12-28 12:38:07', '2018-12-28 12:38:07'),
(78, 'read_cosmetic_main_categories', 'cosmetic_main_categories', '2018-12-28 12:38:07', '2018-12-28 12:38:07'),
(79, 'edit_cosmetic_main_categories', 'cosmetic_main_categories', '2018-12-28 12:38:07', '2018-12-28 12:38:07'),
(80, 'add_cosmetic_main_categories', 'cosmetic_main_categories', '2018-12-28 12:38:07', '2018-12-28 12:38:07'),
(81, 'delete_cosmetic_main_categories', 'cosmetic_main_categories', '2018-12-28 12:38:07', '2018-12-28 12:38:07'),
(82, 'browse_cosmetic_sub_cetegories', 'cosmetic_sub_cetegories', '2018-12-28 13:07:06', '2018-12-28 13:07:06'),
(83, 'read_cosmetic_sub_cetegories', 'cosmetic_sub_cetegories', '2018-12-28 13:07:06', '2018-12-28 13:07:06'),
(84, 'edit_cosmetic_sub_cetegories', 'cosmetic_sub_cetegories', '2018-12-28 13:07:06', '2018-12-28 13:07:06'),
(85, 'add_cosmetic_sub_cetegories', 'cosmetic_sub_cetegories', '2018-12-28 13:07:06', '2018-12-28 13:07:06'),
(86, 'delete_cosmetic_sub_cetegories', 'cosmetic_sub_cetegories', '2018-12-28 13:07:06', '2018-12-28 13:07:06'),
(87, 'browse_cosmetic_sub_categories', 'cosmetic_sub_categories', '2018-12-28 13:30:56', '2018-12-28 13:30:56'),
(88, 'read_cosmetic_sub_categories', 'cosmetic_sub_categories', '2018-12-28 13:30:56', '2018-12-28 13:30:56'),
(89, 'edit_cosmetic_sub_categories', 'cosmetic_sub_categories', '2018-12-28 13:30:56', '2018-12-28 13:30:56'),
(90, 'add_cosmetic_sub_categories', 'cosmetic_sub_categories', '2018-12-28 13:30:56', '2018-12-28 13:30:56'),
(91, 'delete_cosmetic_sub_categories', 'cosmetic_sub_categories', '2018-12-28 13:30:56', '2018-12-28 13:30:56'),
(97, 'browse_brand', 'brand', '2018-12-29 12:35:05', '2018-12-29 12:35:05'),
(98, 'read_brand', 'brand', '2018-12-29 12:35:05', '2018-12-29 12:35:05'),
(99, 'edit_brand', 'brand', '2018-12-29 12:35:05', '2018-12-29 12:35:05'),
(100, 'add_brand', 'brand', '2018-12-29 12:35:05', '2018-12-29 12:35:05'),
(101, 'delete_brand', 'brand', '2018-12-29 12:35:05', '2018-12-29 12:35:05'),
(102, 'browse_brands', 'brands', '2018-12-29 12:41:23', '2018-12-29 12:41:23'),
(103, 'read_brands', 'brands', '2018-12-29 12:41:23', '2018-12-29 12:41:23'),
(104, 'edit_brands', 'brands', '2018-12-29 12:41:23', '2018-12-29 12:41:23'),
(105, 'add_brands', 'brands', '2018-12-29 12:41:23', '2018-12-29 12:41:23'),
(106, 'delete_brands', 'brands', '2018-12-29 12:41:23', '2018-12-29 12:41:23'),
(112, 'browse_banners', 'banners', '2018-12-30 04:40:30', '2018-12-30 04:40:30'),
(113, 'read_banners', 'banners', '2018-12-30 04:40:30', '2018-12-30 04:40:30'),
(114, 'edit_banners', 'banners', '2018-12-30 04:40:30', '2018-12-30 04:40:30'),
(115, 'add_banners', 'banners', '2018-12-30 04:40:30', '2018-12-30 04:40:30'),
(116, 'delete_banners', 'banners', '2018-12-30 04:40:30', '2018-12-30 04:40:30'),
(117, 'browse_customers', 'customers', '2019-01-02 03:47:25', '2019-01-02 03:47:25'),
(118, 'read_customers', 'customers', '2019-01-02 03:47:25', '2019-01-02 03:47:25'),
(119, 'edit_customers', 'customers', '2019-01-02 03:47:25', '2019-01-02 03:47:25'),
(120, 'add_customers', 'customers', '2019-01-02 03:47:25', '2019-01-02 03:47:25'),
(121, 'delete_customers', 'customers', '2019-01-02 03:47:25', '2019-01-02 03:47:25'),
(122, 'browse_orders', 'orders', '2019-01-02 03:54:20', '2019-01-02 03:54:20'),
(123, 'read_orders', 'orders', '2019-01-02 03:54:20', '2019-01-02 03:54:20'),
(124, 'edit_orders', 'orders', '2019-01-02 03:54:20', '2019-01-02 03:54:20'),
(125, 'add_orders', 'orders', '2019-01-02 03:54:20', '2019-01-02 03:54:20'),
(126, 'delete_orders', 'orders', '2019-01-02 03:54:20', '2019-01-02 03:54:20'),
(127, 'browse_ordered_product', 'ordered_product', '2019-01-02 04:25:33', '2019-01-02 04:25:33'),
(128, 'read_ordered_product', 'ordered_product', '2019-01-02 04:25:33', '2019-01-02 04:25:33'),
(129, 'edit_ordered_product', 'ordered_product', '2019-01-02 04:25:33', '2019-01-02 04:25:33'),
(130, 'add_ordered_product', 'ordered_product', '2019-01-02 04:25:33', '2019-01-02 04:25:33'),
(131, 'delete_ordered_product', 'ordered_product', '2019-01-02 04:25:33', '2019-01-02 04:25:33'),
(132, 'browse_products', 'products', '2019-01-05 08:32:21', '2019-01-05 08:32:21'),
(133, 'read_products', 'products', '2019-01-05 08:32:21', '2019-01-05 08:32:21'),
(134, 'edit_products', 'products', '2019-01-05 08:32:21', '2019-01-05 08:32:21'),
(135, 'add_products', 'products', '2019-01-05 08:32:21', '2019-01-05 08:32:21'),
(136, 'delete_products', 'products', '2019-01-05 08:32:21', '2019-01-05 08:32:21'),
(137, 'browse_pages', 'pages', '2019-01-07 11:24:22', '2019-01-07 11:24:22'),
(138, 'read_pages', 'pages', '2019-01-07 11:24:22', '2019-01-07 11:24:22'),
(139, 'edit_pages', 'pages', '2019-01-07 11:24:22', '2019-01-07 11:24:22'),
(140, 'add_pages', 'pages', '2019-01-07 11:24:22', '2019-01-07 11:24:22'),
(141, 'delete_pages', 'pages', '2019-01-07 11:24:22', '2019-01-07 11:24:22'),
(167, 'browse_deliverystatus', 'deliverystatus', '2019-01-11 19:13:05', '2019-01-11 19:13:05'),
(168, 'read_deliverystatus', 'deliverystatus', '2019-01-11 19:13:05', '2019-01-11 19:13:05'),
(169, 'edit_deliverystatus', 'deliverystatus', '2019-01-11 19:13:05', '2019-01-11 19:13:05'),
(170, 'add_deliverystatus', 'deliverystatus', '2019-01-11 19:13:05', '2019-01-11 19:13:05'),
(171, 'delete_deliverystatus', 'deliverystatus', '2019-01-11 19:13:05', '2019-01-11 19:13:05'),
(177, 'browse_delivery_status', 'delivery_status', '2019-01-11 19:21:05', '2019-01-11 19:21:05'),
(178, 'read_delivery_status', 'delivery_status', '2019-01-11 19:21:05', '2019-01-11 19:21:05'),
(179, 'edit_delivery_status', 'delivery_status', '2019-01-11 19:21:05', '2019-01-11 19:21:05'),
(180, 'add_delivery_status', 'delivery_status', '2019-01-11 19:21:05', '2019-01-11 19:21:05'),
(181, 'delete_delivery_status', 'delivery_status', '2019-01-11 19:21:05', '2019-01-11 19:21:05'),
(182, 'browse_delivery_statuses', 'delivery_statuses', '2019-01-11 19:22:57', '2019-01-11 19:22:57'),
(183, 'read_delivery_statuses', 'delivery_statuses', '2019-01-11 19:22:57', '2019-01-11 19:22:57'),
(184, 'edit_delivery_statuses', 'delivery_statuses', '2019-01-11 19:22:57', '2019-01-11 19:22:57'),
(185, 'add_delivery_statuses', 'delivery_statuses', '2019-01-11 19:22:57', '2019-01-11 19:22:57'),
(186, 'delete_delivery_statuses', 'delivery_statuses', '2019-01-11 19:22:57', '2019-01-11 19:22:57'),
(187, 'browse_customers_infos', 'customers_infos', '2019-01-11 19:35:51', '2019-01-11 19:35:51'),
(188, 'read_customers_infos', 'customers_infos', '2019-01-11 19:35:51', '2019-01-11 19:35:51'),
(189, 'edit_customers_infos', 'customers_infos', '2019-01-11 19:35:51', '2019-01-11 19:35:51'),
(190, 'add_customers_infos', 'customers_infos', '2019-01-11 19:35:51', '2019-01-11 19:35:51'),
(191, 'delete_customers_infos', 'customers_infos', '2019-01-11 19:35:51', '2019-01-11 19:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(60, 3),
(67, 3),
(68, 3),
(70, 3),
(72, 3),
(73, 3),
(75, 3),
(77, 3),
(78, 3),
(80, 3),
(82, 3),
(83, 3),
(85, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(97, 3),
(98, 3),
(100, 3),
(102, 3),
(103, 3),
(105, 3),
(112, 3),
(113, 3),
(115, 3),
(132, 3),
(133, 3),
(135, 3),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(1, 3),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(137, 3),
(57, 3),
(58, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-27 22:55:05', '2018-12-27 22:55:05'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-27 22:55:05', '2018-12-27 22:55:05'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-27 22:55:05', '2018-12-27 22:55:05'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-27 22:55:05', '2018-12-27 22:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) DEFAULT '0',
  `stocks` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `feature_image`, `created_at`, `updated_at`, `category`, `main_category`, `sub_category`, `price`, `images`, `brand`, `featured`, `stocks`, `discount`) VALUES
(6, 'Lakme Perfecting Foundation shade 1', NULL, 'products/January2019/9bn5z6QcqoXevXiNV7Cn.jpg', '2019-01-07 08:49:00', '2019-01-25 19:06:44', '1', '1', '2', 269, '[\"products\\/January2019\\/spLmrLsMvI2lMXVfsDBj.jpg\"]', 'Lakme', 0, 1, 0),
(7, 'Lakme Eyeconic  curling mascara', NULL, 'products/January2019/0kE1aVrqQBhY45UgcTRP.jpg', '2019-01-07 09:19:00', '2019-02-05 05:05:12', '1', '2', '7', 199, '[\"products\\/January2019\\/j9tnNpLcao9ayQUOmNgQ.jpg\",\"products\\/January2019\\/sv5IUKM5wLTNmwC7mkHU.jpg\"]', 'Lakme', 1, 3, 0),
(8, 'Lakme day Creme', NULL, 'products/January2019/BidZPR2UoxhLSHKwpxsk.jpg', '2019-01-08 03:58:00', '2019-02-04 10:47:41', '1', '1', '9', 249, '[\"products\\/January2019\\/uVUrZ6brJWbvPV3sZLQf.jpg\"]', 'Lakme', 1, -1, 5),
(10, 'Lakme absolute foundation, Pearl', '<p><em>Lakme Absolute</em><em>&nbsp;Mousse&nbsp;</em><em>Foundation<strong>&nbsp;:<span style=\"color: #000000;\">&nbsp;Pearl</span></strong></em></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Feather-light mousse from the Lakme Absolute range that easily blends into your skin to give you an even toned skin. The Lakme Absolute Mattreal Skin Natural Mousse also keeps your skin healthy and protected with its new SPF-8 formula that gives your peachy-soft and naturally flawless skin for up to 16 hours. The Lakme Absolute Mattreal Skin Natural Mousse is extremely light with a natural matte finish that lets your skin breathe. The Lakme Absolute Mattreal Skin Natural Mousse is available in 6 different shades to suit all skin tones. It&rsquo;s great for occasions as it gives you a naturally even tone and does not need touch ups.How to applyUsing your fingertips gently blend tiny dots of the Lakme Absolute Mattreal Skin Natural Mousse over the face and neck area.</span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;With SPF8</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Feather light effect, weight and texture.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Lasts long upto 15+ hours.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&nbsp;</span></em></p>', 'products/January2019/PD45GzHkWi1pVLkLQYnm.jpg', '2019-01-08 04:35:00', '2019-01-18 12:00:40', '1', '1', '2', 449, '[\"products\\/January2019\\/K5aSZHFgDb4uOBivmbs3.jpg\",\"products\\/January2019\\/qNOxlpPKvpvfTjyEdCRf.jpg\"]', 'Lakme', 0, 4, 5),
(11, 'Lakme 9to5 Aloevera gel', NULL, 'products/January2019/omAhF9xWS3819j1YVorr.jpg', '2019-01-08 04:42:34', '2019-01-08 04:42:34', '1', '1', '11', 259, '[\"products\\/January2019\\/H6cY2xFm9wbBRgo9geWo.jpg\"]', 'Lakme', 0, 3, 0),
(12, 'Lakme face magic Souffle', NULL, 'products/January2019/git9kKdgM2GjmQbjiBNU.jpg', '2019-01-08 04:46:00', '2019-01-29 10:46:17', '1', '1', '2', 359, '[\"products\\/January2019\\/l8OVNxZ2DvATq7U5Wl3v.jpg\",\"products\\/January2019\\/Vn66TOQ5eEAPOzrryoXN.jpg\"]', 'Lakme', 0, 0, 0),
(13, 'Lakme absolure perfect radiance skin lightening night creme, 50g', NULL, 'products/January2019/mvZxOZs69Ezf1FTYsL0j.jpg', '2019-01-08 04:53:53', '2019-01-08 04:53:53', '1', '1', '9', 299, '[\"products\\/January2019\\/VgRQ9R3mY4F3BrYdmXYm.jpg\"]', 'lakme', 0, 3, 0),
(14, 'Lakme CC color Transforming cream, Beige', NULL, 'products/January2019/NM3tSI2w01V94HtU9h0y.jpg', '2019-01-08 05:07:00', '2019-01-08 11:35:47', '1', '1', '9', 370, '[\"products\\/January2019\\/FM8B2fFDwt71Y0Cs4Snk.jpg\",\"products\\/January2019\\/ECK6HIISVNsu2dveJEDe.jpg\"]', 'Lakme', 1, 2, 0),
(15, 'Lakme eye liner', NULL, 'products/January2019/KeSHO1hJg5ErMQjtk05I.jpg', '2019-01-08 09:37:56', '2019-01-08 11:35:47', '1', '2', '3', 199, '[\"products\\/January2019\\/DQaE84AhduFdbiQ1dzZw.jpg\",\"products\\/January2019\\/cAWPbjVxUikS5WNjahMQ.jpg\"]', 'lakme', 0, 4, 0),
(16, 'lakme', NULL, 'products/January2019/N1p0AvXHH8YTVhkskzET.jpg', '2019-01-08 09:43:20', '2019-01-08 09:43:20', '1', '1', '5', 245, '[\"products\\/January2019\\/2Hxw81Dc8YiGWttzCJLu.jpg\",\"products\\/January2019\\/z3xvEhEFXKSk6bRW1g0S.jpg\"]', 'Lakme', 0, 3, 0),
(17, 'lakme absolute blur perfect makeup primer', NULL, 'products/January2019/bUWvs0gTuzhKHISvWEyv.jpg', '2019-01-08 09:52:00', '2019-01-12 17:29:29', '1', '1', '1', 300, '[\"products\\/January2019\\/p3NdeIjUYdh7kpIayG0t.jpg\"]', 'Lakme', 0, 3, 0),
(20, 'lakme 9 to 5 primer plus matte, red coat', NULL, 'products/January2019/VBkAcGGgWzG3ndDahDwO.jpg', '2019-01-08 10:01:00', '2019-01-21 08:41:54', '1', '3', '4', 345, '[\"products\\/January2019\\/uUadTXKOPJWJXVzX4nXM.jpeg\",\"products\\/January2019\\/2JjGdt0vd5b2mVH6cxXZ.jpeg\"]', 'Lakme', 1, 5, 0),
(26, 'lakme lip love chapstick cherry  cherry,pack of 1,2,4g', NULL, 'products/January2019/Ms2rH3CwuhpOPFLkZybM.jpg', '2019-01-08 10:31:00', '2019-01-16 08:18:52', '1', '3', '4', 150, '[\"products\\/January2019\\/UGwOv6QaXPsMC4UClcCw.jpeg\",\"products\\/January2019\\/GGI1GLJcYdsurHH66sLI.jpeg\",\"products\\/January2019\\/S7lMqPRIajbgTfrOsvJ2.jpeg\"]', 'Lakme', 0, 6, 0),
(27, 'Lakme Absolute Bi-Phased Makeup Remover', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">Step up your cleansing routine with the Lakme Absolute Bi-Phased Make-up Remover. The Lakme Absolute Bi-Phased Make-up Remover is a unique formulation which works in two ways- the oil phase lifts off makeup while the water phase refreshes and conditions skin without leaving any stickiness. The Lakme Absolute Bi-Phased Make-up Remover is dermatologically tested and is suitable for sensitive skin too! The Lakme Absolute Bi-Phased Make-up Remover removes all traces of makeup effortlessly from the face, leaving the skin feeling fresh and hydrated. The Lakme Absolute Bi-Phased Make-up Remover combines the cleansing properties of oil with the refreshing properties of water to give you a wholesome purifying experience. The unique formulation of the Lakme Absolute Bi-Phased Make-up Remover which contains a purifying blend oil and water helps you stay refreshed and hydrated. The Lakme Absolute Bi-Phased Make-up Remover is dermatologically tested with a formula which helps you to remove even the most stubborn makeup. The Lakme Absolute Bi-Phased Make-up Remover is suitable for sensitive eyes and also contact lens wearers. Buy the Lakme Absolute Bi-Phased Make-up Remover, now!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\"><br />Key Features &amp; Benefits :</strong></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Effortlessly removes all traces of makeup from the face, leaving the skin feeling fresh and hydrated.</li>\r\n<li style=\"box-sizing: border-box;\">Dermatologically tested.</li>\r\n<li style=\"box-sizing: border-box;\">Suitable for Sensitive Eyes.</li>\r\n<li style=\"box-sizing: border-box;\">Leaves the skin feeling fresh and hydrated.</li>\r\n<li style=\"box-sizing: border-box;\">The Lakme Absolute Bi-Phased Make-up Remover combines the cleansing properties of oil with the refreshing properties of water to give you a wholesome purifying experience.</li>\r\n<li style=\"box-sizing: border-box;\">The Lakme Absolute Bi-Phased Make-up Remover is a unique formulation which works in two ways- the oil phase lifts off makeup while the water phase refreshes and conditions skin without leaving any stickiness</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\"><br />Explore the entire range of&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #fc2779; text-decoration-line: none;\" href=\"https://www.nykaa.com/makeup/face/face-makeup-remover.html\" target=\"_blank\" rel=\"noopener\"><u style=\"box-sizing: border-box;\">Makeup Remover</u></a>&nbsp;available on pickfreely.&nbsp;</strong><strong style=\"box-sizing: border-box;\">Shop more&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #fc2779; text-decoration-line: none;\" href=\"https://www.nykaa.com/brands/lakme.html?ptype=brand&amp;id=604\" target=\"_blank\" rel=\"noopener\"><u style=\"box-sizing: border-box;\">Lakme</u></a>&nbsp;products here.</strong><strong style=\"box-sizing: border-box;\">You can browse through the complete world of&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #fc2779; text-decoration-line: none;\" href=\"https://www.nykaa.com/brands/lakme.html?ptype=brand&amp;id=604&amp;cat=239&amp;sort=popularity\" target=\"_blank\" rel=\"noopener\"><u style=\"box-sizing: border-box;\">Lakme Makeup Remover&nbsp;</u></a>.&nbsp;</strong></p>\r\n<p class=\"mrp-n-expiry\" style=\"box-sizing: border-box; margin: 0px 0px 10px; font-weight: 600; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">MRP: 300</p>\r\n<p>&nbsp;</p>', 'products/January2019/nPrsJ5ZSa7Pc386sPzKY.jpg', '2019-01-08 10:38:00', '2019-01-14 04:52:06', '2', '1', '10', 300, '[\"products\\/January2019\\/MdLDm3gNt84R8cLknaFm.jpeg\",\"products\\/January2019\\/iqO903DsiJemKx2qTWH4.jpg\"]', 'Lakme', 1, 2, 5),
(30, 'lakme lip love chapstick , Caramel , 4g', NULL, 'products/January2019/IP3yzSDVMqd9jol95YXu.jpg', '2019-01-16 08:10:13', '2019-01-16 08:10:13', '1', '3', '4', 150, '[\"products\\/January2019\\/UadyW1CBbgDPgMmcuv6u.jpg\"]', 'Lakme', 0, 5, NULL),
(31, 'lakme lip love chapstick , Mango, 4g', NULL, 'products/January2019/twOtVdTYiaA0iTAsW6SD.jpg', '2019-01-16 08:12:43', '2019-01-16 08:12:43', '1', '3', '4', 150, '[\"products\\/January2019\\/r5AFzjMc4w5eKh1IV1pa.jpg\"]', 'Lakme', 0, 4, NULL),
(32, 'lakme lip love chapstick , Strawberry, 4g', NULL, 'products/January2019/GNMdCDGzGMpfvJ42vBdR.jpg', '2019-01-16 08:14:42', '2019-01-16 08:14:42', '1', '3', '4', 150, '[\"products\\/January2019\\/fotA9a0FewkJQUOyqFhE.jpg\"]', 'Lakme', 0, 4, NULL),
(33, 'lakme Lip Love, Cherry', NULL, 'products/January2019/Fp56zyM44EPWf81v9iB9.jpg', '2019-01-16 08:17:34', '2019-01-16 08:17:34', '1', '3', '4', 180, '[\"products\\/January2019\\/94hxxt7HNQI7UUBeJjze.jpg\"]', 'Lakme', 0, 4, NULL),
(34, 'Lakme absolute pore fix toner', NULL, 'products/January2019/R3oRPHibZ7hOKvtM8lkd.jpg', '2019-01-16 08:22:17', '2019-01-16 08:22:17', '1', '1', '11', 349, '[\"products\\/January2019\\/ypPTwNVL34dF63ps7qH4.jpg\",\"products\\/January2019\\/SrDsITy1RqQiisvBWSZe.jpg\"]', 'Lakme', 0, 0, NULL),
(35, 'Lakme absolute mousse Ivory fair 01', '<p><em>Lakme Absolute&nbsp;</em><em>&nbsp;Mousse&nbsp;</em><em>Foundation<strong> :<span style=\"color: #000000;\"> Ivory Fair, shade 01</span></strong></em></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Feather-light mousse from the Lakme Absolute range that easily blends into your skin to give you an even toned skin. The Lakme Absolute Mattreal Skin Natural Mousse also keeps your skin healthy and protected with its new SPF-8 formula that gives your peachy-soft and naturally flawless skin for up to 16 hours. The Lakme Absolute Mattreal Skin Natural Mousse is extremely light with a natural matte finish that lets your skin breathe. The Lakme Absolute Mattreal Skin Natural Mousse is available in 6 different shades to suit all skin tones. It&rsquo;s great for occasions as it gives you a naturally even tone and does not need touch ups.How to applyUsing your fingertips gently blend tiny dots of the Lakme Absolute Mattreal Skin Natural Mousse over the face and neck area.</span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> With SPF8</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> Feather light effect, weight and texture.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> Lasts long upto 15+ hours.</span></em></p>\r\n<p>&nbsp;</p>', 'products/January2019/bntR8pnJq5icInP76it9.jpg', '2019-01-16 08:25:00', '2019-01-18 11:58:10', '1', '1', '2', 580, '[\"products\\/January2019\\/vvuOz72mC1MYyVCD4QJJ.jpg\",\"products\\/January2019\\/tZyavtAV9qbrYTqmogOv.jpg\"]', 'Lakme', 1, 3, NULL),
(36, 'Lakme absolute foundation mousse, Rose fair 02', '<p><em>Lakme Absolute</em><em>&nbsp;Mousse&nbsp;</em><em>Foundation<strong>&nbsp;:<span style=\"color: #000000;\">&nbsp;Rose&nbsp;Fair, shade 02</span></strong></em></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Feather-light mousse from the Lakme Absolute range that easily blends into your skin to give you an even toned skin. The Lakme Absolute Mattreal Skin Natural Mousse also keeps your skin healthy and protected with its new SPF-8 formula that gives your peachy-soft and naturally flawless skin for up to 16 hours. The Lakme Absolute Mattreal Skin Natural Mousse is extremely light with a natural matte finish that lets your skin breathe. The Lakme Absolute Mattreal Skin Natural Mousse is available in 6 different shades to suit all skin tones. It&rsquo;s great for occasions as it gives you a naturally even tone and does not need touch ups.How to applyUsing your fingertips gently blend tiny dots of the Lakme Absolute Mattreal Skin Natural Mousse over the face and neck area.</span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;With SPF8</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Feather light effect, weight and texture.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Lasts long upto 15+ hours.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&nbsp;</span></em></p>', 'products/January2019/CHjguEcd8FdHfwPuEorR.jpg', '2019-01-16 08:28:00', '2019-01-18 11:59:26', '1', '1', '2', 580, '[\"products\\/January2019\\/B5OT0i38P5uITMvu79QE.jpg\",\"products\\/January2019\\/8628zC5Jmwmo9eRY7nII.jpg\"]', 'Lakme', 1, 2, NULL),
(37, 'Lakme Absolute Skin Lightening Serum, 30ml', '<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">Lakm&eacute; presents this absolute perfect radiance skin lighting serum that helps in lightening the skin tone and helps in diminishing skin darkening.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>Lakme Absolute Perfect Radiance Skin Lightening Serum</strong></em> is activated by two powerful ingredients &ndash; Vita-Resorcinol that diminishes the formation and transfer of skin darkening pigments and precious micro-crystals that are known to gently polish skin to reveal a fair, illuminated look. Enriched with skin lightening vitamins, this serum gives a salon like boost to your skin. Pamper your skin with the special care it deserves and feel confident as you stand out of the crowd with an illuminated and nourished look. The glow of this luxurious and efficacious skin lightening serum with micro-crystals gives you radiance and luminosity like never before. It&rsquo;s unbelievably simple to get that runway inspired look with this light weight Serum that brightens your skin from the core.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;&nbsp;</strong><em>With special ingredient - Vita-Resorcinol.</em>&nbsp;</span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&gt; lights skin tone</span></em></p>', 'products/January2019/Vv83UDM21zjUisDsDKjw.jpg', '2019-01-16 08:30:00', '2019-01-18 11:52:30', '1', '1', '11', 840, '[\"products\\/January2019\\/BtTl8tPqew92kawPahn8.jpg\",\"products\\/January2019\\/OKdaURYwofUU1OqthKcQ.jpg\"]', 'Lakme', 1, 2, NULL),
(38, 'Lakme Absolute Perfect Radiance Skin Lightening Facewash, 50g', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">The Lakme Perfect Radiance Intense Whitening face wash gives you the bright looking skin you have always wished for. This face wash is infused with complex vitamins that nourish and replenish your skin at every application. It concentrates on giving you visibly radiant skin and it works at fighting all the 6 blocks of fairness: dark spots, acne marks and blemishes, uneven skin tone, oiliness, tanning and dullness. The Lakme Perfect Radiance Intense Whitening face wash with its Daily Salon Boost feature rejuvenates your skin to perfection. This 50g pack is good to carry too, for an instant fairness &amp; fights the 6 blocks to fairness. The Continuous Release Technology: Perfect Radiance range has the breakthrough technology to release potent Skin Lightening Vitamins into your skin cells through the day. Use with the PErfect radiance daily regime for best results.</span></p>\r\n<p><strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&gt;</span></strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&nbsp;<em>With infused complex vitamins for naturally glowing skin.</em></span></p>\r\n<p><strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>&gt;</em></span></strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>&nbsp;W</em></span><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\">orks at fighting all the six blocks of fairness: 1.Dark spots 2.Acne marks/blemishes 3.Uneven skin tone 4.Oiliness 5.Tanning 6.Dullness</span></em></span></p>', 'products/January2019/YEA8JPuE6TrC92i1mBWy.jpg', '2019-01-16 08:38:00', '2019-01-18 11:49:03', '2', '1', '10', 250, '[\"products\\/January2019\\/6sITgTdtp1H7W3ZSrjKu.jpg\"]', 'Lakme', 0, 2, NULL),
(39, 'Lakme Blush and Glow facewash, Strawberry, 100g', NULL, 'products/January2019/Q5aEXed798PcEpDLYZmG.jpg', '2019-01-16 08:41:00', '2019-01-16 09:07:35', '1', '1', '10', 250, '[\"products\\/January2019\\/zzBeByqz7UIuSH3E7mBl.jpg\",\"products\\/January2019\\/n8g9vMpBLpBOpbhZaRoT.jpg\",\"products\\/January2019\\/0JZwG9CR7r4XXP9qHuJU.jpg\",\"products\\/January2019\\/hrkLOWfo9SDuK78FIvKm.jpg\"]', 'Lakme', 0, 3, NULL),
(40, 'Lakme Blush and Glow facewash , Lemon, 100g', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Use the <em><strong>Lakme Blush and Glow Lemon Gel Face Wash</strong></em> to give your skin a gorgeous strawberry-kissed glow, every day. Formulated by Lakme Salon experts &amp; enriched with goodness of rich strawberry extracts. The face wash has fruit anti-oxidants and beads that cleanse your skin washing away dirt and other impurities. For the best results. Follow this simple Blush &amp; Glow regime every day for a fruit-kissed glow every day. The beautiful texture &amp; fragrance will make you fall in love instantly.&nbsp;</span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> <em>With goodness of pure and rich Lemon extracts.</em></span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"> Fruit anti-oxidants and beads cleanse your skin washing away dirt and other impurities.</span></em></p>', 'products/January2019/BO3uEIKSlHev53HGeYbl.jpg', '2019-01-16 08:43:00', '2019-01-17 05:04:10', '1', '1', '10', 250, '[\"products\\/January2019\\/JIYhgeyMJdVp3UCDEbSJ.jpg\"]', 'Lakme', 0, 2, NULL),
(41, 'Lakme Insta Eye Liner', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Define the outline of your eyes with some Color, with the Lakm&eacute; Insta Liner. This eyeliner is endowed with a water-resistant formula that also makes it last longer. The deep intense color of this Lakm&eacute; Insta Liner accentuates your eye makeup and adds a dash of dramatic beauty and glamour to them. The smooth Brush applies the liner over your eye lids in an even stroke and can be used for various looks you want to create. The Lakm&eacute; Insta Liner comes in a transparent glass bottle with a sturdy screw type lid and is easy to carry in your bag and perfect for an instant touch up. The Lakm&eacute; Insta Liner is light-weight and is a comfortable eye makeup for perfect definition. Its water resistant formula ensures no smudging or smearing, and it&rsquo;s deep intense color that does not fade. It is a perfect daily wear eyeliner! Lakm&eacute; is one of India&rsquo;s leading color cosmetic brands offering a wide range of high-end, world-class color cosmetics and skincare products.</span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>The Lakme Insta-Liner is manufactured primarily for women. </span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>It is suitable for all skin types. It comes in the quantity of 9 ml.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> It has a water-resistant formula.</span></em></p>\r\n<p><strong><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&gt;</span></em></strong><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&nbsp;Smudge proof, long lasting.</span></em></p>', 'products/January2019/reNjjqlTRknlkLcSBXvW.jpg', '2019-01-16 08:47:00', '2019-01-18 11:44:23', '1', '2', '3', 120, '[\"products\\/January2019\\/wRj7VHQinawv6OQY5sSd.jpg\",\"products\\/January2019\\/UxBcfEPhOxt8I6dP6PF2.jpg\"]', 'Lakme', 0, 3, NULL),
(42, 'Lakme Absolute Youth Infinity Skin Sculpting cream', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Get a youthful glow on your skin with the<em><strong> Lakme Absolute Youth Infinity Skin Sculpting Day Creme</strong></em>. Endowed with anti-ageing properties, it enables your skin to look younger after every use. This day cream removes the wrinkles and blemishes from your skin. The luminizing pearls in this cream instantly brighten your skin tone to give you a flawless look and the insta collagen boosters help improve elasticity and promote skin tightening. Regular use of the Lakme Absolute Youth Infinity Skin Sculpting Day Creme shows spectacular results&ndash; a youthful skin that is free from dullness and ageing. Moisturizes skin and arrests aging by protecting it from the sun. The light-textured Cr&egrave;me gives bright and younger looking skin. With SPF 15 ++, it protects your skin from UVA and UVB rays. For the best results, use the product on an everyday basis. : In the unlikely event of skin irritation, stop using and consult a doctor immediately. Avoid contact with eyes. Wash your eyes thoroughly with clean water in case of contact. Dot across your face and neck. Gently massage in an upward and outward spiral motion until it&rsquo;s absorbed. To get the best results, use the complete Lakme Absolute Youth Infinity,&nbsp;</span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> <em>SPF 15 PA++ protects skin from the sun\'s harmful UVA and UVB rays.</em></span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><em><strong>&gt;</strong> I</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">nsta Collagen boosters help improve elasticity to tighten skin.</span></em></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> <em>Use the cr&egrave;me with the entire Lakme Absolute Youth Infinity range to get a complete sculpted look of the 20&rsquo;s.</em></span></p>', 'products/January2019/HFSSmFk3FeTBR3cR0vzh.jpg', '2019-01-16 09:00:00', '2019-01-18 11:41:08', '2', '1', '9', 550, '[\"products\\/January2019\\/WhKDDzJHkmDRet6XHYWS.jpg\",\"products\\/January2019\\/w3HAo11Xs4RAYH6xuTrw.jpg\"]', 'Lakme', 0, 2, NULL),
(43, 'Lakme 9to5 naturale day cream, SPF20', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Presenting the New <span style=\"color: #99cc00;\"><em><strong>Lakme 9to5 naturale Day Cr&egrave;me SPF 20</strong></em></span>, it is enriched with goodness of pure Aloe Vera which in known to be a soothing and nourishing agent for skin . This lightweight day cr&egrave;me hydrates and brightens stressed skin and helps protect your skin from pollution induced dullness and dryness that takes away your skin&rsquo;s naturale glow. The light, non-sticky texture of this day cr&egrave;me enables your skin to breathe all through the day while keeping it protected against external aggressors. It contains SPF 20 PA++ that protects skin from the sun&rsquo;s harmful UV rays. Your skin stays protected and naturalely bright all-day long. Get a city bright look, naturalely! Apply in the Morning before stepping out or anytime during the day when you are on the go. Gently massage the cr&egrave;me in circular movements starting from the center to the contours of your cleansed face and neck.&nbsp;</span></p>\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #949494; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">Enriched with the goodness of pure aloe vera</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">A light, brightening skin cr&egrave;me that hydrates stressed skin</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">It helps protect skin from pollution induced dryness and dullness</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: #111111;\">SPF 20 PA++ protects your skin from harmful UV damage</span></li>\r\n</ul>', 'products/January2019/8O44xnWmcaCz6Uqm14k8.jpg', '2019-01-16 09:04:00', '2019-01-18 11:34:35', '2', '1', '9', 230, '[\"products\\/January2019\\/f1khDSfoTdHFOpZ4eQ3o.jpg\",\"products\\/January2019\\/vFUGVgAAjfie3RxgHseg.jpg\",\"products\\/January2019\\/Lr2XEhLO5tBOvWfYoSMJ.jpg\"]', 'Loreal', 0, 2, NULL),
(44, 'Lakme absolute Skin gloss gel creme', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Keep your skin looking fresh and supple with the Lakme Skin Gloss Gel Creme. It is endowed with a multi-nutrient formula that hydrates your skin and makes it look lustrous without any effort. This moisturizing cream has mineral laden glacial water that gives a cooling effect while the moisture coats your skin with gloss. This silky, smooth day cream tightens your skin and rejuvenates it. Just dab the Lakme Skin Gloss Gel Creme over your face and gently pat it on till your skin absorbs it. Get the lustrous gloss for your face, right here! For best results use on dull and dry skin that lacks glow and hydration. In the unlikely event of skin irritation , stop using and consult a doctor immediately. Avoid contact with eyes, wash your eyes thoroughly and clean with water in case of contact. This Gel Cr&egrave;me is not just great for winters when your skin is dry and dull, but also for summers when want your skin to look hydrated without looking oily.Follow this regime to get skin with a hydrated glossy finish.</span></p>', 'products/January2019/TkO0HeabBngkWpTJmcAr.jpg', '2019-01-16 09:07:00', '2019-01-18 11:36:48', '2', '1', '11', 259, '[\"products\\/January2019\\/nkGX7HussYrKusn8mO4w.jpg\"]', 'Lakme', 0, 3, NULL),
(45, 'Lakme 9to5 Naturale CC Cream, Honey, 30gm.', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme presents the new <em><strong>Lakme 9 to 5 naturale cc cream</strong></em>, available in two shades, <em><strong>honey</strong></em> and <em><strong>bronze</strong></em>. A natural skincare+ make up cream that is enriched with pure aloe vera. It protects your skin from pollution induced dullness while giving your skin the natural goodness of aloe vera. A lightweight cream, it blends easily into your skin and evens out imperfections that are caused by external aggressors. It moisturizes your skin and protects it from pollution induced dryness. This cc cream contains spf 30 pa++ that protects your skin from harmful sun exposure and uv rays. Apply before stepping out of the house and top up anytime during the day or night for a flawless look that is protected from city pollution and other external aggressors. Your skin stays protected, looks flawless and naturally bright every day.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em> W</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">ith goodness of pure aloe vera.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif;\"><span style=\"font-size: 13px;\"><strong>&gt;</strong> SPF&nbsp;</span></span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">30 pa++ protects skin from harmful sun exposure and uv rays.</span></em></p>', 'products/January2019/PGH0cdlBwB8ht5emn0dp.jpg', '2019-01-16 09:09:00', '2019-01-17 05:22:25', '2', '1', '9', 270, '[\"products\\/January2019\\/pGrL6Zvq1PI3VIeDUT6U.jpg\",\"products\\/January2019\\/vkhxnsQNXyDWdtB3Vflg.jpg\"]', 'Loreal', 0, 2, NULL),
(46, 'Lakme Blush and Glow facewash, Peach', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Use the <em><strong>Lakme Blush and Glow Peach Gel Face Wash</strong></em> to give your skin a gorgeous strawberry-kissed glow, every day. Formulated by Lakme Salon experts &amp; enriched with goodness of rich strawberry extracts. The face wash has fruit anti-oxidants and beads that cleanse your skin washing away dirt and other impurities. For the best results. Follow this simple Blush &amp; Glow regime every day for a fruit-kissed glow every day. The beautiful texture &amp; fragrance will make you fall in love instantly.</span></p>\r\n<p><strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&gt;&nbsp;</span></strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">With goodness of pure and rich Peach extracts.</span></p>\r\n<p><strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">&gt;&nbsp;</span></strong><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Fruit anti-oxidants&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">and beads cleanse your skin washing away dirt and other impurities.</span></p>\r\n<p>&nbsp;</p>', 'products/January2019/RWWujQW2PYmHdNvaHAQq.jpg', '2019-01-16 09:19:00', '2019-01-17 05:01:12', '2', '1', '10', 180, '[\"products\\/January2019\\/SDzdLwPOPjFTLPEUAbVv.jpg\",\"products\\/January2019\\/2tQshCQvLiSkpLIQR13Q.jpg\"]', 'Lakme', 0, 4, NULL),
(47, 'Lakme Blush and Glow facewash, Pomegranate', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Use the<em><strong> Lakme Blush and Glow Strawberry Gel Face Wash</strong> </em>to give your skin a gorgeous strawberry-kissed glow, every day. Formulated by Lakme Salon experts &amp; enriched with goodness of rich strawberry extracts. The face wash has fruit anti-oxidants and beads that cleanse your skin washing away dirt and other impurities. For the best results. Follow this simple Blush &amp; Glow regime every day for a fruit-kissed glow every day. The beautiful texture &amp; fragrance will make you fall in love instantly&nbsp;</span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif;\"><span style=\"font-size: 13px;\"><strong>&gt;</strong> With goodness of rich pure strawberry extracts.</span></span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif;\"><span style=\"font-size: 13px;\"><strong>&gt;</strong> Fruit anti-oxidants&nbsp;</span></span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">and beads cleanse your skin washing away dirt and other impurities.</span></p>', 'products/January2019/jV87gSXluS1ix7KYnzlT.jpg', '2019-01-16 09:21:00', '2019-01-17 04:58:12', '2', '1', '10', 180, '[\"products\\/January2019\\/NlmdcjY4DeT3uSyazuCn.jpg\",\"products\\/January2019\\/PiJZR0Ec26r9EYhUPagn.jpg\",\"products\\/January2019\\/399AF3tUmMKhbYGIol1u.jpg\"]', 'Lakme', 0, 4, NULL),
(48, 'Lakme peach milk moisturizer body lotion,120ml', '<h5 class=\"a-color-secondary\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-size: 13px; line-height: 19px; font-family: \'Amazon Ember\', Arial, sans-serif; color: #888888 !important;\">&nbsp;Lakme brings to you a moisturizer which is a blend of wholesome peaches and milk, which nourishes the skin deeply without making it appear oily. This light moisturizer dozed with SPF 24 has a soothing fragrance, which will make you fall in love with it instantly. This lotion easily absorbs into the skin to lock moisture for 12 hours to give you soft, smooth and glowing skin. Choose the right \'<em>Peach Milk Moisturizer</em>\' for light nourishment pick this classic lotion.&nbsp;</h5>\r\n<p>&nbsp;</p>\r\n<h5 class=\"a-color-secondary\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-size: 13px; line-height: 19px; font-family: \'Amazon Ember\', Arial, sans-serif; color: #888888 !important;\">A moisturizer that&rsquo;s perfect of dry skin, Lakm&eacute; Peach Milk Moisturizer is everything you need to keep your skin feeling and looking nourished during the cold as well as protect it from the harsh rays of the sun.</h5>\r\n<h5 class=\"a-color-secondary\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-size: 13px; line-height: 19px; font-family: \'Amazon Ember\', Arial, sans-serif; color: #888888 !important;\">&nbsp;</h5>\r\n<h5 class=\"a-color-secondary\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-size: 13px; line-height: 19px; font-family: \'Amazon Ember\', Arial, sans-serif; color: #888888 !important;\">Application:</h5>\r\n<p class=\"a-spacing-base\" style=\"box-sizing: border-box; padding: 0px; color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; margin: 0px 0px 14px !important 0px;\">Step 1: Take a dollop of the moisturizer in your palm.</p>\r\n<p class=\"a-spacing-base\" style=\"box-sizing: border-box; padding: 0px; color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; margin: 0px 0px 14px !important 0px;\">Step 2: Use your ring finger and apply it evenly across your face.</p>\r\n<p class=\"a-spacing-base\" style=\"box-sizing: border-box; padding: 0px; color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; margin: 0px 0px 14px !important 0px;\">Step 3: Gently rub the cr&egrave;me on your skin with your 2 fingers (index and middle).</p>', 'products/January2019/6F1m3XkKQottJaRCQ8Dx.jpg', '2019-01-16 09:28:00', '2019-01-17 04:51:15', '2', '1', '9', 300, '[\"products\\/January2019\\/qirhrkG9mLrH0ZQ5v1Ty.jpg\",\"products\\/January2019\\/y49sSjwc8yPlH6G38ZU5.jpg\"]', 'Loreal', 1, 3, NULL),
(49, 'Lakme Compact Face Powder Rose, Soft pink 40gm', '<p><span style=\"font-size: 11pt; line-height: 115%; font-family: Arial, sans-serif; color: #333333; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Presenting to you &lsquo;<em>Lakme Rose face powde</em>r&rsquo; from the house of Lakme Classics, The Lakme Rose Powder is a classic must-have. Blush your cheeks with this Lakme Rose Powder which has a light rosy fragrance &amp; sunscreen to protect your soft, peachy skin. The Lakme Rose Powder comes in two warm pink shades which you can pick according to your skin type and occasion. Add the Lakme Rose Powder to your make up kit right away because you need that rosy glow! But the Lakme Rose Powder now! Flawless Skin Every Day If flawless and even skin is what you wish to have, the Lakme Rose Powder is just right for you. This Lakme Rose Powder is infused with extracts of real roses that is sure to nourish your skin. It blends easily and protects your skin from the harmful rays of the sun. Whether you are heading to work or a special occasion, this Lakme Rose Powder 40 g will give your face a gorgeous look every single day. Apply it on your face or over your foundation and say goodbye to oily skin. Must-Have for Every Beauty-Conscious Woman. The Lakme Rose Powder makes a great addition to your makeup kit.</span></p>\r\n<ul>\r\n<li><strong><span style=\"font-size: 11pt; line-height: 115%; font-family: Arial, sans-serif; color: #333333; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Features:&nbsp; -</span></strong>\r\n<p><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; &nbsp;</span><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #111111; mso-fareast-language: EN-IN;\">Loose face powder with rose fragrance</span><span style=\"font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #949494; mso-fareast-language: EN-IN;\"><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp;</span></span><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #111111; mso-fareast-language: EN-IN;\">Contains extracts of real roses&nbsp; &nbsp; &nbsp;-</span><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #111111; mso-fareast-language: EN-IN;\">Protects skin from harmful rays of sun&nbsp;</span></p>\r\n</li>\r\n</ul>', 'products/January2019/YKljb9nHwRHqSKfGilQH.jpg', '2019-01-16 09:31:00', '2019-01-17 04:42:07', '1', '1', '5', 149, '[\"products\\/January2019\\/wz5JfoQm3C4LS03V8GlP.jpg\",\"products\\/January2019\\/iyscvjxzUzPVMBrR5E5d.jpg\"]', 'Lakme', 0, 3, NULL),
(50, 'Lakme Pure Rouge Blusher, Rose Crush, 6g', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Blush a little and grab some eyeballs with the <em><strong>Lakme 9 to 5 Pure Rouge Blusher</strong></em>. Dab Lakme 9 to 5 Pure Rouge Blusher rouge onto the apple of your cheeks and make an entrance in style. This rouge blusher is easy to apply with its pure pressed powder formula and soft-in-built blusher. A few upward brush strokes and you\'ll be rosy all day! A great pick to have in your bag soon! A pure pressed powder blusher that provides sheer and lightweight application. The color builds lightly layer after layer without heavy coverage. Enhances cheekbones with a luminous silky matte finish. The Lakme 9 to 5 Pure Rouge Blusher is packed with key features like: Comes with an easy to use applicator, Matte finish, These colors blend beautifully on all skin tones, Available in 3 silky shades &ndash; <em><strong>Peach Affair, Ginger Surprise and Rose Crush</strong></em>, Suitable for all skin types, Dermatologically <em>tested.&nbsp;</em></span></p>\r\n<p>&nbsp;</p>\r\n<p><em><strong>&gt;</strong> Pure pressed Powder blush.</em></p>\r\n<p><em><strong>&gt;</strong> Naturally crafted.</em></p>\r\n<p><em><strong>&gt;</strong> Longer stay time.</em></p>', 'products/January2019/BLKeXaUtn5jIEXZqGios.jpg', '2019-01-17 05:12:15', '2019-01-17 05:12:15', '1', '1', '5', 359, '[\"products\\/January2019\\/60fANKOYckjM679Y5Zvj.jpg\",\"products\\/January2019\\/dClrJYVaPQykp46fM6at.jpg\"]', 'Lakme', 1, 2, NULL),
(51, 'Lakme Face Sheer Highlighter, Desert Rose, 4g', '<h1><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">The Lakme Face Sheer Highlighter :</span></h1>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Adding a hint of glow with cheek highlighters as the last part of makeup is like adding the garnishing condiments to a recipe. The last step is the one that spices up the whole thing-and dramatically enlivens the taste. However-just as garnishing flavors- if they go overboard- leave the food unsavory &ndash;similarly excess of the glow thingy spoils the look! Compliment your skin with the Lakm&eacute; Face Sheer for an effortless shine. This sheer powder naturally blends with your skin tone and the range has three shades to choose from. The sun soaked iridescent pigments tint, highlight your cheeks with a beautiful glow. The sponge applicator makes it very easy to apply and it\'s a compact size that can fit into your bag.</span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> With Sponge Applicator inside.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> Effortless shiny texture.</span></em></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong> Adds more lusture to your face.</em>&nbsp;</span></p>\r\n<p>&nbsp;</p>', 'products/January2019/VdxLyoTseQxAXWYCABD8.jpg', '2019-01-17 05:17:52', '2019-01-17 05:17:52', '1', '1', '1', 399, '[\"products\\/January2019\\/BLSqAvlxUueSg1oyUEf3.jpg\"]', 'Lakme', 0, 2, NULL),
(52, 'Lakme Absolute Matte Melt Liquid Lip Color, Crazy Tangerine, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Liquid Lip Color - <span style=\"color: #ff6600;\"><strong>Crazy Tangerine</strong></span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are <em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong> V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong> Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong> Intense, rich and bold.</span></em></p>', 'products/January2019/dKmrBvlvmS3AL5IcESF4.jpg', '2019-01-17 05:40:00', '2019-01-17 12:18:46', '1', '3', '4', 730, '[\"products\\/January2019\\/Y6UX8EvWVYnUlJVdMZxM.jpg\",\"products\\/January2019\\/orL52z618KxJk1y95U0s.jpg\",\"products\\/January2019\\/OzURaIP1TVhwkO45gWKA.jpg\"]', 'Lakme', 1, 3, NULL),
(53, 'Lakme Absolute Matte Melt Liquid Lip Color, Red Smoke, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute Matte Melt Liquid Lip Color - <span style=\"color: #ff0000;\"><strong>Red Smoke</strong></span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/yzSUYfQl2KSiXKWzcJqp.jpg', '2019-01-17 11:56:00', '2019-01-17 12:20:36', '1', '3', '4', 599, '[\"products\\/January2019\\/C79JYAfDhXMNffgqEvdT.jpg\",\"products\\/January2019\\/X0ve1PVLGpy4rSS98rXe.jpg\",\"products\\/January2019\\/UFOyUKMdbPgTv4WlzPCQ.jpg\"]', 'Lakme', 1, 2, NULL);
INSERT INTO `products` (`id`, `name`, `description`, `feature_image`, `created_at`, `updated_at`, `category`, `main_category`, `sub_category`, `price`, `images`, `brand`, `featured`, `stocks`, `discount`) VALUES
(54, 'Lakme Absolute Matte Melt  Liquid Lip Color, Wine n Dine, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Liquid Lip Color - <strong>Wine n Dine</strong></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/MDvpFXsHSPomgpD7Pr8X.jpg', '2019-01-17 12:00:25', '2019-01-17 12:00:25', '1', '3', '4', 750, '[\"products\\/January2019\\/a71akEONEhl4LRE2g0dY.jpg\",\"products\\/January2019\\/5J1GLquf42OpHkmEgz05.jpg\",\"products\\/January2019\\/HOKkZY2u55YDsKjlJTn6.jpg\"]', 'Lakme', 1, 2, NULL),
(55, 'Lakme Absolute Matte Melt  Liquid Lip Color, Mild Mauve, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Absolute Liquid Lip Color - <strong>Mild Mauve</strong></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/9RpdL0W9oOBaZAVNtOjM.jpg', '2019-01-17 12:06:56', '2019-01-17 12:06:56', '1', '3', '4', 750, '[\"products\\/January2019\\/crVlRHEoXX5RXAUV08hY.jpg\",\"products\\/January2019\\/ErvhIoDeoWUHP4cTTPjB.jpg\",\"products\\/January2019\\/qJoDvHhc2HQCMH6SkJ9j.jpg\"]', 'Lakme', 1, 2, NULL),
(56, 'Lakme Absolute Matte Melt  Liquid Lip Color, Firestarter Red, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Absolute Liquid Lip Color - <span style=\"color: #ff0000;\"><strong>Firestarter Red</strong></span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/uYRvoaLD7enjRft5hnlU.jpg', '2019-01-17 12:09:37', '2019-01-17 12:09:37', '1', '3', '4', 720, '[\"products\\/January2019\\/ClN4leaGoP05qrTS3chw.jpg\",\"products\\/January2019\\/GxYx7QvMXCtQzZJhNdYy.jpg\",\"products\\/January2019\\/S5BsRC8YNk1gtvwHSmEY.jpg\"]', 'Lakme', 1, 2, NULL),
(57, 'Lakme Absolute Matte Melt  Liquid Lip Color, Mulberrry Feast, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Absoute Liquid Lip Color - <span style=\"color: #993366;\"><strong>Mulberry Feast</strong></span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/4V8NAw6Jxq1GOTncTxMs.jpg', '2019-01-17 12:11:53', '2019-01-17 12:11:53', '1', '3', '4', 720, '[\"products\\/January2019\\/Dg7Ja81udNaOIah9dpKF.jpg\",\"products\\/January2019\\/hTC8yPXpvritaZmRYMVZ.jpg\",\"products\\/January2019\\/PRjhkHz67UqJZV7fbezI.jpg\"]', 'Lakme', 1, 2, NULL),
(58, 'Lakme Absolute Matte Melt  Liquid Lip Color, Peach Rose, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Absolute Liquid Lip Color -<span style=\"background-color: #ffffff;\"> <strong>Peach Rose</strong></span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/R41KdpQQy6PYlppoGf2k.jpg', '2019-01-17 12:14:10', '2019-01-17 12:14:10', '1', '3', '4', 720, '[\"products\\/January2019\\/HEtLybSwityfzXLFcUTw.jpg\",\"products\\/January2019\\/J84o1XGt4BgopGecY1xf.jpg\",\"products\\/January2019\\/obV0Toq05JgQS6EY3gql.jpg\"]', 'Lakme', 1, 2, NULL),
(59, 'Lakme Absolute Matte Melt  Liquid Lip Color, Vintage Pink, 6ml', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Absolute Liquid Lip Color - <span style=\"color: #993366;\"><strong>Vintage Pink</strong></span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme absolute presents matte melt liquid lip &ndash; the first ever matte liquid lip formulation. It has 8 irresistible shades ranging from a bright bold red to an intense nude; the shades are&nbsp;<em><strong>crazy tangerine, fire starter red, vintage pink, mulberry feast, red smoke, wine n dine, mild mauve and peach rose</strong></em>. This matte lipstick will make your lips look lush, matte and bold. It has a velvety matte finish that delivers a lush, suede-like finish. It is long wear; in vivid colors that last through the day. It is a new lightweight formula that feels feather light on your lips and has an intense, deep and rich color pay off in a single stroke. It has the ultimate lightweight formula enwraps lips for a long lasting silky comfort without drying your lips. It is completely transfer proof and stays all day.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><strong>&gt;</strong>&nbsp;V<span style=\"color: #111111; font-size: 13px;\">elvet matte finish; delivers a lush, suede-like finish.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Transfer proof, Smudge proof.</span></em></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em><span style=\"color: #111111; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Intense, rich and bold.</span></em></p>', 'products/January2019/FxB5GogjUIPMNY9vrpY1.jpg', '2019-01-17 12:17:18', '2019-01-17 12:17:18', '1', '3', '4', 725, '[\"products\\/January2019\\/GwTue4rD6qr5si6WmdYJ.jpg\",\"products\\/January2019\\/qJIsePkN2VxpGcbZ9oUL.jpg\",\"products\\/January2019\\/jA1u4y0IbwWkjefqwjFZ.jpg\"]', 'Lakme', 1, 2, NULL),
(60, 'Lakme Color Crush truewear, Magenta Pink', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Color Crush truewear - <em><strong><span style=\"color: #800080;\">Magenta Pink</span></strong></em></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Trendy shades on the go and for every mood, Lakme True Wear Color Crush nail enamel make the world a better place! Long-lasting by nature and chip-resistant, Lakme True Wear Color Crush coats your nails to perfection; giving them a vibrant and elegant look. It has color lock technology and is resin-based, making it a perfect choice! Add a stroke of classic color to your nails with Lakme True Wear Color Crush Nail Color. A color for all seasons and occasions, the shades are simply a must-have. The Lakme Truewear ColorCrush Nail Color comes with Color Lock Technology that ensures the color stays on your nails for long. The chip-resistant feature of this Lakme Truewear ColorCrush Nail Color keeps the color intact</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em> S</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">trenghtens nails with a long lasting nail enamel</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> 5</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">new glitter shades that give your nails a silk sheen</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> </span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">C</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">ontains resins with color lock technology</span></em></p>', 'products/January2019/urjM3IVaD0WjpB398jmM.jpg', '2019-01-17 12:36:00', '2019-01-17 12:37:40', '5', '5', '12', 132, '[\"products\\/January2019\\/VE1faayOX9S1NRG5cTyR.jpeg\",\"products\\/January2019\\/r4EzCVsoC397w5OOIMny.jpg\"]', 'Lakme', 1, 4, NULL),
(62, 'Lakme Color Crush truewear, Shade 48 (Sky blue) , 9ml', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Color Crush truewear <strong>- </strong></span><strong><span style=\"font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><span style=\"color: #800080;\"><em><span style=\"color: #00ccff;\">Shade</span></em>&nbsp;</span></span></strong><span style=\"color: #00ccff;\"><strong style=\"font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>48 ( Sky Blue )</em></strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Trendy shades on the go and for every mood, Lakme True Wear Color Crush nail enamel make the world a better place! Long-lasting by nature and chip-resistant, Lakme True Wear Color Crush coats your nails to perfection; giving them a vibrant and elegant look. It has color lock technology and is resin-based, making it a perfect choice! Add a stroke of classic color to your nails with Lakme True Wear Color Crush Nail Color. A color for all seasons and occasions, the shades are simply a must-have. The Lakme Truewear ColorCrush Nail Color comes with Color Lock Technology that ensures the color stays on your nails for long. The chip-resistant feature of this Lakme Truewear ColorCrush Nail Color keeps the color intact</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;S</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">trenghtens nails with a long lasting nail enamel</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;5</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">new glitter shades that give your nails a silk sheen</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">C</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">ontains resins with color lock technology</span></em></p>', 'products/January2019/01Mz8Fdo5lE50VeeNTYe.jpg', '2019-01-17 12:54:29', '2019-01-17 12:54:29', '5', '5', '12', 155, '[\"products\\/January2019\\/0t5O93tgVyufdyn0wPZd.jpg\",\"products\\/January2019\\/EGQqMCtXcauG7ofoN6pD.jpg\"]', 'Lakme', 1, 2, NULL),
(63, 'Lakme Color Crush truewear, Shade 62, 9ml', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Color Crush truewear - <em><strong>Shade 62 ( Blood Red ).</strong></em></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Trendy shades on the go and for every mood, Lakme True Wear Color Crush nail enamel make the world a better place! Long-lasting by nature and chip-resistant, Lakme True Wear Color Crush coats your nails to perfection; giving them a vibrant and elegant look. It has color lock technology and is resin-based, making it a perfect choice! Add a stroke of classic color to your nails with Lakme True Wear Color Crush Nail Color. A color for all seasons and occasions, the shades are simply a must-have. The Lakme Truewear ColorCrush Nail Color comes with Color Lock Technology that ensures the color stays on your nails for long. The chip-resistant feature of this Lakme Truewear ColorCrush Nail Color keeps the color intact</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;S</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">trenghtens nails with a long lasting nail enamel</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;5</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">new glitter shades that give your nails a silk sheen</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">C</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">ontains resins with color lock technology</span></em></p>', 'products/January2019/qvKf3oEZvaVYtITY1SnA.jpg', '2019-01-17 12:57:43', '2019-01-17 12:57:43', '5', '5', '12', 159, '[\"products\\/January2019\\/cMhYsZ2yb0oVNnzT7cUs.jpg\",\"products\\/January2019\\/lig4qQr8xBzYySynckTb.jpg\"]', 'Lakme', 1, 2, NULL),
(64, 'Lakme Color Crush truewear, Yellow, 9ml', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme Color Crush truewear - <span style=\"color: #ffcc00;\"><em><strong>Yellow</strong></em></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Trendy shades on the go and for every mood, Lakme True Wear Color Crush nail enamel make the world a better place! Long-lasting by nature and chip-resistant, Lakme True Wear Color Crush coats your nails to perfection; giving them a vibrant and elegant look. It has color lock technology and is resin-based, making it a perfect choice! Add a stroke of classic color to your nails with Lakme True Wear Color Crush Nail Color. A color for all seasons and occasions, the shades are simply a must-have. The Lakme Truewear ColorCrush Nail Color comes with Color Lock Technology that ensures the color stays on your nails for long. The chip-resistant feature of this Lakme Truewear ColorCrush Nail Color keeps the color intact</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;S</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">trenghtens nails with a long lasting nail enamel</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;5</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">new glitter shades that give your nails a silk sheen</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">C</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">ontains resins with color lock technology</span></em></p>', 'products/January2019/KTRLpvVSvsark66b2SeD.jpg', '2019-01-17 13:00:00', '2019-01-25 09:14:20', '5', '5', '12', 160, '[\"products\\/January2019\\/FJAyoKG4eoMw6OnvNeyj.jpg\"]', 'Lakme', 1, 4, NULL),
(65, 'Lakme Truewear Nail Color, Shade 508, 9ml', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme truewear nail color - <em><strong><span style=\"color: #008000;\">Shade 508 (Lush Green)</span></strong></em></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Trendy shades on the go and for every mood, Lakme True Wear nail color make the world a better place! Long-lasting by nature and chip-resistant, Lakme True Wear Color Crush coats your nails to perfection; giving them a vibrant and elegant look. It has color lock technology and is resin-based, making it a perfect choice! Add a stroke of classic color to your nails with Lakme True Wear Nail Color. A color for all seasons and occasions, the shades are simply a must-have. The Lakme Truewear ColorCrush Nail Color comes with Color Lock Technology that ensures the color stays on your nails for long. The chip-resistant feature of this Lakme Truewear Nail Color keeps the color intact.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;S</em></span><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">trenghtens nails with a long lasting nail enamel</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;5</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">new glitter shades that give your nails a silk sheen</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">C</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">ontains resins with color lock technology</span></em></p>', 'products/January2019/4UYptiZl5sWKE6RN7Asu.jpg', '2019-01-17 13:02:00', '2019-01-17 13:04:46', '5', '5', '12', 169, '[\"products\\/January2019\\/jBUgUeu2TdlSQ7hJSOw4.jpg\"]', 'Lakme', 1, 3, NULL),
(67, 'lakme shade 49', NULL, 'products/January2019/frmx1jV3jiV0OsE8FulQ.jpg', '2019-01-20 15:29:02', '2019-01-20 15:29:02', '5', '5', '12', 134, '[\"products\\/January2019\\/nUhION9e2R5WJFuFBrpv.jpg\"]', 'Lakme', 0, 5, NULL),
(68, 'lakme yellow 1 nail paint', NULL, 'products/January2019/2sTyCmwyP37IQDKuBjZu.jpg', '2019-01-20 18:29:29', '2019-01-20 18:29:29', '5', '5', '12', 134, '[\"products\\/January2019\\/CEaUVwxUafLe87oVeYfH.jpg\"]', 'Lakme', 0, 5, 5),
(69, 'lakme shade 505 orange nail paint', NULL, 'products/January2019/Y9b1gs1AlKxwP1ERf6QO.jpg', '2019-01-20 18:34:11', '2019-01-20 18:34:11', '5', '5', '12', 155, '[\"products\\/January2019\\/MRWF0ARjHiUBFuUFk6td.jpg\",\"products\\/January2019\\/eu3zEVBq0nPrClxy2sBD.jpg\"]', 'Lakme', 0, 3, NULL),
(72, 'Lakme Color Crush truewear, redish shade 62, 9ml', NULL, 'products/January2019/hENB11YqFqYcPl2AnT9y.jpg', '2019-01-20 18:45:29', '2019-01-20 18:45:29', '5', '5', '12', 145, '[\"products\\/January2019\\/TYxmJUvQ5LcQd3yLgTmP.jpg\"]', 'Lakme', 0, 3, 5),
(76, 'Lakme Color Crush truewear, shade 55, 9ml', NULL, 'products/January2019/J3oMOTJl03sis3sODUwU.jpg', '2019-01-20 19:06:09', '2019-01-20 19:06:09', '5', '5', '12', 155, '[\"products\\/January2019\\/78J2IwR8g7OIiW2f4WWA.jpg\"]', 'Lakme', 0, 3, 3),
(77, 'Lakme 9to5 Primer and Matte Nail Color, Teal Deal', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em> : <strong>Teal Deal</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em> Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> Vibrant Shades</span></em></p>', 'products/January2019/7X6vrugQym3Mxy4ajIFN.jpg', '2019-01-21 04:43:00', '2019-01-21 05:12:00', '5', '5', '12', 190, '[\"products\\/January2019\\/T1PtFitjgDf06McbB1Kr.jpg\"]', 'Lakme', 1, 4, NULL),
(78, 'Lakme 9to5 Primer and Matte Nail Color, Rosy', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #ff99cc;\"><strong>Rosy</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/kMBEodKRylWDgzGJ3mqn.jpg', '2019-01-21 04:46:46', '2019-01-21 04:46:46', '5', '5', '12', 190, '[\"products\\/January2019\\/0PrKOvdreF8jPxIwcQsY.jpg\"]', 'Lakme', 1, 4, NULL),
(79, 'Lakme 9to5 Primer and Matte Nail Color, Orange Coat', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #ff6600;\"><strong>Orange Coat</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/E0jf0gEflGUmZfiu4ego.jpg', '2019-01-21 05:11:34', '2019-01-21 05:11:34', '5', '5', '12', 190, '[\"products\\/January2019\\/SSmFkxdfil41Of6vzuxE.jpg\"]', 'Lakme', 1, 3, NULL),
(80, 'Lakme 9to5 Primer and Matte Nail Color, Crimson', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #ff0000;\"><strong>Crimson</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/Gc45KTVdgFdaNgLQxXhA.jpg', '2019-01-21 05:13:24', '2019-01-21 05:13:24', '5', '5', '12', 199, '[\"products\\/January2019\\/dvPBgFyX0P7o8iVXi2hd.jpg\"]', 'Lakme', 1, 3, NULL),
(81, 'Lakme 9to5 Primer and Matte Nail Color, Charcoal', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<strong>Charcoal</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/h5bzKuDyz2lCBQlFoI9t.jpg', '2019-01-21 05:14:44', '2019-01-21 05:14:44', '5', '5', '12', 199, '[\"products\\/January2019\\/SnTDWWFK5VGwfK40IkY7.jpg\"]', 'Lakme', 1, 5, NULL),
(82, 'Lakme 9to5 Primer and Matte Nail Color, Blush', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #ffcc99;\"><strong>Blush</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/qpUcVR5Kdhdl37VkZOhm.jpg', '2019-01-21 05:18:57', '2019-01-21 05:18:57', '5', '5', '12', 199, '[\"products\\/January2019\\/aF5OpyFwRSKyDf2Pmag6.jpg\"]', 'Lakme', 1, 3, NULL),
(83, 'Lakme 9to5 Primer and Matte Nail Color, Apricot', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<strong><span style=\"color: #ffcc99;\">Apricot</span></strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/sqfYnubcHnsMDRXiiD1p.jpg', '2019-01-21 05:22:27', '2019-01-21 05:22:27', '5', '5', '12', 199, '[\"products\\/January2019\\/wM3BFxrP5hLfDihQvtLO.jpg\"]', 'Lakme', 1, 2, NULL),
(84, 'Lakme 9to5 Primer and Matte Nail Color, Coral', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:<span style=\"color: #ff6600;\">&nbsp;<strong>Coral</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/nKhaJ2hhrot5gO6fD9Jo.jpg', '2019-01-21 05:29:00', '2019-01-21 05:31:45', '5', '5', '12', 199, '[\"products\\/January2019\\/E4cunRSRTlF4iBT6Nun3.jpg\"]', 'Lakme', 0, 2, NULL),
(85, 'Lakme 9to5 Primer and Matte Nail Color, Green Chic', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:<span style=\"color: #99cc00;\">&nbsp;<strong>Green Chic</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/3OFQ2Xl3LlG0SKPRWe1q.jpg', '2019-01-21 05:31:03', '2019-01-21 05:31:03', '5', '5', '12', 199, '[\"products\\/January2019\\/rLKD1XGSb3IaOntuZ4no.jpg\"]', 'Lakme', 1, 3, NULL);
INSERT INTO `products` (`id`, `name`, `description`, `feature_image`, `created_at`, `updated_at`, `category`, `main_category`, `sub_category`, `price`, `images`, `brand`, `featured`, `stocks`, `discount`) VALUES
(86, 'Lakme 9to5 Primer and Matte Nail Color, Lilac Link', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #cc99ff;\"><strong>Lilac link</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/Z1QGXtIi2V12FkqwVWg2.jpg', '2019-01-21 05:33:27', '2019-01-21 05:33:27', '5', '5', '12', 189, '[\"products\\/January2019\\/B2slG6LSqYPlNTE793Iy.jpg\"]', 'Lakme', 0, 2, NULL),
(87, 'Lakme 9to5 Primer and Matte Nail Color, Coral Magenta', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #800080;\"><strong>Magenta</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/vLfeetjpTbumQydvKWCI.jpg', '2019-01-21 05:35:04', '2019-01-21 05:35:04', '5', '5', '12', 219, '[\"products\\/January2019\\/1QejUQ3v8SfTHg1jVPhW.jpg\"]', 'Lakme', 0, 4, NULL),
(88, 'Lakme 9to5 Primer and Matte Nail Color, Lime Treat', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #99cc00;\"><strong>Lime Treat</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/JiqXLPSpDKdWqJDpAwV8.jpg', '2019-01-21 05:36:22', '2019-01-21 05:36:22', '5', '5', '12', 189, '[\"products\\/January2019\\/9SvRJNJMo5zcjlRpYnfs.jpg\"]', 'Lakme', 0, 3, NULL),
(89, 'Lakme 9to5 Primer and Matte Nail Color Topcoat, Clear', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #999999;\"><strong>Topcoat Clear</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/bfSm15UiSSyeVC3Sg7SQ.jpg', '2019-01-21 05:38:26', '2019-01-21 05:38:26', '5', '5', '12', 190, '[\"products\\/January2019\\/ylkACzILug0kcC187Z85.jpg\"]', 'Lakme', 0, 3, NULL),
(90, 'Lakme 9to5 Primer and Matte Nail Color, Red Risk', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #800000;\"><strong>Red Risk</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/mC3EPCu6slEN7YVPcuIX.jpg', '2019-01-21 05:40:20', '2019-01-21 05:40:20', '5', '5', '12', 229, '[\"products\\/January2019\\/bqJCA46kyKsBOciVa7oJ.jpg\"]', 'Lakme', 0, 5, NULL),
(91, 'Lakme 9to5 Primer and Matte Nail Color, Indigo Ink', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #3366ff;\"><strong>Indigo Ink</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/gBkbgc45FD8FLJ9uEiEX.jpg', '2019-01-21 05:42:22', '2019-01-21 05:42:22', '5', '5', '12', 199, '[\"products\\/January2019\\/YPkydsRB5ZMGMdrtqpgW.jpg\"]', 'Lakme', 0, 3, NULL),
(92, 'Lakme 9to5 Primer and Matte Nail Color, Pink Blast', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #ff99cc;\"><strong>Pink Blast</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/tH7D647XMboLUKsGoAkQ.jpg', '2019-01-21 05:44:00', '2019-01-21 05:46:06', '5', '5', '12', 199, '[\"products\\/January2019\\/fTbjAMLCDtdo5B1AeVmX.jpg\"]', 'Lakme', 0, 2, NULL),
(93, 'Lakme 9to5 Primer and Matte Nail Color, Rose Rush', '<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;:&nbsp;<span style=\"color: #ff99cc;\"><strong>Rose Rush</strong></span></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong><em>&nbsp;Chip Proof</em></span></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/4hC1jCpaiiWPbaMBNTvP.jpg', '2019-01-21 06:03:49', '2019-01-21 06:03:49', '5', '5', '12', 219, '[\"products\\/January2019\\/6pgtmi308CiRlPMEEg0z.jpg\"]', 'Lakme', 0, 2, NULL),
(95, 'L\'Oreal Paris Super Liner Gel Intenza 36H - Profound Black', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">Superliner Gel Intenza is incredibly versatile to use.</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">It provides all the ease of a pencil eye liner with the durability of liquid.</li>\r\n<li style=\"box-sizing: border-box;\">It is easy to apply, and unlike liquid, it can blend beautifully into the eye shadow to create high eye definition.</li>\r\n<li style=\"box-sizing: border-box;\">So whether you want to pull off a 1960s defined flick, or the classically chic smokey effect, Superliner Gel Intenza will achieve it with ease.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\">Key Features :</strong></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Lasts for up to 36 hours</li>\r\n<li style=\"box-sizing: border-box;\">Is smudge proof</li>\r\n<li style=\"box-sizing: border-box;\">Resists tears and sweat</li>\r\n<li style=\"box-sizing: border-box;\">Is crease-proof and keeps a fresh, just applied look throughout wear</li>\r\n<li style=\"box-sizing: border-box;\">Does not smear, fade, rub off or stain the lids.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">So, create your own signature look this season and dare to be graphic with 5 intense designer shades of L\'Oreal Paris Superliner Gel Intenza!</p>\r\n<p>&nbsp;</p>\r\n<p class=\"mrp-n-expiry\" style=\"box-sizing: border-box; margin: 0px 0px 10px; font-weight: 600; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">MRP: 800</p>\r\n<p class=\"mrp-n-expiry\" style=\"box-sizing: border-box; margin: 0px 0px 10px; font-weight: 600; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">Expiry Date: 15 July 2020</p>', 'products/January2019/vvWnT9KkHhB6tn1P40QY.jpg', '2019-01-21 06:27:22', '2019-01-21 06:27:22', '1', '2', '3', 640, '[\"products\\/January2019\\/JOyxylAGZUwtXmXB2W03.jpg\",\"products\\/January2019\\/iCkW6XnZaREyMdFWYgy9.jpg\",\"products\\/January2019\\/qLLPzCa5o7Tu3feTjNoY.jpg\"]', 'Loreal', 1, 10, NULL),
(96, 'L\'Oreal Paris Color Riche Moist Matte Lipstick', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">Indulge your lips in rich vibrant color with L\'Oreal Paris Color Riche Moist Matte Lipsticks. These ultra moisturizing lip colors give a gorgeous velvet matte finish. The unique formula contains jojoba oil for unrivaled moisture and comfort along with matte gel technology to create an intense matte look. The highly pigmented color that delivers a rich matte effect. Jojoba Oil keeps lips hydrated and gives a smooth and silky finish. Easy to apply and long-lasting.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\">Features:</strong></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Highly pigmented lip shades from the ultra matte collection.</li>\r\n<li style=\"box-sizing: border-box;\">Extreme color payoff in just one swipe.</li>\r\n<li style=\"box-sizing: border-box;\">Non-drying and super comfortable on lips.</li>\r\n<li style=\"box-sizing: border-box;\">Provides intense hydration that\'stays all day long.</li>\r\n<li style=\"box-sizing: border-box;\">Now in a luxurious new black leather packaging.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\">About the Brand:</strong>&nbsp;A global beauty care brand, L\'Oreal Paris believes in the essence of helping every woman embrace her unique beauty while reinforcing her innate sense of self-worth with their internationally renowned, diversive products. The brand has wide range of affordable luxury, high-quality products in categories like skin care, hair care, hair color and makeup..</p>\r\n<p class=\"mrp-n-expiry\" style=\"box-sizing: border-box; margin: 0px 0px 10px; display: block; font-weight: 600;\">&nbsp;</p>', 'products/January2019/JspasWdTrNgaZHvRj7wM.png', '2019-01-21 06:35:00', '2019-01-21 08:47:03', '1', '3', '4', 750, '[\"products\\/January2019\\/PFAzgABw4ly95GZc0XpQ.jpg\",\"products\\/January2019\\/KzcFhlVqIfMeHpERAFIY.jpg\",\"products\\/January2019\\/3c7py8lBp2YCoBPmYmsn.jpg\"]', 'Loreal', 1, 10, 10),
(97, 'L\'Oreal Paris Voluminous Lash Paradise Mascara', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">Take your lashes to paradise with voluptuous volume and intense length with L\'Oreal Paris Lash Paradise Mascara. Its soft wavy bristle brush holds the maximum amount of formula. 200+ bristles catch every lash for a dramatic volumizing effect. Silky smooth formula glides on evenly and easily. This volumizing and lengthening mascara delivers a full lash fringe that\'s feathery soft; no flaking, no smudging, no clumping.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\">Features :</strong></p>\r\n<p>&nbsp;</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Volumizes lashes with intense effect.</li>\r\n<li style=\"box-sizing: border-box;\">Glides evenly and lengthens lashes.</li>\r\n<li style=\"box-sizing: border-box;\">No clumping, flaking or smudging.</li>\r\n<li style=\"box-sizing: border-box;\">Leaves a long lasting volumizing impact.</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\" /><strong style=\"box-sizing: border-box; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">Additional Information :&nbsp;</strong><span style=\"color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">A global beauty care brand, L\'Oreal Paris believes in the essence of helping every woman embrace her unique beauty while reinforcing her innate sense of self-worth with their internationally renowned, diversive products. The brand has wide range of affordable luxury, high-quality products in categories like skin care, hair care, hair color and makeup.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p class=\"mrp-n-expiry\" style=\"box-sizing: border-box; margin: 0px 0px 10px; font-weight: 600; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">&nbsp;</p>', 'products/January2019/qBLOwGDHQJGq3g2mSw6H.jpg', '2019-01-21 06:41:00', '2019-01-21 08:43:46', '1', '1', '1', 799, '[\"products\\/January2019\\/PuWQaqXQkj0DaHCYuMDh.jpg\",\"products\\/January2019\\/2oLXOs2aQUAszxWhnrh8.jpg\"]', 'Loreal', 1, 10, 10),
(99, 'L\'Oreal Paris Magic Retouch Instant Root Concealer', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">The L\'Oreal Paris Magic Retouch is an instant root concealer spray that covers grey roots in just one quick spray - when, Where and how you need it. Perfectly matches and blends with your hair color. 3 seconds to a flawless root touch up. The pinpoint micro-diffuser precisely targets greys and the rich color pigments give you perfectly blended coverage.Lasts until washed out. No transfer, Lightweight formula. Available in brown and black hair color. Find your shade!</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Magic retouch conceals grey roots in just one quick spray</li>\r\n<li style=\"box-sizing: border-box;\">Perfectly matches and blends hair color with leading shades, even salon color</li>\r\n<li style=\"box-sizing: border-box;\">3 seconds to flawless roots. Magic Retouch conceals greys and roots in just one quick spray - when, Where and how you need it</li>\r\n<li style=\"box-sizing: border-box;\">Lasts until washed out</li>\r\n<li style=\"box-sizing: border-box;\">No transfer, Lightweight formula</li>\r\n<li style=\"box-sizing: border-box;\">Up to 30 uses</li>\r\n<li style=\"box-sizing: border-box;\">The pinpoint micro-diffuser precisely targets greys and the rich color pigments give you perfectly blended coverage</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #666666; font-family: \'Source Sans Pro\', sans-serif; font-size: 16px;\"><strong style=\"box-sizing: border-box;\">Additional Information:&nbsp;</strong>A global beauty care brand, L&rsquo;Or&eacute;al Paris believes in the essence of helping every woman embrace her unique beauty while reinforcing her innate sense of self-worth with their internationally renowned, Diversive products. The brand has a wide range of affordable luxury, High-quality products in categories like skin care, Hair care, Hair color and makeup.</p>', 'products/January2019/leMyNGTcEbGr5dFZEFmJ.jpg', '2019-01-22 06:19:29', '2019-01-22 06:19:29', '3', '1', '1', 600, '[\"products\\/January2019\\/jN1wwgC7MoTFMjVYYfjH.jpg\",\"products\\/January2019\\/7BwjzE2ZCq0l9BEGHUXY.jpg\",\"products\\/January2019\\/ZVz4pYGpp09IFRKi8K6B.jpg\"]', 'Loreal', 1, 10, NULL),
(100, 'Lakme 9to5 Primer and Matte Nail Color, Green', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em style=\"box-sizing: border-box;\">Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;: <span style=\"color: #339966;\"><strong>Green</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong><em style=\"box-sizing: border-box;\">&nbsp;Chip Proof</em></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/wAPpwl4xXUIbz2X09IaD.jpg', '2019-01-22 12:23:40', '2019-01-22 12:23:40', '5', '5', '12', 190, '[\"products\\/January2019\\/heEy3jtGlQh4bNApNMfH.jpg\"]', 'Lakme', 0, 3, NULL),
(101, 'Lakme 9to5 Primer and Matte Nail Color, Fuchsia', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em style=\"box-sizing: border-box;\">Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;: </span><span style=\"box-sizing: border-box; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><span style=\"color: #ff99cc;\"><strong>Fuchsia</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong><em style=\"box-sizing: border-box;\">&nbsp;Chip Proof</em></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/fZ2C78gaTcdqk5CIswvE.jpg', '2019-01-22 12:26:08', '2019-01-22 12:26:08', '5', '5', '12', 199, '[\"products\\/January2019\\/rteik93UkGoft9UdZ32I.jpg\"]', 'Lakme', 0, 3, NULL),
(102, 'Lakme 9to5 Primer and Matte Nail Color, Pink Case', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em style=\"box-sizing: border-box;\">Lakme 9To5 Primer and Matte Mail Color</em>&nbsp;: </span><span style=\"box-sizing: border-box; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><span style=\"color: #ff99cc;\"><strong>Pink case</strong></span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Lakme 9 to 5 primer and matte nails is the newest launch in in the Lakme portfolio with a matte nail polish range. Lakme 9 to 5 primer and matte nails holds true to the chip proof promise but comes with a lot more. Lakme 9 to 5 primer and matte nails gives instant matte finish which has a smooth texture, it last through the week. The packaging looks really pretty with a matte finished cap. Lakme 9 to 5 primer and matte nails range comes in nine vibrant shades with a top coat which can make any nail polish matte so be a trendsetter, whether at work or at a party. Lakme 9 to 5 primer and matte nails is perfect for everyday office wear as well as after work parties. Lakme 9 to 5 primer and matte nails can be used to do a variety of nail art concepts which look quirky and vibrant because of the shades. This range goes well with Lakme 9 to 5 primer and matte lipsticks and Lakme 9 to 5 primer and matte powder foundation to get the complete look.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong><em style=\"box-sizing: border-box;\">&nbsp;Chip Proof</em></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Premium Matte Shades</span></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Long Lasting Color</span></em></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 25px; font-family: Montserrat, sans-serif; font-size: 11px;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong style=\"box-sizing: border-box;\">&gt;</strong>&nbsp;Vibrant Shades</span></em></p>', 'products/January2019/J3GFFVvYCyElnpHBqlGV.jpg', '2019-01-22 12:28:54', '2019-01-22 12:28:54', '5', '5', '12', 199, '[\"products\\/January2019\\/vgFZW4EMJfM3UyZ1LRSD.jpg\"]', 'Lakme', 0, 4, NULL),
(103, 'L\'Oreal Paris Excellence Creme Hair Color, 4 Natural Black', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r : <strong>Black</strong></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em> : <strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em> : <strong>72ml+100ml</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> Rich, even, long lasting colour with a soft and silky touch.</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong> T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></p>\r\n<p><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong> Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></p>', 'products/January2019/YgTTPKg9fSpjsDEXhn3J.jpg', '2019-01-24 10:25:52', '2019-01-24 10:25:52', '3', '6', '9', 498, '[\"products\\/January2019\\/q8o1asD3B3iwYk31j77o.jpg\",\"products\\/January2019\\/hOHt2ImNOBj3Z0tSfSzy.jpg\",\"products\\/January2019\\/5Hj6R7sslku598qiFPKP.jpg\"]', 'Loreal', 0, 4, NULL),
(104, 'L\'Oreal Paris Excellence Creme Hair Color, 4 Burgundy', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r :&nbsp;<span style=\"color: #800000;\"><strong>Burgundy</strong></span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100ml</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span></em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><em>00 percent grey coverage throughout</em>.</span></p>', 'products/January2019/wRMRqFEa16Ttyc1QnFWk.jpg', '2019-01-24 10:28:42', '2019-01-24 10:28:42', '3', '6', '9', 549, '[\"products\\/January2019\\/Tt3XIMD7716v0mZvtSct.jpg\",\"products\\/January2019\\/Og7AFj04wKHkmyGnQM84.jpg\",\"products\\/January2019\\/mrhMm4JeZporbTXy585b.jpg\"]', 'Loreal', 0, 2, NULL),
(105, 'L\'Oreal Paris Skin Perfect 30+ Anti-Fine Lines cream, 50gm', NULL, 'products/January2019/RG9ArWcYQaeqZ337MU59.jpg', '2019-01-24 10:31:29', '2019-01-24 10:31:29', '2', '1', '9', 240, '[\"products\\/January2019\\/O0PgjUjNXX6y3Ig28OOn.jpg\",\"products\\/January2019\\/SFbZu7lHX6UYe9qJijJd.jpg\",\"products\\/January2019\\/A7Hqe7OCejYYbf6WLuL4.jpg\"]', 'Loreal', 0, 3, NULL),
(106, 'L\'Oreal Paris Excellence Creme Hair Color, 5.5 Mahogany Brown', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r :&nbsp;<span style=\"color: #993300;\">Mahogany Brown</span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100ml</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></em></p>', 'products/January2019/N3WgaLijb2RWxjT68ab6.jpg', '2019-01-24 10:35:36', '2019-01-24 10:35:36', '3', '6', '9', 499, '[\"products\\/January2019\\/7J8XN0nSBeSPY9PLx2i6.jpg\",\"products\\/January2019\\/p5EMOhiLhSyxdaPGnLxk.jpg\",\"products\\/January2019\\/LBiycENxonTdTvSlaxLp.jpg\"]', 'Loreal', 0, 2, NULL),
(107, 'L\'Oreal Paris Excellence Creme Hair Color, 4 Natural Dark Brown', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r : <span style=\"color: #800000;\">Natural Dark&nbsp;Brown</span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100ml</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></em></p>', 'products/January2019/Gmg6l9cTIDavtmsci5Pt.jpg', '2019-01-24 10:38:27', '2019-01-24 10:38:27', '3', '6', '9', 500, '[\"products\\/January2019\\/cTgQuiXfl0pLC0FPjU2N.jpg\",\"products\\/January2019\\/AK6kTkX9XrfsXicurHmz.jpg\",\"products\\/January2019\\/VJF1VO4gL1Zr0D7TcsZW.jpg\"]', 'Loreal', 1, 2, NULL);
INSERT INTO `products` (`id`, `name`, `description`, `feature_image`, `created_at`, `updated_at`, `category`, `main_category`, `sub_category`, `price`, `images`, `brand`, `featured`, `stocks`, `discount`) VALUES
(108, 'L\'Oreal Paris Excellence Creme Hair Color, 5 Natural Brown', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r :&nbsp;<span style=\"color: #993300;\">Brown</span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100gm</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></em></p>', 'products/January2019/9IKTZ5CqKfKcWXqz5FWZ.jpg', '2019-01-24 10:42:34', '2019-01-24 10:42:34', '3', '6', '13', 480, '[\"products\\/January2019\\/egU3HJKI3RUnDSWBFEkq.jpg\",\"products\\/January2019\\/HzlUHoDX8oe9YiR3cetS.jpg\",\"products\\/January2019\\/cxpMntloCuxJWu03nNd8.jpg\"]', 'Loreal', 0, 3, NULL),
(109, 'L\'Oreal Paris Excellence Creme Hair Color, 4.25 Aishwarya\'s Brown (Chocolate Brown)', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r : <span style=\"color: #993300;\">Aishwarya\'s Chocolate&nbsp;Brown</span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100gm</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></em></p>', 'products/January2019/6MI8u8SJPfNv99E9W4HM.jpg', '2019-01-24 10:46:33', '2019-01-24 10:46:33', '3', '6', '13', 519, '[\"products\\/January2019\\/VF0w2klGOVFcy6SBJzLf.jpg\",\"products\\/January2019\\/8debx9OMiNKGb20S28jg.jpg\",\"products\\/January2019\\/HMWeJ2zrZrGZg613ZGJ2.jpg\"]', 'Loreal', 0, 3, NULL),
(110, 'Livon Hair Colour Protect Serum', NULL, 'products/January2019/U9wyRgELCCIUQgw3WTYg.jpg', '2019-01-24 10:50:30', '2019-01-24 10:50:30', '3', '6', '13', 599, '[\"products\\/January2019\\/915gdXkxeHwJXw2BkRCB.jpg\",\"products\\/January2019\\/wuXMmg2rpHpDit8RpHsu.jpg\",\"products\\/January2019\\/rONY12aiPR521U0UNDst.jpg\"]', 'Lakme', 0, 2, NULL),
(111, 'L\'Oreal Paris Excellence Creme Hair Color, 4.16 Deep Plum', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r : </span><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><span style=\"color: #993300;\">Deep Plum</span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100gm</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></em></p>', 'products/January2019/vNoisl3wudYkZdwugIAh.jpg', '2019-01-24 10:52:40', '2019-01-24 10:52:40', '3', '6', '13', 490, '[\"products\\/January2019\\/PNjWyZAbe2p1NdLYPPDg.jpg\",\"products\\/January2019\\/uCtP7LWvZHbRcQhDrWky.jpg\",\"products\\/January2019\\/MAjMADj6waaRJztRSGBj.jpg\"]', 'Loreal', 1, 2, NULL),
(112, 'L\'Oreal Paris Excellence Creme Hair Color, 6 Light Brown', '<h2><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>L\'Oreal Paris Excellence Creme Hair Colo</em>r : <span style=\"color: #993300;\">Light&nbsp;Brown</span></span></h2>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><em>Weight</em>&nbsp;:&nbsp;<strong>260g</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Contents</em>&nbsp;:&nbsp;<strong>72ml+100gm</strong></span></p>\r\n<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\">Excellence Cr&egrave;me is the leading protection hair color infused with its triple care formula: an advanced technology concentrating 3 powerful ingredients that strengthens your hair while coloring, leaving it softer and protected</span></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Rich, even, long lasting colour with a soft and silky touch.</span></em></p>\r\n<p><em><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: small;\"><strong>&gt;</strong>&nbsp;T</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">riple care colour with triple care formulae.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;E</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">asy preparation ; easier application.</span></em></p>\r\n<p><em><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\"><strong>&gt;</strong>&nbsp;Upto 1</span><span style=\"color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px;\">00 percent grey coverage throughout.</span></em></p>', 'products/January2019/loCzNgBEHa9SNBOrlcjN.jpg', '2019-01-24 10:55:34', '2019-01-24 10:55:34', '3', '6', '13', 479, '[\"products\\/January2019\\/OTI8ujCDfeS7SLA3s7Jb.jpg\",\"products\\/January2019\\/e8NZ31oNZbv7eSfbvh1p.jpg\",\"products\\/January2019\\/Dgyz3tp25A2gyR8ijpV4.jpg\"]', 'Loreal', 0, 2, NULL),
(113, 'L\'OREAL PARIS CREME GLOSS', NULL, 'products/January2019/dZm6IjMHVu0RL4I4puvu.jpg', '2019-01-24 17:10:42', '2019-01-24 17:10:42', '3', '6', '13', 550, '[\"products\\/January2019\\/TP3PxJllKTJAWLWIbv9k.jpg\",\"products\\/January2019\\/TRr2FHYjz3i1YdFFKsb1.jpg\",\"products\\/January2019\\/1oh4DQIHGPRn6mwN9kKa.jpg\"]', 'Loreal', 0, 3, NULL),
(114, 'L\'oreal paris casting creme gloss, Burgundy', NULL, 'products/January2019/8uI8FSeZKOGE5rSpKQId.jpg', '2019-01-24 17:15:31', '2019-01-24 17:15:31', '3', '6', '13', 550, '[\"products\\/January2019\\/wJgaOPQ6mgXsrEbu79A5.jpg\",\"products\\/January2019\\/vPdq32TVsqiVEYlENlSM.jpg\",\"products\\/January2019\\/Nu4CnNNGIiXdInhEpujE.jpg\"]', 'Loreal', 0, 3, NULL),
(115, 'L\'oreal paris casting creme gloss, Chocolate', NULL, 'products/January2019/IxSLTJXo3xNd7aQLbEmE.jpg', '2019-01-24 17:18:01', '2019-01-24 17:18:01', '3', '6', '13', 550, '[\"products\\/January2019\\/zG62N8KKNk0GbrJFkzoh.jpg\",\"products\\/January2019\\/oole9ISvAiEHnFZgKRaJ.jpg\",\"products\\/January2019\\/ElOUwsy4A9Ovoqq4pFt6.jpg\"]', 'Loreal', 0, 3, NULL),
(116, 'L\'oreal paris casting creme gloss, Dark brown', NULL, 'products/January2019/27RHKDjJJ8mJpmf2yIE6.jpg', '2019-01-24 17:20:09', '2019-01-24 17:20:09', '3', '6', '13', 550, '[\"products\\/January2019\\/uqdl0QFApLrd0l4tiQ6p.jpg\",\"products\\/January2019\\/etkrTULQDtjxG9TcTzBp.jpg\",\"products\\/January2019\\/orb2q9Y7OZo8TRaYYMZE.jpg\"]', 'Loreal', 0, 3, NULL),
(117, 'L\'oreal paris casting creme gloss, darkest brown', NULL, 'products/January2019/gON7cepLCQ75FLvVFnUe.jpg', '2019-01-24 17:23:07', '2019-01-24 17:23:07', '3', '6', '13', 550, '[\"products\\/January2019\\/qQWi1RqbXapgVA8GrJ5F.jpg\",\"products\\/January2019\\/CJM2sAKhTUOcjSzl3tHh.jpg\",\"products\\/January2019\\/wWHW3LA5I8OpQZxUJg5i.jpg\"]', 'Loreal', 0, 2, NULL),
(118, 'L\'oreal paris casting creme gloss,  Ebony black', NULL, 'products/January2019/VgeQ4wEEbSCyUkVxTRJM.jpg', '2019-01-24 17:25:58', '2019-01-24 17:25:58', '3', '6', '13', 550, '[\"products\\/January2019\\/vALeFpxK1kMwuLJFglHQ.jpg\",\"products\\/January2019\\/X1hKS7EvrXF33p9hmQvU.jpg\",\"products\\/January2019\\/FLeJMTAHWAaK7F4ENvtM.jpg\"]', 'Loreal', 1, 4, NULL),
(119, 'L\'oreal paris casting creme gloss,  Iced chocolate', NULL, 'products/January2019/6yPleorKd1e78SOucE1x.jpg', '2019-01-24 17:28:22', '2019-01-24 17:28:22', '3', '6', '13', 560, '[\"products\\/January2019\\/6wcBO9bKeTwchjZzHurZ.jpg\",\"products\\/January2019\\/czNIbHeXn455DMmY8boz.jpg\",\"products\\/January2019\\/MyFNZpN84XBtLfsAiwki.jpg\"]', 'Loreal', 0, 4, NULL),
(120, 'L\'oreal paris casting creme gloss,  Mahogany', NULL, 'products/January2019/mrdtnetOfLqDTIFO2MAj.jpg', '2019-01-24 17:30:32', '2019-01-24 17:30:32', '3', '6', '13', 540, '[\"products\\/January2019\\/1QD2gYYcJo6RCH0DkHiP.jpg\",\"products\\/January2019\\/0fwNPPAYQbZLkpLIN5gK.jpg\",\"products\\/January2019\\/PNRB7rDJkdEVyCL80rYd.jpg\"]', 'Loreal', 0, 3, NULL),
(121, 'L\'oreal paris casting creme gloss,  Medium brown', NULL, 'products/January2019/gi9vlYwaWXJBq39gM7Wm.jpg', '2019-01-24 17:32:36', '2019-01-24 17:32:36', '3', '6', '13', 560, '[\"products\\/January2019\\/Y9ELvYrpv4sDGLHWkzLw.jpg\",\"products\\/January2019\\/UuD19BnodiWh8ZQaYFKH.jpg\",\"products\\/January2019\\/Ym02cklK7VJixQIRAstn.jpg\"]', 'Loreal', 0, 5, NULL),
(122, 'L\'oreal paris casting creme gloss,  Praline', NULL, 'products/January2019/fFQSiw59h790RGMR8wjG.jpg', '2019-01-24 17:34:33', '2019-01-24 17:34:33', '3', '6', '13', 540, '[\"products\\/January2019\\/gg98T5Re1YPOyFpKN8nq.jpg\",\"products\\/January2019\\/rHMiurDzbSKzI1t6hSJf.jpg\",\"products\\/January2019\\/LJoiU8EasoAUFVkgFwql.jpg\"]', 'Loreal', 0, 3, NULL),
(123, 'L\'oreal paris casting creme gloss,  Sonams dark chocolate', NULL, 'products/January2019/S67zaia3xOzE8LwzRcXp.jpg', '2019-01-24 17:37:01', '2019-02-01 05:38:49', '3', '6', '13', 550, '[\"products\\/January2019\\/k81CI5h6KE70jZLbsqMv.jpg\",\"products\\/January2019\\/W7aEmLhNgfqoIkIK5Jzs.jpg\",\"products\\/January2019\\/zPYlraqlcD5MnT921HCu.jpg\"]', 'Loreal', 0, 1, NULL),
(124, 'L,oreal paris advance repair 5 sampoo ,275ml', NULL, 'products/January2019/nHyCfXK4mXqOZbsQtlXX.jpg', '2019-01-25 16:47:24', '2019-01-25 16:47:24', '3', '7', '14', 264, '[\"products\\/January2019\\/I4HS9dfvmtA7th9ntQtz.jpg\"]', 'Loreal', 0, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-12-27 22:54:52', '2018-12-27 22:54:52'),
(3, 'Uploader', 'Uploader', '2019-01-07 05:10:43', '2019-01-07 05:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Pickfreely', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'PickFreely', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/February2019/d8m0uOCYFp2DxSszA0XZ.png', NULL, '$2y$10$LwHx//D8wPg69.OwpBaPS.f7uO30pp09qzIv807MQ66pqiOUMyp1q', 'eKpFupVpLIeheagfHYp0cW2vqFF5QmJi8wQstYF2OCfewS8CLXKHwotJGevi', '{\"locale\":\"en\"}', '2018-12-27 22:55:02', '2019-02-01 05:45:52'),
(4, 3, 'Dilkhush', 'dilkhushjha08@gmail.com', 'users/default.png', NULL, '$2y$10$Z9op.4O81msjxGDwmHGolO8w1fbQZQ1Et3aXVA2r9ucMI.YLW7MLy', 'LAgVJ9DmGlz7tO0PRtWb3Et1r8il3G2ybwdVSJjvv2l5B2DaKKU0lIYZ3KY9', '{\"locale\":\"en\"}', '2019-01-04 13:39:46', '2019-01-07 05:11:08'),
(5, 3, 'Rajiv', 'rajivmdj@gmail.com', 'users/default.png', NULL, '$2y$10$HBceuUwWjsUCUP3bY9DTA.qrtlGJiakebXAwzYHeEq9zML36KRS86', 'OYB8XdAiDnrEXg4lFKxggOWq7tNc5KAaqUlSQCts5wfPdIOfkSyA4tw4yG1F', '{\"locale\":\"en\"}', '2019-01-07 04:21:39', '2019-02-10 07:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(4, 3),
(5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cosmetic_categories`
--
ALTER TABLE `cosmetic_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cosmetic_main_categories`
--
ALTER TABLE `cosmetic_main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cosmetic_sub_categories`
--
ALTER TABLE `cosmetic_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customers_infos`
--
ALTER TABLE `customers_infos`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_type_id` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cosmetic_categories`
--
ALTER TABLE `cosmetic_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cosmetic_main_categories`
--
ALTER TABLE `cosmetic_main_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cosmetic_sub_categories`
--
ALTER TABLE `cosmetic_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers_infos`
--
ALTER TABLE `customers_infos`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
