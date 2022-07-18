-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 12:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycafeweb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `o_quantity` int(11) NOT NULL,
  `o_date` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `p_id`, `u_id`, `o_quantity`, `o_date`) VALUES
(1, 1, 1, 1, '2022-07-11'),
(2, 8, 1, 1, '2022-07-11'),
(3, 1, 1, 1, '2022-07-11'),
(4, 1, 1, 4, '2022-07-11'),
(5, 2, 1, 3, '2022-07-11'),
(6, 1, 1, 4, '2022-07-11'),
(7, 2, 1, 3, '2022-07-11'),
(8, 1, 1, 4, '2022-07-11'),
(9, 2, 1, 2, '2022-07-11'),
(10, 7, 1, 2, '2022-07-12'),
(11, 1, 1, 3, '2022-07-13'),
(12, 2, 1, 2, '2022-07-13'),
(13, 1, 1, 2, '2022-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbbarang`
--

CREATE TABLE `tbbarang` (
  `id` int(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbbarang`
--

INSERT INTO `tbbarang` (`id`, `nama`, `kategori`, `harga`, `gambar`) VALUES
(1, 'Geprek', 'Food', 15000, 'geprek.jpg'),
(2, 'Nasi Goreng', 'Food', 10000, 'nasgor.jpg'),
(3, 'Spaghetti', 'Food', 20000, 'spaghetti-bolognese.jpg'),
(4, 'Mie Ayam', 'Food', 10000, 'mieayam.jpg'),
(5, 'Jus Alpukat', 'Drink', 15000, 'juspukat.jpg'),
(6, 'Jus Mangga', 'Drink', 15000, 'jusmangga.jpg'),
(7, 'Es Jeruk', 'Drink', 10000, 'esjeruk.jpg'),
(8, 'Es Teh', 'Drink', 5000, 'tehobeng.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbmessage`
--

CREATE TABLE `tbmessage` (
  `name` varchar(50) NOT NULL,
  `message` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbmessage`
--

INSERT INTO `tbmessage` (`name`, `message`) VALUES
('aliffffff', 'gooooood');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id`, `name`, `email`, `password`) VALUES
(1, 'Alif', 'nuralif@gmail.com', '1'),
(2, 'aa', 'aa@gmail.com', '1'),
(3, '22', '22@gmail.com', '2'),
(4, 'aa', 'aa@gmail.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbbarang`
--
ALTER TABLE `tbbarang`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
