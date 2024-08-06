-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2024 at 02:32 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anosha_fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `severity_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_index` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `name`, `filename`, `severity_level`, `level_index`, `created_at`, `updated_at`) VALUES
(1, 'Full Grip', 'uploads/mild/10_Full_Grip.mp4', 'mild', 10, '2024-07-01 09:46:49', '2024-07-01 09:46:49'),
(2, 'Hand Bend', 'uploads/mild/11_Hand_Bend.mp4', 'mild', 11, '2024-07-01 09:47:57', '2024-07-01 09:47:57'),
(3, 'Hand circuit', 'uploads/mild/12_Hand_circuit.mp4', 'mild', 12, '2024-07-01 09:51:39', '2024-07-01 09:51:39'),
(4, 'Making Fist', 'uploads/mild/13_Making_Fist.mp4', 'mild', 13, '2024-07-01 09:51:39', '2024-07-01 09:51:39'),
(5, 'Rolling Movement', 'uploads/mild/14_Rolling_Movement.mp4', 'mild', 14, NULL, NULL),
(6, 'Wrist Movement', 'uploads/mild/15_Wrist_Movement.mp4', 'mild', 15, NULL, NULL),
(7, 'Finger Extend', 'uploads/mild/3_Finger_Extend.mp4', 'mild', 3, NULL, NULL),
(8, 'Finger_Circle', 'uploads/mild/2_Finger_Circle.mp4', 'mild', 2, NULL, NULL),
(9, 'Finger Bending', 'uploads/mild/1_Finger_Bending.mp4', 'mild', 1, NULL, NULL),
(10, 'Finger Opposition', 'uploads/mild/4_Finger_Opposition.mp4', 'mild', 4, NULL, NULL),
(11, 'Finger Stretch', 'uploads/mild/5_Finger_Stretch.mp4', 'mild', 5, NULL, NULL),
(12, 'Finger Stretching', 'uploads/mild/6_Finger_Stretching.mp4', 'mild', 6, NULL, NULL),
(13, 'Fingers Rolling', 'uploads/mild/7_Fingers_Rolling.mp4', 'mild', 7, NULL, NULL),
(14, 'Fingers Spread', 'uploads/mild/8_Fingers_Spread.mp4', 'mild', 8, NULL, NULL),
(15, 'Fingers Bend', 'uploads/mild/9_Fngers_Bend.mp4', 'mild', 9, NULL, NULL),
(16, 'Ball Grip', 'uploads/moderate/1_Ball_Grip.mp4', 'moderate', 1, NULL, NULL),
(17, 'Ball Pinch', 'uploads/moderate/2_Ball_Pinch.mp4', 'moderate', 2, NULL, NULL),
(18, 'Ball_Pressing', 'uploads/moderate/3_Ball_Pressing.mp4', 'moderate', 3, NULL, NULL),
(19, 'Extend Out Fingers', 'uploads/moderate/4_Extend_Out_Fingers.mp4', 'moderate', 4, NULL, NULL),
(20, 'Extent Out Full Hand', 'uploads/moderate/5_Extent_Out_Full_Hand.mp4', 'moderate', 5, NULL, NULL),
(21, 'Finger Opposition', 'uploads/moderate/6_Finger_Opposition.mp4', 'moderate', 6, NULL, NULL),
(22, 'Thumb Flex Stretch', 'uploads/moderate/7_Thumb_Flex_Stretch.mp4', 'moderate', 7, NULL, NULL),
(23, 'Full Hand Flex', 'uploads/moderate/8_Full_Hand_Flex.mp4', 'moderate', 8, NULL, NULL),
(24, 'Rolling Movement', 'uploads/moderate/9_Rolling_Movement.mp4', 'moderate', 9, NULL, NULL),
(25, 'Wrist Curl', 'uploads/moderate/10_Wrist_Curl.mp4', 'moderate', 10, NULL, NULL),
(26, 'Wrist Move', 'uploads/severe/1_Wrist_Move.mp4', 'severe', 1, NULL, NULL),
(27, 'Wrist Flexor', 'uploads/severe/2_Wrist_Flexor.mp4', 'severe', 2, NULL, NULL),
(28, 'Wrist Rotation', 'uploads/severe/3_Wrist_Rotation.mp4', 'severe', 3, NULL, NULL),
(29, 'Fingers Opening', 'uploads/severe/4_Fingers_Opening.mp4', 'severe', 4, NULL, NULL),
(30, 'Thumb Movement', 'uploads/severe/5_Thumb_Movement.mp4', 'severe', 5, NULL, NULL),
(31, 'Wrist Mobility', 'uploads/severe/6_Wrist_Mobility.mp4', 'severe', 6, NULL, NULL),
(32, 'Finger Stretching', 'uploads/severe/7_Finger_Strectching.mp4', 'severe', 7, NULL, NULL),
(33, 'Wrist Wave', 'uploads/severe/8_Wrist_Wave.mp4', 'severe', 8, NULL, NULL),
(34, 'Hand Movement', 'uploads/severe/9_Hand_Movement.mp4', 'severe', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'public/processed/processed_image_0.jpg', '2024-07-28 10:33:52', '2024-07-28 10:33:52'),
(2, 1, 'uploads/processed/processed_image_0.jpg', '2024-07-28 10:38:53', '2024-07-28 10:38:53'),
(3, 1, 'uploads/processed/processed_image_0.jpg', '2024-07-28 10:42:41', '2024-07-28 10:42:41'),
(4, 1, 'uploads/processed/processed_image_0.jpg', '2024-07-28 10:43:21', '2024-07-28 10:43:21'),
(5, 1, 'uploads/processed/processed_image_0.jpg', '2024-07-28 10:51:33', '2024-07-28 10:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_30_091746_create_reports_table', 1),
(6, '2024_06_30_102345_create_exercises_table', 1),
(7, '2024_07_27_101627_create_images_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '4e1b9d9f4d96726a43878c3d9f6829cee32ef6817887346308b782f9f5277246', '[\"*\"]', NULL, '2024-07-01 06:20:55', '2024-07-01 06:20:55'),
(2, 'App\\Models\\User', 1, 'auth_token', '3ba55480286276abe211446d3158f75fe8d971beb2dee6128256f9dbd636273c', '[\"*\"]', '2024-07-01 06:26:58', '2024-07-01 06:26:24', '2024-07-01 06:26:58'),
(3, 'App\\Models\\User', 2, 'auth_token', '4be43e3d141f7a5d5863125703c16c48f30a0b2215b4e5080e8283f6d48f8358', '[\"*\"]', NULL, '2024-07-01 06:50:14', '2024-07-01 06:50:14'),
(4, 'App\\Models\\User', 3, 'auth_token', '2d9cf1d01b8cc36986f28174623fdbedc8cf7e5551570bbcae7b9b627517b837', '[\"*\"]', '2024-07-01 07:08:26', '2024-07-01 06:52:28', '2024-07-01 07:08:26'),
(5, 'App\\Models\\User', 4, 'auth_token', 'aeb8e91b473a7d83e370ea760963f54cca5f4893cdfb1dbba507695cfc7123f2', '[\"*\"]', NULL, '2024-07-01 06:57:22', '2024-07-01 06:57:22'),
(6, 'App\\Models\\User', 1, 'auth_token', 'dcc7302e3c9a6242eb614813c1765c196b575bf366d97a2efaead106da53df3b', '[\"*\"]', NULL, '2024-07-01 07:09:42', '2024-07-01 07:09:42'),
(7, 'App\\Models\\User', 1, 'auth_token', '49634b80a760294488d686b58da0f2e23c4f64287c396f3a42f97a5c5fc9d247', '[\"*\"]', NULL, '2024-07-01 07:09:57', '2024-07-01 07:09:57'),
(8, 'App\\Models\\User', 2, 'auth_token', 'bd000e0f0974a5d702ee9272e8491f5e7eb04e52156d230f3ef80d9810305869', '[\"*\"]', NULL, '2024-07-01 07:14:20', '2024-07-01 07:14:20'),
(9, 'App\\Models\\User', 1, 'auth_token', '8e575aaad441298911fedf69506aba39ad57396a6594bc3d43bf3fe7a6cca44e', '[\"*\"]', '2024-07-10 07:26:50', '2024-07-01 09:46:23', '2024-07-10 07:26:50'),
(10, 'App\\Models\\User', 2, 'auth_token', 'e784c078e24d1e8750dac0b065d2278f9a20bd789a1721b690471000a4cc6697', '[\"*\"]', NULL, '2024-07-01 15:57:04', '2024-07-01 15:57:04'),
(11, 'App\\Models\\User', 5, 'auth_token', '24a7269c84ca034b463a113f9320749dd35b57a57ce757279261d3549ada49e0', '[\"*\"]', NULL, '2024-07-01 15:57:55', '2024-07-01 15:57:55'),
(12, 'App\\Models\\User', 6, 'auth_token', 'ced4296eaad948077a108a906de1362d9ca106f08a05aa28fee34e4ef77b090c', '[\"*\"]', NULL, '2024-07-01 16:02:15', '2024-07-01 16:02:15'),
(13, 'App\\Models\\User', 7, 'auth_token', '05f0141d9d47cb830caa56bfc498ab0fdbf972ff613f1c298f8cbdc5c1448567', '[\"*\"]', NULL, '2024-07-01 16:03:09', '2024-07-01 16:03:09'),
(14, 'App\\Models\\User', 2, 'auth_token', '637ce4fb8a6933c1547c4ec0633aad66c7434873903871a48cfcc6ab3778aabb', '[\"*\"]', NULL, '2024-07-01 19:07:05', '2024-07-01 19:07:05'),
(15, 'App\\Models\\User', 1, 'auth_token', 'ba3566ab1385044b6f911a63da04bbcc4d6d900e9d0fc7eb054f47f671f573a6', '[\"*\"]', NULL, '2024-07-02 14:57:16', '2024-07-02 14:57:16'),
(16, 'App\\Models\\User', 1, 'auth_token', '9dcedbb13b44f3675438b664885dead8ad75ea0dc05efffd0f97be6c0f249031', '[\"*\"]', NULL, '2024-07-02 14:57:48', '2024-07-02 14:57:48'),
(17, 'App\\Models\\User', 8, 'auth_token', '387a348f0e5508ff5949fda89c2d832a05331f15f00d0e781ea61151d0737310', '[\"*\"]', NULL, '2024-07-02 14:58:00', '2024-07-02 14:58:00'),
(18, 'App\\Models\\User', 2, 'auth_token', 'da4133318acb9b4d3deafd153485485d747bcef73c65f11ed62567465ed1895d', '[\"*\"]', NULL, '2024-07-02 15:00:49', '2024-07-02 15:00:49'),
(19, 'App\\Models\\User', 2, 'auth_token', '29809be47524cf931f745f727388cd21975239f0800c2bf7f3df584ec4c79228', '[\"*\"]', '2024-07-02 15:09:17', '2024-07-02 15:09:16', '2024-07-02 15:09:17'),
(20, 'App\\Models\\User', 2, 'auth_token', 'e9e55df5b2e87df97d741781627809b409c06e1a47e0e6edba99574df3eafa20', '[\"*\"]', '2024-07-02 15:11:43', '2024-07-02 15:11:42', '2024-07-02 15:11:43'),
(21, 'App\\Models\\User', 2, 'auth_token', '907949417dfe0201c9114fab49b38fcf5f61f75f43a41a69841554b8c03a5c15', '[\"*\"]', '2024-07-02 15:25:37', '2024-07-02 15:25:37', '2024-07-02 15:25:37'),
(22, 'App\\Models\\User', 2, 'auth_token', 'eb27d0c6bf04537c76b444dcb7c75a0870f1d4d31865aa507058f0d619054c4e', '[\"*\"]', '2024-07-02 15:25:56', '2024-07-02 15:25:56', '2024-07-02 15:25:56'),
(23, 'App\\Models\\User', 2, 'auth_token', '9e6092bfffb56cfa59815e6fba4f26cc0317405f5ada32edfc3f2329ea4d70ee', '[\"*\"]', '2024-07-02 15:31:36', '2024-07-02 15:31:36', '2024-07-02 15:31:36'),
(24, 'App\\Models\\User', 2, 'auth_token', 'f7ce0b7fd74e04464bde49c12078ccb5a93389734c3c52ba106520b05e3429db', '[\"*\"]', '2024-07-02 15:32:38', '2024-07-02 15:32:38', '2024-07-02 15:32:38'),
(25, 'App\\Models\\User', 2, 'auth_token', '65b7e26624cc0a0de22210d139378fc13cacb7c58b13330718ec9daa1b2ce7a5', '[\"*\"]', '2024-07-02 15:34:56', '2024-07-02 15:34:56', '2024-07-02 15:34:56'),
(26, 'App\\Models\\User', 2, 'auth_token', '6048acd108ceba3d8965f21e069aea2f362c947da8dab7ee3cb1e719238afa39', '[\"*\"]', '2024-07-02 17:01:55', '2024-07-02 17:01:55', '2024-07-02 17:01:55'),
(27, 'App\\Models\\User', 2, 'auth_token', 'fb833fa7184c2ad3c46d9f59996bf9bcb7e088599e6a6c21f688c26c5fdd9880', '[\"*\"]', '2024-07-02 17:14:59', '2024-07-02 17:14:59', '2024-07-02 17:14:59'),
(28, 'App\\Models\\User', 2, 'auth_token', 'e8370e0a2ebfe0383e85b8925cde6834190cd3c74a1ffcfb7846e4dd08ea53bd', '[\"*\"]', '2024-07-02 17:40:23', '2024-07-02 17:40:22', '2024-07-02 17:40:23'),
(29, 'App\\Models\\User', 2, 'auth_token', '41eb133f62080ff6750589ba973ed7188fdb5e7817cb055588d23ffb7d86d5de', '[\"*\"]', '2024-07-02 17:41:02', '2024-07-02 17:41:02', '2024-07-02 17:41:02'),
(30, 'App\\Models\\User', 2, 'auth_token', '28fe40fe533a4c3fdc948f50048e9bb44e4caff3890eff75cc132e51d516d2f2', '[\"*\"]', '2024-07-02 17:41:37', '2024-07-02 17:41:37', '2024-07-02 17:41:37'),
(31, 'App\\Models\\User', 2, 'auth_token', '04dd68097ed558a80333e9e8be0e6b0c68ecf1845eac5bd095b693bc5ec955dc', '[\"*\"]', '2024-07-02 17:43:45', '2024-07-02 17:43:44', '2024-07-02 17:43:45'),
(32, 'App\\Models\\User', 2, 'auth_token', '973bfd8bd50bba375ca9d3af56e02dc3db1332a947fcc9f337a9ac03ae2ac8e4', '[\"*\"]', '2024-07-02 17:44:51', '2024-07-02 17:44:50', '2024-07-02 17:44:51'),
(33, 'App\\Models\\User', 2, 'auth_token', 'c2c56d041fc76852adece36d66b73bcd3b4d989a867c086ff39aec11b9da45f7', '[\"*\"]', '2024-07-02 17:46:20', '2024-07-02 17:46:20', '2024-07-02 17:46:20'),
(34, 'App\\Models\\User', 2, 'auth_token', 'ef1a3bbe4006b6f77bede087d389b4e66f927981a414353a935795f20d3a336b', '[\"*\"]', '2024-07-02 17:53:01', '2024-07-02 17:53:01', '2024-07-02 17:53:01'),
(35, 'App\\Models\\User', 9, 'auth_token', '58229a1682d2d9ffacd344eb02d76c091d8ca9a5d8dbda378d5b407ac45cbfb2', '[\"*\"]', '2024-07-02 18:09:40', '2024-07-02 18:09:40', '2024-07-02 18:09:40'),
(36, 'App\\Models\\User', 2, 'auth_token', '75bbba9a8cb74c9a995abdb303a40cb3602c5577313e542f2372b9de82a501cf', '[\"*\"]', '2024-07-02 18:16:02', '2024-07-02 18:16:02', '2024-07-02 18:16:02'),
(37, 'App\\Models\\User', 1, 'auth_token', '804aa08e799f55eb9d7bea21b56ab05674a8d669844b9d976baaebb12c74eaf2', '[\"*\"]', '2024-07-03 12:25:01', '2024-07-03 12:24:34', '2024-07-03 12:25:01'),
(38, 'App\\Models\\User', 2, 'auth_token', '015c8e0430dd6042ae74b32180f6d69144d7487e20f47ebb00f010202f1ea6e1', '[\"*\"]', '2024-07-03 15:21:38', '2024-07-03 15:21:37', '2024-07-03 15:21:38'),
(39, 'App\\Models\\User', 2, 'auth_token', 'c28705032b618366076b37f027bf05fbb204ba75b0f57c365499e6526156cd80', '[\"*\"]', '2024-07-03 15:29:52', '2024-07-03 15:29:52', '2024-07-03 15:29:52'),
(40, 'App\\Models\\User', 2, 'auth_token', '47dc76a72186097364137ce8aa1782ce8672f20dfe072b3972b418314f5ab090', '[\"*\"]', '2024-07-03 15:32:11', '2024-07-03 15:32:11', '2024-07-03 15:32:11'),
(41, 'App\\Models\\User', 2, 'auth_token', 'd36c4cc64156a1177fbb6315e9866692b3b4d7082025e3a5d134ceaba57a06a2', '[\"*\"]', '2024-07-03 16:40:49', '2024-07-03 16:40:49', '2024-07-03 16:40:49'),
(42, 'App\\Models\\User', 2, 'auth_token', 'cbf3352a748e0d57b30174e2e2760f22930f7fbf7420fe551a9a7debe97d842e', '[\"*\"]', '2024-07-03 16:41:20', '2024-07-03 16:41:20', '2024-07-03 16:41:20'),
(43, 'App\\Models\\User', 2, 'auth_token', '99dd0ca389471ddbaf77abfef5d6c7ae7282533849a18ebd756b0611972d9329', '[\"*\"]', NULL, '2024-07-04 05:37:29', '2024-07-04 05:37:29'),
(44, 'App\\Models\\User', 2, 'auth_token', '08a38adc1d828080d5a7c9993e174e4ebbf670337a2b110d3c710f01f730996e', '[\"*\"]', '2024-07-04 06:14:48', '2024-07-04 05:43:57', '2024-07-04 06:14:48'),
(45, 'App\\Models\\User', 2, 'auth_token', 'b7fe1e4697452688b263ca102255dc385434a101186314818710c9bd859cc924', '[\"*\"]', '2024-07-04 05:45:50', '2024-07-04 05:45:50', '2024-07-04 05:45:50'),
(46, 'App\\Models\\User', 1, 'auth_token', '7c15854d885ce90aab1a1017c26eeca1787f980fcd1f21c51bd49e2350687b8c', '[\"*\"]', NULL, '2024-07-04 05:51:16', '2024-07-04 05:51:16'),
(47, 'App\\Models\\User', 2, 'auth_token', '19d50b9cedcf42665b5c7fa739391560c6ce107119d1c5ef38c9a2b260000d82', '[\"*\"]', '2024-07-04 05:53:42', '2024-07-04 05:53:42', '2024-07-04 05:53:42'),
(48, 'App\\Models\\User', 2, 'auth_token', '7a771a67a5504b1a52e4c1fe9b2b77598da3148a452d6c0c08fd8eac1f3c46d3', '[\"*\"]', '2024-07-04 06:39:07', '2024-07-04 06:39:07', '2024-07-04 06:39:07'),
(49, 'App\\Models\\User', 2, 'auth_token', '86bd5fe3a4fd54894d74fa323eaffb8e7a72b7fd91ccd4669bb8df22f3576ffb', '[\"*\"]', '2024-07-04 18:22:36', '2024-07-04 18:22:36', '2024-07-04 18:22:36'),
(50, 'App\\Models\\User', 2, 'auth_token', '3e73736b0b1bced42ce1146fbfe4dabbadef1ca1b66ca1017184f129a78d3536', '[\"*\"]', '2024-07-04 18:27:35', '2024-07-04 18:27:35', '2024-07-04 18:27:35'),
(51, 'App\\Models\\User', 2, 'auth_token', 'e31224283168af2198b1b8ebb302737977b0a58d8e75aa71f4aa43d0217eff12', '[\"*\"]', '2024-07-04 18:33:28', '2024-07-04 18:33:27', '2024-07-04 18:33:28'),
(52, 'App\\Models\\User', 2, 'auth_token', '5d681b34c9d129675aa3f00120ca8cf26760a25505ae3e7043860163fce1bac4', '[\"*\"]', '2024-07-04 19:31:20', '2024-07-04 19:24:48', '2024-07-04 19:31:20'),
(53, 'App\\Models\\User', 2, 'auth_token', 'be3e0ebfb9ff8a1730f3dcb8381471b5c6bf6a9ce2b76f3a610124999cc9107e', '[\"*\"]', '2024-07-04 19:32:08', '2024-07-04 19:31:38', '2024-07-04 19:32:08'),
(54, 'App\\Models\\User', 2, 'auth_token', '91f40be3a3492e612c7ceeb323f7d377ae94bedfa46626e7f8afb3d752114e82', '[\"*\"]', '2024-07-04 19:34:49', '2024-07-04 19:32:21', '2024-07-04 19:34:49'),
(55, 'App\\Models\\User', 10, 'auth_token', '8ffc34e77653bb6dff2d3a1e11b9301e622a06f50973bdb62f034a0c8a92658d', '[\"*\"]', '2024-07-04 19:35:24', '2024-07-04 19:35:23', '2024-07-04 19:35:24'),
(56, 'App\\Models\\User', 2, 'auth_token', '75346200a7f4a52e10df4de2947548d542062e0ec828cbecbbdc3b9f76d2cd6d', '[\"*\"]', '2024-07-04 19:48:53', '2024-07-04 19:41:14', '2024-07-04 19:48:53'),
(57, 'App\\Models\\User', 2, 'auth_token', '7d6dc4c50a53e037e41ba2be92e2af667b94cbdca1e0c270f6e3e812c6ec67df', '[\"*\"]', '2024-07-04 19:49:07', '2024-07-04 19:49:06', '2024-07-04 19:49:07'),
(58, 'App\\Models\\User', 2, 'auth_token', '85ad5aebefa87ba14541325d55df59b8d1aa315e18c4dcaf908ba3325ad9654d', '[\"*\"]', '2024-07-04 21:50:15', '2024-07-04 21:50:09', '2024-07-04 21:50:15'),
(59, 'App\\Models\\User', 11, 'auth_token', '4d46f9bfbe608a260c58b4e8b92421b607bc0d22f6c658f59a81f3046646e0a3', '[\"*\"]', '2024-07-05 07:21:17', '2024-07-05 07:21:17', '2024-07-05 07:21:17'),
(60, 'App\\Models\\User', 12, 'auth_token', '40b8bfc9e54d9195955b80783c68f710927857197127711a63cb5f6574d54916', '[\"*\"]', '2024-07-05 07:24:34', '2024-07-05 07:24:33', '2024-07-05 07:24:34'),
(61, 'App\\Models\\User', 12, 'auth_token', '2f304ef4a2d60111a6d2c4dcb15f6c0af438a2f3d2a6471c931702ee437d61fb', '[\"*\"]', '2024-07-05 07:26:19', '2024-07-05 07:26:19', '2024-07-05 07:26:19'),
(62, 'App\\Models\\User', 13, 'auth_token', 'c5de19113b62b576f3f2a788867643cfb0f2975420555cac067c0cece4f95668', '[\"*\"]', '2024-07-05 08:29:13', '2024-07-05 08:29:13', '2024-07-05 08:29:13'),
(63, 'App\\Models\\User', 13, 'auth_token', '8b30d25d003f4261eea013bef2f586edd6d2ea793a6b026256808689bdc1bfa2', '[\"*\"]', '2024-07-05 08:31:07', '2024-07-05 08:31:06', '2024-07-05 08:31:07'),
(64, 'App\\Models\\User', 14, 'auth_token', 'fee7b7800a4b1d6338a8cec86bbb1f1e5dd4386b4b43d1af956cca5de64d2fbf', '[\"*\"]', '2024-07-05 09:29:20', '2024-07-05 09:29:20', '2024-07-05 09:29:20'),
(65, 'App\\Models\\User', 15, 'auth_token', 'f6af7359445a40cb0490f30e262306388c9ab214ea1b8cadb0a32fb587b6df15', '[\"*\"]', '2024-07-05 11:00:27', '2024-07-05 11:00:26', '2024-07-05 11:00:27'),
(66, 'App\\Models\\User', 2, 'auth_token', '5c772f4beca84cb38239cf9c79f6fdfddc7eb0863c27e9a382385c33f95c12bb', '[\"*\"]', '2024-07-05 11:03:09', '2024-07-05 11:03:09', '2024-07-05 11:03:09'),
(67, 'App\\Models\\User', 15, 'auth_token', '73c6142b831cbc43e30c7fad51ba319f53f585e496160047be6079687e2375e6', '[\"*\"]', '2024-07-05 11:03:34', '2024-07-05 11:03:33', '2024-07-05 11:03:34'),
(68, 'App\\Models\\User', 12, 'auth_token', '5b4f9fe9de617fb2af4f0b6f63e14c2cc71df681bd1df3dca36587f4279b7f27', '[\"*\"]', '2024-07-05 15:03:22', '2024-07-05 14:58:01', '2024-07-05 15:03:22'),
(69, 'App\\Models\\User', 13, 'auth_token', '4469f1f9557378ef48ea18ae669e1da19ee7d779b61233352b4c35662dd6c3e0', '[\"*\"]', '2024-07-05 15:19:59', '2024-07-05 15:19:42', '2024-07-05 15:19:59'),
(70, 'App\\Models\\User', 14, 'auth_token', 'e16f3d9d3dbfab3535a02565b50bb7d876dcbc64a691560e1305053d93fb25ca', '[\"*\"]', '2024-07-05 15:32:42', '2024-07-05 15:32:02', '2024-07-05 15:32:42'),
(71, 'App\\Models\\User', 14, 'auth_token', '9167354da1d397366bc27b67111b2843093fc61372aa182ecdce0aa60fb3d923', '[\"*\"]', '2024-07-05 18:32:17', '2024-07-05 18:31:13', '2024-07-05 18:32:17'),
(72, 'App\\Models\\User', 12, 'auth_token', '4f1891abddf9ef5678fe54411f35b17da8643f4224aa973fe459f11c6700cb2b', '[\"*\"]', '2024-07-05 19:33:56', '2024-07-05 19:31:22', '2024-07-05 19:33:56'),
(73, 'App\\Models\\User', 16, 'auth_token', 'da5681b6e38c993d60a4bff595b6aa60c3234b40bcf577d94f2339ffdaba2b51', '[\"*\"]', '2024-07-05 19:39:38', '2024-07-05 19:35:48', '2024-07-05 19:39:38'),
(74, 'App\\Models\\User', 12, 'auth_token', '8239e02d2933b1eddffdf912617fe6a148d07071cc7e9f6a1fab2ecb4c7c081e', '[\"*\"]', '2024-07-05 19:37:23', '2024-07-05 19:37:10', '2024-07-05 19:37:23'),
(75, 'App\\Models\\User', 12, 'auth_token', '7a12c6df07c6ab4e04bd98e37f8c263ae18ed0cb2de3be26279754e800b6f7ea', '[\"*\"]', '2024-07-08 05:31:20', '2024-07-08 05:17:30', '2024-07-08 05:31:20'),
(76, 'App\\Models\\User', 2, 'auth_token', '8f305cf245b8b99a3d893b001945d225df2c6eb95d6ae97167b5b8c70fad6997', '[\"*\"]', '2024-07-08 08:02:46', '2024-07-08 08:02:24', '2024-07-08 08:02:46'),
(77, 'App\\Models\\User', 2, 'auth_token', 'f3c082302ca61c4278f92b6df613bb82f775ad6e34887033a0bfbf0f000ba1a5', '[\"*\"]', '2024-07-08 12:27:42', '2024-07-08 12:21:50', '2024-07-08 12:27:42'),
(78, 'App\\Models\\User', 2, 'auth_token', 'b8c2b23596ea98459d314c266f1d3f6d6a69bb88f757889c6570ecaccbdacebb', '[\"*\"]', '2024-07-08 12:29:18', '2024-07-08 12:28:34', '2024-07-08 12:29:18'),
(79, 'App\\Models\\User', 2, 'auth_token', '27314398e20be07b889cd737d3e1bb848f17b9651b632834b2fdb2256969de90', '[\"*\"]', '2024-07-08 12:35:49', '2024-07-08 12:29:44', '2024-07-08 12:35:49'),
(80, 'App\\Models\\User', 2, 'auth_token', '5fa1bce85112421a3c05d8229a2a6dbc547a9d008b87a8458c5c15d64ea02859', '[\"*\"]', '2024-07-08 12:52:03', '2024-07-08 12:43:13', '2024-07-08 12:52:03'),
(81, 'App\\Models\\User', 2, 'auth_token', 'a33531ada3be8812db3ab412c66c8906821a9e3e47e263d66fdda57169d777f9', '[\"*\"]', '2024-07-08 12:53:45', '2024-07-08 12:52:47', '2024-07-08 12:53:45'),
(82, 'App\\Models\\User', 16, 'auth_token', 'b8d3ff06761be659ac956c1fc4c94463eaca1f97ec2ff44f3c9ac9d5f75ad0ae', '[\"*\"]', '2024-07-08 20:24:50', '2024-07-08 20:24:05', '2024-07-08 20:24:50'),
(83, 'App\\Models\\User', 2, 'auth_token', 'b6370078254855d154267b8b63c984ca5b9db90fbad4eafa3b0e09f9f6e53a17', '[\"*\"]', '2024-07-09 05:10:50', '2024-07-09 05:07:47', '2024-07-09 05:10:50'),
(84, 'App\\Models\\User', 2, 'auth_token', 'bdc5495288db9b7eef83454eaa5955402298c52761306504261af602064d11aa', '[\"*\"]', '2024-07-09 05:20:13', '2024-07-09 05:20:13', '2024-07-09 05:20:13'),
(85, 'App\\Models\\User', 2, 'auth_token', '9745b1053569a4109af03dea157adfc0ecc57b28ed8f3e6b32d638ca63b9b1ca', '[\"*\"]', '2024-07-09 05:21:07', '2024-07-09 05:21:05', '2024-07-09 05:21:07'),
(86, 'App\\Models\\User', 2, 'auth_token', '681b19cf8ee09f69fd3fd0ac44a288b01fd72c166bdc4bc5c15beb84cdd2601a', '[\"*\"]', '2024-07-09 05:23:05', '2024-07-09 05:22:00', '2024-07-09 05:23:05'),
(87, 'App\\Models\\User', 2, 'auth_token', 'dc7cd2dd02ee500620f820a6f1cf8d729299e08bfc4783595818b181f305ccf6', '[\"*\"]', '2024-07-09 05:26:06', '2024-07-09 05:26:03', '2024-07-09 05:26:06'),
(88, 'App\\Models\\User', 2, 'auth_token', '50f1d244f92833c4f63542f0c29fa608c48ff84afaf8e250e5ff2d0c56c84386', '[\"*\"]', '2024-07-09 05:29:56', '2024-07-09 05:26:31', '2024-07-09 05:29:56'),
(89, 'App\\Models\\User', 2, 'auth_token', '217ec428389dacc449823e6887bb2fcb08d846381ec9566edeccea2fa34bb180', '[\"*\"]', '2024-07-09 05:36:07', '2024-07-09 05:34:55', '2024-07-09 05:36:07'),
(90, 'App\\Models\\User', 13, 'auth_token', 'b29770dd10d6e07cbaba888b7d6a28237a6f67190291e90d9e8210d298cce0fb', '[\"*\"]', '2024-07-09 16:42:20', '2024-07-09 16:41:12', '2024-07-09 16:42:20'),
(91, 'App\\Models\\User', 14, 'auth_token', '87db9dccf7ebce1919271a48c4b26ddaa595d8bbf0080f4316d7ff920b650924', '[\"*\"]', '2024-07-09 16:42:02', '2024-07-09 16:41:41', '2024-07-09 16:42:02'),
(92, 'App\\Models\\User', 2, 'auth_token', 'bf5e0fbdd68289c4527c2a48c8df217fa67659a90f63d4d989c01075cf0b1096', '[\"*\"]', '2024-07-09 16:48:20', '2024-07-09 16:48:14', '2024-07-09 16:48:20'),
(93, 'App\\Models\\User', 2, 'auth_token', '68d51b2f90ddb5ad53c9657258933936d5a608da9dfbb4d75696514a72b84301', '[\"*\"]', '2024-07-09 17:14:29', '2024-07-09 17:14:22', '2024-07-09 17:14:29'),
(94, 'App\\Models\\User', 2, 'auth_token', '9b5f2d7b1e1a68ff08514afea5dac842f62bf740be9f8aad546f490687daceeb', '[\"*\"]', '2024-07-09 17:26:36', '2024-07-09 17:16:00', '2024-07-09 17:26:36'),
(95, 'App\\Models\\User', 2, 'auth_token', 'ed1d8c4cb5a4d1ae43c57b9b5c9486c046e1c713e34d7968c435b624fc62dcb8', '[\"*\"]', '2024-07-09 17:42:10', '2024-07-09 17:27:28', '2024-07-09 17:42:10'),
(96, 'App\\Models\\User', 2, 'auth_token', '4ddca009bf8931c050df1d4456847ecc512abc1f60f5071b541299273507effd', '[\"*\"]', '2024-07-09 18:12:05', '2024-07-09 17:43:59', '2024-07-09 18:12:05'),
(97, 'App\\Models\\User', 2, 'auth_token', 'a12a8958cc7783e97075a618214ab2c317783f146745c805ee41bd7bc4625197', '[\"*\"]', '2024-07-09 18:15:08', '2024-07-09 18:14:54', '2024-07-09 18:15:08'),
(98, 'App\\Models\\User', 13, 'auth_token', '3f58fe759c6c83c990d0f41e386b513c115fe35a6cfa312e3b18fce168cd9b04', '[\"*\"]', '2024-07-10 07:35:19', '2024-07-10 07:35:14', '2024-07-10 07:35:19'),
(99, 'App\\Models\\User', 2, 'auth_token', 'd9a50774c471892f6952c400c9362e7d92b37312529e2641ab4ab05679683b1d', '[\"*\"]', '2024-07-10 10:55:56', '2024-07-10 10:55:53', '2024-07-10 10:55:56'),
(100, 'App\\Models\\User', 16, 'auth_token', 'ae6c7c369c47bf28135009f7b658beb272ee1bb99a4d1db26a93441f4fa20412', '[\"*\"]', '2024-07-11 10:50:48', '2024-07-11 10:50:47', '2024-07-11 10:50:48'),
(101, 'App\\Models\\User', 13, 'auth_token', '3569af1e07d73a41b86e40177fdd436ce2ce211e10d8dcb5c7674c41a293f195', '[\"*\"]', '2024-07-11 16:48:09', '2024-07-11 16:48:08', '2024-07-11 16:48:09'),
(102, 'App\\Models\\User', 14, 'auth_token', 'dc24dacaac79997d2059c8007ac5dc92ad1fd9158ecb05932c8b55e7ffd60aec', '[\"*\"]', '2024-07-12 10:49:12', '2024-07-12 10:48:51', '2024-07-12 10:49:12'),
(103, 'App\\Models\\User', 13, 'auth_token', '5015c7c53cd3e20bda29ba40a89a011854f12fd3eebb61dcfb4779b31fadda64', '[\"*\"]', '2024-07-14 16:09:00', '2024-07-14 16:07:40', '2024-07-14 16:09:00'),
(104, 'App\\Models\\User', 13, 'auth_token', '8f6808ddd7ea21c612e245b9c1c262e11d8f503fb3e3996b8a8f74ede07039aa', '[\"*\"]', '2024-07-14 16:52:25', '2024-07-14 16:51:01', '2024-07-14 16:52:25'),
(105, 'App\\Models\\User', 2, 'auth_token', '54fa8dfae92e410815c33c40775671239d2c88724125b41acfbc37866cdad957', '[\"*\"]', '2024-07-15 05:51:06', '2024-07-15 05:51:06', '2024-07-15 05:51:06'),
(106, 'App\\Models\\User', 2, 'auth_token', '750af77062ebc39d7b60bb84b325943e09f43fe811e807261e75abc27b95f711', '[\"*\"]', '2024-07-15 06:04:57', '2024-07-15 06:03:20', '2024-07-15 06:04:57'),
(107, 'App\\Models\\User', 2, 'auth_token', '649afe564f55c5e3c54dfa193051007f243deadf2e9f2744cd47a0234f35a593', '[\"*\"]', '2024-07-15 06:27:18', '2024-07-15 06:27:14', '2024-07-15 06:27:18'),
(108, 'App\\Models\\User', 2, 'auth_token', '801189c30996f0c380bd3d5dae994832d8b770d24915e97ee727e1ab75030c8d', '[\"*\"]', '2024-07-15 07:33:48', '2024-07-15 07:33:42', '2024-07-15 07:33:48'),
(109, 'App\\Models\\User', 2, 'auth_token', '30b1b1af032696893db95b3eec52ca83a88451c72e40fe3bd7af41dcd3a85950', '[\"*\"]', '2024-07-15 07:53:22', '2024-07-15 07:53:18', '2024-07-15 07:53:22'),
(110, 'App\\Models\\User', 2, 'auth_token', '9d2cf718728dbeb1b9fbf46d1de139bd0ab5bd246d3923c502cba6e8cf09192e', '[\"*\"]', '2024-07-15 07:55:01', '2024-07-15 07:54:55', '2024-07-15 07:55:01'),
(111, 'App\\Models\\User', 2, 'auth_token', '713584d3559ea0ac4ec3530eb97a1ea94445cb011bec5e36eb2f16877fc2ee08', '[\"*\"]', '2024-07-15 08:04:24', '2024-07-15 08:04:19', '2024-07-15 08:04:24'),
(112, 'App\\Models\\User', 13, 'auth_token', 'b894ced33cbe4d1edea309ed013476e610e7ae56e7fa6956cb5e5a63a2d233a8', '[\"*\"]', '2024-07-16 12:58:17', '2024-07-16 12:58:00', '2024-07-16 12:58:17'),
(113, 'App\\Models\\User', 2, 'auth_token', '7cd90d0c1f49a6e3c79307f8bcb99dab156fd378ff352eca688132f44a2cd627', '[\"*\"]', '2024-07-18 06:37:14', '2024-07-18 06:14:07', '2024-07-18 06:37:14'),
(114, 'App\\Models\\User', 2, 'auth_token', 'd638d5807925f9b604887b9cba23c936410b343ab5ca7753b267aa7979ad5382', '[\"*\"]', '2024-07-19 06:10:41', '2024-07-19 05:55:19', '2024-07-19 06:10:41'),
(115, 'App\\Models\\User', 2, 'auth_token', 'b64d6b7e3b914e9f8518818ad0b7e1d0fa4307757d760de1cf44d952eff44721', '[\"*\"]', '2024-07-19 06:24:11', '2024-07-19 06:23:59', '2024-07-19 06:24:11'),
(116, 'App\\Models\\User', 1, 'auth_token', 'b772f49998c19f7b4b3caeb9415b372d51bd6d6811c7e6170f09da327096a808', '[\"*\"]', '2024-07-28 10:51:32', '2024-07-27 10:33:10', '2024-07-28 10:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `severity_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ex_percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exercise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content_instructions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `severity_level`, `ex_percentage`, `exercise`, `user_id`, `content_instructions`, `created_at`, `updated_at`) VALUES
(1, 'severe', '13', '1', 1, 'sadasd', '2024-07-01 06:26:58', '2024-07-01 06:26:58'),
(2, 'severe', '13', '1', 2, 'sadasd', '2024-07-09 05:09:30', '2024-07-09 05:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `current_exercise_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `gender`, `email`, `password`, `role`, `created_at`, `updated_at`, `current_exercise_id`) VALUES
(1, 'Anosha', '20-30', 'female', 'anosha@gmail.com', '$2y$10$AHeDB9jahQB.F0wTWgSt0.d96.hHDTVNhp1hE2o94io8wVeYfSHY2', 'admin', '2024-07-01 06:20:55', '2024-07-01 06:20:55', 1),
(2, 'Kashan', '20-30', 'male', 'ak25117@gmail.com', '$2y$10$Oih1Z1348et.p/holF/9gu/Ws4lTsw1vK350VvgQhoRDoqgWc9BDm', 'user', '2024-07-01 06:50:14', '2024-07-09 18:15:08', 1),
(3, 'Kashan', '20-30', 'male', 'ak2517@gmail.com', '$2y$10$UNCGMxZUJ42s/TtCYbS8x.UjUxFHtoWG64KUvww7IE5qQCq1w4qIq', 'user', '2024-07-01 06:52:28', '2024-07-01 06:52:28', NULL),
(4, 'Kashan', '20-30', 'male', 'ak2511@gmail.com', '$2y$10$5OBgWnCa8.pY1/Pv1.exD.XLXkiXnHAp7EyV5YgJbKy1ASMijxcm6', 'user', '2024-07-01 06:57:22', '2024-07-01 06:57:22', NULL),
(5, 'A', '20-30', 'male', 'a@a.com', '$2y$10$LSA5SBaHhulE2DAW4.IHeOt5Tri4KzD9reE8DQO9NzhciuQegT91G', 'user', '2024-07-01 15:57:55', '2024-07-01 15:57:55', NULL),
(6, 'Q', '20-30', 'male', 'q@gmail.com', '$2y$10$9V4oYduy2w74iE0K6ul.6ezEiDDC/4vCX6M7OQYxKgL0TFn/0Z0pW', 'user', '2024-07-01 16:02:15', '2024-07-01 16:02:15', NULL),
(7, 'Q', '20-30', 'male', 'q@a.c', '$2y$10$YTjQBLX00uokhIGlHWVGzuM/0ViSLTEYhX0kCtoEnWyZCpYzPeoEu', 'user', '2024-07-01 16:03:09', '2024-07-01 16:03:09', NULL),
(8, 'Anosha', '20-30', 'female', 'anoshaa@gmail.com', '$2y$10$FuhGBNjABL42gqd45eV5oOdaroijfpGbYqJp4CckAiXw6A.au4FTW', 'user', '2024-07-02 14:58:00', '2024-07-02 14:58:00', NULL),
(9, 'Qwe', '20-30', 'male', 'qwe@gmail.com', '$2y$10$lMlIMqx9u20R7x7ZRT4w.OQWIhh3Oe0M8J9duKVmiHNzUlk2bfGBm', 'user', '2024-07-02 18:09:40', '2024-07-02 18:09:40', NULL),
(10, 'I', '20-30', 'Male', 'i@i.com', '$2y$10$j0GIMCQ0NijBm7Kv4LokiuWo3q1RNKYaF/R./tGEjok19ZOYrVSBu', 'user', '2024-07-04 19:35:23', '2024-07-04 19:35:23', NULL),
(11, 'Anosha', '20-30', 'Female', 'anoshaamjad05@gmail.com', '$2y$10$rnujsnTFka7exwaA59pWh.mKNKR0py.o9uQ7r83wskPTsLnDIXx6i', 'user', '2024-07-05 07:21:17', '2024-07-05 07:21:17', NULL),
(12, 'Minahil', '20-30', 'Female', 'minahilhameed126@gmail.com', '$2y$10$wzq5gIAGmTLNomHU2BNwLOgBgJKXH.2ldQZ02wZ5WL/AubaLeGQWW', 'user', '2024-07-05 07:24:33', '2024-07-08 05:31:20', 1),
(13, 'Anosha', '20-30', 'Female', 'aneebamjad402@gmail.com', '$2y$10$BkFhtwHiLD4cU.hG.ll3ReG2DBaw310q4PI5K7vRmLB0fl9nCm2VO', 'user', '2024-07-05 08:29:13', '2024-07-16 12:58:17', 23),
(14, 'Minahil', '20-30', 'Female', 'minahilamir02@gmail.com', '$2y$10$srcp/7OmJt8FfgWXsWFNe.9iXaA.cLx0NRvRc92wFAlUC/2vaZ9EO', 'user', '2024-07-05 09:29:20', '2024-07-05 18:32:17', 16),
(15, 'Ty', '40-50', 'Male', 'ty@gmail.com', '$2y$10$hM.P9QaE1l6saAz3.hnnr.M1b0RoPxSpRC3KeaIYCq95qw9FvxRKS', 'user', '2024-07-05 11:00:26', '2024-07-05 11:00:26', NULL),
(16, 'Minahil', '20-30', 'Female', 'minahilamir02@gmail.comm', '$2y$10$hoL9RZh4BoPluFzTezGZtu0SCQMnoIgfe5fy7sEDDE4.hmYxuTABa', 'user', '2024-07-05 19:35:48', '2024-07-08 20:24:50', 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_current_exercise_id_foreign` (`current_exercise_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_current_exercise_id_foreign` FOREIGN KEY (`current_exercise_id`) REFERENCES `exercises` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
