-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2021 at 03:19 AM
-- Server version: 5.7.32
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinikaa_laravel`
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
  `telp` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umum_gigi` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokter_tbl`
--

INSERT INTO `dokter_tbl` (`id`, `name`, `ttl`, `lp`, `alamat`, `telp`, `umum_gigi`, `created_at`, `updated_at`) VALUES
(1, 'EKA AGUSTIAWAN', NULL, 'L', 'PUCANGAN RT 01/01 PUCANGAN KARTASURA', NULL, 'gigi', '2020-11-08 15:42:14', '2020-11-08 15:42:14'),
(2, 'drg. EDY KARYADI', NULL, 'L', 'PUCANGAN RT 01/01 PUCANGAN KARTASURA', '089678954321', 'gigi', '2020-11-08 15:49:53', '2020-11-08 15:49:53'),
(3, 'WISTHA', NULL, 'L', 'KEBAGUSAN BLOK A NO.09 SURAKARTA', '088234675434', 'umum', '2020-11-08 15:57:51', '2020-11-08 15:57:51'),
(4, 'dokter 1', NULL, 'L', 'skh', '0823223', 'gigi', '2020-12-08 14:00:01', '2020-12-08 14:00:01'),
(5, 'dokter 2', NULL, NULL, 'skh', '0821', 'gigi', '2020-12-08 14:01:58', '2020-12-08 14:01:58'),
(6, 'DOKTER A', NULL, 'L', 'semarang', '081234567', 'gigi', '2020-12-19 08:26:58', '2020-12-19 08:26:58'),
(7, 'DOKTER Ab', NULL, 'L', 'semarang', NULL, NULL, '2020-12-19 08:29:09', '2020-12-19 08:29:09'),
(8, 'DOKTER Abc', NULL, 'L', 'semarang', '12345678901', 'gigi', '2020-12-19 08:34:28', '2020-12-19 08:34:28'),
(9, 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', NULL, 'L', 'Kartasura', '08122955234', 'gigi', '2020-12-22 18:02:06', '2020-12-22 18:02:06'),
(10, 'drg. Pamungkas H.M', NULL, 'L', 'surakarta', '085228852120', 'gigi', '2020-12-23 07:59:17', '2020-12-23 07:59:17'),
(11, 'drg. Haris Kusumanto', NULL, 'L', 'surakarta', '081325093671', 'gigi', '2020-12-23 08:20:18', '2020-12-23 08:20:18'),
(12, 'dr. Iwan Maryono', NULL, 'L', 'sukoharjo', '081', 'umum', '2020-12-23 08:23:38', '2020-12-23 08:23:38'),
(13, 'ALMA MISQI', NULL, 'P', 'Kartasura', '081329286334', 'umum', '2020-12-23 09:09:57', '2020-12-23 09:09:57'),
(14, 'Ariqo Jauza Ulhaq', NULL, 'L', 'Kartasura', '082136141232', 'gigi', '2020-12-23 09:13:30', '2020-12-23 09:13:30');

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
  `no_rm` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` bigint(20) NOT NULL,
  `lp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goldar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sts_nikah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kel_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sts_kel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_kel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_kel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tekanan_darah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suhu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tb` int(11) DEFAULT NULL,
  `bb` int(11) DEFAULT NULL,
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
(2, '000001\r\n', 'Nn ARINI NUR YUNIS', 3311125006990002, 'Perempuan', 'A', 'islam', '', 'SURAKARTA', '813930841', 'lajang', 'MAHASISWA', 'keluarga', 'AYAH', 'Tn SUYATMIN', '081393084145', '120/80', '36', 159, 67, '', 'OPRASI', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 16:03:20', '2020-12-22 16:03:20'),
(16, '000002\n', 'Sdr DICKY WAHYU', 3311121105010004, 'Laki-laki', 'A', 'islam', '', 'PUCANGAN RT01/12 PUCANGAN KARTASURA', '085781507932', 'lajang', '', 'keluarga', 'AYAH', '11 MEI 2001', '085781507932', '128/74', '36', 168, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 17:10:03', '2020-12-22 17:10:03'),
(17, '000003\r\n', 'Sdr FABIAN', 3311122009020006, 'Laki-laki', 'A', 'islam', '', 'PUCANGAN RT 03/12 KARTASURA', '089670447797', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn SUTONO', '089670447797', '116/73', '36', 169, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 17:14:19', '2020-12-22 17:14:19'),
(18, '000004\n', 'An RISKI WAHYU', 3398756780210003, 'Laki-laki', 'B', 'islam', '', 'PUCANGAN RT 01/01 PUCANGAN KARTASURA', '081248004902', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn AGUS SUTORO', '081248004902', '120/80', '36', 160, 58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 17:24:51', '2020-12-22 17:24:51'),
(19, '000005\n', 'Ny ENDANG PURWANI', 3310165906760001, 'Perempuan', 'A', 'islam', '', 'SIDOMULYO RT 02/05 DELANGGU', '0813154575009', 'menikah', 'IRT', 'keluarga', 'AYAH', 'Tn DWIKO WAYANG', '0813154575009', '142/72', '36', 155, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 17:45:13', '2020-12-22 17:45:13'),
(20, '000006\n', 'Tn HAIDAR AHMAD M', 3310171705020001, 'Laki-laki', 'B', 'islam', '', 'SIDOMULYO RT 14/05 POLANHARJO', '08813921787', 'lajang', 'MAHASISWA', 'keluarga', 'AYAH', 'Tn UNTUNG PRIYANTO', '08813921787', '127/81', '36', 168, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 17:50:14', '2020-12-22 17:50:14'),
(21, '000007\n', 'Sdr HANIF', 3326789765470006, 'Laki-laki', 'B', 'islam', '', 'SUMBER', '08221434816', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn MUHSYAFRUDIN', '08221434816', '108/63', '36', 167, 67, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 18:07:31', '2020-12-22 18:07:31'),
(22, '000008\n', 'Sdr AGA', 3311126908710001, 'Laki-laki', 'A', 'islam', '', 'CANGAKAN, WIRONANGAN, GATAK', '085786679921', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn KASIAN', '085786679921', '120/80', '36', 100, 68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 18:15:35', '2020-12-22 18:15:35'),
(23, '000009\n', 'Nn REGINA', 3311178658790002, 'Perempuan', 'A', 'islam', '', 'NGEMPLAK RT 04/01 BOYOLALI', '082299080209', 'lajang', 'MAHASISWI', 'keluarga', 'AYAH', 'Tn ADE KURNIANTO', '082299080209', '101/69', '36', 160, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 18:19:03', '2020-12-22 18:19:03'),
(24, '000010\n', 'Nn BHARA AMBARWATI', 3309096911970003, 'Perempuan', 'B', 'islam', '', 'KEBONDALEM RT 02/01 BONDAN BANYUDONO', '085640165787', 'lajang', 'SWASTA', 'keluarga', 'IBU', 'Ny JARWATI', '085640165787', '114/77', '36', 155, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 18:22:09', '2020-12-22 18:22:09'),
(25, '000011\n', 'Nn LIVOLI', 3378965489710005, 'Laki-laki', 'A', 'islam', '', 'WONOGIRI', '081904762021', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn DWI SUPRIYONO', '081904762021', '110/59', '36', 155, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-22 18:24:45', '2020-12-22 18:24:45'),
(30, '000012\n', 'Ny SUPRANTININGSIH', 3311126704680002, 'Perempuan', 'A', 'islam', '', 'PUCANGAN, KARTASURA, SUKOHARJO', '081111111111', 'lajang', 'ibu rumah tangga', 'wali', '', 'AA', '081111111111', '154/90', '36', 160, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 09:04:30', '2020-12-23 09:04:30'),
(31, '000013\n', 'Sdr AHMAD DENY S', 3309070203029002, 'Laki-laki', 'A', 'islam', '', 'TERAS, BOYOLALI', '085740570118', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn JUWENI', '085740570118', '120/71', '36', 159, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 13:26:35', '2020-12-23 13:26:35'),
(32, '000014\n', 'Sdr Rifky Pradiva', 3372012706990002, 'Laki-laki', 'O', 'islam', '', 'Laweyan solo', '0895392819078', 'lajang', 'Swasta', 'wali', '', 'TB Agus Kardiono', '0895392819078', 'Td 125/59', '36', 170, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 13:29:19', '2020-12-23 13:29:19'),
(33, '000015\n', 'Sdr. Salsabila', 123, 'Perempuan', 'O', 'islam', '', 'SURAKARTA', '08970234312', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Didik Riyanto', '08970234312', '110/59', '36', 155, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 13:40:34', '2020-12-23 13:40:34'),
(35, '000017\n', 'Sdr. Hendiawan', 3311092404020008, 'Laki-laki', 'B', 'islam', '', 'GROGOL, SUKOHARJO', '0859772507836', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn SUTRISNO', '0859772507836', '130/80', '36', 165, 65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 14:06:30', '2020-12-23 14:06:30'),
(37, '000019\n', 'sdr Tegar Riyanto', 0, 'Laki-laki', 'O', 'islam', '', 'SOLO', '089509902094', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN DIDIK RIANTO', '000000', '119/70', '36', 165, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 14:18:04', '2020-12-23 14:18:04'),
(38, '000020\n', 'AN ANGGI', 0, 'Perempuan', 'O', 'islam', '', 'PUCANGAN 02/01', '081225896125', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN IWAN', '00000', '92/61', '36', 140, 40, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 14:27:20', '2020-12-23 14:27:20'),
(40, '000022\n', 'NN Armandung', 0, 'Perempuan', 'O', 'islam', '', 'GROGOL, SUKOHARJO', '081213542725', 'lajang', 'KULIAH', 'keluarga', 'AYAH', 'TN SARIJAN', '00000', '94/65', '36', 160, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 14:33:38', '2020-12-23 14:33:38'),
(41, '000023\n', 'Sdr ALFANTINO', 0, 'Laki-laki', 'O', 'islam', '', 'GROGOL, SUKOHARJO', '0895422624929', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn IPUNG WIJAYANTO', '0895422624929', '98/70', '35', 158, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:02:33', '2020-12-23 15:02:33'),
(42, '000024\n', 'TN RAJENDRA', 0, 'Laki-laki', 'O', 'islam', '', 'GROGOL RT 03/05, KUARASAN GROGOL, SUKOHARJO', '082322220400', 'lajang', 'MAHASISWA', 'keluarga', 'AYAH', 'Tn SARIJAN', '082322220400', '112/71', '36', 165, 68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:10:49', '2020-12-23 15:10:49'),
(43, '000025\n', 'AN HAFIZ R', 0, 'Laki-laki', 'O', 'islam', '', 'KEPUTREN RT 03/08 KARTASURA', '08823738942', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN SUYADI', '08823738942', '119/57', '36', 160, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:14:02', '2020-12-23 15:14:02'),
(44, '000026\n', 'Sdr KEVIN NUR KISYUWONO', 3311112907010003, 'Laki-laki', 'O', 'islam', '', 'JANTRAN RT 02/05 MAYANG GATAK, SUKOHARJO', '089676795884', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN KISNO', '089676795884', '105/62', '36', 160, 68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:21:55', '2020-12-23 15:21:55'),
(45, '000027\n', 'TN BASUKI', 0, 'Laki-laki', 'O', 'islam', '', 'NGEMPLAK RT 02/05', '081344983832', 'lajang', 'TNI-AD', 'keluarga', 'AYAH', 'TN BASUKI', '081344983832', '123/79', '35', 179, 68, '', '', 'SULFA, ANTALGIN', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:27:16', '2020-12-23 15:27:16'),
(46, '000028\n', 'AN DIKA PRAMUDIA', 0, 'Laki-laki', 'O', 'islam', '', 'NGEMPLAK RT 03/06 BOYOLALI', '088218731844', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN SUTARMIN', '00000', '105/80', '36', 165, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:37:48', '2020-12-23 15:37:48'),
(47, '000029\n', 'AN RENDA', 0, 'Laki-laki', 'O', 'islam', '', 'KLATEN', '081328045584', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN PURNOMO', '081328045584', '117/67', '36', 160, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 15:44:52', '2020-12-23 15:44:52'),
(49, '000031\n', 'Sdr GUNADIAR LARASATI', 3311126109010001, 'Perempuan', 'O', 'islam', '', 'KANDANG MENJANGAN RT 01/14', '089653295355', 'lajang', 'MAHASISWI', 'keluarga', 'AYAH', 'Tn GUNADI', '089653295355', '99/71', '36', 160, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 16:12:57', '2020-12-23 16:12:57'),
(50, '000032\n', 'Ny ENDANG SULASTRI', 0, 'Perempuan', 'O', 'islam', '', 'KANDANG MENJANGAN RT 01/14', '089653295355', 'lajang', 'GURU', 'keluarga', 'AYAH', 'Tn GUNADI', '089653295355', '', '36', 160, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 16:16:11', '2020-12-23 16:16:11'),
(51, '000033\n', 'Sdr NABILA ANSORI', 0, 'Perempuan', 'O', 'islam', '', 'GONILAN', '085333858212', 'lajang', 'GONILAN, KARTASURA', 'keluarga', 'AYAH', 'Tn ANSORI', '085333858212', '117/104', '36', 165, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 16:19:11', '2020-12-23 16:19:11'),
(52, '000034\n', 'Tn BUDI RIANTO', 3604040705770213, 'Laki-laki', 'O', 'islam', '', 'KANDANG MENJANGAN RT 01/14', '082398127777', 'menikah', 'TNI-AD', 'keluarga', 'AYAH', 'Tn BUDI RIANTO', '082398127777', '119/80', '36', 170, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 16:49:33', '2020-12-23 16:49:33'),
(53, '000035\n', 'Nn YOSI SAPRIENTI', 1302115109860001, 'Laki-laki', 'O', 'islam', '', 'KEPUTREN RT 03/08 KARTASURA', '085700944462', 'menikah', 'IRT', 'keluarga', 'AYAH', 'Tn ADI RUSTIADI', '085700944462', '110/70', '36', 157, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-23 18:01:48', '2020-12-23 18:01:48'),
(54, '000036\n', 'Tn SAIFUL', 101010101010101, 'Laki-laki', 'A', 'islam', '', 'KEMASAN, KARTASURA', '082138438790', 'menikah', 'WIRASWASTA', 'wali', 'ISTRI', 'ISTRI', '082138438790', '108/63', '36', 165, 56, '', '', '', '', '', '', '', '', '', '', '', '', '', 'MEROKOK', '2020-12-24 08:02:20', '2020-12-24 08:02:20'),
(55, '000037\n', 'Sdr ALMAM PAMUNGKAS', 10101010101010101, 'Laki-laki', 'A', 'islam', '', 'KEMASAN, KARTASURA', '082138438790', 'lajang', 'PELAJAR', 'wali', 'AYAH', 'Tn SAIFUL', '082138438790', '115/76', '36', 120, 30, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 08:04:38', '2020-12-24 08:04:38'),
(56, '000038\n', 'Nn KHOSYI HURIN ANGGRAINI', 0, 'Perempuan', 'O', 'islam', '', 'PUCANGAN', '', 'lajang', '', 'wali', 'AYAH', 'Tn SUYATNO', '081327599451', '96/73', '36', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 09:58:21', '2020-12-24 12:37:55'),
(57, '000039\n', 'Tn WASTON', 0, 'Laki-laki', 'O', 'islam', '', 'GONILAN', '082227878610', 'menikah', 'DOSEN', 'keluarga', 'AYAH', 'Tn WASTON', '082227878610', '159/109', '36', 170, 65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 13:17:26', '2020-12-24 13:17:26'),
(58, '000040\n', 'Ny SUTINAH', 0, 'Perempuan', 'O', 'islam', '', 'PUCANGAN', '085678745798', 'menikah', 'JUALAN', 'keluarga', 'SUAMI', 'Tn IWAN SUBAGIYO', '111', '115/76', '36', 158, 65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 13:20:10', '2020-12-24 13:20:10'),
(59, '000041\n', 'Nn EVITA DWI PRASANTI', 3172024808010001, 'Perempuan', 'O', 'islam', '', 'KAMPUNG SILUMAN RT03/02 TAMBUN SELATAN, BEKASI', '0889020778065', 'lajang', 'MAHASISWI', 'keluarga', 'AYAH', 'TN RUSLANI', '0889020778065', '110/80', '36', 160, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 14:47:10', '2020-12-24 14:47:10'),
(60, '000042\n', 'Nn YESIKA', 0, 'Perempuan', 'O', 'islam', '', 'NGAWI', '082243718127', 'lajang', 'MAHASISWI', 'keluarga', 'AYAH', 'TN GIONO', '082243718127', '133/96', '36', 157, 45, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 14:55:30', '2020-12-24 14:55:30'),
(61, '000043\n', 'SDR ZISKY', 0, 'Laki-laki', 'A', 'islam', '', 'KARANGANYAR', '085715521626', 'lajang', 'MAHASISWA', 'keluarga', 'AYAH', 'TN GIONO', '085715521626', '102/67', '36', 160, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 15:03:31', '2020-12-24 15:03:31'),
(62, '000044\n', 'NN SALMA RIZKI SUHARDI', 3309117103010005, 'Perempuan', 'A', 'islam', '', 'GAGAK SIPAT RT 06/13 NGEMPLAK KARTASURA', '085728841935', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'TN SUHARDI', '085728841935', '140/96', '36', 158, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 15:21:40', '2020-12-24 15:21:40'),
(63, '000045\n', 'AN AHTAR', 0, 'Laki-laki', 'O', 'islam', '', 'KRAPAYAK RT 01/10 KARTASURA', '08156721401', 'lajang', 'PAUD', 'keluarga', 'AYAH', 'TN HERI PURWANTO', '08156721401', '90/60', '36', 97, 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 17:01:53', '2020-12-24 17:01:53'),
(64, '000046\n', 'TN DRS. H MARPUJI ALI', 3372052108510002, 'Laki-laki', 'O', 'islam', '', 'JL. TERATAI RT 04/14 BANJARSARI', '0811294991', 'lajang', 'DOSEN', 'keluarga', 'SUAMI', 'TN DRS. H MARPUJI ALI', '0811294991', '130/88', '36', 178, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-24 17:51:03', '2020-12-24 17:51:03'),
(65, '000047\n', 'Sdr ARDHIKA', 3311091601020002, 'Laki-laki', 'O', 'islam', '', 'NGLAWU 04/02 TELUKAN GROGOL', '083866079990', 'lajang', 'MAHASISWA', 'wali', 'AYAH', 'Tn TARWOKO', '083866079990', '110/80', '36', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-25 15:14:55', '2020-12-25 15:14:55'),
(66, '000048\n', 'Sdr FARIZAL WIDYAN AJI', 3314031105030005, 'Laki-laki', 'A', 'islam', '', 'KARANG, PERENG, MOJOGEDANG', '085604672823', 'lajang', 'MAHASISWA', 'wali', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-25 15:16:44', '2020-12-25 15:16:44'),
(67, '000049\n', 'Sdr SATRIA YUDA KARYANA', 33111080111030004, 'Laki-laki', 'AB', 'islam', '', 'PALUR KULON 01/02 PALUR MOJOLABAN', '087745636749', 'lajang', 'MAHASISWA', 'wali', 'AYAH', 'Tn SUMEDI KARYANA', '', '123/68', '36', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-25 15:30:15', '2020-12-25 15:30:15'),
(68, '000050\n', 'An Naura Khalisa Azzahra', 0, 'Perempuan', 'A', 'islam', '', 'PUCANGAN', '081226687774', 'lajang', '', 'wali', '', 'Tn TRIANO NUGROHO', '', '', '36', 127, 27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-25 16:55:02', '2020-12-25 16:55:02'),
(69, '000051\n', 'An RAFARDHAN ATTALLA NUGROHO', 0, 'Laki-laki', 'A', 'islam', '', 'PUCANGAN', '081226687774', 'lajang', '', 'wali', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-25 16:56:14', '2020-12-25 16:56:14'),
(70, '000052\n', 'Tn TRISNO NUGROHO', 0, 'Laki-laki', 'A', 'islam', '', 'PUCANGAN', '081252525143', 'lajang', 'POLISI', 'wali', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-25 16:58:02', '2020-12-25 16:58:02'),
(71, '000053\n', 'Sdr NURISNAYANI', 3372055908990006, 'Perempuan', 'O', 'islam', '', 'BANYUANYAR', '081344067514', 'lajang', 'MAHASISWA', 'wali', 'AYAH', 'Tn MARYONO', '081344067514', '120/80', '36', 165, 43, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 06:10:43', '2020-12-26 06:10:43'),
(72, '000054\n', 'Sdr BEATA HOLY ANJANI', 0, 'Laki-laki', 'AB', 'kristen', '', 'BIBIS LUHUR 03/22 NUSUKAN SOLO', '081358248980', 'lajang', 'PELAJAR', 'wali', 'AYAH', 'Tn HANDY', '081358248980', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 10:22:55', '2020-12-26 10:22:55'),
(73, '000055\n', 'Sdr CERISA CHRISTY DANTI', 0, 'Laki-laki', 'AB', 'kristen', '', 'BIBIS LUHUR 03/22 NUSUKAN SOLO', '081358248980', 'lajang', 'PELAJAR', 'wali', 'AYAH', 'Tn HANDY', '081358248980', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 10:24:21', '2020-12-26 10:24:21'),
(74, '000056\n', 'Sdr FAIZAL YOGA PUTRA', 0, 'Laki-laki', 'A', 'islam', '', 'SUREN 15/03 NGAGLIK SAMBI BOYOLALI', '085229062850', 'lajang', 'MAHASISWA', 'wali', 'AYAH', 'Tn TRIYOTO', '085229062850', '120/80', '36', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 10:57:59', '2020-12-26 10:57:59'),
(75, '000057\n', 'Sdr ALAMSYAH NAVRADA LISTYA', 3310242801010001, 'Laki-laki', 'A', 'islam', '', 'GIRIMULYO BLOK A GG.16 06/06 GERGUNUNG KLATEN UTARA', '000000000000', 'lajang', 'MAHASISWA', 'wali', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 11:07:41', '2020-12-26 11:07:41'),
(76, '000058\n', 'Nn HENI WIJIYANTI', 367102580993004, 'Perempuan', 'O', 'islam', '', 'ASRAMA YONIF MEKANIS 203 GANDASARI, JATIUWUNG', '081293333281', 'menikah', 'IRT', 'keluarga', 'ISTRI', 'TN JUNIANTO', '081293333281', '102/67', '36', 158, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 12:33:02', '2020-12-26 12:33:02'),
(77, '000059\n', 'Tn TRISNO NUGROHO', 3310071401840001, 'Laki-laki', 'O', 'islam', '', 'SAMBEN GONDANG RT 10/04', '081252525143', 'lajang', 'TNI-AD', 'keluarga', 'SUAMI', 'Tn TRISNO', '081252525143', '111/73', '36', 170, 68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-26 16:49:42', '2020-12-26 16:49:42'),
(78, '000060\n', 'Sdr FAQIH BUDI SETIYAWAN', 0, 'Laki-laki', 'O', 'islam', '', 'WALEN SIMO BOYOLALI', '085726854325', 'lajang', 'MAHASISWA', 'keluarga', 'AYAH', 'Tn SUYAMTO', '085726854325', '120/80', '36', 58, 158, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 12:31:54', '2020-12-28 12:31:54'),
(79, '000061\n', 'Ny ERNA SURYANI', 0, 'Perempuan', 'O', 'islam', '', 'PERUM PALM HIJAU II BLOK M 1 COLOMADU', '08122628711', 'menikah', 'SWASTA', 'keluarga', 'SUAMI', 'Tn AGUS S', '08122628711', '120/80', '36', 158, 59, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 12:36:05', '2020-12-28 12:36:05'),
(80, '000062\n', 'Nn RACHEL EVANITA YOLANDA', 3310266905040002, 'Perempuan', 'O', 'islam', '', 'DEMANGAN RT 01/03 NGEMPLAK KARTASURA', '085747085319', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn RASKIMIN', '085747085319', '120/80', '36', 158, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 12:58:11', '2020-12-28 12:58:11'),
(82, '000063\n', 'Tn RUDIYANTO', 3311121806600001, 'Laki-laki', 'O', 'islam', '', 'KANDANG MENJANGAN, RT 03/14 PUCANGAN KARTASURA', '081329518135', 'menikah', 'PENSIUNAN TNI-AD', 'keluarga', 'SUAMI', 'Tn RUDIYANTO', '081329518135', '140/84', '35', 178, 90, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 15:52:20', '2020-12-28 15:52:20'),
(83, '000064\n', 'Sdr BAGUS TRIWIBOWO', 3313111708010004, 'Laki-laki', 'B', 'islam', '', 'NGEMPLAK RT02/03 JATEN', '08122506580', 'lajang', 'PELAJAR', 'keluarga', 'AYAH', 'Tn SURADI', '08122506580', '122/50', '36', 159, 58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 16:07:30', '2020-12-28 16:07:30'),
(84, '000065\n', 'Nn ARIE DESY KURNIAWATI', 3311124812920001, 'Perempuan', 'B', 'kristen', '', 'PUCANGAN RT 02/01 PUCANGAN, KARTASURA', '082137737037', 'lajang', 'APOTEKER', 'keluarga', 'AYAH', 'Tn BAMBANG AGUS', '082137737037', '133/82', '36', 157, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 16:23:25', '2020-12-28 16:23:25'),
(85, '000066\n', 'Ny HARTATIK', 3310124804900002, 'Perempuan', 'A', 'islam', '', 'KARANGASEM RT 03/07 LAWEYAN SURAKARTA', '085743233888', 'menikah', 'SWASTA', 'keluarga', 'SUAMI', 'Tn KUSUMA', '085743233888', '120/80', '36', 158, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 16:29:56', '2020-12-28 16:29:56'),
(86, '000067\n', 'Nn WULAN SYAFITRY', 1210204101990003, 'Perempuan', 'O', 'islam', '', 'MEDAN', '081392955286', 'lajang', 'MAHASISWI', 'keluarga', 'AYAH', 'Tn ABU SOFYAN', '081392955286', '99/73', '36', 157, 47, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 16:35:53', '2020-12-28 16:35:53'),
(87, '000068\n', 'Tn SUDARNO', 3312201206720001, 'Laki-laki', 'A', 'islam', '', 'NGRANDU, RT 03/02 GUNUNGSARI, JATISRONO', '081329078157', 'menikah', 'WIRASWASTA', 'keluarga', 'SUAMI', 'Tn SUDARNO', '081329078157', '115/72', '36', 168, 58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 17:51:43', '2020-12-28 17:51:43'),
(89, '000069\n', 'Ny YANI', 0, 'Perempuan', 'O', 'islam', '', 'NGRANDU, RT 03/02 GUNUNGSARI, JATISRONO', '081329078157', 'menikah', 'SWASTA', 'keluarga', 'SUAMI', 'Tn SUDARNO', '081329078157', '106/76', '', 159, 58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-28 18:03:43', '2020-12-28 18:03:43'),
(90, '000070\n', 'Ny Istanti', 3311125404810001, 'Perempuan', 'O', 'islam', '', 'kopassus', '', 'lajang', '', 'keluarga', 'SUAMI', 'Tn HERIANTO', '085228080939', '118/85', '', NULL, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-29 09:48:03', '2020-12-29 09:48:03'),
(91, '000071\n', 'Tn JOE', 0, 'Laki-laki', 'A', 'islam', '', 'PUCANGAN KARTASURA', '081393088999', 'lajang', 'TENTARA', 'keluarga', 'SUAMI', 'Tn JOE', '081393088999', '127/74', '36', 170, 65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-29 15:26:50', '2020-12-29 15:26:50'),
(92, '000072\n', 'Tn HAFIDH MUNAWIR', 3311121908760001, 'Laki-laki', 'O', 'islam', '', 'KEPUTREN RT 04/08 KARTASURA', '08121500051', 'menikah', 'DOSEN', 'keluarga', 'SUAMI', 'Tn HAFIDH MUNAWIR', '08121500051', '156/96', '36', 158, 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-29 17:47:00', '2020-12-29 17:47:00'),
(93, '000073\n', 'Tn SURYONO', 3314080609830001, 'Laki-laki', 'O', 'islam', '', 'JEGANGAN RT 04/05', '085293491610', 'menikah', 'GURU', 'keluarga', 'SUAMI', 'Tn SURYONO', '085293491610', '129/80', '36', 159, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-29 17:50:27', '2020-12-29 17:50:27'),
(94, '000074\n', 'Ny NABILA FILDZA SIXTANORA', 3372015611970001, 'Perempuan', 'A', 'islam', '', 'KARANGASEM RT01/08', '089680948160', 'menikah', 'SWASTA', 'keluarga', 'SUAMI', 'Tn AWAN', '089680948160', '96/61', '36', 158, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-29 18:09:04', '2020-12-29 18:09:04'),
(95, '000075\n', 'Ny Sukarmi', 0, 'Perempuan', 'O', 'islam', '', 'GUMPANG', '081329299811', 'lajang', 'ibu rumahtangga', 'keluarga', 'SUAMI', 'TN JONI', '0000', '143/76', '36', 160, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-30 06:17:04', '2020-12-30 06:17:04'),
(96, '000076\n', 'Ny Sukarmi', 0, 'Perempuan', 'O', 'islam', '', 'GUMPANG', '081329299811', 'lajang', 'ibu rumahtangga', 'keluarga', 'SUAMI', 'TN JONI', '0000', '143/76', '36', 160, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-30 06:20:54', '2020-12-30 06:20:54'),
(97, '000077\n', 'Sdr AL FADDILAN ADIF PANGESTU', 3313140309000002, 'Laki-laki', 'O', 'islam', '', 'WARU RT 07/09 WARU KEBAK KRAMAT', '085334729413', 'lajang', 'SWASTA', 'keluarga', 'AYAH', 'TN SUTOMO', '085334729413', '120/80', '36', 160, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-30 16:37:07', '2020-12-30 16:37:07'),
(98, '000078\n', 'Nn LIA', 0, 'Perempuan', 'O', 'islam', '', 'PUCANGAN RT 02/01 PUCANGAN KARTASURA', '085799005715', 'lajang', 'BIDAN', 'wali', 'AYAH', 'Tn SUGENG', '085799005715', '104/76', '36', 160, 45, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-30 16:40:58', '2020-12-30 16:40:58'),
(99, '000079\n', 'Ny FATUL SARIYANTI', 0, 'Perempuan', 'AB', 'islam', '', 'JETISJENGKE KARANGANYAR', '081229699922', 'menikah', 'SWASTA', 'wali', 'SUAMI', 'Tn PUNGKY CATUR W', '081229699922', '124/77', '36', 156, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-30 16:46:02', '2020-12-30 16:46:02'),
(100, '000080\n', 'Nn RANA ULFAH', 0, 'Perempuan', 'O', 'islam', '', 'JL VNGETERAN NO 31 HADIMULYO BARAT METRO PUSAT LAMPU', '08995888886', 'lajang', 'MAHASISWI', 'wali', 'AYAH', 'TN MARWOTO', '08995888886', '97/66', '36', 158, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-30 17:04:02', '2020-12-30 17:04:02'),
(101, '000081\n', 'Ny MUDIYATI', 3311125105670002, 'Laki-laki', 'AB', 'islam', '', 'PUCANGAN RT 02/13 PUCANGAN KARTASURA', '082225592180', 'menikah', 'SWASTA', 'keluarga', 'SUAMI', 'Tn BJ JATMINTO', '082225592180', '131/80', '36', 158, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-31 16:51:03', '2020-12-31 16:51:03'),
(102, '000082\n', 'SDR. SALMA MAHIRA', 0, 'Perempuan', 'A', 'islam', '', 'SIMO', '081329733277', 'lajang', 'PELAJAR', 'keluarga', 'IBU', 'NY DEWI RIKMAYANTI', '081329733277', '120/80', '36', 129, 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 06:35:41', '2021-01-02 06:35:41'),
(103, '000083\n', 'Ny DYAH AYU INTAN P', 3314126505010001, 'Perempuan', 'O', 'islam', '', 'GABUNGAN, TANON, SRAGEN', '085890563900', 'menikah', 'SALON', 'keluarga', 'SUAMI', 'Tn DARYONO', '085890563900', '123/81', '36', 160, 66, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 06:59:33', '2021-01-02 06:59:33'),
(104, '000084\n', 'NN.HAIFA TRI SETYOWATI', 3471135201030002, 'Perempuan', 'B', 'islam', '', 'WARUNG BOTO RT 34/8 UMBUL HARJO', '081327480314', 'lajang', 'PELAJAR', 'wali', '', '', '', '97/71', '', 168, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 09:15:13', '2021-01-02 09:15:13'),
(105, '000085\n', 'Nn DHESTI DADI DEVANI', 3372055012980006, 'Perempuan', 'O', 'islam', '', 'KLIWONAN RT 01/07 JERON NOGOSARI', '085867664000', 'lajang', 'SWASTA', 'wali', 'AYAH', 'Tn ESTI MURWANTO', '085867664000', '101/78', '36', 158, 50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 15:02:27', '2021-01-02 15:02:27'),
(106, '000086\n', 'TN SULESTYONO', 33111228118830002, 'Laki-laki', 'O', 'islam', '', 'SOMODINALAN, RT 03/03 NGADIREJO KARTASURA', '085640694797', 'menikah', 'SWASTA', 'wali', 'SUAMI', 'TN SULESTYONO', '085640694797', '127/76', '36', 159, 58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 15:56:32', '2021-01-02 15:56:32'),
(107, '000087\n', 'Tn DR TRI WIDHIYONO', 0, 'Laki-laki', 'O', 'islam', '', 'TEGAL BROJOL KERTONATAN RT 01/01 KARTASURA', '0850000', 'menikah', 'DOKTER', 'wali', 'SUAMI', 'TN DR TRI WIDHIYONO', '', '114/77', '36', 1560, 160, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 16:47:55', '2021-01-02 16:47:55'),
(108, '000088\n', 'An KHANSA', 0, 'Perempuan', 'O', 'islam', '', 'TEGAL BROJOL KERTONATAN RT 01/01 KARTASURA', '0850000', 'lajang', 'PELAJAR', 'wali', 'AYAH', 'TN DR TRI WIDHIYONO', '', '90/60', '36', 113, 36, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 16:50:43', '2021-01-02 16:50:43'),
(109, '000089\n', 'Ny UMMI KULSUM', 0, 'Perempuan', 'O', 'islam', '', 'KRAPYAK WETAN RT 05/08 KARTASURA', '085803520897', 'menikah', 'KEPALA SD', 'keluarga', 'SUAMI', 'Tn HERU', '085803520897', '108/78', '36', 156, 58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 18:03:02', '2021-01-02 18:03:02');

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
  `nomor_transaksi` text COLLATE utf8mb4_unicode_ci,
  `nomor_rm` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poli` text COLLATE utf8mb4_unicode_ci,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_dokter` text COLLATE utf8mb4_unicode_ci,
  `tindakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan_isPick` smallint(6) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`id`, `nomor_transaksi`, `nomor_rm`, `poli`, `nama_pasien`, `nama_dokter`, `tindakan`, `tindakan_isPick`, `status`, `harga`, `remarks`, `created_at`, `updated_at`) VALUES
(49, '221220_1324', '1', 'gigi', 'Nn ARINI NUR YUNIS', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:03', '2020-12-22 18:36:18'),
(50, '221220_1324', '1', 'gigi', 'Nn ARINI NUR YUNIS', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:03', '2020-12-22 18:36:18'),
(51, '221220_1324', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:18', '2020-12-22 18:36:18'),
(52, '221220_1324', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:18', '2020-12-22 18:36:18'),
(53, '221220_1324', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:32', '2020-12-22 18:36:18'),
(54, '221220_1324', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:32', '2020-12-22 18:36:18'),
(55, '221220_1324', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:43', '2020-12-22 18:36:18'),
(56, '221220_1324', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:43', '2020-12-22 18:36:18'),
(57, '221220_1324', '3', 'gigi', 'Sdr FABIAN', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:59', '2020-12-22 18:36:18'),
(58, '221220_1324', '3', 'gigi', 'Sdr FABIAN', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:24:59', '2020-12-22 18:36:18'),
(59, '221220_1325', '3', 'gigi', 'Sdr FABIAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:25:28', '2020-12-22 18:39:21'),
(60, '221220_1325', '3', 'gigi', 'Sdr FABIAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:25:28', '2020-12-22 18:39:21'),
(61, '221220_1325', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:25:53', '2020-12-22 18:39:21'),
(62, '221220_1325', '2', 'gigi', 'Sdr DICKY WAHYU', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:25:53', '2020-12-22 18:39:21'),
(63, '221220_1326', '2', 'gigi', 'Sdr DICKY WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:26:01', '2020-12-22 18:41:06'),
(64, '221220_1326', '2', 'gigi', 'Sdr DICKY WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:26:01', '2020-12-22 18:41:06'),
(65, '221220_1328', '4', 'gigi', 'An RISKI WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:28:02', '2020-12-22 18:42:07'),
(66, '221220_1328', '4', 'gigi', 'An RISKI WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:28:02', '2020-12-22 18:42:07'),
(67, '221220_1328', '5', 'gigi', 'Ny ENDANG PURWANI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:28:15', '2020-12-22 18:42:07'),
(68, '221220_1328', '5', 'gigi', 'Ny ENDANG PURWANI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:28:15', '2020-12-22 18:42:07'),
(69, '221220_1328', '6', 'gigi', 'Tn HAIDAR AHMAD M', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:28:33', '2020-12-22 18:42:07'),
(70, '221220_1328', '6', 'gigi', 'Tn HAIDAR AHMAD M', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:28:33', '2020-12-22 18:42:07'),
(71, '221220_1329', '6', 'gigi', 'Tn HAIDAR AHMAD M', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:29:06', '2020-12-22 18:43:20'),
(72, '221220_1329', '6', 'gigi', 'Tn HAIDAR AHMAD M', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:29:06', '2020-12-22 18:43:20'),
(73, '221220_1324', '1', 'gigi', 'Nn ARINI NUR YUNIS', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'post op', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:29:54', '2020-12-22 18:36:18'),
(74, '221220_1325', '3', 'gigi', 'Sdr FABIAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:30:29', '2020-12-22 18:39:21'),
(75, '221220_1330', '7', 'gigi', 'Sdr HANIF', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:30:48', '2020-12-22 18:45:35'),
(76, '221220_1330', '7', 'gigi', 'Sdr HANIF', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:30:48', '2020-12-22 18:45:35'),
(77, '221220_1326', '2', 'gigi', 'Sdr DICKY WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:30:59', '2020-12-22 18:41:06'),
(78, '221220_1331', '8', 'gigi', 'Sdr AGA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:31:14', '2020-12-22 18:47:22'),
(79, '221220_1331', '8', 'gigi', 'Sdr AGA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:31:14', '2020-12-22 18:47:22'),
(80, '221220_1331', '9', 'gigi', 'Nn REGINA', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:31:35', '2020-12-22 18:47:22'),
(81, '221220_1331', '9', 'gigi', 'Nn REGINA', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:31:35', '2020-12-22 18:47:22'),
(82, '221220_1328', '4', 'gigi', 'An RISKI WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol', 1, 'Selesai', '100.000', NULL, '2020-12-22 18:31:41', '2020-12-22 18:42:07'),
(83, '221220_1331', '10', 'gigi', 'Nn BHARA AMBARWATI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:31:48', '2020-12-22 18:47:22'),
(84, '221220_1331', '10', 'gigi', 'Nn BHARA AMBARWATI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:31:48', '2020-12-22 18:47:22'),
(85, '221220_1332', '11', 'gigi', 'Nn LIVOLI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:32:00', '2020-12-22 18:53:48'),
(86, '221220_1332', '11', 'gigi', 'Nn LIVOLI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:32:00', '2020-12-22 18:53:48'),
(87, '221220_1329', '6', 'gigi', 'Tn HAIDAR AHMAD M', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:32:02', '2020-12-22 18:43:20'),
(88, '221220_1332', '11', 'gigi', 'Nn LIVOLI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:32:06', '2020-12-22 18:53:48'),
(89, '221220_1332', '11', 'gigi', 'Nn LIVOLI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100.000', NULL, '2020-12-22 18:32:06', '2020-12-22 18:53:48'),
(90, '221220_1330', '7', 'gigi', 'Sdr HANIF', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:32:45', '2020-12-22 18:45:35'),
(91, '221220_1331', '8', 'gigi', 'Sdr AGA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'cabut gigi', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:33:09', '2020-12-22 18:47:22'),
(92, '221220_1334', '10', 'gigi', 'Nn BHARA AMBARWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:34:14', '2020-12-22 18:54:01'),
(93, '221220_1334', '10', 'gigi', 'Nn BHARA AMBARWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:34:14', '2020-12-22 18:54:01'),
(94, '221220_1334', '10', 'gigi', 'Nn BHARA AMBARWATI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:34:20', '2020-12-22 18:54:01'),
(95, '221220_1334', '10', 'gigi', 'Nn BHARA AMBARWATI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-22 18:34:20', '2020-12-22 18:54:01'),
(96, '221220_1332', '11', 'gigi', 'Nn LIVOLI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '100.000', NULL, '2020-12-22 18:34:45', '2020-12-22 18:53:48'),
(97, '221220_1334', '10', 'gigi', 'Nn BHARA AMBARWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150.000', NULL, '2020-12-22 18:35:06', '2020-12-22 18:54:01'),
(102, '231220_0408', '12', 'umum', 'Ny SUPRANTININGSIH', 'ALMA MISQI', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '30000', NULL, '2020-12-23 09:08:04', '2020-12-23 09:32:00'),
(103, '231220_0408', '12', 'umum', 'Ny SUPRANTININGSIH', 'ALMA MISQI', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '30000', NULL, '2020-12-23 09:08:04', '2020-12-23 09:32:00'),
(104, '231220_0408', '12', 'umum', 'Ny SUPRANTININGSIH', 'ALMA MISQI', 'pemeriksaan gula darah', 1, 'Selesai', '30000', NULL, '2020-12-23 09:31:40', '2020-12-23 09:32:00'),
(105, '231220_0408', '12', 'umum', 'Ny SUPRANTININGSIH', 'ALMA MISQI', 'pemeriksaan asam urat', 1, 'Selesai', '30000', NULL, '2020-12-23 09:31:40', '2020-12-23 09:32:00'),
(114, '231220_0841', '15', 'gigi', 'Sdr. Salsabila', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '450.000', NULL, '2020-12-23 13:41:11', '2020-12-24 13:34:36'),
(115, '231220_0841', '15', 'gigi', 'Sdr. Salsabila', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '450.000', NULL, '2020-12-23 13:41:11', '2020-12-24 13:34:36'),
(116, '231220_0849', '13', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300.000', NULL, '2020-12-23 13:49:28', '2020-12-24 13:36:43'),
(117, '231220_0849', '13', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300.000', NULL, '2020-12-23 13:49:28', '2020-12-24 13:36:43'),
(118, '231220_1220', '34', 'gigi', 'Tn BUDI RIANTO', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2020-12-23 17:20:35', '2020-12-24 13:42:14'),
(119, '231220_1220', '34', 'gigi', 'Tn BUDI RIANTO', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2020-12-23 17:20:35', '2020-12-24 13:42:14'),
(120, '231220_1220', '31', 'gigi', 'Sdr GUNADIAR LARASATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2020-12-23 17:20:54', '2020-12-24 13:42:14'),
(121, '231220_1220', '31', 'gigi', 'Sdr GUNADIAR LARASATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2020-12-23 17:20:54', '2020-12-24 13:42:14'),
(122, '231220_1221', '5', 'gigi', 'Ny ENDANG PURWANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-23 17:21:17', '2020-12-24 13:43:08'),
(123, '231220_1221', '5', 'gigi', 'Ny ENDANG PURWANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-23 17:21:17', '2020-12-24 13:43:08'),
(124, '231220_1221', '26', 'gigi', 'Sdr KEVIN NUR KISYUWONO', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-23 17:21:33', '2020-12-24 13:43:08'),
(125, '231220_1221', '26', 'gigi', 'Sdr KEVIN NUR KISYUWONO', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-23 17:21:33', '2020-12-24 13:43:08'),
(126, '231220_1303', '35', NULL, 'Nn YOSI SAPRIENTI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-23 18:03:12', '2020-12-24 13:43:43'),
(127, '231220_1303', '35', NULL, 'Nn YOSI SAPRIENTI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-23 18:03:12', '2020-12-24 13:43:43'),
(128, '231220_1303', '35', NULL, 'Nn YOSI SAPRIENTI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-23 18:03:34', '2020-12-24 13:43:43'),
(129, '231220_1303', '35', NULL, 'Nn YOSI SAPRIENTI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-23 18:03:34', '2020-12-24 13:43:43'),
(130, '231220_1303', '26', 'gigi', 'Sdr KEVIN NUR KISYUWONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-23 18:03:55', '2020-12-24 13:43:43'),
(131, '231220_1303', '26', 'gigi', 'Sdr KEVIN NUR KISYUWONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-23 18:03:55', '2020-12-24 13:43:43'),
(132, '231220_1304', '33', 'gigi', 'Sdr NABILA ANSORI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-23 18:04:07', '2020-12-24 13:44:28'),
(133, '231220_1304', '33', 'gigi', 'Sdr NABILA ANSORI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-23 18:04:07', '2020-12-24 13:44:28'),
(134, '231220_1304', '34', 'gigi', 'Tn BUDI RIANTO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-23 18:04:24', '2020-12-24 13:44:28'),
(135, '231220_1304', '34', 'gigi', 'Tn BUDI RIANTO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-23 18:04:24', '2020-12-24 13:44:28'),
(136, '241220_0304', '37', 'gigi', 'Sdr ALMAM PAMUNGKAS', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-24 08:04:59', '2020-12-24 10:23:21'),
(137, '241220_0304', '37', 'gigi', 'Sdr ALMAM PAMUNGKAS', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 1, 'Selesai', '150000', NULL, '2020-12-24 08:04:59', '2020-12-24 10:23:21'),
(138, '241220_0307', '36', 'gigi', 'Tn SAIFUL', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2020-12-24 08:07:37', '2020-12-24 10:24:40'),
(139, '241220_0307', '36', 'gigi', 'Tn SAIFUL', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2020-12-24 08:07:37', '2020-12-24 10:24:40'),
(140, '241220_0307', '36', 'gigi', 'Tn SAIFUL', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'SCALLING + STAIN REMOVER 2 RAHANG', 1, 'Selesai', '300000', NULL, '2020-12-24 08:10:33', '2020-12-24 10:24:40'),
(143, '231220_1304', '34', 'gigi', 'Tn BUDI RIANTO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'EKSTRAKSI GIGI GERAHAM BELAKANG', 1, 'Selesai', '200000', NULL, '2020-12-24 08:12:58', '2020-12-24 13:44:28'),
(144, '231220_1303', '26', 'gigi', 'Sdr KEVIN NUR KISYUWONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-24 08:13:53', '2020-12-24 13:43:43'),
(147, '231220_1221', '5', 'gigi', 'Ny ENDANG PURWANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CETAK GIGI', 1, 'Selesai', '150000', NULL, '2020-12-24 08:18:42', '2020-12-24 13:43:08'),
(148, '231220_1220', '31', 'gigi', 'Sdr GUNADIAR LARASATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement) 2X', 1, 'Selesai', '300000', NULL, '2020-12-24 08:20:56', '2020-12-24 13:42:14'),
(151, '241220_0500', '38', 'gigi', 'Nn KHOSYI HURIN ANGGRAINI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-24 10:00:52', '2020-12-24 10:20:49'),
(152, '241220_0500', '38', 'gigi', 'Nn KHOSYI HURIN ANGGRAINI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-24 10:00:52', '2020-12-24 10:20:49'),
(153, '241220_0500', '38', 'gigi', 'Nn KHOSYI HURIN ANGGRAINI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150000', NULL, '2020-12-24 10:18:46', '2020-12-24 10:20:49'),
(154, '241220_0730', '14', 'gigi', 'Sdr Rifky Pradiva', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-24 12:30:06', '2020-12-24 13:33:19'),
(155, '241220_0730', '14', 'gigi', 'Sdr Rifky Pradiva', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-24 12:30:06', '2020-12-24 13:33:19'),
(156, '231220_0841', '15', 'gigi', 'Sdr. Salsabila', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'pulpa', 1, 'Selesai', '450.000', NULL, '2020-12-24 13:30:57', '2020-12-24 13:34:36'),
(157, '231220_0849', '13', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'ganti PO', 1, 'Selesai', '300.000', NULL, '2020-12-24 13:32:08', '2020-12-24 13:36:43'),
(158, '241220_0730', '14', 'gigi', 'Sdr Rifky Pradiva', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'ganti PO', 1, 'Selesai', '150.000', NULL, '2020-12-24 13:32:54', '2020-12-24 13:33:19'),
(159, '241220_0947', '41', 'gigi', 'Nn EVITA DWI PRASANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-24 14:47:57', '2020-12-24 14:49:11'),
(160, '241220_0947', '41', 'gigi', 'Nn EVITA DWI PRASANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-24 14:47:57', '2020-12-24 14:49:11'),
(161, '241220_0947', '41', 'gigi', 'Nn EVITA DWI PRASANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '0', NULL, '2020-12-24 14:48:43', '2020-12-24 14:49:11'),
(164, '241220_0956', '42', 'gigi', 'Nn YESIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-24 14:56:26', '2020-12-24 14:58:19'),
(165, '241220_0956', '42', 'gigi', 'Nn YESIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-24 14:56:26', '2020-12-24 14:58:19'),
(166, '241220_0956', '42', 'gigi', 'Nn YESIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '150.000', NULL, '2020-12-24 14:57:46', '2020-12-24 14:58:19'),
(172, '241220_1022', '44', 'gigi', 'NN SALMA RIZKI SUHARDI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-24 15:22:05', '2020-12-24 15:54:15'),
(173, '241220_1022', '44', 'gigi', 'NN SALMA RIZKI SUHARDI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-24 15:22:05', '2020-12-24 15:54:15'),
(174, '241220_1035', '40', 'gigi', 'Ny SUTINAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2020-12-24 15:35:29', '2020-12-24 15:56:46'),
(175, '241220_1035', '40', 'gigi', 'Ny SUTINAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2020-12-24 15:35:29', '2020-12-24 15:56:46'),
(176, '241220_1022', '44', 'gigi', 'NN SALMA RIZKI SUHARDI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-24 15:52:34', '2020-12-24 15:54:15'),
(177, '241220_1035', '40', 'gigi', 'Ny SUTINAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CABUT', 1, 'Selesai', '100000', NULL, '2020-12-24 15:53:21', '2020-12-24 15:56:46'),
(180, '241220_1202', '45', 'gigi', 'AN AHTAR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-24 17:02:27', '2020-12-24 17:52:12'),
(181, '241220_1202', '45', 'gigi', 'AN AHTAR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-24 17:02:27', '2020-12-24 17:52:12'),
(182, '241220_1202', '45', 'gigi', 'AN AHTAR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CABUT', 1, 'Selesai', '150.000', NULL, '2020-12-24 17:32:26', '2020-12-24 17:52:12'),
(183, '241220_1252', '46', 'gigi', 'TN DRS. H MARPUJI ALI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-24 17:52:07', '2020-12-24 17:55:41'),
(184, '241220_1252', '46', 'gigi', 'TN DRS. H MARPUJI ALI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-24 17:52:07', '2020-12-24 17:55:41'),
(187, '241220_1252', '46', 'gigi', 'TN DRS. H MARPUJI ALI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'SCALLING', 1, 'Selesai', '0', NULL, '2020-12-24 17:55:14', '2020-12-24 17:55:41'),
(188, '251220_1022', '13', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '2100000', NULL, '2020-12-25 15:22:43', '2020-12-25 15:44:20'),
(189, '251220_1022', '13', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '2100000', NULL, '2020-12-25 15:22:43', '2020-12-25 15:44:20'),
(190, '251220_1022', '48', 'gigi', 'Sdr FARIZAL WIDYAN AJI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '2100000', NULL, '2020-12-25 15:22:56', '2020-12-25 15:44:20'),
(191, '251220_1022', '48', 'gigi', 'Sdr FARIZAL WIDYAN AJI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '2100000', NULL, '2020-12-25 15:22:56', '2020-12-25 15:44:20'),
(192, '251220_1023', '47', 'gigi', 'Sdr ARDHIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '50000', NULL, '2020-12-25 15:23:08', '2020-12-25 15:46:11'),
(193, '251220_1023', '47', 'gigi', 'Sdr ARDHIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '50000', NULL, '2020-12-25 15:23:08', '2020-12-25 15:46:11'),
(194, '251220_1022', '13', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'bedah gusi', 1, 'Selesai', '2100000', NULL, '2020-12-25 15:25:49', '2020-12-25 15:44:20'),
(195, '251220_1023', '47', 'gigi', 'Sdr ARDHIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'konsultasi', 1, 'Selesai', '50000', NULL, '2020-12-25 15:26:26', '2020-12-25 15:46:11'),
(196, '251220_1041', '48', 'gigi', 'Sdr FARIZAL WIDYAN AJI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '550000', NULL, '2020-12-25 15:41:24', '2020-12-25 15:46:52'),
(197, '251220_1041', '48', 'gigi', 'Sdr FARIZAL WIDYAN AJI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '550000', NULL, '2020-12-25 15:41:24', '2020-12-25 15:46:52'),
(198, '251220_1042', '49', 'gigi', 'Sdr SATRIA YUDA KARYANA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-25 15:42:13', '2020-12-25 15:47:23'),
(199, '251220_1042', '49', 'gigi', 'Sdr SATRIA YUDA KARYANA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-25 15:42:13', '2020-12-25 15:47:23'),
(200, '251220_1041', '48', 'gigi', 'Sdr FARIZAL WIDYAN AJI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Lepas behel dan Scalling', 1, 'Selesai', '550000', NULL, '2020-12-25 15:43:21', '2020-12-25 15:46:52'),
(201, '251220_1042', '49', 'gigi', 'Sdr SATRIA YUDA KARYANA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'kontrol ortho', 1, 'Selesai', '150000', NULL, '2020-12-25 15:43:54', '2020-12-25 15:47:23'),
(202, '251220_1158', '51', 'gigi', 'An RAFARDHAN ATTALLA NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '50000', NULL, '2020-12-25 16:58:28', '2020-12-25 17:01:45'),
(203, '251220_1158', '51', 'gigi', 'An RAFARDHAN ATTALLA NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '50000', NULL, '2020-12-25 16:58:28', '2020-12-25 17:01:45'),
(204, '251220_1158', '50', 'gigi', 'An Naura Khalisa Azzahra', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '50000', NULL, '2020-12-25 16:58:40', '2020-12-25 17:01:45'),
(205, '251220_1158', '50', 'gigi', 'An Naura Khalisa Azzahra', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '50000', NULL, '2020-12-25 16:58:40', '2020-12-25 17:01:45'),
(206, '251220_1158', '52', 'umum', 'Tn TRISNO NUGROHO', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '50000', NULL, '2020-12-25 16:58:50', '2020-12-25 17:01:45'),
(207, '251220_1158', '52', 'umum', 'Tn TRISNO NUGROHO', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '50000', NULL, '2020-12-25 16:58:50', '2020-12-25 17:01:45'),
(208, '251220_1159', '52', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-25 16:59:00', '2020-12-25 17:02:19'),
(209, '251220_1159', '52', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-25 16:59:00', '2020-12-25 17:02:19'),
(210, '251220_1159', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-25 16:59:38', '2020-12-25 17:02:19'),
(211, '251220_1159', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-25 16:59:38', '2020-12-25 17:02:19'),
(212, '251220_1158', '51', 'gigi', 'An RAFARDHAN ATTALLA NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'konsultasi', 1, 'Selesai', '50000', NULL, '2020-12-25 17:00:41', '2020-12-25 17:01:45'),
(213, '251220_1159', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'cabut gigi susu', 1, 'Selesai', '150000', NULL, '2020-12-25 17:01:04', '2020-12-25 17:02:19'),
(214, '251220_1202', '52', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2020-12-25 17:02:58', '2020-12-25 17:23:48'),
(215, '251220_1202', '52', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2020-12-25 17:02:58', '2020-12-25 17:23:48'),
(216, '251220_1203', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-25 17:03:16', '2020-12-25 17:05:05'),
(217, '251220_1203', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-25 17:03:16', '2020-12-25 17:05:05'),
(218, '251220_1203', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'cabut gigi susu', 1, 'Selesai', '150000', NULL, '2020-12-25 17:04:36', '2020-12-25 17:05:05'),
(219, '251220_1203', '50', 'gigi', 'An Naura Khalisa Azzahra', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', NULL, 1, 'Selesai', '150000', NULL, '2020-12-25 17:04:36', '2020-12-25 17:05:05'),
(220, '251220_1206', '52', 'umum', 'Tn TRISNO NUGROHO', 'dr. Iwan Maryono', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '60000', NULL, '2020-12-25 17:06:12', '2020-12-25 17:08:08'),
(221, '251220_1206', '52', 'umum', 'Tn TRISNO NUGROHO', 'dr. Iwan Maryono', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '60000', NULL, '2020-12-25 17:06:12', '2020-12-25 17:08:08'),
(222, '251220_1206', '52', 'umum', 'Tn TRISNO NUGROHO', 'dr. Iwan Maryono', 'Pemeriksaan Paket (GD, AU, Kol)', 1, 'Selesai', '60000', NULL, '2020-12-25 17:07:41', '2020-12-25 17:08:08'),
(223, '251220_1202', '52', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'scalling', 1, 'Selesai', '300000', NULL, '2020-12-25 17:23:23', '2020-12-25 17:23:48'),
(224, '261220_0111', '53', 'gigi', 'Sdr NURISNAYANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 06:11:11', '2020-12-26 06:26:53'),
(225, '261220_0111', '53', 'gigi', 'Sdr NURISNAYANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 06:11:11', '2020-12-26 06:26:53'),
(226, '261220_0111', '53', 'gigi', 'Sdr NURISNAYANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Kontrol Ortho', 1, 'Selesai', '150000', NULL, '2020-12-26 06:26:17', '2020-12-26 06:26:53'),
(227, '261220_0524', '54', 'gigi', 'Sdr BEATA HOLY ANJANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 10:24:44', '2020-12-26 11:04:09'),
(228, '261220_0524', '54', 'gigi', 'Sdr BEATA HOLY ANJANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 10:24:44', '2020-12-26 11:04:09'),
(229, '261220_0524', '55', 'gigi', 'Sdr CERISA CHRISTY DANTI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 10:24:57', '2020-12-26 11:04:09'),
(230, '261220_0524', '55', 'gigi', 'Sdr CERISA CHRISTY DANTI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 10:24:57', '2020-12-26 11:04:09'),
(231, '261220_0527', '47', 'gigi', 'Sdr ARDHIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '50000', NULL, '2020-12-26 10:27:00', '2020-12-26 11:03:03'),
(232, '261220_0527', '47', 'gigi', 'Sdr ARDHIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '50000', NULL, '2020-12-26 10:27:00', '2020-12-26 11:03:03'),
(233, '261220_0558', '56', 'gigi', 'Sdr FAIZAL YOGA PUTRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 10:58:36', '2020-12-26 11:15:05'),
(234, '261220_0558', '56', 'gigi', 'Sdr FAIZAL YOGA PUTRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 10:58:36', '2020-12-26 11:15:05'),
(235, '261220_0527', '47', 'gigi', 'Sdr ARDHIKA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Refilling', 1, 'Selesai', '50000', NULL, '2020-12-26 11:01:41', '2020-12-26 11:03:03'),
(236, '261220_0524', '54', 'gigi', 'Sdr BEATA HOLY ANJANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Kontrol Ortho', 1, 'Selesai', '150000', NULL, '2020-12-26 11:02:06', '2020-12-26 11:04:09'),
(237, '261220_0605', '000055\n', 'gigi', 'Sdr CERISA CHRISTY DANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 11:05:26', '2020-12-26 11:10:25'),
(238, '261220_0605', '000055\n', 'gigi', 'Sdr CERISA CHRISTY DANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 11:05:26', '2020-12-26 11:10:25'),
(239, '261220_0608', '000057\n', 'gigi', 'Sdr ALAMSYAH NAVRADA LISTYA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 11:08:01', '2020-12-26 11:10:52'),
(240, '261220_0608', '000057\n', 'gigi', 'Sdr ALAMSYAH NAVRADA LISTYA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 11:08:01', '2020-12-26 11:10:52'),
(241, '261220_0605', '000055', 'gigi', 'Sdr CERISA CHRISTY DANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Kontrol Ortho', 1, 'Selesai', '150000', NULL, '2020-12-26 11:09:33', '2020-12-26 11:10:25'),
(242, '261220_0608', '000057', 'gigi', 'Sdr ALAMSYAH NAVRADA LISTYA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Kontrol Ortho', 1, 'Selesai', '150000', NULL, '2020-12-26 11:09:52', '2020-12-26 11:10:52'),
(243, '261220_0558', '56', 'gigi', 'Sdr FAIZAL YOGA PUTRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Kontrol Ortho', 1, 'Selesai', '150000', NULL, '2020-12-26 11:14:39', '2020-12-26 11:15:05'),
(244, '261220_0741', '000058\n', 'gigi', 'Nn HENI WIJIYANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '600.000', NULL, '2020-12-26 12:41:37', '2020-12-26 13:32:03'),
(245, '261220_0741', '000058\n', 'gigi', 'Nn HENI WIJIYANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '600.000', NULL, '2020-12-26 12:41:37', '2020-12-26 13:32:03'),
(246, '261220_0741', '000058', 'gigi', 'Nn HENI WIJIYANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'tambal gigi', 1, 'Selesai', '600.000', NULL, '2020-12-26 13:31:17', '2020-12-26 13:32:03'),
(249, '261220_1150', '000027\n', 'gigi', 'TN BASUKI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2020-12-26 16:50:36', '2020-12-26 17:30:05'),
(250, '261220_1150', '000027\n', 'gigi', 'TN BASUKI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2020-12-26 16:50:36', '2020-12-26 17:30:05'),
(251, '261220_1151', '000052\n', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300.000', NULL, '2020-12-26 16:51:33', '2020-12-26 17:15:29'),
(252, '261220_1151', '000052\n', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300.000', NULL, '2020-12-26 16:51:33', '2020-12-26 17:15:29'),
(253, '261220_1154', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 16:54:36', '2020-12-26 17:35:52'),
(254, '261220_1154', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 16:54:36', '2020-12-26 17:35:52'),
(255, '261220_1151', '000052', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CETAK GIGI PALSU', 1, 'Selesai', '300.000', NULL, '2020-12-26 17:15:08', '2020-12-26 17:15:29'),
(256, '261220_1215', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-26 17:15:24', '2020-12-26 17:46:50'),
(257, '261220_1215', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-26 17:15:24', '2020-12-26 17:46:50'),
(262, '261220_1154', '000028', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-26 17:28:32', '2020-12-26 17:35:52'),
(263, '261220_1150', '000027', 'gigi', 'TN BASUKI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL GIGI', 1, 'Selesai', '100000', NULL, '2020-12-26 17:29:32', '2020-12-26 17:30:05'),
(266, '261220_1239', '000027\n', 'gigi', 'TN BASUKI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2020-12-26 17:39:54', '2020-12-26 17:40:57'),
(267, '261220_1239', '000027\n', 'gigi', 'TN BASUKI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2020-12-26 17:39:54', '2020-12-26 17:40:57'),
(268, '261220_1239', '000027', 'gigi', 'TN BASUKI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL GIGI', 1, 'Selesai', '100000', NULL, '2020-12-26 17:40:37', '2020-12-26 17:40:57'),
(271, '261220_1215', '000028', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Pilih Tindakan . . . *', 1, 'Selesai', '0', NULL, '2020-12-26 17:45:00', '2020-12-26 17:46:50'),
(273, '261220_1254', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-26 17:54:58', '2020-12-26 17:56:42'),
(274, '261220_1254', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-26 17:54:58', '2020-12-26 17:56:42'),
(275, '261220_1254', '000028', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-26 17:56:05', '2020-12-26 17:56:42'),
(278, '261220_1258', '000052\n', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2020-12-26 17:58:33', '2020-12-26 18:00:56'),
(279, '261220_1258', '000052\n', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2020-12-26 17:58:33', '2020-12-26 18:00:56'),
(280, '261220_1258', '000052', 'gigi', 'Tn TRISNO NUGROHO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG GIGI PALSU', 1, 'Selesai', '300000', NULL, '2020-12-26 18:00:02', '2020-12-26 18:00:56'),
(283, '281220_0740', '000060\n', 'gigi', 'Sdr FAQIH BUDI SETIYAWAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-28 12:40:04', '2020-12-28 12:42:21'),
(284, '281220_0740', '000060\n', 'gigi', 'Sdr FAQIH BUDI SETIYAWAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-28 12:40:04', '2020-12-28 12:42:21'),
(285, '281220_0740', '000061\n', 'gigi', 'Ny ERNA SURYANI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-28 12:40:29', '2020-12-28 12:42:21'),
(286, '281220_0740', '000061\n', 'gigi', 'Ny ERNA SURYANI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-28 12:40:29', '2020-12-28 12:42:21'),
(287, '281220_0740', '000060', 'gigi', 'Sdr FAQIH BUDI SETIYAWAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-28 12:41:43', '2020-12-28 12:42:21'),
(288, '281220_0742', '000061\n', 'gigi', 'Ny ERNA SURYANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '250000', NULL, '2020-12-28 12:42:09', '2020-12-28 12:48:12'),
(289, '281220_0742', '000061\n', 'gigi', 'Ny ERNA SURYANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '250000', NULL, '2020-12-28 12:42:09', '2020-12-28 12:48:12'),
(290, '281220_0742', '000061', 'gigi', 'Ny ERNA SURYANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'tambal gigi', 1, 'Selesai', '250000', NULL, '2020-12-28 12:47:46', '2020-12-28 12:48:12'),
(295, '281220_0754', '000013\n', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2020-12-28 12:54:45', '2020-12-28 15:02:40'),
(296, '281220_0754', '000013\n', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2020-12-28 12:54:45', '2020-12-28 15:02:40'),
(297, '281220_0940', '000013\n', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-28 14:40:21', '2020-12-28 14:45:53'),
(298, '281220_0940', '000013\n', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-28 14:40:21', '2020-12-28 14:45:53'),
(299, '281220_0940', '000013', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Pilih Tindakan . . . *', 1, 'Selesai', '0', NULL, '2020-12-28 14:45:22', '2020-12-28 14:45:53'),
(300, '281220_0754', '000013', 'gigi', 'Sdr AHMAD DENY S', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '100000', NULL, '2020-12-28 15:02:17', '2020-12-28 15:02:40'),
(301, '281220_1053', '000063\n', 'gigi', 'Tn RUDIYANTO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-28 15:53:16', '2020-12-28 16:09:41'),
(302, '281220_1053', '000063\n', 'gigi', 'Tn RUDIYANTO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-28 15:53:16', '2020-12-28 16:09:41'),
(303, '281220_1108', '000064\n', 'gigi', 'Sdr BAGUS TRIWIBOWO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-28 16:08:39', '2020-12-28 16:11:14'),
(304, '281220_1108', '000064\n', 'gigi', 'Sdr BAGUS TRIWIBOWO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-28 16:08:39', '2020-12-28 16:11:14'),
(305, '281220_1053', '000063', 'gigi', 'Tn RUDIYANTO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'tambal gigi', 1, 'Selesai', '150000', NULL, '2020-12-28 16:09:02', '2020-12-28 16:09:41'),
(308, '281220_1108', '000064', 'gigi', 'Sdr BAGUS TRIWIBOWO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '150000', NULL, '2020-12-28 16:10:58', '2020-12-28 16:11:14'),
(313, '281220_1126', '000065\n', 'gigi', 'Nn ARIE DESY KURNIAWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-28 16:26:18', '2020-12-28 17:21:58'),
(314, '281220_1126', '000065\n', 'gigi', 'Nn ARIE DESY KURNIAWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-28 16:26:18', '2020-12-28 17:21:58'),
(315, '281220_1136', '000067\n', 'gigi', 'Nn WULAN SYAFITRY', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-28 16:36:52', '2020-12-28 17:22:55'),
(316, '281220_1136', '000067\n', 'gigi', 'Nn WULAN SYAFITRY', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-28 16:36:52', '2020-12-28 17:22:55'),
(317, '281220_1143', '000062\n', 'gigi', 'Nn RACHEL EVANITA YOLANDA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-28 16:43:28', '2020-12-28 17:23:46'),
(318, '281220_1143', '000062\n', 'gigi', 'Nn RACHEL EVANITA YOLANDA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-28 16:43:28', '2020-12-28 17:23:46'),
(319, '281220_1126', '000065', 'gigi', 'Nn ARIE DESY KURNIAWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL PO', 1, 'Selesai', '200000', NULL, '2020-12-28 17:20:24', '2020-12-28 17:21:58'),
(320, '281220_1136', '000067', 'gigi', 'Nn WULAN SYAFITRY', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '150000', NULL, '2020-12-28 17:20:54', '2020-12-28 17:22:55'),
(321, '281220_1143', '000062', 'gigi', 'Nn RACHEL EVANITA YOLANDA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '200000', NULL, '2020-12-28 17:21:25', '2020-12-28 17:23:46'),
(324, '281220_1237', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-28 17:37:46', '2020-12-28 18:31:58'),
(325, '281220_1237', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-28 17:37:46', '2020-12-28 18:31:58'),
(326, '281220_1252', '000068\n', 'gigi', 'Tn SUDARNO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '600000', NULL, '2020-12-28 17:52:49', '2020-12-28 19:07:52'),
(327, '281220_1252', '000068\n', 'gigi', 'Tn SUDARNO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '600000', NULL, '2020-12-28 17:52:49', '2020-12-28 19:07:52'),
(328, '281220_1304', '000069\n', 'gigi', 'Ny YANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-28 18:04:35', '2020-12-28 19:08:42'),
(329, '281220_1304', '000069\n', 'gigi', 'Ny YANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-28 18:04:35', '2020-12-28 19:08:42'),
(330, '281220_1237', '000032', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'TIDAK JADI', 1, 'Selesai', '0', NULL, '2020-12-28 18:31:22', '2020-12-28 18:31:58'),
(335, '281220_1252', '000068', 'gigi', 'Tn SUDARNO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CABUT DAN TAMBAL', 1, 'Selesai', '600000', NULL, '2020-12-28 19:07:01', '2020-12-28 19:07:52'),
(336, '281220_1304', '000069', 'gigi', 'Ny YANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'TIDAK JADI', 1, 'Selesai', '0', NULL, '2020-12-28 19:07:25', '2020-12-28 19:08:42'),
(339, '291220_0449', '000070\n', 'gigi', 'Ny Istanti', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200.000', NULL, '2020-12-29 09:49:43', '2020-12-29 09:55:03'),
(340, '291220_0449', '000070\n', 'gigi', 'Ny Istanti', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200.000', NULL, '2020-12-29 09:49:43', '2020-12-29 09:55:03'),
(341, '291220_0449', '000070', 'gigi', 'Ny Istanti', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Pilih Tindakan . . . *TAMBAL GIGI', 1, 'Selesai', '200.000', NULL, '2020-12-29 09:54:16', '2020-12-29 09:55:03'),
(344, '291220_0456', '000070\n', 'gigi', 'Ny Istanti', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-29 09:56:44', '2020-12-29 09:58:53'),
(345, '291220_0456', '000070\n', 'gigi', 'Ny Istanti', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-29 09:56:44', '2020-12-29 09:58:53'),
(346, '291220_0456', '000070', 'gigi', 'Ny Istanti', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', '*TAMBAL GIGI', 1, 'Selesai', '200000', NULL, '2020-12-29 09:58:41', '2020-12-29 09:58:53'),
(347, '291220_1027', '000071\n', 'gigi', 'Tn JOE', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '450000', NULL, '2020-12-29 15:27:59', '2020-12-29 16:58:39'),
(348, '291220_1027', '000071\n', 'gigi', 'Tn JOE', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '450000', NULL, '2020-12-29 15:27:59', '2020-12-29 16:58:39'),
(349, '291220_1101', '000014\n', 'gigi', 'Sdr Rifky Pradiva', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-29 16:01:31', '2020-12-29 17:25:09'),
(350, '291220_1101', '000014\n', 'gigi', 'Sdr Rifky Pradiva', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-29 16:01:31', '2020-12-29 17:25:09'),
(355, '291220_1149', '000011\n', 'gigi', 'Nn LIVOLI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100.000', NULL, '2020-12-29 16:49:03', '2020-12-29 17:33:50'),
(356, '291220_1149', '000011\n', 'gigi', 'Nn LIVOLI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100.000', NULL, '2020-12-29 16:49:03', '2020-12-29 17:33:50'),
(357, '291220_1156', '000006\n', 'gigi', 'Tn HAIDAR AHMAD M', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-29 16:56:04', '2020-12-29 17:34:25');
INSERT INTO `transaction_tbl` (`id`, `nomor_transaksi`, `nomor_rm`, `poli`, `nama_pasien`, `nama_dokter`, `tindakan`, `tindakan_isPick`, `status`, `harga`, `remarks`, `created_at`, `updated_at`) VALUES
(358, '291220_1156', '000006\n', 'gigi', 'Tn HAIDAR AHMAD M', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-29 16:56:04', '2020-12-29 17:34:25'),
(359, '291220_1027', '000071', 'gigi', 'Tn JOE', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PERIKSA GIGI', 1, 'Selesai', '450000', NULL, '2020-12-29 16:57:55', '2020-12-29 16:58:39'),
(360, '291220_1101', '000014', 'gigi', 'Sdr Rifky Pradiva', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-29 17:20:58', '2020-12-29 17:25:09'),
(361, '291220_1224', '000002\n', 'gigi', 'Sdr DICKY WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150.000', NULL, '2020-12-29 17:24:20', '2020-12-29 17:38:55'),
(362, '291220_1224', '000002\n', 'gigi', 'Sdr DICKY WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150.000', NULL, '2020-12-29 17:24:20', '2020-12-29 17:38:55'),
(363, '291220_1149', '000011', 'gigi', 'Nn LIVOLI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '100.000', NULL, '2020-12-29 17:31:07', '2020-12-29 17:33:50'),
(364, '291220_1156', '000006', 'gigi', 'Tn HAIDAR AHMAD M', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150.000', NULL, '2020-12-29 17:31:54', '2020-12-29 17:34:25'),
(365, '291220_1224', '000002', 'gigi', 'Sdr DICKY WAHYU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150.000', NULL, '2020-12-29 17:32:30', '2020-12-29 17:38:55'),
(368, '291220_1251', '000072\n', 'gigi', 'Tn HAFIDH MUNAWIR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-29 17:51:16', '2020-12-29 18:26:38'),
(369, '291220_1251', '000072\n', 'gigi', 'Tn HAFIDH MUNAWIR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-29 17:51:16', '2020-12-29 18:26:38'),
(370, '291220_1251', '000073\n', 'gigi', 'Tn SURYONO', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-29 17:51:29', '2020-12-29 18:26:38'),
(371, '291220_1251', '000073\n', 'gigi', 'Tn SURYONO', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-29 17:51:29', '2020-12-29 18:26:38'),
(372, '291220_1313', '000066\n', 'gigi', 'Ny HARTATIK', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '600000', NULL, '2020-12-29 18:13:36', '2020-12-29 19:21:24'),
(373, '291220_1313', '000066\n', 'gigi', 'Ny HARTATIK', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '600000', NULL, '2020-12-29 18:13:36', '2020-12-29 19:21:24'),
(376, '291220_1314', '000073\n', 'gigi', 'Tn SURYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '250000', NULL, '2020-12-29 18:14:42', '2020-12-29 18:48:02'),
(377, '291220_1314', '000073\n', 'gigi', 'Tn SURYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '250000', NULL, '2020-12-29 18:14:42', '2020-12-29 18:48:02'),
(378, '291220_1251', '000072', 'gigi', 'Tn HAFIDH MUNAWIR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'gigi belakang sakit', 1, 'Selesai', '150000', NULL, '2020-12-29 18:26:20', '2020-12-29 18:26:38'),
(379, '291220_1328', '000074\n', 'gigi', 'Ny NABILA FILDZA SIXTANORA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '550000', NULL, '2020-12-29 18:28:43', '2020-12-29 18:50:48'),
(380, '291220_1328', '000074\n', 'gigi', 'Ny NABILA FILDZA SIXTANORA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '550000', NULL, '2020-12-29 18:28:43', '2020-12-29 18:50:48'),
(381, '291220_1328', '000074', 'gigi', 'Ny NABILA FILDZA SIXTANORA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'TAMBAL,GANTI PO', 1, 'Selesai', '550000', NULL, '2020-12-29 18:46:56', '2020-12-29 18:50:48'),
(382, '291220_1314', '000073', 'gigi', 'Tn SURYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'FRAKTUR', 1, 'Selesai', '250000', NULL, '2020-12-29 18:47:40', '2020-12-29 18:48:02'),
(387, '291220_1313', '000066', 'gigi', 'Ny HARTATIK', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'TAMBAL', 1, 'Selesai', '600000', NULL, '2020-12-29 19:21:07', '2020-12-29 19:21:24'),
(388, '301220_0122', '000075\n', 'gigi', 'Ny Sukarmi', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2020-12-30 06:22:42', '2020-12-30 07:36:16'),
(389, '301220_0122', '000075\n', 'gigi', 'Ny Sukarmi', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2020-12-30 06:22:42', '2020-12-30 07:36:16'),
(392, '301220_0122', '000075', 'gigi', 'Ny Sukarmi', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CABUT', 1, 'Selesai', '100000', NULL, '2020-12-30 07:35:15', '2020-12-30 07:36:16'),
(393, '301220_0945', '000039\n', 'gigi', 'Tn WASTON', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '400000', NULL, '2020-12-30 14:45:17', '2020-12-30 17:52:14'),
(394, '301220_0945', '000039\n', 'gigi', 'Tn WASTON', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '400000', NULL, '2020-12-30 14:45:17', '2020-12-30 17:52:14'),
(395, '301220_0945', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '400000', NULL, '2020-12-30 14:45:31', '2020-12-30 17:52:14'),
(396, '301220_0945', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '400000', NULL, '2020-12-30 14:45:31', '2020-12-30 17:52:14'),
(397, '301220_0945', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '400000', NULL, '2020-12-30 14:45:53', '2020-12-30 17:52:14'),
(398, '301220_0945', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '400000', NULL, '2020-12-30 14:45:53', '2020-12-30 17:52:14'),
(401, '301220_1141', '000077\n', 'gigi', 'Sdr AL FADDILAN ADIF PANGESTU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-30 16:41:36', '2020-12-30 17:47:47'),
(402, '301220_1141', '000077\n', 'gigi', 'Sdr AL FADDILAN ADIF PANGESTU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-30 16:41:36', '2020-12-30 17:47:47'),
(403, '301220_1141', '000078\n', 'gigi', 'Nn LIA', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-30 16:41:48', '2020-12-30 17:47:47'),
(404, '301220_1141', '000078\n', 'gigi', 'Nn LIA', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-30 16:41:48', '2020-12-30 17:47:47'),
(405, '301220_1141', '000078\n', 'gigi', 'Nn LIA', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-30 16:41:56', '2020-12-30 17:47:47'),
(406, '301220_1141', '000078\n', 'gigi', 'Nn LIA', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-30 16:41:56', '2020-12-30 17:47:47'),
(407, '301220_1153', '000026\n', 'gigi', 'Sdr KEVIN NUR KISYUWONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-30 16:53:37', '2020-12-30 17:48:49'),
(408, '301220_1153', '000026\n', 'gigi', 'Sdr KEVIN NUR KISYUWONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-30 16:53:37', '2020-12-30 17:48:49'),
(409, '301220_1153', '000079\n', 'gigi', 'Ny FATUL SARIYANTI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2020-12-30 16:53:48', '2020-12-30 17:48:49'),
(410, '301220_1153', '000079\n', 'gigi', 'Ny FATUL SARIYANTI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2020-12-30 16:53:48', '2020-12-30 17:48:49'),
(411, '301220_1205', '000080\n', 'gigi', 'Nn RANA ULFAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-30 17:05:21', '2020-12-30 17:49:37'),
(412, '301220_1205', '000080\n', 'gigi', 'Nn RANA ULFAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-30 17:05:21', '2020-12-30 17:49:37'),
(413, '301220_1205', '000080', 'gigi', 'Nn RANA ULFAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'BATAL', 1, 'Selesai', '0', NULL, '2020-12-30 17:13:48', '2020-12-30 17:49:37'),
(416, '301220_1228', '000080\n', 'gigi', 'Nn RANA ULFAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-30 17:28:17', '2020-12-30 17:50:33'),
(417, '301220_1228', '000080\n', 'gigi', 'Nn RANA ULFAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-30 17:28:17', '2020-12-30 17:50:33'),
(418, '301220_1141', '000077', 'gigi', 'Sdr AL FADDILAN ADIF PANGESTU', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-30 17:45:24', '2020-12-30 17:47:47'),
(419, '301220_0945', '000032', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GTS', 1, 'Selesai', '400000', NULL, '2020-12-30 17:46:04', '2020-12-30 17:52:14'),
(420, '301220_1153', '000026', 'gigi', 'Sdr KEVIN NUR KISYUWONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '200000', NULL, '2020-12-30 17:46:40', '2020-12-30 17:48:49'),
(421, '301220_1228', '000080', 'gigi', 'Nn RANA ULFAH', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-30 17:47:18', '2020-12-30 17:50:33'),
(422, '301220_1254', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '400000', NULL, '2020-12-30 17:54:06', '2020-12-30 17:55:06'),
(423, '301220_1254', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '400000', NULL, '2020-12-30 17:54:06', '2020-12-30 17:55:06'),
(424, '301220_1254', '000032', 'gigi', 'Ny ENDANG SULASTRI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GTS', 1, 'Selesai', '400000', NULL, '2020-12-30 17:54:39', '2020-12-30 17:55:06'),
(425, '301220_1254', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', NULL, NULL, '2020-12-30 17:54:54', '2020-12-30 17:55:06'),
(426, '301220_1254', '000032\n', 'gigi', 'Ny ENDANG SULASTRI', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', NULL, NULL, '2020-12-30 17:54:54', '2020-12-30 17:55:06'),
(427, '301220_1256', '000078\n', 'gigi', 'Nn LIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2020-12-30 17:56:09', '2020-12-30 17:57:31'),
(428, '301220_1256', '000078\n', 'gigi', 'Nn LIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2020-12-30 17:56:09', '2020-12-30 17:57:31'),
(429, '301220_1256', '000078', 'gigi', 'Nn LIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CABUT GIGI', 1, 'Selesai', '0', NULL, '2020-12-30 17:57:10', '2020-12-30 17:57:31'),
(434, '301220_1259', '000079\n', 'gigi', 'Ny FATUL SARIYANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Mendapat Dokter', '150000', NULL, '2020-12-30 17:59:13', '2020-12-30 18:06:10'),
(435, '301220_1259', '000079\n', 'gigi', 'Ny FATUL SARIYANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Mendapat Dokter', '150000', NULL, '2020-12-30 17:59:13', '2020-12-30 18:06:10'),
(436, '301220_1259', '000079', 'gigi', 'Ny FATUL SARIYANTI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-30 17:59:57', '2020-12-30 18:00:39'),
(441, '311220_1036', '000041\n', 'gigi', 'Nn EVITA DWI PRASANTI', 'drg. Pamungkas H.M', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '250000', NULL, '2020-12-31 15:36:22', '2020-12-31 17:26:07'),
(442, '311220_1036', '000041\n', 'gigi', 'Nn EVITA DWI PRASANTI', 'drg. Pamungkas H.M', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '250000', NULL, '2020-12-31 15:36:22', '2020-12-31 17:26:07'),
(443, '311220_1036', '000017\n', 'gigi', 'Sdr. Hendiawan', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '250000', NULL, '2020-12-31 15:36:57', '2020-12-31 17:26:07'),
(444, '311220_1036', '000017\n', 'gigi', 'Sdr. Hendiawan', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '250000', NULL, '2020-12-31 15:36:57', '2020-12-31 17:26:07'),
(445, '311220_1037', '000017\n', 'gigi', 'Sdr. Hendiawan', 'drg. Pamungkas H.M', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '250000', NULL, '2020-12-31 15:37:13', '2020-12-31 17:51:38'),
(446, '311220_1037', '000017\n', 'gigi', 'Sdr. Hendiawan', 'drg. Pamungkas H.M', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '250000', NULL, '2020-12-31 15:37:13', '2020-12-31 17:51:38'),
(447, '311220_1131', '000010\n', 'gigi', 'Nn BHARA AMBARWATI', 'drg. Pamungkas H.M', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2020-12-31 16:31:31', '2020-12-31 17:11:15'),
(448, '311220_1131', '000010\n', 'gigi', 'Nn BHARA AMBARWATI', 'drg. Pamungkas H.M', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2020-12-31 16:31:31', '2020-12-31 17:11:15'),
(451, '311220_1154', '000081\n', 'umum', 'Ny MUDIYATI', 'dr. Iwan Maryono', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '35000', NULL, '2020-12-31 16:54:21', '2020-12-31 17:32:50'),
(452, '311220_1154', '000081\n', 'umum', 'Ny MUDIYATI', 'dr. Iwan Maryono', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '35000', NULL, '2020-12-31 16:54:21', '2020-12-31 17:32:50'),
(455, '311220_1206', '000066\n', 'gigi', 'Ny HARTATIK', 'drg. Pamungkas H.M', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2020-12-31 17:06:39', '2020-12-31 18:29:56'),
(456, '311220_1206', '000066\n', 'gigi', 'Ny HARTATIK', 'drg. Pamungkas H.M', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2020-12-31 17:06:39', '2020-12-31 18:29:56'),
(457, '311220_1131', '000010', 'gigi', 'Nn BHARA AMBARWATI', 'drg. Pamungkas H.M', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2020-12-31 17:10:19', '2020-12-31 17:11:15'),
(460, '311220_1036', '000041', 'gigi', 'Nn EVITA DWI PRASANTI', 'drg. Pamungkas H.M', 'KONTROL ORTHO', 1, 'Selesai', '250000', NULL, '2020-12-31 17:25:53', '2020-12-31 17:26:07'),
(461, '311220_1154', '000081', 'umum', 'Ny MUDIYATI', 'dr. Iwan Maryono', 'kaki sakit, ulu hati nyeri', 1, 'Selesai', '35000', NULL, '2020-12-31 17:32:37', '2020-12-31 17:32:50'),
(462, '311220_1037', '000017', 'gigi', 'Sdr. Hendiawan', 'drg. Pamungkas H.M', 'KONTROL ORTHO', 1, 'Selesai', '250000', NULL, '2020-12-31 17:51:11', '2020-12-31 17:51:38'),
(463, '311220_1206', '000066', 'gigi', 'Ny HARTATIK', 'drg. Pamungkas H.M', 'KONTROL GIGI', 1, 'Selesai', '300000', NULL, '2020-12-31 18:29:41', '2020-12-31 18:29:56'),
(464, '020121_0136', '000082\n', 'gigi', 'SDR. SALMA MAHIRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2021-01-02 06:36:06', '2021-01-02 06:47:29'),
(465, '020121_0136', '000082\n', 'gigi', 'SDR. SALMA MAHIRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2021-01-02 06:36:06', '2021-01-02 06:47:29'),
(466, '020121_0136', '000082', 'gigi', 'SDR. SALMA MAHIRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'cabut gigi depan', 1, 'Selesai', '100000', NULL, '2021-01-02 06:46:34', '2021-01-02 06:47:29'),
(467, '020121_0159', '000083\n', 'gigi', 'Ny DYAH AYU INTAN P', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2021-01-02 06:59:55', '2021-01-02 07:11:01'),
(468, '020121_0159', '000083\n', 'gigi', 'Ny DYAH AYU INTAN P', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2021-01-02 06:59:55', '2021-01-02 07:11:01'),
(469, '020121_0159', '000083', 'gigi', 'Ny DYAH AYU INTAN P', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Konsultasi & Medikamen abses', 1, 'Selesai', '100000', NULL, '2021-01-02 07:10:26', '2021-01-02 07:11:01'),
(470, '020121_0349', '000038\n', 'gigi', 'Nn KHOSYI HURIN ANGGRAINI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '200000', NULL, '2021-01-02 08:49:08', '2021-01-02 10:08:37'),
(471, '020121_0349', '000038\n', 'gigi', 'Nn KHOSYI HURIN ANGGRAINI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '200000', NULL, '2021-01-02 08:49:08', '2021-01-02 10:08:37'),
(472, '020121_0407', '000072\n', 'gigi', 'Tn HAFIDH MUNAWIR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '100000', NULL, '2021-01-02 09:07:18', '2021-01-02 10:10:49'),
(473, '020121_0407', '000072\n', 'gigi', 'Tn HAFIDH MUNAWIR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '100000', NULL, '2021-01-02 09:07:18', '2021-01-02 10:10:49'),
(474, '020121_0416', '000084\n', 'gigi', 'NN.HAIFA TRI SETYOWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '0', NULL, '2021-01-02 09:16:36', '2021-01-02 11:14:04'),
(475, '020121_0416', '000084\n', 'gigi', 'NN.HAIFA TRI SETYOWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '0', NULL, '2021-01-02 09:16:36', '2021-01-02 11:14:04'),
(476, '020121_0449', '000056\n', 'gigi', 'Sdr FAIZAL YOGA PUTRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '1000000', NULL, '2021-01-02 09:49:18', '2021-01-02 11:16:22'),
(477, '020121_0449', '000056\n', 'gigi', 'Sdr FAIZAL YOGA PUTRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '1000000', NULL, '2021-01-02 09:49:18', '2021-01-02 11:16:22'),
(478, '020121_0349', '000038', 'gigi', 'Nn KHOSYI HURIN ANGGRAINI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '200000', NULL, '2021-01-02 10:08:10', '2021-01-02 10:08:37'),
(481, '020121_0407', '000072', 'gigi', 'Tn HAFIDH MUNAWIR', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'tambal gigi', 1, 'Selesai', '100000', NULL, '2021-01-02 10:10:14', '2021-01-02 10:10:49'),
(486, '020121_0416', '000084', 'gigi', 'NN.HAIFA TRI SETYOWATI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'GANTI PO', 1, 'Selesai', '0', NULL, '2021-01-02 11:13:35', '2021-01-02 11:14:04'),
(487, '020121_0449', '000056', 'gigi', 'Sdr FAIZAL YOGA PUTRA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'LEPAS BEHEL,TAMBAL 4 GIGI', 1, 'Selesai', '1000000', NULL, '2021-01-02 11:15:52', '2021-01-02 11:16:22'),
(488, '020121_0944', '000060\n', 'gigi', 'Sdr FAQIH BUDI SETIYAWAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2021-01-02 14:44:23', '2021-01-02 16:54:50'),
(489, '020121_0944', '000060\n', 'gigi', 'Sdr FAQIH BUDI SETIYAWAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2021-01-02 14:44:23', '2021-01-02 16:54:50'),
(490, '020121_1013', '000085\n', 'gigi', 'Nn DHESTI DADI DEVANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2021-01-02 15:13:00', '2021-01-02 16:59:41'),
(491, '020121_1013', '000085\n', 'gigi', 'Nn DHESTI DADI DEVANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2021-01-02 15:13:00', '2021-01-02 16:59:41'),
(492, '020121_1017', '000033\n', 'gigi', 'Sdr NABILA ANSORI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2021-01-02 15:17:45', '2021-01-02 17:02:29'),
(493, '020121_1017', '000033\n', 'gigi', 'Sdr NABILA ANSORI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2021-01-02 15:17:45', '2021-01-02 17:02:29'),
(494, '020121_1057', '000086\n', 'gigi', 'TN SULESTYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '300000', NULL, '2021-01-02 15:57:37', '2021-01-02 17:04:44'),
(495, '020121_1057', '000086\n', 'gigi', 'TN SULESTYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '300000', NULL, '2021-01-02 15:57:37', '2021-01-02 17:04:44'),
(496, '020121_0944', '000060', 'gigi', 'Sdr FAQIH BUDI SETIYAWAN', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2021-01-02 16:51:18', '2021-01-02 16:54:50'),
(497, '020121_1151', '000087\n', 'gigi', 'Tn DR TRI WIDHIYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2021-01-02 16:51:43', '2021-01-02 17:32:49'),
(498, '020121_1151', '000087\n', 'gigi', 'Tn DR TRI WIDHIYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2021-01-02 16:51:43', '2021-01-02 17:32:49'),
(499, '020121_1151', '000088\n', 'gigi', 'An KHANSA', NULL, 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2021-01-02 16:51:56', '2021-01-02 17:32:49'),
(500, '020121_1151', '000088\n', 'gigi', 'An KHANSA', NULL, 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2021-01-02 16:51:56', '2021-01-02 17:32:49'),
(501, '020121_1013', '000085', 'gigi', 'Nn DHESTI DADI DEVANI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2021-01-02 16:52:58', '2021-01-02 16:59:41'),
(502, '020121_1017', '000033', 'gigi', 'Sdr NABILA ANSORI', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO', 1, 'Selesai', '150000', NULL, '2021-01-02 16:53:29', '2021-01-02 17:02:29'),
(503, '020121_1057', '000086', 'gigi', 'TN SULESTYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'TAMBAL GIGI', 1, 'Selesai', '300000', NULL, '2021-01-02 16:54:01', '2021-01-02 17:04:44'),
(504, '020121_1154', '000088\n', 'gigi', 'An KHANSA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '150000', NULL, '2021-01-02 16:54:15', '2021-01-02 17:37:59'),
(505, '020121_1154', '000088\n', 'gigi', 'An KHANSA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '150000', NULL, '2021-01-02 16:54:15', '2021-01-02 17:37:59'),
(510, '020121_1209', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '350000', NULL, '2021-01-02 17:09:10', '2021-01-02 17:38:56'),
(511, '020121_1209', '000028\n', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '350000', NULL, '2021-01-02 17:09:10', '2021-01-02 17:38:56'),
(512, '020121_1151', '000087', 'gigi', 'Tn DR TRI WIDHIYONO', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PRIKSA GIGI', 1, 'Selesai', '150000', NULL, '2021-01-02 17:31:33', '2021-01-02 17:32:49'),
(513, '020121_1154', '000088', 'gigi', 'An KHANSA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'CABUT GIGI', 1, 'Selesai', '150000', NULL, '2021-01-02 17:32:00', '2021-01-02 17:37:59'),
(514, '020121_1209', '000028', 'gigi', 'AN DIKA PRAMUDIA', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'KONTROL ORTHO DAN CABUT GIGI', 1, 'Selesai', '350000', NULL, '2021-01-02 17:32:34', '2021-01-02 17:38:56'),
(515, '020121_1303', '000089\n', 'gigi', 'Ny UMMI KULSUM', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG KAWAT /BEHEL GIGI, Bracket', 0, 'Selesai', '5000000', NULL, '2021-01-02 18:03:56', '2021-01-02 19:33:37'),
(516, '020121_1303', '000089\n', 'gigi', 'Ny UMMI KULSUM', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Penambalan bahan SIK (glass  ionomer cement), Kecil', 0, 'Selesai', '5000000', NULL, '2021-01-02 18:03:56', '2021-01-02 19:33:37'),
(517, '020121_1303', '000089', 'gigi', 'Ny UMMI KULSUM', 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'PASANG BEHEL', 1, 'Selesai', '5000000', NULL, '2021-01-02 19:33:20', '2021-01-02 19:33:37');

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
(11, 'Admin 1', 'super-admin', 'P', 'Kartosuro', '0271', 'kasir@aafia.my.id', NULL, NULL, '$2y$10$Q/VydC.oWISI3vdUwvbiN.2R6qo2XD0NJCL29pByBbtuFLwKvR.xO', NULL, '2020-10-11 06:16:43', '2020-10-11 06:16:43'),
(21, 'IKA YASSIRLY', 'pendaftaran', 'P', 'PONDOK BARU ASRI 2 RT 04/02 BLOK A NO 22, GUMPANG KARTASURA', '085889585106', 'ikayasirli@gmail.com', NULL, NULL, '$2y$10$SYdMfh3jF5GK7D8jHQqZHOnyM6etbSLXwTJ/A3nXPv9tWVFT4UeY2', NULL, '2020-10-25 11:17:32', '2020-10-25 11:17:32'),
(34, 'ALMA MISQI', 'super-admin', 'P', 'PUCANGAN KARTASURA', '081329286334', 'almamisqi1998@gmail.com', NULL, NULL, '$2y$10$643ON8mGSbcPMby5gaTFTepS129TjNeW2XaZ0kfAGQhK4Jp7YnN/G', NULL, '2020-12-21 07:45:22', '2020-12-21 07:45:22'),
(35, 'drg Edi Karyadi, M.M., MDSC., Sp. Perio', 'Dokter', 'L', 'Kartasura', '08122955234', 'edident@my.id', 'gigi', NULL, '$2y$10$W0RyCvv/7BJCsSj0RwzRee47qo4FvgvE9w0EYA2iF73nE9.IQc1Ku', NULL, '2020-12-22 18:02:07', '2020-12-22 18:02:07'),
(36, 'drg. Pamungkas H.M', 'Dokter', 'L', 'surakarta', '085228852120', 'pamungkashm@my.id', 'gigi', NULL, '$2y$10$UqntJJPm4P45zHLKVd3g/us27SCbmH9kq8p0GIOUMCI6xUxswemiG', NULL, '2020-12-23 07:59:17', '2020-12-23 07:59:17'),
(37, 'drg. Haris Kusumanto', 'Dokter', 'L', 'surakarta', '081325093671', 'harisk@my.id', 'gigi', NULL, '$2y$10$FlNedMSPwyFm0BOnMBgDRu2kx2KG9maV/TUsBnBG/B/uclWe2kNQi', NULL, '2020-12-23 08:20:18', '2020-12-23 08:20:18'),
(38, 'dr. Iwan Maryono', 'Dokter', 'L', 'sukoharjo', '081', 'iwanm@my.id', 'umum', NULL, '$2y$10$60foP.30lQ0u4yGeQ4zQm.UlkK6BJT3XxE8b24rv3rwr70BAVdobu', NULL, '2020-12-23 08:23:38', '2020-12-23 08:23:38'),
(39, 'ALMA MISQI', 'Dokter', 'P', 'Kartasura', '081329286334', 'alma@my.id', 'umum', NULL, '$2y$10$DjrlMo1u2AVzpkoguMX.1OCWL6bzl.I5hC0imIiN7nED5AzVcG3wS', NULL, '2020-12-23 09:09:57', '2020-12-23 09:09:57'),
(40, 'Ariqo Jauza Ulhaq', 'Dokter', 'L', 'Kartasura', '082136141232', 'ariqo@my.id', 'gigi', NULL, '$2y$10$0z83omEKFNcV/74qx.nwt.Hm0vYf67DpE5Jf1Qtpx6w2eJmQpbyni', NULL, '2020-12-23 09:13:30', '2020-12-23 09:13:30'),
(41, 'ARIQO JU', 'super-admin', 'L', 'PUCANGAN, KARTASURA, SUKOHARJO', '082136141232', 'ariqo15@my.id', NULL, NULL, '$2y$10$7o/srM7MZQ6oumsVvaJSZuG7F0chGZT79OipAWCNmv8f8Tj/x.B.C', NULL, '2020-12-23 09:21:25', '2020-12-23 09:21:25'),
(42, 'RARAS', 'pendaftaran', 'P', 'PUCANGAN, KARTASURA, SUKOHARJO', '085742495206', 'raras@my.id', NULL, NULL, '$2y$10$yutrBue.LcNWnk4t/qFo4uxK7IY0HojDXRrBJRKy9mqgsACfGVvai', NULL, '2020-12-23 09:26:03', '2020-12-23 09:26:03'),
(43, 'WIDI', 'pendaftaran', 'P', 'PUCANGAN, KARTASURA, SUKOHARJO', '081317576829', 'widi@my.id', NULL, NULL, '$2y$10$5FDZQAOJAqym2VJ3Q45BUuClyxq6ePtGVSNdkkigDGe7DkmaEP.5y', NULL, '2020-12-23 09:28:31', '2020-12-23 09:28:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter_tbl`
--
ALTER TABLE `dokter_tbl`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pasien_tbl`
--
ALTER TABLE `pasien_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
