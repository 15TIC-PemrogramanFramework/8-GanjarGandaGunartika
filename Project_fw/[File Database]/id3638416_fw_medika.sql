-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2017 at 11:47 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3638416_fw_medika`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username_admin` varchar(20) NOT NULL,
  `password_admin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username_admin`, `password_admin`) VALUES
('ganjar', 'ganjarganda');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi_barang` varchar(255) NOT NULL,
  `harga` float NOT NULL,
  `stok_barang` int(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `deskripsi_barang`, `harga`, `stok_barang`, `gambar`) VALUES
(1, 'Nosib', 'obat menyembuhkan penyakit kulit', 10000, 43, 'NOSIB 14 GRAM SALEP KULIT 1.jpg'),
(2, 'Balsemlang', 'untuk meringankan tegang otot', 3000, 89, '71a86iYu54L._SY355_.jpg'),
(3, 'Hansaplast', 'Melingdungi luka dari debu ', 2000, 81, 'HPElastic10sAssorted76109.png'),
(4, 'Koyocabe', 'meringankan otot tegang', 4000, 89, '71IrEIhPDzL._SY355_.jpg'),
(5, 'Adem Sari', 'menyembuhkan panas dalam', 5000, 292, '289.png'),
(6, 'Komik Kuning', 'Meredakan dan Menyembuhkan Batuk', 1500, 92, '27530.jpg'),
(21, 'Komik Biru', 'meredakan flu dan batuk berdahak', 2000, 45, '1510141676.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Pekanbaru'),
(2, 'Duri'),
(4, 'Dumai'),
(5, 'Medan'),
(6, 'Rumbai');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `email_pelanggan` varchar(255) NOT NULL,
  `namaD_pelanggan` varchar(255) NOT NULL,
  `namaB_pelanggan` varchar(255) NOT NULL,
  `pass_pelanggan` varchar(255) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `id_kota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`email_pelanggan`, `namaD_pelanggan`, `namaB_pelanggan`, `pass_pelanggan`, `alamat_pelanggan`, `id_kota`) VALUES
('elok@gmail.com', 'elok', 'anugrah', 'elok123', 'jalan-jalan', 4),
('Ganjar15ti@mahasiswa.pcr.ac.id', 'Ganjar', 'Ganda', 'ganjarganda', 'JL paus Gg Nurul Yakin No D10', 1),
('Ganjarganda20@gmail.com', 'Ganjar', 'Gunartika', 'ganjarganda', 'JL paus Gg Nurul Yakin', 1),
('rachmawati@gmail.com', 'Rachmawati', 'SST', '12345', 'dimana aja', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `email_pelanggan` varchar(255) NOT NULL,
  `jumlah_beli` int(20) NOT NULL,
  `totalHarga` int(20) NOT NULL,
  `tanggal_jual` date NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id`, `email_pelanggan`, `jumlah_beli`, `totalHarga`, `tanggal_jual`, `ket`) VALUES
(1, 1, 'Ganjarganda20@gmail.com', 3, 30000, '2017-11-05', 'Sudah Bayar'),
(2, 21, 'Ganjarganda20@gmail.com', 4, 8000, '2017-11-05', 'Sudah Bayar'),
(3, 3, 'Ganjarganda20@gmail.com', 4, 8000, '2017-11-05', 'Sudah Bayar'),
(4, 2, 'rachmawati@gmail.com', 1, 3000, '2017-11-05', 'Belum Bayar'),
(5, 4, 'rachmawati@gmail.com', 3, 12000, '2017-11-05', 'Belum Bayar'),
(6, 5, 'rachmawati@gmail.com', 2, 10000, '2017-11-05', 'Belum Bayar'),
(7, 21, 'rachmawati@gmail.com', 1, 2000, '2017-11-05', 'Belum Bayar'),
(8, 1, 'Ganjarganda20@gmail.com', 1, 10000, '2017-11-08', 'Belum Bayar'),
(9, 2, 'rachmawati@gmail.com', 2, 6000, '2017-11-08', 'Sudah Bayar'),
(10, 4, 'Ganjarganda20@gmail.com', 2, 8000, '2017-11-16', 'Belum Bayar'),
(11, 1, 'Ganjarganda20@gmail.com', 2, 20000, '2017-11-16', 'Belum Bayar'),
(12, 5, 'elok@gmail.com', 2, 10000, '2017-11-17', 'Sudah Bayar'),
(13, 6, 'elok@gmail.com', 5, 7500, '2017-11-17', 'Belum Bayar');

-- --------------------------------------------------------

--
-- Table structure for table `saran_kritik`
--

CREATE TABLE `saran_kritik` (
  `id_saran` int(11) NOT NULL,
  `nama_saran` varchar(255) NOT NULL,
  `email_saran` varchar(255) NOT NULL,
  `komentar_saran` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saran_kritik`
--

INSERT INTO `saran_kritik` (`id_saran`, `nama_saran`, `email_saran`, `komentar_saran`) VALUES
(1, 'dwa', 'ganjar@gmail.com', 'test'),
(2, 'rachma', 'rachma@gmail.com', 'jelek');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`email_pelanggan`),
  ADD KEY `fk_kota` (`id_kota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `fk_id_barang` (`id`),
  ADD KEY `fk_email_pelanggan` (`email_pelanggan`);

--
-- Indexes for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  ADD PRIMARY KEY (`id_saran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `fk_kota` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_email_pelanggan` FOREIGN KEY (`email_pelanggan`) REFERENCES `pelanggan` (`email_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_barang` FOREIGN KEY (`id`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
