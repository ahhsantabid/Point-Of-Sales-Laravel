-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 09:22 AM
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
(13, 'INV-6719f4faa2330', '2024-10-24', 0.00, '2024-10-24 01:19:22', '2024-10-24 01:19:22');

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
(19, 12, 1, 3, 85000.00, '2024-10-24 01:12:20', '2024-10-24 01:12:20');

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
(1, 'TV', '56\' LED FHD', 85000.00, NULL, NULL),
(2, 'Honda', 'Royel Enfield', 350000.00, NULL, NULL);

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
('1nOmHmntnVOPHdtkaEMCKtuamfUDxr6y1GsA5hCe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmZ5MmM4T3JkdTV4aVpZU0tnOGRLQ1pUYkYxOFZRWDJVaklJbnFKWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753999),
('1QnP3ifUcii41kktjQG1NBidUkcg9tAFOIQmCiS9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmRRemMxVnJZWXB2eVc4V29hQXc1bVBmUWZGSGtxcmN5eGNlcVplQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753871),
('38J0nPN5ojtE6j4mZXTWau4JDq5VondHjADRaHgK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzVMY2gyWmp4VlhiN0JpZWUwQXV0aDVPZHJSS0REcEhQaUV4cFpOWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747397),
('8ZwRPHglfUSBBrGYsyDQdX3A1OxPAAsKrki6lyup', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHYzeHZiVEhKWXd3NDVIQVBUOWZFYmlHNUY2bUpWckRPQ2w5WjZzMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747351),
('9JUQqwx8XC2C2JGL8iVzZfie1BKLk9uEh247sADN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDUyZW9rNmxRa2JaUVhBcnMyOWRDNzV6UHE4RHVXamRtN3lzZGNJOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753912),
('9WBqgp8zc4b8H4C5v2ZuewNMU3FFFDd3PhK6h0SC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE1Xc1RFU1FyVzBXQnY0UE5VZmpITTI2ZTNQeEJ6b0VWcTBKdkI0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729749487),
('BiisBZzeSUL25kky4ogz7Z8QjEBFdBlblGZ7u8QJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDY4QTFQdnFtN0F1elBBRmhmUnJBazl6MGdOZHBHb0ZSTkpGOEFRUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754013),
('CYNlC0of5qYcHOdT4zd8ZPCi55ul2JTvQjZZr5kK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzZRazdhcDhwaFhldGtDRWFtU2I5SGxGM0owdmliUnNESEdyWUprUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753737),
('DJWdclTfaxkkPRazceQErxpDtz57AijWAbMXIjU5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2w0YW9mbDltOUgyd3JjZmYxYVQzMWlHeUdQZU5WRkhBYkM3VDZOeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747553),
('dtq5UzUHIApqI9hfuv4GaX4SvbuIAMJuaHoGI4Fm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWJOeWd0endINjdBOVBKendGWlJHN1doeVNsMVI2R29ZQU5IRW5HOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747432),
('fWUroy8F7bFiYetZXVFTP88iJqEYVQWduIdHIbn4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2FjMFZQYmFIZktIVE5yQ0xxY0h5cVpJRW16bGI2YmF2REpDMUp5SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754323),
('GUIwW0ZiNWiv2cheeGxdVbI6qoamCuHqDyiISLZ9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmlFc0U5Skw3cEV5RWtXZWs1R1RZSDZUSGRoWDRxSm1pWkd5eGFPMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729746758),
('hDcHBg9U2SDWfUdl9kyMoGAoPrLdVoUTNzxi7NZh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0lkNld6bjZnVXdQeFFOMmdhaG1mWHJBazJWYzBMdWdsWlU0N1FvNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753895),
('hRUvpoeKzqK3xN3go9JCuQNTP3c5QXOgsH66yx8t', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWxyUXBlc2tMVElPT0xYSnl0NjhxT3NmQzJqbExwTnFIOVRCRHpkVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753452),
('kVzh441ABBjYzFxMrdCnP8X3CtCd5V15fjUCcmXC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFV3enFDd2prWkhjWVgydHdmeDd3U2EyRzVEbHVzTHBzdGVqUlY3ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753785),
('LaNb1kocau5k5wHZrIykor29DvAqCuCJTJShh5fK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkl5UFNqZjFodGZvNjA3YTV4UGpQMENrdWF0Y3FrajdFU1BNSVZPYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729752736),
('LaT0yA7lJsUIHHM6uYQVQTINvJLRIfFU1aij4h2G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnpZZGQyeFVPNHJNdW5sTkFOamxnbm9XN0xBdUszdXFObE9Lb1BERSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753313),
('m4WwnLNcC5kvKDuOiKpUaCtWOtEcMw554UkHcFRu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG9CRHpxT1lkNHY1QUZhUWhwQWJoa1FMYnpDdGxBd1NXTmRzQU5DZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753841),
('MHo1sd8eHCpn05048lGNB1ThI39KUmD4Asgy6xtF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTA5U0NGR2FKRXVtQWFodDFYUmxvb2JpbkRWZE1WNkdRV0RmakhaZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729749540),
('MPPbYgowEDdvdy5hkwsJRNNTAbZjjxzuGNlmW5Ob', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWhESjJUYmVmeFBSQjY4dFNBWEh6MmF4YjdnYlpQZE5Jc0Z2aVJPNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729749501),
('n9e721C1TMloOpFdPir5UT9ubJNB9NqJT3n87dxs', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3ZnWllvcVE1Q0cyTXpDbWV2RENwcXdmNnR6NlNCaGFVZ2VGWTVycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753332),
('NIosPdDngNNiYRG8VC98v7uIYoUxqtMHXUCkUn22', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0luZ3VtaVpuTUY4WEp1UGNhaFZCNmdvd0ZFZTdYcjZBb3NxdEhZTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754112),
('nKmH9ttYhdSPkNVysDz0mzr3VohWoAhW0AfRmiKo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFRLSVlYbWJPZTJldnNGbHlURkxXSzZkM0M5cUNIb3FDSU1Ed2d0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729752869),
('nKYb8kHyJXynvF5KxhMigpteJF9GiEssM5KefejE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUlFWVJ1aFNDc0IxQTl5anVDdk96WUtMajg1RlpxUU1ncUZ4NUo3QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnZvaWNlL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729754363),
('O8lfQhRtg5tLYlOpAr5T3Am2GzpG63oWI8DWjVQX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVZ1T0NEYXQyTGFOcm5BZWlDdVJKa2FUQWR4aW9iREhOVlZrNHdhTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753169),
('oKaPPSnEmP5GFuLekJ0njY95iBlGz5rL9spCs9Jr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmRrOEMwZ1Rpc0ZZcDhOYU1HSHVXS0dhWVFCbnZqeEVxaHBHdWVFSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729749528),
('onBWITTXL6jWEP5RKQhwS9leIhXkUNt2ZB159plP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxmWlNPY2NDUFFmRGlPTlF4dHVVbFZPQ0ViS3NJZDZFQURKOGtTSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729752705),
('oqObWezMv8aQfgHcrZAUO1ebd2MrBRqFFZgZ7PDD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFlkR1lQckdSckNvZUVvU3NHcjFpN1VvYnRPSlpNSFN6M3IybVZiUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747815),
('pTABBxUjh54PVP9eDjR3iMeITE8TEQUwJmNfEPrC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHlSTGFRVWtMZnBETW1jN0JNb20yU1pUcDN6eXNYTzRaYmhKa0lnSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753536),
('qBS0fQiWxXZhvSCyXffRU3n9jzJkmUkL8BM4PsPT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVlLc0NiQTdqWWxWdkplZGFJVHVsT0I2aWlhQlNIaVY0MFZJV3lseSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753511),
('smzMaf2l8H9EYDQV0CFI0k5keLgoE8zeU2Jg4y2B', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTdFTjFWS2pJeTZkVThWQ09BUjhpVUZQanBaRmtxSE82dDV3czRnciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753126),
('TkSHfMQ2PxHJol3ijoHX4Tnr0gnBTIULzigIpEjl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dJYzlTNWYwdGQ3dTBUbnI4dGc1b0UwTGJzQWdNQ0xvMmdaOGphbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729746816),
('TPjG2TFmrShHzh7KBhOM7MsU9cKpNUbf5O7diDv1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEhrcUE1RWM1S3ZMN0x6N0hIZ05DcEk5WGVyR3NvcDF5MnVCc1p0RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753715),
('U1ifruxeaScGi5j0ydx4LgzbGe1UzNKD1Rhc98SM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0dBTkFNMHlwVmRVQmZqWk96Tk9CMllwM1Z1bHFsNlV5NzZXdFh4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753762),
('vDJiMnWhs9iyIBQerz00bGcCqYxTlWj2ekpFla2Y', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0Q3M1d4bFY1VTZ5UkNGakI5RnRVeDdtdFlOV0J4VHkxU2d1eXV2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753977),
('VjoINldbhZPWDiLHoy3vPvIxiBPkJbZpiDpyLjOr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVNpQldlanRRUVg1YkhETDBGVHlTalB2UnA1cUVyUDdwbDNCU1dQRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753515),
('wCvOKnrl5tRgm2BnUULiYzo6Oes5vXyqdLmVs3wO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFMxQmZ2aDc0VEZZanBWR3NPUlhCMHRibHJBVDVTaDV2R2NSaFBidiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729748247),
('xFWjEjhN8RMPoreIduejYdikDSdhfZ36255n32yx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3NHUHp1UXNlcTk5d1JVck50REcwdHppNk12dGhITjJYc2M2RDBuMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729748810),
('xMneQjUUiLV92cXAhnV0SUVmiHz5fhjJcT9drjc7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzlMOVFESENNRW5RQkk2MXZXZ3RocFlIS3FRZ1JtNVB6VjhxeVo3UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753770),
('XuwZZuGGGq4cKyBKSPwJyvXvY0Jwpkq2xQRVMN2d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3B5OU5RMlh3YzBJTExGaVk4bFFkb3V6QWxoT1hmODM5eFphdkYzeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729754027),
('y4UtaOZ5FeynVbfE41EcHSTgtQjR4TD9ccopKGBK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0t1WlNNOE1FMDFpeXVQZm5MZjM5bmRRS2hNQ1FKZjFUZzRWV3VjbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747534),
('yfdadx2nUrXsvjBNnABkYQR1AotSTnxnCZfzpc0L', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMExteHAxU01pNmM5aXZuYW40Q29CTGhQUjRUVkFaYjVZUGRHME02ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753280),
('YHyFd42nqtsfoRQePZQJniA8VGrjerZuWgZjV6Fn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHkzeDNGUVpJb2d6MFBkbVpOUHJyTTdLdmJLZ0dkMzQ0dXBqQ1BzbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729747446),
('Z2o2BBNrivlVQZHf5VfK0IaRglCA236qC5w6Y4xW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTFpSEh2RE9OdHNOdWZkWG9URkZSNUxzRjRwdGJseTJGbTA2eE9RZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729753567),
('zIQvGL3o2zZVnou0GpdlH7ardXEccn14AAK6fFHx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkZaVHlzcng4emdBRjhqSmRoVGQwYkpud3Y2SFNCMkRwZU15WEc2ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729746888);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
