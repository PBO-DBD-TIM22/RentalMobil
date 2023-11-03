-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 08:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalmobil_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `ID_Mobil` char(4) NOT NULL,
  `Merek` varchar(20) NOT NULL,
  `Tahun_Produksi` char(4) NOT NULL,
  `Nomor_Polisi` varchar(10) NOT NULL,
  `Harga_Sewa` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `User_NIK` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`ID_Mobil`, `Merek`, `Tahun_Produksi`, `Nomor_Polisi`, `Harga_Sewa`, `Status`, `User_NIK`) VALUES
('M001', 'Honda', '2021', 'KT 381 XY', 200000, 'Tidak Tersedia', NULL),
('M002', 'Toyota', '2018', 'KT 2679 CC', 150000, 'Tersedia', NULL),
('M003', 'Daihatsu', '2022', 'KT 6391 YZ', 200000, 'Tersedia', NULL),
('M004', 'BMW', '2017', 'KT 3728 EX', 350000, 'Tidak Tersedia', NULL),
('M005', 'Ford', '2020', 'KT 7779 YA', 200000, 'Tidak Tersedia', NULL),
('M006', 'Nissan', '2021', 'KT 3681 TA', 250000, 'Tersedia', NULL),
('M007', 'Lamborghini', '2021', 'KT 3721 AA', 500000, 'Tersedia', NULL),
('M008', 'Mercedes Benz', '2021', 'KT 3171 DD', 200000, 'Tidak Tersedia', NULL),
('M009', 'Suzuki', '2017', 'KT 5381 HH', 150000, 'Tersedia', NULL),
('M010', 'Jaguar', '2021', 'KT 7318 RW', 450000, 'Tersedia', NULL),
('M011', 'Fortuner', '2020', 'KT 7392 RA', 400000, 'Tersedia', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `NIK` char(5) NOT NULL,
  `No_Telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`NIK`, `No_Telepon`) VALUES
('22335', '084628219123'),
('77666', '087653729192');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `NIK` int(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `No_Telp` varchar(12) NOT NULL,
  `User_NIK` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`NIK`, `Nama`, `Alamat`, `No_Telp`, `User_NIK`) VALUES
(21233, 'Rara Yahya', 'Jalan Harmonika', '08745382938', NULL),
(22001, 'Maharani', 'Jalan Pramuka No. 169 B', '08635273523', NULL),
(22002, 'Chelsea', 'Jalan Mawar Gang 10 No. 12', '087654938271', NULL),
(22007, 'Ranita', 'Jalan Naga', '08735291739', NULL),
(36255, 'Reina Sara', 'Jalan Saman', '087453829173', NULL),
(44321, 'Gusti Rahayu', 'Jalan Kusuma Bangsa', '08657482938', NULL),
(44536, 'Satya Nugraha', 'Jalan Yayasan', '087364829183', NULL),
(54637, 'Fana Tara', 'Jalan Wahid Hasyim', '08746292017', NULL),
(66754, 'Kayla Virrly', 'Jalan Nanas', '087643567897', NULL),
(72991, 'Fadil Rama', 'Jalan Sawo', '08373819132', NULL),
(99221, 'Dela Fara', 'Jalan Bengkuring', '08745372912', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `NIK` char(5) NOT NULL,
  `Gaji` int(11) NOT NULL,
  `Jam_Kerja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`NIK`, `Gaji`, `Jam_Kerja`) VALUES
('12345', 2500000, 2),
('44323', 2500000, 2),
('44535', 2500000, 2),
('54362', 3500000, 4),
('88444', 2500000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transaksimobil`
--

CREATE TABLE `transaksimobil` (
  `No_Transaksi` int(3) NOT NULL,
  `Tgl_Peminjaman` date NOT NULL,
  `Tgl_Pengembalian` date NOT NULL,
  `Durasi` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Mobil_ID_Mobil` char(4) NOT NULL,
  `Peminjam_NIK` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksimobil`
--

INSERT INTO `transaksimobil` (`No_Transaksi`, `Tgl_Peminjaman`, `Tgl_Pengembalian`, `Durasi`, `Total`, `Mobil_ID_Mobil`, `Peminjam_NIK`) VALUES
(20, '2023-11-03', '2023-11-06', 3, 900000, 'M004', 22002),
(22, '2023-11-09', '2023-11-11', 2, 400000, 'M008', 22002),
(24, '2023-11-16', '2023-11-18', 2, 400000, 'M005', 22002),
(25, '2023-11-10', '2023-11-12', 2, 700000, 'M002', 22007);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `NIK` char(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`NIK`, `Nama`, `Username`, `Password`, `Role`) VALUES
('12345', 'Tania Harry', 'taniahr', '4444', 'Staff'),
('22335', 'Nurul Vita Azizah', 'nurulvita', '1234', 'Owner'),
('44323', 'Chelsea Islan', 'chelseasl', '8888', 'Staff'),
('44535', 'Alisya Nisrina ', 'alisyans', '6666', 'Staff'),
('54362', 'Farhan Agus', 'farhangs', '8787', 'Staff'),
('77666', 'Kayla Virrly', 'kaylavirly', '7777', 'Owner'),
('88444', 'Fania Rana', 'faniay', '9999', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`ID_Mobil`),
  ADD KEY `User_NIK` (`User_NIK`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `User_NIK` (`User_NIK`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `transaksimobil`
--
ALTER TABLE `transaksimobil`
  ADD PRIMARY KEY (`No_Transaksi`),
  ADD KEY `TransaksiMobil_Mobil_FK` (`Mobil_ID_Mobil`),
  ADD KEY `fk_transaksi_peminjam` (`Peminjam_NIK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`NIK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksimobil`
--
ALTER TABLE `transaksimobil`
  MODIFY `No_Transaksi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `mobil_ibfk_1` FOREIGN KEY (`User_NIK`) REFERENCES `user` (`NIK`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `Owner_User_FK` FOREIGN KEY (`NIK`) REFERENCES `user` (`NIK`) ON DELETE CASCADE;

--
-- Constraints for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD CONSTRAINT `peminjam_ibfk_1` FOREIGN KEY (`User_NIK`) REFERENCES `user` (`NIK`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `Staff_User_FK` FOREIGN KEY (`NIK`) REFERENCES `user` (`NIK`) ON DELETE CASCADE;

--
-- Constraints for table `transaksimobil`
--
ALTER TABLE `transaksimobil`
  ADD CONSTRAINT `TransaksiMobil_Mobil_FK` FOREIGN KEY (`Mobil_ID_Mobil`) REFERENCES `mobil` (`ID_Mobil`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transaksi_peminjam` FOREIGN KEY (`Peminjam_NIK`) REFERENCES `peminjam` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
