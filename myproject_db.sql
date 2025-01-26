-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2025 at 01:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `luas_bangunan` decimal(10,2) DEFAULT NULL,
  `luas_dasar_bangunan` decimal(10,2) DEFAULT NULL,
  `jumlah_lantai` int(11) DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `tahun_selesai` int(11) DEFAULT NULL,
  `izin_mendirikan_bangunan_no` varchar(100) DEFAULT NULL,
  `izin_mendirikan_bangunan_tanggal` date DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kabupaten_kota` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kelurahan_desa` varchar(255) DEFAULT NULL,
  `rt_rw_rk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buildings2`
--

CREATE TABLE `buildings2` (
  `id` int(11) NOT NULL,
  `luas_bangunan` decimal(10,2) DEFAULT NULL,
  `luas_dasar_bangunan` decimal(10,2) DEFAULT NULL,
  `jumlah_lantai` int(11) DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `tahun_selesai` int(11) DEFAULT NULL,
  `izin_mendirikan_bangunan_no` varchar(100) DEFAULT NULL,
  `izin_mendirikan_bangunan_tanggal` date DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kabupaten_kota` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kelurahan_desa` varchar(255) DEFAULT NULL,
  `rt_rw_rk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `last_service` date NOT NULL,
  `next_service` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitoring_bangunan`
--

CREATE TABLE `monitoring_bangunan` (
  `id` int(11) NOT NULL,
  `jenis_bangunan` enum('Gedung','Kantor') NOT NULL,
  `nama_bangunan` varchar(255) NOT NULL,
  `luas_bangunan` decimal(10,2) NOT NULL,
  `kondisi` enum('Layak','Rusak Ringan','Rusak Berat') NOT NULL,
  `tahun_pembangunan` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdtrt`
--

CREATE TABLE `tdtrt` (
  `id2` int(11) NOT NULL,
  `unit2` varchar(255) NOT NULL,
  `qty2` int(11) NOT NULL,
  `category2` varchar(255) NOT NULL,
  `location2` varchar(255) NOT NULL,
  `last_service2` date NOT NULL,
  `next_service2` date NOT NULL,
  `status2` varchar(100) NOT NULL,
  `image2` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `reset_token`, `reset_expiry`) VALUES
(17, 'admin', 'agitamanugraha@gmail.com', '$2y$12$dS6Fgr4eZohQr.rCSEN86ezv1q7DTqAadnscP8RNQlsPdeEEZsDCC', '2025-01-23 02:17:34', NULL, NULL),
(18, 'agi', 'afitamanugraha@gmail.com', '$2y$12$wJeT3mGCNNZH/9lWe3YyJOZcS7EZLll5Ypn2c5V48S.q3mbPYMJCq', '2025-01-23 04:05:53', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings2`
--
ALTER TABLE `buildings2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring_bangunan`
--
ALTER TABLE `monitoring_bangunan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdtrt`
--
ALTER TABLE `tdtrt`
  ADD PRIMARY KEY (`id2`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buildings2`
--
ALTER TABLE `buildings2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `monitoring_bangunan`
--
ALTER TABLE `monitoring_bangunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tdtrt`
--
ALTER TABLE `tdtrt`
  MODIFY `id2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
