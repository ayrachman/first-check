-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2017 at 08:03 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `berobat`
--

CREATE TABLE `berobat` (
  `no_transaksi` varchar(20) NOT NULL,
  `pasien_id` varchar(20) NOT NULL,
  `tanggal_berobat` date NOT NULL,
  `dokter_id` varchar(20) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `biaya_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berobat`
--

INSERT INTO `berobat` (`no_transaksi`, `pasien_id`, `tanggal_berobat`, `dokter_id`, `keluhan`, `biaya_adm`) VALUES
('TR001', 'PS001', '2017-08-11', 'DK001', 'Pendengaran', 200000),
('TR002', 'PS002', '2017-08-11', 'DK001', 'Penglihatan', 100000),
('TR003', 'PS003', '2017-08-11', 'DK002', 'Pusing', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `dokter_id` varchar(20) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `poli_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`dokter_id`, `nama_dokter`, `poli_id`) VALUES
('DK001', 'dr. Fanny AL', 'PL001'),
('DK002', 'dr. Heri Purwanto', 'PL002'),
('DK003', 'dr. Tere', 'PL003'),
('DK004', 'dr. Fredi', 'PL004'),
('DK005', 'dr. Galuh', 'PL005'),
('DK006', 'dr. Trisno', 'PL006');

-- --------------------------------------------------------

--
-- Table structure for table `login_multi`
--

CREATE TABLE `login_multi` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_multi`
--

INSERT INTO `login_multi` (`username`, `password`) VALUES
('admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `pasien_id` varchar(20) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL DEFAULT 'L',
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`pasien_id`, `nama_pasien`, `tanggal_lahir`, `jenis_kelamin`, `alamat`) VALUES
('PS001', 'Rendy', '1998-08-02', 'L', 'Jl Pribadi Unggul'),
('PS002', 'Sheila', '1996-02-07', 'P', 'Jl Wirabina'),
('PS003', 'Fero', '1999-04-15', 'L', 'Jl Kostrad'),
('PS004', 'Kirsten', '1997-06-11', 'P', 'Jl Rawa Buaya'),
('PS005', 'Kaka', '1993-01-05', 'L', 'Jl Kostrad'),
('PS006', 'Sri Rahmawati', '1992-03-26', 'P', 'Jl Pondok'),
('PS007', 'Fanny', '1998-08-01', 'P', 'Jl Monyet'),
('PS008', 'Gerard', '1995-05-17', 'L', 'Jl Panjang'),
('PS009', 'Anita', '1986-04-04', 'P', 'Jl Esa');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `poli_id` varchar(20) NOT NULL,
  `nama_poli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`poli_id`, `nama_poli`) VALUES
('PL001', 'Umum'),
('PL002', 'THT'),
('PL003', 'Kandungan'),
('PL004', 'Jantung'),
('PL005', 'Kulit'),
('PL006', 'Kelamin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berobat`
--
ALTER TABLE `berobat`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`dokter_id`);

--
-- Indexes for table `login_multi`
--
ALTER TABLE `login_multi`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`pasien_id`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`poli_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
