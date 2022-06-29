-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 15, 2022 lúc 04:07 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `workmanagement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_images`
--

CREATE TABLE `comment_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `levels`
--

INSERT INTO `levels` (`id`, `work_id`, `name`, `index`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 'In Progress', 0, 1, NULL, NULL, NULL),
(2, 14, 'Complete', 1, 1, NULL, NULL, NULL),
(3, 14, 'New', 2, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_21_025923_create_users_table', 1),
(3, '2022_04_21_025936_create_works_table', 1),
(4, '2022_04_21_025953_create_user__works_table', 1),
(5, '2022_04_21_030012_create_sprints_table', 1),
(6, '2022_04_21_030013_create_tasks_table', 1),
(7, '2022_04_21_030116_create_comments_table', 1),
(8, '2022_04_21_030254_create_task__details_table', 1),
(9, '2022_04_21_030313_create_task_images_table', 1),
(10, '2022_04_21_030330_create_task_attachments_table', 1),
(11, '2022_04_21_030346_create_comment_images_table', 1),
(12, '2022_04_21_030405_create_priorities_table', 1),
(14, '2022_04_21_030455_create_nationalities_table', 1),
(15, '2022_04_21_030516_create_teams_table', 1),
(16, '2022_04_21_030535_create_team_details_table', 1),
(17, '2022_04_21_030554_create_notifications_table', 1),
(18, '2022_04_21_070038_create_levels_table', 1),
(19, '2022_04_21_070055_create_level_details_table', 1),
(20, '2022_04_27_051205_add-phone-in-user', 2),
(21, '2022_04_28_074525_add_column_provider_in_user', 3),
(22, '2022_04_28_085853_repository', 4),
(23, '2022_04_28_085948_repository_users', 4),
(24, '2022_04_29_031353_add_cloumn_expired_time_otp_in_users', 5),
(25, '2022_05_04_084415_add_column_last_login_in_users', 6),
(26, '2022_05_09_085512_create_team_works_table', 7),
(27, '2022_06_06_063931_create_permission_tables', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_at` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `repositorys`
--

CREATE TABLE `repositorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `repositorys`
--

INSERT INTO `repositorys` (`id`, `name`, `full_name`, `html_url`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'anhtu', 'TranDucAnhTu-CDTH19PMC/anhtu', 'https://github.com/TranDucAnhTu-CDTH19PMC/anhtu', NULL, 1, '2022-04-28 02:15:30', '2022-04-28 02:15:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `repository_users`
--

CREATE TABLE `repository_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `repositorys_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeOut` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `content`, `index`, `type`, `timeOut`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'abc', '123', 0, 'bug', '2022-01-01 00:00:00', 1, NULL, NULL, NULL),
(2, 'abc', '123', 1, 'bug', '2022-01-01 00:00:00', 1, NULL, NULL, NULL),
(3, 'abc', '123', 0, 'bug', '2022-01-01 00:00:00', 1, NULL, NULL, NULL),
(4, 'das', 'das', 2, 'new', NULL, 1, '2022-06-14 22:17:41', '2022-06-14 22:17:41', NULL),
(5, 'das', 'das', 2, 'new', NULL, 1, '2022-06-14 22:18:05', '2022-06-14 22:18:05', NULL),
(6, 'dsasad', 'dssasa', 3, 'new', NULL, 1, '2022-06-14 22:20:57', '2022-06-14 22:20:57', NULL),
(7, 'ds', 'sd', 1, 'new', NULL, 1, '2022-06-15 06:33:55', '2022-06-15 06:33:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_attachments`
--

CREATE TABLE `task_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_details`
--

CREATE TABLE `task_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `assignee` bigint(20) NOT NULL,
  `reporter` bigint(20) NOT NULL,
  `lable` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_images`
--

CREATE TABLE `task_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_levels`
--

CREATE TABLE `task_levels` (
  `task_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `task_levels`
--

INSERT INTO `task_levels` (`task_id`, `level_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 1, 1, NULL, NULL, NULL),
(3, 2, 1, NULL, NULL, NULL),
(5, 1, 1, '2022-06-14 22:18:05', '2022-06-14 22:18:05', NULL),
(6, 1, 1, '2022-06-14 22:20:57', '2022-06-14 22:20:57', NULL),
(7, 2, 1, '2022-06-15 06:33:55', '2022-06-15 06:33:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_sub`
--

CREATE TABLE `task_sub` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uni_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `teams`
--

INSERT INTO `teams` (`id`, `uni_id`, `name`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 123, 'team1', 'team', 1, NULL, NULL, NULL),
(2, 11, 'team2', 'team', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_details`
--

CREATE TABLE `team_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `team_details`
--

INSERT INTO `team_details` (`id`, `user_id`, `team_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL),
(2, 2, 1, 1, NULL, NULL, NULL),
(3, 3, 1, 1, NULL, NULL, NULL),
(4, 1, 2, 1, NULL, NULL, NULL),
(5, 2, 2, 1, NULL, NULL, NULL),
(6, 3, 2, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_works`
--

CREATE TABLE `team_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `team_works`
--

INSERT INTO `team_works` (`id`, `work_id`, `team_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 2, 1, '2022-05-09 02:09:46', '2022-05-09 02:09:46', NULL),
(2, 12, 2, 1, '2022-05-09 02:10:37', '2022-05-09 02:10:37', NULL),
(3, 13, 2, 1, '2022-05-09 02:53:14', '2022-05-09 02:53:14', NULL),
(4, 16, 1, 1, '2022-05-11 22:38:11', '2022-05-11 22:38:11', NULL),
(5, 18, 1, 1, '2022-05-12 00:08:37', '2022-05-12 00:08:37', NULL),
(6, 19, 1, 1, '2022-05-12 00:08:50', '2022-05-12 00:08:50', NULL),
(7, 20, 1, 1, '2022-05-12 21:58:47', '2022-05-12 21:58:47', NULL),
(8, 21, 2, 1, '2022-06-05 23:24:46', '2022-06-05 23:24:46', NULL),
(9, 22, 1, 1, '2022-06-06 00:47:58', '2022-06-06 00:47:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `nationality_id` bigint(20) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_time` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_time_otp` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `avatar`, `role_id`, `nationality_id`, `password`, `token`, `otp`, `expired_time`, `active`, `google_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `phone`, `provider`, `expired_time_otp`, `last_login`) VALUES
(1, 'test trần', 'lkv190501@gmail.com', 'lkv190501@gmail.com', '1651648585xp7sCh.png', 1, 1, '$2y$10$0e5eWoKmomxy4DJN4.QCj.DhHmhwPEC.L4B6A7iEfZRAU7b0tZ2Ya', '', '671996', NULL, 1, '', 1, '2022-04-28 01:32:06', '2022-05-13 02:52:39', NULL, '+84348805564', 'google', '2022-05-10 10:13:02', '2022-05-13 09:52:39'),
(3, 'Tú Trần21321asasas', '123322', 'tranducanhtu.cntt@gmail.com', '1651648585xp7sCh.png', 1, 1, '', '869007e6ba3d0e25634956b5585c533e', '', '2022-06-06 08:16:18', 1, '', 1, '2022-05-04 00:16:25', '2022-06-06 05:26:54', NULL, '', 'google', NULL, '2022-06-06 12:26:54'),
(11, 'Tú Trần', 'tdatu.contact@gmail.com', 'tdatu.contact@gmail.com', '1654492362dWY0dd.png', 1, 1, '', '', '', NULL, 1, '', 1, '2022-06-05 22:12:42', '2022-06-05 22:15:20', NULL, '', 'google', NULL, '2022-06-06 05:15:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_works`
--

CREATE TABLE `user_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `work_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_works`
--

INSERT INTO `user_works` (`id`, `user_id`, `work_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 13, 1, '2022-05-09 02:53:14', '2022-05-09 02:53:14', NULL),
(2, 3, 14, 1, '2022-05-09 03:05:19', '2022-05-09 03:05:19', NULL),
(3, 3, 15, 1, '2022-05-11 22:38:04', '2022-05-11 22:38:04', NULL),
(4, 3, 16, 1, '2022-05-11 22:38:11', '2022-05-11 22:38:11', NULL),
(5, 1, 17, 1, '2022-05-11 22:38:35', '2022-05-11 22:38:35', NULL),
(6, 1, 18, 1, '2022-05-12 00:08:37', '2022-05-12 00:08:37', NULL),
(7, 1, 19, 1, '2022-05-12 00:08:50', '2022-05-12 00:08:50', NULL),
(8, 3, 20, 1, '2022-05-12 21:58:47', '2022-05-12 21:58:47', NULL),
(9, 11, 21, 1, '2022-06-05 23:24:46', '2022-06-05 23:24:46', NULL),
(10, 3, 22, 1, '2022-06-06 00:47:58', '2022-06-06 00:47:58', NULL),
(11, 3, 25, 1, '2022-06-10 00:21:22', '2022-06-10 00:21:22', NULL),
(12, 3, 26, 1, '2022-06-10 01:34:11', '2022-06-10 01:34:11', NULL),
(13, 3, 27, 1, '2022-06-10 01:35:31', '2022-06-10 01:35:31', NULL),
(14, 3, 28, 1, '2022-06-10 01:37:23', '2022-06-10 01:37:23', NULL),
(15, 3, 29, 1, '2022-06-10 01:39:11', '2022-06-10 01:39:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting` date DEFAULT NULL,
  `ending` date DEFAULT NULL,
  `size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `works`
--

INSERT INTO `works` (`id`, `user_id`, `name`, `status`, `type`, `priority`, `starting`, `ending`, `size`, `rate`, `detail`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'tranducanhtu270401', 'Doing', '1', '1', NULL, NULL, '1', '', '1', NULL, NULL, NULL),
(2, 1, 'tranducanhtu2704011', 'Doing', 'Fix price', 'Low', '2022-05-05', '2022-05-18', 'Small', '', 'sdsf', '2022-05-09 02:03:34', '2022-05-09 02:03:34', NULL),
(3, 1, 'sa', 'Done', 'Hourly', 'Low', '2022-05-01', '2022-05-05', 'Medium', '', 'saas', '2022-05-09 02:05:01', '2022-05-09 02:05:01', NULL),
(4, 1, 'a', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Medium', '', 's', '2022-05-09 02:05:36', '2022-05-09 02:05:36', NULL),
(5, 1, 'a', 'Done', 'Hourly', 'Low', NULL, NULL, 'Medium', '', 's', '2022-05-09 02:06:37', '2022-05-09 02:06:37', NULL),
(6, 1, 'a', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Medium', '', 's', '2022-05-09 02:07:15', '2022-05-09 02:07:15', NULL),
(7, 1, 'Trần Đức Chiến', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Small', '', 'sa', '2022-05-09 02:07:33', '2022-05-09 02:07:33', NULL),
(8, 1, 'Trần Đức Chiến', 'Done', 'Hourly', 'Low', NULL, NULL, 'Small', '', NULL, '2022-05-09 02:08:47', '2022-05-09 02:08:47', NULL),
(9, 1, 'Trần Đức Chiến', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Small', '', NULL, '2022-05-09 02:08:56', '2022-05-09 02:08:56', NULL),
(10, 1, 'Trần Đức Chiến', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Small', '', NULL, '2022-05-09 02:09:40', '2022-05-09 02:09:40', NULL),
(11, 1, 'Trần Đức Chiến', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Small', '', NULL, '2022-05-09 02:09:46', '2022-05-09 02:09:46', NULL),
(12, 1, 'tranducanhtu270401', 'Done', 'Hourly', 'Low', '2022-05-07', '2022-04-27', 'Small', '', NULL, '2022-05-09 02:10:37', '2022-05-09 02:10:37', NULL),
(13, 3, 'tranducanhtu270401sss', 'Done', 'Hourly', 'Low', NULL, NULL, 'Small', '', 'dsfshbjhsdshdf', '2022-05-09 02:53:14', '2022-05-09 02:53:14', NULL),
(14, 1, 'tranducanhtu2704011111', 'Doing', 'Hourly', 'Low', '2022-05-15', '2022-05-20', 'Small', '', 'sdfd', '2022-05-09 03:05:18', '2022-05-09 03:05:18', NULL),
(15, 1, 'jh', 'Doing', 'hgj', 'hgj', NULL, NULL, 'hg', '', 'h', '2022-05-11 22:38:04', '2022-05-11 22:38:04', NULL),
(16, 1, 'sffdssd', 'Doing', 'Hourly', 'Low', '2022-05-14', '2022-05-20', 'Small', '', 'cdsf', '2022-05-11 22:38:11', '2022-05-11 22:38:11', NULL),
(17, 1, 'đssđs', 'Doing', 'Hourly', 'Low', NULL, NULL, 'Small', '', 'dss', '2022-05-11 22:38:34', '2022-05-11 22:38:34', NULL),
(18, 1, 'dsasaasas', 'Doing', 'Fix price', 'Medium', '2022-05-05', '2022-05-11', 'Small', '', 'dss', '2022-05-12 00:08:37', '2022-05-12 00:08:37', NULL),
(19, 1, 'dđdsasaasas', 'Doing', 'Fix price', 'Medium', '2022-05-05', '2022-05-11', 'Small', '', 'dss', '2022-05-12 00:08:50', '2022-05-12 00:08:50', NULL),
(20, 1, 'abc', 'Doing', 'Hourly', 'Low', '2022-05-06', '2022-05-08', 'Small', '', 'sa', '2022-05-12 21:58:47', '2022-05-12 21:58:47', NULL),
(21, 11, 'AnhTu', 'Doing', 'Fix price', 'High', '2022-06-05', '2022-06-12', 'Small', '', 'saasas', '2022-06-05 23:24:46', '2022-06-05 23:24:46', NULL),
(22, 3, 'AnhTudsdsd', 'Doing', 'Fix price', 'High', '2022-06-04', '2022-06-04', 'Small', '', '121221', '2022-06-06 00:47:58', '2022-06-06 00:47:58', NULL),
(23, 3, 'tranducanhtu270401', 'Doing', 'Fix price', 'Low', '2022-06-10', '2022-06-17', 'Small', 'test', 'sadsa', '2022-06-10 00:18:40', '2022-06-10 00:18:40', NULL),
(24, 3, 'tranducanhtu270401', 'Doing', 'Fix price', 'Low', '2022-06-10', '2022-06-17', 'Small', 'test', 'sadsa', '2022-06-10 00:20:52', '2022-06-10 00:20:52', NULL),
(25, 3, 'tranducanhtu270401', 'Doing', 'Fix price', 'Low', '2022-06-10', '2022-06-17', 'Small', 'test', 'sadsa', '2022-06-10 00:21:22', '2022-06-10 00:21:22', NULL),
(26, 3, 'tranducanhtu270401', 'Doing', 'Hourly', 'Low', '2022-06-05', '2022-06-03', 'Medium', 'test', 'zcxcvxxc', '2022-06-10 01:34:11', '2022-06-10 01:34:11', NULL),
(27, 3, 'sà', 'Doing', 'Hourly', 'Low', '2022-06-03', '2022-06-18', 'Small', 'fsa', 'sfaas', '2022-06-10 01:35:31', '2022-06-10 01:35:31', NULL),
(28, 3, 'dsds', 'Doing', 'Hourly', 'High', '2022-06-10', '2022-06-18', 'Medium', 'dsdsf', 'sdfdfs', '2022-06-10 01:37:23', '2022-06-10 01:37:23', NULL),
(29, 3, 'tranducanhtu270401', 'Doing', 'Fix price', 'Medium', '2022-06-10', '2022-06-10', 'Small', 'test', 'xzxz', '2022-06-10 01:39:11', '2022-06-10 01:39:11', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_images`
--
ALTER TABLE `comment_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `repositorys`
--
ALTER TABLE `repositorys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `repository_users`
--
ALTER TABLE `repository_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `task_attachments`
--
ALTER TABLE `task_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `task_details`
--
ALTER TABLE `task_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `task_images`
--
ALTER TABLE `task_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `team_works`
--
ALTER TABLE `team_works`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_works`
--
ALTER TABLE `user_works`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment_images`
--
ALTER TABLE `comment_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `repositorys`
--
ALTER TABLE `repositorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `repository_users`
--
ALTER TABLE `repository_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `task_attachments`
--
ALTER TABLE `task_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `task_details`
--
ALTER TABLE `task_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `task_images`
--
ALTER TABLE `task_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `team_details`
--
ALTER TABLE `team_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `team_works`
--
ALTER TABLE `team_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_works`
--
ALTER TABLE `user_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
