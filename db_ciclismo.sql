-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2022 at 05:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ciclismo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciclista`
--

CREATE TABLE `ciclista` (
  `dorsal` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `añonacim` date NOT NULL,
  `nomequipo` varchar(50) NOT NULL,
  `tiempo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ciclista`
--

INSERT INTO `ciclista` (`dorsal`, `nombre`, `añonacim`, `nomequipo`, `tiempo`) VALUES
(1, 'Devin Fochs', '1990-10-08', 'Brex', 35.1),
(8, 'Kati Wix', '1985-05-12', 'American Express', 24.5),
(10, 'Sabina Clitsome', '1992-06-19', 'Citigroup', 27),
(15, 'Denney Partlett', '2004-05-11', 'Anthem', 17.2),
(19, 'Barret Janoschek', '1985-04-19', 'Brex', 6.3),
(20, 'Todd Ewbanche', '1993-05-15', 'Citigroup', 37.5),
(21, 'Shanta Geer', '1995-05-24', 'Anthem', 36.4),
(34, 'Harbert Blowne', '1989-01-01', 'American Express', 14.9),
(35, 'Tansy Tiffney', '2000-07-02', 'Citigroup', 35.9),
(41, 'Babara Keppe', '1985-04-22', 'Brex', 22.1),
(42, 'Agnes Mincher', '1988-12-12', 'Citigroup', 24.3),
(45, 'Nerita Gounin', '2002-02-28', 'Brex', 38.7),
(53, 'Bernete De Coursey', '1995-06-02', 'Anthem', 18.8),
(56, 'Allis Le Batteur', '1986-11-23', 'FedEx', 34.5),
(61, 'Milli Irwin', '1990-02-08', 'Anthem', 38.5),
(65, 'Sybila Maryan', '1984-05-07', 'American Express', 33.3),
(72, 'Janek Dooley', '1997-09-28', 'Home Depot', 18.5),
(76, 'Kellia Rolingson', '1993-06-08', 'FedEx', 39),
(78, 'Mic Mourbey', '2000-02-22', 'Home Depot', 24.9),
(80, 'Kaylyn Ilchenko', '2003-06-29', 'American Express', 5.8),
(81, 'Angelo Rotte', '1990-11-17', 'FedEx', 14.7),
(86, 'Valene Pimmocke', '1988-05-27', 'Anthem', 2.8),
(88, 'Katherine Delatour', '1999-07-19', 'American Express', 32.9);

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `nomequipo` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipo`
--

INSERT INTO `equipo` (`nomequipo`, `director`) VALUES
('American Express', 'Denis Loache'),
('Anthem', 'Domini Codner'),
('Brex', 'Denis Docherty'),
('Citigroup', 'Delphinia Barrick'),
('Comcast', 'King Turton'),
('FedEx', 'Caron Cameli'),
('Home Depot', 'Gwen Carnoghan'),
('HP', 'Ferdinande Nind'),
('Intel', 'Mickie Windrum'),
('PepsiCo', 'Cletus Boswell'),
('Progressive', 'Filmer Sambiedge'),
('Salesforce', 'Cammie Johanning'),
('Segment', 'Darrin Gwillim'),
('Slack', 'Anita Manketell'),
('State Farm Insurance', 'Myca Pikett'),
('Stripe', 'Neron Vlasyuk'),
('United Airlines', 'Niccolo Egdale'),
('Walt Disney', 'Ajay Guy');

-- --------------------------------------------------------

--
-- Table structure for table `etapa`
--

CREATE TABLE `etapa` (
  `numetapa` int(11) NOT NULL,
  `kms` float NOT NULL,
  `salida` varchar(50) NOT NULL,
  `llegada` varchar(50) NOT NULL,
  `dorsal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etapa`
--

INSERT INTO `etapa` (`numetapa`, `kms`, `salida`, `llegada`, `dorsal`) VALUES
(1, 166.5, 'Shawnee Mission', 'Lijiang', 1),
(2, 176.3, 'Stradbally', 'Shiyuetian', 8),
(3, 116.4, 'Liberia', 'Zhongshan', 10),
(4, 189.9, 'Puerto Cumarebo', 'Hongyuan', 15),
(5, 109.7, 'Marsabit', 'Vannes', 19),
(6, 153.5, 'Isojoki', 'Bazzāryah', 20),
(7, 156.3, 'Turan', 'Xinhuang', 21),
(8, 104.6, 'Stepanovićevo', 'Qixing', 34),
(9, 142, 'Néa Plágia', 'Ngadipuro', 35),
(10, 162.1, 'Quinta', 'Changning', 41),
(11, 191.5, 'Yanhong', 'Lavradio', 42),
(12, 104.1, 'Shreveport', 'Santa Maria', 45),
(13, 182.6, 'Shixi', 'Qızılhacılı', 53),
(14, 149.5, 'Dagkar', 'Burnaby', 56),
(15, 109.5, 'Medvedok', 'Uluale', 61),
(16, 185.8, 'Wonocolo', 'Sunja', 65),
(17, 147, 'Fenghuangdong', 'Sikasso', 72),
(18, 186.1, 'Patani', 'Néa Róda', 76),
(19, 111.8, 'Brisbane', 'Guanabacoa', 78),
(20, 170.3, 'Sinarbakti', 'Dongyang', 80),
(21, 159.6, 'Florencio Sánchez', 'Harrisburg', 81),
(22, 171.3, 'Krzemieniewo', 'Modot', 86),
(23, 158, 'Själevad', 'Saseel', 88);

-- --------------------------------------------------------

--
-- Table structure for table `puerto`
--

CREATE TABLE `puerto` (
  `nompuerto` varchar(50) NOT NULL,
  `altura` float NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `pendiente` int(11) NOT NULL,
  `numetapa` int(11) NOT NULL,
  `dorsal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `puerto`
--

INSERT INTO `puerto` (`nompuerto`, `altura`, `categoria`, `pendiente`, `numetapa`, `dorsal`) VALUES
('Philippines', 73, 'Crime|Drama', 92, 1, 1),
('Philippines', 73, 'Crime|Drama', 92, 1, 8),
('China', 38.2, 'Comedy', 57, 3, 10),
('Greece', 70.7, 'Drama', 42, 4, 10),
('Oman', 50.6, 'Comedy|Drama', 92, 5, 61);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ciclista`
--
ALTER TABLE `ciclista`
  ADD PRIMARY KEY (`dorsal`),
  ADD KEY `nomequipo` (`nomequipo`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`nomequipo`);

--
-- Indexes for table `etapa`
--
ALTER TABLE `etapa`
  ADD PRIMARY KEY (`numetapa`),
  ADD KEY `dorsal` (`dorsal`);

--
-- Indexes for table `puerto`
--
ALTER TABLE `puerto`
  ADD KEY `dorsal` (`dorsal`),
  ADD KEY `numetapa` (`numetapa`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ciclista`
--
ALTER TABLE `ciclista`
  ADD CONSTRAINT `ciclista_ibfk_1` FOREIGN KEY (`nomequipo`) REFERENCES `equipo` (`nomequipo`);

--
-- Constraints for table `etapa`
--
ALTER TABLE `etapa`
  ADD CONSTRAINT `etapa_ibfk_1` FOREIGN KEY (`dorsal`) REFERENCES `ciclista` (`dorsal`);

--
-- Constraints for table `puerto`
--
ALTER TABLE `puerto`
  ADD CONSTRAINT `puerto_ibfk_1` FOREIGN KEY (`dorsal`) REFERENCES `ciclista` (`dorsal`),
  ADD CONSTRAINT `puerto_ibfk_2` FOREIGN KEY (`numetapa`) REFERENCES `etapa` (`numetapa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
