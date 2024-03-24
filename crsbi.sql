-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 02:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crsbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_slides`
--

CREATE TABLE `about_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `about_long_description` varchar(8000) DEFAULT NULL,
  `about_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_slides`
--

INSERT INTO `about_slides` (`id`, `title`, `meta_title`, `short_description`, `about_long_description`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'About Crime Reporting System', 'Our Vision\'s', 'Welcome to Tec Crime Info System', '<p class=\"desc\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<ul class=\"about__exp__list\">\r\n<li>\r\n<h5 class=\"title\">User experience design - (Product Design)</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to unseery.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Web and user interface design - Development</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Interaction design - Animation</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.</p>\r\n</li>\r\n</ul>', 'upload/about_slide/1792247826462707.png', NULL, '2024-02-29 10:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `active_crimes`
--

CREATE TABLE `active_crimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `crime_category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `crime_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crime_blogs`
--

CREATE TABLE `crime_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crime_category_id` varchar(255) DEFAULT NULL,
  `crime_title` varchar(255) DEFAULT NULL,
  `crime_image` varchar(255) DEFAULT NULL,
  `crime_tags` varchar(255) DEFAULT NULL,
  `crime_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crime_blogs`
--

INSERT INTO `crime_blogs` (`id`, `crime_category_id`, `crime_title`, `crime_image`, `crime_tags`, `crime_description`, `created_at`, `updated_at`) VALUES
(2, '1', 'Abusing Child', 'upload/crime_details/1793496122419670.jpg', 'abuse,crime,murder', '<p>Abuse against women is a grave violation of human rights, manifesting in various forms such as physical, emotional, and sexual violence. It perpetuates cycles of fear, trauma, and injustice, depriving women of their dignity and autonomy. We must stand united in condemning such acts and strive to create a society where every woman is respected, protected, and empowered to live free from violence.</p>', '2024-03-14 05:13:08', NULL),
(3, '1', 'Abusing Females', 'upload/crime_details/1793496216818428.jpg', 'abuse,female,crime', '<p>Abuse against women is a grave violation of human rights, manifesting in various forms such as physical, emotional, and sexual violence. It perpetuates cycles of fear, trauma, and injustice, depriving women of their dignity and autonomy. We must stand united in condemning such acts and strive to create a society where every woman is respected, protected, and empowered to live free from violence.</p>', '2024-03-14 05:14:38', NULL),
(4, '3', 'Half Murder', 'upload/crime_details/1793496307327119.jpg', 'half,murder,crime', '<p>Abuse against women is a grave violation of human rights, manifesting in various forms such as physical, emotional, and sexual violence. It perpetuates cycles of fear, trauma, and injustice, depriving women of their dignity and autonomy. We must stand united in condemning such acts and strive to create a society where every woman is respected, protected, and empowered to live free from violence.</p>', '2024-03-14 05:16:05', NULL),
(5, '3', 'Full Murder', 'upload/crime_details/1793496414167462.jpg', 'murder,full,crime,suspect', '<p>Abuse against women is a grave violation of human rights, manifesting in various forms such as physical, emotional, and sexual violence. It perpetuates cycles of fear, trauma, and injustice, depriving women of their dignity and autonomy. We must stand united in condemning such acts and strive to create a society where every woman is respected, protected, and empowered to live free from violence.</p>', '2024-03-14 05:17:47', '2024-03-15 07:24:19'),
(6, '1', 'Abusing Men', 'upload/crime_details/1793496568702744.jpg', 'men,abusing,crime', '<p>Abuse against women is a grave violation of human rights, manifesting in various forms such as physical, emotional, and sexual violence. It perpetuates cycles of fear, trauma, and injustice, depriving women of their dignity and autonomy. We must stand united in condemning such acts and strive to create a society where every woman is respected, protected, and empowered to live free from violence.</p>', '2024-03-14 05:20:14', NULL),
(7, '1', 'Abusing Animals', 'upload/crime_details/1793497314823611.jpg', 'abuse,animals,crime', '<p>Abuse against women is a grave violation of human rights, manifesting in various forms such as physical, emotional, and sexual violence. It perpetuates cycles of fear, trauma, and injustice, depriving women of their dignity and autonomy. We must stand united in condemning such acts and strive to create a society where every woman is respected, protected, and empowered to live free from violence.</p>', '2024-03-14 05:32:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crime_categories`
--

CREATE TABLE `crime_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crime_types` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crime_categories`
--

INSERT INTO `crime_categories` (`id`, `crime_types`, `created_at`, `updated_at`) VALUES
(1, 'Abuse', '2024-03-14 05:03:36', NULL),
(3, 'Murder', '2024-03-14 05:04:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crime_forms`
--

CREATE TABLE `crime_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `crime_category` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `crime_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `Facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `number`, `short_description`, `address`, `email`, `copyright`, `Facebook`, `twitter`, `instagram`, `created_at`, `updated_at`) VALUES
(1, '03185730513', 'Tec Crime is a pioneering company dedicated to providing cutting-edge solutions in the realm of crime reporting.', 'Ghori Town Phase 1', 'samratraicha@gmail.com', 'Copyright @ Sadain Rao 2024 All right Reserved', NULL, NULL, NULL, NULL, '2024-03-12 05:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `home_slides`
--

CREATE TABLE `home_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slider_image` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `description`, `slider_image`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Crime Reporting System', 'Crime reporting is vital for public safety, allowing citizens to inform authorities about criminal activities through various methods, including hotlines and online platforms.', 'upload/home_slide/1792141671173780.png', 'https://www.youtube.com/watch?v=PIzzT9a6b6k', NULL, '2024-02-28 06:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `incident_categories`
--

CREATE TABLE `incident_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `incident_name` varchar(255) DEFAULT NULL,
  `incident_title` varchar(255) DEFAULT NULL,
  `incident_image` varchar(255) DEFAULT NULL,
  `incident_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incident_categories`
--

INSERT INTO `incident_categories` (`id`, `incident_name`, `incident_title`, `incident_image`, `incident_description`, `created_at`, `updated_at`) VALUES
(3, 'Murder', 'Murder Reports Incident', 'upload/incident_categories/1792430301874652.jpg', '<p>Use this category to report incidents related to murder or suspicious deaths. If you have witnessed or have information about a potential homicide, it is crucial to report it promptly to law enforcement. Your cooperation is vital in ensuring a thorough investigation and the pursuit of justice. Please provide detailed information about the incident, including the location, time, and any relevant details that may assist authorities. Remember, your contribution can play a significant role in community safety and the resolution of serious criminal cases. Your identity may be kept confidential in accordance with the law, and your willingness to report can make a difference in maintaining a secure and protected community.</p>', '2024-03-02 10:39:10', '2024-03-02 10:52:23'),
(4, 'Abuse', 'Abusing Childs', 'upload/incident_categories/1793332929897406.jpg', '<p>Welcome to our platform dedicated to understanding and addressing the critical issue of child abuse. Here, we embark on a journey to illuminate the harsh realities faced by children who endure physical, emotional, and psychological harm at the hands of abusers.</p>\r\n<p>Our mission is to raise awareness, provide support, and advocate for the rights and well-being of abused children. Through insightful articles, informative resources, and heartfelt narratives, we aim to shed light on the devastating impact of abuse on young lives and offer pathways to healing and prevention.</p>', '2024-03-12 09:59:16', NULL);

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
(5, '2024_02_25_174022_create_home_slides_table', 2),
(6, '2024_02_28_114256_create_about_table', 3),
(7, '2024_02_28_114256_create_about_slides_table', 4),
(8, '2024_02_28_114256_create_about_slide_table', 5),
(9, '2024_02_29_112814_create_multiimages_table', 6),
(10, '2024_03_02_113403_create_incident_categories_table', 7),
(11, '2024_03_02_172724_create_crime_categories_table', 8),
(12, '2024_03_11_093953_create_crime_blogs_table', 9),
(14, '2024_03_12_095049_create_footers_table', 10),
(15, '2024_03_12_110054_create_contacts_table', 11),
(16, '2024_03_16_101814_create_crime_forms_table', 12),
(17, '2024_03_16_140546_create_active_crimes_table', 13),
(18, '2024_03_16_145843_create_solved_crimes_table', 14),
(19, '2024_03_17_094623_create_notification_centers_table', 15),
(20, '2024_03_17_134844_create_resolved_queries_table', 16),
(21, '2024_03_24_101324_create_queries_chat_boxes_table', 17),
(22, '2024_03_24_130517_create_userinfos_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `multiimages`
--

CREATE TABLE `multiimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `multiimages` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multiimages`
--

INSERT INTO `multiimages` (`id`, `multiimages`, `created_at`, `updated_at`) VALUES
(4, 'upload/multi/1792411389969021.png', '2024-03-02 05:51:47', NULL),
(5, 'upload/multi/1792411410551285.png', '2024-03-02 05:52:06', NULL),
(6, 'upload/multi/1792411433039892.png', '2024-03-02 05:52:28', NULL),
(8, 'upload/multi/1792411516680706.png', '2024-03-02 05:53:47', NULL),
(9, 'upload/multi/1792411516845803.png', '2024-03-02 05:53:48', NULL),
(10, 'upload/multi/1792411516896284.png', '2024-03-02 05:53:48', NULL),
(11, 'upload/multi/1792411516940853.png', '2024-03-02 05:53:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_centers`
--

CREATE TABLE `notification_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('samratraicha@gmail.com', '$2y$12$5Idjile95gsaMpVED.dAB.p2OxETNid2MkWRpBnopKXWHuG3.BDQi', '2024-03-17 04:24:57'),
('test@gmail.com', '$2y$12$h0jkkCQXq0zGdkfMEfD7e.ZeSQG7NNonjAEyGYf3MdsSiJW4wfL2u', '2024-01-19 05:02:06');

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
-- Table structure for table `queries_chat_boxes`
--

CREATE TABLE `queries_chat_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resolved_queries`
--

CREATE TABLE `resolved_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solved_crimes`
--

CREATE TABLE `solved_crimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `crime_category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `crime_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userinfos`
--

CREATE TABLE `userinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `cnic` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `cnic`, `date_of_birth`, `phone`, `address`, `profile_image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sadain Shakoor', 'samratraicha@gmail.com', 'saad', '37405-1478701-9', '2000-05-06', '03185730513', 'Shn Event Complex', '2024031413071767943808413884.jpg', NULL, '$2y$12$Tt.0/iLoS65gpF.oRTFa9esxirVRnchri1NljTdpfcowSabJxPtT.', NULL, '2024-02-25 11:17:56', '2024-03-14 08:07:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_slides`
--
ALTER TABLE `about_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `active_crimes`
--
ALTER TABLE `active_crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crime_blogs`
--
ALTER TABLE `crime_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crime_categories`
--
ALTER TABLE `crime_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crime_forms`
--
ALTER TABLE `crime_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_slides`
--
ALTER TABLE `home_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incident_categories`
--
ALTER TABLE `incident_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiimages`
--
ALTER TABLE `multiimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_centers`
--
ALTER TABLE `notification_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `queries_chat_boxes`
--
ALTER TABLE `queries_chat_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queries_chat_boxes_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `resolved_queries`
--
ALTER TABLE `resolved_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solved_crimes`
--
ALTER TABLE `solved_crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfos`
--
ALTER TABLE `userinfos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userinfos_email_unique` (`email`),
  ADD UNIQUE KEY `userinfos_username_unique` (`username`),
  ADD UNIQUE KEY `userinfos_cnic_unique` (`cnic`),
  ADD UNIQUE KEY `userinfos_phone_unique` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_slides`
--
ALTER TABLE `about_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `active_crimes`
--
ALTER TABLE `active_crimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crime_blogs`
--
ALTER TABLE `crime_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crime_categories`
--
ALTER TABLE `crime_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crime_forms`
--
ALTER TABLE `crime_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_slides`
--
ALTER TABLE `home_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `incident_categories`
--
ALTER TABLE `incident_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `multiimages`
--
ALTER TABLE `multiimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notification_centers`
--
ALTER TABLE `notification_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queries_chat_boxes`
--
ALTER TABLE `queries_chat_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resolved_queries`
--
ALTER TABLE `resolved_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solved_crimes`
--
ALTER TABLE `solved_crimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userinfos`
--
ALTER TABLE `userinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `queries_chat_boxes`
--
ALTER TABLE `queries_chat_boxes`
  ADD CONSTRAINT `queries_chat_boxes_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
