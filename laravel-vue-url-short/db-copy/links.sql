-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 07:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `links`
--

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
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `long_link` longtext NOT NULL,
  `short_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `long_link`, `short_link`) VALUES
(1, 'https://dictionary.cambridge.org/dictionary/english/some', 'https://dictionary.cambridge.org/xVW65s'),
(2, 'https://ludwig.guru/s/some+links', 'https://ludwig.guru/Bu99na'),
(3, 'https://www.searchenginejournal.com/link-building-guide/types-of-links-how-to-build-them/', 'https://www.searchenginejournal.com/a0tiex'),
(4, 'https://apps.apple.com/ua/app/blablacar-carpooling-and-bus/id341329033', 'https://apps.apple.com/x6OOVq'),
(5, 'https://lbb.in/delhi/carpool-cities-india-bla-bla-car/', 'https://lbb.in/WLfNuH'),
(6, 'https://prettylinks.com/blog/shorten-a-long-url/', 'https://prettylinks.com/nST37u'),
(7, 'https://github.com/laravel/framework', 'https://github.com/m6c2oi'),
(8, 'https://rekvizitai.vz.lt/en/company/link/', 'https://rekvizitai.vz.lt/iP1iUx'),
(9, 'https://breezewiki.com/hero/wiki/Longg', 'https://breezewiki.com/2xyMA3'),
(10, 'https://www.tiktok.com/tag/logggg', 'https://www.tiktok.com/H2unZp'),
(11, 'https://www.cgates.lt/tv-kanalai/lnk-hd/', 'https://www.cgates.lt/S4i5b8'),
(12, 'https://www.cgates.lt/tv-kanalai/lnk-hd/lala/lala', 'https://www.cgates.lt/YnyzWJ'),
(13, 'https://english.stackexchange.com/questions/92400/any-information-or-some-information', 'https://english.stackexchange.com/kpm5Pe'),
(14, 'https://morningbound.dk/en/what-does-some-mean/', 'https://morningbound.dk/cWYhZd'),
(15, 'https://dictionary/cambridge.org/dictionary/english/some', 'https://dictionary/nClxT2'),
(16, 'https://lt.linguee.com/angl%C5%B3-lietuvi%C5%B3/vertimas/some+more.html', 'https://lt.linguee.com/58Aam0'),
(17, 'https://www.wordstream.com/blog/ws/best-facebook-ads', 'https://www.wordstream.com/hs2UBx'),
(18, 'https://ludwig.guru/s/some+more+things', 'https://ludwig.guru/toeqVV'),
(19, 'https://kotrynaradzevic.wixsite.com/english/post/kiekis-some---any', 'https://kotrynaradzevic.wixsite.com/TAQXjl'),
(20, 'https://pdfsam.org/pdfsam-basic/', 'https://pdfsam.org/q9YFIB'),
(21, 'https://www.nsa.smm.lt/wp-content/uploads/2023/09/EN_TP_atsakymai.pdf', 'https://www.nsa.smm.lt/L0duvy'),
(23, 'https://rekvizitai.vz.lt/en/company/newlink_trust/', 'https://rekvizitai.vz.lt/ImXtxA'),
(24, 'https://www.nngroup.com/articles/learn-more-links/', 'https://www.nngroup.com/mabPuu'),
(25, 'https://studentaid.gov/manage-loans/forgiveness-cancellation', 'https://studentaid.gov/JYJFSE'),
(26, 'https://blog.hubspot.com/marketing/social-sharing-links-quick-tip-ht', 'https://blog.hubspot.com/owTcV4');

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
(5, '2024_03_12_204908_create_links_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
