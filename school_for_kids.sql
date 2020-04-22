-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 11:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_for_kids`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `service_id`, `title`, `subtitle`, `video_link`, `description`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 8, 'Test_1_Title', 'Test_1_Subtitle', 'https://youtu.be/Ewv9viqybM4?list=PLMYF6NkLrdN_oaGr07xGfHH86meD3By70', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'TjCRyJcgAoNOvNcPAR4yMUqXOBDQOxDkkNqrQoLS.jpeg', 6, '2020-04-21 03:46:17', '2020-04-21 03:46:17'),
(2, 2, 'Test_2_Title', 'Test_2_Subtitle', 'https://youtu.be/sChpdUMuW8U?list=PLMYF6NkLrdN_oaGr07xGfHH86meD3By70', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'XuyoEgfPbtrQDV4cRMHeAecr7OiNTcrQPzX3kUNH.jpeg', 6, '2020-04-21 03:47:50', '2020-04-21 03:47:50'),
(3, 2, 'Test_3_Title_Edited', 'Test_3_Subtitle_Edited', 'https://youtu.be/GTgSmKnd0_k?list=PLMYF6NkLrdN_oaGr07xGfHH86meD3By70', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book_Edited.', '7pitskU7G1gtwXhTXRzmxrMmibH1KRbSTltiYp0P.jpeg', 6, '2020-04-21 03:49:57', '2020-04-22 19:46:16'),
(4, 4, 'Test_4_Title', 'Test_4_Subtitle', 'https://www.youtube.com/embed/Yvi0kXTZWUw', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'XlOT6UIt6WYetZ9DwtoAJntRkTlxxbKqUnqnkRcw.jpeg', 6, '2020-04-22 17:59:31', '2020-04-22 17:59:31'),
(5, 8, 'Android Development', 'Android Development Tutorials by Muhammed Essa', 'https://youtu.be/nFin_KqJ98M', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'WSaRqtE42ogV8JHpS9jmdhYkBsy4FON6SvXDxLiN.jpeg', 6, '2020-04-22 19:49:33', '2020-04-22 19:49:33'),
(6, 2, 'Ruby Development', 'Ruby Development by Muhammed Essa', 'https://youtu.be/nhJzwgxId4I', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'ruQ4mLM9WmmphThR8kIIuPcK0vO0s4moGj6zVjsI.jpeg', 6, '2020-04-22 19:51:34', '2020-04-22 19:51:34'),
(7, 3, 'Python', 'Python Tutorials by Muhammed Essa', 'https://youtu.be/B-BOV-JJRXA', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'C8IGchJnhR7wqykJWi2hzZ4q3Mp6HcxNr311GWpu.jpeg', 6, '2020-04-22 20:00:13', '2020-04-22 20:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_11_100632_create_roles_table', 1),
(5, '2020_04_11_103631_create_role_user_table', 1),
(6, '2020_04_12_125358_create_profiles_table', 1),
(7, '2020_04_13_082213_create_services_table', 1),
(11, '2020_04_20_191324_create_lessons_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` date DEFAULT NULL,
  `first_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1.jpg',
  `biography` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `phone_number`, `age`, `first_address`, `second_address`, `city`, `province`, `facebook`, `twitter`, `github`, `image`, `biography`, `created_at`, `updated_at`) VALUES
(2, '07905643217', '1987-04-16', 'Ali_Address', 'Ali_Address', 'Baghdad', 'Baghdad', 'Facebook', 'Twitter', 'Github', '3bmGOxf7u9f4AyuDdTGUX0htY42Z0uL93BeIEFfi.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-04-13 19:28:26', '2020-04-13 19:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Baghdad'),
(2, 'Al_Anbar'),
(3, 'Al_Basrah'),
(4, 'Al_Muthanna'),
(5, 'Al_Najaf'),
(6, 'Al_Quadisiya'),
(7, 'Al_Sulaymaniah'),
(8, 'Kirkuk'),
(9, 'Erbil'),
(10, 'Duhok'),
(11, 'Babil'),
(12, 'Deyala'),
(13, 'Karbala'),
(14, 'Maysan'),
(15, 'Mousl'),
(16, 'Salah Al_Deen'),
(17, 'ThiQar'),
(18, 'Wasit');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '2020-04-13 18:05:53', '2020-04-13 18:05:53'),
(2, 'editor', NULL, '2020-04-13 18:05:53', '2020-04-13 18:05:53'),
(3, 'creator', NULL, '2020-04-13 18:05:54', '2020-04-13 18:05:54'),
(4, 'user', NULL, '2020-04-13 18:05:54', '2020-04-13 18:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 4, 5, NULL, NULL),
(6, 4, 6, NULL, NULL),
(7, 4, 7, NULL, NULL),
(8, 4, 3, NULL, NULL),
(9, 4, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `image`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Service_1_', 'axlAr37hPUYFstE25C1OjyhcopJBklVBlvLm7GJH.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 6, '2020-04-13 19:32:19', '2020-04-13 19:32:19'),
(3, 'omer_Service_1', 'rttNnzFpUYeYo8HgdeAE0Ptk8vFQvAGcSQupNXy4.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-13 21:05:41', '2020-04-13 21:05:41'),
(4, 'Omer_Service_2', 'wz5dVcmLf4f84wuLOcQFmQPA4tHt2C6F2Qh7LFYx.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-13 21:09:35', '2020-04-13 21:09:35'),
(5, 'Omer_Service_3_Edited', 'GlPlb9CvEqu6MgLCil23CGgj1gWoHgJBVwUN9KmH.jpeg', 'Edited Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-13 21:19:39', '2020-04-13 23:49:39'),
(6, 'omer_Service_4', 'LfbD1ZP5jtf5Y40qvUb4VZ7yvQm2eUJtgDdE2snA.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-13 21:21:08', '2020-04-13 21:21:08'),
(7, 'Omer_Service_5', 'Ppucel3wvTcqgc1godlDVkeYIZFSxTOQCVYcuq86.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-13 21:21:50', '2020-04-13 21:21:50'),
(8, 'Omer_Service_6', 'fMCqnWwhftHbkpCEvXpoxs9FiYCckFxSi3WIWfei.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-13 21:23:02', '2020-04-13 21:23:02'),
(9, 'Omer Service_7_', 'MBGWZWpgHPMF7WaDZJfH9HiaJIZDQD0zJdMijNzG.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 7, '2020-04-18 01:31:35', '2020-04-18 01:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$wiVMyOSAUtdI6rxFvHxUY.t9VVhlxj7INn9PKsNjSebfaQnUgmA/G', NULL, NULL, '2020-04-13 18:06:41', '2020-04-13 18:06:41'),
(2, 'editor', 'editor@gmail.com', NULL, '$2y$10$4PsttR8zq9p6.gYvXnoxNOs8YkpEfB1t1DtxhfhDkO6VY3DGQh.hy', NULL, NULL, '2020-04-13 18:06:42', '2020-04-13 18:06:42'),
(3, 'creator', 'creator@gmail.com', NULL, '$2y$10$.55l3NOi4s5pk/lwijfx3OKxSueI2yUci9x4h3DNQH7SzDfOi4CUS', NULL, NULL, '2020-04-13 18:06:42', '2020-04-13 18:06:42'),
(4, 'user', 'user@gmail.com', NULL, '$2y$10$IldbyXdY20qM0wZTZE/DAedE/TCuAPFXbLOG3Xjzf2d8fiH/d3eSq', NULL, NULL, '2020-04-13 18:06:42', '2020-04-13 18:06:42'),
(5, 'khalid', 'khalid@gmail.com', NULL, '$2y$10$oy9LTN5J/N4tTza0mLufvOaA7xd/2uXyF.kL1y1JnxAFL6OD.Jciu', NULL, NULL, '2020-04-13 18:10:31', '2020-04-13 18:10:31'),
(6, 'Ali', 'ali@gmail.com', NULL, '$2y$10$r8LyFAjKRhXxaLiqhwTVWOA1gOZ1npi3oKObt23N3RFuvQUyhMd5.', NULL, NULL, '2020-04-13 19:22:47', '2020-04-13 19:22:47'),
(7, 'Omer', 'omer@mail.com', NULL, '$2y$10$x7dvqoOQR2IhgO1kr96g9u3tHoxphlrG5446YEHpJXhz5QxtlVTOe', NULL, NULL, '2020-04-13 21:04:54', '2020-04-13 21:04:54'),
(8, 'Abbas', 'abbas@gmail.com', NULL, '$2y$10$TeQJTjZxf6lO/k1x4TU.yub8rVviZNTZO6jeOSn3dXrNFrmI7NgEC', NULL, NULL, '2020-04-19 05:12:46', '2020-04-19 05:12:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lessons_video_link_unique` (`video_link`),
  ADD KEY `lessons_service_id_foreign` (`service_id`),
  ADD KEY `lessons_user_id_foreign` (`user_id`);

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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_phone_number_unique` (`phone_number`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_role_unique` (`role`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profile_id_foreign` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lessons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
