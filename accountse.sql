-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 02:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountse`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `account_type` int(11) NOT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 0,
  `parent_account_number` bigint(20) DEFAULT NULL,
  `account_number` bigint(20) NOT NULL,
  `start_balance` decimal(10,2) NOT NULL COMMENT 'دائن او مدين او متزن اول المدة',
  `start_balance_status` tinyint(4) NOT NULL,
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `other_table_FK` bigint(20) DEFAULT NULL,
  `notes` varchar(225) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'هل مفعل',
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول الشجرة المحاسبية العامة';

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `account_type`, `is_parent`, `parent_account_number`, `account_number`, `start_balance`, `start_balance_status`, `current_balance`, `other_table_FK`, `notes`, `added_by`, `updated_by`, `created_at`, `updated_at`, `active`, `com_code`, `date`) VALUES
(1, 'المورين الاب', 9, 1, NULL, 1, '0.00', 3, '0.00', NULL, NULL, 1, NULL, '2022-09-25 10:01:55', '2022-09-25 10:01:55', 1, 1, '2022-09-25'),
(2, 'البنوك الاب', 9, 1, NULL, 2, '0.00', 3, '0.00', NULL, NULL, 1, NULL, '2022-09-25 10:02:26', '2022-09-25 10:02:26', 1, 1, '2022-09-25'),
(3, 'العملاء الاب', 9, 1, NULL, 3, '0.00', 3, '0.00', NULL, NULL, 1, NULL, '2022-09-25 10:02:54', '2022-09-25 10:02:54', 1, 1, '2022-09-25'),
(4, 'شهاب محمد سلامه', 2, 0, 1, 4, '-5000.00', 1, '-9430.00', 1, NULL, 1, 1, '2022-09-25 10:04:53', '2022-10-22 10:04:15', 1, 1, '2022-09-25'),
(5, 'احمد احمد الفيوم', 3, 0, 3, 5, '0.00', 3, '-100000.00', 4, NULL, 1, 1, '2022-09-25 10:06:41', '2023-02-17 09:42:41', 1, 1, '2022-09-25'),
(6, 'shehab mohamed slannnjkb', 2, 0, 1, 6, '0.00', 3, '-20490.00', 2, NULL, 1, 1, '2022-09-25 10:36:37', '2022-10-08 07:59:55', 0, 1, '2022-09-25'),
(7, 'جمال شبريط', 3, 0, 3, 7, '5000.00', 2, '-6900.00', 5, NULL, 1, 1, '2022-10-05 10:14:33', '2022-10-07 08:58:04', 1, 1, '2022-10-05'),
(8, 'الحساب الاب للمناديب', 9, 1, NULL, 8, '0.00', 3, '0.00', NULL, NULL, 1, NULL, '2022-10-06 08:21:37', '2022-10-06 08:21:37', 1, 1, '2022-10-06'),
(9, 'الموظفين الاب', 9, 1, NULL, 9, '0.00', 3, '0.00', NULL, NULL, 1, NULL, '2022-10-06 08:22:21', '2022-10-06 08:22:21', 1, 1, '2022-10-06'),
(10, 'مصروفات الاب', 7, 1, NULL, 10, '0.00', 3, '0.00', NULL, NULL, 1, NULL, '2022-10-06 09:40:43', '2022-10-06 09:40:43', 1, 1, '2022-10-06'),
(11, 'كافياتر', 7, 0, 10, 11, '-1000.00', 1, '-1000.00', NULL, NULL, 1, 1, '2022-10-06 09:42:43', '2022-10-07 08:57:56', 1, 1, '2022-10-06'),
(12, 'الغاز', 7, 0, 10, 12, '0.00', 3, '0.00', NULL, NULL, 1, 1, '2022-10-07 08:53:03', '2022-10-07 08:57:21', 1, 1, '2022-10-07'),
(13, 'كهرباء', 7, 0, 10, 13, '0.00', 3, '0.00', NULL, NULL, 1, 1, '2022-10-07 08:58:31', '2022-10-07 09:22:58', 1, 1, '2022-10-07'),
(14, 'mohamed ahmed sala', 3, 0, 3, 14, '0.00', 3, '0.00', 6, NULL, 1, 1, '2022-10-07 09:40:05', '2022-10-07 09:47:38', 0, 1, '2022-10-07'),
(15, 'فراخ', 2, 0, 1, 15, '0.00', 3, '-41560.00', 3, NULL, 1, 1, '2022-10-08 07:38:52', '2022-12-26 12:41:38', 1, 1, '2022-10-08'),
(16, 'shehab mohamed salem', 2, 0, 1, 16, '0.00', 3, '-500.00', 4, 'بلرااي', 1, 1, '2022-10-08 07:43:43', '2022-12-26 13:32:39', 1, 1, '2022-10-08'),
(17, 'ابو شهاب', 2, 0, 1, 17, '-5000.00', 1, '-1878.00', 5, NULL, 1, 1, '2022-10-08 07:53:30', '2022-12-26 13:46:59', 1, 1, '2022-10-08'),
(18, 'شهاب محمد سلامه', 4, 0, 8, 18, '0.00', 3, '-2996.00', 2, NULL, 1, 1, '2022-10-08 08:42:47', '2022-12-10 08:39:19', 1, 1, '2022-10-08'),
(19, 'ابو شروط', 3, 0, 3, 19, '0.00', 3, '5000.00', 7, 'بلرااي', 1, NULL, '2022-10-08 09:59:42', '2022-10-15 05:14:22', 1, 1, '2022-10-08'),
(20, 'ahemsd', 3, 0, 3, 20, '0.00', 2, '0.00', 8, NULL, 1, NULL, '2022-10-29 08:46:33', '2022-10-29 08:46:33', 1, 1, '2022-10-29'),
(21, 'mohame', 3, 0, 3, 21, '0.00', 3, '0.00', 9, NULL, 1, NULL, '2022-10-29 09:04:32', '2022-10-29 09:04:32', 1, 1, '2022-10-29'),
(22, 'ahmed', 3, 0, 3, 22, '0.00', 3, '0.00', 10, NULL, 1, NULL, '2022-10-29 09:06:12', '2022-10-29 09:06:12', 1, 1, '2022-10-29'),
(23, 'amel', 3, 0, 3, 23, '0.00', 3, '0.00', 11, NULL, 1, NULL, '2022-10-29 09:23:48', '2022-10-29 09:23:48', 1, 1, '2022-10-29'),
(24, 'shehab', 3, 0, 3, 24, '0.00', 3, '0.00', 12, NULL, 1, NULL, '2022-10-29 10:02:05', '2022-10-29 10:02:05', 1, 1, '2022-10-29'),
(25, 'wjsdb', 3, 0, 3, 25, '0.00', 3, '0.00', 13, NULL, 1, NULL, '2022-10-29 10:29:23', '2022-10-29 10:29:23', 1, 1, '2022-10-29'),
(26, 'شهاب محمد سلامه', 3, 0, 3, 26, '0.00', 3, '0.00', 1, NULL, 1, NULL, '2022-10-29 12:48:27', '2023-01-04 21:29:01', 1, 1, '2022-10-29'),
(27, 'احمد محمد', 3, 0, 3, 27, '0.00', 2, '0.00', 2, NULL, 1, NULL, '2022-10-29 12:49:10', '2022-11-20 06:02:06', 1, 1, '2022-10-29'),
(28, 'شعبان احمد', 3, 0, 3, 28, '0.00', 3, '0.00', 3, NULL, 1, NULL, '2022-10-29 12:59:45', '2022-10-29 12:59:45', 1, 1, '2022-10-29'),
(29, 'رجب محمد', 3, 0, 3, 29, '0.00', 3, '0.00', 4, NULL, 1, NULL, '2022-10-29 13:17:43', '2022-12-07 16:44:02', 1, 1, '2022-10-29'),
(30, 'شهلى', 3, 0, 3, 30, '0.00', 3, '0.00', 5, NULL, 1, NULL, '2022-10-29 13:26:29', '2022-11-20 06:02:17', 1, 1, '2022-10-29'),
(31, 'احمده تيسهع', 3, 0, 3, 31, '0.00', 3, '0.00', 6, NULL, 1, NULL, '2022-10-29 13:39:49', '2022-10-29 13:39:49', 1, 1, '2022-10-29'),
(32, 'اجمد ستيى', 3, 0, 3, 32, '0.00', 3, '0.00', 7, NULL, 1, NULL, '2022-10-29 13:44:49', '2022-11-18 05:15:01', 1, 1, '2022-10-29'),
(33, 'جمال مبارك', 3, 0, 3, 33, '0.00', 3, '0.00', 8, NULL, 1, NULL, '2022-10-29 13:46:29', '2022-10-29 13:46:29', 1, 1, '2022-10-29'),
(34, 'مرس جمال', 3, 0, 3, 34, '0.00', 3, '0.00', 9, NULL, 1, NULL, '2022-10-29 13:49:05', '2022-10-29 13:49:05', 1, 1, '2022-10-29'),
(35, 'كريم كبنم', 3, 0, 3, 35, '0.00', 3, '0.00', 10, NULL, 1, NULL, '2022-10-29 13:56:41', '2022-10-29 13:56:41', 1, 1, '2022-10-29'),
(36, 'الشحات', 3, 0, 3, 36, '0.00', 3, '0.00', 11, NULL, 1, NULL, '2022-10-29 13:58:07', '2022-10-29 13:58:07', 1, 1, '2022-10-29'),
(37, 'كريم', 3, 0, 3, 37, '0.00', 3, '0.00', 12, NULL, 1, NULL, '2022-10-29 14:02:25', '2022-10-29 14:02:25', 1, 1, '2022-10-29'),
(38, 'شيكت', 3, 0, 3, 38, '0.00', 3, '0.00', 13, NULL, 1, NULL, '2022-10-29 14:22:41', '2022-10-29 14:22:41', 1, 1, '2022-10-29'),
(39, 'يبتى', 3, 0, 3, 39, '0.00', 3, '0.00', 14, NULL, 1, NULL, '2022-10-29 14:26:09', '2022-10-29 14:26:09', 1, 1, '2022-10-29'),
(40, 'احمد', 3, 0, 3, 40, '0.00', 3, '0.00', 15, NULL, 1, NULL, '2022-10-29 14:34:43', '2022-10-29 14:34:43', 1, 1, '2022-10-29'),
(41, 'aidh', 3, 0, 3, 41, '0.00', 3, '0.00', 16, NULL, 1, NULL, '2022-10-29 16:06:42', '2022-12-03 11:17:37', 1, 1, '2022-10-29'),
(42, 'مرس قهخب', 3, 0, 3, 42, '0.00', 3, '0.00', 17, NULL, 1, NULL, '2022-10-29 16:28:13', '2022-10-29 16:28:13', 1, 1, '2022-10-29'),
(43, 'جمال السيد', 3, 0, 3, 43, '0.00', 3, '-300.00', 18, NULL, 1, NULL, '2022-10-29 16:45:30', '2022-12-06 10:13:39', 1, 1, '2022-10-29'),
(44, 'احمد عبد', 3, 0, 3, 44, '0.00', 3, '-100.00', 19, NULL, 1, NULL, '2022-10-29 16:46:00', '2022-12-03 13:02:35', 1, 1, '2022-10-29'),
(45, 'نتستنى', 3, 0, 3, 45, '0.00', 3, '-100000.00', 20, NULL, 1, NULL, '2022-10-29 17:02:16', '2022-12-10 08:33:01', 1, 1, '2022-10-29'),
(46, 'احمد السيد', 4, 0, 8, 46, '-1000.00', 1, '-1055.22', 3, NULL, 1, 1, '2022-11-06 17:51:41', '2023-01-04 21:32:07', 1, 1, '2022-11-06'),
(47, 'شركه المياه', 1, 1, NULL, 47, '-100.00', 1, '-100.00', NULL, NULL, 1, 1, '2022-12-07 15:49:17', '2022-12-07 16:13:40', 1, 1, '2022-12-07'),
(48, 'محمد كريم', 3, 0, 3, 48, '0.00', 3, '-100.00', 21, NULL, 1, 1, '2022-12-07 15:50:19', '2022-12-07 16:41:54', 1, 1, '2022-12-07'),
(49, 'محمد رمضان', 2, 0, 1, 49, '0.00', 3, '52575.00', 6, NULL, 1, NULL, '2022-12-07 15:52:46', '2023-02-22 20:47:00', 1, 1, '2022-12-07'),
(50, 'السيم', 3, 0, 3, 50, '0.00', 1, '0.00', 22, NULL, 1, 1, '2022-12-07 16:15:00', '2023-02-17 09:42:21', 1, 1, '2022-12-07'),
(51, 'لخطوط الانتاج', 1, 1, NULL, 51, '0.00', 3, '0.00', NULL, NULL, 1, 1, '2023-01-04 07:48:29', '2023-01-04 20:40:00', 1, 1, '2023-01-04'),
(52, 'المياه', 5, 0, 51, 52, '0.00', 3, '17190.00', 1, NULL, 1, 1, '2023-01-04 07:51:02', '2023-02-24 07:30:52', 1, 1, '2023-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `relatediternalaccounts` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `name`, `active`, `relatediternalaccounts`) VALUES
(1, 'راس المال', 1, 0),
(2, 'مورد', 1, 1),
(3, 'عميل', 1, 1),
(4, 'مندوب', 1, 1),
(5, 'خط انتاج', 1, 1),
(6, 'بنكى', 1, 0),
(7, 'مصروفات', 1, 0),
(8, 'قسم داخلى', 1, 1),
(9, 'عام\r\n', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`) VALUES
(1, 'admin', 'test@gmail.com', 'admin', '$2y$10$wU7qK0lpQEgfHrTAfFbp/uVbdBR173rUn8Wd1mF8G6mb4VL.EgMFe', '2022-09-12 08:46:56', '2022-09-12 08:46:56', NULL, NULL, 1),
(10, 'shehah', 'admin@gmail.com', 'admins', '$2y$10$vtjGS.iTwqKx5d6.8HRA5eZWAd.JzHnVskLUyKHEx1XD8LAAHXA9S', '2023-02-25 15:26:05', '2023-02-25 15:26:05', NULL, NULL, 1),
(11, 'shehah', 'admin@gmail.com', 'admins', '$2y$10$5ejxKTrr2GnNH7kI7qIfVu7vHiAbqZ6Ny/K6ZAZq1MgtccgWLn3yW', '2023-02-25 15:26:35', '2023-02-25 15:26:35', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admins_shifts`
--

CREATE TABLE `admins_shifts` (
  `id` bigint(20) NOT NULL,
  `shift_code` bigint(20) NOT NULL COMMENT 'كود الشفيت المستخدم مع الربط مع حركه النقط',
  `admin_id` int(11) NOT NULL,
  `treasuries_id` int(11) NOT NULL,
  `treasuries_balnce_in_shift_start` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'رصيد الخزنة في بدايه استلام الشفت للمستخدم',
  `start_date` datetime NOT NULL COMMENT 'توقيت بدايه الشفت',
  `end_date` datetime DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'هل تم انتهاء الشفت',
  `is_delivered_and_review` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'هل تم مرراجعه واستلام شفت الخزنة',
  `delivered_to_admin_id` int(11) DEFAULT NULL COMMENT 'كود المستخدم الذي تسلم هذا الشفت واراجعه',
  `delivered_to_admin_sift_id` bigint(20) DEFAULT NULL COMMENT 'كود الشفت الذي تسلم هذا الشفت وارجعه',
  `delivered_to_treasuries_id` int(11) DEFAULT NULL COMMENT 'كود الخزنه التي راجعت واستلمت هذا الشفت',
  `money_should_deviled` decimal(10,2) DEFAULT NULL COMMENT 'النقدية التي يفترض ان تسلم ',
  `what_realy_delivered` decimal(10,2) DEFAULT NULL COMMENT 'المبلغ الفعلي الذي تم تسلمه ',
  `money_state` tinyint(1) DEFAULT NULL COMMENT '0-blanced -1-inability 2-extra \r\nصفر متزن - واحد  يوجد عز - اثنين يوجد زيادة',
  `money_state_value` decimal(10,2) DEFAULT NULL COMMENT 'قيمة العجز او الزياده ان وجدت',
  `receive_type` tinyint(1) DEFAULT NULL COMMENT 'واحد استلام علي نفس الخزنة - اثنين استلام علي خزنة اخري',
  `review_receive_date` datetime DEFAULT NULL COMMENT 'تاريخ مراجعه واستلام هذا الشفت',
  `treasuries_transactions_id` bigint(20) DEFAULT NULL COMMENT 'رقم الايصال بجدول تحصيل النقدية لحركة الخزن',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول شفتات الخزن للمستخدمين ';

--
-- Dumping data for table `admins_shifts`
--

INSERT INTO `admins_shifts` (`id`, `shift_code`, `admin_id`, `treasuries_id`, `treasuries_balnce_in_shift_start`, `start_date`, `end_date`, `is_finished`, `is_delivered_and_review`, `delivered_to_admin_id`, `delivered_to_admin_sift_id`, `delivered_to_treasuries_id`, `money_should_deviled`, `what_realy_delivered`, `money_state`, `money_state_value`, `receive_type`, `review_receive_date`, `treasuries_transactions_id`, `added_by`, `created_at`, `notes`, `com_code`, `date`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, 1, '0.00', '2022-09-17 22:47:52', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-17 22:47:52', NULL, 1, '2022-09-17', NULL, '2022-09-17 22:47:52'),
(2, 0, 1, 1, '0.00', '2022-09-21 09:34:08', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 09:34:08', NULL, 1, '2022-09-21', NULL, '2022-09-21 09:34:08'),
(3, 1, 1, 3, '0.00', '2022-09-21 13:47:28', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 13:47:28', NULL, 1, '2022-09-21', NULL, '2022-09-21 13:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `admins_treasuries`
--

CREATE TABLE `admins_treasuries` (
  `id` int(11) NOT NULL,
  `admin_id` bigint(20) NOT NULL,
  `treasuries_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='صلاحيات خزن المستخدمين الخاصة';

--
-- Dumping data for table `admins_treasuries`
--

INSERT INTO `admins_treasuries` (`id`, `admin_id`, `treasuries_id`, `active`, `added_by`, `created_at`, `updated_by`, `updated_at`, `com_code`, `date`) VALUES
(1, 1, 1, 1, 1, '2022-09-16 14:34:11', 1, '2022-09-16 14:34:11', 1, '2022-09-16'),
(2, 1, 3, 1, 1, '2022-09-20 10:28:15', NULL, '2022-09-20 10:28:15', 1, '2022-09-20'),
(3, 1, 6, 1, 1, '2023-02-24 07:08:44', NULL, '2023-02-24 07:08:44', 1, '2023-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_panel_settings`
--

CREATE TABLE `admin_panel_settings` (
  `id` int(11) NOT NULL,
  `system_name` varchar(250) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `general_alert` varchar(150) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `customer_parent_account_number` bigint(20) NOT NULL COMMENT 'رقم الحساب الاب للعملاء',
  `suppliers_parent_account_number` bigint(20) NOT NULL COMMENT 'الحساب الاب للموردين',
  `delegate_parent_account_number` bigint(20) NOT NULL COMMENT 'رقم الحساب المالى للاب للمناديب',
  `employees_parent_account_number` bigint(20) NOT NULL COMMENT 'رقم الحساب المالى للموظفين',
  `production_lines_parent_account` bigint(20) NOT NULL COMMENT 'كود الحساب الاب للخطواط الانتاج الوراش ',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_panel_settings`
--

INSERT INTO `admin_panel_settings` (`id`, `system_name`, `photo`, `active`, `general_alert`, `address`, `phone`, `customer_parent_account_number`, `suppliers_parent_account_number`, `delegate_parent_account_number`, `employees_parent_account_number`, `production_lines_parent_account`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `notes`) VALUES
(1, 'شهاب mohamed', '1670422308629.png', 1, NULL, 'الوطنى العربى one', '01032162554', 3, 1, 8, 9, 51, '0000-00-00 00:00:00', '2023-01-04 20:35:17', 0, 1, 1, 'سيستم محسبات');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `customer_code` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `account_number` bigint(20) NOT NULL,
  `start_balance_status` tinyint(4) NOT NULL COMMENT 'e 1-credit -2 debit 3-balanced',
  `start_balance` decimal(10,2) NOT NULL COMMENT 'دائن او مدين او متزن اول المدة',
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` varchar(225) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول الشجرة المحاسبية العامة';

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_code`, `name`, `account_number`, `start_balance_status`, `start_balance`, `current_balance`, `notes`, `added_by`, `updated_by`, `created_at`, `updated_at`, `active`, `com_code`, `date`, `address`, `phones`) VALUES
(1, 1, 'شهاب محمد سلامه', 26, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 12:48:27', '2023-01-04 21:29:01', 1, 1, '2022-10-29', 'الفيوم', '01021635236'),
(2, 2, 'احمد محمد', 27, 2, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 12:49:10', '2022-11-20 06:02:06', 1, 1, '2022-10-29', 'القاهر', '010738927'),
(3, 3, 'شعبان احمد', 28, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 12:59:45', '2022-10-29 12:59:45', 1, 1, '2022-10-29', 'الجيزه', '01235876'),
(4, 4, 'رجب محمد', 29, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:17:43', '2022-12-07 16:44:02', 1, 1, '2022-10-29', 'المينا', '01028375'),
(5, 5, 'شهلى', 30, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:26:29', '2022-11-20 06:02:17', 1, 1, '2022-10-29', 'ءالا', '01083747'),
(6, 6, 'احمده تيسهع', 31, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:39:49', '2022-10-29 13:39:49', 1, 1, '2022-10-29', 'القاهرو', '01083892'),
(7, 7, 'اجمد ستيى', 32, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:44:49', '2022-11-18 05:15:01', 1, 1, '2022-10-29', 'سنورس', '01023737248'),
(8, 8, 'جمال مبارك', 33, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:46:29', '2022-10-29 13:46:29', 1, 1, '2022-10-29', 'اكتوبر', '0101010280'),
(9, 9, 'مرس جمال', 34, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:49:05', '2022-10-29 13:49:05', 1, 1, '2022-10-29', 'النصر', '01010109982'),
(10, 10, 'كريم كبنم', 35, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:56:41', '2022-10-29 13:56:41', 1, 1, '2022-10-29', 'الجيو', '02984977'),
(11, 11, 'الشحات', 36, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 13:58:07', '2022-10-29 13:58:07', 1, 1, '2022-10-29', 'السادس', '08397398'),
(12, 12, 'كريم', 37, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 14:02:25', '2022-10-29 14:02:25', 1, 1, '2022-10-29', 'تبى', '23988747'),
(13, 13, 'شيكت', 38, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 14:22:41', '2022-10-29 14:22:41', 1, 1, '2022-10-29', 'دليفار', '10282398'),
(14, 14, 'يبتى', 39, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 14:26:09', '2022-10-29 14:26:09', 1, 1, '2022-10-29', 'ابلا', '43897'),
(15, 15, 'احمد', 40, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 14:34:43', '2022-10-29 14:34:43', 1, 1, '2022-10-29', 'يتنيى', '01092394'),
(16, 16, 'aidh', 41, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 16:06:42', '2022-12-03 11:17:37', 1, 1, '2022-10-29', 'sh nd', '3208474'),
(17, 17, 'مرس قهخب', 42, 3, '0.00', '0.00', NULL, 1, NULL, '2022-10-29 16:28:13', '2022-10-29 16:28:13', 1, 1, '2022-10-29', 'القاهيى', '010398498'),
(18, 18, 'جمال السيد', 43, 3, '0.00', '-300.00', NULL, 1, NULL, '2022-10-29 16:45:30', '2022-12-06 10:13:39', 1, 1, '2022-10-29', 'الصاسى', '0290388'),
(19, 19, 'احمد عبد', 44, 3, '0.00', '-100.00', NULL, 1, NULL, '2022-10-29 16:46:00', '2022-12-03 13:02:35', 1, 1, '2022-10-29', 'الصتات', '019304787'),
(20, 20, 'نتستنى', 45, 3, '0.00', '-100000.00', NULL, 1, NULL, '2022-10-29 17:02:16', '2022-12-10 08:33:01', 1, 1, '2022-10-29', 'نيتةى', '010293749'),
(21, 21, 'محمد كريم', 48, 3, '0.00', '-100.00', NULL, 1, 1, '2022-12-07 15:50:19', '2022-12-07 16:41:54', 1, 1, '2022-12-07', 'الفيوم', '01021635236'),
(22, 22, 'السيم', 50, 1, '0.00', '0.00', NULL, 1, 1, '2022-12-07 16:15:00', '2023-02-17 09:42:21', 1, 1, '2022-12-07', 'السعوديه', '01021635236');

-- --------------------------------------------------------

--
-- Table structure for table `delegates`
--

CREATE TABLE `delegates` (
  `id` bigint(20) NOT NULL,
  `delegate_code` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `account_number` bigint(20) NOT NULL,
  `start_balance_status` tinyint(4) NOT NULL COMMENT 'e 1-credit -2 debit 3-balanced',
  `start_balance` decimal(10,2) NOT NULL COMMENT 'دائن او مدين او متزن اول المدة',
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` varchar(225) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `percent_type` tinyint(4) NOT NULL COMMENT 'نوع عمولة المندوب  بشكل عام\r\nواحد اجر ثابت لكل فاتورة - لو اتنين  نسبة بكل فاتورة	',
  `percent_collect_commission` decimal(10,2) NOT NULL COMMENT 'نسبة المندوب بالتحصيل  الفواتير الاجل ',
  `percent_salaes_commission_kataei` decimal(10,2) NOT NULL COMMENT 'نسبة عمولة المندوب بالمبيعات قطاعلي	',
  `percent_salaes_commission_nosjomla` decimal(10,2) NOT NULL COMMENT 'عمول المندوب بمبيعات نص الجملة	',
  `percent_salaes_commission_jomla` decimal(10,2) NOT NULL COMMENT 'نسبة عمولة المندوب بالمبيعات بالجملة	',
  `phones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول المناديب';

--
-- Dumping data for table `delegates`
--

INSERT INTO `delegates` (`id`, `delegate_code`, `name`, `account_number`, `start_balance_status`, `start_balance`, `current_balance`, `notes`, `added_by`, `updated_by`, `created_at`, `updated_at`, `active`, `com_code`, `date`, `address`, `percent_type`, `percent_collect_commission`, `percent_salaes_commission_kataei`, `percent_salaes_commission_nosjomla`, `percent_salaes_commission_jomla`, `phones`) VALUES
(1, 1, 'عاطف دياب محمد', 6, 0, '0.00', '0.00', NULL, 1, 1, '2022-09-29 00:29:26', '2023-01-04 20:58:53', 1, 1, '2022-09-29', NULL, 1, '0.00', '0.00', '0.00', '0.00', NULL),
(2, 2, 'شهاب محمد سلامه', 18, 3, '0.00', '-2996.00', NULL, 1, 1, '2022-10-08 08:42:47', '2022-12-10 08:39:19', 1, 1, '2022-10-08', 'Egypt', 1, '100.00', '10.00', '4.00', '5.00', '010283'),
(3, 3, 'احمد السيد', 46, 1, '-1000.00', '-1055.22', NULL, 1, 1, '2022-11-06 17:51:41', '2023-01-04 21:32:07', 1, 1, '2022-11-06', NULL, 2, '0.00', '2.00', '2.00', '1.00', '00093759-3');

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
-- Table structure for table `inv_itemcard`
--

CREATE TABLE `inv_itemcard` (
  `id` bigint(20) NOT NULL,
  `item_code` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `item_type` tinyint(1) NOT NULL COMMENT 'واحد مخزنى -اثنين استهلاكى -ثلاثه عهد',
  `barcode` varchar(50) NOT NULL,
  `inv_itemcard_categories_id` int(11) NOT NULL,
  `parent_inv_itemcard_id` bigint(20) DEFAULT NULL COMMENT 'كود الصنف الاب له',
  `does_has_retailunit` tinyint(1) NOT NULL COMMENT 'هل للصنف وحده تجزئه',
  `retail_uom_id` int(11) DEFAULT NULL COMMENT 'وحده تجزئه',
  `uom_id` int(11) DEFAULT NULL COMMENT 'وحده قياس الاب ',
  `retail_uom_quntToParent` decimal(10,2) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `com_code` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL COMMENT 'السعر القطاعى بوحده القياس الاساسيه',
  `nos_gomla_price` decimal(10,2) NOT NULL COMMENT 'السعر نص الجمله قطاعى ',
  `gomla_price` decimal(10,2) NOT NULL COMMENT 'السعر الجمله بوحده القياس الاساسيه',
  `price_retail` decimal(10,2) DEFAULT NULL COMMENT 'السعر القطاعى بوحده القياس التجزئه',
  `nos_gomla_price_retail` decimal(10,2) DEFAULT NULL COMMENT 'السعر نص الجمله قطاعى  مع وحده التجزيه',
  `gomla_price_retail` decimal(10,2) DEFAULT NULL COMMENT 'السعر الجمله بوحده القياس التجزئه',
  `cost_price` decimal(10,2) NOT NULL COMMENT 'متوسط التكلفة للصنف بالوحدة الاساسية	',
  `cost_price_retail` decimal(10,2) DEFAULT NULL COMMENT 'متوسط التكلفة للصنف بوحدة قياس التجزئة	',
  `has_fixced_price` tinyint(1) NOT NULL COMMENT 'هل للصنف سعر ثابت بالفواتير  او قابل للتغير بالفواتير',
  `QUENTITY` decimal(10,3) DEFAULT NULL COMMENT 'الكمية بالوحده الاب',
  `All_QUENTITY` decimal(10,2) DEFAULT NULL COMMENT 'كل كميه الصنفه بواحده الاب مباشره بدون اى تحولات',
  `QUENTITY_Retail` decimal(10,3) DEFAULT NULL COMMENT 'كمية التجزئة المتبقية من الوحده الاب في حالة وجود وحده تجزئة للصنف',
  `QUENTITY_all_Retails` decimal(10,3) DEFAULT NULL COMMENT 'كل الكمية محولة بوحده التجزئة ',
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv_itemcard`
--

INSERT INTO `inv_itemcard` (`id`, `item_code`, `name`, `item_type`, `barcode`, `inv_itemcard_categories_id`, `parent_inv_itemcard_id`, `does_has_retailunit`, `retail_uom_id`, `uom_id`, `retail_uom_quntToParent`, `added_by`, `updated_by`, `updated_at`, `created_at`, `active`, `date`, `com_code`, `price`, `nos_gomla_price`, `gomla_price`, `price_retail`, `nos_gomla_price_retail`, `gomla_price_retail`, `cost_price`, `cost_price_retail`, `has_fixced_price`, `QUENTITY`, `All_QUENTITY`, `QUENTITY_Retail`, `QUENTITY_all_Retails`, `photo`) VALUES
(1, 1, 'shehab mohamed salem', 1, 'item1', 1, 0, 1, NULL, NULL, '300.00', 1, NULL, '2022-09-15 08:39:53', '2022-09-15 08:39:53', 1, '2022-09-15', 1, '200.00', '32.00', '43.00', '40.00', '94.00', '930.00', '32.00', '934.00', 1, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'jdjvgsbg', 2, 'item2', 1, 1, 1, 1, NULL, '300.00', 1, NULL, '2022-09-15 09:43:17', '2022-09-15 09:43:17', 1, '2022-09-15', 1, '10000.00', '943.00', '98.00', '89.00', '843.00', '8.00', '89.00', '7.00', 1, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'شهاب محمد سلامه', 1, 'item3', 1, 1, 1, 3, 2, '400.00', 1, 1, '2022-11-01 17:09:19', '2022-09-24 15:58:15', 1, '2022-09-24', 1, '100000.00', '32.00', '98.00', '0.00', '0.00', '0.00', '100.00', '0.25', 1, '1.000', '1.00', '0.000', '400.000', NULL),
(4, 4, 'لحوم', 2, 'item4', 1, 3, 1, 3, 2, '100.00', 1, 1, '2022-12-26 09:07:17', '2022-09-25 13:53:12', 1, '2022-09-25', 1, '100.00', '100.00', '100.00', '100.00', '100.00', '100.00', '343.00', '3.43', 1, '115.000', '115.10', '10.000', '11510.000', NULL),
(5, 5, 'عسل', 2, 'item5', 3, 4, 0, NULL, 4, NULL, 1, 1, '2023-01-30 16:35:11', '2022-10-15 06:38:09', 1, '2022-10-15', 1, '600.00', '32.00', '43.00', NULL, NULL, NULL, '10.00', NULL, 1, '348.000', '348.00', NULL, NULL, NULL),
(6, 6, 'ايس', 2, 'item6', 1, 5, 1, 5, 4, '100.00', 1, 1, '2023-01-31 13:21:46', '2022-10-15 09:45:05', 1, '2022-10-15', 1, '600.00', '320.00', '98.00', '100.00', '843.00', '100.00', '10.00', '0.10', 1, '178.000', '178.00', '0.000', '17800.000', NULL),
(7, 7, '8', 1, 'item7', 3, 5, 0, NULL, 4, NULL, 1, NULL, '2022-11-09 14:38:21', '2022-11-09 14:38:21', 1, '2022-11-09', 1, '600.00', '320.00', '100.00', NULL, NULL, NULL, '500.00', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(8, 8, 'تكيف', 1, 'item8', 3, 6, 0, NULL, 4, NULL, 1, NULL, '2023-02-22 20:43:26', '2022-12-07 15:57:16', 1, '2022-12-07', 1, '10000.00', '120000.00', '130000.00', NULL, NULL, NULL, '599.00', NULL, 1, '68.000', '68.00', NULL, NULL, '1670421436745.jpg'),
(9, 9, 'المكيف', 1, 'item9', 3, 0, 0, NULL, 3, NULL, 1, NULL, '2023-01-04 21:31:59', '2022-12-07 16:18:29', 1, '2022-12-07', 1, '600.00', '943.00', '1009.00', NULL, NULL, NULL, '300.00', NULL, 1, '33.000', '33.00', NULL, NULL, NULL),
(10, 10, 'المياه', 1, 'item10', 3, 0, 0, NULL, 4, NULL, 1, NULL, '2023-02-24 07:30:52', '2022-12-26 11:24:46', 1, '2022-12-26', 1, '100.00', '94.00', '90.00', NULL, NULL, NULL, '39.00', NULL, 1, '640.000', '640.00', NULL, NULL, NULL),
(11, 11, 'فراخ', 1, 'item11', 3, 0, 0, NULL, 4, NULL, 1, NULL, '2023-02-24 07:30:52', '2023-02-22 20:52:39', 1, '2023-02-22', 1, '302.00', '32.00', '100.00', NULL, NULL, NULL, '10.00', NULL, 1, '102.000', '102.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_itemcard_batches`
--

CREATE TABLE `inv_itemcard_batches` (
  `id` bigint(20) NOT NULL,
  `store_id` int(11) NOT NULL COMMENT 'كود المخزن',
  `item_code` int(11) NOT NULL COMMENT 'كود الصنف الالي ',
  `inv_uoms_id` int(11) NOT NULL COMMENT 'كود الوحده الاب ',
  `unit_cost_price` decimal(10,2) NOT NULL COMMENT 'سعر الشراء للوحده',
  `quantity` decimal(10,2) NOT NULL COMMENT 'الكمية بالوحده الاب',
  `total_cost_price` decimal(10,2) NOT NULL COMMENT 'اجمالي سعر شراء الباتش ككل',
  `production_date` date DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `auto_serial` bigint(20) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_send_to_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول  باتشات الاصناف بالمخازن';

--
-- Dumping data for table `inv_itemcard_batches`
--

INSERT INTO `inv_itemcard_batches` (`id`, `store_id`, `item_code`, `inv_uoms_id`, `unit_cost_price`, `quantity`, `total_cost_price`, `production_date`, `expired_date`, `com_code`, `auto_serial`, `added_by`, `created_at`, `updated_at`, `updated_by`, `is_send_to_archived`) VALUES
(1, 2, 5, 4, '66.00', '0.00', '0.00', '2022-10-14', '2022-10-29', 1, 3, 1, '2022-10-15 18:12:30', '2022-12-26 11:00:55', 1, 0),
(2, 3, 4, 2, '5000.00', '0.10', '500.00', '2022-10-14', '2022-10-29', 1, 4, 1, '2022-10-15 18:14:13', '2022-10-15 18:14:13', NULL, 0),
(3, 1, 5, 4, '343.00', '0.00', '0.00', '2022-10-15', '2022-10-28', 1, 5, 1, '2022-10-15 18:25:05', '2022-12-26 13:58:13', 1, 0),
(4, 3, 5, 4, '10.00', '80.00', '800.00', '2022-10-20', '2022-11-05', 1, 6, 1, '2022-10-20 12:58:25', '2023-01-30 16:35:11', 1, 0),
(5, 2, 5, 4, '10.00', '67.00', '670.00', '2022-10-14', '2022-10-28', 1, 7, 1, '2022-10-20 12:59:34', '2022-12-26 11:00:55', 1, 0),
(6, 2, 5, 4, '66.00', '100.00', '6600.00', '2022-10-14', '2022-10-27', 1, 8, 1, '2022-10-20 13:27:59', '2022-12-26 11:00:55', 1, 0),
(7, 2, 4, 2, '343.00', '41.00', '14063.00', '2022-10-20', '2022-10-22', 1, 9, 1, '2022-10-20 13:29:14', '2023-02-17 09:41:45', 1, 0),
(8, 2, 5, 4, '10.00', '95.00', '950.00', '2022-10-11', '2022-11-04', 1, 10, 1, '2022-11-01 06:23:21', '2022-12-26 11:00:55', 1, 0),
(9, 2, 4, 2, '10.00', '12.00', '120.00', '2022-11-02', '2022-11-17', 1, 11, 1, '2022-11-01 06:26:38', '2023-02-17 09:41:45', 1, 0),
(10, 2, 5, 4, '10.00', '6.00', '60.00', '2022-10-31', '2022-11-12', 1, 12, 1, '2022-11-01 06:29:01', '2022-12-26 11:00:55', 1, 0),
(11, 3, 4, 2, '70.00', '1.00', '70.00', NULL, NULL, 1, 13, 1, '2022-11-01 17:02:00', '2022-11-01 17:02:00', NULL, 0),
(12, 1, 4, 2, '60.00', '1.00', '60.00', NULL, NULL, 1, 14, 1, '2022-11-01 17:03:14', '2022-11-05 08:39:16', 1, 0),
(13, 1, 4, 2, '60.00', '1.00', '60.00', NULL, NULL, 1, 15, 1, '2022-11-01 17:03:21', '2022-11-01 17:03:21', NULL, 0),
(14, 1, 3, 2, '50000.00', '1.00', '50000.00', NULL, NULL, 1, 16, 1, '2022-11-01 17:09:19', '2022-11-01 17:09:19', NULL, 0),
(15, 2, 4, 2, '343.00', '59.00', '20237.00', '2022-11-09', '2022-11-26', 1, 17, 1, '2022-11-09 14:33:32', '2023-02-17 09:41:45', 1, 0),
(16, 2, 6, 4, '60.00', '88.00', '5280.00', '2022-11-03', '2022-12-01', 1, 18, 1, '2022-11-09 16:11:18', '2023-01-31 13:21:46', 1, 0),
(17, 3, 6, 4, '10.00', '90.00', '900.00', '2022-11-15', '2022-11-30', 1, 19, 1, '2022-11-15 09:27:37', '2022-12-07 16:02:07', 1, 0),
(18, 4, 8, 4, '599.00', '68.00', '40732.00', NULL, NULL, 1, 20, 1, '2022-12-07 15:59:37', '2023-02-22 20:43:26', 1, 0),
(19, 4, 9, 3, '300.00', '33.00', '9900.00', NULL, NULL, 1, 21, 1, '2022-12-07 16:21:07', '2023-01-04 21:31:59', 1, 0),
(20, 4, 10, 4, '39.00', '324.00', '12636.00', NULL, NULL, 1, 22, 1, '2022-12-26 11:25:54', '2023-02-24 07:30:52', 1, 0),
(21, 4, 10, 4, '89.00', '102.00', '9078.00', NULL, NULL, 1, 23, 1, '2022-12-26 11:32:09', '2022-12-26 11:32:09', NULL, 0),
(22, 4, 10, 4, '29.00', '102.00', '2958.00', NULL, NULL, 1, 24, 1, '2022-12-26 11:36:14', '2022-12-26 11:36:14', NULL, 0),
(23, 3, 4, 2, '100.00', '10.00', '1000.00', '2022-10-19', '2022-10-29', 1, 25, 1, '2022-12-26 13:46:59', '2022-12-26 13:46:59', NULL, 0),
(24, 4, 10, 4, '10.00', '112.00', '1120.00', NULL, NULL, 1, 26, 1, '2022-12-26 13:48:42', '2022-12-26 13:55:24', 1, 0),
(25, 4, 11, 4, '10.00', '102.00', '1020.00', NULL, NULL, 1, 27, 1, '2023-02-24 07:30:52', '2023-02-24 07:30:52', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_itemcard_categories`
--

CREATE TABLE `inv_itemcard_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL COMMENT 'for search',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv_itemcard_categories`
--

INSERT INTO `inv_itemcard_categories` (`id`, `name`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(1, 'ofewv', '2022-09-14 10:31:43', '2022-09-14 10:31:43', 1, NULL, 1, '2022-09-14', 1),
(3, 'لحوم', '2022-10-15 06:24:52', '2022-10-15 06:24:57', 1, 1, 1, '2022-10-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inv_itemcard_movements`
--

CREATE TABLE `inv_itemcard_movements` (
  `id` bigint(20) NOT NULL,
  `inv_itemcard_movements_categories` int(11) NOT NULL,
  `item_code` bigint(20) NOT NULL,
  `items_movements_types` int(11) NOT NULL,
  `FK_table` bigint(20) NOT NULL,
  `store_id` int(11) NOT NULL COMMENT 'كود المخزن',
  `FK_table_details` bigint(20) NOT NULL,
  `byan` varchar(100) NOT NULL,
  `quantity_befor_movement` varchar(60) NOT NULL,
  `quantity_after_move` varchar(60) NOT NULL,
  `quantity_befor_move_store` varchar(100) NOT NULL COMMENT 'كل الكمية للصنف قبل الحركة  بالمخزن المحدد مع الحركة',
  `quantity_after_move_store` varchar(100) NOT NULL COMMENT 'كل الكمية للصنف بعد الحركة  بالمخزن المحدد مع الحركة',
  `added_by` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `com_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_itemcard_movements`
--

INSERT INTO `inv_itemcard_movements` (`id`, `inv_itemcard_movements_categories`, `item_code`, `items_movements_types`, `FK_table`, `store_id`, `FK_table_details`, `byan`, `quantity_befor_movement`, `quantity_after_move`, `quantity_befor_move_store`, `quantity_after_move_store`, `added_by`, `date`, `created_at`, `com_code`) VALUES
(1, 1, 10, 1, 1, 4, 1, 'نظير مشتريات من المورد  محمد رمضان فاتورة رقم 1', 'عدد  518 ستثى', 'عدد  620 ستثى', 'عدد  518 ستثى', 'عدد  620 ستثى', 1, '2022-12-26', '2022-12-26 13:55:24', 1),
(2, 3, 5, 6, 3, 1, 15, 'جرد بالمخازن للباتش رقم 5 جرد رقم 3', 'عدد  350 ستثى', 'عدد  348 ستثى', 'عدد  2 ستثى', 'عدد  0 ستثى', 1, '2022-12-26', '2022-12-26 13:58:13', 1),
(3, 2, 9, 4, 22, 4, 16, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 22', 'عدد  41 shehab mohamed salem', 'عدد  38 shehab mohamed salem', 'عدد  41 shehab mohamed salem', 'عدد  38 shehab mohamed salem', 1, '2023-01-04', '2023-01-04 21:08:41', 1),
(4, 2, 9, 15, 22, 4, 16, 'حذف الصنف من تفاصيل  فاتورة مبيعات  للعميل   طياري لايوجد فاتورة رقم ', 'عدد  38 shehab mohamed salem', 'عدد  41 shehab mohamed salem', 'عدد  38 shehab mohamed salem', 'عدد  41 shehab mohamed salem', 1, '2023-01-04', '2023-01-04 21:08:58', 1),
(5, 2, 9, 4, 22, 4, 17, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 22', 'عدد  41 shehab mohamed salem', 'عدد  38 shehab mohamed salem', 'عدد  41 shehab mohamed salem', 'عدد  38 shehab mohamed salem', 1, '2023-01-04', '2023-01-04 21:09:03', 1),
(6, 2, 9, 4, 23, 4, 18, 'نظير مبيعات  للعميل  شهاب محمد سلامه فاتورة رقم 23', 'عدد  38 shehab mohamed salem', 'عدد  34 shehab mohamed salem', 'عدد  38 shehab mohamed salem', 'عدد  34 shehab mohamed salem', 1, '2023-01-04', '2023-01-04 21:27:27', 1),
(7, 2, 9, 4, 24, 4, 19, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 24', 'عدد  34 shehab mohamed salem', 'عدد  33 shehab mohamed salem', 'عدد  34 shehab mohamed salem', 'عدد  33 shehab mohamed salem', 1, '2023-01-04', '2023-01-04 21:31:59', 1),
(8, 4, 5, 17, 1, 3, 1, ' نظير ًرف خامات   الي خط انتاج  المياه فاتورة رقم 1', 'عدد  348 ستثى', 'عدد  319 ستثى', 'عدد  80 ستثى', 'عدد  51 ستثى', 1, '2023-01-17', '2023-01-17 13:20:49', 1),
(9, 4, 5, 17, 1, 3, 2, ' نظير ًرف خامات   الي خط انتاج  المياه فاتورة رقم 1', 'عدد  319 ستثى', 'عدد  317 ستثى', 'عدد  51 ستثى', 'عدد  49 ستثى', 1, '2023-01-17', '2023-01-17 13:27:50', 1),
(10, 4, 5, 17, 1, 3, 3, ' نظير ًرف خامات   الي خط انتاج  المياه فاتورة رقم 1', 'عدد  317 ستثى', 'عدد  307 ستثى', 'عدد  49 ستثى', 'عدد  39 ستثى', 1, '2023-01-30', '2023-01-30 15:53:17', 1),
(11, 4, 5, 17, 1, 3, 4, ' نظير ًرف خامات   الي خط انتاج  المياه فاتورة رقم 1', 'عدد  307 ستثى', 'عدد  306 ستثى', 'عدد  39 ستثى', 'عدد  38 ستثى', 1, '2023-01-30', '2023-01-30 16:06:40', 1),
(12, 4, 5, 18, 1, 3, 4, ' نظير حذف سطر الصنف من فاتورة صرف خامات  لخط الانتاج      المياه فاتورة رقم 1', 'عدد  306 ستثى', 'عدد  307 ستثى', 'عدد  38 ستثى', 'عدد  39 ستثى', 1, '2023-01-30', '2023-01-30 16:17:03', 1),
(13, 4, 5, 18, 1, 3, 3, ' نظير حذف سطر الصنف من فاتورة صرف خامات  لخط الانتاج      المياه فاتورة رقم 1', 'عدد  307 ستثى', 'عدد  317 ستثى', 'عدد  39 ستثى', 'عدد  49 ستثى', 1, '2023-01-30', '2023-01-30 16:35:11', 1),
(14, 4, 5, 18, 1, 3, 2, ' نظير حذف سطر الصنف من فاتورة صرف خامات  لخط الانتاج      المياه فاتورة رقم 1', 'عدد  317 ستثى', 'عدد  319 ستثى', 'عدد  49 ستثى', 'عدد  51 ستثى', 1, '2023-01-30', '2023-01-30 16:35:11', 1),
(15, 4, 5, 18, 1, 3, 1, ' نظير حذف سطر الصنف من فاتورة صرف خامات  لخط الانتاج      المياه فاتورة رقم 1', 'عدد  319 ستثى', 'عدد  348 ستثى', 'عدد  51 ستثى', 'عدد  80 ستثى', 1, '2023-01-30', '2023-01-30 16:35:11', 1),
(16, 4, 8, 17, 1, 4, 5, ' نظير ًرف خامات   الي خط انتاج  المياه فاتورة رقم 1', 'عدد  70 ستثى', 'عدد  69 ستثى', 'عدد  70 ستثى', 'عدد  69 ستثى', 1, '2023-01-30', '2023-01-30 16:47:25', 1),
(17, 1, 6, 3, 1, 2, 2, ' نظير مرتجع مشتريات عام الي المورد ابو شهاب فاتورة رقم 1', 'عدد  188 ستثى', 'عدد  178 ستثى', 'عدد  98 ستثى', 'عدد  88 ستثى', 1, '2023-01-31', '2023-01-31 13:21:46', 1),
(18, 2, 8, 4, 1, 4, 20, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 1', 'عدد  69 ستثى', 'عدد  68 ستثى', 'عدد  69 ستثى', 'عدد  68 ستثى', 1, '2023-02-01', '2023-02-01 13:23:15', 1),
(19, 2, 8, 15, 1, 4, 20, 'حذف الصنف من تفاصيل  فاتورة مبيعات  للعميل   طياري لايوجد فاتورة رقم ', 'عدد  68 ستثى', 'عدد  69 ستثى', 'عدد  68 ستثى', 'عدد  69 ستثى', 1, '2023-02-01', '2023-02-01 13:23:21', 1),
(20, 2, 8, 4, 1, 4, 21, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 1', 'عدد  69 ستثى', 'عدد  68 ستثى', 'عدد  69 ستثى', 'عدد  68 ستثى', 1, '2023-02-01', '2023-02-01 13:24:32', 1),
(21, 2, 8, 4, 1, 4, 22, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 1', 'عدد  68 ستثى', 'عدد  67 ستثى', 'عدد  68 ستثى', 'عدد  67 ستثى', 1, '2023-02-01', '2023-02-01 13:24:33', 1),
(22, 2, 8, 15, 1, 4, 22, 'حذف الصنف من تفاصيل  فاتورة مبيعات  للعميل   طياري لايوجد فاتورة رقم 1', 'عدد  67 ستثى', 'عدد  68 ستثى', 'عدد  67 ستثى', 'عدد  68 ستثى', 1, '2023-02-01', '2023-02-01 13:25:10', 1),
(23, 2, 8, 15, 1, 4, 21, 'حذف الصنف من تفاصيل  فاتورة مبيعات  للعميل   طياري لايوجد فاتورة رقم 1', 'عدد  68 ستثى', 'عدد  69 ستثى', 'عدد  68 ستثى', 'عدد  69 ستثى', 1, '2023-02-01', '2023-02-01 13:25:10', 1),
(24, 2, 8, 4, 2, 4, 23, 'نظير مبيعات  للعميل   طياري لايوجد فاتورة رقم 2', 'عدد  69 ستثى', 'عدد  68 ستثى', 'عدد  69 ستثى', 'عدد  68 ستثى', 1, '2023-02-22', '2023-02-22 20:43:26', 1),
(25, 4, 10, 19, 1, 4, 1, 'نظير فاتورة استلام انتاج تام من خط الانتاج   المياه فاتورة رقم 1', 'عدد  620 ستثى', 'عدد  630 ستثى', 'عدد  620 ستثى', 'عدد  630 ستثى', 1, '2023-02-24', '2023-02-24 07:30:52', 1),
(26, 4, 10, 19, 1, 4, 2, 'نظير فاتورة استلام انتاج تام من خط الانتاج   المياه فاتورة رقم 1', 'عدد  630 ستثى', 'عدد  640 ستثى', 'عدد  630 ستثى', 'عدد  640 ستثى', 1, '2023-02-24', '2023-02-24 07:30:52', 1),
(27, 4, 11, 19, 1, 4, 3, 'نظير فاتورة استلام انتاج تام من خط الانتاج   المياه فاتورة رقم 1', 'عدد  0 ستثى', 'عدد  102 ستثى', 'عدد  0 ستثى', 'عدد  102 ستثى', 1, '2023-02-24', '2023-02-24 07:30:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inv_itemcard_movements_categories`
--

CREATE TABLE `inv_itemcard_movements_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_itemcard_movements_categories`
--

INSERT INTO `inv_itemcard_movements_categories` (`id`, `name`) VALUES
(1, 'حركة علي المشتريات'),
(2, 'حركة علي المبيعات'),
(3, 'حركة علي المخازن'),
(4, 'حركة علي خطواط الانتاج');

-- --------------------------------------------------------

--
-- Table structure for table `inv_itemcard_movements_types`
--

CREATE TABLE `inv_itemcard_movements_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_itemcard_movements_types`
--

INSERT INTO `inv_itemcard_movements_types` (`id`, `type`) VALUES
(1, 'مشتريات '),
(2, 'مرتجع مشتريات بأصل الفاتورة'),
(3, 'مرتجع مشتريات عام'),
(4, 'مبيعات'),
(5, 'مرتجع مبيعات'),
(6, 'جرد بالمخازن'),
(7, 'مرتجع صرف داخلي لمندوب'),
(8, 'تحويل بين مخازن'),
(9, 'مبيعات صرف مباشر لعميل'),
(10, 'مبيعات صرف لمندوب التوصيل'),
(11, 'صرف خامات لخط التصنيع'),
(12, 'رد خامات من خط التصنيع'),
(13, 'استلام انتاج تام من خط التصنيع'),
(14, 'رد انتاج تام الي خط التصنيع'),
(15, 'حذف الصنف من تفاصيل فاتوريه مبيعات مفتوح'),
(16, 'حذف الصنف من تفاصيل فاتوريه مرتجاع مبيعات عام مفتو'),
(17, 'صرف خامات لخط الانتاج'),
(18, 'حذف صنف مضاف على فاتورة صرف الخامات لخط الانتاج'),
(19, 'اعتماد فاتوره استلام انتاج تام من خط الانتاج');

-- --------------------------------------------------------

--
-- Table structure for table `inv_production_exchange`
--

CREATE TABLE `inv_production_exchange` (
  `id` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT 'واحد صرف خامات من المخزن للخط -- اثنين مرتجه خامات من الخط الى المخزن',
  `auto_serial` bigint(20) NOT NULL,
  `inv_production_order_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الفاتور',
  `order_date` date NOT NULL COMMENT 'تاريخ الفاتور',
  `production_lines_code` bigint(20) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL COMMENT 'اجمال الفاتور قبل الخصم',
  `discount_type` tinyint(1) DEFAULT NULL COMMENT 'نوع الخصم',
  `discount_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمه نسبه الخصم',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمه الخصم',
  `tax_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'نسيه الضريبه',
  `tax_value` decimal(10,2) DEFAULT NULL COMMENT 'قيمه الضريبه',
  `total_cost_items` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_befor_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00 COMMENT 'القيمه النهايه للفاتور',
  `account_number` bigint(20) NOT NULL,
  `money_for_account` decimal(10,2) DEFAULT NULL,
  `pill_type` tinyint(1) NOT NULL COMMENT 'نوع الفاتور',
  `what_paid` decimal(10,2) DEFAULT 0.00,
  `what_remain` decimal(10,2) DEFAULT 0.00,
  `treasuries_transactions_id` bigint(20) DEFAULT NULL,
  `Supplier_balance_befor` decimal(10,2) DEFAULT NULL COMMENT 'حاله رصيد المورد قبل الفاتور',
  `Supplier_balance_after` decimal(10,2) DEFAULT NULL COMMENT 'حاله رصيد المورد بعد الفاتور',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `store_id` bigint(20) NOT NULL,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='حرك صرف الخامات لخط الانتاج ';

-- --------------------------------------------------------

--
-- Table structure for table `inv_production_exchange_details`
--

CREATE TABLE `inv_production_exchange_details` (
  `id` bigint(20) NOT NULL,
  `inv_production_exchange_id` bigint(20) NOT NULL,
  `inv_production_exchange_auto_serial` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL,
  `com_code` int(11) NOT NULL,
  `deliverd_quantity` decimal(10,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `isparentuom` tinyint(1) NOT NULL COMMENT '1-main -0 retail',
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `item_code` bigint(20) NOT NULL,
  `batch_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الباتش بالمخزن التي تم تخزنن الصنف بها',
  `production_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `item_card_type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='تفاصيل اصناف حرك صرف الخامات لخط الانتاج ';

-- --------------------------------------------------------

--
-- Table structure for table `inv_production_lines`
--

CREATE TABLE `inv_production_lines` (
  `id` bigint(20) NOT NULL,
  `production_lines_code` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `account_number` bigint(20) NOT NULL,
  `start_balance_status` tinyint(4) NOT NULL COMMENT 'e 1-credit -2 debit 3-balanced',
  `start_balance` decimal(10,2) NOT NULL COMMENT 'دائن او مدين او متزن اول المدة',
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` varchar(225) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول خطوات الانتاج الوراش';

--
-- Dumping data for table `inv_production_lines`
--

INSERT INTO `inv_production_lines` (`id`, `production_lines_code`, `name`, `account_number`, `start_balance_status`, `start_balance`, `current_balance`, `notes`, `added_by`, `updated_by`, `created_at`, `updated_at`, `active`, `com_code`, `date`, `address`, `phones`) VALUES
(1, 1, 'المياه', 52, 3, '0.00', '17190.00', NULL, 1, 1, '2023-01-04 07:51:02', '2023-02-24 07:30:52', 1, 1, '2023-01-04', 'ugyg', '0102931093');

-- --------------------------------------------------------

--
-- Table structure for table `inv_production_order`
--

CREATE TABLE `inv_production_order` (
  `id` bigint(20) NOT NULL,
  `auto_serial` bigint(20) NOT NULL,
  `production_plane` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'حاليا الاعتمده ',
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'هل مغلق او تم اعتماد ',
  `closed_by` int(11) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `date` date NOT NULL,
  `production_plan_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='امر التصنع او الانتاج ';

--
-- Dumping data for table `inv_production_order`
--

INSERT INTO `inv_production_order` (`id`, `auto_serial`, `production_plane`, `is_approved`, `added_by`, `updated_by`, `created_at`, `updated_at`, `com_code`, `approved_by`, `approved_at`, `is_closed`, `closed_by`, `closed_at`, `date`, `production_plan_date`) VALUES
(2, 1, 'vdcf', 1, 1, 1, '2022-12-29 13:37:00', '2023-01-14 21:23:35', 1, 1, '2023-01-14 21:23:35', 0, NULL, NULL, '2022-12-29', '2022-12-29'),
(3, 2, 'xhbgsdbg', 1, 1, NULL, '2022-12-29 13:53:11', '2023-01-04 06:41:58', 1, 1, '2023-01-04 06:33:52', 1, 1, '2023-01-04 06:41:58', '2022-12-29', '2022-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `inv_production_receive`
--

CREATE TABLE `inv_production_receive` (
  `id` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT 'واحد استلام منتج تام من خط الانتاج -- اثنين مرتجه  منتج تام الى خط الانتاج',
  `auto_serial` bigint(20) NOT NULL,
  `inv_production_order_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الفاتور',
  `order_date` date NOT NULL COMMENT 'تاريخ الفاتور',
  `production_lines_code` bigint(20) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL COMMENT 'اجمال الفاتور قبل الخصم',
  `discount_type` tinyint(1) DEFAULT NULL COMMENT 'نوع الخصم',
  `discount_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمه نسبه الخصم',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمه الخصم',
  `tax_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'نسيه الضريبه',
  `tax_value` decimal(10,2) DEFAULT NULL COMMENT 'قيمه الضريبه',
  `total_cost_items` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_befor_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00 COMMENT 'القيمه النهايه للفاتور',
  `account_number` bigint(20) NOT NULL,
  `money_for_account` decimal(10,2) DEFAULT NULL,
  `pill_type` tinyint(1) NOT NULL COMMENT 'نوع الفاتور',
  `what_paid` decimal(10,2) DEFAULT 0.00,
  `what_remain` decimal(10,2) DEFAULT 0.00,
  `treasuries_transactions_id` bigint(20) DEFAULT NULL,
  `Supplier_balance_befor` decimal(10,2) DEFAULT NULL COMMENT 'حاله رصيد المورد قبل الفاتور',
  `Supplier_balance_after` decimal(10,2) DEFAULT NULL COMMENT 'حاله رصيد المورد بعد الفاتور',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `store_id` bigint(20) NOT NULL,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='حرك صرف الخامات لخط الانتاج ';

--
-- Dumping data for table `inv_production_receive`
--

INSERT INTO `inv_production_receive` (`id`, `order_type`, `auto_serial`, `inv_production_order_auto_serial`, `order_date`, `production_lines_code`, `is_approved`, `com_code`, `notes`, `discount_type`, `discount_percent`, `discount_value`, `tax_percent`, `tax_value`, `total_cost_items`, `total_befor_discount`, `total_cost`, `account_number`, `money_for_account`, `pill_type`, `what_paid`, `what_remain`, `treasuries_transactions_id`, `Supplier_balance_befor`, `Supplier_balance_after`, `added_by`, `created_at`, `updated_at`, `updated_by`, `store_id`, `approved_by`) VALUES
(2, 1, 1, 1, '2023-02-19', 1, 1, 1, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '1800.00', '1800.00', '1800.00', 52, '-1800.00', 2, '0.00', '1800.00', NULL, NULL, NULL, 1, '2023-02-19 07:15:09', '2023-02-24 07:30:52', 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inv_production_receive_details`
--

CREATE TABLE `inv_production_receive_details` (
  `id` bigint(20) NOT NULL,
  `inv_production_receive_id` bigint(20) NOT NULL,
  `inv_production_receive_auto_serial` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL,
  `com_code` int(11) NOT NULL,
  `deliverd_quantity` decimal(10,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `isparentuom` tinyint(1) NOT NULL COMMENT '1-main -0 retail',
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `item_code` bigint(20) NOT NULL,
  `batch_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الباتش بالمخزن التي تم تخزنن الصنف بها',
  `production_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `item_card_type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='تفاصيل اصناف حرك صرف الخامات لخط الانتاج ';

--
-- Dumping data for table `inv_production_receive_details`
--

INSERT INTO `inv_production_receive_details` (`id`, `inv_production_receive_id`, `inv_production_receive_auto_serial`, `order_type`, `com_code`, `deliverd_quantity`, `uom_id`, `isparentuom`, `unit_price`, `total_price`, `order_date`, `added_by`, `created_at`, `updated_by`, `updated_at`, `item_code`, `batch_auto_serial`, `production_date`, `expire_date`, `item_card_type`) VALUES
(1, 2, 1, 1, 1, '10.00', 4, 1, '39.00', '390.00', '2023-02-19', 1, '2023-02-19 07:34:30', NULL, '2023-02-19 07:34:30', 10, NULL, NULL, NULL, 1),
(2, 2, 1, 1, 1, '10.00', 4, 1, '39.00', '390.00', '2023-02-19', 1, '2023-02-19 07:34:36', NULL, '2023-02-19 07:34:36', 10, NULL, NULL, NULL, 1),
(3, 2, 1, 1, 1, '102.00', 4, 1, '10.00', '1020.00', '2023-02-19', 1, '2023-02-24 06:47:55', NULL, '2023-02-24 06:47:55', 11, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inv_stores_inventory`
--

CREATE TABLE `inv_stores_inventory` (
  `id` bigint(20) NOT NULL,
  `store_id` int(11) NOT NULL COMMENT 'مخازن الجرد ',
  `inventory_type` tinyint(1) NOT NULL COMMENT 'واحد جرد يومي- اثانى   جرد اسبوعي-ثلاث جرد شهري-اربع جرد سنوي',
  `inventory_date` date NOT NULL,
  `auto_serial` bigint(20) NOT NULL,
  `total_cost_batches` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'هلامر الجرد  مغلق مرحل ',
  `notes` varchar(255) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `cloased_by` int(11) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='جدول جرد المخازن ';

--
-- Dumping data for table `inv_stores_inventory`
--

INSERT INTO `inv_stores_inventory` (`id`, `store_id`, `inventory_type`, `inventory_date`, `auto_serial`, `total_cost_batches`, `is_closed`, `notes`, `added_by`, `date`, `created_at`, `updated_by`, `updated_at`, `com_code`, `cloased_by`, `closed_at`) VALUES
(5, 2, 3, '2023-01-31', 1, '34420.00', 1, NULL, 1, '2023-01-31', '2023-01-31 13:32:54', NULL, '2023-02-17 09:41:45', 1, 1, '2023-02-17 09:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `inv_stores_inventory_details`
--

CREATE TABLE `inv_stores_inventory_details` (
  `id` bigint(20) NOT NULL,
  `inv_stores_inventory_id` bigint(20) NOT NULL,
  `inv_stores_inventory_auto_serial` bigint(20) NOT NULL,
  `item_code` bigint(20) NOT NULL,
  `inv_uoms_id` int(11) NOT NULL,
  `batch_auto_serial` bigint(20) NOT NULL,
  `old_quantity` decimal(10,2) NOT NULL,
  `new_quantity` decimal(10,2) NOT NULL,
  `unit_cost_price` decimal(10,2) NOT NULL,
  `total_cost_price` decimal(10,2) NOT NULL,
  `diffrent_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` varchar(255) DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `production_date` date DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cloased_by` int(11) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `com_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='تقاصيل امر الجرد ';

--
-- Dumping data for table `inv_stores_inventory_details`
--

INSERT INTO `inv_stores_inventory_details` (`id`, `inv_stores_inventory_id`, `inv_stores_inventory_auto_serial`, `item_code`, `inv_uoms_id`, `batch_auto_serial`, `old_quantity`, `new_quantity`, `unit_cost_price`, `total_cost_price`, `diffrent_quantity`, `notes`, `is_closed`, `production_date`, `expired_date`, `added_by`, `created_at`, `updated_by`, `updated_at`, `cloased_by`, `closed_at`, `com_code`) VALUES
(16, 5, 1, 4, 2, 9, '41.00', '41.00', '343.00', '14063.00', '0.00', NULL, 0, '2022-10-20', '2022-10-22', 1, '2023-01-31 13:33:57', NULL, '2023-01-31 13:33:57', NULL, NULL, 1),
(17, 5, 1, 4, 2, 11, '12.00', '12.00', '10.00', '120.00', '0.00', NULL, 0, '2022-11-02', '2022-11-17', 1, '2023-01-31 13:33:57', NULL, '2023-01-31 13:33:57', NULL, NULL, 1),
(18, 5, 1, 4, 2, 17, '59.00', '59.00', '343.00', '20237.00', '0.00', NULL, 0, '2022-11-09', '2022-11-26', 1, '2023-01-31 13:33:57', NULL, '2023-01-31 13:33:57', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inv_uoms`
--

CREATE TABLE `inv_uoms` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `is_master` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL COMMENT 'for search',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv_uoms`
--

INSERT INTO `inv_uoms` (`id`, `name`, `is_master`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(3, 'shehab mohamed salem', 1, '2022-09-24 16:21:39', '2022-09-24 16:21:39', 1, NULL, 1, '2022-09-24', 1),
(4, 'ستثى', 1, '2022-10-12 14:25:27', '2022-10-15 05:57:38', 1, 1, 1, '2022-10-12', 1),
(5, 'كيلو', 0, '2022-10-15 06:36:53', '2022-10-15 06:36:53', 1, NULL, 1, '2022-10-15', 1),
(6, 'الطين', 0, '2022-12-07 15:55:14', '2022-12-07 15:55:14', 1, NULL, 1, '2022-12-07', 1);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_08_135041_account_types', 1),
(6, '2022_12_19_202355_creat_shrhb_hfhhbf', 2),
(7, '2023_02_25_133041_create_permission_tables', 2),
(8, '2023_02_25_145951_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mov_type`
--

CREATE TABLE `mov_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `in_screen` tinyint(1) NOT NULL COMMENT '1-dissmissal 2-collect',
  `is_private_internal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='الحركة علي الخزنة';

--
-- Dumping data for table `mov_type`
--

INSERT INTO `mov_type` (`id`, `name`, `active`, `in_screen`, `is_private_internal`) VALUES
(1, 'مراجعة واستلام نقدية شفت علي نفس الخزنة', 1, 2, 1),
(2, 'مراجعة واستلام نقدية شفت خزنة اخري', 1, 2, 1),
(3, 'صرف مبلغ لحساب مالي', 1, 1, 0),
(4, 'تحصيل مبلغ من حساب مالي', 1, 2, 0),
(5, 'تحصيل ايراد مبيعات', 1, 2, 0),
(6, 'صرف نظير مرتجع مبيعات', 1, 1, 0),
(8, 'صرف سلفة علي راتب موظف', 1, 1, 1),
(9, 'صرف نظير مشتريات من مورد', 1, 1, 0),
(10, 'تحصيل نظير مرتجع مشتريات الي مورد', 1, 2, 0),
(16, 'ايراد زيادة راس المال', 1, 2, 0),
(17, 'مصاريف شراء مثل النولون', 1, 1, 0),
(18, 'صرف للإيداع البنكي', 1, 1, 0),
(21, 'رد سلفة علي راتب موظف', 1, 2, 1),
(22, 'تحصيل خصومات موظفين', 1, 2, 1),
(24, 'صرف مرتب لموظف', 1, 1, 1),
(25, 'سحب من البنك\r\n', 1, 2, 0),
(26, 'صرف لرد رأس المال', 1, 1, 0),
(27, 'صرف فاتوره خدمات مقدم لنا', 1, 1, 0),
(28, 'تحصيل فاتوره خدمات مقدمه للغير', 1, 2, 0);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(2, 'role-create', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(3, 'role-edit', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(4, 'role-delete', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(5, 'admin-list', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(6, 'admin-create', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(7, 'admin-edit', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07'),
(8, 'admin-specialpowers', 'web', '2023-02-25 13:00:07', '2023-02-25 13:00:07');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-02-25 13:26:05', '2023-02-25 13:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoices`
--

CREATE TABLE `sales_invoices` (
  `id` bigint(20) NOT NULL,
  `sales_matrial_types` int(11) DEFAULT NULL COMMENT 'فئة الفاتورة',
  `auto_serial` bigint(20) NOT NULL,
  `invoice_date` date NOT NULL COMMENT 'تاريخ الفاتورة',
  `customer_code` bigint(20) DEFAULT NULL COMMENT 'كود العميل',
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `notes` varchar(225) DEFAULT NULL,
  `discount_type` tinyint(1) DEFAULT NULL COMMENT 'نواع الخصم - واحد خصم نسبة  - اثنين خصم يدوي قيمة',
  `delegate_commission_percent` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'نيسبه عموله المندوب',
  `delegate_commission_percent_type` decimal(10,2) DEFAULT NULL,
  `delegate_commission_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمه عموله المندوب',
  `discount_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمة نسبة الخصم',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمة الخصم',
  `tax_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'نسبة الضريبة ',
  `total_cost_items` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'اجمالي الاصناف فقط',
  `tax_value` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمة الضريبة القيمة المضافة',
  `total_befor_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00 COMMENT 'القيمة الاجمالية النهائية للفاتورة',
  `account_number` bigint(20) DEFAULT NULL,
  `money_for_account` decimal(10,2) DEFAULT NULL,
  `pill_type` tinyint(1) DEFAULT NULL COMMENT 'نوع الفاتورة - كاش او اجل  - واحد واثنين',
  `what_paid` decimal(10,2) DEFAULT 0.00,
  `what_remain` decimal(10,2) DEFAULT 0.00,
  `treasuries_transactions_id` bigint(20) DEFAULT NULL,
  `customer_balance_befor` decimal(10,2) DEFAULT NULL COMMENT 'حالة رصيد العميل قبل الفاتروة',
  `customer_balance_after` decimal(10,2) DEFAULT NULL COMMENT 'حالة رصيد العميل بعد الفاتروة',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `is_has_customer` tinyint(1) NOT NULL,
  `delegate_code` bigint(20) DEFAULT NULL COMMENT 'كود المندوب',
  `date` date DEFAULT NULL,
  `sales_item_type` tinyint(1) NOT NULL COMMENT 'نوع البيع مع الصنف 1-قطاعى 2-جمله 3-نصف جمله'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='المبيعات للعملاء';

--
-- Dumping data for table `sales_invoices`
--

INSERT INTO `sales_invoices` (`id`, `sales_matrial_types`, `auto_serial`, `invoice_date`, `customer_code`, `is_approved`, `com_code`, `notes`, `discount_type`, `delegate_commission_percent`, `delegate_commission_percent_type`, `delegate_commission_value`, `discount_percent`, `discount_value`, `tax_percent`, `total_cost_items`, `tax_value`, `total_befor_discount`, `total_cost`, `account_number`, `money_for_account`, `pill_type`, `what_paid`, `what_remain`, `treasuries_transactions_id`, `customer_balance_befor`, `customer_balance_after`, `added_by`, `created_at`, `updated_at`, `updated_by`, `approved_by`, `is_has_customer`, `delegate_code`, `date`, `sales_item_type`) VALUES
(27, 3, 1, '2023-02-01', NULL, 0, 1, NULL, NULL, '0.00', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 1, '0.00', '0.00', NULL, NULL, NULL, 1, '2023-02-01 13:25:18', '2023-02-01 13:25:18', NULL, NULL, 0, 1, '2023-02-01', 1),
(28, 4, 2, '2023-02-22', NULL, 1, 1, NULL, NULL, '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '10000.00', '0.00', '10000.00', '10000.00', NULL, '10000.00', 1, '10000.00', '0.00', NULL, NULL, NULL, 1, '2023-02-22 20:41:17', '2023-02-22 20:43:54', 1, 1, 0, 1, '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoices_details`
--

CREATE TABLE `sales_invoices_details` (
  `id` bigint(20) NOT NULL,
  `sales_invoices_id` bigint(20) NOT NULL,
  `sales_invoices_auto_serial` bigint(20) NOT NULL,
  `com_code` int(11) NOT NULL,
  `quantity` decimal(10,4) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `isparentuom` tinyint(1) NOT NULL COMMENT '1-main -0 retail',
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `invoice_date` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `item_code` bigint(20) NOT NULL,
  `sales_item_type` tinyint(1) NOT NULL COMMENT 'نوع البيع مع الصنف \r\n1-قطاعى\r\n2-جمله\r\n3-نصف جمله',
  `is_normal_orOther` tinyint(1) NOT NULL COMMENT '\r\nهل بيع عادي\r\n1-هالك\r\n2-عادى\r\n3-دعايه \r\n4-بونص',
  `batch_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الباتش بالمخزن التي تم خروج الصنف منها ',
  `production_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='تفاصيل انصاف فاتورة المشتريات والمرتجعات';

--
-- Dumping data for table `sales_invoices_details`
--

INSERT INTO `sales_invoices_details` (`id`, `sales_invoices_id`, `sales_invoices_auto_serial`, `com_code`, `quantity`, `uom_id`, `isparentuom`, `unit_price`, `total_price`, `invoice_date`, `added_by`, `created_at`, `updated_by`, `updated_at`, `item_code`, `sales_item_type`, `is_normal_orOther`, `batch_auto_serial`, `production_date`, `expire_date`, `store_id`, `date`) VALUES
(23, 28, 2, 1, '1.0000', 4, 1, '10000.00', '10000.00', '2023-02-22', 1, '2023-02-22 20:43:26', NULL, '2023-02-22 20:43:26', 8, 1, 1, 20, NULL, NULL, 4, '2023-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoices_return`
--

CREATE TABLE `sales_invoices_return` (
  `id` bigint(20) NOT NULL,
  `return_type` tinyint(1) NOT NULL COMMENT 'واحد مرتجاع باصل الفاتور -اثنين مرتجع عام',
  `sales_matrial_types` int(11) DEFAULT NULL COMMENT 'فئة الفاتورة',
  `auto_serial` bigint(20) NOT NULL,
  `invoice_date` date NOT NULL COMMENT 'تاريخ الفاتورة',
  `customer_code` bigint(20) DEFAULT NULL COMMENT 'كود العميل',
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `notes` varchar(225) DEFAULT NULL,
  `discount_type` tinyint(1) DEFAULT NULL COMMENT 'نواع الخصم - واحد خصم نسبة  - اثنين خصم يدوي قيمة',
  `discount_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمة نسبة الخصم',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمة الخصم',
  `tax_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'نسبة الضريبة ',
  `total_cost_items` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'اجمالي الاصناف فقط',
  `tax_value` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمة الضريبة القيمة المضافة',
  `total_befor_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00 COMMENT 'القيمة الاجمالية النهائية للفاتورة',
  `account_number` bigint(20) DEFAULT NULL,
  `money_for_account` decimal(10,2) DEFAULT NULL,
  `pill_type` tinyint(1) DEFAULT NULL COMMENT 'نوع الفاتورة - كاش او اجل  - واحد واثنين',
  `what_paid` decimal(10,2) DEFAULT 0.00,
  `what_remain` decimal(10,2) DEFAULT 0.00,
  `treasuries_transactions_id` bigint(20) DEFAULT NULL,
  `customer_balance_befor` decimal(10,2) DEFAULT NULL COMMENT 'حالة رصيد العميل قبل الفاتروة',
  `customer_balance_after` decimal(10,2) DEFAULT NULL COMMENT 'حالة رصيد العميل بعد الفاتروة',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `is_has_customer` tinyint(1) NOT NULL,
  `delegate_code` bigint(20) DEFAULT NULL COMMENT 'كود المندوب',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='مرتجاع مبيعات للعملاء';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoices_return_details`
--

CREATE TABLE `sales_invoices_return_details` (
  `id` bigint(20) NOT NULL,
  `sales_invoices_return_id` bigint(20) NOT NULL,
  `sales_invoices_auto_serial` bigint(20) NOT NULL,
  `com_code` int(11) NOT NULL,
  `quantity` decimal(10,4) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `isparentuom` tinyint(1) NOT NULL COMMENT '1-main -0 retail',
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `invoice_date` date NOT NULL,
  `unit_cost_price` decimal(10,2) DEFAULT NULL COMMENT 'فى عدم تحديد باتش للمرتجع',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `item_code` bigint(20) NOT NULL,
  `sales_item_type` tinyint(1) NOT NULL COMMENT 'نوع البيع مع الصنف \r\n1-قطاعى\r\n2-جمله\r\n3-نصف جمله',
  `is_normal_orOther` tinyint(1) NOT NULL COMMENT '\r\nهل بيع عادي\r\n1-هالك\r\n2-عادى\r\n3-دعايه \r\n4-بونص',
  `batch_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الباتش بالمخزن التي تم خروج الصنف منها ',
  `production_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='تفاصيل انصاف فاتورلمرتجعات';

-- --------------------------------------------------------

--
-- Table structure for table `sales_matrial_types`
--

CREATE TABLE `sales_matrial_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL COMMENT 'for search',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_matrial_types`
--

INSERT INTO `sales_matrial_types` (`id`, `name`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(1, 'shehab', '2022-09-13 12:57:53', '2022-09-13 12:57:53', 1, 1, 1, '2022-09-13', 1),
(2, 'شهاب محمد سلامه', '2022-09-13 13:13:27', '2022-10-03 17:13:43', 1, 1, 1, '2022-09-13', 1),
(3, 'لحوم', '2022-10-12 14:20:50', '2022-10-12 14:20:50', 1, NULL, 1, '2022-10-12', 1),
(4, 'الكريم', '2022-12-07 16:16:01', '2022-12-07 16:16:01', 1, NULL, 1, '2022-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-مقدم الى الغير2- مفدم لينا   ',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='خدمات لينا وعلينا ';

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `type`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(1, 'سياره حراس ', 1, '2022-11-25 05:06:09', '2022-11-25 05:06:09', 1, NULL, 1, '2022-11-25', 1),
(3, 'camir', 2, '2022-12-03 06:53:46', '2022-12-03 06:53:46', 1, NULL, 1, '2022-12-03', 1),
(4, 'الحراسه', 1, '2022-12-07 16:29:05', '2022-12-07 16:29:05', 1, NULL, 1, '2022-12-07', 1),
(5, 'ادوات', 2, '2022-12-07 16:29:19', '2022-12-07 16:40:47', 1, 1, 1, '2022-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_with_orders`
--

CREATE TABLE `services_with_orders` (
  `id` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1مقدم لنا\r\n\r\n2نقدم للغير',
  `auto_serial` bigint(20) NOT NULL,
  `order_date` date NOT NULL COMMENT 'تاريخ الخدما ',
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL COMMENT 'ملاحظات ',
  `total_services` decimal(10,2) DEFAULT 0.00,
  `is_account_number` tinyint(1) NOT NULL,
  `entity_name` varchar(250) DEFAULT NULL COMMENT 'اسم الجه فى حلات انها ليس حساب مالى ',
  `discount_type` tinyint(1) DEFAULT NULL COMMENT 'نوع الخصم',
  `discount_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمه نسبه الخصم',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمه الخصم',
  `tax_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'نسيه الضريبه',
  `tax_value` decimal(10,2) DEFAULT NULL COMMENT 'قيمه الضريبه',
  `total_befor_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00 COMMENT 'القيمه النهايه للفاتور',
  `account_number` bigint(20) DEFAULT NULL COMMENT 'رقم الحساب المال المفدم لنا  الخدمام او القدمين لهو',
  `money_for_account` decimal(10,2) DEFAULT NULL,
  `pill_type` tinyint(1) NOT NULL COMMENT 'نوع الفاتور',
  `what_paid` decimal(10,2) DEFAULT 0.00,
  `what_remain` decimal(10,2) DEFAULT 0.00,
  `treasuries_transactions_id` bigint(20) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='جدول مشتريات المودلا والمتوجعات';

--
-- Dumping data for table `services_with_orders`
--

INSERT INTO `services_with_orders` (`id`, `order_type`, `auto_serial`, `order_date`, `is_approved`, `com_code`, `notes`, `total_services`, `is_account_number`, `entity_name`, `discount_type`, `discount_percent`, `discount_value`, `tax_percent`, `tax_value`, `total_befor_discount`, `total_cost`, `account_number`, `money_for_account`, `pill_type`, `what_paid`, `what_remain`, `treasuries_transactions_id`, `added_by`, `created_at`, `updated_at`, `updated_by`, `approved_by`) VALUES
(1, 1, 1, '2023-01-31', 0, 1, NULL, '100.00', 1, NULL, NULL, '0.00', '0.00', '0.00', NULL, '100.00', '100.00', 49, NULL, 1, '0.00', '0.00', NULL, 1, '2023-01-31 14:01:06', '2023-01-31 14:01:32', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services_with_orders_details`
--

CREATE TABLE `services_with_orders_details` (
  `id` bigint(20) NOT NULL,
  `services_with_orders_id` bigint(20) NOT NULL,
  `services_with_orders_auto_serial` bigint(20) NOT NULL,
  `order_type` tinyint(4) NOT NULL,
  `service_id` int(11) NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services_with_orders_details`
--

INSERT INTO `services_with_orders_details` (`id`, `services_with_orders_id`, `services_with_orders_auto_serial`, `order_type`, `service_id`, `notes`, `total`, `added_by`, `updated_by`, `created_at`, `updated_at`, `com_code`, `date`) VALUES
(1, 1, 1, 1, 4, NULL, '100.00', 1, NULL, '2023-01-31 14:01:32', '2023-01-31 14:01:32', 1, '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `shehab`
--

CREATE TABLE `shehab` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phones` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL COMMENT 'for search',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `phones`, `address`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(1, 'shehab mohamed s', '010283', 'dhsh', '2022-09-13 17:37:41', '2022-09-20 06:41:48', 1, 1, 1, '2022-09-13', 1),
(2, 'ofewv', '010283', 'Egypt', '2022-09-21 13:07:57', '2022-09-21 13:07:57', 1, NULL, 1, '2022-09-21', 1),
(3, 'ajen', '010283', 'الفيوم', '2022-10-15 05:24:06', '2022-10-15 05:24:06', 1, NULL, 1, '2022-10-15', 1),
(4, 'الكويت', '009348597', 'الكويت', '2022-12-07 15:54:55', '2022-12-07 16:16:35', 1, 1, 1, '2022-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_categories`
--

CREATE TABLE `suppliers_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL COMMENT 'for search ',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers_categories`
--

INSERT INTO `suppliers_categories` (`id`, `name`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(1, 'jdjvgsbg', '2022-09-18 07:29:53', '2022-09-18 07:29:53', 1, NULL, 1, '2022-09-18', 1),
(2, 'عموله', '2022-12-07 15:51:55', '2022-12-07 15:51:55', 1, NULL, 1, '2022-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_with_orders`
--

CREATE TABLE `suppliers_with_orders` (
  `id` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL,
  `auto_serial` bigint(20) NOT NULL,
  `DOC_NO` varchar(25) DEFAULT NULL COMMENT 'رقم الفاتور',
  `order_date` date NOT NULL COMMENT 'تاريخ الفاتور',
  `suuplier_code` bigint(20) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL COMMENT 'اجمال الفاتور قبل الخصم',
  `discount_type` tinyint(1) DEFAULT NULL COMMENT 'نوع الخصم',
  `discount_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'قيمه نسبه الخصم',
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمه الخصم',
  `tax_percent` decimal(10,2) DEFAULT 0.00 COMMENT 'نسيه الضريبه',
  `tax_value` decimal(10,2) DEFAULT NULL COMMENT 'قيمه الضريبه',
  `total_cost_items` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_befor_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00 COMMENT 'القيمه النهايه للفاتور',
  `account_number` bigint(20) NOT NULL,
  `money_for_account` decimal(10,2) DEFAULT NULL,
  `pill_type` tinyint(1) NOT NULL COMMENT 'نوع الفاتور',
  `what_paid` decimal(10,2) DEFAULT 0.00,
  `what_remain` decimal(10,2) DEFAULT 0.00,
  `treasuries_transactions_id` bigint(20) DEFAULT NULL,
  `Supplier_balance_befor` decimal(10,2) DEFAULT NULL COMMENT 'حاله رصيد المورد قبل الفاتور',
  `Supplier_balance_after` decimal(10,2) DEFAULT NULL COMMENT 'حاله رصيد المورد بعد الفاتور',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `store_id` bigint(20) NOT NULL,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='جدول مشتريات المودلا والمتوجعات';

--
-- Dumping data for table `suppliers_with_orders`
--

INSERT INTO `suppliers_with_orders` (`id`, `order_type`, `auto_serial`, `DOC_NO`, `order_date`, `suuplier_code`, `is_approved`, `com_code`, `notes`, `discount_type`, `discount_percent`, `discount_value`, `tax_percent`, `tax_value`, `total_cost_items`, `total_befor_discount`, `total_cost`, `account_number`, `money_for_account`, `pill_type`, `what_paid`, `what_remain`, `treasuries_transactions_id`, `Supplier_balance_befor`, `Supplier_balance_after`, `added_by`, `created_at`, `updated_at`, `updated_by`, `store_id`, `approved_by`) VALUES
(2, 3, 1, NULL, '2023-01-31', 5, 0, 1, NULL, NULL, '0.00', '0.00', '0.00', NULL, '600.00', '600.00', '600.00', 17, '600.00', 1, '0.00', '0.00', NULL, NULL, NULL, 1, '2023-01-31 13:21:20', '2023-01-31 13:21:46', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_with_orders_details`
--

CREATE TABLE `suppliers_with_orders_details` (
  `id` bigint(20) NOT NULL,
  `suppliers_with_order_id` bigint(20) NOT NULL,
  `suppliers_with_orders_auto_serial` bigint(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL,
  `com_code` int(11) NOT NULL,
  `deliverd_quantity` decimal(10,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `isparentuom` tinyint(1) NOT NULL COMMENT '1-main -0 retail',
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `item_code` bigint(20) NOT NULL,
  `batch_auto_serial` bigint(20) DEFAULT NULL COMMENT 'رقم الباتش بالمخزن التي تم تخزنن الصنف بها',
  `production_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `item_card_type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='تفاصيل انصاف فاتورة المشتريات والمرتجعات';

--
-- Dumping data for table `suppliers_with_orders_details`
--

INSERT INTO `suppliers_with_orders_details` (`id`, `suppliers_with_order_id`, `suppliers_with_orders_auto_serial`, `order_type`, `com_code`, `deliverd_quantity`, `uom_id`, `isparentuom`, `unit_price`, `total_price`, `order_date`, `added_by`, `created_at`, `updated_by`, `updated_at`, `item_code`, `batch_auto_serial`, `production_date`, `expire_date`, `item_card_type`) VALUES
(2, 2, 1, 3, 1, '10.00', 4, 1, '60.00', '600.00', '2023-01-31', 1, '2023-01-31 13:21:46', NULL, '2023-01-31 13:21:46', 6, 18, '2022-11-03', '2022-12-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `suupliers`
--

CREATE TABLE `suupliers` (
  `id` bigint(20) NOT NULL,
  `suuplier_code` bigint(20) NOT NULL,
  `suppliers_categories_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `account_number` bigint(20) NOT NULL,
  `start_balance_status` tinyint(4) NOT NULL COMMENT 'e 1-credit -2 debit 3-balanced',
  `start_balance` decimal(10,2) NOT NULL COMMENT 'دائن او مدين او متزن اول المدة',
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` varchar(225) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول الشجرة المحاسبية العامة';

--
-- Dumping data for table `suupliers`
--

INSERT INTO `suupliers` (`id`, `suuplier_code`, `suppliers_categories_id`, `name`, `account_number`, `start_balance_status`, `start_balance`, `current_balance`, `notes`, `added_by`, `updated_by`, `created_at`, `updated_at`, `active`, `com_code`, `date`, `address`, `phones`) VALUES
(1, 1, 1, 'شهاب محمد سلامه', 4, 1, '-5000.00', '-9430.00', NULL, 1, NULL, '2022-09-25 10:04:53', '2022-10-22 10:04:15', 1, 1, '2022-09-25', NULL, NULL),
(2, 2, 1, 'shehab mohamed slannnjkb', 6, 3, '0.00', '-20490.00', NULL, 1, 1, '2022-09-25 10:36:37', '2022-10-08 07:59:55', 0, 1, '2022-09-25', NULL, NULL),
(3, 3, 1, 'فراخ', 15, 3, '0.00', '-41560.00', NULL, 1, 1, '2022-10-08 07:38:52', '2022-12-26 12:41:38', 1, 1, '2022-10-08', NULL, NULL),
(4, 4, 1, 'shehab mohamed salem', 16, 3, '0.00', '-500.00', 'بلرااي', 1, 1, '2022-10-08 07:43:43', '2022-12-26 13:32:39', 1, 1, '2022-10-08', NULL, '01028391'),
(5, 5, 1, 'ابو شهاب', 17, 1, '-5000.00', '-1878.00', NULL, 1, 1, '2022-10-08 07:53:30', '2022-12-26 13:46:59', 1, 1, '2022-10-08', 'الفيوم', '01021635236'),
(6, 6, 2, 'محمد رمضان', 49, 3, '0.00', '52575.00', NULL, 1, NULL, '2022-12-07 15:52:46', '2023-02-22 20:47:00', 1, 1, '2022-12-07', 'السعوديه', '01021635236');

-- --------------------------------------------------------

--
-- Table structure for table `treasuries`
--

CREATE TABLE `treasuries` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `is_master` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'هل خزنه رئيسه -0-1',
  `last_isal_exhcange` bigint(20) NOT NULL COMMENT 'رقم اخر ايصال صرفه',
  `last_isal_collect` bigint(20) NOT NULL COMMENT 'رقم اخر ايصال للتحصيل',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `date` date NOT NULL COMMENT 'for search',
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treasuries`
--

INSERT INTO `treasuries` (`id`, `name`, `is_master`, `last_isal_exhcange`, `last_isal_collect`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`, `date`, `active`) VALUES
(1, 'الخزن الرئيسه ', 1, 25, 24, '2022-09-12 20:22:03', '2023-02-22 20:43:54', 1, 0, 1, '2022-09-12', 1),
(3, 'شهاب سلامه', 0, 1, 0, '2022-09-13 06:14:03', '2022-09-13 10:17:40', 1, 1, 1, '2022-09-13', 1),
(4, 'shehab mohamed slannnjkb', 0, 3, 0, '2022-09-13 07:52:26', '2022-09-18 08:34:57', 1, 1, 1, '2022-09-13', 1),
(5, 'الرئيسه', 0, 0, 0, '2022-10-06 08:25:19', '2022-10-06 08:25:19', 1, NULL, 1, '2022-10-06', 1),
(6, 'الشركه', 0, 5, 3, '2022-12-07 15:48:16', '2022-12-07 16:12:35', 1, 1, 1, '2022-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `treasuries_delivery`
--

CREATE TABLE `treasuries_delivery` (
  `id` int(11) NOT NULL,
  `treasuries_id` int(11) NOT NULL COMMENT 'الخزن الذى سوف تستلم',
  `treasuries_can_delivery_id` int(11) NOT NULL COMMENT 'الخزن الذى سيتم تسليمها',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treasuries_delivery`
--

INSERT INTO `treasuries_delivery` (`id`, `treasuries_id`, `treasuries_can_delivery_id`, `created_at`, `updated_at`, `added_by`, `updated_by`, `com_code`) VALUES
(3, 1, 1, '2022-09-13 12:26:51', '2022-09-13 12:26:51', 1, NULL, 1),
(4, 6, 1, '2022-12-07 16:12:54', '2022-12-07 16:12:54', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `treasuries_transactions`
--

CREATE TABLE `treasuries_transactions` (
  `id` bigint(20) NOT NULL,
  `isal_number` bigint(20) NOT NULL COMMENT 'كود العمليى الالى',
  `treasuries_id` int(11) NOT NULL,
  `mov_type` int(11) NOT NULL COMMENT 'نوع حركة النقدية ',
  `the_foregin_key` bigint(20) DEFAULT NULL COMMENT 'كود الجدول الاخر المرتبط بالحركة',
  `account_number` bigint(20) DEFAULT NULL COMMENT 'رقم الحساب المالي ',
  `is_account` tinyint(1) DEFAULT NULL COMMENT 'هل هو حساب مالي',
  `is_approved` tinyint(1) NOT NULL,
  `shift_code` bigint(20) NOT NULL COMMENT 'كود الشفت للمستخدم',
  `money` decimal(10,2) NOT NULL COMMENT 'قيمة المبلغ المصروف او المحصل بالخزنة',
  `money_for_account` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'قيمة المبلغ المستحق للحساب او علي الحساب',
  `byan` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `com_code` int(11) NOT NULL,
  `auto_serial` bigint(20) NOT NULL COMMENT 'كود تلقائى للحارك',
  `move_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='جدول حركة النقدية بالشفتات';

--
-- Dumping data for table `treasuries_transactions`
--

INSERT INTO `treasuries_transactions` (`id`, `isal_number`, `treasuries_id`, `mov_type`, `the_foregin_key`, `account_number`, `is_account`, `is_approved`, `shift_code`, `money`, `money_for_account`, `byan`, `created_at`, `added_by`, `updated_at`, `updated_by`, `com_code`, `auto_serial`, `move_date`) VALUES
(1, 12, 1, 10, NULL, 4, 1, 1, 1, '1003.00', '-1003.00', 'تحصيل نظير فاتورة مرتجع مشتريات عام فاتورة  رقم3', '2022-10-22 10:04:15', 1, '2022-10-22 10:04:15', NULL, 1, 1, '2022-10-22'),
(2, 12, 1, 9, NULL, 15, 1, 1, 1, '-1000.00', '1000.00', 'صرف نظير فاتورة مشتريات  رقم9', '2022-11-01 06:23:21', 1, '2022-11-01 06:23:21', NULL, 1, 2, '2022-11-01'),
(3, 13, 1, 5, NULL, 45, 1, 1, 1, '100000.00', '-100000.00', 'تحصيل نظير', '2022-11-01 06:26:29', 1, '2022-11-01 06:26:29', NULL, 1, 3, '2022-11-01'),
(4, 13, 1, 9, NULL, 16, 1, 1, 1, '-120.00', '120.00', 'صرف نظير فاتورة مشتريات  رقم10', '2022-11-01 06:26:38', 1, '2022-11-01 06:26:38', NULL, 1, 4, '2022-11-01'),
(5, 14, 1, 9, NULL, 17, 1, 1, 1, '-60.00', '60.00', 'صرف نظير فاتورة مشتريات  رقم11', '2022-11-01 06:29:01', 1, '2022-11-01 06:29:01', NULL, 1, 5, '2022-11-01'),
(6, 15, 1, 5, 1, 29, 1, 1, 1, '-500.00', '-500.00', 'تحصيل نظير فاتورة مبيعات  رقم1', '2022-11-02 16:02:38', 1, '2022-11-02 16:02:38', NULL, 1, 6, '2022-11-02'),
(7, 14, 1, 5, 38, NULL, NULL, 1, 1, '1000.00', '-1000.00', 'تحصيل نظير فاتورة مبيعات  رقم38', '2022-11-05 15:48:23', 1, '2022-11-05 15:48:23', NULL, 1, 7, '2022-11-05'),
(8, 14, 1, 5, 39, NULL, NULL, 1, 1, '600.00', '-600.00', 'تحصيل نظير فاتورة مبيعات  رقم39', '2022-11-05 16:00:12', 1, '2022-11-05 16:00:12', NULL, 1, 8, '2022-11-05'),
(9, 14, 1, 5, 1, NULL, NULL, 1, 1, '1800.00', '-1800.00', 'تحصيل نظير فاتورة مبيعات  رقم1', '2022-11-05 16:03:41', 1, '2022-11-05 16:03:41', NULL, 1, 9, '2022-11-05'),
(10, 14, 1, 5, 2, NULL, NULL, 1, 1, '1000.00', '-1000.00', 'تحصيل نظير فاتورة مبيعات  رقم2', '2022-11-05 16:12:21', 1, '2022-11-05 16:12:21', NULL, 1, 10, '2022-11-05'),
(11, 14, 1, 5, 3, NULL, NULL, 1, 1, '412.00', '-412.00', 'تحصيل نظير فاتورة مبيعات  رقم3', '2022-11-06 18:00:25', 1, '2022-11-06 18:00:25', NULL, 1, 11, '2022-11-06'),
(12, 14, 1, 5, 4, NULL, NULL, 1, 1, '900.00', '-900.00', 'تحصيل نظير فاتورة مبيعات  رقم4', '2022-11-06 18:17:08', 1, '2022-11-06 18:17:08', NULL, 1, 12, '2022-11-06'),
(13, 14, 1, 5, 5, NULL, NULL, 1, 1, '1030.00', '-1030.00', 'تحصيل نظير فاتورة مبيعات  رقم5', '2022-11-06 18:20:51', 1, '2022-11-06 18:20:51', NULL, 1, 13, '2022-11-06'),
(14, 14, 1, 5, 6, NULL, NULL, 1, 1, '1000.00', '-1000.00', 'تحصيل نظير فاتورة مبيعات  رقم6', '2022-11-06 18:25:03', 1, '2022-11-06 18:25:03', NULL, 1, 14, '2022-11-06'),
(15, 15, 1, 9, NULL, 17, 1, 1, 1, '-34300.00', '34300.00', 'صرف نظير فاتورة مشتريات  رقم12', '2022-11-09 14:33:32', 1, '2022-11-09 14:33:32', NULL, 1, 15, '2022-11-09'),
(16, 14, 1, 5, 7, 29, 1, 1, 1, '602.00', '-602.00', 'تحصيل نظير فاتورة مبيعات  رقم7', '2022-11-09 14:40:19', 1, '2022-11-09 14:40:19', NULL, 1, 16, '2022-11-09'),
(17, 15, 1, 9, NULL, 17, 1, 1, 1, '-6000.00', '6000.00', 'صرف نظير فاتورة مشتريات  رقم13', '2022-11-09 16:11:18', 1, '2022-11-09 16:11:18', NULL, 1, 17, '2022-11-09'),
(18, 16, 1, 9, NULL, 16, 1, 1, 1, '-1000.00', '1000.00', 'صرف نظير فاتورة مشتريات  رقم14', '2022-11-15 09:27:37', 1, '2022-11-15 09:27:37', NULL, 1, 18, '2022-11-15'),
(19, 17, 1, 3, NULL, 46, 1, 1, 1, '-2000.00', '2000.00', 'صرف نظير', '2022-11-25 02:42:19', 1, '2022-11-25 02:42:19', NULL, 1, 19, '2022-11-25'),
(20, 14, 1, 5, 17, NULL, NULL, 1, 1, '1200.00', '-1200.00', 'تحصيل نظير فاتورة مبيعات  رقم17', '2022-11-25 03:35:17', 1, '2022-11-25 03:35:17', NULL, 1, 20, '2022-11-25'),
(21, 14, 1, 4, NULL, 46, 1, 1, 1, '2000.00', '-2000.00', 'تحصيل نظير', '2022-11-25 03:49:21', 1, '2022-11-25 03:49:21', NULL, 1, 21, '2022-11-25'),
(22, 15, 1, 5, 16, NULL, NULL, 1, 1, '320.00', '-320.00', 'تحصيل نظير فاتورة مبيعات  رقم16', '2022-11-29 06:49:12', 1, '2022-11-29 06:49:12', NULL, 1, 22, '2022-11-29'),
(23, 16, 1, 27, 1, NULL, NULL, 1, 1, '-1564.00', '0.00', ' صرف نظير فاتورة خدمات مقدم لنا  رقم الفاتوره1اسم الجهة', '2022-12-03 08:42:51', 1, '2022-12-03 08:42:51', NULL, 1, 23, '2022-12-03'),
(24, 17, 1, 27, 2, 44, 1, 1, 1, '-1000.00', '1000.00', ' صرف نظير فاتورة خدمات مقدم لنا  رقم الفاتوره2', '2022-12-03 08:52:34', 1, '2022-12-03 08:52:34', NULL, 1, 24, '2022-12-03'),
(25, 15, 1, 28, 1, NULL, NULL, 1, 1, '200.00', '0.00', ' تحصيل نظير فاتورة خدمات مقدمها للغير  رقم الفاتوره1اسم الجهة', '2022-12-03 08:58:47', 1, '2022-12-03 08:58:47', NULL, 1, 25, '2022-12-03'),
(26, 16, 1, 28, 3, 46, 1, 1, 1, '300.00', '-300.00', ' تحصيل نظير فاتورة خدمات مقدمها للغير  رقم الفاتوره3', '2022-12-03 09:01:12', 1, '2022-12-03 09:01:12', NULL, 1, 26, '2022-12-03'),
(27, 18, 1, 27, 5, 44, 1, 1, 1, '-1000.00', '1000.00', ' صرف نظير فاتورة خدمات مقدم لنا  رقم الفاتوره5', '2022-12-03 13:02:11', 1, '2022-12-03 13:02:11', NULL, 1, 27, '2022-12-03'),
(28, 19, 1, 27, 9, 17, 1, 1, 1, '-1000.00', '1000.00', ' صرف نظير فاتورة خدمات مقدم لنا  رقم الفاتوره9', '2022-12-05 15:39:59', 1, '2022-12-05 15:39:59', NULL, 1, 28, '2022-12-05'),
(29, 17, 1, 28, 4, 43, 1, 1, 1, '299.00', '-299.00', ' تحصيل نظير فاتورة خدمات مقدمها للغير  رقم الفاتوره4', '2022-12-06 09:52:20', 1, '2022-12-06 09:52:20', NULL, 1, 29, '2022-12-06'),
(30, 18, 1, 10, NULL, 49, 1, 1, 1, '1000.00', '-1000.00', 'تحصيل نظير', '2022-12-07 15:53:34', 1, '2022-12-07 15:53:34', NULL, 1, 30, '2022-12-07'),
(31, 20, 1, 9, NULL, 49, 1, 1, 1, '-61597.00', '61597.00', 'صرف نظير فاتورة مشتريات  رقم15', '2022-12-07 15:59:37', 1, '2022-12-07 15:59:37', NULL, 1, 31, '2022-12-07'),
(32, 19, 1, 10, NULL, 49, 1, 1, 1, '6000.00', '-6000.00', 'تحصيل نظير فاتورة مرتجع مشتريات عام فاتورة  رقم6', '2022-12-07 16:23:20', 1, '2022-12-07 16:23:20', NULL, 1, 32, '2022-12-07'),
(33, 20, 1, 5, 19, 29, 1, 1, 1, '16524.00', '-16524.00', 'تحصيل نظير فاتورة مبيعات  رقم19', '2022-12-07 16:27:16', 1, '2022-12-07 16:27:16', NULL, 1, 33, '2022-12-07'),
(34, 21, 1, 5, 3, NULL, NULL, 1, 1, '-600.00', '-600.00', 'تحصيل نظير فاتورة مبيعات  رقم3', '2022-12-07 16:28:28', 1, '2022-12-07 16:28:28', NULL, 1, 34, '2022-12-07'),
(35, 20, 1, 28, 5, 49, 1, 1, 1, '100.00', '-100.00', ' تحصيل نظير فاتورة خدمات مقدمها للغير  رقم الفاتوره5', '2022-12-07 16:31:42', 1, '2022-12-07 16:31:42', NULL, 1, 35, '2022-12-07'),
(36, 21, 1, 10, NULL, 49, 1, 1, 1, '6000.00', '-6000.00', 'تحصيل نظير فاتورة مرتجع مشتريات عام فاتورة  رقم7', '2022-12-07 16:37:20', 1, '2022-12-07 16:37:20', NULL, 1, 36, '2022-12-07'),
(37, 22, 1, 5, 21, 29, 1, 1, 1, '9812.00', '-9812.00', 'تحصيل نظير فاتورة مبيعات  رقم21', '2022-12-07 16:39:39', 1, '2022-12-07 16:39:39', NULL, 1, 37, '2022-12-07'),
(38, 23, 1, 27, 11, 48, 1, 1, 1, '-100.00', '100.00', ' صرف نظير فاتورة خدمات مقدم لنا  رقم الفاتوره11', '2022-12-07 16:41:54', 1, '2022-12-07 16:41:54', NULL, 1, 38, '2022-12-07'),
(39, 22, 1, 4, NULL, 18, 1, 1, 1, '3000.00', '-3000.00', 'تحصيل نظير', '2022-12-10 08:33:28', 1, '2022-12-10 08:33:28', NULL, 1, 39, '2022-12-10'),
(40, 24, 1, 27, 12, 46, 1, 1, 1, '-359.00', '359.00', ' صرف نظير فاتورة خدمات مقدم لنا  رقم الفاتوره12', '2022-12-10 08:51:52', 1, '2022-12-10 08:51:52', NULL, 1, 40, '2022-12-10'),
(41, 23, 1, 10, NULL, 17, 1, 1, 1, '100.00', '-100.00', 'تحصيل نظير فاتورة مرتجع مشتريات عام فاتورة  رقم8', '2022-12-26 08:45:10', 1, '2022-12-26 08:45:10', NULL, 1, 41, '2022-12-26'),
(42, 25, 1, 9, NULL, 15, 1, 1, 1, '-3900.00', '3900.00', 'صرف نظير فاتورة مشتريات  رقم18', '2022-12-26 11:25:54', 1, '2022-12-26 11:25:54', NULL, 1, 42, '2022-12-26'),
(43, 26, 1, 9, NULL, 15, 1, 1, 1, '-9078.00', '9078.00', 'صرف نظير فاتورة مشتريات  رقم17', '2022-12-26 11:32:09', 1, '2022-12-26 11:32:09', NULL, 1, 43, '2022-12-26'),
(44, 27, 1, 9, NULL, 49, 1, 1, 1, '-2958.00', '2958.00', 'صرف نظير فاتورة مشتريات  رقم19', '2022-12-26 11:36:14', 1, '2022-12-26 11:36:14', NULL, 1, 44, '2022-12-26'),
(45, 28, 1, 9, NULL, 15, 1, 1, 1, '-3978.00', '3978.00', 'صرف نظير فاتورة مشتريات  رقم20', '2022-12-26 12:41:38', 1, '2022-12-26 12:41:38', NULL, 1, 45, '2022-12-26'),
(46, 29, 1, 9, NULL, 16, 1, 1, 1, '-3978.00', '3978.00', 'صرف نظير فاتورة مشتريات  رقم21', '2022-12-26 13:32:39', 1, '2022-12-26 13:32:39', NULL, 1, 46, '2022-12-26'),
(47, 30, 1, 9, NULL, 49, 1, 1, 1, '-100.00', '100.00', 'صرف نظير فاتورة مشتريات  رقم22', '2022-12-26 13:48:42', 1, '2022-12-26 13:48:42', NULL, 1, 47, '2022-12-26'),
(48, 31, 1, 9, NULL, 49, 1, 1, 1, '-1020.00', '1020.00', 'صرف نظير فاتورة مشتريات  رقم1', '2022-12-26 13:55:24', 1, '2022-12-26 13:55:24', NULL, 1, 48, '2022-12-26'),
(49, 32, 1, 3, NULL, 52, 1, 1, 1, '-18990.00', '18990.00', 'صرف نظير', '2023-01-04 21:10:11', 1, '2023-01-04 21:10:11', NULL, 1, 49, '2023-01-04'),
(50, 24, 1, 5, 22, NULL, NULL, 1, 1, '1818.00', '-1818.00', 'تحصيل نظير فاتورة مبيعات  رقم22', '2023-01-04 21:10:35', 1, '2023-01-04 21:10:35', NULL, 1, 50, '2023-01-04'),
(51, 24, 1, 5, 23, 26, 1, 1, 1, '2302.80', '-2302.80', 'تحصيل نظير فاتورة مبيعات  رقم23', '2023-01-04 21:29:01', 1, '2023-01-04 21:29:01', NULL, 1, 51, '2023-01-04'),
(52, 24, 1, 5, NULL, 5, 1, 1, 1, '100000.00', '-100000.00', 'تحصيل نظير', '2023-02-17 09:42:41', 1, '2023-02-17 09:42:41', NULL, 1, 52, '2023-02-17'),
(53, 25, 1, 5, 2, NULL, NULL, 1, 1, '10000.00', '-10000.00', 'تحصيل نظير فاتورة مبيعات  رقم2', '2023-02-22 20:43:54', 1, '2023-02-22 20:43:54', NULL, 1, 53, '2023-02-22');

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
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_shifts`
--
ALTER TABLE `admins_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_treasuries`
--
ALTER TABLE `admins_treasuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_panel_settings`
--
ALTER TABLE `admin_panel_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delegates`
--
ALTER TABLE `delegates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inv_itemcard`
--
ALTER TABLE `inv_itemcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_itemcard_batches`
--
ALTER TABLE `inv_itemcard_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_itemcard_categories`
--
ALTER TABLE `inv_itemcard_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_itemcard_movements`
--
ALTER TABLE `inv_itemcard_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_itemcard_movements_categories`
--
ALTER TABLE `inv_itemcard_movements_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_itemcard_movements_types`
--
ALTER TABLE `inv_itemcard_movements_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_production_exchange`
--
ALTER TABLE `inv_production_exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_production_exchange_details`
--
ALTER TABLE `inv_production_exchange_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inv_production_exchange_id` (`inv_production_exchange_id`);

--
-- Indexes for table `inv_production_lines`
--
ALTER TABLE `inv_production_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_production_order`
--
ALTER TABLE `inv_production_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_production_receive`
--
ALTER TABLE `inv_production_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_production_receive_details`
--
ALTER TABLE `inv_production_receive_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inv_production_receive_id` (`inv_production_receive_id`),
  ADD KEY `inv_production_receive_auto_serial` (`inv_production_receive_auto_serial`);

--
-- Indexes for table `inv_stores_inventory`
--
ALTER TABLE `inv_stores_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_serial` (`auto_serial`);

--
-- Indexes for table `inv_stores_inventory_details`
--
ALTER TABLE `inv_stores_inventory_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_auto_serial` (`batch_auto_serial`),
  ADD KEY `inv_stores_inventory_auto_serial` (`inv_stores_inventory_auto_serial`),
  ADD KEY `inv_stores_inventory_id` (`inv_stores_inventory_id`);

--
-- Indexes for table `inv_uoms`
--
ALTER TABLE `inv_uoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `mov_type`
--
ALTER TABLE `mov_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_serial` (`auto_serial`);

--
-- Indexes for table `sales_invoices_details`
--
ALTER TABLE `sales_invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoices_auto_serial` (`sales_invoices_auto_serial`),
  ADD KEY `sales_invoices_id` (`sales_invoices_id`);

--
-- Indexes for table `sales_invoices_return`
--
ALTER TABLE `sales_invoices_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_invoices_return_details`
--
ALTER TABLE `sales_invoices_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoices_return_id` (`sales_invoices_return_id`);

--
-- Indexes for table `sales_matrial_types`
--
ALTER TABLE `sales_matrial_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_with_orders`
--
ALTER TABLE `services_with_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_with_orders_details`
--
ALTER TABLE `services_with_orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_with_orders_id` (`services_with_orders_id`);

--
-- Indexes for table `shehab`
--
ALTER TABLE `shehab`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shehab_email_unique` (`email`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers_categories`
--
ALTER TABLE `suppliers_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers_with_orders`
--
ALTER TABLE `suppliers_with_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers_with_orders_details`
--
ALTER TABLE `suppliers_with_orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_with_order_id` (`suppliers_with_order_id`);

--
-- Indexes for table `suupliers`
--
ALTER TABLE `suupliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treasuries`
--
ALTER TABLE `treasuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treasuries_delivery`
--
ALTER TABLE `treasuries_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treasuries_transactions`
--
ALTER TABLE `treasuries_transactions`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admins_shifts`
--
ALTER TABLE `admins_shifts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins_treasuries`
--
ALTER TABLE `admins_treasuries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_panel_settings`
--
ALTER TABLE `admin_panel_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `delegates`
--
ALTER TABLE `delegates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_itemcard`
--
ALTER TABLE `inv_itemcard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inv_itemcard_batches`
--
ALTER TABLE `inv_itemcard_batches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `inv_itemcard_categories`
--
ALTER TABLE `inv_itemcard_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_itemcard_movements`
--
ALTER TABLE `inv_itemcard_movements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `inv_itemcard_movements_categories`
--
ALTER TABLE `inv_itemcard_movements_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_itemcard_movements_types`
--
ALTER TABLE `inv_itemcard_movements_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inv_production_exchange`
--
ALTER TABLE `inv_production_exchange`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_production_exchange_details`
--
ALTER TABLE `inv_production_exchange_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_production_lines`
--
ALTER TABLE `inv_production_lines`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_production_order`
--
ALTER TABLE `inv_production_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_production_receive`
--
ALTER TABLE `inv_production_receive`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_production_receive_details`
--
ALTER TABLE `inv_production_receive_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_stores_inventory`
--
ALTER TABLE `inv_stores_inventory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inv_stores_inventory_details`
--
ALTER TABLE `inv_stores_inventory_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inv_uoms`
--
ALTER TABLE `inv_uoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mov_type`
--
ALTER TABLE `mov_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sales_invoices_details`
--
ALTER TABLE `sales_invoices_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales_invoices_return`
--
ALTER TABLE `sales_invoices_return`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_invoices_return_details`
--
ALTER TABLE `sales_invoices_return_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_matrial_types`
--
ALTER TABLE `sales_matrial_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_with_orders`
--
ALTER TABLE `services_with_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services_with_orders_details`
--
ALTER TABLE `services_with_orders_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shehab`
--
ALTER TABLE `shehab`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers_categories`
--
ALTER TABLE `suppliers_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers_with_orders`
--
ALTER TABLE `suppliers_with_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers_with_orders_details`
--
ALTER TABLE `suppliers_with_orders_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suupliers`
--
ALTER TABLE `suupliers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treasuries`
--
ALTER TABLE `treasuries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treasuries_delivery`
--
ALTER TABLE `treasuries_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treasuries_transactions`
--
ALTER TABLE `treasuries_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inv_production_exchange_details`
--
ALTER TABLE `inv_production_exchange_details`
  ADD CONSTRAINT `inv_production_exchange_details_ibfk_1` FOREIGN KEY (`inv_production_exchange_id`) REFERENCES `inv_production_exchange` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_production_receive_details`
--
ALTER TABLE `inv_production_receive_details`
  ADD CONSTRAINT `inv_production_receive_details_ibfk_1` FOREIGN KEY (`inv_production_receive_id`) REFERENCES `inv_production_receive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_stores_inventory_details`
--
ALTER TABLE `inv_stores_inventory_details`
  ADD CONSTRAINT `inv_stores_inventory_details_ibfk_1` FOREIGN KEY (`inv_stores_inventory_id`) REFERENCES `inv_stores_inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoices_details`
--
ALTER TABLE `sales_invoices_details`
  ADD CONSTRAINT `sales_invoices_details_ibfk_1` FOREIGN KEY (`sales_invoices_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoices_return_details`
--
ALTER TABLE `sales_invoices_return_details`
  ADD CONSTRAINT `sales_invoices_return_details_ibfk_1` FOREIGN KEY (`sales_invoices_return_id`) REFERENCES `sales_invoices_return` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services_with_orders_details`
--
ALTER TABLE `services_with_orders_details`
  ADD CONSTRAINT `services_with_orders_details_ibfk_1` FOREIGN KEY (`services_with_orders_id`) REFERENCES `services_with_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suppliers_with_orders_details`
--
ALTER TABLE `suppliers_with_orders_details`
  ADD CONSTRAINT `suppliers_with_orders_details_ibfk_1` FOREIGN KEY (`suppliers_with_order_id`) REFERENCES `suppliers_with_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
