-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 08:07 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sulaf`
--

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `type`) VALUES
(1, 'صيانة اليات', 1),
(2, 'سيارات', 1),
(3, 'حراسات', 1),
(4, 'مخصصات أطعام', 1),
(5, 'ايفادات', 0),
(6, 'تشغيل عمال', 1),
(7, 'فحوصات مختبرية', 0),
(8, 'تأجير أليات', 1),
(9, 'وقود', 0),
(10, 'مستلزمات', 0),
(11, 'الزيوت والشحوم', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `name`) VALUES
(1, 'عقد'),
(2, 'أجر');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`) VALUES
('admin', 'admin', 'Admin'),
('user1', '12345', 'user'),
('admin', 'admin', 'admin'),
('admin', 'admin', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `id_register` int(6) UNSIGNED NOT NULL,
  `user_level` tinyint(1) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `userPass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`id_register`, `user_level`, `userName`, `userPass`) VALUES
(1, 1, 'enas', 'enasenas'),
(2, 0, 'anmar', 'anmaranmar'),
(3, 0, 'majed', 'majedmajed');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `amount` float NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `protype` int(1) NOT NULL,
  `type` int(10) NOT NULL,
  `food` decimal(20,0) NOT NULL,
  `maintain` decimal(20,0) NOT NULL,
  `rent_car` decimal(20,0) NOT NULL,
  `worker` decimal(20,0) NOT NULL,
  `oil` decimal(20,0) NOT NULL,
  `car` decimal(20,0) NOT NULL,
  `gard` decimal(20,0) NOT NULL,
  `producer` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `amount`, `price`, `unit`, `protype`, `type`, `food`, `maintain`, `rent_car`, `worker`, `oil`, `car`, `gard`, `producer`) VALUES
(1, 'سداد الكفاخ', 0, '0', '0', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(2, 'كسرة أيسر الكسارة', 0, '0', '0', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(3, 'سداد نهر الجهاد', 0, '0', '0', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(4, 'الكتف الايمن لنهر بيت هارف', 0, '0', '0', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(5, 'سداد شرق دجلة', 0, '0', '0', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(6, 'مستلزمات مقر ', 0, '0', '0', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(7, 'اعمال ازالة نبات زهرة النيل ', 0, '0', 'كم.ط', 0, 2, '0', '0', '0', '0', '0', '0', '0', 0),
(8, 'حفارة ذ.ق/ج1 مبطن', 0, '127000', 'كم.ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(9, 'حفارة ذ.ق/ح2 مبطن', 0, '178000', 'كم.ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(10, 'حفارة ذ.ط/ج1 مبطن', 0, '192', 'كم.ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(11, 'حفارة ذ.ط/ج2 مبطن', 0, '268000', 'كم.ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(12, 'حفارات سلكية', 0, '1500000', 'كم.ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(13, 'حفارات برمائية', 10, '860000', 'كم.ط', 1, 1, '100000', '780', '0', '0', '0', '0', '0', 0),
(14, 'حفارة ذ.ط/ج2 ترابية', 0, '430000', 'كم-ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(15, 'حفارة ذ.ط/ج1 ترابية ', 156, '307000', 'كم-ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(16, 'حفارة ذ.ق/ج2 ترابية', 0, '294000', 'كم-ط', 1, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(17, 'حفارة ذ.ق/ج1 ترابية', 196, '210000', 'متر مكعب', 1, 1, '550', '1000', '0', '0', '0', '0', '0', 0),
(18, 'حفريات / حفارة ذ.ق ', 5, '300', 'متر مكعب', 2, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(19, 'حفريات /حفارة ذ.ط', 0, '500', 'متر مكعب', 2, 1, '0', '0', '0', '0', '0', '0', '0', 0),
(20, 'تطهير حفارة ذ.ق ج1 ترابي', 550, '160000', 'كم-ط', 3, 3, '13636', '58909', '0', '0', '12727', '13636', '29091', 1.1),
(21, 'تطهير حفارة ذ.ق ج2 ترابي', 395, '225000', 'كم.ط', 3, 3, '18987', '83797', '0', '0', '17722', '18987', '40506', 0.79),
(22, 'تطهير حفارة ذ.ق ج1 مبطن', 900, '100000', 'كم-ط', 3, 3, '8333', '37778', '0', '0', '7778', '8333', '17778', 1.8),
(23, 'تطهير حفارة ذ.ق ج2 مبطن', 640, '140000', 'كم.ط', 3, 3, '11719', '52625', '0', '0', '10938', '11719', '25000', 1.28),
(24, 'تطهير حفارة ذ.ط ج1ترابي', 375, '235000', 'كم-ط', 3, 3, '20000', '86667', '0', '0', '18667', '20000', '42667', 0.75),
(25, 'تطهير حفارة ذ.ط ج2 ترابي', 270, '330000', 'كم.ط', 3, 3, '27778', '123259', '0', '0', '25926', '27778', '59259', 0.54),
(26, 'تطهير حفارة ذ.ط ج1 مبطن', 600, '150000', 'كم-ط', 3, 3, '12500', '56667', '0', '0', '11667', '12500', '26667', 1.2),
(27, 'تطهير حفارة د.ط ج2 مبطن', 430, '210000', 'كم.ط', 3, 3, '17442', '79504', '0', '0', '16279', '17442', '37333', 0.86),
(28, 'تطهير بالحفارات السلكية', 125, '750000', 'كم-ط', 3, 3, '50000', '282000', '0', '64000', '80000', '60000', '128000', 0.5),
(29, 'الحفارات البرمائية', 160, '550000', 'كم.ط', 3, 3, '46875', '215000', '0', '50000', '31250', '46875', '100000', 1.1),
(30, 'بأستخدام حفارة ذ.ق', 325, '300', 'متر مكعب', 4, 4, '27', '122', '0', '0', '19', '23', '49', 1300),
(31, 'بأستخدام حفارة ذ.ط', 275, '350', 'متر مكعب', 4, 4, '32', '140', '0', '0', '23', '27', '58', 1100),
(32, 'باستخدام الحفارة السلكية', 230, '400', 'متر مكعب', 4, 4, '27', '180', '0', '0', '11', '33', '70', 920),
(33, 'باستخدام الحفارات البرمائية', 175, '500', 'متر مكعب', 4, 4, '43', '194', '0', '46', '29', '43', '91', 350),
(34, 'حفارات ذ.ق ترابي', 0.75, '120000', 'كم.ط', 5, 5, '10000', '48000', '0', '0', '6667', '10000', '21333', 3),
(35, 'حفارات ذ.ط ترابي', 0.6, '150000', 'كم.ط', 5, 5, '12500', '60000', '0', '0', '8333', '12500', '26667', 2.4),
(36, 'حفارات ذ.ق مبطن', 1, '90000', 'كم.ط', 5, 5, '7500', '36000', '0', '0', '5000', '7500', '16000', 4),
(37, 'حفارات ذ.ط مبطن', 0.8, '110000', 'كم.ط', 5, 5, '9375', '43000', '0', '0', '6250', '9375', '20000', 3.2),
(38, 'السلاسل حفارة شفل عدد 2 ترابي حكومي', 4, '90000', 'كم.ط', 5, 5, '6250', '21250', '0', '16000', '5000', '7500', '16000', 4),
(39, 'السلاسل حفارة شفل عدد 2 مبطن حكومي', 5, '72000', 'كم.ط', 5, 5, '5000', '20200', '0', '12800', '4000', '6000', '9600', 5),
(40, 'السلاسل حفارة تراكتور مؤجر عدد 2 ترابي', 0, '82000', 'كم.ط', 5, 5, '3750', '8100', '25000', '16000', '1250', '7500', '4000', 4),
(41, 'السلاسل حفارة تراكتور مؤجر عدد 2 مبطن', 0, '65000', 'كم.ط', 5, 5, '3000', '6000', '20000', '12800', '1000', '6000', '3200', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sulfa`
--

CREATE TABLE `sulfa` (
  `id` int(10) UNSIGNED NOT NULL,
  `cost` decimal(20,0) NOT NULL,
  `num` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `type` int(10) NOT NULL,
  `cat` int(10) NOT NULL,
  `pro` int(10) NOT NULL,
  `des` longtext NOT NULL,
  `firstdate` date NOT NULL,
  `seconddate` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `cont` int(10) NOT NULL,
  `contN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sulfa`
--

INSERT INTO `sulfa` (`id`, `cost`, `num`, `date`, `type`, `cat`, `pro`, `des`, `firstdate`, `seconddate`, `name`, `size`, `download`, `cont`, `contN`) VALUES
(278, '100', '1', '2021-01-13', 1, 1, 1, 'dfsdsa', '2021-01-04', '2021-01-22', 'trainer.jpg', 155948, 0, 1, 0),
(279, '55000', '120', '2021-02-17', 2, 11, 26, 'يشبيش', '2021-02-28', '2021-02-08', 'health_declaration_20211.pdf', 257651, 0, 1, 800),
(280, '100000', '100', '2021-02-16', 1, 3, 13, 'تت', '2021-02-24', '2021-02-05', 'proposal_two.pdf', 182618, 0, 1, 52214),
(281, '46875', '101', '2021-02-15', 1, 4, 13, 'اا', '2021-03-02', '2021-02-02', 'statement_of_representation_20211.pdf', 9523, 0, 1, 55),
(282, '46875', '200', '2021-02-09', 1, 2, 13, 'تن', '2021-02-16', '2021-02-13', 'statement_of_representation_20211.pdf', 9523, 0, 2, 522),
(283, '31250', '144', '2021-02-15', 1, 11, 13, 'غلعل', '2021-02-17', '2021-02-10', 'statement_of_representation_20211.pdf', 9523, 0, 1, 52214),
(284, '215000', '145', '2021-02-17', 1, 1, 13, 'اه', '2021-02-18', '2021-02-09', 'proposal_two.pdf', 182618, 0, 1, 55),
(285, '50000', '847', '2021-02-14', 1, 6, 13, 'تتات', '2021-02-25', '2021-02-09', 'Proposal_one.pdf', 193879, 0, 2, 522);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploads`
--

CREATE TABLE `tbl_uploads` (
  `id` int(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_uploads`
--

INSERT INTO `tbl_uploads` (`id`, `file`, `type`, `size`) VALUES
(25, '87030-file.png', 'image/png', 3336);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'خطة '),
(2, 'ميزانية');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`id_register`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sulfa`
--
ALTER TABLE `sulfa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `id_register` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `sulfa`
--
ALTER TABLE `sulfa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
