-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 01:51 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `dm_cf`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` char(30) NOT NULL DEFAULT '',
  `password` char(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `analisa_hasil`
--

CREATE TABLE `analisa_hasil` (
  `id_hasil` int(4) NOT NULL,
  `id_pasien` int(4) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `persentase` double NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_hasil`
--

INSERT INTO `analisa_hasil` (`id_hasil`, `id_pasien`, `kd_penyakit`, `persentase`, `tanggal`) VALUES
(1, 1, 'p01', -11.1, '2017-11-12 22:35:23'),
(2, 1, 'p01', 111.1, '2017-11-12 22:35:23'),
(3, 1, 'p01', 100, '2017-11-12 22:35:23'),
(4, 1, 'p01', -11.1, '2017-11-12 22:38:04'),
(5, 1, 'p01', 111.1, '2017-11-12 22:38:04'),
(6, 1, 'p01', 100, '2017-11-12 22:38:04'),
(7, 2, 'p01', 100, '2017-11-12 22:38:47'),
(8, 3, 'p01', 100, '2017-11-12 22:40:08'),
(9, 2, 'p01', 100, '2017-11-12 22:53:29'),
(10, 2, 'p01', 100, '2017-11-12 22:53:51'),
(11, 4, 'p01', 100, '2017-11-13 19:02:53'),
(12, 4, 'p01', 100, '2017-11-13 19:03:35'),
(13, 4, 'p01', -35.2, '2017-11-13 19:03:56'),
(14, 4, 'p01', 100, '2017-11-13 19:03:56'),
(15, 4, 'p01', 42.25, '2017-11-13 19:03:56'),
(16, 4, 'p02', -35.2, '2017-11-13 19:04:52'),
(17, 4, 'p02', 100, '2017-11-13 19:04:52'),
(18, 4, 'p02', 42.25, '2017-11-13 19:04:52'),
(19, 4, 'p02', -35.2, '2017-11-13 19:07:41'),
(20, 4, 'p02', 100, '2017-11-13 19:07:41'),
(21, 4, 'p02', 42.25, '2017-11-13 19:07:41'),
(22, 20, 'p03', 13.84, '2020-12-25 10:22:06'),
(23, 20, 'p03', 13.84, '2020-12-25 10:24:11'),
(24, 20, 'p03', 13.84, '2020-12-25 10:24:59'),
(25, 21, 'p03', 100, '2020-12-27 08:05:29'),
(26, 21, 'p02', 45.63, '2020-12-27 08:05:29'),
(27, 21, 'p03', 54.36, '2020-12-27 08:05:29'),
(28, 22, 'p03', 13.84, '2020-12-30 19:50:27'),
(29, 23, 'p03', 100, '2020-12-31 09:33:49'),
(30, 23, 'p02', 10.41, '2020-12-31 09:47:40'),
(31, 23, 'p03', 12.4, '2020-12-31 09:47:40'),
(32, 23, 'p03', 100, '2020-12-31 09:48:18'),
(33, 23, 'p01', 100, '2020-12-31 10:09:08'),
(34, 24, 'p01', 100, '2020-12-31 12:59:14'),
(35, 24, 'p01', 100, '2020-12-31 13:01:49'),
(36, 24, 'p01', 100, '2020-12-31 13:04:30'),
(37, 24, 'p01', 100, '2020-12-31 13:04:56'),
(38, 25, 'p01', 36.32, '2021-01-01 07:56:04'),
(39, 25, 'p03', 63.67, '2021-01-01 07:56:04'),
(40, 26, 'p01', 36.32, '2021-01-01 07:57:26'),
(41, 26, 'p03', 63.67, '2021-01-01 07:57:26'),
(42, 27, 'p03', 100, '2021-01-01 07:58:22'),
(43, 28, 'p01', 100, '2021-01-01 13:41:27'),
(44, 29, 'p03', 100, '2021-01-02 07:20:51'),
(45, 29, 'p01', 100, '2021-01-02 07:21:56'),
(46, 29, 'p01', 3.959, '2021-01-02 07:38:04'),
(47, 29, 'p02', 96.04, '2021-01-02 07:38:04'),
(48, 29, 'p01', 3.959, '2021-01-02 07:38:08'),
(49, 29, 'p02', 96.04, '2021-01-02 07:38:08'),
(50, 30, 'p01', 3.634, '2021-01-02 07:40:18'),
(51, 30, 'p02', 88.13, '2021-01-02 07:40:18'),
(52, 30, 'p03', 8.229, '2021-01-02 07:40:18'),
(53, 30, 'p01', 3.634, '2021-01-02 07:41:50'),
(54, 30, 'p02', 88.13, '2021-01-02 07:41:50'),
(55, 30, 'p03', 8.229, '2021-01-02 07:41:50'),
(56, 30, 'p01', 3.634, '2021-01-02 07:41:54'),
(57, 30, 'p02', 88.13, '2021-01-02 07:41:54'),
(58, 30, 'p03', 8.229, '2021-01-02 07:41:54'),
(59, 30, 'p01', 3.634, '2021-01-02 07:43:07'),
(60, 30, 'p02', 88.13, '2021-01-02 07:43:07'),
(61, 30, 'p03', 8.229, '2021-01-02 07:43:07'),
(62, 30, 'p01', 3.634, '2021-01-02 07:45:42'),
(63, 30, 'p02', 88.13, '2021-01-02 07:45:43'),
(64, 30, 'p03', 8.229, '2021-01-02 07:45:43'),
(65, 30, 'p01', 3.959, '2021-01-02 08:05:07'),
(66, 30, 'p02', 96.04, '2021-01-02 08:05:08'),
(67, 30, 'p01', 3.959, '2021-01-02 08:05:39'),
(68, 30, 'p02', 96.04, '2021-01-02 08:05:39'),
(69, 30, 'p01', 3.959, '2021-01-02 08:08:39'),
(70, 30, 'p02', 96.04, '2021-01-02 08:08:39'),
(71, 30, 'p01', 3.959, '2021-01-02 08:10:12'),
(72, 30, 'p02', 96.04, '2021-01-02 08:10:12'),
(73, 30, 'p01', 100, '2021-01-02 08:21:59'),
(74, 30, 'p03', 100, '2021-01-02 08:22:40'),
(75, 30, 'p03', 100, '2021-01-02 08:24:49'),
(76, 31, 'p01', 5.113, '2021-01-03 20:37:33'),
(77, 31, 'p02', 83.67, '2021-01-03 20:37:33'),
(78, 31, 'p03', 11.2, '2021-01-03 20:37:33'),
(79, 31, 'p03', 100, '2021-01-03 20:38:42'),
(80, 31, 'p03', 100, '2021-01-03 20:47:16'),
(81, 31, 'p03', 100, '2021-01-03 20:49:28'),
(82, 31, 'p03', 100, '2021-01-03 20:51:00'),
(83, 31, 'p03', 100, '2021-01-03 20:51:05'),
(84, 31, 'p03', 100, '2021-01-03 20:54:56'),
(85, 31, 'p01', 100, '2021-01-03 21:02:25'),
(86, 31, 'p01', 31.33, '2021-01-03 21:12:07'),
(87, 31, 'p03', 68.66, '2021-01-03 21:12:07'),
(88, 31, 'p01', 31.33, '2021-01-03 21:20:24'),
(89, 31, 'p03', 68.66, '2021-01-03 21:20:24'),
(90, 31, 'p01', 31.33, '2021-01-03 21:21:00'),
(91, 31, 'p03', 68.66, '2021-01-03 21:21:00'),
(92, 31, 'p01', 31.33, '2021-01-03 21:21:07'),
(93, 31, 'p03', 68.66, '2021-01-03 21:21:07'),
(94, 32, 'p01', 100, '2021-01-04 09:17:04'),
(95, 32, 'p01', 100, '2021-01-04 09:17:18'),
(96, 32, 'p01', 100, '2021-01-04 09:18:02'),
(97, 32, 'p01', 100, '2021-01-04 09:37:58'),
(98, 32, 'p03', 100, '2021-01-04 09:38:15'),
(99, 32, 'p03', 100, '2021-01-04 09:56:38'),
(100, 32, 'p03', 100, '2021-01-04 09:57:19'),
(101, 32, 'p03', 100, '2021-01-04 09:58:30'),
(102, 32, 'p01', 100, '2021-01-04 09:59:07'),
(103, 29, 'p01', 100, '2021-01-04 10:05:43'),
(104, 29, 'p01', 100, '2021-01-04 10:10:00'),
(105, 29, 'p01', 100, '2021-01-04 10:10:26'),
(106, 29, 'p03', 100, '2021-01-04 10:13:42'),
(107, 33, 'p01', 100, '2021-01-05 06:36:44'),
(108, 33, 'p01', 100, '2021-01-05 07:21:20'),
(109, 33, 'p01', 100, '2021-01-05 07:21:24'),
(110, 33, 'p01', 100, '2021-01-05 08:01:01'),
(111, 34, 'p01', 100, '2021-01-05 19:10:40'),
(112, 34, 'p01', 100, '2021-01-05 20:08:00'),
(113, 34, 'p02', 100, '2021-01-05 20:08:33'),
(114, 35, 'p02', 100, '2021-01-06 08:44:44'),
(115, 36, 'p01', 57.14, '2021-01-08 19:32:31'),
(116, 36, 'p03', 42.85, '2021-01-08 19:32:31'),
(117, 36, 'p01', 57.14, '2021-01-08 19:32:40'),
(118, 36, 'p03', 42.85, '2021-01-08 19:32:40'),
(119, 36, 'p01', 57.14, '2021-01-08 19:32:56'),
(120, 36, 'p03', 42.85, '2021-01-08 19:32:56'),
(121, 36, 'p03', 100, '2021-01-08 19:33:15'),
(122, 37, 'p01', 57.14, '2021-01-08 19:42:52'),
(123, 37, 'p03', 42.85, '2021-01-08 19:42:52'),
(124, 37, 'p01', 57.14, '2021-01-08 19:43:15'),
(125, 37, 'p03', 42.85, '2021-01-08 19:43:15'),
(126, 37, 'p01', 100, '2021-01-08 19:45:06'),
(127, 37, 'p03', 3.33, '2021-01-08 19:45:06'),
(128, 37, 'p01', 100, '2021-01-08 19:45:12'),
(129, 37, 'p03', 3.33, '2021-01-08 19:45:12'),
(130, 37, 'p01', -80, '2021-01-08 19:46:28'),
(131, 37, 'p03', 180, '2021-01-08 19:46:28'),
(132, 37, 'p01', -80, '2021-01-08 19:46:57'),
(133, 37, 'p03', 180, '2021-01-08 19:46:57'),
(134, 38, 'p03', 100, '2021-01-22 09:30:17'),
(135, 38, 'p03', 100, '2021-01-22 09:36:10'),
(136, 38, 'p03', 100, '2021-01-22 09:42:35'),
(137, 38, 'p01', 100, '2021-01-22 09:49:22'),
(138, 38, 'p03', 100, '2021-01-22 09:49:47'),
(139, 38, 'p03', 100, '2021-01-22 10:28:09'),
(140, 39, 'p01', -200, '2021-01-28 10:57:17'),
(141, 39, 'p03', 300, '2021-01-28 10:57:17'),
(142, 40, 'p01', -9.52, '2021-01-28 11:43:39'),
(143, 40, 'p02', 95.23, '2021-01-28 11:43:39'),
(144, 40, 'p03', 14.28, '2021-01-28 11:43:39'),
(145, 41, 'p01', -4.65, '2021-01-29 09:47:31'),
(146, 41, 'p03', 104.6, '2021-01-29 09:47:31'),
(147, 41, 'p01', -0.5, '2021-01-29 09:50:19'),
(148, 41, 'p02', 100.5, '2021-01-29 09:50:19'),
(149, 41, 'p01', -0.5, '2021-01-29 09:51:09'),
(150, 41, 'p02', 100.5, '2021-01-29 09:51:09'),
(151, 42, 'p01', -4.65, '2021-01-30 11:20:51'),
(152, 42, 'p03', 104.6, '2021-01-30 11:20:51'),
(153, 43, 'p01', 14.45, '2021-01-30 16:45:24'),
(154, 43, 'p02', 77.1, '2021-01-30 16:45:24'),
(155, 43, 'p03', 8.433, '2021-01-30 16:45:24'),
(156, 43, 'p02', 100, '2021-01-30 17:51:50'),
(157, 43, 'p01', 18.64, '2021-02-06 19:52:52'),
(158, 43, 'p02', 81.35, '2021-02-06 19:52:52'),
(159, 43, 'p02', 100, '2021-02-06 19:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_diagnosa` char(10) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` varchar(4) DEFAULT NULL,
  `gejala` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `gejala`) VALUES
('g1', 'Sering buang air kecil, terutama pada malam hari (polyuria)'),
('g2', 'Sering merasa lapar (polyphagia)'),
('g3', 'Sering haus (polydipsia).'),
('g5', 'Rasanya sangat gatal'),
('g6', 'Terjadi peradangan pada kulit akibat garukan'),
('g7', 'Sering merasa lelah'),
('g8', 'Infeksi kulit berulang'),
('g9', 'Gatal-gatal'),
('g10', 'Sering mengantuk'),
('g11', 'Memiliki keluarga yang terkena diabetes'),
('g12', 'Air seni dikerubuti semut'),
('g13', 'Obesitas'),
('g14', 'Luka sulit sembuh'),
('g15', 'Kesemutan'),
('g16', 'Gusi sering infeksi dan luka'),
('g17', 'Pendengaran berkurang'),
('g18', 'Sering mengalami infeksi saat luka,misalnya pada kulit vagina'),
('g19', 'Mual dan muntah'),
('g4', 'Penglihatan kabur.'),
('g20', 'Penurunan berat badan meskipun nafsu makan mengalami peningkatan');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_cf_penyakit`
--

CREATE TABLE `nilai_cf_penyakit` (
  `idcf` int(3) NOT NULL,
  `certainty_term` varchar(30) NOT NULL,
  `nilai_mbmd` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_cf_penyakit`
--

INSERT INTO `nilai_cf_penyakit` (`idcf`, `certainty_term`, `nilai_mbmd`) VALUES
(1, 'Tidak Tahu/Tidak Ada', 0.2),
(2, 'Mungkin', 0.4),
(3, 'Kemungkinan Besar', 0.6),
(4, 'Hampir Pasti', 0.8),
(5, 'Pasti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `umur` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `kelamin`, `umur`, `alamat`, `email`, `tanggal`) VALUES
(2, 'Hasnita', 'Wanita', '45', 'Nibong', 'hasnita@aol.com', '2017-11-12'),
(4, 'Nurdiana', 'Wanita', '22', 'Bringen', 'nurdiana@gmail.com', '2017-11-13'),
(1, 'lena maudy', 'perempuan', '22', 'surau gading', 'lenaputri775@gmail.com', '2020-12-22'),
(23, 'tata', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2020-12-31'),
(24, 'nina', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2020-12-31'),
(20, 'lena', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2020-12-25'),
(21, 'lena', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2020-12-27'),
(22, 'leni', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2020-12-30'),
(25, 'ree', 'Wanita', '20', 'surau gading', 'yuyun123@gmail.com', '2021-01-01'),
(26, 'nnn', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-01'),
(27, 'tita', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-01'),
(28, 'turu', 'Laki-laki', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-01'),
(29, 'tita', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-02'),
(33, 'coyo', 'Laki-laki', '20', 'dk2', 'coyo123@gmail.com', '2021-01-05'),
(34, 'coyo', 'Laki-laki', '20', 'dk2', 'coyo123@gmail.com', '2021-01-05'),
(35, 'yoyo', 'Laki-laki', '23', 'pku', 'yoyo123@gmal.com', '2021-01-06'),
(36, 'nadia', 'Wanita', '20', 'pekanbaru', 'nadia122@gmail.com', '2021-01-08'),
(37, 'lena', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-08'),
(38, 'tita', 'Wanita', '20', 'surau gading', 'tita@gmail.com', '2021-01-22'),
(39, 'yuyun', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-28'),
(40, 'lena', 'Laki-laki', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-28'),
(41, 'dinatun', 'Wanita', '24', 'surau satu', 'dinatun@gmail.com', '2021-01-29'),
(42, 'opo', 'Laki-laki', '25', 'tutu', 'tutu@gmail.com', '2021-01-30'),
(43, 'nani', 'Wanita', '20', 'surau gading', 'lena.putri@gmail.com', '2021-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_solusi`
--

CREATE TABLE `penyakit_solusi` (
  `kd_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(250) DEFAULT NULL,
  `definisi` text,
  `solusi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit_solusi`
--

INSERT INTO `penyakit_solusi` (`kd_penyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
('p02', 'Diabetes tipe 2', 'Diabetes tipe 2, atau yang juga disebut diabetes melitus tidak tergantung insulin, adalah penyakit jangka panjang yang terjadi ketika tubuh tidak secara efektif menggunakan insulin. Pengidap diabetes tipe 2 memiliki kadar glukosa (gula) darah di atas normal akibat tubuh tidak efektif menggunakan insulin atau kekurangan insulin yang relatif dibandingkan kadar glukosa darah.', 'Hingga saat ini, diabetes tipe 2 tidak dapat disembuhkan. Perubahan pola hidup serta pemberian obat bertujuan untuk mengontrol kadar glukosa darah agar dapat normal dan stabil, serta mencegah komplikasi lebih lanjut.\r\nPerubahan pola hidup sehat yang bisa dilakukan, antara lain:\r\na.	Menghindari makanan berkadar glukosa tinggi atau berlemak tinggi.\r\nb.	Meningkatkan makanan tinggi serat.\r\nc.	Melakukan olaraga secara teratur, minimal 3 jam dalam satu minggu.\r\nd.	Menurunkan dan menjaga berat badan tetap ideal.\r\ne.	Menghindari atau berhenti merokok.\r\nf.	Menghindari atau berhenti mengonsumsi minuman beralkohol.\r\ng.	Menjaga kesehatan kaki dan mencegah kaki terluka.\r\n'),
('p01', 'Diabetes tipe 1 ', 'Diabetes tipe 1 atau diabetes ketergantungan insulin adalah suatu penyakit jangka panjang yang terjadi ketika pankreas tidak dapat memproduksi cukup insulin bagi tubuh. Insulin sangat dibutuhkan tubuh untuk mengontrol glukosa (gula) dalam sel yang didapat dari darah. Pada pengidap diabetes, glukosa yang terdapat dalam darah tidak dapat diserap oleh sel-sel tubuh, sehingga menyebabkan berbagai gejala dan komplikasi..', 'Diabetes tidak bisa disembuhkan. Pengobatan yang dilakukan bertujuan untuk menjaga keseimbangan kadar glukosa darah dan mengendalikan gejala. Selain itu, pengobatan juga dilakukan untuk mencegah komplikasi yang dapat terjadi di kemudian hari. Beberapa pengobatan yang diberikan dokter, antara lain:\r\na.	Insulin untuk mengontrol glukosa darah pengidap. Pemberian insulin ini dengan cara disuntikkan pada lapisan di bawah kulit sekitar 3-4 kali sehari sesuai dosis yang dianjurkan dokter.\r\nb.	Pola makan sehat dan olahraga teratur untuk membantu mengontrol tingkat glukosa darah.\r\nc.	Merawat kaki dan memeriksakan mata secara berkala untuk mencegah komplikasi lebih lanjut.\r\n'),
('p03', 'Diabetes gestasional ', 'merupakan diabetes yang terjadi selama masa kehamilan. Kondisi ini bisa terjadi karena dipicu oleh perubahan metabolisme glukosa ketika hamil, terutama untuk usia kandungan di atas 6 bulan.Penyakit ini biasanya mengancam wanita hamil dengan berat badan berlebih, memiliki riwayat penyakit diabetes dalam keluarga, dan pernah melahirkan bayi dengan berat badan mencapai 4 kg. Selain itu wanita yang memiliki riwayat melahirkan bayi meninggal dan riwayat aborsi lebih dari sekali (terutama pada kondisi tubuh dengan kadar gula darah tinggi) juga berisiko tinggi.', 'Pemeriksaan kadar gula darah rutin,memeriksakan darah 4-5 kali sehari, terutama di pagi hari dan tiap selesai makan.Diet sehat mengonsumsi makanan berserat tinggi, seperti buah, sayuran, dan biji-bijian. Pasien juga disarankan untuk membatasi konsumsi makanan manis, serta makanan dengan kandungan lemak dan kalori tinggi.\r\nOlahragaManfaat lain dari olahraga, rutin adalah membantu mengurangi rasa tidak nyaman saat hamil, seperti sakit punggung, kram otot, pembengkakan, sembelit, dan sulit tidu,Obat-obatan. Bila diet sehat dan olahraga belum mampu menurunkan kadar gula darah.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE `relasi` (
  `id_relasi` int(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `bobot` int(1) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL,
  `cf_p` double NOT NULL,
  `cf_g` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`id_relasi`, `kd_gejala`, `kd_penyakit`, `bobot`, `mb`, `md`, `cf_p`, `cf_g`) VALUES
(240, 'g4', 'p01', 0, 0, 0, 0.6, 0),
(239, 'g12', 'p01', 0, 0, 0, 0.6, 0),
(238, 'g11', 'p01', 0, 0, 0, 0.6, 1),
(237, 'g10', 'p01', 0, 0, 0, 0.6, 0),
(236, 'g9', 'p01', 0, 0, 0, 0.6, 0.8),
(235, 'g8', 'p01', 0, 0, 0, 0.6, 0.6),
(234, 'g7', 'p01', 0, 0, 0, 0.6, 0),
(233, 'g6', 'p01', 0, 0, 0, 0.6, 0.4),
(232, 'g5', 'p01', 0, 0, 0, 0.6, 0),
(231, 'g3', 'p01', 0, 0, 0, 0.6, 0),
(230, 'g2', 'p01', 0, 0, 0, 0.6, 0),
(229, 'g1', 'p01', 0, 0, 0, 0.6, 0),
(284, 'g17', 'p02', 0, 0, 0, 0.8, 0),
(283, 'g16', 'p02', 0, 0, 0, 0.8, 0),
(282, 'g15', 'p02', 0, 0, 0, 0.8, 0),
(281, 'g14', 'p02', 0, 0, 0, 0.8, 0.8),
(280, 'g13', 'p02', 0, 0, 0, 0.8, 0.6),
(279, 'g11', 'p02', 0, 0, 0, 0.8, 1),
(289, 'g20', 'p03', 0, 0, 0, 0.6, 0.8),
(288, 'g4', 'p03', 0, 0, 0, 0.6, 0),
(287, 'g19', 'p03', 0, 0, 0, 0.6, 0.6),
(32, 'g28', 'p05', 3, 0, 0, 1, 0),
(33, 'g23', 'p05', 1, 0, 0, 1, 0),
(34, 'g29', 'p06', 5, 0, 0, 0.2, 0),
(35, 'g33', 'p07', 5, 0, 0, 0.2, 0),
(36, 'g34', 'p10', 5, 0, 0, 0.5, 0),
(37, 'g36', 'p11', 5, 0, 0, 0.2, 0),
(38, 'g37', 'p11', 3, 0, 0, 0.2, 0),
(39, 'g35', 'p09', 5, 0, 0, 0.6, 0),
(40, 'g30', 'p06', 1, 0, 0, 0.2, 0),
(41, 'g31', 'p06', 3, 0, 0, 0.2, 0),
(42, 'g32', 'p06', 3, 0, 0, 0.2, 0),
(43, 'g37', 'p09', 0, 0, 0, 0.6, 0),
(51, 'g33', 'p08', 0, 0, 0, 0.6, 0.5),
(50, 'g32', 'p08', 0, 0, 0, 0.6, 0.3),
(278, 'g3', 'p02', 0, 0, 0, 0.8, 0),
(277, 'g2', 'p02', 0, 0, 0, 0.8, 0),
(276, 'g1', 'p02', 0, 0, 0, 0.8, 0),
(286, 'g18', 'p03', 0, 0, 0, 0.6, 0.8),
(285, 'g7', 'p03', 0, 0, 0, 0.6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `noip` int(3) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `bobot` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kd_gejala`, `bobot`) VALUES
(131124, 'g13', 0),
(131125, 'g14', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `nilai_cf_penyakit`
--
ALTER TABLE `nilai_cf_penyakit`
  ADD PRIMARY KEY (`idcf`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `penyakit_solusi`
--
ALTER TABLE `penyakit_solusi`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`id_relasi`);

--
-- Indexes for table `tmp_analisa`
--
ALTER TABLE `tmp_analisa`
  ADD PRIMARY KEY (`noip`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`noip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  MODIFY `id_hasil` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `nilai_cf_penyakit`
--
ALTER TABLE `nilai_cf_penyakit`
  MODIFY `idcf` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `relasi`
--
ALTER TABLE `relasi`
  MODIFY `id_relasi` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  MODIFY `noip` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131126;COMMIT;

