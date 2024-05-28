-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2024 at 06:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nootadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0a57cb53ba59c46fc4b692527a38a87c78d84028', 'i:1;', 1716877350),
('0a57cb53ba59c46fc4b692527a38a87c78d84028:timer', 'i:1716877350;', 1716877350),
('5c785c036466adea360111aa28563bfd556b5fba', 'i:4;', 1716877971),
('5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1716877971;', 1716877971),
('8a5da52ed126447d359e70c05721a8aa', 'i:4;', 1716877971),
('8a5da52ed126447d359e70c05721a8aa:timer', 'i:1716877971;', 1716877971),
('f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59', 'i:1;', 1716877957),
('f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59:timer', 'i:1716877957;', 1716877957);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duty` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `code`, `head`, `duty`, `created_at`, `updated_at`) VALUES
(4, 'The Phantom Thieves of Hearts scam', 'DIVP5R2024', 'The Yoker Himself', 'We will take your hearts', '2024-03-03 22:37:47', '2024-05-27 18:06:23'),
(5, 'The Investigation Team', 'DIVP4G2012', 'Yu Narukami', 'We reach out to the truth', '2024-03-03 22:38:40', '2024-03-03 22:38:40'),
(6, 'Specialized Extracurricular Execution Squad', 'DIVP3R2024', 'Makoto Yuki', 'Destroy the Dark Hour and Tartarus!', '2024-03-03 22:39:15', '2024-05-27 16:37:58'),
(7, 'Strategic Initiatives Division', 'DIV100', 'Naoto Shirogane', 'Develop and implement long-term strategic plans to ensure the organization\'s growth and adaptability in a dynamic environment.', '2024-03-03 22:40:38', '2024-03-03 22:49:12'),
(8, 'Operations and Logistics Division', 'DIV123', 'Mitsuru Kirijo', 'Oversee day-to-day operations, manage supply chains, and optimize logistical processes to enhance efficiency and productivity.', '2024-03-03 22:41:40', '2024-03-03 22:41:40'),
(10, 'Human Resources Division', 'DIV571', 'Byleth Eisnier', 'Foster a positive work environment by managing recruitment, employee relations, training, and ensuring compliance with HR policies.', '2024-03-03 22:43:10', '2024-03-03 22:43:10'),
(11, 'Marketing and Communications Division', 'DIV452', 'Yosuke Hanamura', 'Develop and execute marketing strategies, manage brand communication, and enhance the organization\'s presence in the market.', '2024-03-03 22:43:40', '2024-03-03 22:43:40'),
(12, 'Finance and Administration Division', 'DIV213', 'Brother Calm', 'Manage financial resources, budgeting, and administrative functions to ensure fiscal responsibility and organizational sustainability.', '2024-03-03 22:44:26', '2024-03-07 22:25:01'),
(13, 'Research and Development Division', 'DIV932', 'Takuto Maruki', 'Conduct research, innovate products or services, and contribute to the organization\'s intellectual property and future growth', '2024-03-03 22:45:09', '2024-03-03 22:45:09'),
(14, 'Information Technology Division', 'DIVIT124', 'Futaba Sakura', 'Manage and optimize IT infrastructure, cybersecurity, and digital initiatives to support the organization\'s technological needs.', '2024-03-03 22:45:57', '2024-03-03 22:45:57'),
(15, 'Sustainability and Corporate Responsibility Division', 'DIV624', 'Cynthia', 'Develop and implement initiatives to promote environmental sustainability and corporate social responsibility.', '2024-03-03 22:46:34', '2024-03-03 22:46:34'),
(16, 'Quality Assurance Division', 'DIV752', 'Yukari Takeba', 'Ensure product or service quality by implementing and maintaining quality control processes and standards', '2024-03-03 23:44:48', '2024-03-03 23:44:48'),
(20, 'Amagi Inn', 'DIV4M461', 'Yukiko Amagi', 'Popular Inn in Inaba (real)', '2024-03-07 22:59:53', '2024-03-10 20:42:35');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_27_045012_add_username_field_to_users_table', 2),
(6, '2024_02_27_045358_add_division_field_to_users_table', 3),
(7, '2024_02_27_045505_add_acctype_field_to_users_table', 4),
(8, '2024_03_04_050507_create_divisions_table', 5),
(9, '2024_03_04_235511_remove_division_id_from_users', 6),
(10, '2024_03_05_005159_change_division_column_in_users_table', 7),
(11, '2024_03_05_030658_update_users_table_change_division_to_division_id', 8),
(12, '2024_03_05_064134_create_tickets_table', 9),
(13, '2024_03_05_072203_add_category_field_to_tickets_table', 10),
(14, '2024_03_06_004209_change_ticketdiv_column_in_tickets_table', 11),
(15, '2024_03_06_010749_add_user_id_field_to_tickets_table', 12),
(16, '2024_03_06_055404_add_remark_field_to_tickets_table', 13),
(17, '0001_01_01_000001_create_cache_table', 14),
(18, '2024_05_06_233855_create_sessions_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(43, 'App\\Models\\User', 28, 'client', '87fb59fc38b4e4e48cddb1cf93231bcd1c21e138f933767222ac740222a8046e', '[\"*\"]', NULL, NULL, '2024-05-26 22:15:33', '2024-05-26 22:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `state` enum('Pending','Processing','Resolved') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `severity` enum('Critical','High','Medium','Low') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('Hardware','Website','Network') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `state`, `severity`, `category`, `description`, `remark`, `created_at`, `updated_at`) VALUES
(10, 29, 'Processing', 'Medium', 'Website', 'Content Management Issues', 'aaaaaaaaaaaaa', '2024-03-05 20:21:23', '2024-03-10 21:06:52'),
(11, 37, 'Resolved', 'Critical', 'Hardware', 'Cyberpyschosis', 'Goods', '2024-03-05 20:23:14', '2024-05-26 23:03:17'),
(16, 35, 'Resolved', 'Low', 'Website', 'sheeeeeeeeeeeeesh', 'real', '2024-03-05 20:26:54', '2024-03-11 22:56:30'),
(27, 28, 'Resolved', 'Low', 'Website', 'Nah I\'d Win', 'nah', '2024-03-07 20:03:08', '2024-05-26 23:38:42'),
(28, 28, 'Resolved', 'Critical', 'Hardware', 'Sumabog PC sa opisina', 'gone reduce to atom', '2024-03-07 20:04:11', '2024-05-27 22:19:39'),
(30, 28, 'Resolved', 'Low', 'Hardware', 'how to open pc', 'push the power button', '2024-03-07 20:07:28', '2024-03-11 17:29:39'),
(31, 28, 'Resolved', 'Medium', 'Hardware', 'Not Booting', 'Ok!', '2024-03-07 20:08:02', '2024-05-26 23:01:21'),
(33, 28, 'Resolved', 'Low', 'Website', 'nean vestibulum risus non libero eleifend, sed varius ex vulputate. Praesent nulla justo, pretium eu mauris quis, posuere fermentum est. Cras sit amet nunc q', 'Nice', '2024-03-07 20:12:58', '2024-03-11 22:58:01'),
(36, 29, 'Processing', 'Low', 'Hardware', 'tor porta vitae, eleifend at neque. Suspendisse potenti. Aliquam pretium tortor et tortor pulvinar, vel vestibulum odio gravida. Donec vulputate magna a eros egestas viverra. Pellentesque accumsan consequat lorem, in bibendum massa blandit quis. Vestibulum quis diam ac nisi sodales curs', NULL, '2024-03-07 20:16:36', '2024-03-10 16:35:52'),
(37, 29, 'Resolved', 'Medium', 'Hardware', 'nim tempus. Duis euismod bibendum sapien, eget fermentum libero interdum pulvinar. Etiam eget massa consequat, bibendum dui vitae, porta justo. Curabitur aliquet elit ut odio vestibulum lobortis. Donec suscipit felis lectus, non rutrum nisi vulputate ut. Nunc porttitor lacinia magna.', NULL, '2024-03-07 20:16:49', '2024-05-26 22:56:38'),
(38, 29, 'Pending', 'High', 'Hardware', 'vestibulum efficitur. Nulla auctor dui leo, in pretium lorem tempor vitae. Vestibulum turpis erat, sagittis tempus egestas in, vulputate eu arcu. Vestibu', NULL, '2024-03-07 20:17:14', '2024-03-10 16:35:52'),
(39, 29, 'Processing', 'Critical', 'Hardware', 'a eros egestas viverra. Pellentesque accumsan consequat lorem, in bibendum massa blandit quis. Vestibulum quis diam ac nisi sodales cursus', 'test', '2024-03-07 20:17:24', '2024-05-27 22:31:21'),
(40, 29, 'Processing', 'Low', 'Website', 'on libero eleifend, sed varius ex vulputate. Praesent nulla justo, pretium eu mauris quis, posuere fermentum est. Cras sit amet nunc quis neque', NULL, '2024-03-07 20:17:36', '2024-03-10 16:35:52'),
(41, 29, 'Resolved', 'High', 'Website', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\" \"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', 'a23 q', '2024-03-07 20:17:51', '2024-03-10 16:35:52'),
(42, 29, 'Processing', 'Medium', 'Network', 'Duis euismod bibendum sapien, eget fermentum libero interdum pulvinar. Etiam eget massa consequat, bibendum dui vitae, porta justo. Cura', 'gh', '2024-03-07 20:18:13', '2024-03-10 21:07:33'),
(45, 16, 'Processing', 'Medium', 'Website', 'ndisse non felis et erat pulvinar vulputate. Donec eu eros quis ex vestibulum iaculis. Donec tincidunt volutpat libero, sollicitudin blandit lore', NULL, '2024-03-07 20:22:31', '2024-03-11 22:58:54'),
(46, 16, 'Pending', 'High', 'Website', '. Praesent nulla justo, pretium eu mauris quis, posuere fermentum est. Cras sit amet nunc quis neque eleifend condimentum. Nulla placerat', NULL, '2024-03-07 20:22:46', '2024-05-26 23:39:28'),
(47, 16, 'Pending', 'Medium', 'Network', 'nt et vehicula diam. Fusce ornare porta tortor pellentesque pulvinar. Ut vitae elit turpis. Quisque a lacus sem. Pellentesque at interdum libe', NULL, '2024-03-07 20:23:02', '2024-03-07 20:23:02'),
(48, 16, 'Pending', 'Critical', 'Website', 'nsequat, bibendum dui vitae, porta justo. Curabitur aliquet elit ut odio vestibulum lobortis. Donec suscipit felis lectus, non rutrum nisi vulputa', NULL, '2024-03-07 20:23:14', '2024-03-07 20:23:14'),
(54, 58, 'Pending', 'Medium', 'Hardware', 'Teddie broke', NULL, '2024-03-10 23:27:00', '2024-03-10 23:27:00'),
(55, 58, 'Pending', 'Low', 'Website', 'no internet :((((', NULL, '2024-03-10 23:27:15', '2024-03-10 23:27:15'),
(56, 58, 'Pending', 'High', 'Website', 'MY ACCOUNT GOT HACKED.', NULL, '2024-03-10 23:27:41', '2024-03-10 23:27:41'),
(57, 28, 'Pending', 'High', 'Hardware', 'Overheat', NULL, '2024-03-11 19:03:28', '2024-03-11 19:03:28'),
(65, 28, 'Pending', 'High', 'Hardware', 'walidat', NULL, '2024-05-27 22:21:04', '2024-05-27 22:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acctype` enum('user','admin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `acctype`, `username`, `email`, `division_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'Ren Amamiya', 'admin', 'Yoker', 'persona5royal@gmail.com', 7, NULL, '$2y$12$DuF6WWWUKArAV0GApi1vXO8DrRgJbV9NdHEo5EsPsylwwGI/QOWF.', NULL, '2024-02-28 18:34:12', '2024-05-23 18:53:02'),
(17, 'Mitsuru Kirijo', 'admin', 'Artemisia', 'persona3fes@yahoo.com', 16, NULL, '$2y$12$3GDQE5jt91ekFyRrYHhz5.yaTyz82K32WIpdPwPvQpYZozIWOI8g6', NULL, '2024-02-28 18:35:13', '2024-03-04 22:27:33'),
(26, 'Sid Nacilla', 'user', 'Cunnyseur', 'cunnyexpert@gmail.com', 7, NULL, '$2y$12$nM7j52BDpecx/CGXKUY0Ju2MqXFhsS3ADJyyiYgss6KJw6uSCa52K', NULL, '2024-03-03 18:54:46', '2024-03-03 18:54:46'),
(28, 'Bearnest Sacrizzmento', 'user', 'user', 'usertesting@gmail.com', 14, NULL, '$2y$12$WIiJY/cs1IhaHomZHaqnyekC5iO5z75H22rkd2nkUjaA2j16Jzsju', NULL, '2024-03-03 18:56:26', '2024-05-26 23:34:45'),
(29, 'Johnmark Bornasal', 'user', 'Makween', 'makmakxd@gmail.com', 14, NULL, '$2y$12$3Y0EsS1SRUSX4DID9dL1weTEYgY6kJevNF8y3lb6iuDkdefJfgG.S', NULL, '2024-03-03 18:57:06', '2024-03-10 20:57:24'),
(32, 'Makoto Niijima', 'user', 'Queen', 'queenanat@gmail.com', 4, NULL, '$2y$12$D/aa1ElwrJVDCxtgkUL9KOflv5i42ArgnKKmMVVQweWSD4ja/9Zs6', NULL, '2024-03-03 23:41:13', '2024-03-03 23:41:13'),
(33, 'Futaba Sakura', 'admin', 'Oracle', 'alibabaoracle@xd.com', 14, NULL, '$2y$12$gSbc/kxRbljrFxpWHdcGRO8Rn7ZHd8AICOiKgEk1S4UsInYDcHPbW', NULL, '2024-03-03 23:43:04', '2024-03-04 18:50:20'),
(34, 'Naoto Shirogane', 'admin', 'Ace', 'sherlockholmes@gmail.com', 5, NULL, '$2y$12$zDchKssr1IrLvJ5XOHOd6.559xLSnxUm0niYajnkMsjmVtPvkqYi6', 'V5newTrdqKWcO6JAUrUdP3Y75gfXsU6RoQDGNkUpJCXx6paVMlwtF94Kp3Da', '2024-03-04 18:14:50', '2024-03-10 21:14:31'),
(35, 'Lucy Kushinada', 'user', 'Lucy', 'netrunner@email.com', 13, NULL, '$2y$12$K6HHlXtPtFPdP.2vRsQUp.RHw.3kxNc5yji0hmkjjwLmCTGvtCiK.', NULL, '2024-03-04 19:01:13', '2024-03-11 22:56:30'),
(37, 'David Martinez', 'user', 'Sandevistan', 'edgerunner@gmail.com', 10, NULL, '$2y$12$BWO6EfuFDdO8D1UvDLFfBuDFkZhBhrBglgYy6KRSnOU3jI85LkkNe', NULL, '2024-03-04 20:30:52', '2024-03-11 22:56:54'),
(42, 'Jessie Alcaraz', 'admin', 'Kolerin', 'jba1826@gmail.com', 14, NULL, '$2y$12$MTAPw6wtgTvJ2vfuw2Skx.aJSNiRtcYktbI9hrAfr9r7hm8aH.1cC', NULL, '2024-03-07 18:24:41', '2024-03-07 23:09:11'),
(43, 'Jaemie Alcaraz', 'admin', 'MsKolerin', 'toptop420@yahoo.com', 12, NULL, '$2y$12$8ykG4ua/jvwE5AV5tqALD.2cwM5bZyvFWQFhSBIJxUu5SbSaVbjgW', NULL, '2024-03-07 18:31:43', '2024-03-07 18:31:43'),
(44, 'Yosuke Hanamura', 'user', 'Jiraia', 'junes@yahoo.com', 11, NULL, '$2y$12$iivi1M818vXe9wswGknTJOocomI3mzWxoCKMC1kJrsr1iqvusUVqy', NULL, '2024-03-07 18:33:28', '2024-03-07 18:33:28'),
(46, 'Chie Satonaka', 'user', 'tomoe', 'p4gtest@gmail.com', 13, NULL, '$2y$12$bNfKhGQ5XfL5bGGd/IiP8OXv6bnEv4dzRlOFef/eOvt5teXSL8EMK', NULL, '2024-03-07 18:37:49', '2024-03-07 18:37:49'),
(48, 'Yukiko Amagi', 'admin', 'Konohanasakuya', 'amagidyne@gmail.com', 12, NULL, '$2y$12$VOAZiTsk7SK7JUXGDSCaYepTVv/5PCDLw9uo/VlcTDtJeGzWYPVrK', NULL, '2024-03-07 18:52:33', '2024-03-07 18:52:33'),
(49, 'Kanji Tatsumi', 'user', 'NootEnjoyer', 'naotobestgirl@yahoo.com', 5, NULL, '$2y$12$cTMPt9ZUs2bsYQFVViYP2ezGlssDqITiuk0jPQThYXyMcceLR6Iqu', NULL, '2024-03-07 18:54:16', '2024-03-11 17:39:24'),
(51, 'Akihiko Sanada', 'admin', 'ProteinMan', 'ceasar@yahoo.com', 6, NULL, '$2y$12$goySKvhpVvRlrufcF0TzxueI4ZjOOgzbTRLvIMzAsixTLCZngjqpe', NULL, '2024-03-10 20:46:05', '2024-03-10 20:54:41'),
(53, 'Aragaki Shinjiro', 'user', 'Castor', 'koromaru@gmail.com', 6, NULL, '$2y$12$VyK6rWyC8bZ6wpGah0gHtuA15uJld.H4S0COv3pmc1OedelWfjTmi', NULL, '2024-03-10 20:58:47', '2024-03-12 17:06:05'),
(57, 'Teddie', 'user', 'Kuma', 'teddiefurry@yahoo.com', 10, NULL, '$2y$12$deeZ7qNQe2KD9hAwptisqOh/zoJAZYN5OmsJVsgYu8IchIgazWDly', NULL, '2024-03-10 21:59:01', '2024-03-10 21:59:01'),
(58, 'Rise Kujikawa', 'user', 'Risette', 'risette@gmail.com', 5, NULL, '$2y$12$d8eV5Mp5NCgxe9mfi4Abn.R7DrX2btu4TnDVVeiV7Urt2blIR35XK', NULL, '2024-03-10 23:25:53', '2024-03-10 23:25:53'),
(59, 'Tohru Adachi', 'user', 'Cabbage', 'magatsuizanagi@yahoo.com', 30, NULL, '$2y$12$e0LKJ3RPWTLotYQ4mwuSeuOAI/IjgmVNx1T7wOpius1Qy.BvHUVNu', NULL, '2024-03-10 23:29:54', '2024-03-10 23:29:54'),
(60, 'Ann Takamaki', 'user', 'Panther', 'shihobff@email.com', 4, NULL, '$2y$12$HIawSIVPln08ERdPfsIZo.jf3pgo1unpADt22K6b6AyMBaJhQTiW2', NULL, '2024-03-10 23:32:52', '2024-03-10 23:32:52'),
(62, 'Junpei Iori', 'user', 'AceDefective', 'chidorita@gmail.com', 6, NULL, '$2y$12$4XZNA3Zu1H8FcO1GgnAeUO8lETS33nvDiFaAucko4TBko1vMbunMa', NULL, '2024-03-12 15:59:28', '2024-03-12 15:59:28'),
(63, 'Yukari Takeba', 'admin', 'Io', 'makotoyuki@gmail.com', 6, NULL, '$2y$12$1S/fNYq4s7EaDlRlSRnXQ.kyYt2sreeP5fWjsNvWFOY6L2t/9Dsbq', NULL, '2024-03-12 16:03:34', '2024-03-12 16:03:34'),
(65, 'Aigis', 'user', 'Athena', 'orgiamode@gmail.com', 6, NULL, '$2y$12$94FJWVA.9bPBJa4prUpStO/6Crip9d5VGPVLM8UXUSJUoADGs9pWy', NULL, '2024-03-12 16:23:10', '2024-03-12 16:23:10'),
(66, 'Ken Amada', 'user', 'Koro', 'nemesis@gmail.com', 6, NULL, '$2y$12$dABnLPu1badylb9UVCgb/O8r1WNcvPG34qLuQkToqfMTSJeTt54mi', NULL, '2024-03-12 16:25:35', '2024-03-12 16:25:35'),
(67, 'Yu Narukami', 'admin', 'Kingpin', 'investigationteam@gmail.com', 5, NULL, '$2y$12$VKVpnOO8pAv5zkAXO841BOPeOE6c8QuRqt.XzCj5bf.yNi1uVvdqm', NULL, '2024-03-12 16:33:29', '2024-03-12 16:33:29'),
(68, 'Elizabeth', 'admin', 'ElleP', 'igorlongnose@velvet.room', 12, NULL, '$2y$12$8Y3zulbrhhPw3CFhIRLfz.qJsq1RjRUf99Pi4rn4JD8n09jcfB6xO', NULL, '2024-03-12 16:36:33', '2024-03-12 16:36:33'),
(69, 'Margaret', 'admin', 'Power', 'velvetroom@gmail.com', 11, NULL, '$2y$12$Ov4kQ7ebFZtL69DPi.zhR.MSeNQHX5yYeOGMIDBJE/n4xVBLLBO1G', NULL, '2024-03-12 16:40:35', '2024-05-27 22:18:41'),
(70, 'Ryuji Sakamoto', 'user', 'Skull', 'forreal@gmail.com', 4, NULL, '$2y$12$6iRODgOtwkuvjnHO1kJO1eZIGMJEi5VsCSfWQtpNCZg3EE5d35Khy', NULL, '2024-03-12 16:51:04', '2024-03-12 16:51:04'),
(71, 'Kiryu Kazuma', 'user', 'Dragon', 'likeadragon@gmail.com', 10, NULL, '$2y$12$hrSfxcmTdTikTlwgNJqveu.cdWxYLrgXRFM.tZBsA7EBaaUPudWjC', NULL, '2024-03-12 16:55:32', '2024-03-12 16:55:32'),
(87, 'Pomni Clown', 'user', 'mentalillionis', 'digitalcircus@gmail.com', 11, NULL, '$2y$12$NHLNFnTcQu5RAhVwxJkezu3opJlptibS3RVut2tT3dDa8BJJvoL0q', NULL, '2024-05-27 17:51:29', '2024-05-27 17:51:29'),
(88, 'testing', 'user', '14141', '4141414@gmail.co', 20, NULL, '$2y$12$OyIqZ14u6EmTURB8V5O.M..9zoAEOMcU5GFl4S0qvQHPVYMYvY0s6', NULL, '2024-05-27 17:56:07', '2024-05-27 17:56:07'),
(89, 'Gummygoo', 'user', 'ErnestPersona', '123@gmail.com', 11, NULL, '$2y$12$j.PbKiHfapWBOBZVJJbgbOSjspEiE3GBcs1Njk7gR90QjqtthtZR.', NULL, '2024-05-27 19:31:33', '2024-05-27 19:31:33'),
(90, 'asdasd', 'user', 'asdasdafafa', 'asdas@a.co', 14, NULL, '$2y$12$MnOhes1cgmmZnHoB/9H/XOylscNOzZMZAJ6RABmR..vGrmRrTGjba', NULL, '2024-05-27 19:48:17', '2024-05-27 19:48:17'),
(93, 'test', 'user', 'testicles1', '12adadad3@gmail.com', 12, NULL, '$2y$12$0hcGRYT9XrEIo8rq6WIs.eO0xOmfXb/7TOEmzocjFnauSx0YON3wS', NULL, '2024-05-27 20:46:47', '2024-05-27 20:46:47'),
(95, 't15141', 'user', '2141412512', '124124@gmai.com', 16, NULL, '$2y$12$NVMGVyKOjwLpKyX8cN.uTeoiVOlFnQqpVRDC5ChRRMOP6rAJ/tWOu', NULL, '2024-05-27 20:55:45', '2024-05-27 20:55:45'),
(107, 'asfasg', 'user', 'asgagag', 'asg@asd.c', 12, NULL, '$2y$12$x5kRkYJgLfu1.yx7vEbTiex63DI4TMxkTG9pqQ77XuSIIO0iPm3E.', NULL, '2024-05-27 21:34:21', '2024-05-27 21:34:21'),
(110, 'Naoto Kurogane', 'user', 'Blood', 'test@blazlue.com', 8, NULL, '$2y$12$V.mVzxqB43AN4G2dbZ9H9.uTjFu59xesYpy3zsecEt2EFphL/HQ/i', NULL, '2024-05-27 22:22:44', '2024-05-27 22:22:44'),
(112, 'Theodre', 'admin', 'AvatarPopcorn', 'velvetattendant@velvet.com', 10, NULL, '$2y$12$oqgPczLw2EKkY6TfFms3lOHobJpd4J8JXpaHhOAHR04vkPoHWFXty', NULL, '2024-05-27 22:29:43', '2024-05-27 22:29:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
