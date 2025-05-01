-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2025 at 09:24 PM
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
-- Database: `dryfruits`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nuts', '2021-12-13 01:50:13', '2025-05-01 11:25:05', NULL),
(2, 'Dry Fruits', '2021-12-13 01:51:21', '2025-05-01 11:25:21', NULL),
(3, 'Dates & Exotic', '2021-12-13 02:13:01', '2025-05-01 11:25:32', NULL),
(4, 'Combos & Gifts', '2021-12-13 02:13:16', '2025-05-01 11:25:49', NULL),
(5, 'Cameras', '2021-12-13 02:13:25', '2025-05-01 11:25:53', '2025-05-01 11:25:53'),
(6, 'Gaming Consoles', '2021-12-13 02:13:30', '2025-05-01 11:25:57', '2025-05-01 11:25:57'),
(7, 'Accessories', '2021-12-13 02:14:00', '2025-05-01 11:26:00', '2025-05-01 11:26:00');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `image`, `product_name`, `description`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'samsung.jpg', 'Almonds (Badam)', 'Crunchy, nutritious, and naturally rich in vitamin E and healthy fats, our premium almonds are perfect for daily snacking or adding a nutty crunch to your meals. Available in raw, roasted, and salted varieties to suit every preference.', 960, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(2, 2, 'asus.jpg', 'Raisins (Kishmish)', 'Sweet, chewy, and naturally rich in iron and antioxidants, our premium raisins are perfect for snacking or enhancing your favorite recipes. Choose from golden, black, or green varieties for a burst of natural sweetness.', 250, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(3, 3, 'apple.jpg', 'Ajwa Dates', 'Known for their spiritual significance and natural healing properties, Ajwa dates are soft, mildly sweet, and full of fiber and antioxidants. These premium dates are perfect for daily consumption, especially during fasting and religious occasions.', 999, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(4, 4, 'sony.jpg', 'Mixed Dry Fruit Packs', 'A perfect blend of nutrition and taste, our mixed dry fruit packs combine customer favorites like almonds, cashews, raisins, and pistachios in one convenient bundle. Ideal for daily snacking or sharing with family and friends.', 1999, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(5, 2, 'canon.jpg', 'Figs (Anjeer)', 'Soft, fiber-rich, and mildly sweet, our sun-dried figs are packed with calcium and essential minerals. Great for digestion and bone health, these chewy delights make a wholesome snack or a delicious dessert topping.', 1828, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(6, 3, 'product_1643112115.jpg', 'Medjool Dates', 'Often called the “King of Dates,” Medjool dates are large, juicy, and caramel-like in flavor. Naturally rich in potassium and energy-boosting nutrients, they make a perfect natural sweetener or guilt-free treat.', 739, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(7, 4, 'playstation.jpg', 'Festive Gift Boxes', 'Celebrate every occasion with elegance! Our festive gift boxes are beautifully packed with a premium assortment of dry fruits, perfect for Diwali, Eid, weddings, or corporate gifting. Healthy, luxurious, and unforgettable.', 2999, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL),
(8, 1, 'iphone.jpg', 'Cashews (Kaju)', 'Soft, buttery, and packed with protein and minerals, our handpicked cashews offer a deliciously creamy texture. Ideal for snacking, cooking, or gifting, these nuts are available in plain, roasted, and masala-coated options.', 1250, '2025-05-01 16:50:15', '2025-05-01 16:50:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc@gmail.com', NULL, NULL, NULL, '$2y$10$u5X6Ls2jofGmnd4u3ZKYTeHWWcsQtmiUsEwy/Om7KeCAzJ.WJGOhi', NULL, '2025-05-01 11:21:57', '2025-05-01 11:21:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
  ADD KEY `tokenable_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
