-- phpMyAdmin SQL Dump
-- version 5.2.2-dev+20230525.7943cf86ed
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 08:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medpharm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(7, 9, 1, 'Paracetamol-650mg-Tab', 20, 3, 'Paracetamol-Tablet-650mg.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(3, 9, 'qwer', 'mm@g.com', '9876654321', 'feeg'),
(4, 9, 'mm', 'mm@g.com', '9876654321', 'ooooooooooooooooooooooo'),
(5, 9, 'mm', 'mm@g.com', '9876654321', 'kkjugyhhjgyghhgyhgyhhhyghhj');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 9, 'mm', '123456789', 'mm@g.com', 'cash on delivery', 'flat no. 123 mg road mumbai maharashtra india - 1233', ', Valera-Tablet-5mg ( 2 )', 540, '20-Mar-2023', 'completed'),
(3, 9, 'abc', '12345677899045678', 'mm@g.com', 'cash on delivery', 'flat no. yhuju mg road pune maharashtra india - 123456778889787654', ', Paracetamol-650mg-Tab ( 1 ), Valera-Tablet-5mg ( 1 )', 290, '06-Apr-2023', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(1, 'Paracetamol-650mg-Tab', 'tablets', 'Paracetamol 650mg Tablet helps relieve pain and fever by blocking the release of certain chemical messengers responsible for fever and pain.', 20, 'Paracetamol-Tablet-650mg.png'),
(2, 'Valera-Tablet-5mg', 'tablets', 'Valera Tablet is a medicine used to treat type 2 diabetes mellitus. It is used together with a healthy diet and regular exercise to control blood sugar levels.', 270, 'Valera-Tab-5mg.png'),
(3, 'Avil-Injection', 'injection', 'Avil Injection is an antiallergic medication. It is used to treats symptoms of allergic conditions caused by insect bites/stings, certain medicines, or hives.', 20, 'Avil-injection.png'),
(4, 'Himalaya-Septilin-Tab', 'ayurvedic', 'Himalaya Septilin Tablet is a unique formulation with immunomodulatory, antioxidant, anti-inflammatory and antimicrobial properties that Helps boost the immune system, Helps the body to fight infections', 150, 'Himalaya-Septilin-Ayu-Tab.png'),
(5, 'Himalaya-Diabecon-DS-Ayu-Tab', 'ayurvedic', 'Himalaya Diabecon DS Tablet helps in the management of diabetes. It is a formulation of anti-diabetic properties. It decreases glucose production and prevents high blood sugar.', 170, 'Himalaya-Diabecon-DS-Ayu-Tab.png'),
(6, 'Cipcal-500mg-vitamin-D-Tab', 'supplements', 'Cipcal 500 Tablet is a dietary supplement formulated with calcium and vitamin D3 that promotes bone and joint health. It helps in muscle contraction, muscle building and flexibility of joints. It is a cipla product                                      \r\n                           ', 70, 'Cipcal-500mg-vitamin-D-Tab.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(8, 'OSM', 'OSM@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'photo2.jpg'),
(9, 'mm', 'mm@g.com', '202cb962ac59075b964b07152d234b70', 'user', 'black_panther_neon.jpg'),
(10, 'a', 'a@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'black_panther_neon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
