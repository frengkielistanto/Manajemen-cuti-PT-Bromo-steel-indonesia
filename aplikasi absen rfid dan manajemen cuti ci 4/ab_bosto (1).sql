-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 06:55 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ab_bosto`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(5) UNSIGNED NOT NULL,
  `nokartu` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_istirahat` time DEFAULT NULL,
  `jam_kembali` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `nokartu`, `tanggal`, `jam_masuk`, `jam_istirahat`, `jam_kembali`, `jam_pulang`, `nama_karyawan`) VALUES
(351, '123', '2020-08-13', '01:51:00', '01:51:00', '01:51:00', '01:51:00', 'Frengki elistanto'),
(352, '321', '2020-08-13', '01:51:00', '01:51:00', '01:51:00', '01:51:00', 'Fitria \'aziati'),
(353, '31', '2020-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'batu'),
(354, '11', '2021-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'abdul kholiq'),
(355, '12', '2022-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'franciska wulandari'),
(356, '13', '2023-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'm ludfyrahman'),
(357, '14', '2024-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'roza nuril'),
(358, '15', '2025-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'rafinaldi'),
(359, '16', '2026-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'nevarida'),
(360, '17', '2027-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'awaludin'),
(361, '20', '2028-08-13', '02:51:00', '02:51:00', '02:52:00', '02:58:00', 'andreantre');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int(5) UNSIGNED NOT NULL,
  `cuti` double NOT NULL,
  `id_karyawan` int(5) NOT NULL,
  `tgl_cuti` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `cuti`, `id_karyawan`, `tgl_cuti`) VALUES
(119, 1, 49, '2021-12-01'),
(120, 1, 49, '1970-01-01'),
(121, 1, 49, '2021-12-20'),
(122, 1, 50, '1970-01-01'),
(123, 1, 50, '2021-12-01'),
(124, 1, 50, '2021-12-20'),
(125, 0.5, 56, '2021-12-20'),
(126, 0.5, 56, '2021-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(5) UNSIGNED NOT NULL,
  `nokartu` varchar(25) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `tempat` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text DEFAULT NULL,
  `jk` varchar(10) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `status` varchar(25) NOT NULL,
  `bagian` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `total_cuti` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nokartu`, `nik`, `nama_karyawan`, `tempat`, `tgl_lahir`, `alamat`, `jk`, `tgl_masuk`, `status`, `bagian`, `jabatan`, `total_cuti`) VALUES
(49, '123', 99, 'Frengki elistanto', 'lumajang', '2021-10-12', 'lumajang', 'Laki Laki', '2021-10-25', 'Pegawai Harian', 'ketua', 'ketua', 12),
(50, '321', 88, 'Fitria \'aziati', 'pasuruan', '2021-10-05', 'lumajang', 'Laki Laki', '2021-10-19', 'Pegawai Harian', 'wakil', 'wakil', 12),
(56, '31', 23, 'batu', 'lumajang', '2021-12-07', 'pasuruan', 'Laki Laki', '2021-12-07', 'Pegawai Harian', 'sekretaris', 'sekretaris', 12),
(57, '11', 22, 'abdul kholiq', 'jember', '2021-12-13', 'jember', 'Laki Laki', '2021-12-07', 'Pegawai Harian', 'bendahara', 'bendahara', 12),
(58, '12', 24, 'franciska wulandari', 'bojonegoro', '2021-12-07', 'bojonegoro', 'Laki Laki', '2021-12-07', 'Pegawai Harian', 'bendahara', 'bendahara', 12),
(59, '13', 25, 'm ludfyrahman', 'bondowoso', '2021-12-13', 'bondowoso', 'Laki Laki', '2021-12-14', 'Pegawai Harian', 'anggota', 'anggota', 12),
(60, '14', 26, 'roza nuril', 'banyuwangi', '2021-12-06', 'jember', 'Laki Laki', '2021-12-14', 'Pegawai Harian', 'anggota', 'anggota', 12),
(61, '15', 27, 'rafinaldi', 'jember', '2021-12-08', 'jember', 'Laki Laki', '2009-12-06', 'Pegawai Harian', 'gudang', 'anggota', 12),
(62, '16', 28, 'nevarida', 'tuban', '2021-12-07', 'tuban', 'Perempuan', '2021-12-14', 'Pegawai Harian', 'pemasaran', 'anggota', 12),
(63, '17', 29, 'awaludin', 'probolinggo', '2021-12-07', 'probolinggo', 'Laki Laki', '2021-12-06', 'Pegawai Harian', 'anggota', 'anggota', 11),
(64, '20', 30, 'andreantre', 'bondowoso', '2021-12-07', 'bondowoso', 'Perempuan', '2021-12-08', 'Pegawai Harian', 'gudang', 'anggota', 12);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2021-08-26-012807', 'App\\Database\\Migrations\\Karyawan', 'default', 'App', 1629959955, 1),
(3, '2021-09-01-062044', 'App\\Database\\Migrations\\Absensi', 'default', 'App', 1630551074, 2),
(4, '2021-09-08-070230', 'App\\Database\\Migrations\\Cuti', 'default', 'App', 1631084947, 3),
(5, '2021-09-09-033900', 'App\\Database\\Migrations\\User', 'default', 'App', 1631158837, 4),
(6, '2021-09-22-024743', 'App\\Database\\Migrations\\Karyawan', 'default', 'App', 1632278872, 5),
(7, '2021-09-22-062340', 'App\\Database\\Migrations\\Tmprfid', 'default', 'App', 1632291962, 6);

-- --------------------------------------------------------

--
-- Table structure for table `statuss`
--

CREATE TABLE `statuss` (
  `mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statuss`
--

INSERT INTO `statuss` (`mode`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `tmprfid`
--

CREATE TABLE `tmprfid` (
  `nokartu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `pwd`) VALUES
(1, 'admin', '$2y$10$qc1NR2PxPlc1D1UWYj41D.YYPaUeQL8PtC7qloNqcTd0u89IuOeUy'),
(2, 'admin', '$2y$10$aSsubvBwet1eCq4tRK6K4epezxKByMQk1hAdgJEqFvhuxs9S4MgWC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_karyawan` (`nokartu`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuss`
--
ALTER TABLE `statuss`
  ADD PRIMARY KEY (`mode`);

--
-- Indexes for table `tmprfid`
--
ALTER TABLE `tmprfid`
  ADD PRIMARY KEY (`nokartu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
