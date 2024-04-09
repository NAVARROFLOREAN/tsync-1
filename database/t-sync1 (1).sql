-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 07:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t-sync1`
--

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `category`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Backend developer (JUNIOR)', 'Web Development', 'The person who has experience 1-3 years and deal with DATABASES and API\'s and deal with logic of backend', '2024-03-31 00:13:39', '2024-03-31 00:13:39'),
(5, 'Backend developer (SENIOR)', 'Web Development', 'The person who has experience 4-6 years and deal with DATABASES and API\'s and deal with logic of backend', '2024-03-31 00:14:13', '2024-03-31 00:14:13'),
(6, 'Frontend developer (JUNIOR)', 'Web Development', 'This person who has experience 1-3 years and deal with UI/UX and appearance of the application', '2024-03-31 00:14:44', '2024-03-31 00:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(75) NOT NULL,
  `event_date` date NOT NULL,
  `color` varchar(75) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(5, '2024_03_16_092713_create_roles_table', 2),
(6, '2024_03_18_183628_create_designations_table', 3),
(7, '2024_03_30_094408_create_designations_table', 4),
(8, '2024_03_30_165356_create_team__members_table', 5),
(9, '2024_03_30_170550_create_team__members_table', 6),
(10, '2024_03_30_170829_create_team__members_table', 7);

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
('test2@gmail.com', '$2y$12$7rjF69gBmGtDPMFIm/IDbeKvzLnVqphWVnHHMeHR3lsmjhOSQCcoW', '2024-03-11 09:51:31');

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(35) NOT NULL,
  `project_description` varchar(35) NOT NULL,
  `status` varchar(35) NOT NULL,
  `project_progress` int(3) DEFAULT NULL,
  `client_company` varchar(35) NOT NULL,
  `project_leader` varchar(35) NOT NULL,
  `estimated_budget` int(11) NOT NULL,
  `total_amount_spent` int(11) NOT NULL,
  `estimated_duration` varchar(35) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `project_description`, `status`, `project_progress`, `client_company`, `project_leader`, `estimated_budget`, `total_amount_spent`, `estimated_duration`, `created_at`, `updated_at`) VALUES
(1, 'asdfghjkl;', 'adfhgjkl', 'On Hold', 25, 'asdfgh', 'sdfghj', 12345, 123456, '1234', '2024-04-02 02:06:41', '2024-04-02 02:06:41'),
(2, 'tsync', 'project management', 'On Hold', 50, 'ucc', 'yvan', 11000, 10000, '24', '2024-04-02 02:09:12', '2024-04-02 02:09:12'),
(3, 'secret', 'ssshhhh', 'Success', 100, 'secret', 'idk', 15000, 10500, '30', '2024-04-02 07:21:20', '2024-04-02 07:21:20'),
(4, 'secret', 'asfdhgjkl', 'On Hold', 10, 'ucc', 'daryll', 25000, 20000, '480', '2024-04-03 23:22:40', '2024-04-03 23:22:40'),
(5, 'secret', 'asfdhgjkl', 'On Hold', 15, 'ucc', 'daryll', 25000, 20000, '480', '2024-04-03 23:23:19', '2024-04-03 23:23:19'),
(6, 'San Miguel', 'asdfghjkl;\'', 'On Hold', 25, 'ucc', 'daryll', 25000, 23500, '480', '2024-04-03 23:24:51', '2024-04-03 23:24:51'),
(7, 'kkk', 'kkk', 'On Hold', 30, 'ucc', 'daryll', 25000, 20000, '480', '2024-04-03 23:28:30', '2024-04-03 23:28:30'),
(8, 'bbbb', 'bbbb', 'On Hold', 50, 'ucc', 'daryll', 25000, 12345, '24', '2024-04-04 18:42:45', '2024-04-04 18:42:45'),
(14, 'AAAA', 'AAAAA', 'On Hold', NULL, 'ucc', 'daryll', 25000, 23456, '24', '2024-04-07 08:27:26', '2024-04-07 08:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `notes`, `is_active`, `created_at`, `updated_at`) VALUES
(60, 'Web Development', 'This category has two main parts frontend and backend and deal with websites and webapps and api\'s', 1, '2024-03-31 00:15:17', '2024-03-31 00:15:17'),
(61, 'Mobile Development', 'This category deal with android and ios mobiles and some api\'s', 1, '2024-03-31 00:15:47', '2024-03-31 00:16:30'),
(62, 'Desktop Development', 'This category deal with programs that work on desktops - PCs and Laptops', 1, '2024-03-31 00:16:21', '2024-03-31 00:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `team__members`
--

CREATE TABLE `team__members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
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
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yvan Francisco', 'test1@gmail.com', NULL, '$2y$12$k0./fSrpmewCPiLY6TlGw.3RGWPPBSCPnor3X1C8rzjL0I.LVZt2q', NULL, '2024-03-11 09:39:09', '2024-03-11 09:39:09'),
(2, 'Hazel Ann Noquera', 'test2@gmail.com', NULL, '$2y$12$KPzk1zm4rtAKivBnBppbXOnbk6UfQ0v1Fg5IrmogXk0pJ5MGAR/Oq', NULL, '2024-03-11 11:55:44', '2024-03-11 11:55:44'),
(4, 'Elizer Engana', 'test5@gmail.com', NULL, '$2y$12$SIeT9xXz2.qyrGOl8JdRm.J8jEbZBrQ8CvKyzI2CbHlr0K7g5Wq7q', NULL, '2024-03-11 18:41:19', '2024-03-11 18:41:19'),
(5, 'James Halayahay', 'halayahayjames@gmail.com', NULL, '$2y$12$kAgglgnL1unrXv9YupAJM.oWZtQIZ6qiTsdy6Bj1YZDiicfEveZ16', NULL, '2024-03-11 22:36:05', '2024-03-11 22:36:05'),
(6, 'Merwin Lozada', 'lozadamerwin@gmail.com', NULL, '$2y$12$2LlZuPebn2eOf6hxEXggN.BElmTsRPooPtXWo4v5a623TuG/OZOKu', NULL, '2024-03-12 00:27:59', '2024-03-12 00:27:59'),
(7, 'Miguel Daryll', 'daryllmiguel@gmail.com', NULL, '$2y$12$BrPXcrCJqczqWn8/HmbIOeLmkS1jBv5J7Znr.kZdwf7ohkFy3Yz9u', NULL, '2024-03-12 00:41:12', '2024-03-12 00:41:12'),
(8, 'Florean Navarro', 'navarroflorean@gmail.com', NULL, '$2y$12$qLc/WP.A5SOHM8cRoc7DPO4xhW/Mey9j7TrRhAbp0/Ikzs3l6poWi', NULL, '2024-04-01 22:43:08', '2024-04-01 22:43:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team__members`
--
ALTER TABLE `team__members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `team__members`
--
ALTER TABLE `team__members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
