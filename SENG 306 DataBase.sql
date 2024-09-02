-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 May 2024, 15:25:20
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `seng306`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `assistant_manager`
--

CREATE TABLE `assistant_manager` (
  `SSN` int(11) NOT NULL,
  `signed_document_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `baker`
--

CREATE TABLE `baker` (
  `SSN` int(11) NOT NULL,
  `baked_bread_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cashier`
--

CREATE TABLE `cashier` (
  `SSN` int(11) NOT NULL,
  `sold_product_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `delicatessen`
--

CREATE TABLE `delicatessen` (
  `SSN` int(11) NOT NULL,
  `sold_meat_kgs` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee`
--

CREATE TABLE `employee` (
  `SSN` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `hours_numbers_daily` float DEFAULT NULL,
  `deneme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `employee`
--

INSERT INTO `employee` (`SSN`, `phone`, `email`, `salary`, `fname`, `lname`, `market_id`, `hours_numbers_daily`, `deneme`) VALUES
(0, 231231123, 'sdsda', 31223100, 'dsaads', 'asdsadsa', NULL, NULL, NULL),
(111111111, 111111111, 'employee1@example.com', 4000, 'Employee', 'One', 1, NULL, NULL),
(222222222, 222222222, 'employee2@example.com', 4200, 'Employee', 'Two', 1, NULL, NULL),
(333333333, 333333333, 'employee3@example.com', 4400, 'Employee', 'Three', 1, NULL, NULL),
(444444444, 444444444, 'employee4@example.com', 4600, 'Employee', 'Four', 1, NULL, NULL),
(555555555, 555555555, 'employee5@example.com', 4800, 'Employee', 'Five', 1, NULL, NULL),
(666666666, 666666666, 'employee6@example.com', 5000, 'Employee', 'Six', 1, NULL, NULL),
(777777777, 777777777, 'employee7@example.com', 5200, 'Employee', 'Seven', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `greengrocer`
--

CREATE TABLE `greengrocer` (
  `SSN` int(11) NOT NULL,
  `sorted_vegetables_fruits_rotten_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `main_location`
--

CREATE TABLE `main_location` (
  `id` int(5) NOT NULL,
  `location` varchar(100) NOT NULL,
  `employee_numbers` int(11) DEFAULT NULL,
  `manage_numbers` int(11) DEFAULT NULL,
  `main_storage_size` float NOT NULL,
  `main_storage_vehicles` int(11) DEFAULT 2,
  `main_storage_min_size` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `main_location`
--

INSERT INTO `main_location` (`id`, `location`, `employee_numbers`, `manage_numbers`, `main_storage_size`, `main_storage_vehicles`, `main_storage_min_size`) VALUES
(1, 'New York', 50, 5, 10000, 20, 8000),
(111, '3000', NULL, NULL, 2000, 2, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `manager`
--

CREATE TABLE `manager` (
  `SSN` int(11) NOT NULL,
  `meeting_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `market`
--

CREATE TABLE `market` (
  `id` int(11) NOT NULL,
  `main_location_id` int(5) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `employee_numbers` int(11) DEFAULT NULL,
  `income` float DEFAULT NULL,
  `expense` float DEFAULT NULL,
  `local_storage_section` varchar(100) DEFAULT NULL,
  `local_storage_vehicles` int(11) DEFAULT NULL,
  `local_storage_size` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `market`
--

INSERT INTO `market` (`id`, `main_location_id`, `location`, `employee_numbers`, `income`, `expense`, `local_storage_section`, `local_storage_vehicles`, `local_storage_size`) VALUES
(1, 1, 'New York', 50, 0, 0, 'Section A', 10, 5000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `phone`
--

CREATE TABLE `phone` (
  `phone_number` int(11) NOT NULL,
  `SSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_info`
--

CREATE TABLE `product_info` (
  `barkod_no` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `shelf_section` varchar(50) DEFAULT NULL,
  `main_location_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_info`
--

INSERT INTO `product_info` (`barkod_no`, `name`, `weight`, `brand`, `shelf_section`, `main_location_id`, `price`) VALUES
(1, 'Product 1', 1, 'Brand A', 'Section 1', 1, NULL),
(2, 'Product 2', 750, 'Brand B', 'Section 2', 1, NULL),
(3, 'Product 3', 500, 'Brand C', 'Section 1', 1, NULL),
(4, 'Product 4', 2, 'Brand D', 'Section 3', 1, NULL),
(5, 'Product 5', 1.5, 'Brand E', 'Section 2', 1, NULL),
(6, 'Product 6', 800, 'Brand F', 'Section 1', 1, NULL),
(7, 'Product 7', 3.5, 'Brand G', 'Section 3', 1, NULL),
(8, 'Product 8', 2.2, 'Brand H', 'Section 2', 1, NULL),
(9, 'Product 9', 1.7, 'Brand I', 'Section 1', 1, NULL),
(10, 'Product 10', 900, 'Brand J', 'Section 2', 1, NULL),
(11, 'Product 11', 600, 'Brand K', 'Section 3', 1, NULL),
(12, 'Product 12', 2.5, 'Brand L', 'Section 1', 1, NULL),
(13, 'Product 13', 1.3, 'Brand M', 'Section 2', 1, NULL),
(14, 'Product 14', 750, 'Brand N', 'Section 3', 1, NULL),
(15, 'Product 15', 2.8, 'Brand O', 'Section 1', 1, NULL),
(16, 'Product 16', 1.8, 'Brand P', 'Section 2', 1, NULL),
(17, 'Product 17', 1.2, 'Brand Q', 'Section 3', 1, NULL),
(18, 'Product 18', 2.3, 'Brand R', 'Section 1', 1, NULL),
(19, 'Product 19', 1.6, 'Brand S', 'Section 2', 1, NULL),
(20, 'Product 20', 850, 'Brand T', 'Section 3', 1, NULL),
(21, 'Product 21', 3.2, 'Brand U', 'Section 1', 1, NULL),
(22, 'Product 22', 2.1, 'Brand V', 'Section 2', 1, NULL),
(23, 'Product 23', 1.4, 'Brand W', 'Section 3', 1, NULL),
(24, 'Product 24', 2.7, 'Brand X', 'Section 1', 1, NULL),
(25, 'Product 25', 1, 'Brand Y', 'Section 2', 1, NULL),
(26, 'Product 26', 700, 'Brand Z', 'Section 3', 1, NULL),
(27, 'Product 27', 2.4, 'Brand AA', 'Section 1', 1, NULL),
(28, 'Product 28', 1.9, 'Brand BB', 'Section 2', 1, NULL),
(29, 'Product 29', 1.1, 'Brand CC', 'Section 3', 1, NULL),
(30, 'Product 30', 2, 'Brand DD', 'Section 1', 1, NULL),
(35, 'brokoli', 0.5, '', 'sebze', NULL, 12.99),
(99, 'brokoli', 0.5, '', 'sebze', NULL, 12.99),
(115, 'çikolata', 1, 'nestle', 'atıştırmalık', NULL, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_inventory`
--

CREATE TABLE `product_inventory` (
  `expiration_date` date NOT NULL,
  `product_info_barkod_no` int(11) NOT NULL,
  `production_date` date DEFAULT NULL,
  `product_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_inventory`
--

INSERT INTO `product_inventory` (`expiration_date`, `product_info_barkod_no`, `production_date`, `product_number`) VALUES
('2025-01-01', 1, '2024-01-01', 1),
('2025-02-01', 2, '2024-02-01', 2),
('2025-03-01', 3, '2024-03-01', 3),
('2025-04-01', 4, '2024-04-01', 4),
('2025-05-01', 5, '2024-05-01', 5),
('2025-06-01', 6, '2024-06-01', 6),
('2025-07-01', 7, '2024-07-01', 7),
('2025-08-01', 8, '2024-08-01', 8),
('2025-09-01', 9, '2024-09-01', 9),
('2025-10-01', 10, '2024-10-01', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rayon`
--

CREATE TABLE `rayon` (
  `SSN` int(11) NOT NULL,
  `arranged_shelves_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sellstore_product_inventory`
--

CREATE TABLE `sellstore_product_inventory` (
  `market_id` int(11) NOT NULL,
  `product_inventory_date` date NOT NULL,
  `main_location_id` int(11) NOT NULL,
  `expiration_date` date NOT NULL,
  `barkod_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `assistant_manager`
--
ALTER TABLE `assistant_manager`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `baker`
--
ALTER TABLE `baker`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `delicatessen`
--
ALTER TABLE `delicatessen`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `FK_market_id_employee` (`market_id`);

--
-- Tablo için indeksler `greengrocer`
--
ALTER TABLE `greengrocer`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `main_location`
--
ALTER TABLE `main_location`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`,`main_location_id`),
  ADD KEY `FK_main_locationID` (`main_location_id`);

--
-- Tablo için indeksler `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_number`,`SSN`),
  ADD KEY `FK_SSN_phone` (`SSN`);

--
-- Tablo için indeksler `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`barkod_no`),
  ADD KEY `FK_main_location_id` (`main_location_id`);

--
-- Tablo için indeksler `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`expiration_date`,`product_info_barkod_no`),
  ADD KEY `FK_product_info_barkod_no` (`product_info_barkod_no`);

--
-- Tablo için indeksler `rayon`
--
ALTER TABLE `rayon`
  ADD PRIMARY KEY (`SSN`);

--
-- Tablo için indeksler `sellstore_product_inventory`
--
ALTER TABLE `sellstore_product_inventory`
  ADD PRIMARY KEY (`market_id`,`product_inventory_date`),
  ADD KEY `FK_market_id_main_location_id` (`market_id`,`main_location_id`),
  ADD KEY `FK_product_inventory` (`expiration_date`,`barkod_no`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `assistant_manager`
--
ALTER TABLE `assistant_manager`
  ADD CONSTRAINT `FK_SSN2` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `baker`
--
ALTER TABLE `baker`
  ADD CONSTRAINT `FK_SSN5` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `FK_SSN3` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `delicatessen`
--
ALTER TABLE `delicatessen`
  ADD CONSTRAINT `FK_SSN7` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_market_id_employee` FOREIGN KEY (`market_id`) REFERENCES `market` (`id`);

--
-- Tablo kısıtlamaları `greengrocer`
--
ALTER TABLE `greengrocer`
  ADD CONSTRAINT `FK_SSN6` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `FK_SSN1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `market`
--
ALTER TABLE `market`
  ADD CONSTRAINT `FK_main_locationID` FOREIGN KEY (`main_location_id`) REFERENCES `main_location` (`id`);

--
-- Tablo kısıtlamaları `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `FK_SSN_phone` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `FK_main_location_id` FOREIGN KEY (`main_location_id`) REFERENCES `main_location` (`id`);

--
-- Tablo kısıtlamaları `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD CONSTRAINT `FK_product_info_barkod_no` FOREIGN KEY (`product_info_barkod_no`) REFERENCES `product_info` (`barkod_no`);

--
-- Tablo kısıtlamaları `rayon`
--
ALTER TABLE `rayon`
  ADD CONSTRAINT `FK_SSN4` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Tablo kısıtlamaları `sellstore_product_inventory`
--
ALTER TABLE `sellstore_product_inventory`
  ADD CONSTRAINT `FK_market_id_main_location_id` FOREIGN KEY (`market_id`,`main_location_id`) REFERENCES `market` (`id`, `main_location_id`),
  ADD CONSTRAINT `FK_product_inventory` FOREIGN KEY (`expiration_date`,`barkod_no`) REFERENCES `product_inventory` (`expiration_date`, `product_info_barkod_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
