-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 03:43 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldw`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_area`
--

CREATE TABLE `dim_area` (
  `areaName` varchar(100) DEFAULT NULL,
  `greaterareakey` int(11) DEFAULT NULL,
  `areakey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_area`
--

INSERT INTO `dim_area` (`areaName`, `greaterareakey`, `areakey`) VALUES
('Ang Mo Kio New Town', 3, 1),
('Bedok New Town', 4, 2),
('Bedok Ville', 4, 3),
('Boon Lay', 5, 4),
('Bukit Panjang Estate', 5, 5),
('Bukit Panjang New Town', 5, 6),
('Bukit Sembawang Estate', 1, 7),
('Chia Keng', 1, 8),
('Choa Chu Kang New Town', 5, 9),
('Chong Pang', 3, 10),
('Jalan Kayu', 1, 11),
('Jurong Town', 5, 12),
('Jurong West', 5, 13),
('Kam Wak Hassan', 3, 14),
('Kampong Amoy Quee', 1, 15),
('Kampong Beremban', 2, 16),
('Kampong Bukit Panjang', 5, 17),
('Kampong Chai Chee', 4, 18),
('Kampong Cutforth', 5, 19),
('Kampong Java Teban', 5, 20),
('Kampong Kebun Baharu', 1, 21),
('Kampong Kopit', 5, 22),
('Kampong Ladang', 1, 23),
('Kampong Lew Lian', 1, 24),
('Kampong Loyang', 4, 25),
('Kampong Pachitan', 4, 26),
('Kampong Pasir Ris', 2, 27),
('Kampong Pengkalan Kundor', 3, 28),
('Kampong Pengkalan Petai', 3, 29),
('Kampong Pinang', 1, 30),
('Kampong Punggol', 2, 31),
('Kampong Reteh', 1, 32),
('Kampong Serangoon Kechil', 2, 33),
('Kampong Sireh', 1, 34),
('Kampong Siren', 1, 35),
('Kampong Sungai Blukar', 2, 36),
('Kampong Sungai Jurong', 5, 37),
('Kampong Sungai Pandan', 5, 38),
('Kampong Sungai Tengah', 1, 39),
('Kampong Teban', 2, 40),
('Kampong Tebing Terjun', 5, 41),
('Kampong Tongkang Pechah', 1, 42),
('Kampong Ubi', 4, 43),
('Kampong Ulu Jurong', 5, 44),
('Kampong Wak Hassan', 3, 45),
('Kangkar', 2, 46),
('Keat Hong Village', 5, 47),
('Marsiling', 3, 48),
('Marsiling Estate', 3, 49),
('Matilda Estate', 1, 50),
('Mok Peng Hiang Estate', 3, 51),
('Nee Soon Estate', 3, 52),
('Ong Lee', 5, 53),
('Punggol', 1, 54),
('Saga', 5, 55),
('Saint Michaels Estate', 1, 56),
('Sarang Rimau', 5, 57),
('Seletar Hills Estate', 1, 58),
('Sembawang', 3, 59),
('Serangoon', 1, 60),
('Singapore United Plantation', 1, 61),
('Somapah Serangoon', 1, 62),
('Springleaf Park', 3, 63),
('Sungai Simpang', 3, 64),
('Tanjong Pagar', 5, 65),
('Tay Keng Loon Estate', 3, 66),
('Teachers Housing Estate', 3, 67),
('Ulu Bedok', 4, 68),
('West Coast Village', 5, 69),
('Woodlands New Town', 3, 70),
('Yew Tee', 5, 71),
('Yio Chu Kang', 3, 72),
('Yio Chu Kang Estate', 3, 73),
('Yishun New Town', 3, 74);

-- --------------------------------------------------------

--
-- Table structure for table `dim_country`
--

CREATE TABLE `dim_country` (
  `countryName` varchar(100) DEFAULT NULL,
  `countrykey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_country`
--

INSERT INTO `dim_country` (`countryName`, `countrykey`) VALUES
('Australia', 1),
('Brunei Darussalam', 2),
('Hong Kong', 3),
('Indonesia', 4),
('Laos', 5),
('Malaysia', 6),
('Singapore', 7),
('Thailand', 8),
('Vietnam', 9);

-- --------------------------------------------------------

--
-- Table structure for table `dim_departement`
--

CREATE TABLE `dim_departement` (
  `departementkey` bigint(20) NOT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `departmentName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_departement`
--

INSERT INTO `dim_departement` (`departementkey`, `departmentID`, `departmentName`) VALUES
(1, 1, 'General Medicine'),
(2, 2, 'Surgery'),
(3, 3, 'Psychiatry'),
(4, 4, 'Radiology'),
(5, 5, 'Mother Child'),
(6, 6, 'Intensive Care Unit'),
(7, 7, 'Pathology'),
(8, 8, 'Physical Therapy'),
(9, 9, 'Neurology'),
(10, 10, 'Cardiology'),
(11, 11, 'Urology'),
(12, 12, 'Dermatology');

-- --------------------------------------------------------

--
-- Table structure for table `dim_greaterarea`
--

CREATE TABLE `dim_greaterarea` (
  `greaterArea` varchar(100) DEFAULT NULL,
  `countrykey` int(11) DEFAULT NULL,
  `greaterareakey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_greaterarea`
--

INSERT INTO `dim_greaterarea` (`greaterArea`, `countrykey`, `greaterareakey`) VALUES
('Central Singapore', 7, 1),
('North East', 7, 2),
('North West', 7, 3),
('South East', 7, 4),
('South West', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dim_nurse`
--

CREATE TABLE `dim_nurse` (
  `nurseID` int(11) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `Position` varchar(30) DEFAULT NULL,
  `Nursekey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_nurse`
--

INSERT INTO `dim_nurse` (`nurseID`, `name`, `Position`, `Nursekey`) VALUES
(101, 'Carla Espinosa', 'Head Nurse', 1),
(102, 'Laverne Roberts', 'Nurse', 2),
(103, 'Paul Flowers', 'Nurse', 3),
(104, 'Lunea Frazier', 'Head Nurse', 4),
(105, 'Jessica Dorsey', 'Nurse', 5),
(106, 'Hoyt Marquez', 'Nurse', 6),
(107, 'Hadassah Dickson', 'Nurse', 7),
(108, 'Rafael Black', 'Nurse', 8),
(109, 'Kennan Hurley', 'Nurse', 9),
(110, 'Ulric Stout', 'Nurse', 10),
(111, 'Idona Dodson', 'Nurse', 11),
(112, 'Kamal Reynolds', 'Nurse', 12),
(113, 'Wayne Wiley', 'Nurse', 13),
(114, 'Channing Leblanc', 'Head Nurse', 14),
(115, 'Knox Livingston', 'Nurse', 15),
(116, 'Melvin Larson', 'Head Nurse', 16),
(117, 'Emerald England', 'Head Nurse', 17),
(118, 'Luke Lloyd', 'Nurse', 18),
(119, 'Jorden Simpson', 'Nurse', 19),
(120, 'Ahmed Sweet', 'Nurse', 20);

-- --------------------------------------------------------

--
-- Table structure for table `dim_patient`
--

CREATE TABLE `dim_patient` (
  `patientID` varchar(100) DEFAULT NULL,
  `patientName` varchar(100) DEFAULT NULL,
  `areakey` int(11) DEFAULT NULL,
  `countrykey` int(11) DEFAULT NULL,
  `patientkey` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_patient`
--

INSERT INTO `dim_patient` (`patientID`, `patientName`, `areakey`, `countrykey`, `patientkey`, `version`, `date_from`, `date_to`) VALUES
(NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
('100000001', 'John Smith', NULL, 4, 2, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000002', 'Grace Ritchie', NULL, 3, 3, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000003', 'Random J. Patient', 71, 7, 4, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000004', 'Dennis Doe', 12, 7, 5, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000005', 'Damian Hays', NULL, 4, 6, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000006', 'Karly Jackson', 20, 7, 7, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000007', 'Kato Luna', 12, 7, 8, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000008', 'Xandra Skinner', 20, 7, 9, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000009', 'Anthony Moses', 50, 7, 10, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000010', 'Daryl Decker', 49, 7, 11, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000011', 'Zelda Macias', 49, 7, 12, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000012', 'Guy Cash', NULL, 4, 13, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000013', 'Dolan Hamilton', NULL, 4, 14, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000014', 'Thane Byers', 50, 7, 15, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000015', 'Boris Howard', NULL, 6, 16, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000016', 'Elizabeth Chan', 73, 7, 17, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000017', 'Jelani Snow', 20, 7, 18, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000018', 'Scott Levy', NULL, 6, 19, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000019', 'Maris Tillman', 73, 7, 20, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000020', 'Mara Walton', NULL, 6, 21, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000021', 'Jackson Beck', 5, 7, 22, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000022', 'Darius Cooper', 59, 7, 23, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000023', 'Dillon Hess', 74, 6, 24, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000024', 'Daniel Chambers', 5, 7, 25, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000025', 'Stephanie Mueller', 55, 7, 26, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000026', 'Garrett Massey', 67, 7, 27, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000027', 'Gay Olson', NULL, 4, 28, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000028', 'Xaviera Noble', 16, 7, 29, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000029', 'Montana Weaver', NULL, 4, 30, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000030', 'Clarke Pennington', NULL, 2, 31, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000031', 'Roanna Gentry', NULL, 2, 32, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000032', 'Lev Schneider', NULL, 6, 33, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000033', 'Troy Underwood', 12, 7, 34, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000034', 'Zelda Sherman', 25, 7, 35, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000035', 'Jesse Kerr', NULL, 8, 36, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000036', 'Tashya Martin', 63, 7, 37, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000037', 'Dominic Moran', 25, 7, 38, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000038', 'Colorado Massey', 31, 7, 39, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000039', 'Jamal Dickson', 31, 7, 40, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000040', 'Lynn Juarez', 70, 7, 41, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000041', 'Austin Lindsey', 59, 7, 42, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000042', 'Vivien Melendez', 74, 8, 43, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000043', 'Merritt Howell', NULL, 8, 44, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000044', 'Tatum Livingston', 70, 7, 45, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000045', 'Tashya Mendez', 69, 7, 46, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000046', 'Naomi Conway', 70, 7, 47, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000047', 'Clark Giles', 63, 7, 48, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000048', 'Jocelyn Rollins', NULL, 9, 49, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000049', 'Carl Prince', 69, 7, 50, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000050', 'Keane Mckinney', NULL, 6, 51, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000051', 'Adrienne Foley', NULL, 9, 52, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000052', 'Noelle Mcclure', 69, 7, 53, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000053', 'Montana Kaufman', NULL, 9, 54, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000054', 'Hamish Farley', NULL, 2, 55, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000055', 'Mikayla Hebert', 63, 7, 56, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000056', 'Winter Peck', 4, 7, 57, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000057', 'Sopoline Clayton', 63, 7, 58, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000058', 'Amir Madden', 60, 7, 59, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000059', 'Glenna Contreras', 60, 7, 60, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000060', 'Nasim Carroll', NULL, 4, 61, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000061', 'Mariko Kirkland', NULL, 5, 62, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000062', 'Timon Holmes', 69, 7, 63, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000063', 'Palmer Quinn', 4, 7, 64, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000064', 'Alma Wiggins', 58, 7, 65, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000065', 'Quincy Smith', NULL, 5, 66, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000066', 'Azalia Alston', 4, 7, 67, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000067', 'Lareina Ratliff', 52, 7, 68, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000068', 'Adena Whitaker', 52, 7, 69, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000069', 'Autumn Mcfadden', 65, 7, 70, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000070', 'Otto Walker', 65, 7, 71, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000071', 'Illana Duke', NULL, 1, 72, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000072', 'Anne Larsen', NULL, 1, 73, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000073', 'Burke Bradshaw', NULL, 4, 74, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000074', 'Cameron Clay', 65, 7, 75, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000075', 'Myles Lott', 65, 7, 76, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000076', 'Duncan Huber', 74, 7, 77, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000077', 'Dylan Brown', 53, 7, 78, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000078', 'Amal Velasquez', 53, 7, 79, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000079', 'Kyla Ray', NULL, 6, 80, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000080', 'Gay Beard', 19, 7, 81, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000081', 'Xerxes Browning', 14, 7, 82, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000082', 'Asher Stanley', NULL, 6, 83, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000083', 'Neve Harrison', NULL, 6, 84, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000084', 'Craig Tran', 74, 7, 85, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000085', 'Reuben Burgess', 19, 7, 86, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000086', 'Brianna Abbott', 74, 7, 87, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000087', 'Clio Stanton', NULL, 6, 88, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000088', 'George Morales', NULL, 8, 89, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000089', 'Meghan Stafford', 7, 7, 90, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000090', 'Preston Clemons', NULL, 4, 91, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000091', 'Porter Fowler', NULL, 8, 92, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000092', 'Judith Newton', 14, 7, 93, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000093', 'Linda Hogan', 51, 7, 94, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000094', 'Jane Adams', NULL, 4, 95, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000095', 'Jane Daniels', 58, 7, 96, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000096', 'Gisela Middleton', 7, 7, 97, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000097', 'Leilani Cortez', 51, 7, 98, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000098', 'Indira Hickman', NULL, 4, 99, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000099', 'Hedley Gutierrez', NULL, 4, 100, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000100', 'Jacob Flores', 47, 7, 101, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000101', 'Troy Joseph', 71, 7, 102, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000102', 'Murphy Watts', NULL, 4, 103, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000103', 'Clinton Foreman', NULL, 4, 104, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
('100000104', 'Jillian Wood', 61, 7, 105, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `dim_perawatan`
--

CREATE TABLE `dim_perawatan` (
  `perawatanID` varchar(20) DEFAULT NULL,
  `namaPerawatan` varchar(20) DEFAULT NULL,
  `perawtaankey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_perawatan`
--

INSERT INTO `dim_perawatan` (`perawatanID`, `namaPerawatan`, `perawtaankey`) VALUES
('UD', 'Undergoes', 1),
('AP', 'Appointment', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dim_physician`
--

CREATE TABLE `dim_physician` (
  `physicianID` int(11) DEFAULT NULL,
  `departementkey` bigint(20) DEFAULT NULL,
  `areakey` bigint(20) DEFAULT NULL,
  `physicianName` text DEFAULT NULL,
  `physiciankey` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_physician`
--

INSERT INTO `dim_physician` (`physicianID`, `departementkey`, `areakey`, `physicianName`, `physiciankey`, `version`, `date_from`, `date_to`) VALUES
(NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(999999992, 5, 31, 'Adelaide Clark', 2, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222223, 10, 24, 'Aldus Robinson', 3, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777773, 3, 27, 'Alfred Mitchell', 4, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(555555555, 1, 33, 'Bob Kelso', 5, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999993, 9, 54, 'Brianna Myers', 6, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222287, 4, 16, 'Carla May', 7, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(333333333, 1, 11, 'Christopher Turk', 8, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222204, 7, 13, 'Diana Peterson', 9, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222276, 6, 8, 'Dominik Johnsonn', 10, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222222, 1, 5, 'Elliot Reid', 11, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777776, 11, 19, 'Frederick Walker', 12, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222224, 5, 3, 'Jack Baker', 13, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222226, NULL, 3, 'James Perkins', 14, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777778, 4, 51, 'Jenny Clark', 15, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(111111111, 1, 54, 'John Dorian', 16, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777771, 3, 69, 'John Evans', 17, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777777, 2, 8, 'John Wen', 18, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999998, 7, 1, 'Kate Martin', 19, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(888888888, 1, 63, 'Keith Dudemeister', 20, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999999, 3, 63, 'Molly Clock', 21, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222244, 6, 62, 'Pablo del Sol', 22, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(444444444, 1, 7, 'Percival Cox', 23, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999995, 6, 27, 'Rafael Cunningham', 24, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222209, 9, 4, 'Raj Dewata', 25, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777774, 5, 37, 'Robert Walker', 26, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222221, 10, 17, 'Ryan Tucker', 27, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222244, 4, 48, 'Sally Doe', 28, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999994, 8, 1, 'Sarah Bailey', 29, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(222222225, 6, 34, 'Sawyer Douglas', 30, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777775, 8, 69, 'Stuart Hill', 31, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(666666666, 2, 19, 'Todd Quinlan', 32, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777779, 12, 3, 'Tony Robinson', 33, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999998, NULL, 1, 'Victor Miller', 34, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(999999996, 8, 27, 'Victoria Roberts', 35, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(777777772, 10, 69, 'Wilson Harris', 36, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `dim_procedure`
--

CREATE TABLE `dim_procedure` (
  `procedureID` int(11) DEFAULT NULL,
  `procedureName` varchar(100) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `procedurekey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_procedure`
--

INSERT INTO `dim_procedure` (`procedureID`, `procedureName`, `cost`, `procedurekey`) VALUES
(1, 'Reverse Rhinopodoplasty', 15000, 1),
(2, 'Obtuse Pyloric Recombobulation', 3750, 2),
(3, 'Folded Demiophtalmectomy', 4500, 3),
(4, 'Complete Walletectomy', 10000, 4),
(5, 'Obfuscated Dermogastrotomy', 4899500, 5),
(6, 'Reversible Pancreomyoplasty', 5600250, 6),
(7, 'Follicular Demiectomy', 250, 7),
(8, 'Mother and Child C-Section', 65000, 8),
(9, 'Mother and Child IVF', 235000, 9),
(10, 'Mother and Child Stem Cell', 135000, 10),
(11, 'Radiology CT Scan', 85000, 11),
(12, 'Radiology PET Scan', 15000, 12),
(13, 'Radiology MRI', 17000, 13),
(14, 'ICU Central Venous Lines', 8000, 14),
(15, 'ICU Endotracheal Intubation', 7500, 15),
(16, 'ICU Endotracheal Intubation', 7500, 16),
(17, 'Pathology Procedure 1', 6700, 17),
(18, 'Pathology Procedure 2', 8900, 18),
(19, 'Pathology Procedure 3', 9900, 19),
(20, 'PT Mobilization', 600, 20),
(21, 'PT Therapeutic Massage', 800, 21),
(22, 'PT Myofascial Release', 950, 22),
(23, 'PT Postural Training', 1950, 23),
(24, 'PT Neuromuscular reeducation', 2550, 24),
(25, 'Neuro Electromyography', 2550, 25),
(26, 'Neuro Tensilon Test', 550, 26),
(27, 'Neuro Electroencephalogram', 950, 27),
(28, 'Neuro Sleep Study', 750, 28),
(29, 'Cardio Coronary angioplasty', 1550, 29),
(30, 'Cardio Thrombolytic therapy', 5550, 30),
(31, 'Cardio Artificial pacemaker su', 7550, 31),
(32, 'Cardio Heart valve surgery', 10550, 32),
(33, 'Urology Nephrectomy', 3500, 33),
(34, 'Urology Pyeloplasty', 5500, 34),
(35, 'Urology Ureteral reimplants', 7500, 35),
(36, 'Derma Photodynamic therapy', 5500, 36),
(37, 'Derma Mohs micrographic surger', 6500, 37),
(38, 'Derma Cryosurgery', 2500, 38),
(39, 'Derma Topical chemotherapy', 10500, 39);

-- --------------------------------------------------------

--
-- Table structure for table `dim_time`
--

CREATE TABLE `dim_time` (
  `date` date DEFAULT NULL,
  `namaBulan` tinytext DEFAULT NULL,
  `nomorBulan` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `TimeKey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_time`
--

INSERT INTO `dim_time` (`date`, `namaBulan`, `nomorBulan`, `quarter`, `tahun`, `TimeKey`) VALUES
('2019-08-01', 'August', 8, 3, 2019, 1),
('2019-08-02', 'August', 8, 3, 2019, 2),
('2019-08-03', 'August', 8, 3, 2019, 3),
('2019-08-04', 'August', 8, 3, 2019, 4),
('2019-08-05', 'August', 8, 3, 2019, 5),
('2019-08-06', 'August', 8, 3, 2019, 6),
('2019-08-07', 'August', 8, 3, 2019, 7),
('2019-08-08', 'August', 8, 3, 2019, 8),
('2019-08-09', 'August', 8, 3, 2019, 9),
('2019-08-10', 'August', 8, 3, 2019, 10),
('2019-08-11', 'August', 8, 3, 2019, 11),
('2019-08-12', 'August', 8, 3, 2019, 12),
('2019-08-13', 'August', 8, 3, 2019, 13),
('2019-08-14', 'August', 8, 3, 2019, 14),
('2019-08-15', 'August', 8, 3, 2019, 15),
('2019-08-16', 'August', 8, 3, 2019, 16),
('2019-08-17', 'August', 8, 3, 2019, 17),
('2019-08-18', 'August', 8, 3, 2019, 18),
('2019-08-19', 'August', 8, 3, 2019, 19),
('2019-08-20', 'August', 8, 3, 2019, 20),
('2019-08-21', 'August', 8, 3, 2019, 21),
('2019-08-22', 'August', 8, 3, 2019, 22),
('2019-08-23', 'August', 8, 3, 2019, 23),
('2019-08-24', 'August', 8, 3, 2019, 24),
('2019-08-25', 'August', 8, 3, 2019, 25),
('2019-08-26', 'August', 8, 3, 2019, 26),
('2019-08-27', 'August', 8, 3, 2019, 27),
('2019-08-28', 'August', 8, 3, 2019, 28),
('2019-08-29', 'August', 8, 3, 2019, 29),
('2019-08-30', 'August', 8, 3, 2019, 30),
('2019-08-31', 'August', 8, 3, 2019, 31),
('2019-09-01', 'September', 9, 3, 2019, 32),
('2019-09-02', 'September', 9, 3, 2019, 33),
('2019-09-03', 'September', 9, 3, 2019, 34),
('2019-09-04', 'September', 9, 3, 2019, 35),
('2019-09-05', 'September', 9, 3, 2019, 36),
('2019-09-06', 'September', 9, 3, 2019, 37),
('2019-09-07', 'September', 9, 3, 2019, 38),
('2019-09-08', 'September', 9, 3, 2019, 39),
('2019-09-09', 'September', 9, 3, 2019, 40),
('2019-09-10', 'September', 9, 3, 2019, 41),
('2019-09-11', 'September', 9, 3, 2019, 42),
('2019-09-12', 'September', 9, 3, 2019, 43),
('2019-09-13', 'September', 9, 3, 2019, 44),
('2019-09-14', 'September', 9, 3, 2019, 45),
('2019-09-15', 'September', 9, 3, 2019, 46),
('2019-09-16', 'September', 9, 3, 2019, 47),
('2019-09-17', 'September', 9, 3, 2019, 48),
('2019-09-18', 'September', 9, 3, 2019, 49),
('2019-09-19', 'September', 9, 3, 2019, 50),
('2019-09-20', 'September', 9, 3, 2019, 51),
('2019-09-21', 'September', 9, 3, 2019, 52),
('2019-09-22', 'September', 9, 3, 2019, 53),
('2019-09-23', 'September', 9, 3, 2019, 54),
('2019-09-24', 'September', 9, 3, 2019, 55),
('2019-09-25', 'September', 9, 3, 2019, 56),
('2019-09-26', 'September', 9, 3, 2019, 57),
('2019-09-27', 'September', 9, 3, 2019, 58),
('2019-09-28', 'September', 9, 3, 2019, 59),
('2019-09-29', 'September', 9, 3, 2019, 60),
('2019-09-30', 'September', 9, 3, 2019, 61),
('2019-10-01', 'October', 10, 4, 2019, 62),
('2019-10-02', 'October', 10, 4, 2019, 63),
('2019-10-03', 'October', 10, 4, 2019, 64),
('2019-10-04', 'October', 10, 4, 2019, 65),
('2019-10-05', 'October', 10, 4, 2019, 66),
('2019-10-06', 'October', 10, 4, 2019, 67),
('2019-10-07', 'October', 10, 4, 2019, 68),
('2019-10-08', 'October', 10, 4, 2019, 69),
('2019-10-09', 'October', 10, 4, 2019, 70),
('2019-10-10', 'October', 10, 4, 2019, 71),
('2019-10-11', 'October', 10, 4, 2019, 72),
('2019-10-12', 'October', 10, 4, 2019, 73),
('2019-10-13', 'October', 10, 4, 2019, 74),
('2019-10-14', 'October', 10, 4, 2019, 75),
('2019-10-15', 'October', 10, 4, 2019, 76),
('2019-10-16', 'October', 10, 4, 2019, 77),
('2019-10-17', 'October', 10, 4, 2019, 78),
('2019-10-18', 'October', 10, 4, 2019, 79),
('2019-10-19', 'October', 10, 4, 2019, 80),
('2019-10-20', 'October', 10, 4, 2019, 81),
('2019-10-21', 'October', 10, 4, 2019, 82),
('2019-10-22', 'October', 10, 4, 2019, 83),
('2019-10-23', 'October', 10, 4, 2019, 84),
('2019-10-24', 'October', 10, 4, 2019, 85),
('2019-10-25', 'October', 10, 4, 2019, 86),
('2019-10-26', 'October', 10, 4, 2019, 87),
('2019-10-27', 'October', 10, 4, 2019, 88),
('2019-10-28', 'October', 10, 4, 2019, 89),
('2019-10-29', 'October', 10, 4, 2019, 90),
('2019-10-30', 'October', 10, 4, 2019, 91),
('2019-10-31', 'October', 10, 4, 2019, 92),
('2019-11-01', 'November', 11, 4, 2019, 93),
('2019-11-02', 'November', 11, 4, 2019, 94),
('2019-11-03', 'November', 11, 4, 2019, 95),
('2019-11-04', 'November', 11, 4, 2019, 96),
('2019-11-05', 'November', 11, 4, 2019, 97),
('2019-11-06', 'November', 11, 4, 2019, 98),
('2019-11-07', 'November', 11, 4, 2019, 99),
('2019-11-08', 'November', 11, 4, 2019, 100),
('2019-11-09', 'November', 11, 4, 2019, 101),
('2019-11-10', 'November', 11, 4, 2019, 102),
('2019-11-11', 'November', 11, 4, 2019, 103),
('2019-11-12', 'November', 11, 4, 2019, 104),
('2019-11-13', 'November', 11, 4, 2019, 105),
('2019-11-14', 'November', 11, 4, 2019, 106),
('2019-11-15', 'November', 11, 4, 2019, 107),
('2019-11-16', 'November', 11, 4, 2019, 108),
('2019-11-17', 'November', 11, 4, 2019, 109),
('2019-11-18', 'November', 11, 4, 2019, 110),
('2019-11-19', 'November', 11, 4, 2019, 111),
('2019-11-20', 'November', 11, 4, 2019, 112),
('2019-11-21', 'November', 11, 4, 2019, 113),
('2019-11-22', 'November', 11, 4, 2019, 114),
('2019-11-23', 'November', 11, 4, 2019, 115),
('2019-11-24', 'November', 11, 4, 2019, 116),
('2019-11-25', 'November', 11, 4, 2019, 117),
('2019-11-26', 'November', 11, 4, 2019, 118),
('2019-11-27', 'November', 11, 4, 2019, 119),
('2019-11-28', 'November', 11, 4, 2019, 120),
('2019-11-29', 'November', 11, 4, 2019, 121),
('2019-11-30', 'November', 11, 4, 2019, 122),
('2019-12-01', 'December', 12, 4, 2019, 123),
('2019-12-02', 'December', 12, 4, 2019, 124),
('2019-12-03', 'December', 12, 4, 2019, 125),
('2019-12-04', 'December', 12, 4, 2019, 126),
('2019-12-05', 'December', 12, 4, 2019, 127),
('2019-12-06', 'December', 12, 4, 2019, 128),
('2019-12-07', 'December', 12, 4, 2019, 129),
('2019-12-08', 'December', 12, 4, 2019, 130),
('2019-12-09', 'December', 12, 4, 2019, 131),
('2019-12-10', 'December', 12, 4, 2019, 132),
('2019-12-11', 'December', 12, 4, 2019, 133),
('2019-12-12', 'December', 12, 4, 2019, 134),
('2019-12-13', 'December', 12, 4, 2019, 135),
('2019-12-14', 'December', 12, 4, 2019, 136),
('2019-12-15', 'December', 12, 4, 2019, 137),
('2019-12-16', 'December', 12, 4, 2019, 138),
('2019-12-17', 'December', 12, 4, 2019, 139),
('2019-12-18', 'December', 12, 4, 2019, 140),
('2019-12-19', 'December', 12, 4, 2019, 141),
('2019-12-20', 'December', 12, 4, 2019, 142),
('2019-12-21', 'December', 12, 4, 2019, 143),
('2019-12-22', 'December', 12, 4, 2019, 144),
('2019-12-23', 'December', 12, 4, 2019, 145),
('2019-12-24', 'December', 12, 4, 2019, 146),
('2019-12-25', 'December', 12, 4, 2019, 147),
('2019-12-26', 'December', 12, 4, 2019, 148),
('2019-12-27', 'December', 12, 4, 2019, 149),
('2019-12-28', 'December', 12, 4, 2019, 150),
('2019-12-29', 'December', 12, 4, 2019, 151),
('2019-12-30', 'December', 12, 4, 2019, 152),
('2019-12-31', 'December', 12, 4, 2019, 153),
('2020-01-01', 'January', 1, 1, 2020, 154),
('2020-01-02', 'January', 1, 1, 2020, 155),
('2020-01-03', 'January', 1, 1, 2020, 156),
('2020-01-04', 'January', 1, 1, 2020, 157),
('2020-01-05', 'January', 1, 1, 2020, 158),
('2020-01-06', 'January', 1, 1, 2020, 159),
('2020-01-07', 'January', 1, 1, 2020, 160),
('2020-01-08', 'January', 1, 1, 2020, 161),
('2020-01-09', 'January', 1, 1, 2020, 162),
('2020-01-10', 'January', 1, 1, 2020, 163),
('2020-01-11', 'January', 1, 1, 2020, 164),
('2020-01-12', 'January', 1, 1, 2020, 165),
('2020-01-13', 'January', 1, 1, 2020, 166),
('2020-01-14', 'January', 1, 1, 2020, 167),
('2020-01-15', 'January', 1, 1, 2020, 168),
('2020-01-16', 'January', 1, 1, 2020, 169),
('2020-01-17', 'January', 1, 1, 2020, 170),
('2020-01-18', 'January', 1, 1, 2020, 171),
('2020-01-19', 'January', 1, 1, 2020, 172),
('2020-01-20', 'January', 1, 1, 2020, 173),
('2020-01-21', 'January', 1, 1, 2020, 174),
('2020-01-22', 'January', 1, 1, 2020, 175),
('2020-01-23', 'January', 1, 1, 2020, 176),
('2020-01-24', 'January', 1, 1, 2020, 177),
('2020-01-25', 'January', 1, 1, 2020, 178),
('2020-01-26', 'January', 1, 1, 2020, 179),
('2020-01-27', 'January', 1, 1, 2020, 180),
('2020-01-28', 'January', 1, 1, 2020, 181),
('2020-01-29', 'January', 1, 1, 2020, 182),
('2020-01-30', 'January', 1, 1, 2020, 183),
('2020-01-31', 'January', 1, 1, 2020, 184),
('2020-02-01', 'February', 2, 1, 2020, 185),
('2020-02-02', 'February', 2, 1, 2020, 186);

-- --------------------------------------------------------

--
-- Table structure for table `fact_hospital`
--

CREATE TABLE `fact_hospital` (
  `waktuKey` int(11) DEFAULT NULL,
  `nurseKey` int(11) DEFAULT NULL,
  `patientKey` int(11) DEFAULT NULL,
  `procedureKey` int(11) DEFAULT NULL,
  `perawatanKey` int(11) DEFAULT NULL,
  `physiciankey` int(11) DEFAULT NULL,
  `undergoesCost` int(11) DEFAULT NULL,
  `hospitalkey` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fact_hospital`
--

INSERT INTO `fact_hospital` (`waktuKey`, `nurseKey`, `patientKey`, `procedureKey`, `perawatanKey`, `physiciankey`, `undergoesCost`, `hospitalkey`) VALUES
(NULL, 1, 2, NULL, 2, 16, NULL, 31),
(156, 2, 2, 23, 1, 20, 1950, 2),
(NULL, 3, 2, NULL, 2, 8, NULL, 47),
(NULL, 7, 2, 28, 1, 4, 750, 8),
(NULL, 1, 3, NULL, 2, 11, NULL, 32),
(NULL, 1, 4, NULL, 2, 11, NULL, 38),
(NULL, 3, 4, NULL, 2, 11, NULL, 46),
(136, 20, 4, NULL, 2, 13, NULL, 145),
(NULL, 1, 5, NULL, 2, 23, NULL, 33),
(NULL, 2, 5, NULL, 2, 21, NULL, 41),
(NULL, 3, 5, NULL, 2, 23, NULL, 45),
(NULL, 10, 5, NULL, 2, 14, NULL, 83),
(46, 10, 5, NULL, 2, 26, NULL, 78),
(122, 18, 6, NULL, 2, 32, NULL, 135),
(43, 10, 7, NULL, 2, 18, NULL, 77),
(NULL, 12, 8, NULL, 2, 24, NULL, 101),
(46, 14, 8, NULL, 2, 10, NULL, 116),
(NULL, 20, 8, 5, 1, 10, 4899500, 29),
(20, 5, 9, 16, 1, 22, 7500, 3),
(156, 5, 9, 21, 1, 22, 800, 4),
(118, 7, 9, 11, 1, 3, 85000, 9),
(122, 1, 10, NULL, 2, 26, NULL, 37),
(20, 4, 10, NULL, 2, 16, NULL, 53),
(136, 20, 11, NULL, 2, 27, NULL, 146),
(137, 10, 12, 33, 1, 23, 3500, 15),
(14, 12, 12, NULL, 2, 30, NULL, 97),
(NULL, 16, 12, NULL, 2, 4, NULL, 129),
(159, 17, 12, 15, 1, 23, 7500, 22),
(NULL, 10, 13, NULL, 2, 6, NULL, 84),
(NULL, 2, 14, NULL, 2, 22, NULL, 44),
(158, 20, 14, 13, 1, 4, 17000, 30),
(137, 9, 15, 8, 1, 9, 65000, 14),
(12, 14, 15, NULL, 2, 23, NULL, 111),
(NULL, 2, 17, NULL, 2, 29, NULL, 43),
(20, 19, 17, NULL, 2, 35, NULL, 139),
(62, 14, 18, NULL, 2, 35, NULL, 117),
(NULL, 6, 19, NULL, 2, 32, NULL, 62),
(86, 7, 19, 39, 1, 19, 10500, 10),
(17, 7, 20, 16, 1, 2, 7500, 11),
(NULL, 3, 21, NULL, 2, 3, NULL, 48),
(NULL, 3, 22, NULL, 2, 10, NULL, 49),
(118, 19, 22, 11, 1, 3, 85000, 27),
(12, 14, 23, NULL, 2, 16, NULL, 112),
(133, 19, 23, NULL, 2, 19, NULL, 142),
(73, 7, 24, 37, 1, 18, 6500, 12),
(NULL, 8, 24, NULL, 2, 36, NULL, 73),
(NULL, 6, 25, NULL, 2, 18, NULL, 61),
(12, 16, 25, NULL, 2, 25, NULL, 127),
(20, 7, 26, NULL, 2, 14, NULL, 65),
(136, 13, 26, NULL, 2, 31, NULL, 107),
(14, 13, 26, NULL, 2, 35, NULL, 103),
(14, 20, 27, NULL, 2, 36, NULL, 143),
(NULL, 3, 28, NULL, 2, 11, NULL, 50),
(117, 12, 29, 19, 1, 19, 9900, 16),
(51, 17, 29, 29, 1, 36, 1550, 23),
(14, 14, 31, NULL, 2, 24, NULL, 113),
(157, 5, 33, 37, 1, 16, 6500, 5),
(46, 14, 33, NULL, 2, 7, NULL, 115),
(NULL, 10, 34, NULL, 2, 31, NULL, 86),
(136, 15, 35, NULL, 2, 19, NULL, 124),
(62, 16, 35, NULL, 2, 3, NULL, 128),
(NULL, 18, 35, 35, 1, 12, 7500, 26),
(127, 10, 36, NULL, 2, 19, NULL, 81),
(138, 15, 36, 20, 1, 14, 600, 19),
(86, 15, 36, 17, 1, 21, 6700, 18),
(122, 19, 36, NULL, 2, 19, NULL, 140),
(118, 19, 37, 17, 1, 22, 6700, 28),
(12, 7, 38, NULL, 2, 3, NULL, 63),
(137, 17, 38, 8, 1, 29, 65000, 24),
(NULL, 18, 38, NULL, 2, 36, NULL, 136),
(20, 14, 39, NULL, 2, 31, NULL, 114),
(NULL, 1, 40, NULL, 2, 15, NULL, 40),
(20, 13, 40, NULL, 2, 32, NULL, 105),
(62, 17, 41, NULL, 2, 2, NULL, 133),
(43, 6, 42, NULL, 2, 23, NULL, 60),
(107, 12, 42, NULL, 2, 22, NULL, 99),
(133, 11, 45, NULL, 2, 22, NULL, 94),
(NULL, 12, 45, NULL, 2, 8, NULL, 100),
(137, 15, 46, 31, 1, 25, 7550, 20),
(14, 1, 48, NULL, 2, 32, NULL, 34),
(136, 9, 48, NULL, 2, 10, NULL, 75),
(127, 10, 48, NULL, 2, 23, NULL, 80),
(71, 16, 48, 16, 1, 21, 7500, 21),
(146, 17, 49, 25, 1, 22, 2550, 25),
(46, 17, 49, NULL, 2, 23, NULL, 132),
(118, 8, 50, 21, 1, 25, 800, 13),
(136, 10, 50, NULL, 2, 35, NULL, 82),
(71, 12, 50, 13, 1, 7, 17000, 17),
(127, 4, 52, NULL, 2, 13, NULL, 56),
(NULL, 11, 54, NULL, 2, 36, NULL, 96),
(20, 13, 55, NULL, 2, 20, NULL, 104),
(133, 9, 56, NULL, 2, 11, NULL, 74),
(46, 12, 59, NULL, 2, 29, NULL, 98),
(14, 8, 61, NULL, 2, 19, NULL, 68),
(12, 4, 62, NULL, 2, 20, NULL, 51),
(NULL, 10, 62, NULL, 2, 23, NULL, 87),
(NULL, 10, 63, NULL, 2, 13, NULL, 85),
(NULL, 15, 64, NULL, 2, 23, NULL, 126),
(12, 13, 65, NULL, 2, 6, NULL, 102),
(107, 13, 65, NULL, 2, 12, NULL, 106),
(NULL, 10, 66, NULL, 2, 11, NULL, 89),
(43, 15, 68, NULL, 2, 4, NULL, 120),
(62, 10, 69, NULL, 2, 16, NULL, 79),
(122, 1, 70, NULL, 2, 27, NULL, 36),
(138, 6, 70, 22, 1, 20, 950, 7),
(NULL, 9, 71, NULL, 2, 10, NULL, 76),
(12, 15, 71, NULL, 2, 4, NULL, 119),
(12, 19, 71, NULL, 2, 9, NULL, 138),
(133, 19, 75, NULL, 2, 15, NULL, 141),
(46, 20, 75, NULL, 2, 30, NULL, 144),
(107, 11, 76, NULL, 2, 15, NULL, 92),
(133, 8, 77, NULL, 2, 18, NULL, 72),
(12, 19, 77, NULL, 2, 30, NULL, 137),
(NULL, 15, 78, NULL, 2, 5, NULL, 125),
(133, 5, 79, NULL, 2, 23, NULL, 59),
(NULL, 13, 80, NULL, 2, 23, NULL, 110),
(46, 18, 80, NULL, 2, 10, NULL, 134),
(43, 4, 81, NULL, 2, 4, NULL, 54),
(136, 4, 81, NULL, 2, 31, NULL, 57),
(NULL, 14, 81, NULL, 2, 19, NULL, 118),
(12, 11, 82, NULL, 2, 21, NULL, 91),
(133, 15, 82, NULL, 2, 26, NULL, 122),
(62, 7, 83, NULL, 2, 30, NULL, 67),
(14, 4, 86, NULL, 2, 12, NULL, 52),
(14, 7, 86, NULL, 2, 18, NULL, 64),
(43, 2, 91, NULL, 2, 8, NULL, 42),
(127, 4, 91, NULL, 2, 3, NULL, 55),
(NULL, 13, 92, NULL, 2, 22, NULL, 109),
(62, 1, 95, NULL, 2, 24, NULL, 35),
(NULL, 10, 95, NULL, 2, 18, NULL, 90),
(NULL, 10, 96, NULL, 2, 32, NULL, 88),
(133, 11, 96, NULL, 2, 18, NULL, 93),
(16, 1, 97, 13, 1, 32, 17000, 1),
(46, 8, 97, NULL, 2, 32, NULL, 70),
(136, 15, 97, NULL, 2, 8, NULL, 123),
(136, 11, 100, NULL, 2, 22, NULL, 95),
(138, 5, 101, 27, 1, 4, 950, 6),
(NULL, 1, 102, NULL, 2, 7, NULL, 39),
(122, 5, 102, NULL, 2, 22, NULL, 58),
(20, 8, 102, NULL, 2, 6, NULL, 69),
(133, 8, 103, NULL, 2, 27, NULL, 71),
(NULL, 13, 104, NULL, 2, 14, NULL, 108),
(NULL, 16, 104, NULL, 2, 7, NULL, 130),
(43, 7, 105, NULL, 2, 7, NULL, 66),
(46, 15, 105, NULL, 2, 5, NULL, 121),
(12, 17, 105, NULL, 2, 35, NULL, 131);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_area`
--
ALTER TABLE `dim_area`
  ADD PRIMARY KEY (`areakey`),
  ADD UNIQUE KEY `idx_dim_area_pk` (`areakey`),
  ADD KEY `idx_dim_area_lookup` (`areaName`,`greaterareakey`);

--
-- Indexes for table `dim_country`
--
ALTER TABLE `dim_country`
  ADD PRIMARY KEY (`countrykey`),
  ADD UNIQUE KEY `idx_dim_country_pk` (`countrykey`),
  ADD KEY `idx_dim_country_lookup` (`countryName`);

--
-- Indexes for table `dim_departement`
--
ALTER TABLE `dim_departement`
  ADD PRIMARY KEY (`departementkey`),
  ADD UNIQUE KEY `idx_dim_departement_pk` (`departementkey`),
  ADD KEY `idx_dim_departement_lookup` (`departmentID`,`departmentName`);

--
-- Indexes for table `dim_greaterarea`
--
ALTER TABLE `dim_greaterarea`
  ADD PRIMARY KEY (`greaterareakey`),
  ADD UNIQUE KEY `idx_dim_greaterarea_pk` (`greaterareakey`),
  ADD KEY `idx_dim_greaterarea_lookup` (`greaterArea`,`countrykey`);

--
-- Indexes for table `dim_nurse`
--
ALTER TABLE `dim_nurse`
  ADD PRIMARY KEY (`Nursekey`),
  ADD UNIQUE KEY `idx_dim_nurse_pk` (`Nursekey`),
  ADD KEY `idx_dim_nurse_lookup` (`nurseID`,`name`,`Position`);

--
-- Indexes for table `dim_patient`
--
ALTER TABLE `dim_patient`
  ADD PRIMARY KEY (`patientkey`),
  ADD KEY `idx_dim_patient_lookup` (`patientID`,`patientName`,`countrykey`,`areakey`),
  ADD KEY `idx_dim_patient_tk` (`patientkey`);

--
-- Indexes for table `dim_perawatan`
--
ALTER TABLE `dim_perawatan`
  ADD PRIMARY KEY (`perawtaankey`);

--
-- Indexes for table `dim_physician`
--
ALTER TABLE `dim_physician`
  ADD PRIMARY KEY (`physiciankey`),
  ADD KEY `idx_dim_physician_tk` (`physiciankey`);

--
-- Indexes for table `dim_procedure`
--
ALTER TABLE `dim_procedure`
  ADD PRIMARY KEY (`procedurekey`),
  ADD UNIQUE KEY `idx_dim_procedure_pk` (`procedurekey`),
  ADD KEY `idx_dim_procedure_lookup` (`procedureID`,`procedureName`,`cost`);

--
-- Indexes for table `dim_time`
--
ALTER TABLE `dim_time`
  ADD PRIMARY KEY (`TimeKey`);

--
-- Indexes for table `fact_hospital`
--
ALTER TABLE `fact_hospital`
  ADD PRIMARY KEY (`hospitalkey`),
  ADD UNIQUE KEY `idx_fact_hospital_pk` (`hospitalkey`),
  ADD KEY `idx_fact_hospital_lookup` (`patientKey`,`nurseKey`,`physiciankey`,`perawatanKey`,`waktuKey`,`procedureKey`,`undergoesCost`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_area`
--
ALTER TABLE `dim_area`
  MODIFY `areakey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `dim_country`
--
ALTER TABLE `dim_country`
  MODIFY `countrykey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dim_departement`
--
ALTER TABLE `dim_departement`
  MODIFY `departementkey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dim_greaterarea`
--
ALTER TABLE `dim_greaterarea`
  MODIFY `greaterareakey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dim_nurse`
--
ALTER TABLE `dim_nurse`
  MODIFY `Nursekey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dim_patient`
--
ALTER TABLE `dim_patient`
  MODIFY `patientkey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `dim_perawatan`
--
ALTER TABLE `dim_perawatan`
  MODIFY `perawtaankey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dim_physician`
--
ALTER TABLE `dim_physician`
  MODIFY `physiciankey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `dim_procedure`
--
ALTER TABLE `dim_procedure`
  MODIFY `procedurekey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `dim_time`
--
ALTER TABLE `dim_time`
  MODIFY `TimeKey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `fact_hospital`
--
ALTER TABLE `fact_hospital`
  MODIFY `hospitalkey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
