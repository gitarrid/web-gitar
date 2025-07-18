-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2025 at 12:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gitar`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id_ci` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id_ci`, `name`, `email`, `message`, `tanggal`) VALUES
(4, 'Lucas', 'lucas@gmail.com', 'Barang yang dikirim dengan kualitas yang sangat premium. Tetapi ada sedikit baret. Mungkin dapat meningkat keamanan barang yang akan di kirim \r\nbarang :â˜…â˜…â˜…â˜…â˜…\r\npengiriman : â˜…â˜…â˜…', '2024-06-14 10:16:42'),
(5, 'Lucas', 'lucas@gmail.com', 'Barang yang dikirim dengan kualitas yang sangat premium, tetapi ada sedikit baret. Mungkin dapat meningkat keamanan barang yang akan di kirim \r\nbarang     :â˜…â˜…â˜…â˜…â˜…\r\npengiriman :â˜…â˜…â˜…', '2024-06-14 10:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `address`, `phone`, `payment_method`, `total_price`, `status`, `order_date`) VALUES
(6, 'Riziq', 'Bukittinggi', '081234567890', 'credit_card', 19050000.00, 'pending', '2024-06-18 00:47:40'),
(7, 'Aby', 'Biaro', '091234567890', 'credit_card', 26950000.00, 'pending', '2024-06-18 00:51:23'),
(8, 'Jungwoo', 'Indonesia', '098765432112', 'credit_card', 26950000.00, 'pending', '2024-06-19 01:08:06'),
(9, 'Muhadist Hasbi Irsyadi', 'Bukittinggi', '093878460006', 'cash_on_delivery', 99999999.99, 'pending', '2024-06-19 03:30:19'),
(10, 'Muhadist Hasbi Irsyadi', 'Papua', '098765432112', 'bank_transfer', 24500000.00, 'pending', '2024-06-25 03:36:38'),
(11, 'Jon Irwil', 'Padang', '091266808081', 'cash_on_delivery', 46000000.00, 'pending', '2024-06-25 13:29:38'),
(12, 'Mutiara Hafizah', 'Bukittingggi', '0912345125628', 'cash_on_delivery', 6585000.00, 'pending', '2024-06-25 21:29:35'),
(13, 'Silvie', 'Solok', '08123456790', 'bank_transfer', 26950000.00, 'pending', '2024-07-02 13:45:04'),
(14, 'censi ', 'JL.Kemuning Perumnas Talago,Sumatra Barat', '081378105427', 'credit_card', 52700000.00, 'pending', '2025-01-11 15:02:46'),
(15, 'censi ', 'JL.Kemuning Perumnas Talago,Sumatra Barat', '081378105427', 'credit_card', 23000000.00, 'pending', '2025-01-11 15:05:02'),
(16, 'censi ', 'JL.Kemuning Perumnas Talago,Sumatra Barat', '081378105427', 'credit_card', 52700000.00, 'pending', '2025-01-11 15:08:49'),
(17, 'censi ', 'JL.Kemuning Perumnas Talago,Sumatra Barat', '081378105427', 'credit_card', 26950000.00, 'pending', '2025-01-12 18:48:11'),
(18, 'censi ', 'JL.Kemuning Perumnas Talago,Sumatra Barat', '081378105427', 'credit_card', 26950000.00, 'pending', '2025-01-13 16:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id_detail`, `order_id`, `product_id`, `name`, `quantity`, `price`) VALUES
(3, 6, 6, 'Ibanez Jem Flower Gitar Listrik Elektrik', 1, 17550000.00),
(4, 7, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00),
(5, 8, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00),
(6, 9, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 1, 25750000.00),
(7, 9, 3, 'Gretsch G6146TG Player Edition Falcon', 1, 55850000.00),
(8, 9, 5, 'Kramer Baretta Custom Graphics Feral Cat', 1, 23000000.00),
(9, 9, 6, 'Ibanez Jem Flower Gitar Listrik Elektrik', 1, 17550000.00),
(10, 10, 4, 'Stringray Gitar Bass Musicman Hitam', 1, 1500000.00),
(11, 10, 5, 'Kramer Baretta Custom Graphics Feral Cat', 1, 23000000.00),
(12, 11, 5, 'Kramer Baretta Custom Graphics Feral Cat', 2, 23000000.00),
(13, 12, 7, ' Yamaha Pacifica 112V Gitar Elektrik - Sonic blue', 1, 3295000.00),
(14, 12, 8, 'Yamaha Pacifica 112VM Gitar Elektrik original', 1, 3290000.00),
(15, 13, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00),
(16, 14, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00),
(17, 14, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 1, 25750000.00),
(18, 15, 5, 'Kramer Baretta Custom Graphics Feral Cat', 1, 23000000.00),
(19, 16, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00),
(20, 16, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 1, 25750000.00),
(21, 17, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00),
(22, 18, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, 26950000.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(60) NOT NULL,
  `price` double NOT NULL,
  `stok_tersedia` int(11) DEFAULT 0,
  `stok_awal` int(11) DEFAULT NULL,
  `stok_terjual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `description`, `price`, `stok_tersedia`, `stok_awal`, `stok_terjual`) VALUES
(1, 'G&L USA Guitar ASAT Classic in Surf Green finishes.jpg', 'G&L USA Guitar ASAT Classic in Surf Gree', 'Barang limited edition\r\nwarna : green mit', 26950000, 1, 10, 9),
(2, 'G&L Tribute Comanche Gloss Black Gitar Listrikk.jpg', 'G&L Tribute Comanche Gloss Black Gitar L', 'warna : Hitam\r\ntype : electric gitar', 25750000, 5, 15, 10),
(3, 'Gretsch G6146TG Player Edition Falcon.jpg', 'Gretsch G6146TG Player Edition Falcon', 'warna : putih, merah, hitam\r\ntampilan : aestetic dan mewah', 55850000, 6, 12, 6),
(4, 'Stringray Gitar Bass Musicman Hitam.jpg', 'Stringray Gitar Bass Musicman Hitam', 'type : Gitar Bass\r\nWarna : Hitam', 1500000, 6, 8, 2),
(5, 'Kramer Baretta Custom Graphics Feral Cat Electric Guitar.jpg', 'Kramer Baretta Custom Graphics Feral Cat', 'Rainbow Leopard Kramer Baretta Custom  Graphics Feral Cat El', 23000000, 0, 10, 10),
(6, 'Ibanez Jem Flower Gitar Listrik Elektrik Custom.jpg', 'Ibanez Jem Flower Gitar Listrik Elektrik', 'Type : custom gitar\r\ndengan motif flower', 17550000, 0, 9, 9),
(7, 'Yamaha Pacifica 112V Gitar Elektrik.jpg', ' Yamaha Pacifica 112V Gitar Elektrik - Sonic blue', 'ini merupakan gitar dengan type electric guitar. Gitar denga', 3295000, 13, 14, 1),
(8, 'Yamaha Pacifica 112VM Gitar Elektrik original.jpg', 'Yamaha Pacifica 112VM Gitar Elektrik original', 'ini merupakan gitar dengan type electric guitar. Gitar denga', 3290000, 6, 7, 1),
(9, 'Kulkas Side by Side dengan Family Hubâ„¢ dan SpaceMaxâ„¢ Technology, 681 L.jfif', 'Kulkas Side by Side dengan Family Hubâ„¢ dan SpaceMaxâ„¢ Technology, 681 L', 'Kulkas ini memiliki 2 pintu dengan tampilan yang bagus.', 15000000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE `stok_barang` (
  `id_stok` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `stok_awal` int(11) DEFAULT NULL,
  `stok_tersedia` int(11) DEFAULT NULL,
  `stok_terjual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id_stok`, `product_id`, `name`, `stok_awal`, `stok_tersedia`, `stok_terjual`) VALUES
(1, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 10, 6, 4),
(2, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 15, 7, 8),
(3, 3, 'Gretsch G6146TG Player Edition Falcon', 12, 6, 6),
(4, 4, 'Stringray Gitar Bass Musicman Hitam', 8, 6, 2),
(5, 5, 'Kramer Baretta Custom Graphics Feral Cat', 10, 3, 7),
(6, 6, 'Ibanez Jem Flower Gitar Listrik Elektrik', 9, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `order_id`, `product_id`, `name`, `jumlah`, `tanggal`) VALUES
(1, 6, 4, 'Stringray Gitar Bass Musicman Hitam', 1, '2024-06-18'),
(2, 6, 6, 'Ibanez Jem Flower Gitar Listrik Elektrik', 1, '2024-06-18'),
(3, 7, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2024-06-18'),
(4, 8, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2024-06-19'),
(5, 9, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 1, '2024-06-19'),
(6, 9, 3, 'Gretsch G6146TG Player Edition Falcon', 1, '2024-06-19'),
(7, 9, 5, 'Kramer Baretta Custom Graphics Feral Cat', 1, '2024-06-19'),
(8, 9, 6, 'Ibanez Jem Flower Gitar Listrik Elektrik', 1, '2024-06-19'),
(9, 10, 4, 'Stringray Gitar Bass Musicman Hitam', 1, '2024-06-25'),
(10, 10, 5, 'Kramer Baretta Custom Graphics Feral Cat', 1, '2024-06-25'),
(11, 11, 5, 'Kramer Baretta Custom Graphics Feral Cat', 2, '2024-06-25'),
(12, 12, 7, ' Yamaha Pacifica 112V Gitar Elektrik - Sonic blue', 1, '2024-06-25'),
(13, 12, 8, 'Yamaha Pacifica 112VM Gitar Elektrik original', 1, '2024-06-25'),
(14, NULL, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2024-07-02'),
(15, NULL, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2025-01-11'),
(16, NULL, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 1, '2025-01-11'),
(17, NULL, 5, 'Kramer Baretta Custom Graphics Feral Cat', 1, '2025-01-11'),
(18, NULL, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2025-01-11'),
(19, NULL, 2, 'G&L Tribute Comanche Gloss Black Gitar L', 1, '2025-01-11'),
(20, NULL, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2025-01-12'),
(21, NULL, 1, 'G&L USA Guitar ASAT Classic in Surf Gree', 1, '2025-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('customer','admin') NOT NULL DEFAULT 'customer',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(10, 'censi', 'censipanahatan366@gmail.com', '$2y$10$hO1YUkvP8tBHegi.dvf04eyWVa9rgu6Xa682F7Gv2.qpe/aj9djby', 'customer', '2025-01-12 11:47:44'),
(11, 'dara', 'sabina.dara@gmail.com', '$2y$10$3vzfFSG3WPx6wVarC/3Ze.xsZE94eCc3Nm6HqnTqWhwlGcTvtTEA6', 'admin', '2025-01-12 11:48:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id_ci`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id_ci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
