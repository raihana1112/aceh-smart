-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 03:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kebutuhan`
--

CREATE TABLE `kebutuhan` (
  `id` int(20) NOT NULL,
  `komoditas` varchar(20) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `kebutuhan` float NOT NULL,
  `kabupaten` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kebutuhan`
--

INSERT INTO `kebutuhan` (`id`, `komoditas`, `bulan`, `kebutuhan`, `kabupaten`) VALUES
(1, 'cabai', '8', 172, 'banda aceh'),
(2, 'cabai', '8', 128, 'aceh besar'),
(3, 'cabai', '8', 211, 'lhokseumawe'),
(4, 'cabai', '9', 151, 'banda aceh'),
(5, 'cabai', '9', 255, 'aceh besar'),
(6, 'cabai', '9', 176, 'lhokseumawe'),
(7, 'cabai', '10', 298, 'banda aceh'),
(8, 'cabai', '10', 144, 'aceh besar'),
(9, 'cabai', '10', 223, 'lhokseumawe'),
(10, 'cabai', '11', 299, 'banda aceh'),
(11, 'cabai', '11', 231, 'aceh besar'),
(12, 'cabai', '11', 205, 'lhokseumawe'),
(13, 'cabai', '12', 181, 'banda aceh'),
(14, 'cabai', '12', 299, 'aceh besar'),
(15, 'cabai', '12', 283, 'lhokseumawe'),
(16, 'bawang', '8', 183, 'banda aceh'),
(17, 'bawang', '8', 298, 'aceh besar'),
(18, 'bawang', '8', 158, 'lhokseumawe'),
(19, 'bawang', '9', 293, 'banda aceh'),
(20, 'bawang', '9', 293, 'aceh besar'),
(21, 'bawang', '9', 136, 'lhokseumawe'),
(22, 'bawang', '10', 282, 'banda aceh'),
(23, 'bawang', '10', 231, 'aceh besar'),
(24, 'bawang', '10', 140, 'lhokseumawe'),
(25, 'bawang', '11', 292, 'banda aceh'),
(26, 'bawang', '11', 155, 'aceh besar'),
(27, 'bawang', '11', 222, 'lhokseumawe'),
(28, 'bawang', '12', 162, 'banda aceh'),
(29, 'bawang', '12', 166, 'aceh besar'),
(30, 'bawang', '12', 142, 'lhokseumawe'),
(31, 'beras', '8', 147, 'banda aceh'),
(32, 'beras', '8', 205, 'aceh besar'),
(33, 'beras', '8', 177, 'lhokseumawe'),
(34, 'beras', '9', 273, 'banda aceh'),
(35, 'beras', '9', 261, 'aceh besar'),
(36, 'beras', '9', 224, 'lhokseumawe'),
(37, 'beras', '10', 215, 'banda aceh'),
(38, 'beras', '10', 225, 'aceh besar'),
(39, 'beras', '10', 108, 'lhokseumawe'),
(40, 'beras', '11', 245, 'banda aceh'),
(41, 'beras', '11', 128, 'aceh besar'),
(42, 'beras', '11', 188, 'lhokseumawe'),
(43, 'beras', '12', 287, 'banda aceh'),
(44, 'beras', '12', 180, 'aceh besar'),
(45, 'beras', '12', 273, 'lhokseumawe');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(10) NOT NULL,
  `nama_lahan` varchar(20) NOT NULL,
  `luas_lahan` int(20) NOT NULL,
  `komoditas` varchar(20) NOT NULL,
  `hasil_panen` float NOT NULL,
  `bulan_tanam` varchar(20) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `desa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `nama_lahan`, `luas_lahan`, `komoditas`, `hasil_panen`, `bulan_tanam`, `kabupaten`, `kecamatan`, `desa`) VALUES
(1, '', 1944, 'Cabai', 1.75, 'januari', 'banda aceh', '', ''),
(2, '', 3420, 'cabai', 3.078, 'januari', 'aceh besar', '', ''),
(3, '', 2585, 'bawang', 2.456, 'januari', 'aceh besar', '', ''),
(4, '', 3836, 'beras', 2.685, 'januari', 'banda aceh', '', ''),
(5, '', 3473, 'beras', 2.431, 'januari', 'lhokseumawe', '', ''),
(6, '', 1100, 'bawang', 1.045, 'januari', 'lhokseumawe', '', ''),
(7, '', 2095, 'bawang', 1.99, 'februari', 'banda aceh', '', ''),
(8, '', 2609, 'beras', 1.826, 'februari', 'aceh besar', '', ''),
(9, '', 2306, 'cabai', 2.075, 'februari', 'lhokseumawe', '', ''),
(10, '', 1966, 'bawang', 1.868, 'februari', 'aceh besar', '', ''),
(11, '', 1805, 'beras', 1.264, 'februari', 'banda aceh', '', ''),
(12, '', 3674, 'cabai', 3.307, 'maret', 'aceh besar', '', ''),
(13, '', 1641, 'cabai', 1.477, 'maret', 'banda aceh', '', ''),
(14, '', 4047, 'bawang', 3.845, 'maret', 'lhokseumawe', '', ''),
(15, '', 4730, 'beras', 3.311, 'maret', 'lhokseumawe', '', ''),
(16, '', 4626, 'bawang', 4.395, 'maret', 'banda aceh', '', ''),
(17, '', 3823, 'cabai', 3.441, 'maret', 'aceh besar', '', ''),
(18, '', 4733, 'beras', 3.313, 'april', 'banda aceh', '', ''),
(19, '', 1657, 'bawang', 1.574, 'april', 'lhokseumawe', '', ''),
(20, '', 3565, 'beras', 2.496, 'april', 'lhokseumawe', '', ''),
(21, '', 1765, 'cabai', 1.589, 'april', 'banda aceh', '', ''),
(22, '', 4486, 'beras', 3.14, 'april', 'aceh besar', '', ''),
(23, '', 1537, 'cabai', 1.383, 'mei', 'lhokseumawe', '', ''),
(24, '', 3587, 'bawang', 3.408, 'mei', 'aceh besar', '', ''),
(25, '', 3079, 'bawang', 2.925, 'mei', 'banda aceh', '', ''),
(26, '', 3960, 'beras', 2.772, 'mei', 'aceh besar', '', ''),
(27, '', 2817, 'cabai', 2.535, 'juni', 'banda aceh', '', ''),
(28, '', 2581, 'cabai', 2.323, 'juni', 'lhokseumawe', '', ''),
(29, '', 1864, 'beras', 1.305, 'juni', 'lhokseumawe', '', ''),
(30, '', 984, 'bawang', 0.935, 'juli', 'banda aceh', '', ''),
(31, '', 541, 'bawang', 0.514, 'juli', 'aceh besar', '', ''),
(32, '', 4146, 'beras', 2.902, 'juli', 'banda aceh', '', ''),
(33, '', 4875, 'cabai', 4.388, 'juli', 'lhokseumawe', '', ''),
(34, '', 4352, 'cabai', 3.917, 'juli', 'lhokseumawe', '', ''),
(35, '', 2030, 'beras', 1.421, 'agustus', 'banda aceh', '', ''),
(36, '', 2039, 'bawang', 1.937, 'agustus', 'aceh besar', '', ''),
(37, '', 902, 'beras', 0.631, 'agustus', 'lhokseumawe', '', ''),
(38, '', 3807, 'cabai', 3.426, 'agustus', 'aceh besar', '', ''),
(39, '', 2835, 'bawang', 2.693, 'agustus', 'banda aceh', '', ''),
(40, '', 3296, 'beras', 2.307, 'september', 'aceh besar', '', ''),
(41, '', 3739, 'cabai', 3.365, 'september', 'banda aceh', '', ''),
(42, '', 2114, 'bawang', 2.008, 'september', 'lhokseumawe', '', ''),
(43, '', 3690, 'beras', 2.583, 'september', 'lhokseumawe', '', ''),
(44, '', 3764, 'cabai', 3.388, 'oktober', 'banda aceh', '', ''),
(45, '', 2490, 'bawang', 2366, 'oktober', 'aceh besar', '', ''),
(46, '', 997, 'beras', 0.698, 'oktober', 'banda aceh', '', ''),
(47, '', 759, 'cabai', 0.683, 'november', 'lhokseumawe', '', ''),
(48, '', 3239, 'bawang', 3.077, 'november', 'lhokseumawe', '', ''),
(49, '', 1351, 'beras', 0.946, 'november', 'banda aceh', '', ''),
(50, '', 4360, 'beras', 3.052, 'november', 'aceh besar', '', ''),
(51, '', 4378, 'cabai', 3.94, 'november', 'lhokseumawe', '', ''),
(52, '', 2787, 'bawang', 2.648, 'desember', 'aceh besar', '', ''),
(53, '', 1952, 'bawang', 1.854, 'desember', 'banda aceh', '', ''),
(54, '', 4074, 'beras', 2.852, 'desember', 'aceh besar', '', ''),
(55, '', 3973, 'cabai', 3.576, 'desember', 'banda aceh', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `instansi` varchar(50) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `id_penyuluh` varchar(20) DEFAULT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` text DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  `level` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `instansi`, `nip`, `id_penyuluh`, `telp`, `alamat`, `username`, `password`, `level`) VALUES
(1, 'Maulidil', NULL, NULL, NULL, '08123456789', 'Tungkop', 'petani', '123', 'petani'),
(2, 'raihana', 'Dinas Lingkungan Hidup', '198812012002', NULL, '08123456789', NULL, 'raihana', '123', 'pemerintah'),
(3, '', '', '', NULL, '', NULL, '', '123', 'pemerintah'),
(20, 'iwan', 'kota banda aceh', '0081233', NULL, '081237589', NULL, 'iwan', '123', 'pemerintah'),
(21, 'iwan', 'kota banda aceh', '0081233', NULL, '081237589', NULL, 'iwan', '123', 'pemerintah'),
(22, 'iwan', NULL, NULL, NULL, '', NULL, 'iwan', '', ''),
(23, 'iwan', NULL, NULL, NULL, '', NULL, 'iwan', '', ''),
(24, 'iwan', '082347', '082374', NULL, '08126373', NULL, 'iwan', '123', 'pemerintah'),
(31, 'iwan', 'kota banda aceh', '0812467', NULL, '0812637', NULL, 'iwan', '123', 'pemerintah'),
(35, 'iwan', 'kota', '0923', NULL, '123', NULL, 'iwan', '123', 'pemerintah'),
(44, 'p', NULL, NULL, NULL, '12', 'p', 'p', '12', 'petani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kebutuhan`
--
ALTER TABLE `kebutuhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kebutuhan`
--
ALTER TABLE `kebutuhan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
