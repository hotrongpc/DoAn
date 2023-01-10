-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2023 lúc 08:01 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SupperAdmin', 'hotrongpc@gmail.com', '$2y$10$q3UFgqoa.mt5Yx1dVEBT.ee6CZkLk7p7U4Y.kbYQh6PLJ/mxgenJm', '100', '5uR7Wvqcqv3e4qlINab5pteSOzeiwdIyeCUS7SKwCLKYbhHhJ9TTlaxBcuxe', '2022-11-17 00:38:38', '2023-01-04 08:08:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `url_banner` text NOT NULL,
  `pos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(26, 'Tee', 'tee', '0', '2023-01-03 11:02:50', '2023-01-03 11:02:50'),
(27, 'Dior', 'dior', '26', '2023-01-03 11:02:57', '2023-01-03 11:02:57'),
(28, 'Sneaker', 'sneaker', '0', '2023-01-04 05:15:21', '2023-01-04 05:15:21'),
(29, 'Sneaker Dior', 'sneaker-dior', '28', '2023-01-04 05:15:47', '2023-01-04 05:15:47'),
(30, 'Pants', 'pants', '0', '2023-01-04 05:39:26', '2023-01-04 05:39:26'),
(31, 'Pants Dior', 'pants-dior', '30', '2023-01-04 05:39:36', '2023-01-04 05:39:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_img`
--

CREATE TABLE `detail_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `images_url` text NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 1),
('2022-11-17 07:38:38', 2),
('2022-11-17 07:38:38', 3),
('2022-11-17 07:38:38', 4),
('2022-11-17 07:38:38', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `full` text NOT NULL,
  `images` text NOT NULL,
  `tag` text NOT NULL,
  `status` int(11) NOT NULL,
  `source` text NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders`
--

CREATE TABLE `oders` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `total` float NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders`
--

INSERT INTO `oders` (`id`, `c_id`, `qty`, `sub_total`, `total`, `status`, `type`, `note`, `created_at`, `updated_at`) VALUES
(15, 4, 2, 140000000, 140000000, 0, 'cod', '                    \r\n                  qe', '2023-01-04 08:19:52', '2023-01-04 08:19:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders_detail`
--

CREATE TABLE `oders_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `o_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders_detail`
--

INSERT INTO `oders_detail` (`id`, `pro_id`, `qty`, `o_id`, `created_at`, `updated_at`) VALUES
(22, 84, 2, 15, '2023-01-04 08:19:52', '2023-01-04 08:19:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sp@gmail.com', '4ef83492c9675a69bf1f1660f0965653a0864f47a3b6d161fecba7cb12c131b4', '2022-11-17 00:38:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `promo1` varchar(255) NOT NULL,
  `promo2` varchar(255) NOT NULL,
  `promo3` varchar(255) NOT NULL,
  `packet` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `r_intro` text NOT NULL,
  `review` text NOT NULL,
  `tag` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(83, 'Dior x Kaws B23', 'dior-x-kaws-b23', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672834853_s1.jpg', '', '', '', 15000000, 1, 29, 1, '2023-01-04 05:20:53', '2023-01-04 05:20:53'),
(84, 'The Air Jordan 1 Retro High OG', 'the-air-jordan-1-retro-high-og', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672835595_s2.webp', '', '', '', 70000000, 1, 29, 1, '2023-01-04 05:33:15', '2023-01-04 05:33:15'),
(85, 'Pant Yvs', 'pant-yvs', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672836057_p1.jpg', '', '', '', 5000000, 1, 31, 1, '2023-01-04 05:40:57', '2023-01-04 05:40:57'),
(86, 'Dior tee', 'dior-tee', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672842407_dior-x-jordan-wings-crewneck-sweatshirt-black.webp', '', '', '', 3000000, 1, 27, 1, '2023-01-04 07:26:47', '2023-01-04 07:26:47'),
(87, 'Tee Essential', 'tee-essential', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672842855_t1.jpg', '', '', '', 2350000, 1, 27, 1, '2023-01-04 07:34:15', '2023-01-04 07:34:15'),
(88, 'Gucci Tee', 'gucci-tee', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672842949_t3.jpg', '', '', '', 7130000, 1, 27, 1, '2023-01-04 07:35:49', '2023-01-04 07:35:49'),
(89, 'Dior tee 2022', 'dior-tee-2022', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672843054_t5.jpg', '', '', '', 8250000, 1, 27, 1, '2023-01-04 07:37:34', '2023-01-04 07:37:34'),
(90, 'Yves Saint Laurent Tee', 'yves-saint-laurent-tee', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672843146_t4.jpg', '', '', '', 7210000, 1, 27, 1, '2023-01-04 07:39:06', '2023-01-04 07:39:06'),
(91, 'Puma Thunder Spectra', 'puma-thunder-spectra', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672843742_s5.jpg', '', '', '', 4500000, 1, 29, 1, '2023-01-04 07:49:02', '2023-01-04 07:49:02'),
(92, 'Jordan 1 x DIOR', 'jordan-1-x-dior', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672843868_s3.jpg', '', '', '', 200000000, 1, 29, 1, '2023-01-04 07:51:08', '2023-01-04 07:51:08'),
(93, 'Jordan 1 x OFF WHITE', 'jordan-1-x-off-white', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672844028_S6', '', '', '', 72000000, 1, 29, 1, '2023-01-04 07:53:48', '2023-01-04 07:53:48'),
(94, 'LV Chunky Sneakers', 'lv-chunky-sneakers', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672844168_s8.webp', '', '', '', 42000000, 1, 29, 1, '2023-01-04 07:56:08', '2023-01-04 07:56:08'),
(95, 'Yves Saint Laurent Jean', 'yves-saint-laurent-jean', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672846978_p2.webp', '', '', '', 20000000, 1, 31, 1, '2023-01-04 08:42:58', '2023-01-04 08:42:58'),
(96, 'Gucci Pant', 'gucci-pant', 'Sản phẩm mới ', 'VOUCHER 10%', '', '', '1 TAG + 1 Tee + tem chống hàng giả', '1672847054_p3.jpg', '', '', '', 21000000, 1, 31, 1, '2023-01-04 08:44:14', '2023-01-04 08:44:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_details`
--

CREATE TABLE `pro_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `vga` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `exten_memmory` varchar(100) NOT NULL,
  `cam1` varchar(255) NOT NULL,
  `cam2` varchar(255) NOT NULL,
  `sim` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pro_details`
--

INSERT INTO `pro_details` (`id`, `cpu`, `ram`, `screen`, `vga`, `storage`, `exten_memmory`, `cam1`, `cam2`, `sim`, `connect`, `pin`, `os`, `note`, `pro_id`, `created_at`, `updated_at`) VALUES
(65, 'White', 'Microfiber lining', 'Canvas+Da', 'Dior x Kawn', 'Italia', 'Không có', '04-02-2019', '44', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', '17', 'Không có', 83, '2023-01-04 05:20:53', '2023-01-04 05:20:53'),
(66, 'Chicago Lost & Found', 'Limited-edition', 'Da', 'Jordan', 'USA', 'Không có', '04-02-2019', '44', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 84, '2023-01-04 05:33:16', '2023-01-04 05:33:16'),
(67, 'Black', 'Microfiber lining', 'Cotton', 'Yves Sant Laurent', 'Frand', 'Không có', '15/05/2004', '35', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', '17', 'Không có', 85, '2023-01-04 05:40:58', '2023-01-04 05:40:58'),
(68, 'Black', 'May', 'Cotton', 'Dior x Jordan', 'Italia', 'Không có', '12/12/2021', 'XL', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 86, '2023-01-04 07:26:47', '2023-01-04 07:26:47'),
(69, 'Oily', 'May', 'Cotton', 'Fear Of God', 'USA', 'Không có', '21/12/2020', 'XL', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 87, '2023-01-04 07:34:15', '2023-01-04 07:34:15'),
(70, 'Oily', 'May', 'Cotton', 'Gucci', 'Italia', 'Không có', '12/12/2021', 'XL', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 88, '2023-01-04 07:35:49', '2023-01-04 07:35:49'),
(71, 'Black', 'May', 'Cotton', 'Dior', 'Italia', 'Không có', '12/12/2022', 'XL', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 89, '2023-01-04 07:37:35', '2023-01-04 07:37:35'),
(72, 'Black', 'May', 'Cotton', 'Yves Saint Laurent', 'Italia', 'Không có', '12/12/2021', 'XL', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 90, '2023-01-04 07:39:06', '2023-01-04 07:39:06'),
(73, 'Thunder', 'Disc Blaze', 'Da + Knit', 'Puma', 'Việt Nan', 'Không có', '12/12/2021', '44', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', '17', 'Không có', 91, '2023-01-04 07:49:02', '2023-01-04 07:49:02'),
(74, 'White', 'HandMade', 'Da ', 'Dior x Jordan', '', 'Không có', '12/12/2021', '44', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 92, '2023-01-04 07:51:08', '2023-01-04 07:51:08'),
(75, 'Red', 'HandMade', 'Da lộn', 'Dior x Off White', 'USA', 'Không có', '04-02-2019', '44', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 93, '2023-01-04 07:53:49', '2023-01-04 07:53:49'),
(76, 'White', 'Microfiber lining', 'Da chống nước', '', 'Italia', 'Không có', '04-02-2019', '39', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 94, '2023-01-04 07:56:08', '2023-01-04 07:56:08'),
(77, 'Black', 'Microfiber lining', 'Da ', 'Yves Saint Laurent', 'Italia', 'Không có', '04-02-2019', '36', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 95, '2023-01-04 08:42:58', '2023-01-04 08:42:58'),
(78, 'Yellow', 'Microfiber lining', 'Cotton', 'Gucci', 'Italia', 'Không có', '04-02-2019', 'XL', 'Không có', 'TAG + TEM+ PHIẾU BẢO HÀNH', 'Không có', 'Limited-edition', 'Không có', 96, '2023-01-04 08:44:14', '2023-01-04 08:44:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tom', 'phuc@gmail.com', '$2y$10$TEY9mtHYRJ4G9oW.6n9D9.5.eHfae7I1po7iNVE8cNMsEORxtzv0m', '0868896944', 'Ho chi minh', 1, 'jFFpU4F9xl8TLtjS6DPBiI8qWugcLLXQWMtRSWx9UtBoB3TrjGpx66X8xMMh', '2022-11-17 00:38:38', '2022-11-17 00:38:38'),
(2, 'anh', 'thu@gmail.com', '$2y$10$l1kbe4s6eABtFVZqe5UpIese0vCemAMafuRjEPBanY8VIhZJgMUU2', '0868896944', 'dl', 1, NULL, '2022-11-17 00:38:38', '2022-11-17 00:38:38'),
(4, 'Phúc', 'hotrongfck@gmail.com', '$2y$10$.W/ZW1opJbF6tUc4yGrYH.HrnvqTRE/ZDvrOfW4JoMlWcPdnlxm0e', '0932500633', '1', 1, NULL, '2023-01-04 08:19:35', '2023-01-04 08:19:35');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_img`
--
ALTER TABLE `detail_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_img_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_cat_id_foreign` (`cat_id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_c_id_foreign` (`c_id`);

--
-- Chỉ mục cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_detail_pro_id_foreign` (`pro_id`),
  ADD KEY `oders_detail_o_id_foreign` (`o_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `pro_details`
--
ALTER TABLE `pro_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_details_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `detail_img`
--
ALTER TABLE `detail_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `pro_details`
--
ALTER TABLE `pro_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `detail_img`
--
ALTER TABLE `detail_img`
  ADD CONSTRAINT `detail_img_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `oders`
--
ALTER TABLE `oders`
  ADD CONSTRAINT `oders_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD CONSTRAINT `oders_detail_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oders_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_details`
--
ALTER TABLE `pro_details`
  ADD CONSTRAINT `pro_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
