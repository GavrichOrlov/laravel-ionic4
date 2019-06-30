-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 11:36 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boyntonhibrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `_messege` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `_messege2` text COLLATE utf8mb4_bin NOT NULL,
  `_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `_name2` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `_tel` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `_email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `_email2` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `companyname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `companyurl` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `post` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `_messege`, `_messege2`, `_name`, `_name2`, `_tel`, `_email`, `_email2`, `companyname`, `companyurl`, `post`, `state`, `date`) VALUES
(1, 'サービスについて', 'this is content for support.erwerwrwrwerwrweeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwr ewrrrrrrrrrrrrrr reeeeeeeeee reeeeeeee', 'Diana', 'Orolv', '72342344567', 'diana@gmail.com', 'diana@gmail.com', 'BBC', 'http://myurl.com', 'dfdf', 'sfdsf', '0000-00-00 00:00:00'),
(2, '料金プランについて', 'This is my second message.', 'Diana', 'Orolv', '72342344567', 'diana@gmail.com', 'diana@gmail.com', 'BBC', 'http://myurl.com', 'dfdf', 'sfdsf', '2019-06-16 12:41:20'),
(3, 'サービスについて', 'contactSuccess', 'Diana', 'Orolv', '72342344567', 'diana@gmail.com', 'dian@gmail.com', 'BBC', 'http://myurl.com', 'dfdf', 'sfdsf', '2019-06-16 12:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phonenubmer` varchar(20) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `profile` text NOT NULL,
  `carnumber` varchar(100) NOT NULL,
  `type_id` int(11) NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `card_brand` varchar(255) DEFAULT NULL,
  `card_last_four` varchar(50) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approval` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `firstname`, `lastname`, `email`, `password`, `phonenubmer`, `city`, `profile`, `carnumber`, `type_id`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `approval`, `status`) VALUES
(1, 'Testing', 'Mexico', 's@a.com', '$2y$10$PxIQguG3mwS9A.kqMMwuLewLqwwFxle2bQvBSyywL1GjuH4zIiJzG', '676767676', 'Mexico', 'profiles/1558708459.jpg', '', 1, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:32:46', 'approval', 0),
(2, 'anna', 'kuzu', 'anna@gmail.com', '$2y$10$4OnS7ZmFyu9X8RHfNywOauQwWvSrEXTBRL2iIaiCnjLNzZm6cHIqC', '123456', 'vvvv', 'profiles/1559042801.jpg', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-20 07:38:30', 'unapproval', 0),
(3, 'ccc', 'ccc', 'ccc@gmail.com', '$2y$10$aW6qFjYdzRPc9s3v32/5m.AsM27M2afFUS22D2tYzj.n6lW5TKt1i', '123456', 'cccc', '', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 16:03:07', '', 0),
(4, 'tets', 'test', 'sagardoshi2020@gmail.com', '$2y$10$hO.e7QW85sIRqnPRAMPLP.HxhuBrxcKB5u6VVEALBiD7lyisCPjFK', '187648784', 'hajanaja', '', '', 4, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:02', 'unapproval', 0),
(5, 'tets', 'test', 'sagardoshi2020@gmail.com', '$2y$10$L/76UjLacmxy5rYERGiqbeW62doAtp6c03X/930XUYIeh5yWIMWFS', '187648784', 'hajanaja', '', '', 5, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:04', '', 0),
(6, 'diana', 'orlov', 'diana@gmail.com', '$2y$10$qvt1PlGb898PIDOvuPfgaO.9X/XBCxYcktHvEs.cfs7Gco6T1sK.u', '7902344564', 'vla', 'profiles/1559057268.jpg', '', 6, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:07', '', 0),
(7, 'olga', 'olov', 'olga@gmail.com', '$2y$10$nSbMDvLE/plWCO1iNTN69eztoSkfQ3svNLmh.84.0vlNjWo88gEW6', '123456789', 'wwwww', 'profiles/1559056009.jpg', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:09', '', 0),
(8, 'eee', 'eee', 'eee@gmail.com', '$2y$10$W/0THs1yW8PDe3/4X06i6uH9j09y7Wgi2gF2tjoDybxUbab9iK2Ji', '123456', 'dsdsf', '', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:11', '', 0),
(9, 'eee', 'eee', 'eee@gmail.com', '$2y$10$UrhF25yJpUnxGjI9jPpeAOj8Zhi9s7Wl4bx82xGGKQ6jF..8PnU96', '123456', 'ssss', '', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:16', 'unapproval', 0),
(10, 'ddd', 'ddd', 'ddd@gmail.com', '$2y$10$i/zBV3ouqF0zVpRBukN7ReX8Xtdlq5/LQSbbQPF4/JMhtnmgC.lJa', '123456789', 'aaa', 'profiles/1559323051.jpg', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:18', 'approval', 0),
(11, 'ggg', 'ggg', 'ggg@gmail.com', '$2y$10$fYxgVJyMKBRDBpN8rSxezuhlHNYvSnG7BNBNQ8x32goacT3KchluG', '123456', 'ggg', '', '', 2, 'acct_1EjcuuL3xeLjUvAy', '', '', '2019-06-18 14:33:20', 'unapproval', 0);

-- --------------------------------------------------------

--
-- Table structure for table `driver_info`
--

CREATE TABLE `driver_info` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `cartype_id` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `seat_count` varchar(30) NOT NULL,
  `registe_date` datetime NOT NULL,
  `carlicence` varchar(30) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver_info`
--

INSERT INTO `driver_info` (`id`, `driver_id`, `cartype_id`, `color`, `seat_count`, `registe_date`, `carlicence`, `active`) VALUES
(1, 1, 3, 'Black', '6 seat', '2019-06-19 20:35:37', 'ABC123', 0),
(2, 1, 1, 'Black', '4 seat', '2019-06-19 22:03:09', 'QWE123', 0),
(3, 1, 6, 'White', '7 seat', '2019-06-19 22:04:42', 'EWS123', 1),
(4, 1, 5, 'Red', '9 seat', '2019-06-20 07:51:46', 'ABH123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `driver_type`
--

CREATE TABLE `driver_type` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '../../../assets/img/cab.png',
  `car_name` varchar(100) NOT NULL,
  `mile_price` double NOT NULL,
  `speed` double NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver_type`
--

INSERT INTO `driver_type` (`id`, `user_id`, `icon`, `car_name`, `mile_price`, `speed`, `status`) VALUES
(1, 1, 'img/types/econo4.png', 'Econo 4', 2.36, 20, 0),
(2, 2, 'img/types/econo6.png', 'Econo 6', 2.5, 30, 1),
(3, 3, 'img/types/lux4.png', 'LUX 4', 2.25, 22, 0),
(4, 4, 'img/types/XL6.png', 'XL 6', 3, 32, 0),
(5, 5, 'img/types/lux_suv6.png', 'LUX SUV 6', 2, 25, 0),
(6, 6, 'img/types/lux_xl_suv6.png', 'LUX XL SUV 6', 2.5, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackfordriver`
--

CREATE TABLE `feedbackfordriver` (
  `id` int(11) NOT NULL,
  `riderid` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  `feedbackcontent` text NOT NULL,
  `score` int(11) NOT NULL,
  `feedbackdate` datetime NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedbackfordriver`
--

INSERT INTO `feedbackfordriver` (`id`, `riderid`, `driverid`, `feedbackcontent`, `score`, `feedbackdate`, `orderid`) VALUES
(1, 1, 2, 'Good!', 5, '2019-06-21 04:43:01', 1),
(2, 1, 2, 'Good! I will pick up again!', 5, '2019-06-21 05:35:01', 3);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackforrider`
--

CREATE TABLE `feedbackforrider` (
  `id` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  `riderid` int(11) NOT NULL,
  `feedbackcontent` text NOT NULL,
  `score` int(11) NOT NULL,
  `feedbackdate` datetime NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedbackforrider`
--

INSERT INTO `feedbackforrider` (`id`, `driverid`, `riderid`, `feedbackcontent`, `score`, `feedbackdate`, `orderid`) VALUES
(1, 2, 1, 'Good.', 5, '2019-06-21 04:42:47', 1),
(2, 2, 1, 'Thanks.', 5, '2019-06-21 05:35:12', 3);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_kind` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `lat`, `lng`, `user_id`, `user_kind`) VALUES
(1, 37.431553, -122.1050951, 1, 1),
(2, 60.058038, 30.4785862, 2, 1),
(3, 60.06258559999999, 30.49669759999997, 3, 1),
(4, 60.06258559939999, 30.38258559999995, 4, 1),
(5, 60.05258559999999, 30.28258559999994, 5, 1),
(6, 60.058038, 30.4785862, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2019_06_10_161019_create_user_table', 1),
('2019_06_10_161257_create_password_resets_table', 1),
('2019_06_10_161314_create_subscriptions_table', 1),
('2019_06_10_161327_create_plans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `origin_lat` double NOT NULL,
  `origin_lng` double NOT NULL,
  `destination_lat` double NOT NULL,
  `destination_lng` double NOT NULL,
  `create_date` datetime NOT NULL,
  `amount` double NOT NULL,
  `distance` double NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 NOT NULL,
  `showpickup` varchar(100) NOT NULL,
  `showdestination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `rider_id`, `driver_id`, `status`, `flag`, `origin_lat`, `origin_lng`, `destination_lat`, `destination_lng`, `create_date`, `amount`, `distance`, `token`, `showpickup`, `showdestination`) VALUES
(1, 1, 2, 1, 3, 60.058038, 30.4785862, 60.0554299, 30.4684881, '2019-06-20 08:42:25', 3.4, 0.3, '', '58 Novoye Devyatkino Ulitsa Glavnaya', 'Novoye Devyatkino, Murino, Leningradskaya oblast, Russia, 188661'),
(2, 1, 2, 2, 3, 60.058038, 30.4785862, 60.0559545, 30.4811115, '2019-06-20 09:32:16', 3.4, 0.3, '', '58 Novoye Devyatkino Ulitsa Glavnaya', 'Poliklinika Novoye Devyatkino, улица Энергетиков, Novoye Devyatkino, Leningradskaya oblast, Russia, '),
(3, 1, 2, 1, 3, 60.058038, 30.4785862, 60.0554299, 30.4684881, '2019-06-20 09:34:28', 3.4, 0.3, '', '58 Novoye Devyatkino Ulitsa Glavnaya', 'Novoye Devyatkino, Murino, Leningradskaya oblast, Russia, 188661');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvc` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `create_date` datetime NOT NULL,
  `pay_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `number`, `exp_month`, `exp_year`, `cvc`, `token`, `rider_id`, `type_id`, `driver_id`, `order_id`, `amount`, `flag`, `create_date`, `pay_date`) VALUES
(1, '4242424242424242', 12, 2020, 220, 'tok_1EnX5OGPUal5pwp47liTh9mE', 1, 2, 2, 1, 0, 3, '2019-06-20 08:41:30', '2019-06-20 08:42:25'),
(2, '4242424242424242', 12, 2020, 220, 'tok_1EnX8AGPUal5pwp4dqsLQPjo', 1, 2, 2, 2, 0, 3, '2019-06-20 08:44:22', '2019-06-20 09:32:16'),
(3, '4242424242424242', 12, 2020, 220, 'tok_1EnXtmGPUal5pwp4AiD5P8Py', 1, 2, 2, 3, 0, 3, '2019-06-20 09:33:34', '2019-06-20 09:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

CREATE TABLE `riders` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phonenubmer` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `profile` text NOT NULL,
  `approval` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`id`, `firstname`, `lastname`, `email`, `password`, `phonenubmer`, `city`, `profile`, `approval`) VALUES
(1, 'david', 'ccc', 'david@gmail.com', '$2y$10$vo0NVlPwmNV16zqLOIq92e1htRGBzpIE1471Wa7wS/fpSb/rzOLtC', '123456789', 'vvvvvv', 'profiles/1558638339.jpg', 'approval'),
(2, 'ttt', 'ttt', 'ttt@gmail.com', '$2y$10$Hy5iWMZWx0dERD9a0IvKfOWTMs9oWsCzM9G8Q/i9O12WCxunM/Adm', '123456', 'vvvv', '', 'unapproval'),
(3, 'hhh', 'hhh', 'hhh@gmail.com', '$2y$10$BcuZlK94/rgEVO0wh3czneRTMOvBcFDEsCyveLjLwvUyCI5536Hym', '123456789', 'hhh', 'profiles/1559650817.jpg', 'approval');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(5) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_info`
--
ALTER TABLE `driver_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_type`
--
ALTER TABLE `driver_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackfordriver`
--
ALTER TABLE `feedbackfordriver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackforrider`
--
ALTER TABLE `feedbackforrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_slug_unique` (`slug`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `driver_info`
--
ALTER TABLE `driver_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `driver_type`
--
ALTER TABLE `driver_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feedbackfordriver`
--
ALTER TABLE `feedbackfordriver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedbackforrider`
--
ALTER TABLE `feedbackforrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `riders`
--
ALTER TABLE `riders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
