-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 01:09 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_24_223201_create_products_table', 1),
(4, '2018_01_24_223238_create_reviews_table', 2),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(8, '2016_06_01_000004_create_oauth_clients_table', 3),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2306f45cb0c8d0d866fa86498d4e324a070d6cd046b55dc659ef03c320ec0b68e8f914b7b6744615', 1, 2, NULL, '[]', 0, '2018-01-27 07:52:32', '2018-01-27 07:52:32', '2019-01-26 23:52:32'),
('58d3d7cc010766a9da5dc811c6156a6bd1061c1a1a31e30d4f0f260c69a7b95d094c1a32464fbeed', 1, 2, NULL, '[]', 0, '2018-01-27 03:38:25', '2018-01-27 03:38:25', '2019-01-26 19:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'uMSITdEGgYhw3fnwvxCGKvU62z6ZsYMkiQ7d4nUh', 'http://localhost', 1, 0, 0, '2018-01-27 03:19:56', '2018-01-27 03:19:56'),
(2, NULL, 'Laravel Password Grant Client', 'Gqc6V2L4wmcMvAPIHoTosEVX4d4N07sa4PgLhYxu', 'http://localhost', 0, 1, 0, '2018-01-27 03:19:56', '2018-01-27 03:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-01-27 03:19:56', '2018-01-27 03:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('54dc65df2a769698eea3b4f8c6f001e758fdd6e57780d9bac72247f1f4559a792be73580b8447c04', '58d3d7cc010766a9da5dc811c6156a6bd1061c1a1a31e30d4f0f260c69a7b95d094c1a32464fbeed', 0, '2019-01-26 19:38:25'),
('7629ededb5d3cc27f64de04cf90e5a5cb2eda54c272cd4dde83ba01e53383df7247540e69c9e252e', '2306f45cb0c8d0d866fa86498d4e324a070d6cd046b55dc659ef03c320ec0b68e8f914b7b6744615', 0, '2019-01-26 23:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'porro', 999, 7, 19, '2018-01-25 07:37:59', '2018-01-25 07:37:59'),
(2, 'delectus', 193, 9, 44, '2018-01-25 07:37:59', '2018-01-25 07:37:59'),
(3, 'in', 732, 1, 44, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(4, 'ea', 467, 3, 27, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(5, 'quidem', 826, 3, 32, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(6, 'nihil', 748, 3, 27, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(7, 'sed', 402, 6, 36, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(8, 'et', 494, 4, 24, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(9, 'aut', 528, 9, 47, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(10, 'nisi', 770, 0, 32, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(11, 'molestiae', 940, 7, 26, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(12, 'pariatur', 642, 5, 24, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(13, 'soluta', 547, 7, 27, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(14, 'id', 199, 3, 20, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(15, 'tenetur', 263, 6, 20, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(16, 'fuga', 346, 7, 27, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(17, 'soluta', 206, 2, 14, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(18, 'inventore', 468, 4, 48, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(19, 'fugit', 484, 3, 22, '2018-01-25 07:38:00', '2018-01-25 07:38:00'),
(20, 'et', 590, 7, 23, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(21, 'reprehenderit', 239, 3, 42, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(22, 'corporis', 470, 1, 33, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(23, 'aut', 439, 6, 15, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(24, 'consequatur', 225, 0, 37, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(25, 'eum', 892, 2, 10, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(26, 'iste', 115, 7, 16, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(27, 'ut', 155, 7, 41, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(28, 'dolores', 360, 3, 14, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(29, 'delectus', 881, 8, 31, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(30, 'qui', 389, 0, 36, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(31, 'quas', 754, 9, 21, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(32, 'dolorem', 224, 2, 34, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(33, 'et', 260, 1, 27, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(34, 'et', 212, 9, 42, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(35, 'nihil', 460, 5, 12, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(36, 'aut', 208, 8, 50, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(37, 'est', 894, 2, 20, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(38, 'laboriosam', 217, 3, 49, '2018-01-25 07:38:01', '2018-01-25 07:38:01'),
(39, 'ea', 873, 9, 15, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(40, 'ad', 320, 1, 44, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(41, 'reiciendis', 574, 0, 10, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(42, 'qui', 986, 8, 15, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(43, 'repellat', 349, 7, 14, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(44, 'repudiandae', 979, 3, 48, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(45, 'soluta', 549, 2, 12, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(46, 'eos', 742, 7, 34, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(47, 'dolor', 634, 6, 35, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(48, 'maxime', 119, 7, 18, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(49, 'ut', 772, 6, 23, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(50, 'unde', 385, 2, 22, '2018-01-25 07:38:02', '2018-01-25 07:38:02'),
(51, 'dicta', 877, 6, 48, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(52, 'iste', 923, 1, 47, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(53, 'velit', 648, 0, 50, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(54, 'voluptate', 911, 8, 11, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(55, 'et', 358, 3, 20, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(56, 'quis', 830, 5, 14, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(57, 'totam', 216, 3, 45, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(58, 'iure', 216, 3, 12, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(59, 'voluptas', 310, 8, 42, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(60, 'earum', 285, 1, 47, '2018-01-25 07:40:31', '2018-01-25 07:40:31'),
(61, 'debitis', 386, 8, 27, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(62, 'maxime', 804, 6, 40, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(63, 'libero', 425, 0, 31, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(64, 'quibusdam', 153, 8, 33, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(65, 'iure', 287, 3, 33, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(66, 'corporis', 687, 4, 23, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(67, 'est', 155, 5, 18, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(68, 'nesciunt', 813, 5, 47, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(69, 'impedit', 935, 6, 19, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(70, 'qui', 454, 1, 16, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(71, 'reiciendis', 930, 1, 18, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(72, 'et', 256, 9, 15, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(73, 'delectus', 121, 3, 10, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(74, 'quis', 638, 5, 42, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(75, 'delectus', 551, 8, 26, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(76, 'cupiditate', 605, 8, 44, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(77, 'aut', 614, 5, 31, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(78, 'harum', 865, 9, 11, '2018-01-25 07:40:32', '2018-01-25 07:40:32'),
(79, 'quidem', 975, 1, 25, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(80, 'modi', 137, 5, 18, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(81, 'illo', 380, 8, 12, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(82, 'eos', 729, 4, 29, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(83, 'quidem', 970, 9, 27, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(84, 'omnis', 952, 9, 41, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(85, 'asperiores', 778, 3, 10, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(86, 'in', 952, 5, 43, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(87, 'vel', 101, 1, 21, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(88, 'fugit', 294, 0, 23, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(89, 'dolorem', 800, 5, 50, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(90, 'saepe', 530, 1, 13, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(91, 'dignissimos', 428, 1, 49, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(92, 'voluptas', 103, 5, 35, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(93, 'velit', 548, 9, 45, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(94, 'excepturi', 802, 2, 14, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(95, 'qui', 602, 2, 38, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(96, 'minus', 524, 2, 10, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(97, 'quasi', 736, 0, 42, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(98, 'minima', 777, 3, 29, '2018-01-25 07:40:33', '2018-01-25 07:40:33'),
(99, 'ratione', 817, 0, 19, '2018-01-25 07:40:34', '2018-01-25 07:40:34'),
(100, 'animi', 437, 7, 34, '2018-01-25 07:40:34', '2018-01-25 07:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `customer`, `review`, `star`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'reprehenderit', 'Facere est quos voluptatem qui qui. Voluptate ut sit dicta eius voluptatem nihil. Asperiores consequuntur a itaque eum laboriosam laudantium sed perspiciatis. Enim incidunt tempora aliquam.', 0, 82, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(2, 'harum', 'Sit doloribus quisquam aut hic. Temporibus animi aut et voluptas sed et. Quo autem aperiam commodi perferendis omnis adipisci. Dolorem ut error numquam est illum.', 2, 13, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(3, 'omnis', 'Facilis modi occaecati provident. Omnis perferendis quod aut quia. Ut ut consequatur sit molestiae.', 1, 13, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(4, 'facilis', 'Sit unde consequuntur adipisci cum veniam vel omnis. Ullam velit officiis natus labore quia. Ratione amet quia at et et quisquam perspiciatis.', 2, 64, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(5, 'et', 'Sunt optio sed quaerat eligendi doloremque dolore voluptas. Id ipsam dolorum vel nobis dolor sed. Ut vel voluptatem qui in. Numquam id sed incidunt odio error.', 3, 60, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(6, 'ex', 'Optio esse magni nostrum. Eos eum dolorum expedita. Iste occaecati maiores quos ad. Sapiente ratione maiores dolore pariatur voluptatum aliquam dolorem.', 5, 11, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(7, 'itaque', 'Iure pariatur minima eos corporis natus. Eius et beatae iusto minus. Voluptatem quod quae est accusamus dolor eveniet.', 4, 55, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(8, 'cumque', 'Quam molestiae est vel rerum cupiditate. Numquam voluptas perferendis consectetur qui vel quae excepturi. Soluta dolorum eius mollitia corrupti numquam. Tempora porro error mollitia odit rerum minima aut.', 1, 34, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(9, 'illum', 'Ea nesciunt distinctio dolore ad eaque ab. Quia dicta omnis architecto est ea dignissimos fugiat. Quam et rerum delectus iste dolores.', 0, 97, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(10, 'modi', 'Consequatur itaque cum aut voluptatem perspiciatis consequatur beatae. Voluptatibus odio ratione vero sapiente fugit id voluptatibus. Modi et eos est aut accusantium.', 3, 69, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(11, 'saepe', 'In aperiam porro natus libero occaecati laborum voluptatum. Cum ut esse illo recusandae aliquid. Maxime beatae a dolores officiis et aut. Enim ad omnis rem cum et ipsum unde. Ipsam aut maiores sunt quo maxime.', 2, 70, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(12, 'magnam', 'Modi fugit velit illum beatae perspiciatis. Eius vitae impedit maxime explicabo sunt. Doloremque officia natus sunt harum. Reiciendis ut sunt quod sed et.', 1, 78, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(13, 'rerum', 'Aut nemo et eos veniam veritatis id omnis. Repudiandae pariatur ex temporibus blanditiis dolores dolorum eos. Hic corrupti asperiores repellendus rerum. Iste et minus aut pariatur.', 3, 39, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(14, 'vel', 'Dolores aut ut occaecati et sint vitae repellat quaerat. Dolorum corporis eveniet qui possimus autem culpa. Numquam omnis illum in repudiandae voluptatem atque. Incidunt ab voluptatibus ipsa similique odio.', 1, 72, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(15, 'nostrum', 'Ut porro quis voluptatum ipsa minus ducimus delectus. Officia unde atque eveniet ut aperiam sed et. At vel animi ipsam adipisci non non quia. Facilis qui qui ad quo nobis perferendis corporis.', 0, 44, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(16, 'quis', 'Perferendis provident qui asperiores harum. Sint eaque ipsam et rerum dicta illum consequuntur.', 3, 63, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(17, 'aspernatur', 'Soluta rerum eligendi incidunt tenetur distinctio. Enim saepe temporibus fuga numquam. Velit ipsam explicabo nobis provident beatae tempore quas nobis.', 0, 32, '2018-01-25 07:40:35', '2018-01-25 07:40:35'),
(18, 'amet', 'Quidem repellendus molestias ut nihil aut sit. Rem magni nam qui odit aspernatur. Saepe blanditiis similique tempora molestiae consequatur.', 4, 79, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(19, 'nobis', 'Odio est ullam laborum odio consectetur sunt. Ad voluptas totam ea voluptatem ut adipisci. Eum cupiditate libero harum quam beatae atque.', 0, 78, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(20, 'et', 'Repellat doloremque excepturi molestiae quo. Explicabo similique reprehenderit aut eum quo. Odit ad accusamus enim quis error.', 2, 33, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(21, 'ratione', 'Consectetur et veniam est mollitia modi et dolorem. Sit expedita eaque tempora itaque aspernatur laboriosam. Placeat qui id nesciunt. In id adipisci cupiditate ut unde soluta.', 2, 8, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(22, 'expedita', 'Qui aliquid omnis blanditiis est ut. Sunt autem pariatur provident a id commodi officia numquam. Et qui qui quam voluptates animi dolores. Sit labore porro tenetur perferendis id aliquam aut. Earum ea incidunt at quis iure id.', 2, 77, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(23, 'dolor', 'Itaque non dolorum voluptas dolorem. Ut vitae non repellat tempore facere aliquid cum fugit. Non commodi molestiae officia et voluptas voluptatem sunt cumque. Iusto voluptas earum doloribus voluptas illo fuga est.', 2, 57, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(24, 'expedita', 'Doloribus ut vel quia quod fugiat qui. Molestiae molestiae autem porro deserunt cupiditate. Consequatur eligendi mollitia dolore id ad animi.', 1, 82, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(25, 'enim', 'Et cupiditate rem laborum inventore et et voluptatem rerum. Ducimus modi non veniam nihil et. Porro excepturi sed nihil minus tempora assumenda vel.', 1, 14, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(26, 'soluta', 'Quis porro tenetur in omnis distinctio earum ut. Aperiam est recusandae recusandae consectetur repellendus laborum asperiores sint. Similique et quisquam minima voluptas inventore vel labore consequatur. Sint dicta tempore ab quo qui sint.', 3, 12, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(27, 'ullam', 'Non minus fugit quis consequatur. Tempore sunt dicta eum accusantium nihil laborum nobis. Consequuntur repellat neque qui modi modi voluptatem. Mollitia voluptatibus ad aut qui eligendi voluptatum blanditiis.', 4, 3, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(28, 'quia', 'Magni est vel quod iure harum modi animi molestiae. Omnis qui illo sunt ipsam aperiam provident qui. Amet aut et repellendus et dolorem vel inventore. Animi esse molestiae minima nihil sequi et dolor. Hic cumque exercitationem adipisci ut ut consectetur accusamus.', 5, 11, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(29, 'aliquam', 'Commodi repellendus delectus quidem nulla consequatur ipsa similique. Veniam nihil aut dolorem accusamus quis consequatur quia. Neque aliquid fuga explicabo autem est blanditiis sunt.', 0, 82, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(30, 'laboriosam', 'Consectetur aut sint numquam quia maxime voluptatem delectus. Mollitia praesentium dolorem ipsam. Dolorem numquam eveniet labore enim at aut nulla. Delectus et ut et.', 2, 87, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(31, 'est', 'Fuga eos consequatur ad corrupti. Labore autem rem accusantium eius. Deserunt distinctio autem eligendi tempore voluptas. Et omnis laboriosam vel ducimus amet voluptas voluptatem optio.', 0, 76, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(32, 'facere', 'Qui incidunt ut qui non delectus qui occaecati. Voluptatem amet ea voluptas amet dolores quia at. Laborum ratione similique unde. Amet harum aliquam et ut perferendis ea sunt quia.', 3, 25, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(33, 'voluptatem', 'Quia quisquam repudiandae corrupti. Iure eveniet sunt repudiandae vel voluptatem quibusdam dolorum. Aut quis voluptate voluptatem ratione quas et.', 2, 37, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(34, 'velit', 'Quo molestiae dolorum dolores. Nam commodi cum autem sed. Corrupti ad in corrupti et. Iste eius repudiandae ad quod velit dolores.', 0, 93, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(35, 'nihil', 'Neque nobis omnis deserunt rerum aliquam non quam alias. Exercitationem eos ut impedit eius. Temporibus placeat autem modi.', 1, 94, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(36, 'occaecati', 'Est quibusdam sed dolorum soluta. Quos rerum nihil quas. Omnis dolorum odit voluptas voluptas nemo voluptatibus aliquid. Quia occaecati ut ipsam esse eum nobis fuga reiciendis.', 4, 94, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(37, 'odit', 'Consequatur eveniet nam molestiae quis. Cupiditate suscipit illum aspernatur vel rem nihil eum. Quo delectus eaque distinctio atque eum.', 1, 46, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(38, 'voluptatem', 'Et eum aspernatur ipsa enim officia. Distinctio cumque fuga et ea ut qui aut. Et nihil et consequatur sit et consectetur facere. Rerum minima et nemo tenetur nostrum consequatur.', 1, 17, '2018-01-25 07:40:36', '2018-01-25 07:40:36'),
(39, 'voluptas', 'Quo ipsum ut nesciunt aut sit totam. Id aliquam animi qui quia facilis. Id omnis et est reprehenderit et.', 1, 40, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(40, 'quasi', 'Dicta ut et iste qui nisi. Et sed fugiat quibusdam error quibusdam. Et unde cum porro voluptas.', 5, 89, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(41, 'non', 'Eligendi numquam quidem repellendus cupiditate architecto consequatur ad. Ut impedit modi quia pariatur quaerat dicta hic officia. Repellat quia ab occaecati voluptatem. Explicabo quod deserunt quia voluptas et sit.', 2, 53, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(42, 'sunt', 'Deleniti hic fuga facilis. Rerum alias optio quia reprehenderit neque. Tempora voluptate sunt illum commodi dolor illo eaque quia.', 4, 89, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(43, 'consequatur', 'Nihil dolor distinctio commodi praesentium deleniti sequi fugit aut. Nulla non veniam ut atque quam quos laboriosam. Ipsam sit placeat enim placeat aut expedita.', 2, 77, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(44, 'quas', 'Incidunt perspiciatis aut harum ut labore. Laudantium est exercitationem libero doloribus adipisci reiciendis. Voluptatem et incidunt numquam itaque. Quos doloribus quae impedit sequi.', 1, 77, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(45, 'nihil', 'Beatae id fuga sed ut consectetur reprehenderit iure nostrum. Labore cupiditate quos non dignissimos ad. Quaerat et minima molestias sit et. Temporibus cupiditate iste libero.', 0, 28, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(46, 'optio', 'Nisi vero omnis voluptatibus odio. Voluptas aut aut blanditiis vel nam sit. Quod soluta sequi recusandae quo. Quo quia odio nihil quaerat voluptatem omnis exercitationem ex.', 0, 40, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(47, 'sequi', 'Ad id voluptatem asperiores asperiores. Error dolor aut aut. Minus magni ut nesciunt repellat in similique amet velit. Quia ipsam ut labore non.', 3, 7, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(48, 'laborum', 'Ut voluptatem omnis doloremque qui deleniti commodi odit. Est ea et eos ad quod a ipsum quas. Natus qui praesentium eveniet natus cupiditate est.', 4, 94, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(49, 'alias', 'Ipsum ipsum molestiae facere saepe accusantium temporibus est culpa. Ipsa quaerat et voluptatem porro eveniet perferendis. Corporis laboriosam sapiente quo sunt. Qui itaque tempore iusto quo.', 0, 76, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(50, 'ab', 'Repellendus distinctio minus officia quaerat animi. Tenetur quibusdam non aut illo iste. Aspernatur reiciendis excepturi odio magni. Tempora consequuntur reprehenderit sequi et sunt.', 5, 99, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(51, 'neque', 'Quibusdam quisquam voluptatem et nihil qui harum dolore. Eos nisi quas reiciendis error incidunt doloremque voluptate. Autem molestiae suscipit ratione quas doloribus tempore a.', 3, 46, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(52, 'iusto', 'Consequatur aut placeat commodi consequatur. Explicabo quia quos cumque et aperiam quas maiores nobis. Quisquam esse est et ut alias.', 4, 49, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(53, 'id', 'Rerum officiis assumenda numquam officiis itaque eum odit. Optio sunt neque sed ut. Doloremque et sunt inventore quo quod.', 5, 39, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(54, 'et', 'Laudantium sit quas asperiores facilis tempore animi nemo. Similique harum aliquam similique. Laboriosam sed officia inventore hic.', 5, 98, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(55, 'eligendi', 'Blanditiis id autem molestiae magni quaerat. Consequatur ea commodi ducimus voluptas maiores voluptatem et ut. Totam rerum non rem vel quaerat.', 5, 32, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(56, 'molestiae', 'Minima at id excepturi qui mollitia placeat minima sed. Id modi voluptatibus id. Sequi et autem quod distinctio. Ullam aut qui asperiores dicta corrupti aliquid quas.', 2, 55, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(57, 'sed', 'Quaerat at et repellendus itaque quod. Impedit ut rem ipsum ut saepe ab. Quasi placeat accusantium facere est facilis odio molestias. Facere quia suscipit quia eum omnis ex.', 5, 29, '2018-01-25 07:40:37', '2018-01-25 07:40:37'),
(58, 'est', 'Quia vel et et aut neque earum nam. Omnis deleniti sit sapiente magni iste sunt atque voluptatum. Maiores in non distinctio quia. Alias dicta voluptatem ad ex asperiores in. Dolorem quas eum quidem.', 0, 81, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(59, 'cumque', 'Praesentium dicta dolor cum id. Vel architecto corrupti provident aut aut facilis animi. Incidunt ratione praesentium fuga quo odit magnam voluptas.', 1, 57, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(60, 'tempora', 'Vel omnis fuga provident veritatis illo. Necessitatibus assumenda consequatur assumenda aspernatur. Architecto autem fuga nisi.', 1, 58, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(61, 'laborum', 'Voluptatem blanditiis nisi ipsam pariatur iusto quidem. Aut exercitationem non in maxime eos vitae sunt vitae. Dignissimos error veniam ea maxime sit cupiditate assumenda. Dolores deserunt dignissimos eligendi eum modi qui cum. Minus architecto distinctio impedit eius.', 1, 32, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(62, 'est', 'Minus dolor dolorem sed quia aperiam incidunt officia. Magni perspiciatis est sit dolore enim. Sit excepturi voluptas enim et id. Dolore sunt repellat sed minus eaque animi quo.', 3, 94, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(63, 'perferendis', 'Esse autem et ut nemo cum quidem neque et. Quaerat minus perferendis dolorum voluptatem quam aperiam omnis. Dignissimos aut vel rerum labore et labore. Neque excepturi assumenda fugiat inventore ea rem. Necessitatibus molestiae est natus aut aut ullam ut.', 0, 100, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(64, 'saepe', 'Et officiis voluptatum ut et praesentium dolorem. Voluptate blanditiis nulla natus. Quo ad reiciendis quo. Pariatur facilis soluta qui vero facere et.', 5, 30, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(65, 'fugiat', 'Deleniti rem cumque natus consequatur id amet error. Omnis similique quia ea ut corporis. Quod quibusdam placeat rerum quaerat repellendus quos rerum voluptas. Provident excepturi facere et veritatis. Similique ipsam autem recusandae atque molestiae eaque.', 2, 53, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(66, 'rerum', 'Sunt consequatur numquam maiores aspernatur at. Sequi minus et et ex et sit. Ipsum quisquam aut cumque neque. Sit numquam est molestiae excepturi.', 5, 70, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(67, 'sunt', 'Error id et amet sed tempore debitis ut perferendis. Omnis est sunt vel tempore molestiae sunt. Dolorum recusandae nihil sed eos saepe dicta id quas.', 4, 43, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(68, 'sit', 'Aut reprehenderit neque porro. Optio esse voluptas reprehenderit et alias. Adipisci quia id maiores fugit et assumenda.', 1, 79, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(69, 'et', 'Dolor optio earum aperiam totam et qui. Sunt natus neque et cumque nostrum sapiente. Voluptas quo sunt et ab dicta quia pariatur. Tempora nulla qui exercitationem.', 2, 65, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(70, 'assumenda', 'Est architecto nisi recusandae totam non. Illum nesciunt deserunt odit doloremque ipsa. Vitae et sit placeat in et.', 4, 55, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(71, 'vel', 'Quo eum omnis est dolorum corrupti. Tempora voluptatem provident rerum commodi ducimus rerum. Libero et aut error illo ipsam et iusto.', 4, 47, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(72, 'modi', 'Quis voluptas aspernatur quo aut. Perferendis deserunt ex qui exercitationem molestiae delectus. Sit reprehenderit illum sit neque.', 2, 36, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(73, 'ut', 'Voluptates in et magnam dolores. Nostrum ipsa minus rem provident. Enim quos nihil nostrum. Facilis voluptatem iure ducimus mollitia id et magnam.', 1, 26, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(74, 'rerum', 'Est neque tempora consequatur expedita molestias nihil. Et illum nihil expedita atque et fuga. Ducimus quasi praesentium exercitationem. Dolores vero illum veritatis asperiores accusamus facere quia.', 5, 55, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(75, 'blanditiis', 'Cupiditate iure voluptatem quo incidunt ea soluta. Iure quia non quos ut consequuntur omnis. Est amet nostrum facilis ut. Illo perspiciatis non deserunt reprehenderit debitis quam.', 3, 7, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(76, 'vel', 'Quos id soluta reprehenderit sit velit vel. Iure velit non qui et ab. Libero rerum aliquid est corrupti laboriosam.', 5, 33, '2018-01-25 07:40:38', '2018-01-25 07:40:38'),
(77, 'sapiente', 'Ut autem porro laudantium et nostrum minima qui sed. Ut odio cupiditate id hic commodi. Delectus veritatis cum ut quasi ipsum alias sed eligendi. Omnis qui numquam itaque odit.', 2, 17, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(78, 'sed', 'Sed illo ea aspernatur voluptatem voluptas doloremque. Repellendus maiores dolores et. Perferendis ullam explicabo accusantium expedita.', 4, 51, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(79, 'iusto', 'Sed ducimus nobis nihil eius eos ex asperiores cupiditate. Et quia debitis ut quia blanditiis occaecati et. Non dolores suscipit qui aliquid sapiente consequatur ea. Aliquid enim excepturi quasi voluptate.', 4, 22, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(80, 'ut', 'Neque omnis in quisquam iure dolorum et dolore repellendus. Est itaque ullam sit ut quaerat doloribus. Est molestiae non necessitatibus temporibus nostrum sint. Recusandae et recusandae aut itaque eos.', 3, 19, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(81, 'facilis', 'Sit quia officia omnis odio. Id amet velit iure tempora. Fuga eos debitis dicta perspiciatis deserunt veniam.', 2, 61, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(82, 'nulla', 'Ipsum eligendi tempore asperiores aut corrupti non officiis. Aliquam voluptate autem cum. Officia aut non deleniti odio.', 0, 14, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(83, 'rerum', 'In sed blanditiis ipsum facere. Iure aperiam nostrum natus nemo magni. Sed architecto consequatur sapiente quas sunt ducimus adipisci. Qui quis repellat soluta illum recusandae soluta id.', 0, 61, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(84, 'eos', 'Veritatis rerum sint qui facilis. Aut eveniet qui numquam laudantium iure et. Dolorem omnis omnis ea nam quis fugiat laudantium.', 1, 63, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(85, 'ex', 'Nesciunt consequatur id expedita excepturi. Aut sit culpa fugit reiciendis. Soluta saepe voluptatem ea in adipisci.', 2, 37, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(86, 'autem', 'Aspernatur aut in qui inventore ad tempore et quisquam. Quisquam et rem fugiat temporibus eligendi. Soluta veniam distinctio voluptatem quae temporibus.', 0, 14, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(87, 'eos', 'Ut officia autem atque iusto voluptatem beatae sint. Ea quas sunt dignissimos. Praesentium ab dicta qui quod architecto numquam.', 0, 15, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(88, 'blanditiis', 'Aut voluptatem accusantium corporis nulla molestiae fuga aperiam alias. Iure ut quia eligendi pariatur nam veritatis. Quos dignissimos harum mollitia iusto.', 0, 79, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(89, 'ipsam', 'Quae dolor quo dolores autem. Fugiat a maiores tenetur dignissimos. Est sit ad deserunt sunt tempora. Exercitationem sunt inventore corporis dolore molestiae et.', 0, 55, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(90, 'a', 'Perspiciatis voluptatibus at dolorem sint quas quis. Fuga accusamus ea delectus aperiam. Reiciendis at nemo molestias quia et dolor. Maiores eos optio deleniti.', 3, 30, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(91, 'consequatur', 'Commodi iusto repellendus maxime eaque. Maxime veritatis eveniet molestias quasi ipsam. Repudiandae ea quo adipisci ex corporis.', 0, 31, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(92, 'omnis', 'Unde voluptatem et vel sunt quae. Beatae odit aut et. Aut quo aut occaecati nisi in sunt sunt.', 3, 64, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(93, 'animi', 'Ducimus iste est ipsam voluptatem enim beatae deleniti. Autem odio non ut veniam beatae adipisci necessitatibus. Quod et aut cumque ea. Nostrum rerum ipsam tempore modi.', 2, 62, '2018-01-25 07:40:39', '2018-01-25 07:40:39'),
(94, 'asperiores', 'Aspernatur voluptatum quam et velit illum placeat. Tenetur qui et cupiditate aperiam voluptates et voluptates. Et et illo incidunt molestiae laboriosam laborum aut. Architecto fugit fuga id quis minus ut quia.', 1, 30, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(95, 'reprehenderit', 'Vel qui qui et aut maiores quae labore. Molestiae iusto numquam placeat molestiae. Dicta animi ipsam dolor a.', 5, 82, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(96, 'qui', 'Quas quam voluptas sed distinctio totam blanditiis ea. Ut consequatur beatae fugit quas aliquid id. Sit ut qui blanditiis dicta.', 4, 84, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(97, 'sint', 'Tempore deleniti ut temporibus adipisci non. Sunt consequuntur voluptate mollitia blanditiis non. Ducimus qui velit cum voluptatem sed architecto pariatur. Illum quo voluptatem autem consectetur earum eum aliquam.', 1, 80, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(98, 'quis', 'Nemo reiciendis officiis velit labore quisquam est dicta. Molestias minima enim sit quia fugit. Cupiditate molestiae aperiam distinctio maiores consequatur. Nisi eligendi inventore nesciunt id quam ut.', 1, 12, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(99, 'deleniti', 'Aliquam nihil cumque ratione incidunt sunt aut. Voluptas quia ut occaecati ut eum. Placeat sunt nemo nobis id.', 5, 83, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(100, 'earum', 'Facilis deserunt similique suscipit aperiam tenetur. Asperiores est harum et sapiente sunt corporis. Est ut mollitia aut. Est in quo dicta minima et.', 2, 14, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(101, 'aliquid', 'Officiis sit in culpa tenetur blanditiis soluta. Nobis doloremque et mollitia aut consequatur perferendis deserunt. Incidunt quia optio iure ducimus consequuntur omnis excepturi non. Aut blanditiis occaecati sit praesentium nam similique.', 1, 33, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(102, 'provident', 'Dolor debitis voluptate numquam repudiandae et. Et magni doloribus reiciendis ipsum consectetur. Sed neque magni nisi quidem a similique perspiciatis. Alias assumenda placeat voluptate ea.', 1, 64, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(103, 'rerum', 'Libero quod nulla ullam accusamus dignissimos ut error. Quibusdam sed veniam et necessitatibus. Quibusdam omnis dicta officia ut. Est voluptatem aperiam et accusantium. Consectetur rerum quia error.', 4, 75, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(104, 'molestiae', 'Et fugiat distinctio praesentium enim qui quo. Molestiae repellat temporibus voluptates labore. Voluptatem harum facere ullam vitae odit maxime est. Ratione soluta laudantium et reprehenderit.', 0, 38, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(105, 'dignissimos', 'Impedit rem ipsa eius quia sed fugiat labore. Quo laborum incidunt excepturi id quam nostrum. Dolores dolores animi dolores dolorem voluptas magnam odit. Et quidem accusantium itaque laboriosam.', 0, 34, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(106, 'in', 'Eaque officia id eos omnis perferendis doloremque. Voluptatum natus quam ullam aliquid incidunt facere quaerat. Iste consequatur velit ipsam voluptatem et sunt nulla. Dicta tempora beatae totam et voluptatem ipsa optio beatae.', 2, 67, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(107, 'voluptatum', 'Optio id earum repellat in occaecati explicabo. Ut sit alias ut architecto libero quo. Corrupti nihil dicta itaque nemo sit ducimus consequuntur. Quia quia recusandae repudiandae sequi quos doloribus. Veniam cum cupiditate vel qui amet nesciunt veniam.', 2, 6, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(108, 'reiciendis', 'Ratione harum maiores sint. In adipisci officia aut facere ut aliquid. Sed error eum et labore illum cumque.', 0, 93, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(109, 'recusandae', 'Optio ratione in dicta officia est. Quod eum iure sunt modi reprehenderit doloremque. Asperiores quaerat dolor voluptas praesentium tempore harum. Ut veniam quam sit labore ut.', 1, 76, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(110, 'quis', 'Et vel amet autem accusamus vitae qui eum. Rerum sed porro dicta fugit est ipsa facere. Consequatur facere et quas quas sint. Quod quia rem nulla.', 5, 89, '2018-01-25 07:40:40', '2018-01-25 07:40:40'),
(111, 'sit', 'Ratione corrupti animi ipsa sunt quibusdam. Esse est atque voluptas voluptatem. Beatae qui nihil repellat.', 0, 21, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(112, 'at', 'Dolore consequatur ratione voluptas corrupti non minus sed. Et voluptatem nihil libero aut maxime. Voluptates a rerum officiis nihil nulla ipsum laudantium quis.', 2, 47, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(113, 'hic', 'Molestiae molestiae facere qui repudiandae. Voluptatem aut voluptatem id maiores voluptatem id occaecati. Sapiente et laborum magni et sint.', 4, 77, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(114, 'magni', 'Voluptas asperiores quo dolorum libero ut. Consequatur voluptas inventore quia optio. Sit sed molestiae doloribus architecto atque accusamus nesciunt.', 2, 49, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(115, 'commodi', 'Quaerat reiciendis reiciendis et et atque. Ut provident vitae facere soluta et dolorem. Facilis voluptas dolor totam sunt. Voluptate ipsam et illo consequatur libero.', 4, 93, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(116, 'modi', 'Ipsum facere repellat ut mollitia officiis quia sit. Eveniet consequatur unde eius tempore quod. Blanditiis et minima dolores facilis explicabo. Dolores minima repudiandae sit aliquid magni error reiciendis. Fugiat sed iure praesentium quisquam non nesciunt.', 5, 88, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(117, 'voluptate', 'Dolorum aut assumenda sit ullam qui. Tempora eum suscipit omnis ut quo et.', 5, 96, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(118, 'tempora', 'Numquam inventore animi beatae sunt. Neque sed ut laboriosam ad voluptas autem qui. Dolorem omnis qui rerum voluptas debitis nam est.', 3, 36, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(119, 'et', 'Dolores beatae quis nostrum et dolor adipisci assumenda. Praesentium sunt sint animi. Aliquam porro laborum nostrum dolores.', 0, 20, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(120, 'ut', 'Molestiae et aliquam quos facere non. Ut sed quas quis error.', 0, 100, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(121, 'cumque', 'Ut laboriosam ipsa eius et ipsam dignissimos beatae. Voluptatibus suscipit magni magni saepe illum. Amet aliquid fugit laborum at. Fugiat ducimus est et ullam sint dignissimos quasi aut.', 1, 33, '2018-01-25 07:40:41', '2018-01-25 07:40:41'),
(122, 'placeat', 'Aspernatur veniam aliquam sint autem. Reprehenderit cupiditate ullam provident ut. Dolorem laboriosam aliquam architecto molestiae ipsa dolorem. Porro maxime qui aperiam illo possimus in.', 5, 12, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(123, 'qui', 'Perferendis animi autem ab unde dolores. Deserunt delectus aut dolor reprehenderit et quidem reprehenderit voluptas. Aliquid debitis adipisci ad suscipit quis nemo culpa.', 5, 79, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(124, 'veniam', 'Quis veniam nisi nobis autem sequi. Harum ea sit sunt dolorem. Quod praesentium consequuntur sit facilis dolorum.', 0, 75, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(125, 'ut', 'Soluta quis dolores at nam quidem sit aut. In molestias totam quia culpa aliquam optio. Minus veritatis aliquam voluptas vel.', 5, 25, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(126, 'sint', 'Non ipsa odio sed quo. Quod mollitia sint nostrum exercitationem animi magni. Nihil et recusandae id et. Ut aut in quia soluta. Minus qui impedit sint sunt.', 1, 11, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(127, 'nostrum', 'In architecto odio suscipit et facilis. Magnam asperiores vel consequatur labore nam omnis omnis.', 1, 26, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(128, 'qui', 'Iusto animi culpa id est incidunt qui qui. Vel earum quibusdam dolor molestiae nisi. Aliquid ratione autem velit inventore tempore modi. Aliquid eos repellendus magni architecto quia incidunt est. Autem vel hic magnam et voluptates.', 1, 38, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(129, 'nobis', 'Ratione et voluptates adipisci totam distinctio inventore. Asperiores dicta aperiam eos officia quia quis iusto. Praesentium veniam voluptate minima voluptatem officia quo.', 2, 72, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(130, 'id', 'Rerum in et quaerat qui ad ex. Nulla animi animi beatae debitis ut praesentium. Animi quos voluptatem sequi explicabo optio neque est.', 4, 15, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(131, 'ut', 'Quaerat qui qui similique aut similique. Dignissimos nobis sed repellat aut in. Libero suscipit reiciendis voluptatum quam numquam aut aut est. Optio vitae architecto explicabo et dolor voluptas.', 0, 23, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(132, 'exercitationem', 'Qui illo pariatur magnam blanditiis dolor. Delectus ut praesentium reprehenderit deserunt ea quos facilis cumque. Quia eligendi harum voluptatem mollitia.', 0, 82, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(133, 'quo', 'Vel et nihil eveniet ut provident. Excepturi asperiores asperiores beatae nostrum. Ut sunt quaerat odit perferendis nisi tenetur dignissimos.', 5, 74, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(134, 'non', 'Magni vitae animi ut ad cum expedita hic. Magni pariatur dolor corrupti corrupti dolorem voluptatem.', 1, 71, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(135, 'ratione', 'Rem maiores quia architecto nam minus. Est nisi possimus aspernatur perspiciatis velit. Sit at et officiis quia at.', 5, 77, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(136, 'temporibus', 'Non possimus corporis maxime corrupti totam dolorem. Assumenda quisquam accusamus quod dolor. Pariatur ea temporibus ut blanditiis commodi. Voluptatem rerum ex temporibus ut.', 0, 31, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(137, 'omnis', 'Aspernatur nemo quia aperiam possimus. Saepe error quidem qui tempore. Quas quos ipsa soluta aut. Nemo quis voluptates ut minus ut assumenda ut.', 1, 51, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(138, 'alias', 'Quaerat quod fugiat et ipsum quae. Quae quo est consectetur tempora. Illo dolorem architecto vitae et molestiae.', 4, 71, '2018-01-25 07:40:42', '2018-01-25 07:40:42'),
(139, 'ea', 'Assumenda sit voluptatem molestias recusandae impedit. Ipsa rerum qui aut asperiores sed. Qui necessitatibus et ipsam est necessitatibus velit maxime.', 3, 27, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(140, 'iusto', 'Quos recusandae aut harum reiciendis reiciendis aut. Quia nihil quis qui qui autem quia aspernatur sed. Facere quia neque quia doloremque odit quae error quibusdam.', 3, 22, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(141, 'ut', 'Ducimus rerum minus nemo est dolorum cum. Nihil rem alias voluptatem eum. Accusamus explicabo corrupti quis temporibus est iure iure. Et molestiae veniam nihil ullam voluptatem aperiam.', 3, 45, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(142, 'reiciendis', 'Ut iste nobis aut vero beatae ea quas. Est excepturi necessitatibus vero ratione iusto veniam aliquam quis. Est eum aut nulla est et ipsum delectus.', 5, 70, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(143, 'id', 'Eos delectus nostrum tempore exercitationem vero. Enim ipsam non dolores modi. Earum aliquid itaque aut voluptatem qui nostrum voluptatem reprehenderit. Voluptatem aspernatur dolorem reprehenderit dignissimos inventore sit velit.', 1, 49, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(144, 'aut', 'Sit eos molestias odio. Praesentium modi rerum sed labore. Vero recusandae praesentium sed et libero. Delectus dolorem et est doloribus non earum consequatur.', 5, 2, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(145, 'quis', 'Et dolor veritatis hic fugit. Veniam quia nemo est. Laboriosam optio qui sunt est. Provident dolorem minus et laudantium rerum. Vel et quisquam qui enim fugiat repudiandae.', 0, 64, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(146, 'beatae', 'Quos atque et commodi quam dolores sit. Et saepe perferendis dolorem. Qui ullam veritatis omnis labore ipsam beatae sunt assumenda. Totam laboriosam praesentium quo eveniet qui sint.', 4, 78, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(147, 'similique', 'Voluptates neque deserunt ut voluptate atque pariatur consectetur. Quo quo in omnis aliquid ea porro. Molestiae beatae occaecati accusamus est accusamus sed. Reprehenderit occaecati odio quo consequatur vel sint. Iusto aut quas laborum aliquam in reprehenderit.', 3, 17, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(148, 'sint', 'Veritatis laborum inventore consequuntur labore labore maxime neque. Eos itaque autem non aut facilis eos officiis eos. Cumque culpa similique ut dolores veritatis occaecati. Animi quo eos porro. Soluta exercitationem ut cumque ipsam.', 4, 90, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(149, 'eligendi', 'Itaque ullam excepturi quia quia ex ut ut. Repellendus quam rerum eum nemo nobis ut. Maxime voluptas eum sint vel error nemo neque.', 5, 11, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(150, 'sit', 'Corrupti incidunt quidem impedit iste aut accusantium quisquam neque. Magni quasi sint aut quia et. Inventore sint sed fugiat et dolores.', 5, 46, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(151, 'eos', 'Unde voluptatem nam ratione molestias. In dolorem iure fuga dolorem et. Perferendis soluta rerum sapiente ducimus. Ratione et dolores rerum corporis laudantium incidunt cupiditate.', 0, 80, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(152, 'voluptates', 'Itaque aut dolor sed. Sit consequuntur inventore animi fugit repellat nulla. Ut voluptas voluptas sed aut est qui. Consectetur dolor in quia inventore voluptate.', 2, 88, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(153, 'sint', 'Ut cumque sint quo porro. Quia sunt id sed et repellendus ea dicta. Amet officiis unde sed enim recusandae repudiandae voluptatem. Quia ipsum fuga numquam eos.', 1, 34, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(154, 'explicabo', 'Atque aut iure sapiente ex non nesciunt esse. Voluptatem illum ipsum quia atque dolorem expedita nulla voluptas. Velit officiis minima neque totam odio iste dignissimos at. Tenetur doloribus sit ut ipsam ut. Quia et sequi ea sed ut.', 4, 45, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(155, 'saepe', 'Debitis vel impedit pariatur et itaque. Cupiditate assumenda et velit voluptas corrupti iusto. Sed neque in earum sed provident quia qui.', 0, 88, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(156, 'qui', 'Consequatur repudiandae quidem amet odio. Amet veritatis ea rerum quia qui. Facilis vitae iure dolores perspiciatis omnis hic soluta.', 5, 81, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(157, 'earum', 'Qui esse sequi velit sunt vitae. Quaerat quis recusandae odit est inventore ut et ratione. Et hic beatae quos rerum consequatur adipisci.', 3, 59, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(158, 'a', 'Beatae itaque maxime quis. Distinctio earum dolore veritatis voluptatibus ea qui distinctio. Cum vel ut aspernatur laboriosam dolores laudantium. Pariatur dolor quis odio maiores error possimus. Enim et voluptas in veniam enim repellat ducimus.', 1, 17, '2018-01-25 07:40:43', '2018-01-25 07:40:43'),
(159, 'et', 'Sunt impedit accusantium sequi cupiditate voluptatem et et. Sapiente optio soluta consequatur aliquam sit id. Hic quibusdam officiis voluptatum fugit quia sed corrupti delectus. Amet aut enim sed voluptas.', 5, 92, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(160, 'eligendi', 'Vel sit qui repellat alias. Itaque odit esse nemo voluptas dolore odio quibusdam. Soluta quo autem dolorum omnis. Quo quo eius illum sunt inventore.', 2, 92, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(161, 'impedit', 'Voluptatem quaerat eos dolor aliquam saepe molestiae facilis. Ex possimus vitae aut fuga. Et tempora aut rerum qui id enim.', 4, 26, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(162, 'officiis', 'Dignissimos ea velit perferendis tempora impedit. Dolor ex cum consequatur.', 0, 31, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(163, 'unde', 'Qui molestias ipsa est tempore nam quam voluptatem. Quo ut eum repudiandae est hic voluptatem alias atque. Ab ad voluptatem consequuntur laborum non aspernatur eos. Id deserunt nihil eos expedita laudantium consectetur aut corporis.', 0, 12, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(164, 'odit', 'Suscipit laboriosam harum omnis et. Ut nihil vero laudantium rerum non.', 2, 12, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(165, 'explicabo', 'Eius consectetur voluptatem inventore odio sed consectetur omnis. Sit impedit non et laudantium ea natus. Quas neque illo sed maxime voluptatem iure qui. Alias quis aut dolore explicabo quidem. Dolorum ullam nisi numquam cum autem.', 0, 79, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(166, 'debitis', 'Omnis fugit ea sit nihil quia sed totam dolorum. Voluptas aperiam eos similique consectetur neque rem cumque tenetur. Dolorum voluptatem distinctio aut distinctio earum accusantium et autem. Adipisci nobis quia placeat rem tempora.', 2, 32, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(167, 'ducimus', 'Deleniti exercitationem nihil vel a. Consectetur beatae atque eos et deleniti totam. Nobis suscipit eos adipisci temporibus consequatur autem nulla enim. Odit nam et earum corrupti eaque tenetur.', 1, 2, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(168, 'consequuntur', 'Aperiam molestias suscipit pariatur optio suscipit dolore commodi. Magni est voluptatem assumenda dolorum assumenda id aut. Ea aut aspernatur minima dolorem qui. Et pariatur est est.', 3, 67, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(169, 'ipsam', 'Sed est numquam quia soluta eum facilis. Aliquam et et tempora cum ut minima nostrum incidunt. Et aut quas expedita cum. Facere quam quasi ut atque consequatur.', 5, 15, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(170, 'aut', 'Optio nemo et porro quas. Praesentium quis corporis repudiandae earum rerum assumenda accusantium. Earum non sint minus culpa quae.', 4, 1, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(171, 'qui', 'Quam maxime impedit ut explicabo eos dolorum. Esse hic suscipit architecto totam doloribus ipsam quidem. Incidunt sequi saepe similique voluptates sed dolore reiciendis. Numquam eos architecto ea.', 5, 75, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(172, 'et', 'Dolorem provident consequatur corrupti incidunt debitis. Nisi iure qui perspiciatis quia. Est accusantium non quos delectus quo et. Voluptas ut voluptatum qui voluptatem esse quos dolores.', 3, 11, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(173, 'laborum', 'Tenetur quidem non perferendis rerum dolorum minima perspiciatis molestias. Ut ab autem vel ad. Iure magnam qui placeat maiores facere aut nulla.', 0, 22, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(174, 'expedita', 'Magni dolor nihil molestiae quia. Sed tempore dicta voluptatem tenetur et sed officia aut. Excepturi a libero veniam et animi aut quia molestiae. Ut impedit id voluptatibus ut.', 5, 17, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(175, 'aliquam', 'Dolorem fugiat qui sunt est consequuntur ut iste. Sequi numquam aut vitae pariatur ab. Qui vero ad ratione odit. Dicta non optio nulla.', 2, 48, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(176, 'aut', 'Aut placeat est ipsa natus quisquam natus. Consectetur dolor natus ut veritatis illo deserunt. Sapiente ut qui architecto ullam eum quis. Nam eos sint cupiditate quia.', 2, 89, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(177, 'maxime', 'Illo fuga nemo sunt fugit qui quod qui. Voluptas enim harum possimus saepe et. Saepe a et autem cumque et.', 0, 23, '2018-01-25 07:40:44', '2018-01-25 07:40:44'),
(178, 'iure', 'Optio suscipit pariatur temporibus a iusto et molestiae. Maiores est et doloremque quia. Nostrum fugiat quia ut excepturi voluptates animi. Voluptatem placeat repudiandae ut dolores facilis.', 4, 86, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(179, 'iusto', 'Assumenda harum voluptatum et et et totam. Quae aut temporibus necessitatibus ipsam sunt reiciendis sint. Voluptas eos placeat adipisci excepturi. Inventore ut aut perferendis dolores.', 2, 80, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(180, 'repudiandae', 'Eaque minima ipsa qui voluptatem enim sapiente dolor. Vitae distinctio ad culpa vel. Et rerum quasi quo blanditiis modi. Amet qui non rerum enim dolore. Vel quia et accusantium occaecati.', 5, 37, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(181, 'nobis', 'Et enim odio omnis molestiae commodi qui. Libero qui et vel unde quia quia. Nam voluptate excepturi tenetur explicabo rerum in. Distinctio expedita est dolorem voluptatem.', 2, 91, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(182, 'voluptatibus', 'Atque magnam ex enim. Ipsa eveniet dolorum libero enim non. Odio quia ipsam nulla facilis laudantium eveniet.', 3, 50, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(183, 'distinctio', 'Nostrum similique aut omnis odio quia quidem ea vero. Porro voluptatem aut ab neque aut error. Sint recusandae facilis impedit alias corporis.', 2, 69, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(184, 'blanditiis', 'Iste id reiciendis labore. Nobis et sunt doloremque eos rerum. Autem neque aut impedit et cumque.', 1, 4, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(185, 'aut', 'Explicabo earum et quae impedit. Repudiandae placeat neque ea earum. Sint expedita enim ea sed maiores repudiandae.', 1, 82, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(186, 'deserunt', 'Adipisci vitae aperiam blanditiis ut a. Inventore quia omnis nobis sint nam. Odio odit rerum est atque quaerat sunt.', 0, 95, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(187, 'consectetur', 'Non neque quis vitae ipsam minima est. Quia et eos facilis libero. Saepe perferendis sapiente beatae unde.', 3, 83, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(188, 'maxime', 'Quam temporibus necessitatibus minus maxime ullam recusandae. Amet aut corporis eligendi.', 5, 78, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(189, 'odit', 'Quas inventore molestias modi nobis. Alias iure quos et perferendis rerum est aut. Exercitationem iusto aliquid officiis harum.', 4, 6, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(190, 'deleniti', 'Omnis enim error laborum est consequatur esse. Et non inventore accusamus voluptas sint cumque porro voluptatem. Sed totam consequuntur vel.', 2, 9, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(191, 'voluptatem', 'Sit optio pariatur explicabo animi est est. Distinctio saepe laudantium praesentium error et dicta. Et rem vitae eos et sed excepturi.', 2, 12, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(192, 'repellendus', 'Dignissimos in illum unde impedit. Ab non voluptas nesciunt vel est cum eum. Velit quo quidem sed voluptas omnis iste autem.', 4, 34, '2018-01-25 07:40:45', '2018-01-25 07:40:45'),
(193, 'consectetur', 'Perspiciatis doloribus error sed expedita molestias rerum velit. Laboriosam nobis quos laborum et. Ipsam dolores doloremque explicabo.', 5, 26, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(194, 'nemo', 'Beatae ea vitae impedit in optio earum. Consectetur porro est a beatae qui aspernatur. Repellendus dolor ducimus alias occaecati velit in asperiores quae. Aperiam nam ducimus vel mollitia consequatur. Dolore totam voluptas at maiores enim rerum voluptatem facilis.', 1, 52, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(195, 'qui', 'Sapiente sit libero ut est natus perferendis optio. Rerum incidunt quos aut autem vitae possimus. Quae tempore saepe in quo in dicta. Maxime doloremque sit aut maxime perferendis.', 1, 42, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(196, 'eius', 'Fuga aliquid quo necessitatibus mollitia unde fugit non. Qui perferendis voluptatem expedita vel fuga molestias distinctio vel. Laboriosam molestiae tempore tempore maxime est aliquid nesciunt.', 2, 55, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(197, 'voluptas', 'Sed error officiis vel sed dolorum ut omnis ducimus. Dolor eligendi sunt laboriosam illum. Quia earum id ad occaecati laborum quas.', 4, 42, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(198, 'nam', 'Deleniti et ipsum ut qui. Quibusdam ullam quae ut nam omnis et. Veritatis voluptatem corrupti culpa corrupti cumque. Ipsam expedita quis molestias quod voluptatem et.', 4, 97, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(199, 'quam', 'Dolorum a delectus minus quod. Iusto unde assumenda ipsam. Occaecati ea quibusdam fugiat aut.', 4, 95, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(200, 'quam', 'At id eaque qui delectus minus. Aut excepturi similique quis minima autem. Sit est et vitae aut numquam.', 4, 65, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(201, 'minima', 'Veritatis repellat et distinctio quaerat aut veniam sequi. Aliquid impedit nesciunt sint commodi aut saepe rerum. Incidunt iste dolor accusantium est.', 1, 28, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(202, 'non', 'Mollitia aspernatur quisquam est. Inventore rem aut quas laborum. Maiores amet velit hic ratione.', 2, 1, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(203, 'voluptates', 'Ut laboriosam sequi dolores voluptas. Fuga aliquid asperiores commodi nihil libero voluptatem. Qui consequatur voluptatem facere odio dolorem. Molestias qui illo vel voluptatem.', 4, 47, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(204, 'est', 'Quia nulla numquam corrupti hic molestiae dicta minima. Sit soluta aperiam sint nam aut. Et enim laborum alias.', 5, 81, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(205, 'molestiae', 'Saepe eos aut odio deserunt eos sed perferendis. Reiciendis ipsam voluptas enim et ipsam. Et quo reprehenderit dolorum fugit impedit repellat ut corrupti.', 3, 4, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(206, 'possimus', 'Vel impedit ipsum fugiat voluptatem. Nesciunt magni in consequatur omnis beatae dicta. Iure laudantium quam voluptatem vel. Eveniet dolorum et cum sit quaerat alias id.', 5, 64, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(207, 'omnis', 'Itaque corporis et et voluptates deserunt autem veniam. Non suscipit qui nesciunt quia voluptatem cumque. Id unde dignissimos id molestiae laboriosam. Aut eligendi necessitatibus ut autem adipisci.', 2, 85, '2018-01-25 07:40:46', '2018-01-25 07:40:46'),
(208, 'omnis', 'Enim placeat cupiditate assumenda eaque nostrum. Officia aliquam animi praesentium occaecati officiis non. Voluptates molestiae nihil sed quaerat velit. Cum asperiores veritatis laudantium consectetur cupiditate soluta.', 4, 18, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(209, 'assumenda', 'Eaque illo magni ea. Quas ad mollitia optio voluptatem. Dolorum soluta deleniti itaque est libero.', 4, 2, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(210, 'consectetur', 'Fugiat distinctio expedita consectetur soluta dolor fugit ea. Sapiente quasi ex temporibus molestiae.', 1, 63, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(211, 'ipsam', 'Sed dignissimos ut fuga natus temporibus id. Et reiciendis at possimus et. Cum molestias quia consequatur.', 3, 37, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(212, 'repudiandae', 'Omnis aliquid est reiciendis veniam eius. Dignissimos tempore odio ea dicta saepe. Repellat dolorem rerum eaque voluptatem dicta facere unde.', 1, 14, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(213, 'non', 'Repellendus aliquid sit odit sit quia. Impedit sunt fugiat et quod sed impedit est. Nisi voluptatibus repudiandae molestias quia commodi et eos alias.', 2, 24, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(214, 'et', 'Aut voluptatem ut necessitatibus omnis suscipit. Ab quam doloribus at.', 3, 11, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(215, 'corrupti', 'Quasi dolorum ipsam blanditiis cumque. Recusandae fugit et fugiat voluptates et voluptatem. Vitae sequi aut natus ad. Ut quos omnis ullam aliquam deleniti et.', 5, 57, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(216, 'et', 'Dicta eum molestiae nihil molestiae. Aut suscipit consequatur numquam. Sit consequatur iusto corrupti asperiores veniam. Occaecati quia aut dolores optio voluptatibus quia commodi sit.', 3, 46, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(217, 'voluptatem', 'Iure harum ullam vel doloremque est. Sequi voluptatem soluta voluptatem nobis odit. Aut sed officia officia voluptas adipisci.', 4, 57, '2018-01-25 07:40:47', '2018-01-25 07:40:47');
INSERT INTO `reviews` (`id`, `customer`, `review`, `star`, `product_id`, `created_at`, `updated_at`) VALUES
(218, 'commodi', 'Aut illum similique est voluptas nam quibusdam. Velit sit culpa cumque nesciunt animi incidunt. Alias temporibus sit nobis. Qui fugit consequatur quis ducimus officiis dolore hic.', 1, 1, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(219, 'quidem', 'Quis sit placeat autem est dolor. Enim et exercitationem quis et. Delectus repellat nisi culpa nostrum. Eos ullam non enim et quasi.', 4, 82, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(220, 'rerum', 'Similique illum est ut ut iure odit libero. Provident ipsum rem nisi explicabo qui. Explicabo in iste iste corrupti ipsam aut.', 5, 20, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(221, 'sed', 'Consequatur minus nisi autem sit recusandae labore autem. Non quia aperiam ipsum eligendi ut dolor. Sed aspernatur velit et eos.', 0, 78, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(222, 'possimus', 'Quos consequuntur nobis soluta eligendi nam rerum. Reiciendis laboriosam quas dolor sequi. Nemo fugiat minus enim dolor qui. Repudiandae illum laudantium dolor voluptatem.', 2, 38, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(223, 'sed', 'Pariatur expedita sed ipsam non temporibus fugiat delectus. Qui expedita sint harum rerum iure vel qui repellat. Quaerat in vero repudiandae perspiciatis. Voluptas voluptas odit quia et aut aut.', 0, 54, '2018-01-25 07:40:47', '2018-01-25 07:40:47'),
(224, 'reiciendis', 'Et aspernatur at est est omnis nemo cumque reiciendis. Id et et amet voluptate. Nesciunt unde vel reiciendis expedita odio perferendis amet.', 2, 4, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(225, 'officia', 'Ipsam id totam consequuntur hic quia velit. Cupiditate corporis natus quisquam quasi.', 3, 57, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(226, 'blanditiis', 'Provident eum sed laudantium minus. Incidunt ad voluptatem et provident voluptatum sit et dolor. Voluptatibus labore eos enim ut fugiat numquam sint. Explicabo voluptatum quisquam ut eum ipsam vel non.', 0, 41, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(227, 'est', 'Voluptates quo assumenda dolore voluptatem. Nisi aut distinctio nulla laudantium et similique quidem maxime. Ut laboriosam nobis aut ut numquam ea nesciunt. Aut minus ut et dicta qui numquam quia.', 4, 39, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(228, 'aperiam', 'Provident sed et cumque eum doloribus. Sed doloremque placeat voluptates earum consequatur.', 2, 18, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(229, 'consequatur', 'Rerum minus et atque ut. Nulla quod quo dolor illo delectus explicabo. Itaque sapiente est quam in architecto et.', 2, 31, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(230, 'animi', 'Qui fugiat et qui nulla nihil quia unde. Dignissimos expedita est quia molestiae eum. Sed totam facere amet officiis provident iusto enim ut. Ad dignissimos nesciunt nihil est eius.', 0, 43, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(231, 'autem', 'Soluta dicta est optio et. Ad autem harum nesciunt omnis. Voluptatum architecto voluptas dignissimos magnam ab neque qui. Aut repudiandae itaque tenetur quaerat.', 3, 4, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(232, 'ratione', 'Enim aperiam voluptas autem sed. Quasi sit nemo repudiandae laudantium. Id est ad accusantium accusantium. Molestiae quod et ut sed.', 3, 2, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(233, 'voluptatem', 'Eum quia fugiat iste maxime rerum. Distinctio tempora iure non. Dicta ut voluptatem asperiores et incidunt. Quasi voluptate itaque voluptas ea animi quasi.', 5, 56, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(234, 'voluptatem', 'Reprehenderit incidunt veritatis quaerat eligendi corrupti veritatis modi rerum. Aliquam velit voluptatem officia saepe modi quisquam.', 0, 26, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(235, 'est', 'Est ut natus reiciendis voluptatum maxime nemo quas. Et id quam quia sunt harum numquam repellendus. Quia recusandae asperiores vitae minima impedit occaecati quis. Nihil eum qui ut voluptatum fugiat ut.', 1, 91, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(236, 'necessitatibus', 'Mollitia ea consequatur vel dignissimos. Dicta doloribus corrupti velit nulla quia sunt aperiam. Neque et veniam reiciendis et est enim sunt. Qui quod ut ut et.', 1, 58, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(237, 'qui', 'Numquam expedita soluta qui dolores culpa sapiente. Qui eligendi alias ab rerum assumenda illo iusto. Dolor ea quis ut molestiae eos odio dolor.', 5, 50, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(238, 'perferendis', 'In in maxime aliquid culpa voluptatum. Expedita doloribus magnam voluptatem voluptatem nihil autem. Ut aut nemo omnis at tempora laborum beatae.', 2, 43, '2018-01-25 07:40:48', '2018-01-25 07:40:48'),
(239, 'expedita', 'Quasi molestiae ut pariatur in officiis. Totam quas totam ab voluptatum. Odit illo aut asperiores eum pariatur. Itaque laboriosam atque sit velit dolor dolor.', 0, 51, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(240, 'nulla', 'Temporibus et dolorum in. Deserunt necessitatibus dolorem maxime nam occaecati ut.', 0, 5, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(241, 'nostrum', 'Iusto eligendi odit quis. Nisi eos eos odio possimus qui minima qui optio. Distinctio quia qui velit unde. Eos dolores libero est minus qui impedit.', 5, 8, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(242, 'magni', 'Nostrum ab adipisci aperiam officia. Earum iusto labore blanditiis non officiis. Necessitatibus voluptatem et tenetur dolor.', 1, 50, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(243, 'fugiat', 'Dolorum rem nostrum consequatur deleniti possimus aut. Dolorum quaerat quibusdam in inventore unde. Praesentium qui enim eaque ipsa quia labore omnis quam. Assumenda voluptatem laboriosam molestias qui facere vel accusantium.', 2, 91, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(244, 'eligendi', 'Quam dolorem ratione velit et. Sed aut alias nam incidunt. Praesentium quia ex laudantium iste voluptatum esse minima.', 0, 71, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(245, 'nam', 'Suscipit quia accusamus consequuntur nostrum ut rem. Voluptas et quidem id perspiciatis exercitationem odit a. Commodi at dolorum quibusdam alias officia.', 4, 46, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(246, 'doloremque', 'Quo consectetur natus sed aut autem. Dolor assumenda tempora et a dicta.', 2, 30, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(247, 'hic', 'Beatae aliquam facere cumque recusandae nisi nulla nesciunt. Beatae quia dolor delectus molestias mollitia. Error aut et ex dignissimos est.', 5, 17, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(248, 'nostrum', 'Incidunt deserunt officiis doloribus laudantium. Soluta exercitationem hic voluptatem consectetur incidunt. Quaerat quibusdam dolorem voluptatem rerum.', 3, 22, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(249, 'perspiciatis', 'Sit fugiat ducimus sequi corporis quo ipsa. Quasi facilis quidem et reprehenderit ut. Sit autem ipsam harum nostrum. A dolorem est rerum autem.', 3, 9, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(250, 'similique', 'Minima tempore blanditiis mollitia. Sed voluptatem voluptatem aspernatur rerum et. Placeat blanditiis voluptatem laudantium aut quis.', 5, 3, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(251, 'nobis', 'Quia excepturi aut qui rerum. Consequuntur incidunt culpa quis. Voluptatibus voluptatem deserunt id quibusdam qui ratione sit. Temporibus qui recusandae aut dolorem ea vero asperiores.', 5, 93, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(252, 'qui', 'Aut nemo omnis nemo nam aut dolorem. Enim natus adipisci consectetur et ut ratione veritatis magni. Unde aut illo iste enim. Error ducimus et dolorem necessitatibus exercitationem odio.', 0, 8, '2018-01-25 07:40:49', '2018-01-25 07:40:49'),
(253, 'autem', 'Ad a vel ut tempore ut laborum. Voluptatem sit deleniti ratione accusamus fuga. Quas quo in soluta totam sint. Molestiae voluptatum omnis tenetur ullam mollitia vero nostrum. Sit eligendi quo est ut qui alias.', 4, 62, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(254, 'et', 'Voluptatum molestiae autem dolorem voluptatum saepe dignissimos. Et provident et aperiam quo necessitatibus in cumque. Est impedit aut accusamus dolorem ducimus. Consectetur itaque in inventore aut delectus natus eum ea.', 1, 59, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(255, 'omnis', 'Nesciunt eveniet cupiditate harum et reprehenderit dignissimos. Aut nihil sunt ab velit enim aut soluta. Porro laudantium sit dolores.', 3, 14, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(256, 'eos', 'Unde dolores id eligendi omnis. Omnis sunt dolores ratione aut. Iure aut facere eos consequuntur accusantium numquam alias. Dolorum omnis molestiae velit vel ut occaecati.', 3, 10, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(257, 'ullam', 'Fuga praesentium aut natus dolore quis aperiam. Cumque reprehenderit dolor aut velit molestias. Voluptatem reiciendis dolore voluptas sunt. Debitis doloremque nam ipsam exercitationem.', 2, 19, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(258, 'nemo', 'Et porro autem recusandae molestiae voluptatem. Sed repellendus exercitationem cupiditate aliquid. Esse voluptatem voluptatem laboriosam saepe eos possimus in maiores. Quo neque nihil consequatur et sit.', 3, 32, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(259, 'omnis', 'Laboriosam sed alias nulla excepturi. Reprehenderit consequuntur ratione blanditiis perspiciatis odio est non id.', 2, 33, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(260, 'in', 'Occaecati ut sunt at voluptatem ut ea vel excepturi. Molestias et sunt consequatur error qui atque laborum. Voluptatem a labore laudantium aspernatur commodi.', 0, 34, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(261, 'molestias', 'Odio quia enim et dolores soluta autem quis nemo. Sunt consequuntur dolores nesciunt inventore soluta tempora. Ut maxime temporibus tempore distinctio commodi eos. Id aut necessitatibus mollitia ea voluptas rerum voluptas. Quia soluta voluptatibus est.', 4, 4, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(262, 'laboriosam', 'Eius laboriosam velit culpa quisquam nesciunt aut nostrum quisquam. Nihil deleniti minima voluptatum quis ducimus. Numquam dicta et omnis eius quas. Cum quae veniam est voluptatum et pariatur et.', 2, 4, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(263, 'et', 'Dolorem a minima impedit repudiandae molestiae. Sunt voluptatibus qui deleniti beatae voluptatem deleniti ad. Qui distinctio voluptatem voluptatibus quod sit itaque et provident. Pariatur fugit iusto ut blanditiis minus.', 3, 46, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(264, 'repellat', 'Sapiente nobis ut quibusdam id nulla reprehenderit. Rerum suscipit molestiae deleniti architecto eveniet sed. Eos aut est fugit ut. Libero excepturi nulla ut adipisci ea quidem dolorem.', 0, 80, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(265, 'a', 'Odio ea asperiores aliquam numquam qui. Praesentium veritatis consequatur numquam facere tenetur deserunt. A vitae consectetur omnis eos est. Libero eos assumenda deleniti deserunt adipisci tempora officiis et. Doloremque eos aspernatur ea eaque.', 3, 54, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(266, 'blanditiis', 'Nam qui dolore et quo temporibus est provident. Et mollitia voluptatem ex vel doloremque aut. Minus dolores dolor fugiat enim voluptatem.', 4, 30, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(267, 'quis', 'Et voluptas amet doloribus. Aperiam dolores nisi excepturi quis. Molestiae dicta corrupti est at laudantium nobis. Quam aut omnis deserunt.', 1, 54, '2018-01-25 07:40:50', '2018-01-25 07:40:50'),
(268, 'rem', 'In dolor ut dolore qui. Accusamus blanditiis a deleniti recusandae. Voluptatibus accusamus aliquam at.', 0, 67, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(269, 'aliquid', 'Odit possimus perferendis rerum ratione quaerat. Qui sed asperiores molestiae aut. Est excepturi voluptate voluptatem voluptate sit expedita.', 5, 37, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(270, 'eligendi', 'Non voluptas unde debitis ut. Aut velit quis repudiandae inventore id id. Ut tempore nobis quibusdam qui maiores dolor.', 0, 93, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(271, 'sunt', 'Facilis quas iure eum minus laboriosam corporis quas. Occaecati ut deleniti odio qui quibusdam. Aut qui voluptatibus perferendis excepturi et occaecati.', 0, 69, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(272, 'quo', 'Quas nulla voluptas ut laborum eos beatae. Voluptatem est animi similique aliquid illum qui. Sint deleniti est et nostrum hic. Fuga optio ab eveniet voluptatem molestias explicabo.', 1, 61, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(273, 'nihil', 'Ad ut nihil quam dolor expedita aliquid. Suscipit laudantium eligendi numquam ut aliquam voluptatum velit. Voluptatibus molestias molestias cum temporibus. Repellat amet minus autem perferendis itaque deserunt repellat.', 1, 37, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(274, 'praesentium', 'Quasi nihil laboriosam voluptas reiciendis quo. Perspiciatis quis ratione vero commodi vero officiis blanditiis. Repellat soluta aliquid aut aperiam. Corporis dolorem fuga ad earum.', 4, 78, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(275, 'vero', 'Voluptatum veniam ea adipisci vero dolorem ex alias. Inventore nihil voluptatibus esse nobis modi saepe. Nam cupiditate quisquam qui consequatur accusamus et.', 5, 29, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(276, 'earum', 'Veniam ipsum voluptate sapiente at animi qui nemo. Ab velit et facilis et velit est. Voluptatem dolorem beatae praesentium rem quam. Pariatur qui ut maiores asperiores eum eaque doloremque.', 0, 43, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(277, 'architecto', 'Sunt nisi illum exercitationem iste provident sapiente porro. Laborum consequatur facere ut ullam nisi velit eveniet. Non aut nobis ad eum.', 1, 61, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(278, 'eveniet', 'Eum ut et reiciendis delectus in illum quia. Totam laudantium adipisci incidunt numquam quibusdam voluptatem. Velit voluptatem omnis ut atque enim rem.', 4, 47, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(279, 'harum', 'Autem voluptatibus qui dolorum qui deleniti nulla voluptas. Officia laudantium et eos. Hic dolor maiores qui laborum atque.', 1, 6, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(280, 'numquam', 'Molestias quia eum rerum repudiandae iusto soluta quo. Aut consequuntur rem eligendi praesentium vel iusto rem. Natus sint qui voluptas optio voluptatum at vel. Nihil dolorem esse et tempora rerum necessitatibus natus ea.', 1, 30, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(281, 'corrupti', 'Nesciunt sapiente qui et recusandae facilis. Perferendis quos sed enim nisi quae assumenda. Saepe aut sint alias sapiente qui. Omnis nobis optio quisquam explicabo eum explicabo. Omnis minima sit soluta harum et tempore.', 2, 34, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(282, 'assumenda', 'Sed qui aperiam enim autem facilis inventore. Quisquam aperiam amet quam quidem ipsum. Quis mollitia quo nam odit necessitatibus qui laudantium. Veritatis ea minus vel praesentium. Dolores laudantium quia nihil vel molestias et.', 0, 80, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(283, 'est', 'Est aut commodi placeat quod. Dignissimos fugit eos enim non itaque. Quasi optio et est assumenda laudantium cum dolorem ut. Quos omnis tempore cum.', 3, 86, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(284, 'rem', 'Voluptatibus rerum fuga ratione. Assumenda aut et error aspernatur reprehenderit molestias et. Nisi aut qui ut nostrum voluptatem.', 5, 66, '2018-01-25 07:40:51', '2018-01-25 07:40:51'),
(285, 'corrupti', 'Repudiandae neque eius quaerat qui fugiat qui. Dolorem consequuntur exercitationem natus dolores beatae et quos. Assumenda delectus et qui dolor. Ut id autem maiores voluptas et repudiandae dignissimos.', 0, 98, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(286, 'et', 'Labore aliquam incidunt ut odio autem cupiditate incidunt qui. Rerum sed voluptatibus maxime occaecati excepturi. Pariatur ipsum ea voluptas iste minima. Iste magni consectetur animi non sapiente.', 3, 88, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(287, 'vero', 'Cumque delectus cumque minima delectus vitae est. Sint est reprehenderit ipsa sed occaecati debitis laudantium. Dolorem ut et dolorem cumque enim optio. Consectetur et tempora velit aspernatur quia ullam. In molestiae in nemo pariatur modi itaque.', 0, 32, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(288, 'enim', 'Nesciunt inventore voluptate est rerum maiores. Velit non dolores eum deleniti accusantium id vel. Doloremque libero aut corporis neque rerum itaque odit.', 5, 40, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(289, 'illo', 'Unde laudantium aut dolorum ut tempora quidem veniam. Est expedita sit eligendi non cum neque in. Excepturi cupiditate voluptatibus labore aut. Ut quaerat perspiciatis eos.', 2, 61, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(290, 'distinctio', 'Repudiandae repellendus aut a soluta. Sunt aut recusandae laudantium et odit.', 4, 45, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(291, 'qui', 'Culpa illum natus dicta. Natus impedit sapiente aut eos dolor doloribus. Qui voluptas ut omnis voluptas.', 2, 81, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(292, 'delectus', 'Neque eligendi a error. Tempora tempora id et id. Molestiae ipsum ratione dolor sequi a. Molestiae sapiente aut debitis impedit aut dolorum. Praesentium velit necessitatibus distinctio ut.', 3, 1, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(293, 'illo', 'Nisi dolor iusto mollitia exercitationem amet hic. Qui ex quia libero sed. Qui rerum quia totam a est.', 5, 48, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(294, 'nulla', 'Magnam ut placeat vitae quia aut sed. Cumque sit amet aliquid harum dolorem hic itaque. Nihil aut debitis possimus.', 0, 4, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(295, 'incidunt', 'Rem vero est ipsa perspiciatis magni omnis modi deserunt. Et nesciunt facilis reprehenderit est sunt quia corporis. Autem non minus est nobis facilis ducimus.', 3, 10, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(296, 'consequuntur', 'Temporibus dolorem quasi incidunt quia necessitatibus pariatur. Ut qui est et eum fugit reprehenderit. Qui repellendus qui ut culpa sed.', 2, 60, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(297, 'illo', 'Veniam voluptatem aperiam et aut. Sit id sunt delectus aut et ut dolores. Et delectus omnis in qui. Voluptates aliquam saepe incidunt commodi unde vitae autem.', 2, 76, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(298, 'sunt', 'Vitae laudantium consequatur cumque adipisci. Nemo doloremque perspiciatis deserunt facere. Quae nemo expedita natus animi laudantium et excepturi. Ut dolore officiis omnis impedit molestiae eligendi nihil doloribus.', 3, 78, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(299, 'voluptatum', 'Repudiandae deleniti voluptatem voluptatibus nostrum assumenda porro. Dolores quo dolor impedit cumque voluptas. Reprehenderit dolore dicta vitae doloremque vel sint corrupti.', 4, 62, '2018-01-25 07:40:52', '2018-01-25 07:40:52'),
(300, 'maiores', 'Aliquam voluptatem sit accusamus incidunt ratione. Eum quod perferendis beatae. Deserunt architecto et magnam veritatis. Ipsum blanditiis dolorem quia assumenda repellendus vel.', 3, 70, '2018-01-25 07:40:53', '2018-01-25 07:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Refaat', 'refaat.aish.fciscu1@gmail.com', '$2y$10$ho03Dh0I5Yk4Of8xFRKAq.jvT0Adhkh4ob/wYIN3N/yGDG5WQdege', NULL, '2018-01-27 03:30:54', '2018-01-27 03:30:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
