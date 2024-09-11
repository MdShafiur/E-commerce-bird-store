-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2024 at 05:37 PM
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
-- Database: `birdstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@birdblissboutique.com', '', '2024-08-31 14:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`rs_id`, `title`, `description`, `image`, `date`) VALUES
(1, 'Pet Birds', ' Get available/custom pet bird of your choice! ', '66d2102991957.jpeg', '2024-08-30 18:32:09'),
(2, 'Bird Food', ' Order bird food for your pet bird! ', '66d22ba8a10dd.jpg', '2024-08-30 20:29:28'),
(3, 'Bird Cages', ' Order bird cage of your choice for your pet bird! ', '66d23109aac7c.jpg', '2024-08-30 20:52:25'),
(4, 'Bird Accessories', ' Get accessories to entertain your pet bird! ', '66d30f76775ce.jpg', '2024-08-31 12:41:26'),
(5, 'Custom Orders', 'Custom order any bird or bird products of your choice!', '66d2f5bb91c11.jpg', '2024-08-31 10:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Lutino Ringneck Parakeet', '4 Months old Lutino Indian Ringneck.', 6500.00, 'yellowringneck.jpeg'),
(2, 1, 'Budgie', 'Single Male Adult Budgie ', 600.00, 'Budgie.jpeg'),
(3, 4, 'Bird swing toy ', 'Natural Wooden Parrots Swing Toy', 78.00, 'toys3.jpg'),
(4, 1, 'Sun Conure', 'A breeding pair of Sun Conures ', 35000.00, 'sunconure.jpeg'),
(5, 2, 'Bird Feeding Syringe', 'Baby Bird Hand Rearing Feeding Syringe', 50.00, 'syringefeed.jpg'),
(6, 2, 'Petslife Hand Feeding Formula Birds Food 500gm', 'Brand: Petslife\r\nHelps promote stronger, healthier bird.\r\nPremium nutrition for all baby birds.\r\n', 1500.00, 'formula500g.jpg'),
(7, 2, 'Quik Premium Parakeet Mix Pack for Lovebirds & Cockatiels 0.75KG\r\n', 'Quik Premium Parakeet Mix has been specially formulated by veterinarians and nutritionists according to the taste of Lovebirds, Cockatiels & Other Parakeets.', 340.00, 'mixpack.jpg'),
(8, 2, 'Hydro Tonic Block For Birds - 5pcs\r\n', 'Tonic block high protin\r\n100% mineral\r\nFor use of any birds\r\n5 pcs per pack', 70.00, 'hydrotonicblock.jpg'),
(9, 3, 'ZENY 52-Inch Wrought Iron Bird Cage with Rolling Stand', 'ZENY brand 52-Inch Bird Cage, Wrought Iron Standing Large Flight King Birdcage with Rolling Stand, Parakeet Parrot Cage for Large Birds Cockatiels African Grey Quaker Amazon Sun Pigeons', 14000.00, 'cage1.jpg'),
(10, 3, 'China Portable Metal Bird Cage With Feeding Accessories', 'Packing:CartonSize:60cm*43cm*41cm\r\nFunction:Pet \r\nAdvantage:Long Service Life', 2500.00, 'cage2.jpg'),
(11, 3, 'SUERTREE Portable Bird Carrier Bag with Stand - Small Parrot Travel Cage', 'SUERTREE Bird Carrier Bag Bird Travel Cage with Stand, Lightweight Backpack for Parrot, Portable Bird Travel Bag, Pet Transparent Breathable Travel Cage.\r\n\r\n', 7000.00, 'cage3.jpg'),
(12, 3, 'Bird Breeding box', 'Standard Breeding Box for English Budgies, Love Birds With Full Set-up.', 400.00, 'cage4.jpg'),
(13, 4, '5 in 1 bird toy set', '5 IN 1 SET: Contains 2x bell ball, 1x Trolley, 1x Training skateboard, 1x Parrot ring set.', 550.00, 'toys1.jpg'),
(14, 4, 'KATUMO Coconut Bird House with Colorful Ladder and Toys for Small Birds', 'KATUMO Bird Toys, Parrot Swing Parakeet Ladder Conure Wood Perch Bird Chew Toys Cockatiel Hanging Bell Toys for Parakeet, Conure, Cockatiel, Mynah, Love Birds, Finch, Small Pet Birds\r\n\r\n', 3100.00, 'toys2.jpg'),
(15, 4, 'Multiple Hole Hanging Bird Feeder', 'Bird Feeder Automatic Foot Feeding Tool Outdoor Bird Feeder Hanging Nut Feeding Multiple Hole Dispenser Holder Food Container', 1200.00, 'feeder1.jpg'),
(16, 4, 'Birds Food and Water Pot set', 'Convenient pots for food and/or water for pet birds.', 60.00, 'feeder2.jpg'),
(17, 1, 'Cockatiel', 'A single female cockatiel 5 months old', 2000.00, 'cockatiel.jpeg'),
(18, 5, 'Custom Order', 'Provide bird or product name and its description in the input field and in ( ) write your Whatsapp number for us to contact you. Thank you.', 100.00, '66d2f5bb91c11.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 10, 'in process', 'Bhicky Pleaj ', '2024-08-30 11:01:52'),
(2, 12, 'closed', 'Paid by Cash', '2024-08-30 14:51:54'),
(3, 1, 'rejected', 'Sorry! Out of Stock.', '2024-08-31 15:35:43'),
(4, 2, 'closed', 'Thank you for ordering from us!', '2024-08-31 15:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'shafiurrahman', 'Shafiur', 'Rahman', 'srsifat2000@gmail.com', '01164370015', '6ebe76c9fb411be97b3b0d48b791a7c9', 'Klg Campus Residence, Block B, Skudai 81110, Johor Bahru, Malaysia.', 1, '2024-08-31 14:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 1, 'Cockatiel', 1, 2000.00, 'rejected', '2024-08-31 15:35:43'),
(2, 1, 'Lutino Ringneck Parakeet', 1, 6500.00, 'closed', '2024-08-31 15:36:35'),
(3, 1, 'Maccaw blue bird (+60177276679)', 1, 100.00, NULL, '2024-08-31 15:33:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
