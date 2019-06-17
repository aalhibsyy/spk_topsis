-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 07:42 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bobot`
--

CREATE TABLE `tb_bobot` (
  `id_bobot` int(11) NOT NULL,
  `kriteria_penilaian` text,
  `bobot` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bobot`
--

INSERT INTO `tb_bobot` (`id_bobot`, `kriteria_penilaian`, `bobot`) VALUES
(1, 'Rata – rata nilai rapot 1 semester terakhir', 5),
(2, 'Ranking', 4),
(3, 'Absensi (Jumlah ijin dan tanpa keterangan)', 3),
(4, 'Kegiatan Ekstrakurikuler', 1),
(5, 'Sikap', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(2) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(2, 'MM1'),
(3, 'MM2'),
(4, 'RPL'),
(5, 'TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepentingan`
--

CREATE TABLE `tb_kepentingan` (
  `id_tk` int(11) NOT NULL,
  `predikat` text,
  `bobot` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kepentingan`
--

INSERT INTO `tb_kepentingan` (`id_tk`, `predikat`, `bobot`) VALUES
(1, 'Sangat Kurang', 1),
(2, 'Kurang', 2),
(3, 'Cukup', 3),
(4, 'Baik', 4),
(5, 'Sangat Baik', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria_penilaian` text,
  `kriteria` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `kriteria_penilaian`, `kriteria`) VALUES
(1, 'Rata – rata nilai rapot 1 semester terakhir', 'C1'),
(2, 'Ranking', 'C2'),
(3, 'Absensi (Jumlah ijin dan tanpa keterangan)', 'C3'),
(4, 'Kegiatan Ekstrakurikuler', 'C4'),
(5, 'Sikap', 'C5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int(11) NOT NULL,
  `nama_murid` varchar(50) NOT NULL,
  `id_siswa` int(3) DEFAULT NULL,
  `id_periode` int(3) DEFAULT NULL,
  `nilai_c1` int(3) NOT NULL,
  `nilai_c2` int(3) NOT NULL,
  `nilai_c3` int(3) NOT NULL,
  `nilai_c4` text NOT NULL,
  `nilai_c5` text NOT NULL,
  `tanggal_create` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id`, `nama_murid`, `id_siswa`, `id_periode`, `nilai_c1`, `nilai_c2`, `nilai_c3`, `nilai_c4`, `nilai_c5`, `tanggal_create`) VALUES
(19, '', 1414, 4, 83, 2, 0, 'B', 'B', 1558889603),
(27, '', 1349, 5, 85, 1, 0, 'B', 'B', 1558881008),
(28, '', 1352, 5, 83, 2, 1, 'B', 'B', 1558881008),
(29, '', 1342, 5, 81, 3, 7, 'B', 'B', 1558881008),
(30, '', 1350, 5, 82, 4, 0, 'B', 'B', 1558881008),
(31, '', 1341, 5, 82, 5, 4, 'B', 'B', 1558881008),
(32, '', 1351, 5, 75, 9, 23, 'B', 'B', 1558881008),
(33, '', 1358, 5, 74, 8, 10, 'B', 'B', 1558881008),
(34, '', 1347, 5, 75, 7, 3, 'B', 'B', 1558881008),
(35, '', 1340, 5, 78, 6, 1, 'B', 'B', 1558881008),
(36, '', 1369, 4, 78, 1, 0, 'B', 'B', 1558889183),
(37, '', 1349, 5, 85, 1, 0, 'B', 'B', 1558881008),
(38, '', 1352, 5, 83, 2, 1, 'B', 'B', 1558881008),
(39, '', 1342, 5, 81, 3, 7, 'B', 'B', 1558881008),
(40, '', 1350, 5, 82, 4, 0, 'B', 'B', 1558881008),
(41, '', 1341, 5, 82, 5, 4, 'B', 'B', 1558881008),
(42, '', 1351, 5, 75, 9, 23, 'B', 'B', 1558881008),
(43, '', 1358, 5, 74, 8, 10, 'B', 'B', 1558881008),
(44, '', 1347, 5, 75, 7, 3, 'B', 'B', 1558881008),
(45, '', 1340, 5, 78, 6, 1, 'B', 'B', 1558881008),
(46, '', 1369, 4, 78, 1, 0, 'B', 'B', 1558889183),
(47, '', 1371, 4, 77, 2, 0, 'B', 'B', 1558889183),
(48, '', 1367, 4, 80, 3, 3, 'B', 'B', 1558889183),
(49, '', 1360, 4, 77, 4, 7, 'B', 'B', 1558889183),
(50, '', 1379, 4, 74, 5, 2, 'B', 'B', 1558889183),
(51, '', 1368, 4, 9, 10, 5, 'B', 'B', 1558889183),
(52, '', 1361, 4, 61, 9, 7, 'B', 'B', 1558889183),
(53, '', 1376, 4, 64, 7, 3, 'B', 'B', 1558889183),
(54, '', 1377, 4, 70, 6, 6, 'B', 'B', 1558889183),
(55, '', 1369, 4, 78, 1, 0, 'B', 'B', 1558889183),
(56, '', 1371, 4, 77, 2, 0, 'B', 'B', 1558889183),
(57, '', 1367, 4, 80, 3, 3, 'B', 'B', 1558889183),
(58, '', 1360, 4, 77, 4, 7, 'B', 'B', 1558889183),
(59, '', 1379, 4, 74, 5, 2, 'B', 'B', 1558889183),
(60, '', 1368, 4, 9, 10, 5, 'B', 'B', 1558889183),
(61, '', 1361, 4, 61, 9, 7, 'B', 'B', 1558889183),
(62, '', 1376, 4, 64, 7, 3, 'B', 'B', 1558889183),
(63, '', 1377, 4, 70, 6, 6, 'B', 'B', 1558889183),
(64, '', 1409, 4, 83, 1, 4, 'B', 'B', 1558889603),
(65, '', 1414, 4, 83, 2, 0, 'B', 'B', 1558889603),
(66, '', 1416, 4, 81, 3, 1, 'B', 'B', 1558889603),
(67, '', 1418, 4, 82, 4, 4, 'B', 'B', 1558889603),
(68, '', 1419, 4, 79, 5, 2, 'B', 'B', 1558889603),
(69, '', 1406, 4, 73, 10, 15, 'B', 'B', 1558889603),
(70, '', 1404, 4, 74, 9, 10, 'B', 'B', 1558889603),
(71, '', 1403, 4, 77, 8, 3, 'B', 'B', 1558889603),
(72, '', 1420, 4, 77, 7, 14, 'B', 'B', 1558889603),
(73, '', 1415, 4, 79, 6, 2, 'B', 'B', 1558889603),
(74, '', 1390, 4, 74, 1, 1, 'B', 'B', 1558889831),
(75, '', 1399, 4, 78, 2, 0, 'B', 'B', 1558889831),
(76, '', 1395, 4, 75, 3, 2, 'B', 'B', 1558889831),
(77, '', 1398, 4, 73, 4, 1, 'B', 'B', 1558889831),
(78, '', 1397, 4, 76, 5, 0, 'B', 'B', 1558889831),
(79, '', 1384, 4, 46, 10, 51, 'B', 'B', 1558889831),
(80, '', 1424, 4, 47, 9, 14, 'B', 'B', 1558889831),
(81, '', 1400, 4, 57, 8, 18, 'B', 'B', 1558889831),
(82, '', 1381, 4, 69, 7, 2, 'B', 'B', 1558889831),
(83, '', 1385, 4, 72, 6, 1, 'B', 'B', 1558889831);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_convert`
--

CREATE TABLE `tb_nilai_convert` (
  `id` int(11) NOT NULL,
  `nama_murid` varchar(50) NOT NULL,
  `id_siswa` int(3) DEFAULT NULL,
  `id_periode` int(3) DEFAULT NULL,
  `nilai_c1` int(5) NOT NULL,
  `nilai_c2` int(5) NOT NULL,
  `nilai_c3` int(5) NOT NULL,
  `nilai_c4` int(5) NOT NULL,
  `nilai_c5` int(5) NOT NULL,
  `tanggal_create` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_convert`
--

INSERT INTO `tb_nilai_convert` (`id`, `nama_murid`, `id_siswa`, `id_periode`, `nilai_c1`, `nilai_c2`, `nilai_c3`, `nilai_c4`, `nilai_c5`, `tanggal_create`) VALUES
(31, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(32, '', 1313, 4, 3, 4, 3, 5, 4, NULL),
(33, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(34, '', 1616, 4, 0, 2, 0, 5, 4, NULL),
(35, '', 1111, 4, 4, 1, 0, 5, 4, NULL),
(36, '', 2222, 4, 3, 1, 0, 4, 5, NULL),
(37, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(38, '', 4444, 4, 2, 1, 0, 4, 4, NULL),
(39, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(40, '', 1313, 4, 3, 4, 3, 5, 4, NULL),
(41, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(42, '', 1616, 4, 0, 2, 0, 5, 4, NULL),
(43, '', 1111, 4, 4, 1, 0, 5, 4, NULL),
(44, '', 2222, 4, 3, 1, 0, 4, 5, NULL),
(45, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(46, '', 4444, 4, 2, 1, 0, 4, 4, NULL),
(47, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(48, '', 1313, 4, 3, 4, 3, 5, 4, NULL),
(49, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(50, '', 1616, 4, 0, 2, 0, 5, 4, NULL),
(51, '', 1111, 4, 4, 1, 0, 5, 4, NULL),
(52, '', 2222, 4, 3, 1, 0, 4, 5, NULL),
(53, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(54, '', 4444, 4, 2, 1, 0, 4, 4, NULL),
(55, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(56, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(57, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(58, '', 1313, 4, 3, 4, 3, 5, 4, NULL),
(59, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(60, '', 1616, 4, 0, 2, 0, 5, 4, NULL),
(61, '', 1111, 4, 4, 1, 0, 5, 4, NULL),
(62, '', 2222, 4, 3, 1, 0, 4, 5, NULL),
(63, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(64, '', 4444, 4, 2, 1, 0, 4, 4, NULL),
(65, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(66, '', 1313, 4, 3, 4, 3, 5, 4, NULL),
(67, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(68, '', 1616, 4, 0, 2, 0, 5, 4, NULL),
(69, '', 1111, 4, 4, 1, 0, 5, 4, NULL),
(70, '', 2222, 4, 3, 1, 0, 4, 5, NULL),
(71, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(72, '', 4444, 4, 2, 1, 0, 4, 4, NULL),
(73, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(74, '', 1313, 4, 3, 4, 3, 5, 4, NULL),
(75, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(76, '', 1616, 4, 0, 2, 0, 5, 4, NULL),
(77, '', 1111, 4, 4, 1, 0, 5, 4, NULL),
(78, '', 2222, 4, 3, 1, 0, 4, 5, NULL),
(79, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(80, '', 4444, 4, 2, 1, 0, 4, 4, NULL),
(81, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(82, '', 2020, 4, 4, 1, 0, 5, 4, NULL),
(83, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(84, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(85, '', 3333, 4, 3, 1, 0, 5, 4, NULL),
(86, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(87, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(88, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(89, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(90, '', 1212, 4, 2, 5, 0, 5, 4, NULL),
(91, '', 1349, 5, 4, 5, 0, 4, 4, 1558881008),
(92, '', 1352, 5, 4, 4, 5, 4, 4, 1558881008),
(93, '', 1342, 5, 4, 3, 0, 4, 4, 1558881008),
(94, '', 1350, 5, 4, 2, 0, 4, 4, 1558881008),
(95, '', 1341, 5, 4, 1, 3, 4, 4, 1558881008),
(96, '', 1351, 5, 3, 1, 0, 4, 4, 1558881008),
(97, '', 1358, 5, 3, 1, 0, 4, 4, 1558881008),
(98, '', 1347, 5, 3, 1, 4, 4, 4, 1558881008),
(99, '', 1340, 5, 3, 1, 5, 4, 4, 1558881008),
(100, '', 1369, 4, 3, 5, 0, 4, 4, 1558889183),
(101, '', 1349, 5, 4, 5, 0, 4, 4, 1558881008),
(102, '', 1352, 5, 4, 4, 5, 4, 4, 1558881008),
(103, '', 1342, 5, 4, 3, 0, 4, 4, 1558881008),
(104, '', 1350, 5, 4, 2, 0, 4, 4, 1558881008),
(105, '', 1341, 5, 4, 1, 3, 4, 4, 1558881008),
(106, '', 1351, 5, 3, 1, 0, 4, 4, 1558881008),
(107, '', 1358, 5, 3, 1, 0, 4, 4, 1558881008),
(108, '', 1347, 5, 3, 1, 4, 4, 4, 1558881008),
(109, '', 1340, 5, 3, 1, 5, 4, 4, 1558881008),
(110, '', 1369, 4, 3, 5, 0, 4, 4, 1558889183),
(111, '', 1371, 4, 3, 4, 0, 4, 4, 1558889183),
(112, '', 1367, 4, 4, 3, 4, 4, 4, 1558889183),
(113, '', 1360, 4, 3, 2, 0, 4, 4, 1558889183),
(114, '', 1379, 4, 3, 1, 5, 4, 4, 1558889183),
(115, '', 1368, 4, 0, 1, 0, 4, 4, 1558889183),
(116, '', 1361, 4, 2, 1, 0, 4, 4, 1558889183),
(117, '', 1376, 4, 2, 1, 4, 4, 4, 1558889183),
(118, '', 1377, 4, 3, 1, 0, 4, 4, 1558889183),
(119, '', 1369, 4, 3, 5, 0, 4, 4, 1558889183),
(120, '', 1371, 4, 3, 4, 0, 4, 4, 1558889183),
(121, '', 1367, 4, 4, 3, 4, 4, 4, 1558889183),
(122, '', 1360, 4, 3, 2, 0, 4, 4, 1558889183),
(123, '', 1379, 4, 3, 1, 5, 4, 4, 1558889183),
(124, '', 1368, 4, 0, 1, 0, 4, 4, 1558889183),
(125, '', 1361, 4, 2, 1, 0, 4, 4, 1558889183),
(126, '', 1376, 4, 2, 1, 4, 4, 4, 1558889183),
(127, '', 1377, 4, 3, 1, 0, 4, 4, 1558889183),
(128, '', 1409, 4, 4, 5, 3, 4, 4, 1558889603),
(129, '', 1414, 4, 4, 4, 0, 4, 4, 1558889603),
(130, '', 1416, 4, 4, 3, 5, 4, 4, 1558889603),
(131, '', 1418, 4, 4, 2, 3, 4, 4, 1558889603),
(132, '', 1419, 4, 3, 1, 5, 4, 4, 1558889603),
(133, '', 1406, 4, 3, 1, 0, 4, 4, 1558889603),
(134, '', 1404, 4, 3, 1, 0, 4, 4, 1558889603),
(135, '', 1403, 4, 3, 1, 4, 4, 4, 1558889603),
(136, '', 1420, 4, 3, 1, 0, 4, 4, 1558889603),
(137, '', 1415, 4, 3, 1, 5, 4, 4, 1558889603),
(138, '', 1390, 4, 3, 5, 5, 4, 4, 1558889831),
(139, '', 1399, 4, 3, 4, 0, 4, 4, 1558889831),
(140, '', 1395, 4, 3, 3, 5, 4, 4, 1558889831),
(141, '', 1398, 4, 3, 2, 5, 4, 4, 1558889831),
(142, '', 1397, 4, 3, 1, 0, 4, 4, 1558889831),
(143, '', 1384, 4, 0, 1, 0, 4, 4, 1558889831),
(144, '', 1424, 4, 0, 1, 0, 4, 4, 1558889831),
(145, '', 1400, 4, 1, 1, 0, 4, 4, 1558889831),
(146, '', 1381, 4, 2, 1, 5, 4, 4, 1558889831),
(147, '', 1385, 4, 3, 1, 5, 4, 4, 1558889831);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_power`
--

CREATE TABLE `tb_nilai_power` (
  `id` int(11) NOT NULL,
  `id_siswa` int(3) DEFAULT NULL,
  `id_periode` int(3) DEFAULT NULL,
  `nilai_c1` int(5) NOT NULL,
  `nilai_c2` int(5) NOT NULL,
  `nilai_c3` int(5) NOT NULL,
  `nilai_c4` int(5) NOT NULL,
  `nilai_c5` int(5) NOT NULL,
  `tanggal_create` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_power`
--

INSERT INTO `tb_nilai_power` (`id`, `id_siswa`, `id_periode`, `nilai_c1`, `nilai_c2`, `nilai_c3`, `nilai_c4`, `nilai_c5`, `tanggal_create`) VALUES
(1, 1212, 4, 4, 25, 0, 25, 16, 1556656361),
(2, 1313, 4, 9, 16, 9, 25, 16, 1556656361),
(3, 1414, 4, 16, 16, 0, 16, 16, 1556656361),
(4, 1616, 4, 0, 4, 0, 25, 16, 1556656361),
(5, 1111, 4, 16, 1, 0, 25, 16, 1556656361),
(6, 2222, 4, 9, 1, 0, 16, 25, 1556656361),
(7, 3333, 4, 9, 1, 0, 25, 16, 1556656361),
(8, 4444, 4, 4, 1, 0, 16, 16, 1556656361),
(9, 1212, 4, 4, 25, 0, 25, 16, 1556816005),
(10, 1313, 4, 9, 16, 9, 25, 16, 1556816005),
(11, 1414, 4, 16, 16, 0, 16, 16, 1556816005),
(12, 1616, 4, 0, 4, 0, 25, 16, 1556816005),
(13, 1111, 4, 16, 1, 0, 25, 16, 1556816005),
(14, 2222, 4, 9, 1, 0, 16, 25, 1556816005),
(15, 3333, 4, 9, 1, 0, 25, 16, 1556816005),
(16, 4444, 4, 4, 1, 0, 16, 16, 1556816005),
(17, 1212, 4, 4, 25, 0, 25, 16, 1556817564),
(18, 1313, 4, 9, 16, 9, 25, 16, 1556817564),
(19, 1414, 4, 16, 16, 0, 16, 16, 1556817564),
(20, 1616, 4, 0, 4, 0, 25, 16, 1556817564),
(21, 1111, 4, 16, 1, 0, 25, 16, 1556817564),
(22, 2222, 4, 9, 1, 0, 16, 25, 1556817564),
(23, 3333, 4, 9, 1, 0, 25, 16, 1556817564),
(24, 4444, 4, 4, 1, 0, 16, 16, 1556817564),
(25, 1212, 4, 4, 25, 0, 25, 16, 1556821095),
(26, 2020, 4, 16, 1, 0, 25, 16, 1557221538),
(27, 1212, 4, 0, 0, 0, 0, 0, 1558380553),
(28, 1414, 4, 16, 16, 0, 16, 16, 1558724653),
(29, 3333, 5, 0, 0, 0, 0, 0, 1558724666),
(30, 1212, 2, 0, 0, 0, 0, 0, 1558724698),
(31, 1212, 5, 0, 0, 0, 0, 0, 1558724712),
(32, 1212, 5, 0, 0, 0, 0, 0, 1558724727),
(33, 1212, 5, 0, 0, 0, 0, 0, 1558724751),
(34, 1212, 5, 0, 0, 0, 0, 0, 1558724824),
(35, 1349, 5, 16, 25, 0, 16, 16, 1558881008),
(36, 1352, 5, 16, 16, 25, 16, 16, 1558881008),
(37, 1342, 5, 16, 9, 0, 16, 16, 1558881008),
(38, 1350, 5, 16, 4, 0, 16, 16, 1558881008),
(39, 1341, 5, 16, 1, 9, 16, 16, 1558881008),
(40, 1351, 5, 9, 1, 0, 16, 16, 1558881008),
(41, 1358, 5, 9, 1, 0, 16, 16, 1558881008),
(42, 1347, 5, 9, 1, 16, 16, 16, 1558881008),
(43, 1340, 5, 9, 1, 25, 16, 16, 1558881008),
(44, 1369, 5, 9, 25, 0, 16, 16, 1558881008),
(45, 1349, 4, 16, 25, 0, 16, 16, 1558887457),
(46, 1352, 4, 16, 16, 25, 16, 16, 1558887457),
(47, 1342, 4, 16, 9, 0, 16, 16, 1558887457),
(48, 1350, 4, 16, 4, 0, 16, 16, 1558887457),
(49, 1341, 4, 16, 1, 9, 16, 16, 1558887457),
(50, 1351, 4, 9, 1, 0, 16, 16, 1558887457),
(51, 1358, 4, 9, 1, 0, 16, 16, 1558887457),
(52, 1347, 4, 9, 1, 16, 16, 16, 1558887457),
(53, 1340, 4, 9, 1, 25, 16, 16, 1558887457),
(54, 1369, 4, 9, 25, 0, 16, 16, 1558888633),
(55, 1371, 4, 9, 16, 0, 16, 16, 1558888633),
(56, 1367, 4, 16, 9, 16, 16, 16, 1558888633),
(57, 1360, 4, 9, 4, 0, 16, 16, 1558888633),
(58, 1379, 4, 9, 1, 25, 16, 16, 1558888633),
(59, 1368, 4, 0, 1, 0, 16, 16, 1558888633),
(60, 1361, 4, 4, 1, 0, 16, 16, 1558888633),
(61, 1376, 4, 4, 1, 16, 16, 16, 1558888633),
(62, 1377, 4, 9, 1, 0, 16, 16, 1558888633),
(63, 1369, 4, 9, 25, 0, 16, 16, 1558889183),
(64, 1371, 4, 9, 16, 0, 16, 16, 1558889183),
(65, 1367, 4, 16, 9, 16, 16, 16, 1558889183),
(66, 1360, 4, 9, 4, 0, 16, 16, 1558889183),
(67, 1379, 4, 9, 1, 25, 16, 16, 1558889183),
(68, 1368, 4, 0, 1, 0, 16, 16, 1558889183),
(69, 1361, 4, 4, 1, 0, 16, 16, 1558889183),
(70, 1376, 4, 4, 1, 16, 16, 16, 1558889183),
(71, 1377, 4, 9, 1, 0, 16, 16, 1558889183),
(72, 1409, 4, 16, 25, 9, 16, 16, 1558889603),
(73, 1414, 4, 16, 16, 0, 16, 16, 1558889603),
(74, 1416, 4, 16, 9, 25, 16, 16, 1558889603),
(75, 1418, 4, 16, 4, 9, 16, 16, 1558889603),
(76, 1419, 4, 9, 1, 25, 16, 16, 1558889603),
(77, 1406, 4, 9, 1, 0, 16, 16, 1558889603),
(78, 1404, 4, 9, 1, 0, 16, 16, 1558889603),
(79, 1403, 4, 9, 1, 16, 16, 16, 1558889603),
(80, 1420, 4, 9, 1, 0, 16, 16, 1558889603),
(81, 1415, 4, 9, 1, 25, 16, 16, 1558889603),
(82, 1390, 4, 9, 25, 25, 16, 16, 1558889831),
(83, 1399, 4, 9, 16, 0, 16, 16, 1558889831),
(84, 1395, 4, 9, 9, 25, 16, 16, 1558889831),
(85, 1398, 4, 9, 4, 25, 16, 16, 1558889831),
(86, 1397, 4, 9, 1, 0, 16, 16, 1558889831),
(87, 1384, 4, 0, 1, 0, 16, 16, 1558889831),
(88, 1424, 4, 0, 1, 0, 16, 16, 1558889831),
(89, 1400, 4, 1, 1, 0, 16, 16, 1558889831),
(90, 1381, 4, 4, 1, 25, 16, 16, 1558889831),
(91, 1385, 4, 9, 1, 25, 16, 16, 1558889831);

-- --------------------------------------------------------

--
-- Table structure for table `tb_periode`
--

CREATE TABLE `tb_periode` (
  `id_periode` int(3) NOT NULL,
  `nama_periode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_periode`
--

INSERT INTO `tb_periode` (`id_periode`, `nama_periode`) VALUES
(1, '2015'),
(2, '2016'),
(3, '2017'),
(4, '2018'),
(5, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(5) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nm_siswa` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(200) DEFAULT NULL,
  `nama_ayah` varchar(200) DEFAULT NULL,
  `nama_ibu` varchar(200) DEFAULT NULL,
  `pekerjaan_ayah` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `kelas`, `nik`, `nm_siswa`, `alamat`, `tgl_lahir`, `tempat_lahir`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`) VALUES
(22, 'MM1', '1349', 'HAFID NUR WAHYUDI', 'jln', '2009-05-12', 'jkt', 'a', 'b', 'c'),
(23, 'MM1', '1352', 'MOHAMMAD KEVAS KN', ' jln', '2009-09-16', 'jkt', 'a', 'b', 'c'),
(24, 'MM1', '1342', 'ANZALNA ADITYA KARIZA', 'jln', '2001-02-07', 'jkt', 'a', 'b', 'c'),
(25, 'MM1', '1350', 'MUHAMMAD RICHO FIRMANSYAH', 'jln', '2002-09-17', 'jkt', 'a', 'b', 'c'),
(26, 'MM1', '1341', 'ANISSA NURMELLIA', 'jln', '2002-01-07', 'jkt', 'a', 'b', 'c'),
(27, 'MM1', '1351', 'MIFTAHUR RIZKY', 'jln', '2002-12-05', 'jkt', 'a', 'b', 'c'),
(28, 'MM1', '1358', 'IGB ABHIRAMA V', 'jln', '2001-11-16', 'jkt', 'a', 'b', 'c'),
(29, 'MM1', '1347', 'DIKY PURNOMO', 'jln', '2002-02-20', 'jkt', 'a', 'b', 'c'),
(30, 'MM1', '1340', 'AHNAF HAWARI', 'jln', '2002-01-21', 'jkt', 'a', 'b', 'c'),
(31, 'MM2', '1369', 'MUHAMMAD FAHRUL ROZY', 'jln', '2002-05-14', 'jkt', 'a', 'b', 'c'),
(32, 'MM2', '1371', 'MUHAMMAD RACHMAT NUGRAHA', 'jln', '2001-01-30', 'jkt', 'a', 'b', 'c'),
(33, 'MM2', '1367', 'M. RISYAD', 'jln', '2001-11-21', 'jkt', 'a', 'b', 'c'),
(34, 'MM2', '1360', 'ANDIVA REYNALDI', 'jln', '2002-08-26', 'jkt', 'a', 'b', 'c'),
(35, 'MM2', '1379', 'RAHMA DWI ANANDA', 'jln', '2003-04-15', 'jkt', 'a', 'b', 'c'),
(36, 'MM2', '1368', 'MOHAMMAD DILON F', 'jln', '2001-07-23', 'jkt', 'a', 'b', 'c'),
(37, 'MM2', '1361', 'ANOM WAHYU PURNOMO', 'jln', '2002-10-08', 'jkt', 'a', 'b', 'c'),
(38, 'MM2', '1376', 'SAHARA SONIA F.', 'jln', '2002-03-19', 'jkt', 'a', 'b', 'c'),
(39, 'MM2', '1377', 'TARISHA ZAHRA H.D', 'jln', '2002-02-26', 'jkt', 'a', 'b', 'c'),
(40, 'RPL', '1409', 'AZRIEL FACHRULREZY', 'jln', '2004-01-26', 'jkt', 'a', 'b', 'c'),
(41, 'RPL', '1414', 'KAUTSAR TEGUH DWI PUTRA', 'jln', '2004-04-21', 'jkt', 'a', 'b', 'c'),
(42, 'RPL', '1416', 'MUHAMMAD RIZQI', 'jln', '2003-05-06', 'jkt', 'a', 'b', 'c'),
(43, 'RPL', '1418', 'MUHAMMAD HENDRICO A.', 'jln', '2003-08-26', 'jkt', 'a', 'b', 'c'),
(44, 'RPL', '1419', 'MUHAMMAD RAICHAN', 'jln', '2004-02-06', 'jkt', 'a', 'b', 'c'),
(45, 'RPL', '1406', 'ANDIN NANTA YAHYA', 'jln', '2004-08-25', 'jkt', 'a', 'b', 'c'),
(46, 'RPL', '1404', 'ADRYA RIZKY WIJAYA', 'jln', '2004-11-02', 'jkt', 'a', 'b', 'c'),
(47, 'RPL', '1403', 'ADAM BIMA PRAYITNO', 'jln', '2004-05-27', 'jkt', 'a', 'b', 'c'),
(48, 'RPL', '1420', 'RIZKI MALINAWAN', 'jln', '2004-02-09', 'jkt', 'a', 'b', 'c'),
(49, 'RPL', '1415', 'LUTFI RUHBI SYAHDAT', 'jln', '2003-10-05', 'jkt', 'a', 'b', 'c'),
(50, 'TKJ', '1390', 'GERRALD HERLANDO', 'jln', '2004-09-03', 'jkt', 'a', 'b', 'c'),
(51, 'TKJ', '1399', 'PUJI SANTOSO', 'jln', '2003-03-18', 'jkt', 'a', 'b', 'c'),
(52, 'TKJ', '1395', 'MOHAMAD FATTAH ALGHANI', 'jln', '2004-07-17', 'jkt', 'a', 'b', 'c'),
(53, 'TKJ', '1398', 'MUHAMMAD SADAM', 'jln', '2004-06-22', 'jkt', 'a', 'b', 'c'),
(54, 'TKJ', '1397', 'MUHAMMAD FAJAR SIDIQ', 'jln', '2004-05-02', 'jkt', 'a', 'b', 'c'),
(55, 'TKJ', '1384', 'DAFFA FAHREZA H.', 'jln', '2004-02-24', 'jkt', 'a', 'b', 'c'),
(56, 'TKJ', '1424', 'M. FAHRUL ROZI', 'jln', '2003-10-31', 'jkt', 'a', 'b', 'c'),
(57, 'TKJ', '1400', 'RAYES FAUZAN A.', 'jln', '2004-06-08', 'jkt', 'a', 'b', 'c'),
(58, 'TKJ', '1381', 'AIMAR FAKIH', 'jln', '2003-05-16', 'jkt', 'a', 'b', 'c'),
(59, 'TKJ', '1385', 'DANANG SETIAWAN', 'jln', '2004-03-22', 'jkt', 'a', 'b', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(11) NOT NULL,
  `level` varchar(3) NOT NULL DEFAULT '0' COMMENT '0 = user biasa, 1 = admin',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1 = aktif, 2 = nonaktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `email`, `level`, `status`) VALUES
(1, 'Administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@gmail', '1', 2),
(3, 'Wali Kelas', 'wali', '13314b1c5ad639cc86d60d57d9f30e5fc8f0efac', 'staf@gmail.', '2', 2),
(4, 'Kepala Sekolah', 'kepsek', '82b7283910ac7cb508ea7ecc645e5c944d7fb612', 'staf@gmail.', '3', 2),
(5, 'Pak Ferdi', 'ferdiansyah', '13f871d94a31f55f93034129d9e68c2fbd88f9c9', 'ferdiansyah', '0', 2),
(6, 'Pak Aal', 'aal', 'e61e506ca0fd8251f850bc313f709cc07cbcecf2', 'aal@gmail.c', '1', 2),
(7, 'staff', 'staff', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'staff@gmail', '0', 2),
(8, 'nosha', 'nosha', 'nosha', 'nosha@gmail', '1', 2),
(9, 'aal1', 'aal1', 'aal1', 'aal@gmail.c', '1', 2),
(10, 'aal2', 'aal2', 'aal2', 'aal@gmail.c', '0', 2),
(11, 'Admin', 'admin', 'admin', 'admin@bakti', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bobot`
--
ALTER TABLE `tb_bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kepentingan`
--
ALTER TABLE `tb_kepentingan`
  ADD PRIMARY KEY (`id_tk`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_convert`
--
ALTER TABLE `tb_nilai_convert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_power`
--
ALTER TABLE `tb_nilai_power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_periode`
--
ALTER TABLE `tb_periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bobot`
--
ALTER TABLE `tb_bobot`
  MODIFY `id_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_kepentingan`
--
ALTER TABLE `tb_kepentingan`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `tb_nilai_convert`
--
ALTER TABLE `tb_nilai_convert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `tb_nilai_power`
--
ALTER TABLE `tb_nilai_power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `tb_periode`
--
ALTER TABLE `tb_periode`
  MODIFY `id_periode` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
