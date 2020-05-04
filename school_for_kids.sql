-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 01:17 AM
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
(2, 2, 'Test_2_Title', 'Test_2_Subtitle', 'https://youtu.be/sChpdUMuW8U?list=PLMYF6NkLrdN_oaGr07xGfHH86meD3By70', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'XuyoEgfPbtrQDV4cRMHeAecr7OiNTcrQPzX3kUNH.jpeg', 6, '2020-04-21 03:47:50', '2020-04-21 03:47:50'),
(3, 2, 'Test_3_Title_Edited', 'Test_3_Subtitle_Edited', 'https://youtu.be/GTgSmKnd0_k?list=PLMYF6NkLrdN_oaGr07xGfHH86meD3By70', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book_Edited.', '7pitskU7G1gtwXhTXRzmxrMmibH1KRbSTltiYp0P.jpeg', 6, '2020-04-21 03:49:57', '2020-04-22 19:46:16'),
(6, 2, 'Ruby Development', 'Ruby Development by Muhammed Essa', 'https://youtu.be/nhJzwgxId4I', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'ruQ4mLM9WmmphThR8kIIuPcK0vO0s4moGj6zVjsI.jpeg', 6, '2020-04-22 19:51:34', '2020-04-22 19:51:34'),
(8, 12, 'kareem Lesson', 'kareem Lesson tutorial', 'https://youtu.be/bIGMPK6koBo', 'This is Tutorial', 'Him2RvUD8ObhiHqksDSeQOsyIe51Dg2u2NGz9M59.jpeg', 10, '2020-04-27 07:58:35', '2020-04-27 07:58:35'),
(9, 13, 'Graphic Design', 'Graphic Design Tutorial by Dansky', 'https://youtu.be/HzT0kJ949W4', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'OEkQGRiaKcy6EUt4RLd1J2m9JARFtZwJPjxVwTLJ.jpeg', 10, '2020-04-27 21:19:37', '2020-04-27 21:19:37');

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
(9, '07806543214', '2020-03-18', 'TestOmer', 'TestOmer', 'TestOmer', 'Deyala', 'TestOmer', 'TestOmer', 'TestOmer', 'sJ815hJD9jD9Est9O7mJVPXlaShtHGl40Lqq4gpF.jpeg', 'TestOmer', '2020-04-23 23:47:23', '2020-04-23 23:47:23'),
(10, '07800051234', '1990-04-22', 'Tareq_Address_Edited', 'Tareq_Address_Edited', 'Baghdad_Edited', 'Baghdad', 'Tareq_Facebook_Edited', 'Tareq_Twitter_Edited', 'Tareq_Github_Edited', 'khtxAN4UsNHBkvZBszZD9Jomja4WmTfaZE9WaUUA.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-04-24 21:07:10', '2020-04-25 03:01:15'),
(11, '07906543213', '2020-04-22', 'Test_Ali_Address', 'Test_Ali_Address', 'Erbil', 'Erbil', 'Test_Ali_Facebook', 'Test_Ali_Twitter', 'Test_Ali_Github', 'pVPytzbgegznXDCFsWm7lxdTveAulVw13Y5V4UB8.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-04-25 04:34:01', '2020-04-25 04:34:01'),
(13, '07906543123', '1988-04-21', 'Kareem Address', 'Kareem Address', 'Mosul', 'Mousl', 'Kareem Facebook', 'Kareem Twitter', 'Kareem Github', 'EGVWyFfKusnxqI4bPMlJ0FPuvg4OIiUZstIt3lrc.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-05-01 05:11:01', '2020-05-01 05:11:01');

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
(8, 4, 3, NULL, NULL),
(10, 4, 9, NULL, NULL),
(11, 4, 10, NULL, NULL),
(12, 4, 11, NULL, NULL),
(13, 4, 12, NULL, NULL);

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
(2, 'Service_1_Edited', 'dJkfZTno8wO1NdmIctDYqTMWiFvCjldvFQeMUtmJ.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 6, '2020-04-13 19:32:19', '2020-04-27 04:12:11'),
(10, 'Tareq_Service', 'pNq6zy3eGHJYj7FSgBygPxXQEdCiL1ApGQXuBieX.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 9, '2020-04-25 04:03:20', '2020-04-25 04:03:20'),
(12, 'Data Science', 'xQ9abg1WoJXma1cl9evZcUt9FjngF7bfkXVQ2ZIu.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 9, '2020-04-25 04:05:16', '2020-04-25 04:05:16'),
(13, 'Graphic Design', 'p0UE3Th8TCiQb9XImVkMc2Z6FfY5loy5sHzyenvv.jpeg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 10, '2020-04-27 21:15:23', '2020-04-27 21:15:23');

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
(5, 'khalid', 'khalid@gmail.com', NULL, '$2y$10$oy9LTN5J/N4tTza0mLufvOaA7xd/2uXyF.kL1y1JnxAFL6OD.Jciu', 9, NULL, '2020-04-13 18:10:31', '2020-04-23 23:47:23'),
(6, 'Ali', 'ali@gmail.com', NULL, '$2y$10$r8LyFAjKRhXxaLiqhwTVWOA1gOZ1npi3oKObt23N3RFuvQUyhMd5.', 11, NULL, '2020-04-13 19:22:47', '2020-04-25 04:34:01'),
(9, 'tareq', 'tareq@gmail.com', NULL, '$2y$10$G7BqXrsD3F9JLK2ujeGcc.MqLVNl4BixsNZWqO/F9Hrkm6L0jIRm.', 10, NULL, '2020-04-24 21:04:25', '2020-04-24 21:07:10'),
(10, 'Kareem', 'kareem@gmail.com', NULL, '$2y$10$EI1oQnGlTtq7adkv6orvSu4D61jrI7UDTJ57uHV/RkgGUDlHKQqxu', 13, NULL, '2020-04-27 03:24:59', '2020-05-01 05:11:01'),
(11, 'Jasem', 'jasem@gmail.com', NULL, '$2y$10$yF14YHllRYg5AyEBk90PHezvf2d8mJhNiC9Y2DnLhW7Wtske5HiIe', NULL, 'c0lcwJpBjt1t5ZHFuPhLmxAS2GMmW5RxLz1TEOgLjmrf5dxAkN3hhuXZFiTI', '2020-05-05 00:49:00', '2020-05-05 01:00:00'),
(12, 'Usama', 'skx39651@bcaoo.com', '2020-05-05 06:08:28', '$2y$10$nWqnW0FjSwQB/D/WtkyB/um.Asyl0.CPJZ5ADMZJeO8i13JYOuzhq', NULL, NULL, '2020-05-05 06:05:51', '2020-05-05 06:08:28');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
