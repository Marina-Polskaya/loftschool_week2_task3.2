-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2023 at 05:25 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burgersDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `need_change` tinyint(1) DEFAULT NULL,
  `by_card` tinyint(1) DEFAULT NULL,
  `need_call` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `phone_number`, `address`, `comment`, `need_change`, `by_card`, `need_call`, `created_at`) VALUES
(1, 1, '+7 (913) 256 63 25', 'Ул. Вертковская, д. 46, кв. 12, этаж 4', '', NULL, NULL, NULL, '2023-07-17 21:11:15'),
(2, 1, '+7 (913) 256 63 25', 'Ул. Вертковская, д. 46, кв. 12, этаж 4', '', NULL, NULL, NULL, '2023-07-17 21:11:47'),
(3, 2, '+7 (913) 256 63 25', 'Ул. Ленина, д. 3, корпус 1, кв. 13, этаж 2', 'Домофон не работает', NULL, NULL, NULL, '2023-07-17 21:12:32'),
(4, 2, '+7 (913) 254 53 27', 'Ул. Ива, д. 3, корпус 1, кв. 13, этаж 2', 'Домофон не работает', NULL, NULL, NULL, '2023-07-17 21:12:53'),
(5, 3, '+7 (923) 587 78 96', 'Ул. Иванова, д. 12, кв. 34, этаж 5', '', NULL, NULL, NULL, '2023-07-17 21:13:34'),
(6, 3, '+7 (923) 587 78 96', 'Ул. Иванова, д. 12, кв. 34, этаж 5', '', NULL, NULL, NULL, '2023-07-17 21:13:41'),
(7, 3, '+7 (923) 587 78 96', 'Ул. Иванова, д. 12, кв. 34, этаж 5', '', NULL, NULL, NULL, '2023-07-17 21:13:42'),
(8, 2, '+7 (953) 698 78 51', 'Ул. Линейная, д. 5, кв. 12, этаж 3', '', NULL, NULL, NULL, '2023-07-17 21:15:36'),
(9, 2, '+7 (953) 698 78 51', 'Ул. Линейная, д. 5, кв. 12, этаж 3', '', NULL, NULL, NULL, '2023-07-17 21:15:39'),
(10, 4, '+7 (953) 684 21 53', 'Ул. Арбузова, д. 4, корпус 2, кв. 3, этаж 1', 'Сдача с 5 тысяч', NULL, NULL, NULL, '2023-07-17 21:18:21'),
(11, 4, '+7 (953) 688 97 89', 'Ул. Арбузова, д. 4, корпус 2, кв. 3, этаж 1', '', NULL, NULL, NULL, '2023-07-17 21:32:50'),
(12, 2, '+7 (912) 589 65 47', 'Ул. Арбузова, д. 4, корпус 2, кв. 3, этаж 1', '', NULL, NULL, NULL, '2023-07-18 23:58:15'),
(13, 2, '+7 (912) 589 65 47', 'Ул. Арбузова, д. 4, корпус 2, кв. 3, этаж 1', '', NULL, NULL, NULL, '2023-07-19 00:13:08'),
(14, 2, '+7 (912) 589 65 47', 'Ул. Арбузова, д. 4, корпус 2, кв. 3, этаж 1', '', NULL, NULL, NULL, '2023-07-19 00:22:29'),
(15, 5, '+7 (923) 451 21 45', 'Ул. Ленина, д. 1, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 00:26:17'),
(16, 5, '+7 (923) 451 21 45', 'Ул. Ленина, д. 1, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 00:33:01'),
(17, 5, '+7 (923) 451 21 45', 'Ул. Ленина, д. 1, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 00:34:14'),
(18, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 00:35:48'),
(19, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 16:51:35'),
(20, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:01:29'),
(21, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:03:07'),
(22, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:13:43'),
(23, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:15:46'),
(24, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:16:18'),
(25, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:16:34'),
(26, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:17:13'),
(27, 6, '+7 (923) 451 21 78', 'Ул. Иванова, д. 3, кв. 5, этаж 1', '', NULL, NULL, NULL, '2023-07-19 17:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `count_all_orders` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `count_all_orders`) VALUES
(1, 'Елена', 'elena@gmail.com', 2),
(2, 'Анна', 'anna@gmail.com', 7),
(3, 'Инна', 'Inna@gmail.com', 3),
(4, 'Иван', 'ivan@mail.ru', 2),
(5, 'Никита', 'nick@gmail.com', 3),
(6, 'Олег', 'oleg@gmail.com', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
