-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2025 at 03:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokebites`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `noTelp` varchar(12) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `dataLogin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `nama`, `email`, `noTelp`, `alamat`, `dataLogin`) VALUES
('1', 'Rina Hartono', 'rina.hartono@gmail.com', '081298765432', 'Jl. Kemang No.12, Jakarta Selatan', '2025-11-05 09:30:00'),
('10', 'Farhan Iqbal', 'farhan.i@gmail.com', '081222334455', 'Jl. Pemuda No.30, Yogyakarta', '2025-11-01 21:00:00'),
('2', 'Dimas Putra', 'dimas.putra@yahoo.com', '081377766655', 'Jl. Asia Afrika No.33, Bandung', '2025-11-04 20:45:00'),
('3', 'Clara Wijaya', 'clara.wijaya@outlook.com', '085712341234', 'Jl. Darmo No.18, Surabaya', '2025-11-03 14:20:00'),
('4', 'Bagus Santoso', 'bagus.s@gmail.com', '081245678912', 'Jl. Gajah Mada No.21, Yogyakarta', '2025-11-05 08:00:00'),
('5', 'Siti Nurhaliza', 'siti.n@gmail.com', '082198765432', 'Jl. Imam Bonjol No.10, Semarang', '2025-11-04 10:30:00'),
('6', 'Rio Anggara', 'rio.a@gmail.com', '081266778899', 'Jl. Basuki Rahmat No.5, Bali', '2025-11-05 07:45:00'),
('7', 'Dewi Kartika', 'dewi.k@gmail.com', '081312345678', 'Jl. Pahlawan No.16, Jakarta Barat', '2025-11-04 12:10:00'),
('8', 'Teguh Pratama', 'teguh.p@gmail.com', '081255667788', 'Jl. Diponegoro No.2, Bandung', '2025-11-03 18:15:00'),
('9', 'Anita Wijaya', 'anita.wijaya@gmail.com', '081211223344', 'Jl. Ahmad Yani No.19, Surabaya', '2025-11-02 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `idDetail` varchar(5) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `catatanKhusus` varchar(50) DEFAULT NULL,
  `hargaTotalMenu` decimal(10,2) NOT NULL,
  `idOrder` varchar(5) DEFAULT NULL,
  `idMenu` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`idDetail`, `jumlah`, `catatanKhusus`, `hargaTotalMenu`, `idOrder`, `idMenu`) VALUES
('11', 2, 'Tanpa sambal', 110000.00, '1', '56'),
('12', 1, 'Extra wasabi', 45000.00, '2', '61'),
('13', 3, 'Tidak pakai telur', 138000.00, '3', '67'),
('14', 2, 'Pedas level 2', 90000.00, '4', '71'),
('15', 1, 'Kuah lebih banyak', 47000.00, '5', '76'),
('16', 1, 'Tanpa bawang', 44000.00, '6', '82'),
('17', 2, 'Tambahkan keju', 54000.00, '7', '87'),
('18', 1, 'Nasi sedikit', 55000.00, '8', '91'),
('19', 3, 'Minim minyak', 207000.00, '9', '96'),
('20', 2, 'Tanpa saus', 94000.00, '10', '101');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `idKurir` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `noTelp` varchar(12) DEFAULT NULL,
  `status` enum('Aktif','Nonaktif') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`idKurir`, `nama`, `noTelp`, `status`) VALUES
('1', 'Andi Prasetyo', '081212345678', 'Aktif'),
('10', 'Rizal Fahmi', '082166778899', 'Aktif'),
('2', 'Budi Santoso', '082134567890', 'Aktif'),
('3', 'Sinta Rahma', '081298765432', 'Nonaktif'),
('4', 'Hendra Wijaya', '081345678912', 'Aktif'),
('5', 'Citra Lestari', '082188877766', 'Aktif'),
('6', 'Yoga Saputra', '085755667788', 'Aktif'),
('7', 'Ratna Dewi', '081266778899', 'Nonaktif'),
('8', 'Ari Setiawan', '085722334455', 'Aktif'),
('9', 'Nina Putri', '081355667788', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idMenu` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(3) DEFAULT 0,
  `idRestaurant` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idMenu`, `nama`, `harga`, `stok`, `idRestaurant`) VALUES
('100', 'Crispy Calamari', 55000.00, 22, '19'),
('101', 'Chicken Chow Mein', 47000.00, 25, '20'),
('102', 'Beef Udon', 52000.00, 18, '20'),
('103', 'Seafood Noodle Soup', 56000.00, 20, '20'),
('104', 'Spicy Garlic Noodles', 49000.00, 22, '20'),
('105', 'Vegetable Stir Fry', 45000.00, 30, '20'),
('56', 'Salmon Poké Bowl', 55000.00, 20, '11'),
('57', 'Tuna Poké Bowl', 53000.00, 18, '11'),
('58', 'Chicken Teriyaki Bowl', 52000.00, 22, '11'),
('59', 'Beef Bulgogi Bowl', 58000.00, 15, '11'),
('60', 'Vegan Tofu Bowl', 49000.00, 25, '11'),
('61', 'California Roll', 45000.00, 25, '12'),
('62', 'Spicy Tuna Roll', 48000.00, 18, '12'),
('63', 'Dragon Roll', 52000.00, 20, '12'),
('64', 'Tempura Roll', 50000.00, 22, '12'),
('65', 'Salmon Nigiri', 42000.00, 30, '12'),
('66', 'Quinoa Power Bowl', 57000.00, 15, '13'),
('67', 'Grilled Chicken Salad', 49000.00, 25, '13'),
('68', 'Avocado Smoothie Bowl', 46000.00, 18, '13'),
('69', 'Vegan Protein Bowl', 54000.00, 20, '13'),
('70', 'Tofu Caesar Salad', 50000.00, 22, '13'),
('71', 'Nasi Goreng Spesial', 40000.00, 28, '14'),
('72', 'Ayam Sambal Matah', 42000.00, 25, '14'),
('73', 'Sate Ayam Madura', 45000.00, 20, '14'),
('74', 'Rendang Padang', 55000.00, 15, '14'),
('75', 'Mie Goreng Jawa', 38000.00, 30, '14'),
('76', 'Miso Ramen', 47000.00, 22, '15'),
('77', 'Tonkotsu Ramen', 49000.00, 18, '15'),
('78', 'Shoyu Ramen', 45000.00, 25, '15'),
('79', 'Spicy Ramen', 50000.00, 20, '15'),
('80', 'Curry Ramen', 52000.00, 15, '15'),
('81', 'Green Smoothie Bowl', 42000.00, 30, '16'),
('82', 'Kale Caesar Salad', 44000.00, 28, '16'),
('83', 'Vegan Wrap', 46000.00, 25, '16'),
('84', 'Fruit Parfait', 40000.00, 22, '16'),
('85', 'Tofu Avocado Salad', 48000.00, 20, '16'),
('86', 'Kopi Tubruk', 20000.00, 40, '17'),
('87', 'Es Kopi Susu Gula Aren', 25000.00, 35, '17'),
('88', 'Kopi Aceh Gayo', 27000.00, 28, '17'),
('89', 'Cappuccino Nusantara', 30000.00, 30, '17'),
('90', 'Teh Tarik Nusantara', 22000.00, 32, '17'),
('91', 'Classic Beef Burger', 55000.00, 25, '18'),
('92', 'Cheese Lover Burger', 60000.00, 20, '18'),
('93', 'Chicken Crispy Burger', 52000.00, 22, '18'),
('94', 'Double Patty Burger', 65000.00, 18, '18'),
('95', 'Veggie Burger', 48000.00, 26, '18'),
('96', 'Grilled Salmon', 72000.00, 15, '19'),
('97', 'Butter Garlic Shrimp', 69000.00, 18, '19'),
('98', 'Fish and Chips', 60000.00, 20, '19'),
('99', 'Seafood Fried Rice', 58000.00, 25, '19');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `idOrder` varchar(5) NOT NULL,
  `tanggalOrder` datetime NOT NULL,
  `status` enum('Menunggu','Diproses','Selesai','Dibatalkan') DEFAULT 'Menunggu',
  `idCustomer` varchar(5) DEFAULT NULL,
  `idRestaurant` varchar(5) DEFAULT NULL,
  `idKurir` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`idOrder`, `tanggalOrder`, `status`, `idCustomer`, `idRestaurant`, `idKurir`) VALUES
('1', '2025-11-05 10:00:00', 'Selesai', '1', '14', '1'),
('10', '2025-11-05 16:30:00', 'Diproses', '10', '16', '10'),
('2', '2025-11-05 11:15:00', 'Diproses', '2', '18', '2'),
('3', '2025-11-04 19:40:00', 'Menunggu', '3', '11', '3'),
('4', '2025-11-04 08:00:00', 'Selesai', '4', '20', '4'),
('5', '2025-11-05 09:30:00', 'Selesai', '5', '13', '5'),
('6', '2025-11-05 12:00:00', 'Diproses', '6', '17', '6'),
('7', '2025-11-03 14:15:00', 'Dibatalkan', '7', '15', '7'),
('8', '2025-11-05 13:45:00', 'Selesai', '8', '12', '8'),
('9', '2025-11-05 15:00:00', 'Menunggu', '9', '19', '9');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `idPayment` varchar(5) NOT NULL,
  `ewallet` varchar(15) DEFAULT NULL,
  `hargaTotalBayar` decimal(10,2) NOT NULL,
  `status` enum('Belum Bayar','Sudah Bayar') DEFAULT 'Belum Bayar',
  `idOrder` varchar(5) DEFAULT NULL,
  `idRestaurant` varchar(5) DEFAULT NULL,
  `idCustomer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`idPayment`, `ewallet`, `hargaTotalBayar`, `status`, `idOrder`, `idRestaurant`, `idCustomer`) VALUES
('1', 'GoPay', 110000.00, 'Sudah Bayar', '1', '11', '1'),
('10', 'OVO', 94000.00, 'Sudah Bayar', '10', '20', '10'),
('2', 'OVO', 45000.00, 'Sudah Bayar', '2', '12', '2'),
('3', 'ShopeePay', 138000.00, 'Belum Bayar', '3', '13', '3'),
('4', 'GoPay', 90000.00, 'Sudah Bayar', '4', '14', '4'),
('5', 'Dana', 47000.00, 'Sudah Bayar', '5', '15', '5'),
('6', 'OVO', 44000.00, 'Sudah Bayar', '6', '16', '6'),
('7', 'ShopeePay', 54000.00, 'Belum Bayar', '7', '17', '7'),
('8', 'GoPay', 55000.00, 'Sudah Bayar', '8', '18', '8'),
('9', 'Dana', 207000.00, 'Belum Bayar', '9', '19', '9');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `idRestaurant` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `noTelp` varchar(12) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`idRestaurant`, `nama`, `alamat`, `noTelp`, `rating`) VALUES
('11', 'Poké Bites Central', 'Jl. Merdeka No.10, Jakarta Pusat', '081234567890', 4.7),
('12', 'Sushi Go Express', 'Jl. Gatot Subroto No.22, Bandung', '082233445566', 4.5),
('13', 'Healthy Bowl House', 'Jl. Sudirman No.8, Surabaya', '087712345678', 4.8),
('14', 'Rice & Spice', 'Jl. Ahmad Yani No.77, Yogyakarta', '081398765432', 4.6),
('15', 'Urban Ramen', 'Jl. Diponegoro No.11, Jakarta Barat', '081244556677', 4.3),
('16', 'Green Delight', 'Jl. Braga No.19, Bandung', '085711223344', 4.9),
('17', 'Kopi Nusantara', 'Jl. Veteran No.4, Semarang', '082144556677', 4.4),
('18', 'Burger Bros', 'Jl. Malioboro No.3, Yogyakarta', '081234556678', 4.2),
('19', 'Seafood Zone', 'Jl. Pantai Kuta No.9, Bali', '081355667788', 4.8),
('20', 'Noodle Corner', 'Jl. Pemuda No.45, Surabaya', '082266778899', 4.5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`idDetail`),
  ADD KEY `idOrder` (`idOrder`),
  ADD KEY `idMenu` (`idMenu`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`idKurir`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMenu`),
  ADD KEY `idRestaurant` (`idRestaurant`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCustomer` (`idCustomer`),
  ADD KEY `idRestaurant` (`idRestaurant`),
  ADD KEY `idKurir` (`idKurir`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idPayment`),
  ADD KEY `idOrder` (`idOrder`),
  ADD KEY `idRestaurant` (`idRestaurant`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`idRestaurant`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `fk_detailorder_menu` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detailorder_order` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`idRestaurant`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_kurir` FOREIGN KEY (`idKurir`) REFERENCES `kurir` (`idKurir`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`idRestaurant`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_customer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payment_order` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payment_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`idRestaurant`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
