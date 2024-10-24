-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 11:00 AM
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
-- Database: `invoice_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `date`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 'INV-6719df99e9ae7', '2024-10-24', 1560000.00, '2024-10-23 23:48:09', '2024-10-23 23:48:09'),
(2, 'INV-6719e1f089d67', '2024-10-24', 1560000.00, '2024-10-23 23:58:08', '2024-10-23 23:58:08'),
(3, 'INV-6719e2194ebde', '2024-10-24', 1560000.00, '2024-10-23 23:58:49', '2024-10-23 23:58:49'),
(4, 'INV-6719eec21a56b', '2024-10-24', 1560000.00, '2024-10-24 00:52:50', '2024-10-24 00:52:50'),
(5, 'INV-6719ef27b089a', '2024-10-24', 1560000.00, '2024-10-24 00:54:31', '2024-10-24 00:54:31'),
(6, 'INV-6719ef4e1c177', '2024-10-24', 340000.00, '2024-10-24 00:55:10', '2024-10-24 00:55:10'),
(7, 'INV-6719ef61e5e89', '2024-10-24', 340000.00, '2024-10-24 00:55:29', '2024-10-24 00:55:29'),
(8, 'INV-6719ef8fb20fb', '2024-10-24', 2705000.00, '2024-10-24 00:56:15', '2024-10-24 00:56:15'),
(9, 'INV-6719f1f907c35', '2024-10-24', 1475000.00, '2024-10-24 01:06:33', '2024-10-24 01:06:33'),
(10, 'INV-6719f340dad8c', '2024-10-24', 0.00, '2024-10-24 01:12:00', '2024-10-24 01:12:00'),
(11, 'INV-6719f35403958', '2024-10-24', 255000.00, '2024-10-24 01:12:20', '2024-10-24 01:12:20'),
(12, 'INV-6719f3542b687', '2024-10-24', 255000.00, '2024-10-24 01:12:20', '2024-10-24 01:12:20'),
(13, 'INV-6719f4faa2330', '2024-10-24', 0.00, '2024-10-24 01:19:22', '2024-10-24 01:19:22'),
(14, 'INV-671a04560e56e', '2024-10-24', 0.00, '2024-10-24 02:24:54', '2024-10-24 02:24:54'),
(15, 'INV-671a047467635', '2024-10-24', 3850000.00, '2024-10-24 02:25:24', '2024-10-24 02:25:24'),
(16, 'INV-671a070bbc303', '2024-10-24', 1530000.00, '2024-10-24 02:36:27', '2024-10-24 02:36:27'),
(17, 'INV-671a07f61958b', '2024-10-24', 2620000.00, '2024-10-24 02:40:22', '2024-10-24 02:40:22'),
(18, 'INV-671a088d09f68', '2024-10-24', 255000.00, '2024-10-24 02:42:53', '2024-10-24 02:42:53'),
(19, 'INV-671a08d346b42', '2024-10-24', 1400000.00, '2024-10-24 02:44:03', '2024-10-24 02:44:03'),
(20, 'INV-671a08ea380bd', '2024-10-24', 2100000.00, '2024-10-24 02:44:26', '2024-10-24 02:44:26'),
(21, 'INV-671a0ab610fd4', '2024-10-24', 3999999.96, '2024-10-24 02:52:06', '2024-10-24 02:52:06'),
(22, 'INV-671a0beb2c35b', '2024-10-24', 1170000.00, '2024-10-24 02:57:15', '2024-10-24 02:57:15'),
(23, 'INV-671a0c754f15b', '2024-10-24', 395000.00, '2024-10-24 02:59:33', '2024-10-24 02:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, 350000.00, '2024-10-23 23:48:09', '2024-10-23 23:48:09'),
(2, 1, 1, 6, 85000.00, '2024-10-23 23:48:09', '2024-10-23 23:48:09'),
(3, 2, 2, 3, 350000.00, '2024-10-23 23:58:08', '2024-10-23 23:58:08'),
(4, 2, 1, 6, 85000.00, '2024-10-23 23:58:08', '2024-10-23 23:58:08'),
(5, 3, 2, 3, 350000.00, '2024-10-23 23:58:49', '2024-10-23 23:58:49'),
(6, 3, 1, 6, 85000.00, '2024-10-23 23:58:49', '2024-10-23 23:58:49'),
(7, 4, 2, 3, 350000.00, '2024-10-24 00:52:50', '2024-10-24 00:52:50'),
(8, 4, 1, 6, 85000.00, '2024-10-24 00:52:50', '2024-10-24 00:52:50'),
(9, 5, 2, 3, 350000.00, '2024-10-24 00:54:31', '2024-10-24 00:54:31'),
(10, 5, 1, 6, 85000.00, '2024-10-24 00:54:31', '2024-10-24 00:54:31'),
(11, 6, 1, 4, 85000.00, '2024-10-24 00:55:10', '2024-10-24 00:55:10'),
(12, 7, 1, 4, 85000.00, '2024-10-24 00:55:29', '2024-10-24 00:55:29'),
(13, 8, 2, 5, 350000.00, '2024-10-24 00:56:15', '2024-10-24 00:56:15'),
(14, 8, 1, 3, 85000.00, '2024-10-24 00:56:15', '2024-10-24 00:56:15'),
(15, 8, 2, 2, 350000.00, '2024-10-24 00:56:15', '2024-10-24 00:56:15'),
(16, 9, 1, 5, 85000.00, '2024-10-24 01:06:33', '2024-10-24 01:06:33'),
(17, 9, 2, 3, 350000.00, '2024-10-24 01:06:33', '2024-10-24 01:06:33'),
(18, 11, 1, 3, 85000.00, '2024-10-24 01:12:20', '2024-10-24 01:12:20'),
(19, 12, 1, 3, 85000.00, '2024-10-24 01:12:20', '2024-10-24 01:12:20'),
(20, 15, 2, 8, 350000.00, '2024-10-24 02:25:24', '2024-10-24 02:25:24'),
(21, 15, 2, 3, 350000.00, '2024-10-24 02:25:24', '2024-10-24 02:25:24'),
(22, 16, 1, 18, 85000.00, '2024-10-24 02:36:27', '2024-10-24 02:36:27'),
(23, 17, 2, 7, 350000.00, '2024-10-24 02:40:22', '2024-10-24 02:40:22'),
(24, 17, 1, 2, 85000.00, '2024-10-24 02:40:22', '2024-10-24 02:40:22'),
(25, 18, 1, 3, 85000.00, '2024-10-24 02:42:53', '2024-10-24 02:42:53'),
(26, 19, 2, 4, 350000.00, '2024-10-24 02:44:03', '2024-10-24 02:44:03'),
(27, 20, 2, 4, 350000.00, '2024-10-24 02:44:26', '2024-10-24 02:44:26'),
(28, 20, 2, 2, 350000.00, '2024-10-24 02:44:26', '2024-10-24 02:44:26'),
(29, 21, 8, 2, 999999.99, '2024-10-24 02:52:06', '2024-10-24 02:52:06'),
(30, 21, 3, 2, 999999.99, '2024-10-24 02:52:06', '2024-10-24 02:52:06'),
(31, 22, 5, 2, 22000.00, '2024-10-24 02:57:15', '2024-10-24 02:57:15'),
(32, 22, 2, 3, 350000.00, '2024-10-24 02:57:15', '2024-10-24 02:57:15'),
(33, 22, 6, 2, 38000.00, '2024-10-24 02:57:15', '2024-10-24 02:57:15'),
(34, 23, 2, 1, 350000.00, '2024-10-24 02:59:33', '2024-10-24 02:59:33'),
(35, 23, 8, 1, 45000.00, '2024-10-24 02:59:33', '2024-10-24 02:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_24_042831_create_products_and_invoices_tables', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Suzuki', 'Gixxer', 85000.00, NULL, NULL),
(2, 'Honda', 'Royel Enfield', 350000.00, NULL, NULL),
(3, 'Toyota \r\n', 'Harrier', 999999.99, NULL, NULL),
(5, 'Toyota', 'Corolla', 22000.00, NULL, NULL),
(6, 'Toyota', 'C_HR', 38000.00, NULL, NULL),
(8, 'Nissan', 'X-Trail', 45000.00, NULL, NULL),
(10, 'Honda', 'Vezel', 35000.00, NULL, NULL),
(11, 'Hyundai', 'Sonata', 42000.00, NULL, NULL),
(12, 'Mazda', 'Axela', 33000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('16vUj2MMeC1VpyGpX8E96XtH9giJH8tcIxTTJjvf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmNVNUxncVp0dHpyTm9qT1pyUTA1aHJsbUJmZFN1TGo1QTdpSGR6YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759279),
('1nOmHmntnVOPHdtkaEMCKtuamfUDxr6y1GsA5hCe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmZ5MmM4T3JkdTV4aVpZU0tnOGRLQ1pUYkYxOFZRWDJVaklJbnFKWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753999),
('1QnP3ifUcii41kktjQG1NBidUkcg9tAFOIQmCiS9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmRRemMxVnJZWXB2eVc4V29hQXc1bVBmUWZGSGtxcmN5eGNlcVplQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753871),
('3AA6XYVPK5BtWzgaWy9tGvgL6wFMhywD7SlaBB8Z', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUFlR2JNZmZsYlBaQlNzZXplbGFIN2pOYUt6Zzd5M0Y0WGY5U21JWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758647),
('9JUQqwx8XC2C2JGL8iVzZfie1BKLk9uEh247sADN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDUyZW9rNmxRa2JaUVhBcnMyOWRDNzV6UHE4RHVXamRtN3lzZGNJOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753912),
('ae08X2kU1kEsbMbyKSkLXTxhvj2lexIOrI8Yb13N', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm1YSkQ4RUxkaUtUUDd2VWtwNWFyRGljeDhqWEJ3elEyZllNc2lzaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759417),
('BbJZodZMlg63xukiGtFLCXexeh8UVMlySqvgFnIs', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibG9ndFlMc3BzaE1VVDdGYmVGaVZjZUJpSWNjQzBqekptdDJQUk5odyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758541),
('BiisBZzeSUL25kky4ogz7Z8QjEBFdBlblGZ7u8QJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDY4QTFQdnFtN0F1elBBRmhmUnJBazl6MGdOZHBHb0ZSTkpGOEFRUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754013),
('CPZNP4oTz6RPby7cfpZiYArfPmIZrtj8pyEaaaay', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUMzQU9qcVlUczFENjZNazBWbmNma1J2WGpQY3U1QTJNa2dieW8yNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759059),
('CYNlC0of5qYcHOdT4zd8ZPCi55ul2JTvQjZZr5kK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzZRazdhcDhwaFhldGtDRWFtU2I5SGxGM0owdmliUnNESEdyWUprUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753737),
('fWUroy8F7bFiYetZXVFTP88iJqEYVQWduIdHIbn4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2FjMFZQYmFIZktIVE5yQ0xxY0h5cVpJRW16bGI2YmF2REpDMUp5SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754323),
('HbiW8c0ujqf7P8W3BsIwrsDQyfSBgp7MsscY8wrL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmpOaFE4YjFsYnhSTkNXWVZmRERpS0ZzeG94ZG95OXVBYUpOempTMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758729),
('hDcHBg9U2SDWfUdl9kyMoGAoPrLdVoUTNzxi7NZh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0lkNld6bjZnVXdQeFFOMmdhaG1mWHJBazJWYzBMdWdsWlU0N1FvNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753895),
('hRUvpoeKzqK3xN3go9JCuQNTP3c5QXOgsH66yx8t', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWxyUXBlc2tMVElPT0xYSnl0NjhxT3NmQzJqbExwTnFIOVRCRHpkVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753452),
('ja3hKltc4o1EIBIrBnffCaMf8xb4DyTBC3wbwZTk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGJyNDdzclF5WUFJMmhqNDVsNU1UQkdDaGpycTlyZE9GQlJueUU2ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758965),
('kG0NQi1ZS9dtnKNiX094vIUiqoiAL9wVTYgaW4U2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVU5NW53T1FGeXQxdVN4UU56bWphb29oS3FXUFZmS3h4YUJBWHducyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759324),
('kVzh441ABBjYzFxMrdCnP8X3CtCd5V15fjUCcmXC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFV3enFDd2prWkhjWVgydHdmeDd3U2EyRzVEbHVzTHBzdGVqUlY3ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753785),
('LaNb1kocau5k5wHZrIykor29DvAqCuCJTJShh5fK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkl5UFNqZjFodGZvNjA3YTV4UGpQMENrdWF0Y3FrajdFU1BNSVZPYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729752736),
('LaT0yA7lJsUIHHM6uYQVQTINvJLRIfFU1aij4h2G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnpZZGQyeFVPNHJNdW5sTkFOamxnbm9XN0xBdUszdXFObE9Lb1BERSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753313),
('LRGqQsYWRNwb1mRbCUInjfIrKwQqrU1mPLV1Wwz6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2htdW5oN29nTktNWkNpTFEzVGF6NzZhMlFkUHc4U3ZLbzNRdnhiViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758370),
('lZz49UufPXUxbgZXDWH9LdllA4dFlnMCvkmKyN62', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlBmbE84RDk5UFp5YjdBNFQybTNJcEhqVjZXa0RUcktwY3dSaFEycCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759145),
('m4WwnLNcC5kvKDuOiKpUaCtWOtEcMw554UkHcFRu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG9CRHpxT1lkNHY1QUZhUWhwQWJoa1FMYnpDdGxBd1NXTmRzQU5DZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753841),
('mOzpW3esDc7DxSWXJ8CX0dqgMBGZuGs6IDy8fE3G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1pydThCdFRUY1NJdEFZaUVua252Y3VQZXllejBmTXBiU2VPMm5SZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759123),
('n9e721C1TMloOpFdPir5UT9ubJNB9NqJT3n87dxs', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3ZnWllvcVE1Q0cyTXpDbWV2RENwcXdmNnR6NlNCaGFVZ2VGWTVycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753332),
('nfie1z9lfQKN2J5seLtWBxDluwoU186ongU8Q2SG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnFTVVpSQnhmRDRGOHl5V2lWN0NNdG45VldZRWFxNDdJSHpDSHk3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758525),
('NIosPdDngNNiYRG8VC98v7uIYoUxqtMHXUCkUn22', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0luZ3VtaVpuTUY4WEp1UGNhaFZCNmdvd0ZFZTdYcjZBb3NxdEhZTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754112),
('nKmH9ttYhdSPkNVysDz0mzr3VohWoAhW0AfRmiKo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFRLSVlYbWJPZTJldnNGbHlURkxXSzZkM0M5cUNIb3FDSU1Ed2d0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729752869),
('nKYb8kHyJXynvF5KxhMigpteJF9GiEssM5KefejE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUlFWVJ1aFNDc0IxQTl5anVDdk96WUtMajg1RlpxUU1ncUZ4NUo3QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnZvaWNlLzIzL3BkZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729760373),
('O8lfQhRtg5tLYlOpAr5T3Am2GzpG63oWI8DWjVQX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVZ1T0NEYXQyTGFOcm5BZWlDdVJKa2FUQWR4aW9iREhOVlZrNHdhTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753169),
('onBWITTXL6jWEP5RKQhwS9leIhXkUNt2ZB159plP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxmWlNPY2NDUFFmRGlPTlF4dHVVbFZPQ0ViS3NJZDZFQURKOGtTSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729752705),
('PDiyF10IMJxdvCAHRZlDM2b1cyvtznnGfXHdElrW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjlGZWNTN0xGUFJlSlAzQ0tXQzRQaEx1dElFZkF6eUVLUUZMMlJRMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758400),
('pTABBxUjh54PVP9eDjR3iMeITE8TEQUwJmNfEPrC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHlSTGFRVWtMZnBETW1jN0JNb20yU1pUcDN6eXNYTzRaYmhKa0lnSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753536),
('qBS0fQiWxXZhvSCyXffRU3n9jzJkmUkL8BM4PsPT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVlLc0NiQTdqWWxWdkplZGFJVHVsT0I2aWlhQlNIaVY0MFZJV3lseSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753511),
('rUFB6CD9d86B2munfMdNF6440vylZxf1e70L0wYU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTJ1TmlkWkwzejZjUHBlbGQxOHQyVGFIYVBlOE03dFBtQnZTT1BkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758673),
('smzMaf2l8H9EYDQV0CFI0k5keLgoE8zeU2Jg4y2B', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTdFTjFWS2pJeTZkVThWQ09BUjhpVUZQanBaRmtxSE82dDV3czRnciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753126),
('TPjG2TFmrShHzh7KBhOM7MsU9cKpNUbf5O7diDv1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEhrcUE1RWM1S3ZMN0x6N0hIZ05DcEk5WGVyR3NvcDF5MnVCc1p0RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753715),
('TVrz5HB15ZmUFMjdZrMneKj1jdj3M1DZsKCgU0ma', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0xmSXhyWm9VWGdrV0dWM3dNektQV1J6RkFyUEdNR2swRkxEdGpPMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758871),
('U1ifruxeaScGi5j0ydx4LgzbGe1UzNKD1Rhc98SM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0dBTkFNMHlwVmRVQmZqWk96Tk9CMllwM1Z1bHFsNlV5NzZXdFh4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753762),
('vDJiMnWhs9iyIBQerz00bGcCqYxTlWj2ekpFla2Y', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0Q3M1d4bFY1VTZ5UkNGakI5RnRVeDdtdFlOV0J4VHkxU2d1eXV2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753977),
('vghGzY04rqB83dTOcJ0nuTVMAmA2qmtFK4LckMWF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzF5UWw4OEt5MW1mM0g2U2dNU1E3OG9mQ0JYamFHYXFXS2V2WEhmOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759508),
('VjoINldbhZPWDiLHoy3vPvIxiBPkJbZpiDpyLjOr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVNpQldlanRRUVg1YkhETDBGVHlTalB2UnA1cUVyUDdwbDNCU1dQRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753515),
('vyKNu8mnqkgoIWeDyLs1ukBqP9B1bNHhEFTimI9r', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVZLZmNGQXhRV0lRa0x5OEtZR2M5S283WXUxcjh1OTBjNGFuMDI4VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758833),
('wCVHl2FzgcNUnpDLhTwmfXrUj6NCZTbEu0EcyCwL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGFQYmIxTzBvTDZ2Q1pqSkRqVU96N1lPcldxYmlsNEdtNnpjS3hqcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759429),
('wXVO1XigIcYUqRwH9dUdsfMxvU8N8klfgxHwsoJv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVhmWTlxaEZxTHhTYnJadVBJSVBab01XSlRMaEVFTnBidjRuSTJ3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759083),
('xMneQjUUiLV92cXAhnV0SUVmiHz5fhjJcT9drjc7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzlMOVFESENNRW5RQkk2MXZXZ3RocFlIS3FRZ1JtNVB6VjhxeVo3UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753770),
('XTrDdThdWGLG9Hq7TDsyTeOf0Q0sCf882XaUSR1b', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWV6U245Yk9Ncmk3amNhbmR1UGRZN2JLYmFTb043a3NnQXBUZm1KdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729759363),
('XuwZZuGGGq4cKyBKSPwJyvXvY0Jwpkq2xQRVMN2d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3B5OU5RMlh3YzBJTExGaVk4bFFkb3V6QWxoT1hmODM5eFphdkYzeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754027),
('yfdadx2nUrXsvjBNnABkYQR1AotSTnxnCZfzpc0L', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMExteHAxU01pNmM5aXZuYW40Q29CTGhQUjRUVkFaYjVZUGRHME02ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753280),
('Z2o2BBNrivlVQZHf5VfK0IaRglCA236qC5w6Y4xW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTFpSEh2RE9OdHNOdWZkWG9URkZSNUxzRjRwdGJseTJGbTA2eE9RZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753567),
('ZXrfgNEtDESh8c0AJFCnQpo9pm5me2OiRVS1VUOk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGx6RXRWZ3RjRXpRTHI0c2RtVDNGMkpoenNwaWFlS0ZZYnF3QW9BeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729758587);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `invoice_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
