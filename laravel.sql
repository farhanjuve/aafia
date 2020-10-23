-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 05:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter_tbl`
--

CREATE TABLE `dokter_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` int(20) DEFAULT NULL,
  `umum_gigi` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_10_04_121606_create_pasien_tbl', 1),
(3, '2020_10_04_121619_create_dokter_tbl', 1),
(4, '2020_10_04_121630_create_transaction_tbl', 1),
(5, '2020_10_04_121839_create_tindakan_tbl', 1),
(6, '2020_10_04_121952_create_tindakanumum_tbl', 1),
(7, '2020_10_04_122709_create_stock_tbl', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasien_tbl`
--

CREATE TABLE `pasien_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_rm` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` bigint(20) NOT NULL,
  `lp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goldar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` int(11) NOT NULL,
  `sts_nikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kel_wali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_kel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_kel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tekanan_darah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suhu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tb` int(11) NOT NULL,
  `bb` int(11) NOT NULL,
  `opname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jantung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diabetes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hemofilia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hepatitis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gastring` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ginjal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tbc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rheu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lainlain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kebiasaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasien_tbl`
--

INSERT INTO `pasien_tbl` (`id`, `no_rm`, `name`, `nik`, `lp`, `goldar`, `agama`, `ttl`, `alamat`, `telp`, `sts_nikah`, `pekerjaan`, `kel_wali`, `sts_kel`, `name_kel`, `telp_kel`, `tekanan_darah`, `suhu`, `tb`, `bb`, `opname`, `operasi`, `alergi`, `jantung`, `diabetes`, `hemofilia`, `hepatitis`, `gastring`, `ginjal`, `asma`, `tbc`, `rheu`, `lainlain`, `kebiasaan`, `created_at`, `updated_at`) VALUES
(8, 1, 'Achmad Farhan Mustaqim', 3372012001970002, 'Laki-laki', 'B', 'islam', '', 'Sondakan', 818202604, 'lajang', 'Swasta', 'keluarga', 'Suami', 'namawali', '081', '110/90', '36', 185, 75, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2020-10-20 05:47:43', '2020-10-20 05:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `stock_tbl`
--

CREATE TABLE `stock_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tindakanumum_tbl`
--

CREATE TABLE `tindakanumum_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tindakan_tbl`
--

CREATE TABLE `tindakan_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tindakan_tbl`
--

INSERT INTO `tindakan_tbl` (`id`, `jenis`, `deskripsi`, `kode`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'ORTHODONTIC ', 'PASANG KAWAT /BEHEL GIGI, Bracket', 'b1a', 5500000, '2020-10-10 11:37:19', '2020-10-10 11:37:19'),
(2, 'KONSERVASI GIGI', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 'a1a', 150000, '2020-10-10 11:38:37', '2020-10-10 11:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tbl`
--

CREATE TABLE `transaction_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_transaksi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rm` bigint(20) DEFAULT NULL,
  `poli` tinyint(4) DEFAULT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan_isPick` smallint(6) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`id`, `nomor_transaksi`, `nomor_rm`, `poli`, `nama_pasien`, `tindakan`, `tindakan_isPick`, `status`, `harga`, `remarks`, `created_at`, `updated_at`) VALUES
(6, '0', 1, NULL, 'Achmad Farhan Mustaqim', 'b1a', 0, 'Mendapat_Dokter', NULL, NULL, '2020-10-20 05:48:00', '2020-10-21 11:00:50'),
(7, '0', 1, NULL, 'Achmad Farhan Mustaqim', 'a1a', 0, 'Mendapat_Dokter', NULL, NULL, '2020-10-20 05:48:00', '2020-10-21 11:00:50'),
(8, '0', 1, NULL, 'Achmad Farhan Mustaqim', 'b1a', 0, 'mencari_dokter', NULL, NULL, '2020-10-20 05:48:06', '2020-10-20 05:48:06'),
(9, '0', 1, NULL, 'Achmad Farhan Mustaqim', 'a1a', 0, 'mencari_dokter', NULL, NULL, '2020-10-20 05:48:06', '2020-10-20 05:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lp` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gigi_umum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `kode`, `lp`, `alamat`, `telp`, `email`, `gigi_umum`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'a', 'admin', 'L', 'Kartosuro', '1', 'admin-uat@dhl.com', NULL, NULL, '$2y$10$yOnkSheNCYPhDrHfnWdU8.YwgJqw0x.6a6YUIDpKUqMSHBboMuL0O', NULL, '2020-10-10 04:29:35', '2020-10-10 04:29:35'),
(9, 'q', 'super-admin', 'L', 'Kartosuro', '1', 'q@q.c', NULL, NULL, '$2y$10$Ft.njqJ7TbX6aRZ6BvVrf.2uUv1lz8tj6xI4tRlPJPGzTZKnho2wW', NULL, '2020-10-10 04:32:11', '2020-10-10 04:32:11'),
(10, 'Dokter 1', 'dokter', 'L', 'Sondakan', '081', 'farhanjuve@gmail.com', NULL, NULL, '$2y$10$Q0mzs496YXQik/Kp5UoSNu/eEdF74RyXVWh2.9yibhaZN6mUO7JJS', NULL, '2020-10-10 05:16:47', '2020-10-10 05:16:47'),
(11, 'Kasir 1', 'kasir', 'P', 'Kartosuro', '0271', 'kasir@aafia.my.id', NULL, NULL, '$2y$10$Q/VydC.oWISI3vdUwvbiN.2R6qo2XD0NJCL29pByBbtuFLwKvR.xO', NULL, '2020-10-11 06:16:43', '2020-10-11 06:16:43'),
(12, 'Kasir 2', 'kasir', 'L', 'Kartosuro', '0271', 'kasir2@klinikaafia.my.id', NULL, NULL, '$2y$10$CX3lfuRS52kR7egJOcAZpe.fgD5zox/0W9x6wsJ69w43hHRB.ujzG', NULL, '2020-10-11 10:08:23', '2020-10-11 10:08:23'),
(13, 'Dokter 2', 'Dokter', 'L', 'Kartosuro', '0271', 'dokter2@klinikaafia.my.id', 'umum', NULL, '$2y$10$pzZa2bhGDK1eBCTnfBPCSeOVI/.WMD7HqzpHZzK5SSNboPDUT7TUG', NULL, '2020-10-11 10:21:48', '2020-10-11 10:21:48'),
(14, 'Dokter 3', 'Dokter', 'P', 'Kartosuro', '1212', 'dokter3@klinikaafia.my.id', 'umum', NULL, '$2y$10$DilfH50WHc2ZDyMyqsfCgeNka4sxJl84HK66epBBew/uf338mFVcy', NULL, '2020-10-11 10:26:29', '2020-10-11 10:26:29'),
(15, 'Dokter 3', 'Dokter', 'P', 'Kartosuro', '1212', 'dokter3@klinikaafia.my.id', 'umum', NULL, '$2y$10$nt74ThHCCbMcy.GI3ONhD..rVG8xTx7eD3g4xVFqfyM8zK53U/SPO', NULL, '2020-10-11 10:27:56', '2020-10-11 10:27:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter_tbl`
--
ALTER TABLE `dokter_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien_tbl`
--
ALTER TABLE `pasien_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_tbl`
--
ALTER TABLE `stock_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tindakanumum_tbl`
--
ALTER TABLE `tindakanumum_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tindakan_tbl`
--
ALTER TABLE `tindakan_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
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
-- AUTO_INCREMENT for table `dokter_tbl`
--
ALTER TABLE `dokter_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pasien_tbl`
--
ALTER TABLE `pasien_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock_tbl`
--
ALTER TABLE `stock_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tindakanumum_tbl`
--
ALTER TABLE `tindakanumum_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tindakan_tbl`
--
ALTER TABLE `tindakan_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
