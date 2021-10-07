-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2021 at 12:45 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edsr_pdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_record`
--

CREATE TABLE `customer_record` (
  `CustoemrID` varchar(60) NOT NULL,
  `CollecitonDate` varchar(60) DEFAULT NULL,
  `InvNo` varchar(60) NOT NULL,
  `InvDate` varchar(60) NOT NULL,
  `Due_Amount` varchar(60) NOT NULL,
  `Collection_Amount` varchar(60) NOT NULL,
  `InvAmount` varchar(60) NOT NULL,
  `Description` varchar(60) DEFAULT NULL,
  `employ_name` varchar(255) DEFAULT NULL,
  `employ_code` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_record`
--

INSERT INTO `customer_record` (`CustoemrID`, `CollecitonDate`, `InvNo`, `InvDate`, `Due_Amount`, `Collection_Amount`, `InvAmount`, `Description`, `employ_name`, `employ_code`, `created_at`, `updated_at`) VALUES
('10112-2228', '2021-10-03', 'OIN19-004923', '20190128', '750', '88', '750', NULL, 'Md. Ashaduzzaman - Sales  Executive (Khulna)', '2108', '2021-10-03 01:59:34', '2021-10-03 01:59:34'),
('10112-2228', '2021-10-03', 'ADV-00013378', '20190114', '-750', '750', '-750', NULL, 'Md. Ashaduzzaman - Sales  Executive (Khulna)', '2108', '2021-10-03 01:59:34', '2021-10-03 01:59:34'),
('10112-5356', '2021-10-03', 'ADV-00013511', '20190122', '-600', '-500', '-600', NULL, 'Khan Imam Hassain - Asst. Manager (Circulation)', '1423', '2021-10-03 05:29:03', '2021-10-03 05:29:03'),
('12102-1070', '2021-10-04', 'BKN-00291238', '20180706', '36400', '7654', '36400', NULL, 'Mukter', '1351', '2021-10-04 01:59:27', '2021-10-04 01:59:27'),
('10112-2778', '2021-10-05', 'OIN18-035542', '20180726', '0.5', '5', '187.5', NULL, '1415', '1415', '2021-10-04 23:22:44', '2021-10-04 23:22:44'),
('10112-2778', '2021-10-05', 'OIN19-002289', '20181224', '37.5', '37', '187.5', NULL, '1415', '1415', '2021-10-04 23:22:44', '2021-10-04 23:22:44'),
('10106-3746', '2021-10-06', 'OIN18-042212', '20181013', '50', '444', '50', NULL, '0000', '0000', '2021-10-06 04:04:17', '2021-10-06 04:04:17'),
('10106-3746', '2021-10-06', 'OIN19-001631', '20181214', '50', '444', '50', NULL, '0000', '0000', '2021-10-06 04:04:17', '2021-10-06 04:04:17'),
('10106-3746', '2021-10-06', 'OIN19-003635', '20190110', '50', '444', '50', NULL, '0000', '0000', '2021-10-06 04:04:17', '2021-10-06 04:04:17'),
('10112-3464', '2021-10-06', 'OIN19-004974', '20190128', '50', '8768', '50', NULL, '0000', '0000', '2021-10-06 05:03:52', '2021-10-06 05:03:52'),
('10112-4016', '2021-10-06', 'OIN18-037568', '20180820', '2345', '0000', '2345', NULL, '0000', '0000', '2021-10-06 16:55:44', '2021-10-06 16:55:44'),
('10112-4016', '2021-10-06', 'OIN18-037568', '20180820', '2345', '1111111', '2345', NULL, '0000', '0000', '2021-10-06 16:56:39', '2021-10-06 16:56:39'),
('10112-3454', '2021-10-06', 'OIN19-005337', '20190128', '50', '65656556566', '50', NULL, '0000', '0000', '2021-10-06 16:57:31', '2021-10-06 16:57:31'),
('10106-3630', '2021-10-06', 'OIN19-003892', '20190110', '50', '3456789876545678', '50', NULL, '0000', '0000', '2021-10-06 16:58:05', '2021-10-06 16:58:05'),
('10106-8268', '2021-10-07', 'OIN19-003865', '20190110', '50', '30', '50', NULL, '1423', '1423', '2021-10-07 10:13:59', '2021-10-07 10:13:59'),
('10106-8268', '2021-10-07', 'ADV-00012852', '20181101', '-250', '5', '-300', NULL, '1423', '1423', '2021-10-07 10:13:59', '2021-10-07 10:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `IDCUST` varchar(12) DEFAULT NULL,
  `NAMECUST` varchar(60) DEFAULT NULL,
  `IDINVC` varchar(18) DEFAULT NULL,
  `DATEINVC` varchar(8) DEFAULT NULL,
  `AMTINVCHC` varchar(10) DEFAULT NULL,
  `AMTDUEHC` varchar(9) DEFAULT NULL,
  `DESCINVC` varchar(60) DEFAULT NULL,
  `CODEEMPL` varchar(8) DEFAULT NULL,
  `NAMEEMPL` varchar(54) DEFAULT NULL,
  `TEXTSTRE1` varchar(60) DEFAULT NULL,
  `TEXTSTRE2` varchar(60) DEFAULT NULL,
  `TEXTPHON1` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`IDCUST`, `NAMECUST`, `IDINVC`, `DATEINVC`, `AMTINVCHC`, `AMTDUEHC`, `DESCINVC`, `CODEEMPL`, `NAMEEMPL`, `TEXTSTRE1`, `TEXTSTRE2`, `TEXTPHON1`) VALUES
('10020-1002', 'Dar Al-Sharq', 'INV-00005360', '20181129', '16550', '16550', 'Roylity $200@82.75', '', '', 'P.O. Box 3488,', 'Doha, Qatar', '00974-44557777'),
('10106-2742', 'M_S. Gayn Kosh (Sobhanbag)', 'OCR15-005222', '20151017', '-0.5', '-0.5', 'Synchronized from 07-Jun-15 to 07-Jun-15', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', '5-6-7, Sobhanbag Madrasa Market, Sobhanbug', '', '01720-064906'),
('10106-3628', 'Hasin Akhter Hamim (School Para)', 'OIN19-003194', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10106-7428', 'Raiyan Mostofa (Sobhanbugh)', 'ADV-00011937', '20181009', '-306', '-206', 'KAM Agents BKASH (Lib) Rec.01-10 OCT\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-1522', 'Mohammed Ibrahim (Chittagong)', 'RPT-00068021', '20180819', '-1200', '-0.5', 'BCM Agents CTG DBL.STDRec. 01-31 AUG\'18', '2013', 'Mr. Mahbubur Rahman', 'Circulation - Agency', '', ''),
('10112-2224', 'Rokomari (Dhaka)', 'OCR18-015687', '20180701', '-262.5', '-0.5', 'Synchronized from 15-Dec-17 to 15-Dec-17', '2108', 'Md. Ashaduzzaman - Sales  Executive (Khulna)', 'Circulation - Agency', '', ''),
('10112-1528', 'Mohammed Shamim (Melandah)', 'OIN18-040499', '20180924', '562.5', '0.5', 'Synchronized from 16-Sep-18 to 16-Sep-18', '2105', 'Md. Abul Bashar - Regional Manager (Mymensing)', 'Circulation - Agency', '', ''),
('10106-8266', 'Syeda Mahabuba Sarmin Koli (Kalkini)', 'ADV-00012848', '20181101', '-300', '-250', 'KAM Agents CASH Rec. 01-30 Nov\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-8268', 'Sumahra Aktare (Bangshal)', 'OIN19-003865', '20190110', '50', '50', 'Synchronized from 10-Jan-19 to 10-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-8268', 'Sumahra Aktare (Bangshal)', 'ADV-00012852', '20181101', '-300', '-250', 'KAM Agents CASH Rec. 01-30 Nov\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-8270', 'Md. Tahmid Tamin (Dhanmondi)', 'OIN19-003577', '20190110', '50', '50', 'Synchronized from 10-Jan-19 to 10-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-1346', 'Hekmot Ullah (Rajshahi)', 'OIN18-036131', '20180726', '8250', '300', 'Synchronized from 15-Jul-18 to 15-Jul-18', '2109', 'Md. Akhtaruzzaman Sarkar - Sales  Executive (Rajshahi)', 'Circulation - Agency', '', ''),
('10020-1002', 'Dar Al-Sharq', 'INV-00005614', '20190103', '12300', '12300', 'Royalty Fee $150@82', '', '', 'P.O. Box 3488,', 'Doha, Qatar', '00974-44557777'),
('10020-1002', 'Dar Al-Sharq', 'INV-00005615', '20190110', '12300', '12300', 'Royalty Fee $150@82', '', '', 'P.O. Box 3488,', 'Doha, Qatar', '00974-44557777'),
('10020-1002', 'Dar Al-Sharq', 'INV-00005616', '20190117', '12300', '12300', 'Royalty Fee $150@82', '', '', 'P.O. Box 3488,', 'Doha, Qatar', '00974-44557777'),
('10020-1002', 'Dar Al-Sharq', 'INV-00005617', '20190124', '12300', '12300', 'Royalty Fee $150@82', '', '', 'P.O. Box 3488,', 'Doha, Qatar', '00974-44557777'),
('10020-1002', 'Dar Al-Sharq', 'INV-00005618', '20190131', '12300', '12300', 'Royalty Fee $150@82', '', '', 'P.O. Box 3488,', 'Doha, Qatar', '00974-44557777'),
('10100-1002', 'A. H. Alam (Bhairab)', 'OIN18-034129', '20180731', '27267.5', '1094.5', 'Synchronized from 01-Jul-18 to 31-Jul-18', '1353', 'Shakhaowat', 'Circulation - Agency', '', ''),
('10106-3630', 'Tajin Nusrat Punam (Kajipara)', 'OIN19-003892', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10106-3746', 'Nabeeha Jahan (Jahanara Hospital)', 'OIN18-042212', '20181013', '50', '50', 'Synchronized from 10/7/2018 to 10/7/2018', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10106-3746', 'Nabeeha Jahan (Jahanara Hospital)', 'OIN19-001631', '20181214', '50', '50', 'Synchronized from 05-Dec-18 to 05-Dec-18', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10106-3746', 'Nabeeha Jahan (Jahanara Hospital)', 'OIN19-003635', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10106-3754', 'Hasan Book - 2 (Uttara)', 'OCR18-013413', '20180701', '-37.5', '-0.5', 'Synchronized from 06-May-18 to 06-May-18', '1420', 'Md. Yousuf -  Circulation Executive', 'Shop-20, Plot-89, Sect-7, Syed Grand Center, Uttara', '', '01833-795127'),
('10106-3634', 'Md. Altaf (Patuakhali)', 'ADV-00010996', '20180710', '-1125', '-1125', 'KAM Agents BKASH (Lib) Rec.01-10July\'18', '2103', 'Md. Mizanur Rahman - Regional Manager (Barisal)', 'Circulation - Agency', '', ''),
('10106-7800', 'Jannatur Noor Katha (Mirpur)', 'OIN19-003228', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-7800', 'Jannatur Noor Katha (Mirpur)', 'ADV-00012721', '20181023', '-300', '-200', 'KAM Agents BKASH (Lib) Rec.21-31 OCT\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-7802', 'S.M Adiva Mahdi (Mohammadpur)', 'OIN19-003766', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-7802', 'S.M Adiva Mahdi (Mohammadpur)', 'ADV-00012722', '20181023', '-300', '-200', 'KAM Agents BKASH (Lib) Rec.21-31 OCT\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10108-1138', 'Amir Ali (Shirajgong)', 'OIN18-037463', '20180816', '1125', '375', 'Synchronized from 13-Aug-18 to 13-Aug-18', '2109', 'Md. Akhtaruzzaman Sarkar - Sales  Executive (Rajshahi)', 'Circulation - Agency', '', ''),
('10108-1246', 'Chittagong Hawkers', 'OIN18-037408', '20180816', '42750', '5550', 'Synchronized from 12-Aug-18 to 12-Aug-18', '2013', 'Mr. Mahbubur Rahman', 'Circulation - Agency', '', ''),
('10112-2224', 'Rokomari (Dhaka)', 'OIN19-005284', '20190128', '1875', '1875', 'Synchronized from 15-Jan-19 to 15-Jan-19', '2108', 'Md. Ashaduzzaman - Sales  Executive (Khulna)', 'Circulation - Agency', '', ''),
('10112-2228', 'Abdullah Al Mamun ( Rohanpur )', 'OIN19-004923', '20190128', '750', '750', 'Synchronized from 15-Jan-19 to 15-Jan-19', '2108', 'Md. Ashaduzzaman - Sales  Executive (Khulna)', 'Circulation - Agency', '', ''),
('10112-1904', 'Md. Abdul Hamid (Kushtia)', 'OIN18-038160', '20180820', '2812.5', '2.5', 'Synchronized from 15-Aug-18 to 15-Aug-18', '2108', 'Md. Ashaduzzaman - Sales  Executive (Khulna)', 'Circulation - Agency', '', ''),
('10112-2762', 'M_S Wills Little Flower (Kakrail)', 'OIN18-045294', '20181125', '375', '225', 'Synchronized from 11/15/2018 to 11/15/2018', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', 'Circulation - Agency', '', ''),
('10112-2762', 'M_S Wills Little Flower (Kakrail)', 'OIN19-005131', '20190128', '750', '750', 'Synchronized from 15-Jan-19 to 15-Jan-19', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', 'Circulation - Agency', '', ''),
('10112-2762', 'M_S Wills Little Flower (Kakrail)', 'RPT-00069719', '20180911', '-563', '-0.5', 'BCM Agents CASH Rec. 11 SEP\'18', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', 'Circulation - Agency', '', ''),
('10112-2770', 'M_S Knowledge Books & Stationery (Banasree)', 'OIN19-005085', '20190128', '375', '375', 'Synchronized from 15-Jan-19 to 15-Jan-19', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', 'Circulation - Agency', '', ''),
('10112-3620', 'M_S Book Vision (Mirpur)', 'OCR18-015628', '20180701', '-75', '-0.5', 'Synchronized from 15-Dec-17 to 15-Dec-17', '1420', 'Md. Yousuf -  Circulation Executive', 'Circulation - Agency', '', ''),
('10112-3452', 'Moontaha Hossain (Niketon)', 'ADV-00013485', '20190113', '-600', '-600', 'BCM Agents BKASH (Lib) Rec.11-20 JAN\'19', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10112-4136', 'M_S School Library (Hobigonj)', 'OIN18-035620', '20180726', '562.5', '0.5', 'Synchronized from 25-Jul-18 to 25-Jul-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'Mr. Mofiz', 'Twon Halle, Main Road, Sadar', '01712160404'),
('10112-4956', 'M_S. College Library & Stationery (Motijhel)', 'OCR18-015779', '20180731', '-75', '-0.5', 'Synchronized from 15-Jul-18 to 15-Jul-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-5626', 'M_S. Boi Bitan Labirary & Stationery (Dhaka)', 'RPT-00078667', '20181222', '-188', '-0.5', 'BCM Agents CASH Rec. 22 DEC\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-7206', 'M_S :Rajendrapur Contonment School & College (Rajendrapur)', 'OIN18-044171', '20181019', '375', '375', 'Synchronized from 19-Oct-18 to 19-Oct-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('12102-1044', 'Adcomm Limited', 'BKN-00325751', '20181225', '201600', '201600', 'Meghna Petroleum - Visco bikes', '15035', 'Parvej', 'House 7A, Road 41', 'Gulshan - 2', ''),
('12102-1006', 'Abdullah Media Ad. Centre', 'BKN-00332765', '20190128', '92400', '92400', 'Eastern University', '1343', 'Joy', '1, Shahid Tajuddin Ahmed Sarani', 'Moghbazar Chowrasta', ''),
('12102-1070', 'Annex Communications Limited', 'BKN-00291238', '20180706', '36400', '36400', 'Popular Pharmaceuticals Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00312998', '20181024', '15400', '15400', 'Partex Group', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00314159', '20181031', '735000', '735000', 'Uttara Motors Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('10112-7058', 'M_S Udvash (Motijheel)', 'OIN18-040317', '20180924', '6000', '6000', 'Synchronized from 15-Sep-18 to 15-Sep-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('12102-1070', 'Annex Communications Limited', 'BKN-00320318', '20181126', '72800', '72800', 'Orion Pharma Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00304936', '20180917', '159600', '159600', 'Daffodil International University', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00305833', '20180921', '36400', '36400', 'Assurance Developments Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317361', '20181112', '63700', '63700', 'Bangladesh Edible Oil Limited (BEOL)', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00300659', '20180828', '15400', '15400', 'Techno Drugs Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00301459', '20180923', '99750', '99750', 'Navana Real Estate Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00301520', '20180912', '17325', '17325', 'GPH Ispat Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317832', '20181114', '109200', '109200', 'Southeast Bank Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317949', '20181118', '525000', '525000', 'Molla Salt (Triple Refined) Industry Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317989', '20181115', '184800', '184800', 'Partex Furniture Industries Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318122', '20181115', '36400', '36400', 'Orion Group', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318294', '20181117', '19250', '19250', 'Basic Builders Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318295', '20181117', '6825', '6825', '01755911617', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00301531', '20180906', '17325', '17325', 'GPH Ispat Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00301532', '20180908', '17325', '17325', 'GPH Ispat Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00301533', '20180910', '17325', '17325', 'GPH Ispat Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00301714', '20180910', '39900', '39900', 'Enam Medical College', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311542', '20181204', '16625', '16625', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311543', '20181206', '16625', '16625', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311544', '20181209', '16625', '16625', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311545', '20181211', '16625', '16625', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00299916', '20180819', '137200', '137200', 'Metrocem Cement Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00300114', '20180817', '4812', '4812', '(Page-9) 01714134393', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('10100-1002', 'A. H. Alam (Bhairab)', 'OIN18-038698', '20180831', '24732.5', '1122', 'Synchronized from 01-Aug-18 to 31-Aug-18', '1353', 'Shakhaowat', 'Circulation - Agency', '', ''),
('10106-3636', 'Mahmud Book Stoll (Comilla)', 'OIN19-003434', '20190110', '1312.5', '1312.5', 'Synchronized from 07-Jan-19 to 07-Jan-19', '2106', 'Mohammad Atikur Rahman - Regional Manager (Comilla)', 'Circulation - Agency', '', ''),
('10108-1246', 'Chittagong Hawkers', 'OIN19-002892', '20181227', '25500', '25500', 'Synchronized from 14-Dec-18 to 14-Dec-18', '2013', 'Mr. Mahbubur Rahman', 'Circulation - Agency', '', ''),
('10112-1346', 'Hekmot Ullah (Rajshahi)', 'OIN18-038206', '20180820', '7875', '375', 'Synchronized from 15-Aug-18 to 15-Aug-18', '2109', 'Md. Akhtaruzzaman Sarkar - Sales  Executive (Rajshahi)', 'Circulation - Agency', '', ''),
('10112-1788', 'Sree Subir Kumar (Kalihati)', 'OIN19-005401', '20190128', '225', '225', 'Synchronized from 15-Jan-19 to 15-Jan-19', '2105', 'Md. Abul Bashar - Regional Manager (Mymensing)', 'Circulation - Agency', '', ''),
('12102-1070', 'Annex Communications Limited', 'BKN-00317375', '20181112', '252000', '252000', 'US-Bangla Medical College and Hospital Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317376', '20181112', '119700', '119700', 'Daffodil International University', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317400', '20181112', '257600', '257600', 'Ashiyan Medical College Hospital', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00306754', '20180926', '36400', '36400', 'Murdoch University', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00306948', '20180927', '54600', '54600', 'Holy Land School and College', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00307112', '20180928', '159600', '159600', 'Orion Pharma Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00300660', '20180828', '27300', '27300', '01711538372', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1110', 'CARE Advertising', 'BKN-00328425', '20190109', '31850', '31850', 'Bangladesh University of Business and Technology (BUBT)', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1110', 'CARE Advertising', 'BKN-00328443', '20190109', '15400', '15400', 'Liton Dewan', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1110', 'CARE Advertising', 'BKN-00328647', '20190110', '3850', '3850', 'Shahjahan abdali', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1110', 'CARE Advertising', 'BKN-00328739', '20190110', '36400', '36400', 'City Dental College', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1070', 'Annex Communications Limited', 'BKN-00317750', '20181114', '68250', '68250', 'Save the Children', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318740', '20181118', '47775', '47775', 'Holy Land School and College', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318806', '20181118', '91000', '91000', 'People\'s Oriented Program Implementation (POPI)', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318896', '20181119', '8532', '8532', 'Page-9 - 01919681427', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318956', '20181119', '54600', '54600', 'People\'s Oriented Program Implementation (POPI)', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311560', '20181023', '16625', '16625', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311561', '20181025', '16625', '16625', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1110', 'CARE Advertising', 'BKN-00331309', '20190122', '102375', '102375', 'Dhaka Commerce College', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1110', 'CARE Advertising', 'BKN-00331616', '20190123', '6825', '6825', 'WCTL (Visa Service)', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1070', 'Annex Communications Limited', 'BKN-00318975', '20181119', '161700', '161700', 'Bombay Sweets and Company Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1110', 'CARE Advertising', 'BKN-00331936', '20190124', '7700', '7700', '01642329231', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1110', 'CARE Advertising', 'BKN-00332592', '20190127', '40950', '40950', 'Bangladesh University of Business and Technology (BUBT)', '1343', 'Joy', 'Motaleb Mansion', '2. R. K. Mission Road', '7121581, 7170857, 01711534222'),
('12102-1070', 'Annex Communications Limited', 'BKN-00315980', '20181106', '259200', '259200', 'Navana Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00315997', '20181110', '34125', '34125', 'Mir Group', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00316032', '20181107', '17062', '17062', 'Basic Builders Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00316043', '20181107', '70200', '70200', 'Popular Group', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00316056', '20181107', '52650', '52650', 'Sajeeb Corporation', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311578', '20181102', '49000', '49000', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00311580', '20181116', '49000', '49000', 'DBL Ceramics Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00319221', '20181220', '49000', '49000', 'Fresh Cement Industries Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00319238', '20181211', '19600', '19600', 'Partex Cables Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1098', 'Bitopi Advertising Ltd', 'BKN-00334212', '20190129', '8400', '8400', 'Bengal Meat Processing Industry', '1344', 'Iftekhar', 'Plot # 180, Block # B,', 'Bashundhara, (Opposite Bank Asia)', '8053418'),
('12102-1120', 'Concord Communication Co.Ltd.', 'BKN-00322031', '20181213', '99750', '99750', 'Fantasy Kingdom', '1344', 'Iftekhar', 'Concord Center', '43,North Commercial Area', '9896482 , 8814028 ,8814030'),
('12102-1070', 'Annex Communications Limited', 'BKN-00319367', '20181201', '157500', '157500', 'Surecell Medical', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00319368', '20181123', '179550', '179550', 'Radiant Pharmaceuticals Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1160', 'Expressions Ltd', 'BKN-00327212', '20190108', '19600', '19600', 'BBS Cables Limited', '1329', 'Arif', 'House # 10A, Road # 25A', 'Banani, Dhaka - 1213', '8832280,8832370,8832728 Ex-502'),
('12102-1070', 'Annex Communications Limited', 'BKN-00320521', '20181212', '199500', '199500', 'QVC', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1220', 'M.M. AD & International', 'BKN-00314233', '20181030', '3850', '3850', '01711832938', '1343', 'Joy', '2/2, R.K. Mission Road (Ground Floor)', 'Dhaka -1203', '7120593 , 9568403 , 9559307'),
('12102-1120', 'Concord Communication Co.Ltd.', 'BKN-00327825', '20190107', '147000', '147000', 'Concord Real Estate Limited', '1344', 'Iftekhar', 'Concord Center', '43,North Commercial Area', '9896482 , 8814028 ,8814030'),
('12102-1136', 'Diganto Advertising', 'BKN-00316394', '20181119', '7700', '7700', '01841413176', '1343', 'Joy', 'Paltan Tower, Suite # 602, (6th Floor)', '87, Purana Paltan Line', '9337908 , 9341209'),
('12102-1136', 'Diganto Advertising', 'BKN-00316395', '20181121', '15400', '15400', '01749478894', '1343', 'Joy', 'Paltan Tower, Suite # 602, (6th Floor)', '87, Purana Paltan Line', '9337908 , 9341209'),
('12102-1070', 'Annex Communications Limited', 'BKN-00321195', '20181205', '17325', '17325', 'GPH Ispat Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00322262', '20181208', '157500', '157500', 'Surecell Medical', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1122', 'Creative Communication Limited', 'BKN-00324693', '20190121', '525000', '525000', 'ACI Limited', '15035', 'Parvej', 'Road # 123, House # 18A,', 'Gulshan - 1', '8823249, 8822593, 011-815505'),
('12102-1070', 'Annex Communications Limited', 'BKN-00322773', '20181208', '28437', '28437', 'Basic Builders Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1122', 'Creative Communication Limited', 'BKN-00324709', '20181212', '16380', '16380', 'ACI Consumer Brands', '15035', 'Parvej', 'Road # 123, House # 18A,', 'Gulshan - 1', '8823249, 8822593, 011-815505'),
('12102-1122', 'Creative Communication Limited', 'BKN-00324867', '20181221', '139650', '139650', 'ACI Pharmaceuticals Limited', '15035', 'Parvej', 'Road # 123, House # 18A,', 'Gulshan - 1', '8823249, 8822593, 011-815505'),
('12102-1140', 'Discovery Advertising', 'BKN-00327547', '20190119', '27300', '27300', '(Ref: Sabur Sir, Page-9) 01926666102', '1343', 'Joy', '2, R.K. Mission Road', 'Motaleb Mansion(3rd Floor), Room No - 400', '9567984 , 9568957, 7172171'),
('12102-1070', 'Annex Communications Limited', 'BKN-00323849', '20181212', '93600', '93600', 'Rangs Motors Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1176', 'Gungchil Limited', 'BKN-00329506', '20190114', '45500', '45500', 'BRAC', '1343', 'Joy', '', '', '7121131, 0171146844,0172500817'),
('12102-1140', 'Discovery Advertising', 'BKN-00327560', '20190126', '7700', '7700', 'Kopotakkho Properties and Builders Limited', '1343', 'Joy', '2, R.K. Mission Road', 'Motaleb Mansion(3rd Floor), Room No - 400', '9567984 , 9568957, 7172171'),
('12102-1136', 'Diganto Advertising', 'BKN-00324549', '20181215', '15400', '15400', '01729076731', '1343', 'Joy', 'Paltan Tower, Suite # 602, (6th Floor)', '87, Purana Paltan Line', '9337908 , 9341209'),
('12102-1136', 'Diganto Advertising', 'BKN-00325874', '20181223', '91000', '91000', 'Rupayan Housing Estate Limited', '1343', 'Joy', 'Paltan Tower, Suite # 602, (6th Floor)', '87, Purana Paltan Line', '9337908 , 9341209'),
('12102-1160', 'Expressions Ltd', 'BKN-00327189', '20190116', '19600', '19600', 'BBS Cables Limited', '1329', 'Arif', 'House # 10A, Road # 25A', 'Banani, Dhaka - 1213', '8832280,8832370,8832728 Ex-502'),
('12102-1176', 'Gungchil Limited', 'BKN-00335813', '20190209', '81900', '81900', 'University of Asia Pacific (UAP)', '1343', 'Joy', '', '', '7121131, 0171146844,0172500817'),
('12102-1140', 'Discovery Advertising', 'BKN-00328878', '20190112', '7700', '7700', '01730090450', '1343', 'Joy', '2, R.K. Mission Road', 'Motaleb Mansion(3rd Floor), Room No - 400', '9567984 , 9568957, 7172171'),
('12102-1140', 'Discovery Advertising', 'BKN-00329767', '20190115', '7700', '7700', '01714090851', '1343', 'Joy', '2, R.K. Mission Road', 'Motaleb Mansion(3rd Floor), Room No - 400', '9567984 , 9568957, 7172171'),
('12102-1136', 'Diganto Advertising', 'BKN-00332620', '20190127', '54600', '54600', 'Rupayan Housing Estate Limited', '1343', 'Joy', 'Paltan Tower, Suite # 602, (6th Floor)', '87, Purana Paltan Line', '9337908 , 9341209'),
('12102-1136', 'Diganto Advertising', 'BKN-00332621', '20190127', '15400', '15400', '01729076731', '1343', 'Joy', 'Paltan Tower, Suite # 602, (6th Floor)', '87, Purana Paltan Line', '9337908 , 9341209'),
('12102-1220', 'M.M. AD & International', 'BKN-00314221', '20181030', '3850', '3850', 'International Education Center', '1343', 'Joy', '2/2, R.K. Mission Road (Ground Floor)', 'Dhaka -1203', '7120593 , 9568403 , 9559307'),
('12102-1120', 'Concord Communication Co.Ltd.', 'BKN-00327171', '20190105', '147000', '147000', 'Concord Real Estate Limited', '1344', 'Iftekhar', 'Concord Center', '43,North Commercial Area', '9896482 , 8814028 ,8814030'),
('12102-1070', 'Annex Communications Limited', 'BKN-00322260', '20181205', '81900', '81900', 'Manabik Shahajya Sangstha (MSS)', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1122', 'Creative Communication Limited', 'BKN-00323700', '20181214', '1023750', '1023750', 'ACI Logistics Limited', '15035', 'Parvej', 'Road # 123, House # 18A,', 'Gulshan - 1', '8823249, 8822593, 011-815505'),
('12102-1070', 'Annex Communications Limited', 'BKN-00322775', '20181208', '17062', '17062', 'Partex Builders Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00322778', '20181207', '54600', '54600', 'Saaol Heart Center Bangladesh Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1014', 'Activate Media Solutions Ltd', 'BKN-00330996', '20190121', '151200', '151200', 'Samsung Bangladesh', '1344', 'Iftekhar', 'Plot # 180, Block - B,', 'Bashundhara R/A', '8845133'),
('12102-1034', 'AD Trade', 'BKN-00321135', '20181210', '289800', '238700', 'Shahjalal Islami Bank Limited', '1343', 'Joy', '216, Shaheed Sayed Nazrul Islam Sarani', '(Old - 43 Topkhana Road) Manikgonj House (3rd Floor)', '9569634, 9564632, 01713012705'),
('12102-1034', 'AD Trade', 'BKN-00323859', '20181213', '137200', '137200', 'Shahjalal Islami Bank Limited', '1343', 'Joy', '216, Shaheed Sayed Nazrul Islam Sarani', '(Old - 43 Topkhana Road) Manikgonj House (3rd Floor)', '9569634, 9564632, 01713012705'),
('12102-1034', 'AD Trade', 'BKN-00327065', '20190107', '315000', '315000', 'Shahjalal Islami Bank Limited', '1343', 'Joy', '216, Shaheed Sayed Nazrul Islam Sarani', '(Old - 43 Topkhana Road) Manikgonj House (3rd Floor)', '9569634, 9564632, 01713012705'),
('12102-1070', 'Annex Communications Limited', 'BKN-00288073', '20180703', '252000', '252000', 'Trust Technology and Holdings Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('12102-1070', 'Annex Communications Limited', 'BKN-00288789', '20180701', '92400', '92400', 'Metal Private Limited', '1351', 'Mukter', '3/12-1, (Ground Floor)', 'Block - F, Lalmatia', '9124323 , 8156985'),
('10112-3454', 'Syed Lutfor Rahman (Uttar Basabo)', 'OIN19-005337', '20190128', '50', '50', 'Synchronized from 15-Jan-19 to 15-Jan-19', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10112-3464', 'Dharma and Biggan Gobeshona Kendro (Basabo)', 'OIN19-004974', '20190128', '50', '50', 'Synchronized from 15-Jan-19 to 15-Jan-19', '0000', 'Not Applicable', 'Circulation - Agency', '', ''),
('10112-3878', 'M_S. Feni Library (Feni)', 'RPT-00081162', '20190120', '-377', '-2', 'BCM Agents BKASH (Lib) Rec.11-20 JAN\'19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-3882', 'M_S. Grontho Mella (Noakhali)', 'RPT-00078395', '20181203', '-2250', '-375', 'BCM Agents BKASH (Lib) Rec.01-10 DEC\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-3884', 'M_S. Kabir Library (Noakhali)', 'RPT-00066560', '20180721', '-563', '-0.5', 'BCM Agents BKASH (Lib) Rec.21-31July\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-3884', 'M_S. Kabir Library (Noakhali)', 'RPT-00068364', '20180816', '-564', '-1.5', 'BCM Agents BKASH (Lib) Rec.11-20 AUG\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-3952', 'M_S Student Lib & Stationery (Dhaka)', 'OIN18-035629', '20180726', '187.5', '0.5', 'Synchronized from 15-Jul-18 to 15-Jul-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'C/O Biplob Saha', '14/22 Asad Avenue, Mohammadpur', ''),
('10112-3952', 'M_S Student Lib & Stationery (Dhaka)', 'OIN18-037726', '20180820', '187.5', '0.5', 'Synchronized from 15-Aug-18 to 15-Aug-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'C/O Biplob Saha', '14/22 Asad Avenue, Mohammadpur', ''),
('10112-3952', 'M_S Student Lib & Stationery (Dhaka)', 'OIN18-045283', '20181125', '187.5', '112.5', 'Synchronized from 11/15/2018 to 11/15/2018', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'C/O Biplob Saha', '14/22 Asad Avenue, Mohammadpur', ''),
('10112-3952', 'M_S Student Lib & Stationery (Dhaka)', 'OIN19-002362', '20181224', '187.5', '74.5', 'Synchronized from 18-Dec-18 to 18-Dec-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'C/O Biplob Saha', '14/22 Asad Avenue, Mohammadpur', ''),
('10112-4190', 'Mursalin Sorkar Rafi (Rajendrapur)', 'ADV-00011378', '20180828', '-600', '-450', 'BCM Agents BKASH (Lib) Rec.21-31 AUG\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-4208', 'M_S Alif Library (Narayongonj)', 'OCR18-017080', '20180701', '-75', '-0.5', 'Synchronized from 16-Oct-17 to 16-Oct-17', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '4 Pouro Biponi Bitan (Side of Minnat Ali Sha Mazar)', 'Narayongonj', '01915193592'),
('10112-4956', 'M_S. College Library & Stationery (Motijhel)', 'OCR18-016160', '20180930', '-75', '-0.5', 'Synchronized from 15-Sep-18 to 15-Sep-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-3970', 'M_S Engri Birds (Dhaka)', 'OCR18-013889', '20180701', '-150', '-0.5', 'Synchronized from 08-Jun-18 to 08-Jun-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'arif Hossen', 'KHA-153 South Badda (Alatun Nessa School Gate)', '01677555999'),
('10112-3972', 'M_S Ittadi Library & Stationery (Dhaka)', 'OCR18-013775', '20180701', '-187.5', '-187', 'Synchronized from 16-Apr-18 to 16-Apr-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', 'Safiullah', 'KHA-153 South Badda (Alatun Nessa School Gate)', '01816009160'),
('10112-5350', 'Md. Hasan (Feni)', 'OIN19-005193', '20190128', '50', '50', 'Synchronized from 15-Jan-19 to 15-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-5356', 'Dr. Gazi Golam Mostofa (Dhaka)', 'ADV-00013511', '20190122', '-600', '-600', 'BCM Agents BKASH (Lib) Rec.21-31 JAN\'19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-4016', 'Bangladesh Shishu Academy (Shahbag)', 'OIN18-037568', '20180820', '2345', '2345', 'Synchronized from 15-Aug-18 to 15-Aug-18', '0000', 'Not Applicable', '', '', ''),
('10112-5638', 'Faysal Mahmud Khan (Dhaka)', 'OIN19-004990', '20190128', '50', '50', 'Synchronized from 15-Jan-19 to 15-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-5556', 'M_S Jahan Libraray & Stationery (Mirpur)', 'OCR18-013705', '20180701', '-112.5', '-0.5', 'Synchronized from 16-Apr-18 to 16-Apr-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-5556', 'M_S Jahan Libraray & Stationery (Mirpur)', 'OIN18-037680', '20180820', '187.5', '0.5', 'Synchronized from 15-Aug-18 to 15-Aug-18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-5556', 'M_S Jahan Libraray & Stationery (Mirpur)', 'OIN19-005076', '20190128', '375', '375', 'Synchronized from 15-Jan-19 to 15-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-5556', 'M_S Jahan Libraray & Stationery (Mirpur)', 'RPT-00069633', '20180911', '-188', '-0.5', 'BCM Agents CASH Rec. 11 SEP\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-7150', 'Bahar Enterprise (Rampura)', 'RPT-00077434', '20181206', '-1313', '-0.5', 'BCM Agents CASH Rec. 06 DEC\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-1346', 'Hekmot Ullah (Rajshahi)', 'OIN18-044137', '20181018', '7875', '875', 'Synchronized from 15-Oct-18 to 15-Oct-18', '2109', 'Md. Akhtaruzzaman Sarkar - Sales  Executive (Rajshahi)', 'Circulation - Agency', '', ''),
('10112-1346', 'Hekmot Ullah (Rajshahi)', 'OIN18-045723', '20181125', '7500', '200', 'Synchronized from 11/15/2018 to 11/15/2018', '2109', 'Md. Akhtaruzzaman Sarkar - Sales  Executive (Rajshahi)', 'Circulation - Agency', '', ''),
('10106-7586', 'Md.Ajwad Raihan (Mirpur)', 'OIN19-003603', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-7586', 'Md.Ajwad Raihan (Mirpur)', 'ADV-00012220', '20181011', '-300', '-200', 'KAM Agents BKASH (Lib) Rec.11-20 OCT\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-7588', 'Palash Chandra Das (Panthopath)', 'OIN19-003725', '20190110', '50', '50', 'Synchronized from 07-Jan-19 to 07-Jan-19', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10106-7588', 'Palash Chandra Das (Panthopath)', 'ADV-00012221', '20181011', '-300', '-200', 'KAM Agents BKASH (Lib) Rec.11-20 OCT\'18', '1423', 'Khan Imam Hassain - Asst. Manager (Circulation)', '', '', ''),
('10112-1788', 'Sree Subir Kumar (Kalihati)', 'ADV-00013392', '20190114', '-225', '-225', 'BCM Agents BKASH Rec.11-20 JAN\'19', '2105', 'Md. Abul Bashar - Regional Manager (Mymensing)', 'Circulation - Agency', '', ''),
('10112-2778', 'M_S Boi Ghar Library (Khilgaon)', 'OIN18-035542', '20180726', '187.5', '0.5', 'Synchronized from 15-Jul-18 to 15-Jul-18', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', 'Circulation - Agency', '', ''),
('10112-2778', 'M_S Boi Ghar Library (Khilgaon)', 'OIN19-002289', '20181224', '187.5', '37.5', 'Synchronized from 18-Dec-18 to 18-Dec-18', '1415', 'Md. Abdulla Hel Rafi - Sales Executive', 'Circulation - Agency', '', ''),
('10112-2228', 'Abdullah Al Mamun ( Rohanpur )', 'ADV-00013378', '20190114', '-750', '-750', 'BCM Agents BKASH Rec.11-20 JAN\'19', '2108', 'Md. Ashaduzzaman - Sales  Executive (Khulna)', 'Circulation - Agency', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rajibsaha@gmail.com', '$2y$10$v2FgqUb0q7ElSmFk0bqzaOhcc.0t9QkqPhyvjLT4hrIkGI3MbyBs.', '2021-10-02 00:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rajib Saha', 'rajibsaha@gmail.com', NULL, '$2y$10$/aubm7EuA0xDH7Cf36pvC.dM9/Gd4YV33SfrEuTK2AvJLXwBTszZW', NULL, '2021-10-02 02:31:24', '2021-10-02 02:31:24'),
(2, 'Mukter', 'n@gmail.com', NULL, '$2y$10$niJ2dlymDBlMB64CBN98R.1s5I0IHsuVKxNByUnTdZECu1Zopsxty', NULL, '2021-10-03 01:31:53', '2021-10-03 01:31:53'),
(3, 'Md. Abdulla Hel Rafi - Sales Executive', 'r@gmail.com', NULL, '$2y$10$QvFI89B5q0k1g5HS2XxQz.H05HL4OBAHT0QaQ6TETVKVaW00jxRTq', NULL, '2021-10-03 01:36:39', '2021-10-03 01:36:39'),
(4, 'Md. Ashaduzzaman - Sales  Executive (Khulna)', 'd@gmail.com', NULL, '$2y$10$vEuj.ncxG.APQzWDI8swAe5bqsj04AwGEl7V0JEatZw0i2jMI0HQm', NULL, '2021-10-03 01:38:34', '2021-10-03 01:38:34'),
(5, 'Md. Yousuf -  Circulation Executive', 't@gmail.com', NULL, '$2y$10$lXZkytOBCLKCDudUWV327.OOWyo0mmwWCDYqP4iurgv5YbQJK3YU6', NULL, '2021-10-03 02:08:44', '2021-10-03 02:08:44'),
(6, 'Joy', 'joy@gmail.com', NULL, '$2y$10$q8rcnuQq7Ro0CQUpncmKnOHm7hLEIBiEUPtbmmn0dlWfLfds4Imui', NULL, '2021-10-03 02:48:44', '2021-10-03 02:48:44'),
(7, 'Khan Imam Hassain', 'ee@gmail.com', NULL, '$2y$10$aFbdoXTq3KOmZHxcj2hpvezLxVerFFwz46sfJrCej0UYjWuahzqQ.', NULL, '2021-10-03 05:14:20', '2021-10-03 05:14:20'),
(8, 'Khan Imam Hassain - Asst. Manager (Circulation)', 'rrerr@gmail.com', NULL, '$2y$10$doecNJEFLwz1gEnY56iI8e8DtlNQyiagfo1jx61yFM9YzaOZFffKa', NULL, '2021-10-03 05:15:37', '2021-10-03 05:15:37'),
(9, '1423', 'SSS@GMAIL.COM', NULL, '$2y$10$Wle/bI4oktG5ntdQSXyYw.JTIVAstKik6U47RfhvsoeG349pBpzG2', NULL, '2021-10-04 02:35:52', '2021-10-04 02:35:52'),
(10, '1415', 'tt@gmail.com', NULL, '$2y$10$lldR8wWfQawAk4RCyqq69uudJ/CzRkaW6ul8/aKwWX4VPxJoVt5/a', NULL, '2021-10-04 22:23:12', '2021-10-04 22:23:12'),
(11, '0000', 'o@gmail.com', NULL, '$2y$10$T/0LIZsKkM0RH0wDNeDF7O/WwkhVjdp6Z1vVlqqyuBzgst/Ge/FpG', NULL, '2021-10-06 04:03:13', '2021-10-06 04:03:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
