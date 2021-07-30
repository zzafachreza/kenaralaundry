-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Jul 2021 pada 23.47
-- Versi server: 10.3.29-MariaDB-cll-lve
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u8633137_kenaralaundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_artikel`
--

CREATE TABLE `data_artikel` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `foto` text NOT NULL,
  `judul` text NOT NULL,
  `penulis` varchar(150) NOT NULL,
  `render` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `uom` varchar(100) NOT NULL,
  `hpp` float NOT NULL,
  `harga_awal` float NOT NULL,
  `diskon` float NOT NULL,
  `harga` float NOT NULL,
  `keterangan` text NOT NULL,
  `point` float NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id`, `nama_barang`, `uom`, `hpp`, `harga_awal`, `diskon`, `harga`, `keterangan`, `point`, `tipe`, `foto`) VALUES
(1, 'ADAPTOR KLOP 2A', 'UNIT', 0, 45000, 0, 45000, 'KOSONG', 0, 'ADAPTOR', 'KOSONG'),
(2, 'AC AKARI 09D3LWI', 'UNIT', 2800000, 3080000, 0, 3080000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG'),
(3, 'AC AKARI 1/2PK 05D3LWI', 'UNIT', 2575000, 2835000, 0, 2835000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG'),
(4, 'AC DAIKIN 25CXV I/MYR32 1 PK INDOOR', 'UNIT', 3700000, 4070000, 0, 4070000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG'),
(5, 'AC DAIKIN FTV50CXV14 IN 2PK', 'UNIT', 6050000, 6475000, 0, 6475000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG'),
(6, 'AC LG 06EV4 INV OUT 1/2 PK', 'UNIT', 0, 0, 0, 0, 'KOSONG', 150, 'AIR CONDITIONER', 'KOSONG'),
(7, 'AC LG 06EV4 INVENTER INDOOR 1/2PK', 'UNIT', 3450000, 3795000, 0, 3795000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG'),
(8, 'AC LG 10SV5 INVENTER ANTI BAKTERI', 'UNIT', 4400000, 4800000, 0, 4800000, 'KOSONG', 0, 'AIR CONDITIONER', 'KOSONG'),
(9, 'AC PANASONIC INV RS5UKP 1/2PK', 'UNIT', 3750000, 4125000, 0, 4125000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG'),
(10, 'AC PANASONIC KN7WKJ LOW WATT', 'UNIT', 4000000, 4390000, 0, 4390000, 'KOSONG', 300, 'AIR CONDITIONER', 'KOSONG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_brand`
--

CREATE TABLE `data_brand` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_brand`
--

INSERT INTO `data_brand` (`id`, `nama`, `foto`) VALUES
(1, 'CUCI', 'upload/210730042042mesin cuci 2.png'),
(2, 'SETRIKA', 'upload/210730042037setrika 1.png'),
(3, 'SPREI', 'upload/2107300420542be63129640e9e404278c612b80eb5df 1.png'),
(4, 'BED COVER', 'upload/210730042102314-3147098_duvet-cover 1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_company`
--

CREATE TABLE `data_company` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tlp` varchar(100) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ig` varchar(100) DEFAULT NULL,
  `fb` varchar(100) DEFAULT NULL,
  `tw` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_company`
--

INSERT INTO `data_company` (`id`, `nama`, `alamat`, `tlp`, `foto`, `deskripsi`, `email`, `ig`, `fb`, `tw`) VALUES
(4, 'KENARA LAUNDRY', 'masukan alamat', '6282111801168', 'upload/2107300405406475e1d6-d933-4340-8061-80d2fa4d53da-removebg-preview.png', 'KENARA LAUNDRY', 'admin@gmail.com', 'https://www.instagram.com/zavalabs.com/', 'https://www.facebook.com/zavalabs.com', '2021-03-30 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_hadiah`
--

CREATE TABLE `data_hadiah` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `point` float NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_hadiah`
--

INSERT INTO `data_hadiah` (`id`, `nama`, `point`, `keterangan`, `foto`) VALUES
(1, 'GURITA', 150, 'ok', 'upload/210726111012WhatsApp Image 2021-07-22 at 20.32.05.jpeg'),
(2, 'RING HP', 150, '', 'upload/210726111034WhatsApp Image 2021-07-22 at 20.32.09.jpeg'),
(3, '5X MASKER', 150, '', 'upload/210726111045WhatsApp Image 2021-07-22 at 20.32.08 (1).jpeg'),
(4, 'HEDSET', 150, '', 'upload/210726111101WhatsApp Image 2021-07-22 at 20.32.08.jpeg'),
(5, 'HOLDER', 150, '', 'upload/210726111126WhatsApp Image 2021-07-22 at 20.32.09 (1).jpeg'),
(6, 'GANTUNGAN HP', 150, '', 'upload/210726111342WhatsApp Image 2021-07-22 at 20.32.11.jpeg'),
(7, 'SILIKON AUTOFOKUS', 150, '', 'upload/210726111218WhatsApp Image 2021-07-22 at 20.32.07.jpeg'),
(8, 'ANGICRACK', 150, '', 'upload/210726111242WhatsApp Image 2021-07-22 at 20.32.07 (1).jpeg'),
(9, 'ANTIGORES BIASA', 150, '', 'upload/210726111255WhatsApp Image 2021-07-22 at 20.32.06 (1).jpeg'),
(10, 'BAG WATERPROF', 150, '', 'upload/210726111316WhatsApp Image 2021-07-22 at 20.32.06.jpeg'),
(11, 'BOTOL', 300, '', 'upload/210726110906WhatsApp Image 2021-07-22 at 20.43.54 (1).jpeg'),
(12, 'JAM TANGAN', 300, '', 'upload/210726110851WhatsApp Image 2021-07-22 at 20.43.54.jpeg'),
(13, 'KABEL DATA', 300, '', 'upload/210726110831WhatsApp Image 2021-07-22 at 20.43.53.jpeg'),
(14, 'TONGSIS BLUTUT HITAM', 300, '', 'upload/210726110815WhatsApp Image 2021-07-22 at 20.43.52 (1).jpeg'),
(15, 'ANTIGORES FULL', 300, '', 'upload/210726110800WhatsApp Image 2021-07-22 at 20.43.52.jpeg'),
(16, 'HEDSED BRAND', 300, '', 'upload/210726110743WhatsApp Image 2021-07-22 at 20.43.51.jpeg'),
(17, 'KARTU', 300, '', 'upload/210726110658WhatsApp Image 2021-07-22 at 20.43.50.jpeg'),
(18, 'HEDSED BLUTUT', 600, '', 'upload/210726110631WhatsApp Image 2021-07-22 at 20.44.32.jpeg'),
(19, 'JAM DINDING', 750, '', 'upload/210726110603WhatsApp Image 2021-07-22 at 20.48.00.jpeg'),
(20, 'SPIKER MINI CAS', 750, '', 'upload/210726110549WhatsApp Image 2021-07-22 at 20.48.01.jpeg'),
(21, 'KIPAS CAS TANGAN', 750, '', 'upload/210726110527WhatsApp Image 2021-07-22 at 20.48.01 (1).jpeg'),
(22, 'MMC', 900, '', 'upload/210726110511WhatsApp Image 2021-07-22 at 21.06.07 (1).jpeg'),
(23, 'SPIKER CAS T5', 900, '', 'upload/210726110442WhatsApp Image 2021-07-22 at 21.06.07.jpeg'),
(24, 'HEDSED BANDO', 1050, '', 'upload/210726110349WhatsApp Image 2021-07-22 at 21.06.31.jpeg'),
(25, 'POWERBANK ', 1200, '', 'upload/210726110328WhatsApp Image 2021-07-22 at 21.44.59.jpeg'),
(26, 'TRIPOD ', 1350, '', 'upload/210726110312WhatsApp Image 2021-07-22 at 21.45.25.jpeg'),
(27, 'SPIKER CAS+MIK', 1500, '', 'upload/210726110254WhatsApp Image 2021-07-22 at 21.45.55.jpeg'),
(28, 'SETRIKA', 1500, '', 'upload/210726110210WhatsApp Image 2021-07-22 at 21.45.54.jpeg'),
(29, 'MIK BLUTUT', 1800, '', 'upload/210726110140WhatsApp Image 2021-07-22 at 21.46.20.jpeg'),
(30, 'BLENDER CAS MINI', 1800, '', 'upload/210726110124WhatsApp Image 2021-07-22 at 21.46.20 (1).jpeg'),
(31, 'KIPAS KARAKTER', 1950, '', 'upload/210726110058WhatsApp Image 2021-07-22 at 21.46.47.jpeg'),
(32, 'DISPENSER NIKO', 2100, '', 'upload/210726110035WhatsApp Image 2021-07-22 at 21.48.13.jpeg'),
(33, 'KOMPOR 1MATA', 2400, '', 'upload/210726105957WhatsApp Image 2021-07-22 at 21.48.39.jpeg'),
(34, 'KIPAS 8IN WELHOME', 2400, '', 'upload/210726105938WhatsApp Image 2021-07-22 at 21.48.40.jpeg'),
(35, 'SUPER MOP', 3000, '', 'upload/210726105918WhatsApp Image 2021-07-22 at 21.49.14.jpeg'),
(36, 'KIPAS 16 WELHOME', 3000, '', 'upload/210726105838WhatsApp Image 2021-07-22 at 21.49.15.jpeg'),
(37, 'BLENDER VIVA', 3300, '', 'upload/210726105819WhatsApp Image 2021-07-22 at 21.49.57.jpeg'),
(38, 'HP MITO SENTER', 3300, '', 'upload/210726105753WhatsApp Image 2021-07-22 at 21.49.58.jpeg'),
(39, 'MAGICCOM 0,6 NIKO', 3600, '', 'upload/210726105732WhatsApp Image 2021-07-22 at 21.50.51.jpeg'),
(40, 'MIXER MANGKOK VIVA', 3600, '', 'upload/210726105709WhatsApp Image 2021-07-22 at 21.50.52.jpeg'),
(41, 'MCM MIYAKO 607', 3900, '', 'upload/2107261127072003010-20210614102109-56846616678520486.jpg'),
(42, 'KIPAS BESI 3IN1 18IN MERK TD', 4200, '', 'upload/210726105638WhatsApp Image 2021-07-22 at 21.53.13.jpeg'),
(43, 'POLITRON PMA 9310', 16500, 'ok', 'upload/210726105602WhatsApp Image 2021-07-22 at 21.53.32.jpeg'),
(44, 'MESIN CUCI', 36000, '', 'upload/210726105535WhatsApp Image 2021-07-22 at 21.57.35.jpeg'),
(45, 'KULKAS GEA MINI', 4200, '', 'upload/210726112248geamini2.jpg'),
(46, 'LED 24 INC', 4500, '', 'upload/210726111931tv.jpg'),
(47, 'KULKAS SHARP', 36000, '', 'upload/210726111840kulkas sharp.jpg'),
(48, 'HP ANDROID', 20000, '', 'upload/210726105419WhatsApp Image 2021-07-22 at 21.54.04.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_redeem`
--

CREATE TABLE `data_redeem` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_hadiah` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `point` float NOT NULL,
  `status` varchar(200) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_redeem`
--

INSERT INTO `data_redeem` (`id`, `kode`, `tanggal`, `id_member`, `id_hadiah`, `jumlah`, `point`, `status`, `keterangan`) VALUES
(11, 'RM-210729045738', '2021-07-29', 245, 3, 1, 150, 'SELESAI', ''),
(10, 'RM-210715021042', '2021-07-15', 80, 1, 2, 400, 'SELESAI', ''),
(12, 'RM-210729045805', '2021-07-29', 245, 4, 1, 150, 'SELESAI', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `tlp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `token` text NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama_lengkap`, `email`, `password`, `tlp`, `alamat`, `token`, `point`) VALUES
(80, 'Fachreza Maulana', 'zzafachreza@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', '089653763986', 'bandung', 'eFYwKvVLSE2y_hys483iek:APA91bHNealq7-8sY1Wrj2I8bWLnz8TRpPoFT4NTskv2o-iqt2tJBqAAcHkxgkcuD_H2nyymuoVblie2cswlLnLe2hb-tosMZuEhfoTRz7fDuSHvWmzFWJcxqx85LNXzcKwxzbar-yJE', 0),
(112, 'indra', 'zavalabsofficial@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '081319456595', 'batunungggal', '', 0),
(239, 'indra p', 'indrap@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '081319456596', 'bandung', 'dAQhVS1XR7uPJNvGkS6o7g:APA91bEx2vyepPh2JQ2x_HwIwNE1YFeqDkYl52BZggaj0_dQ-C1Oc8OF9GrApo8IvT6pduLha1p3EQolxHIywvod0ndMR9tgQvfZ3cKhUpyCwJj3NLP8Mj6NIVdnR0AiXGW-7zrVKNTJ', 0),
(241, 'Dilan 1990', 'dilan1990@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '081319456585', 'Jalan Dago no 56 Bandung', 'cvJoFpNaSPGy-tcrgdEISn:APA91bHTqhz7NG3v01VEZ6RLyMpk0PxMyK_92iQ4f1BhaqNud1n5Mm4txs0GLk41Qq5qYLbnlzuhCcGhRUx0b3s3QoZB__fdbObwh5960xEQvg8-IUZCVKdALd6NwnZstlGFPk2DD4Po', 0),
(244, 'indra', 'indrabrugman@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '082319154013', 'Jalan Dago No 57 Bandung', 'flPNa4R3S8aHy7V7UGXgSK:APA91bF7mXJluD7MBQ5ToWkmgBDco8Bujy9rvR3wAVzIjQHYn8sOq_1978FJlR7pMfBwgSRa3OnzTfVDlOLjFuxN2X85F8BXJrvHGnUMxMU3TrdGVbr8XhhSCHm3xTEFQL4UG2FZYtFt', 0),
(245, 'nurwahidah', 'nurwahidaharwan1@gmail.com', '519158c41b93b875bd5286162273d0e6c17de774', '085252524466', 'jl.perintis RT 23 NO 149', 'dn1_n8JXTE2fqUttVPOVes:APA91bHHSdDZlGktFFETHNi81236TxNT9JptrQ45eLpz_mEMtfY9jI7kVAUvOQDwB22lGH2_gC7OwCD9wFTfwKbZhxLu4uhUQvm12HWISZz8dqGFODVlUE47rGuEseWVmHAd2iOiKxeB', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga` float NOT NULL,
  `qty` float NOT NULL,
  `total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id`, `kode`, `id_barang`, `harga`, `qty`, `total`) VALUES
(58, 'TR-210729045544', 125, 3080000, 1, 3080000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_header`
--

CREATE TABLE `penjualan_header` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `alamat_pemesan` text NOT NULL,
  `telepon_pemesan` text NOT NULL,
  `total` float NOT NULL,
  `point` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan_header`
--

INSERT INTO `penjualan_header` (`id`, `tanggal`, `kode`, `status`, `id_member`, `nama_pemesan`, `alamat_pemesan`, `telepon_pemesan`, `total`, `point`) VALUES
(36, '2021-07-29', 'TR-210729045544', 'SELESAI', 245, 'nurwahidah', 'jl.perintis RT 23 NO 149', '085252524466', 3080000, 300);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_keranjang`
--

CREATE TABLE `penjualan_keranjang` (
  `id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `harga` float NOT NULL,
  `qty` float NOT NULL,
  `uom` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan_keranjang`
--

INSERT INTO `penjualan_keranjang` (`id`, `id_member`, `id_barang`, `nama_barang`, `harga`, `qty`, `uom`, `total`, `foto`) VALUES
(88, 244, 57, 'SAMSUNG A01CORE 1/16', 999000, 1, 'UNIT', 999000, 'https://zavalabs.com/wandhaelektronik/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`, `nama_lengkap`) VALUES
(33, 'reza', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Admin', 'reza'),
(35, 'indra', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Admin', 'indra'),
(45, 'Indra', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Member', 'Indra'),
(46, '085252524466', '519158c41b93b875bd5286162273d0e6c17de774', 'Admin', 'Nurwahidah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_artikel`
--
ALTER TABLE `data_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_brand`
--
ALTER TABLE `data_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_company`
--
ALTER TABLE `data_company`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_hadiah`
--
ALTER TABLE `data_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_redeem`
--
ALTER TABLE `data_redeem`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan_header`
--
ALTER TABLE `penjualan_header`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan_keranjang`
--
ALTER TABLE `penjualan_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_artikel`
--
ALTER TABLE `data_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1698;

--
-- AUTO_INCREMENT untuk tabel `data_brand`
--
ALTER TABLE `data_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `data_company`
--
ALTER TABLE `data_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_hadiah`
--
ALTER TABLE `data_hadiah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `data_redeem`
--
ALTER TABLE `data_redeem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `penjualan_header`
--
ALTER TABLE `penjualan_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `penjualan_keranjang`
--
ALTER TABLE `penjualan_keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
