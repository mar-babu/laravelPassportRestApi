-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2022 at 08:05 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_passport_rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_08_24_110402_create_products_table', 1),
(11, '2022_08_25_103007_add_phone_to_users_table', 1),
(12, '2021_08_22_042724_create_role_has_permissions_table', 2),
(13, '2021_08_22_042724_create_roles_table', 2),
(14, '2021_08_22_042724_create_user_permissions_table', 2),
(15, '2022_08_26_180421_add_user_type-status_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('00a5b31facf2178b3d4096d39a0cf312928794d6bd1bc5f72ff95cfbf63d662107fe23a7bf835af1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:49:16', '2022-08-26 18:49:17', '2023-08-27 00:49:16'),
('03caa055bc31ddd9e03fc3b2a6a4befaa8e652e236ae8ddbeef7f71239567d06b436e5fb29eff763', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:31:13', '2022-08-26 16:31:13', '2023-08-26 22:31:13'),
('051858484397d25692b92dd59c92969e7dd652ce5ca8252169dd31279076bbe2c9ee06a079de2984', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:02:07', '2022-08-26 10:02:07', '2023-08-26 16:02:07'),
('0526b0506344977e9064b59a0f3fe8338caf8f6d37c9cc52f7d8d0f7699d3ddfe315f111e8717445', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:13:40', '2022-08-26 04:13:40', '2023-02-26 10:13:40'),
('0973976081d4d37b4473563b0d1d8b483310b7d8dee93e69ffeb1b91cf191a37af9d2c987ae8bd91', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:20:23', '2022-08-26 04:20:23', '2023-02-26 10:20:23'),
('0a8a9ed8a32f008f8ce97a8058dd74aa85e133b19346bb2c1f02513713a36ef9109be7e98b956f19', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:01:11', '2022-08-26 07:01:12', '2023-02-26 13:01:11'),
('0cc0f33b8fb93b11612114c72315cb3788caf4f28560c1a2711a1ca9ccd18f9eada27117c0872b9a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:50:59', '2022-08-26 09:50:59', '2023-08-26 15:50:59'),
('0d19c8602b5626e6791cd0d2cb5419358704521405268c6861be392ba647f2e45563cb317dad9aaa', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:30:28', '2022-08-26 21:30:28', '2023-08-27 03:30:28'),
('0ddf7c32c0671de7ee35b5d2a3c51c8724068598ead45509744509b5280921eb43d265df7b7c0172', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:13:01', '2022-08-26 09:13:01', '2023-08-26 15:13:01'),
('11b65a62818e7edc2c402c0f403f593c7ef0d85bbda3cee05c8a7d455c1a37c98f2b1228d49bf77d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:01:02', '2022-08-26 10:01:02', '2023-08-26 16:01:02'),
('1227839761f4711259f7f8545029ece3f30829cfd6a2e92267be46e5034bf1fd718c6f0fa34f3a02', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:31:34', '2022-08-26 16:31:34', '2023-08-26 22:31:34'),
('1312014a6bc4085d34f4929aa4a6e8bf17b538e6d74e911f8abd075850dcb08aa21b8026609e3069', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:05:32', '2022-08-26 12:05:32', '2023-08-26 18:05:32'),
('13b36ad406460d83d86ddda7053ffa0b4436d65cb6ffdc0f7fd5a9b4af8c213bf91665122f820ddf', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:24:36', '2022-08-26 19:24:36', '2023-08-27 01:24:36'),
('14f8a75de38511856aa56bc749cbe8a6407fb057beb98e48907fa022e8081dbbd6f482e83b118009', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:07:31', '2022-08-26 09:07:32', '2023-08-26 15:07:31'),
('15923d6c8182e1fdaa8bd576979ed1795c4851e19a178b09fcd5502ab81fa252b7419164d3039c52', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 05:13:25', '2022-08-26 05:13:25', '2023-02-26 11:13:25'),
('16449be6d31053db8597460450c78a6c9d2738df2aad18efb945f9c751aab66086f77aee46e09c2d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:25:37', '2022-08-26 07:25:37', '2023-02-26 13:25:37'),
('166ebfd908e1091dec3feae0a373cea45d4a9fa1cd399f04436f8e7bbeb49dfc8801960ebbaa881f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:45:23', '2022-08-26 10:45:23', '2023-08-26 16:45:23'),
('16ea207bf676e71f3864a3ac43997d5f89a04332cc6525aea0f2378f34cc851fa65c0786f2502a7e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:11:19', '2022-08-26 16:11:19', '2023-08-26 22:11:19'),
('18b7ca45feaf4a42e9c1fd3dbb87634dbd7475c27ae04012a7c713e34a53dc83b56ce778ebf633cc', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:01:37', '2022-08-26 06:01:37', '2023-02-26 12:01:37'),
('1a2285ae6411fdea7434ee2f4df5a0283c03bf226fb11afc653e86a65109fd74ef092add4c99f8e3', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:30:29', '2022-08-26 18:30:29', '2023-08-27 00:30:29'),
('1a30c4606d1814f77fbdfa80de1d7d079e49b9279200eb6e274ead535737dff4c6510c328b1a085a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:21:55', '2022-08-26 17:21:55', '2023-08-26 23:21:55'),
('1d3393cbe75e19feeed08e1b2c939e0ea05b5737be06dbe4886967c5e41dcc0a6798d6f52c9efae9', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:01:28', '2022-08-26 04:01:28', '2023-02-26 10:01:28'),
('1d7d24556e16400f2e3a2cdd8dfe21acc1a94fa65380bf7a2ee7c9a10e7fb8588bfa13e63da32348', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:31:32', '2022-08-26 21:31:32', '2023-08-27 03:31:32'),
('1eea0b30ac5b4117afedc75b409b56dcb1dccea83c16b78e8d53f030f7a02b26554643beb3057a6e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:14:03', '2022-08-26 09:14:03', '2023-08-26 15:14:03'),
('1ef7d7364f7b403a68424dc5b8473cf2a2d5ae627b18093783a04899fb894b793ada859672117926', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:29:25', '2022-08-26 18:29:25', '2023-08-27 00:29:25'),
('205f7297f715ae8203882295bff7eac1039c5a69381acdd530d1566fceff87bba8fe79bed43da6a1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:33:55', '2022-08-26 11:33:56', '2023-08-26 17:33:55'),
('2138992206ccb2559b16627b8f18b3f3d6d836e07bfd66ad7536c9f26862edc205f0f35ac1cbfe21', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:58:11', '2022-08-26 06:58:11', '2023-02-26 12:58:11'),
('226d5c9206f93bb2d454dafb63e9de1ba987171ff4e7e1a4b371e1ad42f25be6578b5718632f05b4', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:26:58', '2022-08-26 19:26:58', '2023-08-27 01:26:58'),
('26863651e580b1c4f5deed99f7b3dbc3cf7c2783111c94cdde5dc484c6cb1ddd142b2b9d8d32c19c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:31:14', '2022-08-26 10:31:14', '2023-08-26 16:31:14'),
('28d64c4a74c082da9e498ac1cd164eee7c6ac6d3c5d3019592ce430ecfcb2fcde9162c7ec8f9a745', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:06:14', '2022-08-26 04:06:14', '2023-02-26 10:06:14'),
('29125f7960e802329ebcd34d16da45106910a8d992b4cf3cc9c7f2a2a748d3e219ce5be18e99217a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:04:26', '2022-08-26 12:04:26', '2023-08-26 18:04:26'),
('2a056fe0c86ad5fce2d8fad9d5b1b5f1e25f2a53e6b9d64e4615830b5d82b90c33c2da19fd18e96a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:18:34', '2022-08-26 04:18:34', '2023-02-26 10:18:34'),
('2ab4624897580af8e1c4a592a6e2a139536ede250c076cf1ae98b08f363471bfa6d9902a1508931b', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:11:52', '2022-08-26 11:11:52', '2023-08-26 17:11:52'),
('2e9e9341c1674bf03e28c20d5de1aa28cac6c924bf1b9e38f386b0874f66a57ca122f3cd41a8cf60', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:40:00', '2022-08-26 22:40:00', '2023-08-27 04:40:00'),
('307780ffa656de3f43bab4b4c380126e2cbb178acc31bf1c4c20837fd16c5896884b63978c4cc5d1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:08:32', '2022-08-26 10:08:32', '2023-08-26 16:08:32'),
('317939756265aa837f8ff8374e8028628a5f550096d436c1b03f56028fb8b32afd3dad36226ce218', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:13:20', '2022-08-26 18:13:20', '2023-08-27 00:13:20'),
('317eca83bfbbbca939adc7f8c7eb9680ebe86ad57ad2ad6466cac39e1caa21f50265d8a3113bc0ac', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:10:03', '2022-08-26 07:10:03', '2023-02-26 13:10:03'),
('3394a990b20756a0040df2175a731096d0c385c7611039fbe4100cd4410d94f5e715b2ee5e13b62c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:07:30', '2022-08-26 18:07:30', '2023-08-27 00:07:30'),
('3467ea893b8e0de293f6f737b49a753846a607620697b37fd42df5b7e831ffd1035224958b4af2e9', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:01:33', '2022-08-26 11:01:33', '2023-08-26 17:01:33'),
('364a8201019eb2b13520a9a65487621a28054b45dae7559f206a16de8707bc3200ea7bea88fdcf1d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:04:21', '2022-08-26 12:04:21', '2023-08-26 18:04:21'),
('371ee5b7806ddcfc6a1fa2e1944429cdec92dad5a0fc1b63638e28ae5790ca540ba2f8777a1326f8', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:33:35', '2022-08-26 12:33:36', '2023-08-26 18:33:35'),
('37ade8690943dc171b53802c81a644487ff02002930f0fcb05f3031ed7f245b4739768acf66b6ef4', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:08:47', '2022-08-26 04:08:47', '2023-02-26 10:08:47'),
('381e337f56aecbb276c5f0b065b620821fa09af21dca5514a8cd469d040a0f86982676da72642870', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:43:20', '2022-08-26 10:43:20', '2023-08-26 16:43:20'),
('38c215adb9e851a7e02b8ee3a4ef03525f814416f0fbca4f6bec95c1327e213e99d882e48f9da500', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:25:49', '2022-08-26 22:25:49', '2023-08-27 04:25:49'),
('3b0c3a5a92e3154b5e9edf16e0a69d1eb6cb1d6f6abb94100a303c07d4ba611fd69c0095b9a15dcd', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:48:59', '2022-08-26 18:48:59', '2023-08-27 00:48:59'),
('3b2c9970dcb30a2de0a936c471c22eef8df24babefa608fe3bcb1135a4102641b5a0111ad6363f79', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:33:09', '2022-08-26 21:33:09', '2023-08-27 03:33:09'),
('3b44fe13cd77433cb21a0c7235307bdfef55b18f4dbc1ef89bec539b7b2b7991d19d5c71622114d3', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:25:43', '2022-08-26 07:25:43', '2023-02-26 13:25:43'),
('3b45618c185fb1546ef9ef38e6e5972de99df8356d6382816698680cab39661d319f9294a939a053', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:11:59', '2022-08-26 10:11:59', '2023-08-26 16:11:59'),
('3cc44caae515b8b6132363f12ac89e126693dc094e2234b5920dc3f6ca2775c6a7acb63ffd702a27', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:09:18', '2022-08-26 22:09:18', '2023-08-27 04:09:18'),
('3ce6ed529c255471d053c6cb6f0a6195027661c56bfc27a67cdc9759ad407a58ca96eecbc5ee7d7b', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:05:22', '2022-08-26 07:05:22', '2023-02-26 13:05:22'),
('3d81a1cb506345f5251b8d88c59645e87256f44e7c010544f1570f685803c1ee809fe39a126d965a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:57:36', '2022-08-26 19:57:36', '2023-08-27 01:57:36'),
('3d8fe9c9bd031cd29c13a7caaae8e8be86689e788ad3d011d596a53f0a2a1754dafd7b1d7f467217', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:28:31', '2022-08-26 09:28:32', '2023-08-26 15:28:31'),
('3e4b10c09f5afcfdec2af89d986f2ac8e80db83d66efe1392e0d149017a8bc93c65524d8615fcd13', 4, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 23:19:30', '2022-08-26 23:19:30', '2023-08-27 05:19:30'),
('422a76f6a1cec81c330e92291e915acff397d6845da20c68e795dff98d468426afdd3796ad18dd46', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:23:13', '2022-08-26 09:23:13', '2023-08-26 15:23:13'),
('42c9e9f370008d805dc669b99836d8c4888ce5036bb8ebf161b2c87060cd08fadcd159f3afd41339', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:19:25', '2022-08-26 04:19:25', '2023-02-26 10:19:25'),
('44f9a4eafc93ca624a085659d410399ba3e63aa9dcc5214483a468af9876884c2dfad781b08519f1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 14:05:37', '2022-08-26 14:05:37', '2023-08-26 20:05:37'),
('46f553d424e97fb5cbf346347f140a6bdb9064fa83d0398ca0a03b283e0a67a5595a317e54544016', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:26:10', '2022-08-26 22:26:10', '2023-08-27 04:26:10'),
('48c444752e0fd0c9b8d8f29a5ee0fb365f2b0797a7b0c1e3b50a046d52a9286fa7ed1649b6e24f8c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:09:10', '2022-08-26 16:09:11', '2023-08-26 22:09:10'),
('491d1b26694e3645588b1af22f2d5a2d1dbb830ee1904a425c28e93c1ef44220e0f92d8be9429136', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 14:26:07', '2022-08-26 14:26:07', '2023-08-26 20:26:07'),
('4adb355c424d795b0f480665c4c62a98d431c02e52562299fef22cb6bab66f45d05dde201239d3e4', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:42:06', '2022-08-26 10:42:06', '2023-08-26 16:42:06'),
('4bf60f027cd96cadd07ffbb9e71d278d19956be7a68071ac694eb1876068e06a8649106ecf26492c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-25 20:28:12', '2022-08-25 20:28:12', '2023-02-26 02:28:12'),
('4d4248475348e25198b03a0c86c63f634565e98615ebd23f55ab7733fecc74530f1c99ca73e8d66e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:56:10', '2022-08-26 11:56:10', '2023-08-26 17:56:10'),
('4de32b7dbd11f48f1a7ccc2f5cbf1a83f40192cc59c1af4c44dea9dbc2de1072503433007bb8fe4c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:32:42', '2022-08-26 11:32:42', '2023-08-26 17:32:42'),
('4eb738f8008a03d8e8162b50fe25ee378b8d2b750775f530484d69f23effc8cfcc582ae6a31d1250', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:12:32', '2022-08-26 18:12:32', '2023-08-27 00:12:32'),
('4ec608588f39f8c6a3878c8a9699d618ebcf7eb2a33c31d7ae0f61c5a71fa51751b858af63150cca', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:32:23', '2022-08-26 18:32:23', '2023-08-27 00:32:23'),
('5314c6e0d0c53bea504b1c631959edda356f312ebd1a0190cc7301baac27c6f9f2965179f476c9be', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:18:22', '2022-08-26 09:18:23', '2023-08-26 15:18:22'),
('545f1462f72455e1f29f9297b7e71219d46c2571c6e62b4417b420e7a83bd2ec5f618dea434e367d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:54:06', '2022-08-26 18:54:06', '2023-08-27 00:54:06'),
('54fe9d720f121dc8c454ac88e2e2a9448fd21e95e1b2470ea8942e4402d14aecdf5bb31cde9ffee4', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:06:41', '2022-08-26 09:06:41', '2023-08-26 15:06:41'),
('5573feb4a1069bcac510b0261e25631fdad24c3722077089caa696afd4413573ac01144c16e3ab05', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-25 20:27:06', '2022-08-25 20:27:07', '2023-02-26 02:27:06'),
('5a1bde13e34adc1309c409acda769429f54fd72c8d89b4e2f82abd4102212cdc68bdf205acae70b1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:56:14', '2022-08-26 11:56:14', '2023-08-26 17:56:14'),
('5c83db4f8dd832f88ed65a4d5b6264b74b5a4e8b841217e3eb2ce88c32ffc206fae55aedb061ba58', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:06:49', '2022-08-26 13:06:49', '2023-08-26 19:06:49'),
('5ce07c4c84b70c2800bf33e28d6db167df8b9a0db6404aeb713eeb2d47d7d5ee95f2a7a530279667', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:32:35', '2022-08-26 07:32:36', '2023-02-26 13:32:35'),
('5d7da1d700925046fdff1d726b7a6c2d546f235ed2230d095cc8c86ad57e5e63dd62f26977d5636b', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:10:50', '2022-08-26 21:10:50', '2023-08-27 03:10:50'),
('5e1d15e2654589ca65666c0387ea8f4796355457884f81fbfb07659ae0457ff584f3dc74bd01dbbd', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:55:39', '2022-08-26 07:55:39', '2023-02-26 13:55:39'),
('60399f8b63ec809ed894bd9e12d54b2b801b8efe1ad36224e9832500882a0f009c1843a0d77887f8', 4, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:08:13', '2022-08-26 16:08:13', '2023-08-26 22:08:13'),
('6117ec6aedca55a936f1091d5dbe837f3fb572ed753ede5d111126350281c0ee6f5ea409d88284ae', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:08:07', '2022-08-26 10:08:07', '2023-08-26 16:08:07'),
('6127d5fe468f3c20554c1d647ff42ef36772ff1422bd2197121f8a650201ab33ac649e62492f0902', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:53:04', '2022-08-26 10:53:05', '2023-08-26 16:53:04'),
('619419f7493d3fe2b743b76338ce51c3fc31bea0884a8524ed58bb43e90ec7f0db05908002e1af7e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:26:15', '2022-08-26 11:26:15', '2023-08-26 17:26:15'),
('65acb40914c98dfd587f889ed198d60fdcdf5eb2b2e9be627f146df6d1f238c7dd6009f003446316', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:22:40', '2022-08-26 13:22:40', '2023-08-26 19:22:40'),
('6758cd1dad2f755d9be3cf38d50a48a4152d17f66213f6cee8e7f02bcc28880fb750010b6fa074cc', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:55:21', '2022-08-26 07:55:22', '2023-02-26 13:55:21'),
('67997392f0ef95371b338c3ae82ce20dab95971c7c4f28346ecb1dfde41a5777bf0603201982e3eb', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:05:09', '2022-08-26 06:05:09', '2023-02-26 12:05:09'),
('68a26913473c51688f7e40d1727a3ff333ff31f9e8808ea80fbee3eef3f763473931a909b5bf5a94', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:49:51', '2022-08-26 19:49:51', '2023-08-27 01:49:51'),
('6ab69e313166a9324361073fd910c37f13b686cfeeeb8d84cb2017df0c44b825892b0b719e6cd035', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:26:32', '2022-08-26 09:26:32', '2023-08-26 15:26:32'),
('6ae0e1fd958f1f1fbb61f7916f2d47d855c3d9d3424bb34014951a5f1e2d0280bc9b695bf2ccd75f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:16:10', '2022-08-26 09:16:10', '2023-08-26 15:16:10'),
('6bf5791ef65c186f194875b32af50d72c35281a4d8fa184d78516570f5520deec9e78106c8ed649c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:36:10', '2022-08-26 13:36:10', '2023-08-26 19:36:10'),
('6cdd2e98fde0037fc80a4b3c25d4045b18f9177c444a02b9cbb4b95f9e0268b2d8cf640a5010dafb', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:20:27', '2022-08-26 19:20:27', '2023-08-27 01:20:27'),
('6d49ab9b0964b12c3456bfbdcac97f80de726b42a60c2d4acfca42f4246120053e3e18a295a5a200', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-27 00:00:07', '2022-08-27 00:00:07', '2023-08-27 06:00:07'),
('6e11b6b0edef23c1d19a9a240b47b7c544dde2c090ea986717ad391bd16dd7c0317c72131509cd35', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:55:03', '2022-08-26 12:55:03', '2023-08-26 18:55:03'),
('6e9fc685ac83f9f3bc0a15e61371d09d591432aedaedcb3cd29edb9fc6a8506cdac3f49e1642ba25', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:57:08', '2022-08-26 06:57:08', '2023-02-26 12:57:08'),
('6fb41395fe2bfd091ed8218be140abd620d9e56c514bfaeb8a5d5237dd295514f4cf988d70d286fa', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 14:18:50', '2022-08-26 14:18:50', '2023-08-26 20:18:50'),
('703c58c0dbaf458e97497fbcda881f298414c39b50e0d46e2cc1d9c1dbee596de8760c0b080d1734', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:59:59', '2022-08-26 12:59:59', '2023-08-26 18:59:59'),
('70bc364561d303b15ae272279600b16ae145f5a99f079d2b984b10507f638f552f2d802cfbeefdfe', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:52:05', '2022-08-26 19:52:05', '2023-08-27 01:52:05'),
('71a4250b0e8dbf144c5edc40f344214770a885dc17e4b0b7e0f60f3b267111819d7e1483aeb76eca', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:49:59', '2022-08-26 10:49:59', '2023-08-26 16:49:59'),
('72479b853ae85978179340308edbb06ce6c66b4ee1aff36b44dccb2c6ed413d2cfe9d2ddb51d6557', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:31:46', '2022-08-26 11:31:46', '2023-08-26 17:31:46'),
('7367cd4630f9f3e26d18a6531e15083b536d573dc37abb08cfc0c02b1b962fd8ba609b0057a414ae', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:03:38', '2022-08-26 16:03:39', '2023-08-26 22:03:38'),
('73f8626a0f48ff0ffdadc48fe0ef8891222dac865b0aff9e81fcd7ec0dc6232ca1e8242ce2f0fd84', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:18:10', '2022-08-26 17:18:10', '2023-08-26 23:18:10'),
('740a0696011de174204e333b9e9fecb76189b9bff705ec8055e3f8fc74303fc3f537f8088a0c4f53', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:48:29', '2022-08-26 19:48:29', '2023-08-27 01:48:29'),
('75e7e437cd432b838588a198b9bc73e2e8bc77cbee93a3d819237edc4dfe27bbe4a605774cc68595', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:21:42', '2022-08-26 21:21:42', '2023-08-27 03:21:42'),
('78a659519bf490c434338102ee7d903cf40090cfbdc3c2a89c5737151415586e930126798d68abbd', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:17:20', '2022-08-26 21:17:20', '2023-08-27 03:17:20'),
('79e7eb85aabeb5a6932740ca10acbc3a61522b9dd61fa9045e364395712e8d23beb982885ec0e893', 5, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 23:55:34', '2022-08-26 23:55:34', '2023-08-27 05:55:34'),
('7b4f76f8a8e4df8a42a553fb3d84ad3aa7313e3278044c4f4e2653be97ae738eb2caaab13a6e60e1', 5, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:10:44', '2022-08-26 16:10:44', '2023-08-26 22:10:44'),
('7b932ec6b729d8f4677d62ff0f0c4b0003dece3016bb7744e14bd253306fdb88b69b7199bb6894c5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-25 20:08:47', '2022-08-25 20:08:47', '2023-02-26 02:08:47'),
('7c059722c5ba4ffc40997a871b2bdc223d856c0b969e8a856a720d793511e684f955ee8bd6c4ebd6', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:04:50', '2022-08-26 12:04:50', '2023-08-26 18:04:50'),
('7c842a6af16ebe435dfc9aa8084bf89b9baa388187f15b24638fc2dc35d2951b0bff5193618c7ebb', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:52:27', '2022-08-26 19:52:27', '2023-08-27 01:52:27'),
('7cd6f2388220caace52841ac905b19249b62eb3af0c7eee47583fc3f1a62d33a35a66f21eeca224b', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:02:05', '2022-08-26 22:02:05', '2023-08-27 04:02:05'),
('818a85bc79a849d4208a452226c367974446b8c37fb7112b0389ea68e3a614324ad630284ecca623', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:12:54', '2022-08-26 21:12:54', '2023-08-27 03:12:54'),
('8a2ffb97c5594a25518f4ea8102cfb062181f2c4bb257c78ec9ce279dc038834533203e8f77d37ab', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:18:54', '2022-08-26 22:18:55', '2023-08-27 04:18:54'),
('8aed83f25a9ada15cd372fb5e1be710c05217fe875edb3df5fac0261e3d721a43dce6b6ded7fbb46', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:28:38', '2022-08-26 13:28:38', '2023-08-26 19:28:38'),
('8b84901cc1a180343aa5697fb0bd660f3077ad288ff691360ef9166ce42216b417fd60506a2adb2a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 23:49:10', '2022-08-26 23:49:10', '2023-08-27 05:49:10'),
('8dc0182df6e597489d307e93d5b2d7f393e86e8cfb2bae33392963c1a4b7b9fa0124e3cf4ed432a6', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:11:52', '2022-08-26 07:11:52', '2023-02-26 13:11:52'),
('907df47af977c57d492d9cd1b7edf0840c399c0784c06f20e8d467ec735465ea66ff6dff2b6694f5', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:30:12', '2022-08-26 21:30:12', '2023-08-27 03:30:12'),
('90a9a2cadb80b17375d01dac9b82d29f9149b4efffdaa30956d494d537ca2572ae8af8d1a1b1498c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:57:29', '2022-08-26 19:57:29', '2023-08-27 01:57:29'),
('922b603d614ee22047bc5bfc186a2e6bffd3d396394fb9b40d9e0f1f24b752d82c04f2fbdb5d9ea0', 4, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:28:52', '2022-08-26 21:28:52', '2023-08-27 03:28:52'),
('932220aaa9df819d7f5d2db69bb3ca09b57ed374926411160d09a86c87d6b0b729ded70fd0f65d77', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:32:34', '2022-08-26 17:32:35', '2023-08-26 23:32:34'),
('93575f1d317305a018060e1d9a5b43a9174a00eee71ce2c7330b15e9f59ed20630e2afb67ef17fba', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 23:49:34', '2022-08-26 23:49:34', '2023-08-27 05:49:34'),
('96943441ec450ab04ef4b696dba3735b47c2bb5b1675ded173c27b5a69cca5701d6d3d7936888248', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:03:05', '2022-08-26 04:03:05', '2023-02-26 10:03:05'),
('96f62f30be9d252c32647eefd8efef599bf61f2852d51f67bf4398f9e2c5f9a9f6430c3a3f1e59c5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:25:23', '2022-08-26 17:25:23', '2023-08-26 23:25:23'),
('972038b52fe749087d10fdbb92ce6c993555f38a9931cc583286027b8104272588768b357e475a9e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 15:31:59', '2022-08-26 15:31:59', '2023-08-26 21:31:59'),
('98b431bcc2c150238dfa1abee023d4f943aa7524fa3bf81b98f7a2c416997a2307667369dc4349e8', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:13:18', '2022-08-26 18:13:18', '2023-08-27 00:13:18'),
('98f3520c8480d4fbc0d2498a63cf5fabdf35b4a6a92e2f609be861615ac35c24eda8a8c70d80b12e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:46:19', '2022-08-26 19:46:19', '2023-08-27 01:46:19'),
('998a7f228b2b0870a8cb93d2c82906beec388d39962b804ef9ed95ba04e5308fb7ec4673cd7fa8f5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:25:28', '2022-08-26 09:25:28', '2023-08-26 15:25:28'),
('9abe1ad70298a3ada612bf1076d5426bc0c6628d7f95d3cc17c6eb6163886a23c6deb898cb3d09e1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:09:16', '2022-08-26 21:09:16', '2023-08-27 03:09:16'),
('9c7116cd3fac5f80638f9aedd6176c733b3d27c2af42b78b577a07acd3a180c949f9ff7aff354e09', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:03:33', '2022-08-26 10:03:33', '2023-08-26 16:03:33'),
('9d2062fd30df0504465fe8433d71bc40515ff228648feafad787087063059f3a47706f7bf795a756', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:44:22', '2022-08-26 16:44:22', '2023-08-26 22:44:22'),
('9d445821243f04225ba5989fe97e6bb9436b2330e125fd2b4e9f0dd68c0f72e98a0b7a3077eb62b2', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:40:48', '2022-08-26 10:40:48', '2023-08-26 16:40:48'),
('a23b56e90747622d9b12cba7c1b497aed637ea46c57cbe413664b9b5e4daa4e1db0797ee569b8926', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:44:05', '2022-08-26 19:44:05', '2023-08-27 01:44:05'),
('a25394d7577621da1fbf9d6cb13e63e659b563bf009c2b72d017e09099b2faa61c823a471561d802', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:09:15', '2022-08-26 09:09:15', '2023-08-26 15:09:15'),
('a2a72df5c017803d711b111baa35467552270964276f1f7b710febdbdb11abbf9a534ac65d416d46', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:29:51', '2022-08-26 17:29:51', '2023-08-26 23:29:51'),
('a3d312a84b118b092973c44c9e50528555f1cd92a6e441678527a439b9fdd005befbcba1d7e8c8dc', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:29:12', '2022-08-26 09:29:13', '2023-08-26 15:29:12'),
('a57a588da573d22bcc5989024cd84e1a1b087c932a8da9a31d4afb7eb4df8547164a5fbd6f7bde3c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:03:18', '2022-08-26 12:03:19', '2023-08-26 18:03:18'),
('a5c7493c565e7019b1dc0d0b5e9b00e9dd31d6965fe9ac9253f415d64205b7081cb9c53d1ae889f9', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:17:44', '2022-08-26 19:17:44', '2023-08-27 01:17:44'),
('a68359e4c883fd67059482340dc8d6605ad109bed6a6869bfc03578c2ee93639808cf89248ab07f6', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:06:10', '2022-08-26 06:06:11', '2023-02-26 12:06:10'),
('a8332fcdd0b2729f5199e38b76c74b7c56638951bdd88f11a477c050b144b887440dad8104fbc6b2', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:45:11', '2022-08-26 19:45:11', '2023-08-27 01:45:11'),
('a8983153d2ef53b0c90e1a4faeb3dba25b5d271a1385296e9d4d779edd16e3c5330a6499e53f51c7', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:47:34', '2022-08-26 09:47:34', '2023-08-26 15:47:34'),
('ac65beddfe71e03fa7ba7855acc6c38344d8d05c1d55cc2c0a88a2139e9dc0661665a0dc1e890156', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 05:17:11', '2022-08-26 05:17:11', '2023-02-26 11:17:11'),
('ad1f4ffb478f58ba87f7e852d7f34ebe5d371738fc7ef3a9c0fde9f674e0f15c9ea048eeb866ebc3', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:12:53', '2022-08-26 06:12:53', '2023-02-26 12:12:53'),
('af6fa717fb2cc76cbb64dd8eb29d552b1d84ab7e9237d912f3e2471ca7ea444d8e8341388aed12a1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:29:20', '2022-08-26 12:29:20', '2023-08-26 18:29:20'),
('b06aed6ce3353b62b1ee255107d1670de0abd2894ce2d1351478de43775766c373eda3469b448086', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:05:46', '2022-08-26 12:05:47', '2023-08-26 18:05:46'),
('b0f6b82aeeb6f6f104d2044d0a4024e24f7983cdbb0819c937d2a91a15d8b04de7bf87c8ddc2f70f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:21:42', '2022-08-26 17:21:42', '2023-08-26 23:21:42'),
('b16904f64cacd7a4208b5b581e83ec15ef78dff851f12d2df3ad4b9428138a19e92e180ca227c034', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 20:25:20', '2022-08-26 20:25:21', '2023-08-27 02:25:20'),
('b40846075685833b305833bae3b947ceec6f7cc1c6a0b0ceceacc2cc1ab2ab7bbaf93b0eb316e101', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:32:50', '2022-08-26 11:32:51', '2023-08-26 17:32:50'),
('b4b431c6ec410e53df746032f9443b157b6e8dd34db03c1509f7e64d89b1ccc454b08f3b3f2bb116', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:09:10', '2022-08-26 16:09:10', '2023-08-26 22:09:10'),
('b6df80601f459355611a60432ac6d38f99656500264761c715253943a8e74be1ab1217bb676ac4d7', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:28:27', '2022-08-26 10:28:27', '2023-08-26 16:28:27'),
('b748fa1f783a3044a55d7691971af50bd4db6a7e4a1e159dc57904d83db4db5dfb64d131ece929bc', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:36:57', '2022-08-26 04:36:57', '2023-02-26 10:36:57'),
('b7f6c6215dd5529931ba9098fa52b489749bf489e248aa2379bd00809e556bd15900013069d53a01', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:05:31', '2022-08-26 09:05:31', '2023-08-26 15:05:31'),
('b85a893499a1f7d540287ff806649775efa72bdad975cd1a879e7789cf8d0a84c2aa729b6808ae61', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:09:31', '2022-08-26 21:09:31', '2023-08-27 03:09:31'),
('b9c5a8d0652a5f710e2d6b43859ea50fee293e886116f46e73db7be040885f92c5c89e396b12a212', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:34:00', '2022-08-26 11:34:00', '2023-08-26 17:34:00'),
('ba2f0d57083a58fa5db86bf0e6d5a93e8e928a13c5fe5049348373e2519a46d549238a214180e7f1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:06:57', '2022-08-26 13:06:57', '2023-08-26 19:06:57'),
('bc6bdf50caff2d40fa147dacd198c0fdefa7aacfcdaa14e53d84e72425a94266e086a2d30213255e', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:58:35', '2022-08-26 13:58:36', '2023-08-26 19:58:35'),
('bf8884be2db5ad8a073c8bdbe54024a5ef07192effdd3fa60b1871e50442cb9d0945607cf29bbe26', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:33:45', '2022-08-26 17:33:46', '2023-08-26 23:33:45'),
('c02c42b818b2908edc933c3769b54f9bc4bb92cb44f6c63942d3e75e75ff2ad39054499a9e2999db', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:25:17', '2022-08-26 06:25:17', '2023-02-26 12:25:17'),
('c08d8c899bf68f9ecdfc231acb595933f25cecbaab41cb1282a546d8131bbe818b9a89fc8adf5022', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:07:20', '2022-08-26 16:07:20', '2023-08-26 22:07:20'),
('c234248d1b1552db0c5ee9eb1ba7ab218297472128d1d58d1b2e042d1c0f83f2e2a5b9060f93d3c0', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:54:03', '2022-08-26 19:54:03', '2023-08-27 01:54:03'),
('c46075f5ef331ab70a1e57f672eecb01c691daa6c78b665b51c9b3e46c8e310a4e8c8b239ab1bcf7', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:05:17', '2022-08-26 11:05:17', '2023-08-26 17:05:17'),
('c481dd9d4f5e7e0bb17dc75ec4ed4e75d08b81bd02141c8fa28387981b3a4c85d53e8fc5205ec073', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:43:36', '2022-08-26 04:43:36', '2023-02-26 10:43:36'),
('c65a6a72c7782109c120931912c3ff7cfd8a8b102a247a21f9e4a859b75f4fcdd6968a16a59296f8', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 14:40:03', '2022-08-26 14:40:04', '2023-08-26 20:40:03'),
('c7708c68112fca65bac1ed7b19e9c633ece64c6ceb61017d60cd47f53c5c75db870afb178317f4b5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:53:55', '2022-08-26 19:53:55', '2023-08-27 01:53:55'),
('c773e719a7a3f330a994c5526d7d5e56b92a81ada2bb0e90f84fea1ba3bbf1e66e0716fda44731e5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 20:09:12', '2022-08-26 20:09:12', '2023-08-27 02:09:12'),
('c7fd7ba101bc3cb3847ce01f68f7e69db188801bc4ffc90a0269862bb86fe9c63eff21b5fdf9940a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 14:10:40', '2022-08-26 14:10:40', '2023-08-26 20:10:40'),
('c93bca1c47d9983a0541eee4141cfdc44f83c8bbed2ce39c815e585702a17001df965b862ec86987', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:26:25', '2022-08-26 17:26:25', '2023-08-26 23:26:25'),
('c95b561f8b4bb0192b29a7f11a3803b741e1e6fdd7960c20f5e9adb5c03255eee0530f1322c82762', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:54:22', '2022-08-26 17:54:23', '2023-08-26 23:54:22'),
('c9d0e6afff4425d4a528b7435f44f3d8576b98d00039951da10dceb53a568b3ea843d203016bb268', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 20:35:30', '2022-08-26 20:35:30', '2023-08-27 02:35:30'),
('c9fee8f8ac064326e6d3fff57a129b4d0217d046b240206c6a2e454532d626b07acc4911e0a8bf0d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:53:45', '2022-08-26 17:53:45', '2023-08-26 23:53:45'),
('cab5a0808167881e85ca600ecc2684af22808025dbb1fded9a8d1223dc8d450816c8f92de7a0c01d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:16:20', '2022-08-26 09:16:20', '2023-08-26 15:16:20'),
('cc62922bf039e8f43e496373b4e4f83a6977b70fef3b2d0c37b9337d72d5d99f6bbd0f4076e6be1f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:44:58', '2022-08-26 10:44:58', '2023-08-26 16:44:58'),
('ccf11ef64d9e12a195eb9a4f5ef32582fa70c2c5ac03db98c27ff0a450170ed1f9a3233f4e245a0d', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:18:46', '2022-08-26 04:18:46', '2023-02-26 10:18:46'),
('cd9e6ef8788a2e1c3853a5f2d6adf5a93b940753e2cf62634550dc436b36aa329b2ab65c0ea3fbfa', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:10:13', '2022-08-26 13:10:13', '2023-08-26 19:10:13'),
('ce72cb024094e82c326d15aaea7cfea7a2ef102bd99eb10c439417c9b12d279b5d18ba4ad6cea1d5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:48:20', '2022-08-26 18:48:20', '2023-08-27 00:48:20'),
('ce8c7f9a2868275685400b3374fee5bcd4464d224a055acd19b155f010e207ff3ef77f49c90949f0', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 15:55:07', '2022-08-26 15:55:08', '2023-08-26 21:55:07'),
('cf4d6e50029275c703c996bf864cd665bbc92d60c540d3138c5b6a9fc0611b690bbc0cbfc00d8014', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 05:26:52', '2022-08-26 05:26:53', '2023-02-26 11:26:52'),
('cfe3ed751880b7af1107f844322c246ffa01c0731cf8e2dfbfedb3425134129842bb3680a4b1ad69', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:15:10', '2022-08-26 09:15:10', '2023-08-26 15:15:10'),
('d0764be5d7781bfa08b12494fbd29df4d47b4497a5f95b684e5f440ffc09f95a9898735e33c767fb', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:24:01', '2022-08-26 21:24:01', '2023-08-27 03:24:01'),
('d20222c68195ca3a265769db3dc21e9902ef9ffeebdc26aa88fa5588a6ca9d25f4cb314efac9c3f9', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:05:38', '2022-08-26 11:05:38', '2023-08-26 17:05:38'),
('d270a670dfc85002259132f69496d4ff8cdbee011755e4bde124080d49ec2ebafca3d1d146b82c0e', 4, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:54:56', '2022-08-26 21:54:56', '2023-08-27 03:54:56'),
('d3a73c9cf3432f8b07b40984ee8d2e39377a81ece4df2a1157127d905e4897ad828e3e674c4d873f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:17:17', '2022-08-26 10:17:17', '2023-08-26 16:17:17'),
('d4d7a172c14c48fcdd34412bca9aa581e44b4537fc66e08bd79858df4ee8ee01c05ff4e379da0692', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:02:13', '2022-08-26 04:02:13', '2023-02-26 10:02:13'),
('d53b210b55738aa5c350348a24a5ba392d43aef84c8673fa0a795a62b068f5428e6d7c717f94bf78', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:46:50', '2022-08-26 18:46:50', '2023-08-27 00:46:50'),
('d67cbbe6c663e3b2a83b88db52e00422f0af22213b028a09e085248732e3f4953c7d38554cbb78f5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:19:25', '2022-08-26 06:19:25', '2023-02-26 12:19:25'),
('d6b396c482a97b42ba3d53e298b924ca80440b61bc9f5e0c75e7bb99ee7e59a4b3d337e3a26c9ef6', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 06:01:53', '2022-08-26 06:01:53', '2023-02-26 12:01:53'),
('d7131d74527537a351a5c97246c1c998f01385292bd47650c44a69bd1b56fd8665a1b22150a4886b', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:23:11', '2022-08-26 21:23:11', '2023-08-27 03:23:11'),
('d8153de7ca8684abdb51ed3df42e93a3f838f3c99f42f697255aee7e2c60a013b39eaccf228ac34c', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:28:55', '2022-08-26 10:28:55', '2023-08-26 16:28:55'),
('da66085151ab85a9be0745662788405aad02032d447a51678126bc50e0cd396752852881eb25bbb5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:04:50', '2022-08-26 10:04:50', '2023-08-26 16:04:50'),
('dac109152db71db72b6e33f88f6cd42bfe243b86706cc87cae6f3e588ffb6072e8ea7608c5f0c62a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:51:58', '2022-08-26 18:51:58', '2023-08-27 00:51:58'),
('dbe3a5b9690515bb025cd5a8349f5d5a2f86aaecc3468df38704b95f3799568421afe3227bc9173a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 22:44:30', '2022-08-26 22:44:30', '2023-08-27 04:44:30'),
('dcd278a95da4b455b152ab69a8dc6591fc97198ad74aa07849415b0888c44679d244e6ee4c6c18fc', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 09:11:26', '2022-08-26 09:11:26', '2023-08-26 15:11:26'),
('dd495e44aba9fed94eefcad42cd86faeba14628d484d0d374e2d9e00af0906327ccee113e0493b03', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:55:02', '2022-08-26 12:55:02', '2023-08-26 18:55:02'),
('dea6204a22ee7104870c496ba75c22d85a139f8087e2ebcdd06fcdffbe13c8b76a5faa3c2dca8bd5', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 16:09:12', '2022-08-26 16:09:12', '2023-08-26 22:09:12'),
('e1e3df3c00a26813d0021c556a7e76c6ccb0d69c6b05afaebb80f6d8bdcff3d00e638f09fb487365', 5, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 23:53:58', '2022-08-26 23:53:59', '2023-08-27 05:53:58'),
('e25dc66acaebb95d40bd7d103bc3a0416156cd1928ce9d2e30fd4a3bf414f20def27b39ad7868524', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:22:23', '2022-08-26 17:22:23', '2023-08-26 23:22:23'),
('e2a754f171bf590e64b368c822a1475cdcad939b21408fc9cebb7c8ab1a21180a388b01249f25e3b', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:14:06', '2022-08-26 19:14:06', '2023-08-27 01:14:06'),
('e430fd59b956a95409e599bb6cb4c3a0ab8e6f6c7fc16651dd5e9faf715601e6c3ef2b73c8820c10', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:28:22', '2022-08-26 17:28:23', '2023-08-26 23:28:22'),
('e5e6140e72844e50ff33d69ab70c3bb82a1f226dc54235591a7c08c66d0eb02f8b2de57c53295829', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:21:56', '2022-08-26 12:21:57', '2023-08-26 18:21:56'),
('e7d5c7a65c620bb3e01940bd02aa3b827a6c91977be8daa9fe790cc707b63d50faa406f1a35117df', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:31:31', '2022-08-26 17:31:31', '2023-08-26 23:31:31'),
('e8852fd80ea4330767b343fd8c13807e98b7229e2fa03b003ce524db915df8992fe143387110dbf5', 3, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 20:17:50', '2022-08-26 20:17:50', '2023-08-27 02:17:50'),
('e89f43f93a8ffff585cb4f7e926baa0acafa23276368110c33cc10655234ceafd7eff6cd1a94bdf1', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:01:32', '2022-08-26 04:01:32', '2023-02-26 10:01:32'),
('eae5ee9af1dad771457cf8e048c801f3d99edde1d578e665eba336bd030f3c9515ed3695ea14f785', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:24:59', '2022-08-26 19:24:59', '2023-08-27 01:24:59'),
('ec8f876c38945ca6e1e9c9bf5f2a37f278f00cb0e4139dd67abe860fa050caa03f61b6b70efe252a', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 12:05:33', '2022-08-26 12:05:33', '2023-08-26 18:05:33'),
('f1cc431658f748aadfbbc2ee0be71a6adfe06522f12ea9b552ee8144acb83e593261d47f6332743f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 17:23:14', '2022-08-26 17:23:14', '2023-08-26 23:23:14'),
('f23db59112f13871642709b8ca59fa39408944bb0d223304c714b0fa4d2ebc7a21419e8ef7efb33b', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 18:28:18', '2022-08-26 18:28:18', '2023-08-27 00:28:18'),
('f2be3dcadcc04d92debd174c06d44bffb670f36b5015d15c8c10b18cc04bcb7dcf8de136947c57d9', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 10:00:29', '2022-08-26 10:00:29', '2023-08-26 16:00:29'),
('f31ca15d04f69bb5464bfadf16adeadb19731af9c2e0e97648249a338e96db060b6cde38b6b46068', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:35:51', '2022-08-26 11:35:51', '2023-08-26 17:35:51'),
('f3a2c76c534d95c15c81d4c7f866ae7ff9c3988208318480db7e63df5542fce1d372d0e0cc7c3439', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:27:18', '2022-08-26 19:27:18', '2023-08-27 01:27:18'),
('f3dea57c49a35d0c611af6f08354fc72c3b2874e0b4478a9a0a81fcbc69d44f298e0fd54132f74d7', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 11:00:25', '2022-08-26 11:00:25', '2023-08-26 17:00:25'),
('f4919fee472de70b59fc03490ff14f372bdf50c31495b76d0e6f7a8c5762b755735bb6dab9d42b99', 2, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 21:30:43', '2022-08-26 21:30:43', '2023-08-27 03:30:43'),
('f824ababb3856caaf66aad8c32b42592ec0efa3c0e30cc7dcd94b83204076f589973c6c195aba128', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 07:00:05', '2022-08-26 07:00:05', '2023-02-26 13:00:05'),
('f8cf2102371a5b52a2262477b3a109069bf1c8d2eaca32df1ec9120d821d670c95c5abf57338a25f', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 23:59:49', '2022-08-26 23:59:49', '2023-08-27 05:59:49'),
('f9d2aa6f85fe16ec58741e1b251c5fd7b854f0f4c683c268f245882c2588d260abe3924d67210509', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:23:32', '2022-08-26 19:23:33', '2023-08-27 01:23:32'),
('fbba8cc7bdbbc1474d7ad192889aa50786ad7e9b546bd8de0a658d72d1ddd8ba799a25df4fceb8db', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 13:14:50', '2022-08-26 13:14:50', '2023-08-26 19:14:50'),
('fdaa4399f557b4413a22e98308fcf06c9bd6f6082216ce5c8756cf8ca6f7e6d66d73e3d0b0213909', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-25 20:09:48', '2022-08-25 20:09:48', '2023-02-26 02:09:48'),
('fe5bbf8f11f6f7a485a22118ac2c6d514e04b0f6cf5cd55944f2304fd14238f898df6617283af865', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 19:49:05', '2022-08-26 19:49:05', '2023-08-27 01:49:05'),
('ff89bbf878d4a201ee3e31b69dd5836fa5624ab9b19c014e012da304f187c24a273002c264ae6ee6', 1, 1, 'LaravelPassportRestApiApp', '[]', 0, '2022-08-26 04:38:42', '2022-08-26 04:38:42', '2023-02-26 10:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'jBmhsCWKFvBA9eCI4zqFEnVUf8RDQzlaKVEr9RhO', NULL, 'http://localhost', 1, 0, 0, '2022-08-25 20:00:37', '2022-08-25 20:00:37'),
(2, NULL, 'Laravel Password Grant Client', 'Glf3alKZeZl3lAzwRmWTcnykimfpJnXc6cZKWn4l', 'users', 'http://localhost', 0, 1, 0, '2022-08-25 20:00:37', '2022-08-25 20:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-25 20:00:37', '2022-08-25 20:00:37');

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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Name', 'Test Description', 221.00, NULL, 1, '2022-08-24 11:39:01', '2022-08-24 11:39:01'),
(2, 1, 'Test 2', 'Test desc', 130.00, NULL, 0, '2022-08-24 13:30:08', '2022-08-24 13:30:08'),
(3, 1, 'Example Name', 'Example Description', 110.00, NULL, 1, '2022-08-25 14:07:04', '2022-08-25 14:07:04'),
(5, 1, 'Demo', 'Demo desc', 111.00, NULL, 1, '2022-08-25 16:11:56', '2022-08-25 16:11:56'),
(6, 1, 'Potato', 'Potato Description', 15.00, NULL, 1, '2022-08-25 22:10:37', '2022-08-25 22:10:37'),
(7, 2, 'T Shirt', 'T Shirt Description T Shirt Detail', 1221.00, NULL, 1, '2022-08-26 16:10:37', '2022-08-26 16:10:37'),
(8, 2, 'Flower', 'Test Flower', 130.00, NULL, 1, '2022-08-26 16:10:37', '2022-08-26 16:10:37'),
(9, 3, 'Soyabin', 'Soyabin Description', 1210.00, NULL, 1, '2022-08-26 16:10:37', '2022-08-26 16:10:37'),
(10, 4, 'Tree', 'Tree Description', 25.00, NULL, 1, '2022-08-26 16:10:37', '2022-08-26 16:10:37'),
(11, 4, 'Rice', 'Rice Description', 1500.00, NULL, 0, '2022-08-26 16:10:37', '2022-08-26 16:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2022-08-26 22:05:01', '2022-08-26 22:05:01'),
(2, 'Admin', '2022-08-26 22:05:37', '2022-08-26 22:05:37'),
(3, 'Manager', '2022-08-26 22:06:26', '2022-08-26 22:06:26'),
(4, 'Supplier', '2022-08-26 23:12:12', '2022-08-26 23:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permissions` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`id`, `role_id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"dashboard\",\"pro\",\"p1\",\"p2\",\"p3\",\"p4\",\"pad1\",\"user\",\"u1\",\"u2\",\"u3\",\"u4\",\"ro1\",\"ro2\",\"ro3\"]', '2022-08-26 22:05:01', '2022-08-26 22:19:29'),
(2, 2, '[\"dashboard\",\"pro\",\"p1\",\"p2\",\"p3\",\"p4\",\"pad1\",\"user\",\"u1\",\"u2\",\"u3\",\"u4\",\"role\",\"ro1\",\"ro2\",\"ro3\"]', '2022-08-26 22:05:37', '2022-08-26 22:05:37'),
(3, 3, '[\"dashboard\",\"pro\",\"p1\",\"p2\",\"pad1\",\"user\",\"ro1\"]', '2022-08-26 22:06:26', '2022-08-26 22:25:13'),
(4, 4, '[\"dashboard\",\"pro\",\"p1\",\"p2\",\"user\",\"u1\"]', '2022-08-26 23:12:12', '2022-08-26 23:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `user_type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdur', 'arcse3048@gmail.com', NULL, '01681195152', '$2y$10$sPjUywOtqcuKLp9/JGNjkeqEFQ9gt2WtRq82vy2f62DQaL5jcl/Si', NULL, 1, NULL, '2022-08-25 20:08:46', '2022-08-25 20:08:46'),
(2, 'Admin', 'admin@gmail.com', NULL, '12345678', '$2y$10$sb5G53nlWJhClvqnWRfcR.8k8kQTXYVxqafHSDy378p5arS0zr7qS', NULL, 1, NULL, '2022-08-26 16:03:37', '2022-08-26 16:03:37'),
(3, 'Manager', 'manager@gmail.com', NULL, '12345678', '$2y$10$BknSGFdVKnokXHmsJc3yxexXnMB88iZP3m6Nskma7mRot.hbvbS9C', NULL, 1, NULL, '2022-08-26 16:07:20', '2022-08-26 16:07:20'),
(4, 'Sadmin', 'sadmin@gmail.com', NULL, '0132546987', '$2y$10$8dXxOeiVkXL5DdX5tSHcWu4Il7dDjXNHVkiEuu5QItzpI4gr22s2W', NULL, 1, NULL, '2022-08-26 16:08:13', '2022-08-26 16:08:13'),
(5, 'Supplier', 'supplier@gmail.com', NULL, '0123654879', '$2y$10$piWUEDJ84aBS3CN51FL/f.IUoui093RkbA6EaiTzbcMQHWePR7Ff6', NULL, 0, NULL, '2022-08-26 16:10:44', '2022-08-26 16:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 4, 5, NULL, NULL);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
