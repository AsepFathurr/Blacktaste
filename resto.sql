-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 03:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE IF NOT EXISTS `bahan` (
`id_bahan` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `nama_bahan` varchar(150) NOT NULL,
  `harga_bahan` int(11) NOT NULL,
  `stock_bahan` float NOT NULL,
  `stock_minimal` int(11) NOT NULL DEFAULT '0',
  `catatan_bahan` text NOT NULL,
  `tgl_input_bahan` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `id_satuan`, `nama_bahan`, `harga_bahan`, `stock_bahan`, `stock_minimal`, `catatan_bahan`, `tgl_input_bahan`) VALUES
(24, 3, 'Ayam Potong', 35000, 40, 5, '', '2019-01-29 01:07:28'),
(25, 3, 'Ayam Kampung', 60000, 2, 2, '', '2019-01-29 01:08:26'),
(26, 3, 'Ikan Nila', 35000, 15, 3, '', '2019-01-29 01:10:03'),
(27, 3, 'Mie', 10000, 26, 4, '', '2019-01-29 01:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
`id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(150) NOT NULL,
  `telp_karyawan` char(20) NOT NULL,
  `username` char(30) NOT NULL,
  `password` char(30) NOT NULL,
  `tgl_login_terakhir` datetime NOT NULL,
  `tgl_input_karyawan` datetime NOT NULL,
  `jabatan` enum('chef','waiter','manajer','owner') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `telp_karyawan`, `username`, `password`, `tgl_login_terakhir`, `tgl_input_karyawan`, `jabatan`) VALUES
(1, 'Black taste s', '0891238', 'juna', '', '0000-00-00 00:00:00', '2018-11-17 15:36:54', 'chef'),
(8, 'ricky', '089182392', 'ricky', 'ricky', '0000-00-00 00:00:00', '2019-01-25 14:50:20', 'waiter'),
(9, 'Asep Faturahaman', '089128323', 'asep', 'asep123', '0000-00-00 00:00:00', '2018-11-09 22:27:05', 'owner'),
(10, 'Riska indah', '08410931239', 'riska', 'riska', '0000-00-00 00:00:00', '2018-11-09 22:28:22', 'manajer'),
(11, 'Arif', '0812666778899', 'arif', 'arif01', '0000-00-00 00:00:00', '2019-03-21 18:57:53', 'chef'),
(12, 'Imam Riski', '082289339554', 'blacktaste', 'imam@ananda', '0000-00-00 00:00:00', '2019-03-21 19:26:07', 'owner'),
(13, 'Ratna Sari', '085822335588', 'ratnasari', '424344', '0000-00-00 00:00:00', '2019-03-24 16:34:05', 'waiter'),
(14, 'Eka Handayani', '081233445566', 'eka3198', 'eka3198', '0000-00-00 00:00:00', '2019-03-24 17:15:53', 'waiter');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE IF NOT EXISTS `meja` (
`id_meja` int(11) NOT NULL,
  `no_meja` char(20) NOT NULL,
  `catatan_meja` varchar(150) DEFAULT NULL,
  `tgl_input_meja` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `no_meja`, `catatan_meja`, `tgl_input_meja`) VALUES
(1, '1', 'meja label A1', '2018-11-09 21:39:50'),
(2, '2', 'meja a2', '2018-11-09 21:40:00'),
(3, '3', '', '2019-01-29 19:18:26'),
(4, '4', '', '2019-01-29 19:18:32'),
(5, '5', '', '2019-01-29 19:18:37'),
(6, '6', '', '2019-01-29 19:18:48'),
(7, '7', '', '2019-01-29 19:18:53'),
(8, '8', '', '2019-01-29 19:18:58'),
(9, '9', '', '2019-01-29 19:19:04'),
(10, '10', '', '2019-01-29 19:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `id_menu_kategori` int(11) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `foto_menu` varchar(255) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `stock_menu` int(11) NOT NULL,
  `catatan_menu` text NOT NULL,
  `tgl_input_menu` datetime NOT NULL,
  `is_favorit` tinyint(1) NOT NULL,
  `is_avaible` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_menu_kategori`, `nama_menu`, `foto_menu`, `harga_menu`, `stock_menu`, `catatan_menu`, `tgl_input_menu`, `is_favorit`, `is_avaible`) VALUES
(12, 2, 'Ayam Penyet Kampung', '_1.jpg', 25000, -1, '', '2019-01-28 09:04:38', 0, 1),
(13, 2, 'Ayam penyet Potong', '_11.jpg', 20000, 9, '', '2019-01-28 09:05:07', 0, 1),
(14, 2, 'Pecel Ayam Kampung', '_12.jpg', 25000, 15, '', '2019-01-28 09:05:32', 0, 1),
(15, 2, 'Pecel Ayam Potong', '_13.jpg', 20000, 9, '', '2019-01-28 09:06:05', 0, 1),
(16, 2, 'Ijo Pedes Ayam Kampung', '_14.jpg', 25000, 6, '', '2019-01-28 09:06:51', 0, 1),
(17, 2, 'Ijo Pedes Ayam Potong', '_15.jpg', 20000, 15, '', '2019-01-28 09:07:35', 0, 1),
(18, 2, 'Ayam Bakar Kampung', '_16.jpg', 25000, 4, '', '2019-01-28 09:08:09', 0, 1),
(19, 2, 'Ayam Bakar Potong', '_17.jpg', 20000, 19, '', '2019-01-28 09:09:06', 0, 1),
(20, 2, 'Ikan Nila Bakar', '_18.jpg', 15000, 10, '', '2019-01-28 09:09:39', 0, 1),
(21, 2, 'Ikan Nila Goreng', '_19.jpg', 15000, 11, '', '2019-01-28 09:10:08', 0, 1),
(22, 2, 'Ikan Nila Asam Manis', '_110.jpg', 15000, 12, '', '2019-01-28 09:10:52', 0, 1),
(23, 2, 'Mie Goreng', '_111.jpg', 10000, 18, '', '2019-01-28 09:11:29', 0, 1),
(24, 2, 'Mie Tek Tek', '_112.jpg', 12000, 15, '', '2019-01-28 09:12:00', 0, 1),
(25, 2, 'Nasi Goreng Selimut', '_113.jpg', 10000, 15, '', '2019-01-28 09:12:23', 0, 1),
(26, 2, 'Nasi Goreng Pete', '_114.jpg', 10000, 18, '', '2019-01-28 09:12:50', 0, 1),
(27, 2, 'Nasi Goreng Teri', '_115.jpg', 10000, 19, '', '2019-01-28 09:13:18', 0, 1),
(28, 2, 'Ayam Krispy', '_116.jpg', 15000, 6, '', '2019-01-28 09:14:11', 0, 1),
(29, 2, 'Roti Bakar', '_117.jpg', 8000, 7, '', '2019-01-29 00:50:43', 0, 1),
(30, 1, 'Jus Apel', 'alpukat.jpg', 8000, 6, '', '2019-01-29 00:51:36', 0, 1),
(31, 1, 'Jus Buah Naga', 'alpukat1.jpg', 8000, 3, '', '2019-01-29 00:51:59', 0, 1),
(32, 1, 'Jus Jeruk', 'alpukat2.jpg', 8000, -2, '', '2019-01-29 00:52:25', 0, 1),
(33, 1, 'Jus Mangga', 'alpukat3.jpg', 8000, -7, '', '2019-01-29 00:52:45', 0, 1),
(34, 1, 'Jus Melon', 'alpukat4.jpg', 8000, 9, '', '2019-01-29 00:53:04', 0, 1),
(35, 1, 'Jus Semangka', 'alpukat5.jpg', 8000, 5, '', '2019-01-29 00:53:30', 0, 1),
(36, 1, 'Sop Buah', 'alpukat6.jpg', 8000, 9, '', '2019-01-29 00:53:51', 0, 1),
(37, 1, 'Es Teh', 'alpukat7.jpg', 5000, 15, '', '2019-01-29 00:54:28', 0, 1),
(38, 1, 'Es Cappucino', 'alpukat8.jpg', 8000, 27, '', '2019-01-29 00:54:46', 0, 1),
(39, 2, 'Sayur Kangkung', 'default_menu.jpg', 10000, 100, '', '2019-03-19 19:39:49', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_has_bahan`
--

CREATE TABLE IF NOT EXISTS `menu_has_bahan` (
`id_menu_has_bahan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_bahan` int(11) NOT NULL,
  `quantity` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_has_bahan`
--

INSERT INTO `menu_has_bahan` (`id_menu_has_bahan`, `id_menu`, `id_bahan`, `quantity`) VALUES
(3, 39, 24, 10),
(4, 18, 24, 1),
(5, 18, 26, 1),
(7, 28, 27, 1),
(8, 28, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_kategori`
--

CREATE TABLE IF NOT EXISTS `menu_kategori` (
`id_menu_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL,
  `catatan_kategori` varchar(255) NOT NULL,
  `tgl_input_kategori` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_kategori`
--

INSERT INTO `menu_kategori` (`id_menu_kategori`, `nama_kategori`, `catatan_kategori`, `tgl_input_kategori`) VALUES
(1, 'Minuman', 'kategori minuman', '2018-11-08 00:00:00'),
(2, 'Makanan', 'kategori makanan', '2018-11-08 01:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `pre_transaksi`
--

CREATE TABLE IF NOT EXISTS `pre_transaksi` (
`id` int(11) NOT NULL,
  `id_meja` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
`id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(150) NOT NULL,
  `catatan_satuan` varchar(150) NOT NULL,
  `tgl_input_satuan` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`, `catatan_satuan`, `tgl_input_satuan`) VALUES
(1, 'Gram', 'Grams', '2018-11-08 02:40:57'),
(2, 'Liter', 'Satuan liter untuk bahan cair seperti minyak makan dll', '2018-11-08 02:41:46'),
(3, 'Pcs', 'Satuan bijian', '2018-11-08 19:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `sistem`
--

CREATE TABLE IF NOT EXISTS `sistem` (
`id_sistem` int(11) NOT NULL,
  `nama_resto` varchar(150) NOT NULL,
  `telp_resto` char(16) NOT NULL,
  `alamat_resto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sistem`
--

INSERT INTO `sistem` (`id_sistem`, `nama_resto`, `telp_resto`, `alamat_resto`) VALUES
(1, 'Black taste', '081273433326', 'Jalan Sumber Jaya, Bukit Kemuning, Lampung Utara');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_meja` int(11) NOT NULL,
  `catatan` text,
  `tgl_transaksi` datetime NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `status_trans` enum('wait','done','cancel') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_karyawan`, `id_meja`, `catatan`, `tgl_transaksi`, `total_bayar`, `status_trans`) VALUES
(19, 9, 1, NULL, '2019-02-12 14:05:35', 112000, 'cancel'),
(22, 9, 2, NULL, '2019-03-19 18:43:00', 94000, 'done'),
(23, 9, 4, NULL, '2019-03-20 00:39:23', 33000, 'done'),
(24, 11, 5, NULL, '2019-03-21 19:01:20', 48000, 'done'),
(25, 11, 2, NULL, '2019-03-21 19:10:49', 78000, 'done'),
(26, 9, 2, NULL, '2019-03-24 14:44:07', 73000, 'done'),
(27, 9, 2, NULL, '2019-03-24 15:18:01', 45000, 'done'),
(28, 9, 1, NULL, '2019-03-24 15:19:55', 25000, 'done'),
(29, 9, 3, NULL, '2019-03-24 15:22:00', 53000, 'done'),
(30, 9, 8, NULL, '2019-03-24 15:36:15', 33000, 'done'),
(31, 13, 2, NULL, '2019-03-24 16:37:55', 33000, 'done'),
(32, 9, 2, NULL, '2019-03-24 17:36:31', 25000, 'done'),
(33, 13, 1, NULL, '2019-03-24 18:06:44', 65000, 'done'),
(34, 9, 3, NULL, '2019-03-24 18:26:46', 25000, 'done'),
(35, 9, 2, NULL, '2019-03-24 18:31:06', 60000, 'done'),
(36, 13, 1, NULL, '2019-03-24 18:57:35', 28000, 'wait'),
(37, 9, 3, NULL, '2019-03-24 19:00:10', 53000, 'wait'),
(38, 9, 6, NULL, '2019-03-24 19:40:56', 20000, 'wait');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `transaksi_detail` (
`id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `catatan_detail` varchar(250) DEFAULT NULL,
  `status` enum('wait','done','cancel','disajikan','disiapkan') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_menu`, `jumlah_beli`, `catatan_detail`, `status`) VALUES
(44, 19, 12, 1, 'haha', 'cancel'),
(45, 19, 31, 3, 'apasih', 'cancel'),
(46, 19, 28, 3, 'iya gpp', 'cancel'),
(47, 19, 37, 2, 'satunya jangan pake es', 'cancel'),
(48, 19, 33, 1, '', 'cancel'),
(49, 22, 13, 1, 'nganu', 'done'),
(50, 22, 32, 3, '', 'done'),
(51, 22, 37, 1, '', 'done'),
(52, 22, 23, 1, '', 'done'),
(53, 23, 12, 1, '', 'done'),
(54, 23, 32, 1, '', 'done'),
(55, 22, 20, 1, '', 'done'),
(56, 22, 21, 1, '', 'done'),
(57, 22, 37, 1, '', 'done'),
(58, 24, 13, 1, 'taoi', 'done'),
(59, 24, 17, 1, '', 'done'),
(60, 24, 31, 1, '', 'done'),
(61, 25, 21, 2, '', 'done'),
(62, 25, 28, 1, '', 'done'),
(63, 25, 32, 1, '', 'done'),
(64, 25, 14, 1, '', 'disiapkan'),
(65, 26, 12, 1, '', 'done'),
(66, 26, 15, 1, '', 'done'),
(67, 26, 32, 1, '', 'done'),
(68, 26, 15, 1, '', 'done'),
(69, 27, 12, 1, '', 'done'),
(70, 27, 15, 1, '', 'done'),
(71, 28, 12, 1, '', 'done'),
(72, 29, 13, 1, '', 'done'),
(73, 29, 16, 1, '', 'done'),
(74, 29, 30, 1, '', 'done'),
(75, 29, 12, 1, '', 'wait'),
(76, 30, 12, 1, 'sambel pisah', 'done'),
(77, 30, 30, 1, '', 'done'),
(78, 31, 12, 1, '', 'done'),
(79, 31, 30, 1, '', 'done'),
(80, 32, 12, 1, '', 'done'),
(81, 33, 15, 1, '', 'done'),
(82, 33, 13, 1, '', 'done'),
(83, 33, 14, 1, '', 'done'),
(84, 34, 12, 1, '', 'done'),
(85, 35, 28, 4, '', 'done'),
(86, 36, 13, 1, '', 'wait'),
(87, 36, 31, 1, '', 'wait'),
(88, 37, 13, 1, '', 'wait'),
(89, 37, 31, 1, '', 'wait'),
(90, 37, 12, 1, '', 'wait'),
(91, 38, 15, 1, '', 'wait');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vdetailtransaksi`
--
CREATE TABLE IF NOT EXISTS `vdetailtransaksi` (
`id_transaksi` int(11)
,`id_menu` int(11)
,`id_transaksi_detail` int(11)
,`nama_menu` varchar(200)
,`foto_menu` varchar(255)
,`stock_menu` int(11)
,`jumlah_beli` int(11)
,`harga_menu` int(11)
,`total` bigint(21)
,`total_bayar` int(11)
,`catatan_detail` varchar(250)
,`status` enum('wait','done','cancel','disajikan','disiapkan')
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vlisttransaksi`
--
CREATE TABLE IF NOT EXISTS `vlisttransaksi` (
`id_transaksi` int(11)
,`id_karyawan` int(11)
,`id_meja` int(11)
,`total_bayar` int(11)
,`status_trans` enum('wait','done','cancel')
,`nama_karyawan` varchar(150)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pretransaksi`
--
CREATE TABLE IF NOT EXISTS `v_pretransaksi` (
`id` int(11)
,`id_meja` int(11)
,`id_menu` int(11)
,`jumlah_beli` int(11)
,`catatan` varchar(255)
,`price` decimal(10,0)
,`nama_menu` varchar(200)
);
-- --------------------------------------------------------

--
-- Structure for view `vdetailtransaksi`
--
DROP TABLE IF EXISTS `vdetailtransaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdetailtransaksi` AS select `trans`.`id_transaksi` AS `id_transaksi`,`trans`.`id_menu` AS `id_menu`,`trans`.`id_transaksi_detail` AS `id_transaksi_detail`,`menu`.`nama_menu` AS `nama_menu`,`menu`.`foto_menu` AS `foto_menu`,`menu`.`stock_menu` AS `stock_menu`,`trans`.`jumlah_beli` AS `jumlah_beli`,`menu`.`harga_menu` AS `harga_menu`,(`menu`.`harga_menu` * `trans`.`jumlah_beli`) AS `total`,`transaksi`.`total_bayar` AS `total_bayar`,`trans`.`catatan_detail` AS `catatan_detail`,`trans`.`status` AS `status` from ((`transaksi_detail` `trans` join `menu` on((`menu`.`id_menu` = `trans`.`id_menu`))) join `transaksi` on((`trans`.`id_transaksi` = `transaksi`.`id_transaksi`)));

-- --------------------------------------------------------

--
-- Structure for view `vlisttransaksi`
--
DROP TABLE IF EXISTS `vlisttransaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vlisttransaksi` AS select `trans`.`id_transaksi` AS `id_transaksi`,`trans`.`id_karyawan` AS `id_karyawan`,`trans`.`id_meja` AS `id_meja`,`trans`.`total_bayar` AS `total_bayar`,`trans`.`status_trans` AS `status_trans`,`kar`.`nama_karyawan` AS `nama_karyawan` from (`karyawan` `kar` join `transaksi` `trans` on((`trans`.`id_karyawan` = `kar`.`id_karyawan`)));

-- --------------------------------------------------------

--
-- Structure for view `v_pretransaksi`
--
DROP TABLE IF EXISTS `v_pretransaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pretransaksi` AS select `p`.`id` AS `id`,`p`.`id_meja` AS `id_meja`,`p`.`id_menu` AS `id_menu`,`p`.`jumlah_beli` AS `jumlah_beli`,`p`.`catatan` AS `catatan`,`p`.`price` AS `price`,`m`.`nama_menu` AS `nama_menu` from (`pre_transaksi` `p` join `menu` `m` on((`p`.`id_menu` = `m`.`id_menu`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
 ADD PRIMARY KEY (`id_bahan`), ADD KEY `id_satuan` (`id_satuan`) USING BTREE;

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`id_karyawan`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
 ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`), ADD KEY `id_menu_kategori` (`id_menu_kategori`) USING BTREE;

--
-- Indexes for table `menu_has_bahan`
--
ALTER TABLE `menu_has_bahan`
 ADD PRIMARY KEY (`id_menu_has_bahan`), ADD KEY `id_menu` (`id_menu`) USING BTREE, ADD KEY `id_bahan` (`id_bahan`) USING BTREE;

--
-- Indexes for table `menu_kategori`
--
ALTER TABLE `menu_kategori`
 ADD PRIMARY KEY (`id_menu_kategori`);

--
-- Indexes for table `pre_transaksi`
--
ALTER TABLE `pre_transaksi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
 ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `sistem`
--
ALTER TABLE `sistem`
 ADD PRIMARY KEY (`id_sistem`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id_transaksi`), ADD KEY `id_karyawan_chef` (`id_karyawan`) USING BTREE, ADD KEY `id_meja` (`id_meja`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
 ADD PRIMARY KEY (`id_transaksi_detail`), ADD KEY `id_menu` (`id_menu`) USING BTREE, ADD KEY `id_transaksi` (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `menu_has_bahan`
--
ALTER TABLE `menu_has_bahan`
MODIFY `id_menu_has_bahan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `menu_kategori`
--
ALTER TABLE `menu_kategori`
MODIFY `id_menu_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pre_transaksi`
--
ALTER TABLE `pre_transaksi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sistem`
--
ALTER TABLE `sistem`
MODIFY `id_sistem` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bahan`
--
ALTER TABLE `bahan`
ADD CONSTRAINT `bahan_ibfk_1` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_menu_kategori`) REFERENCES `menu_kategori` (`id_menu_kategori`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `menu_has_bahan`
--
ALTER TABLE `menu_has_bahan`
ADD CONSTRAINT `menu_has_bahan_ibfk_2` FOREIGN KEY (`id_bahan`) REFERENCES `bahan` (`id_bahan`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `menu_has_bahan_ibfk_3` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_meja`) REFERENCES `meja` (`id_meja`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
