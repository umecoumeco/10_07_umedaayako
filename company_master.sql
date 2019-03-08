-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 3 朁E08 日 03:32
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `10_07_umedaayako`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `company_master`
--

CREATE TABLE IF NOT EXISTS `company_master` (
`id` int(12) NOT NULL,
  `service_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `company_master`
--

INSERT INTO `company_master` (`id`, `service_name`, `company_name`, `category`) VALUES
(1, 'COMPANY人事給与', '株式会社ワークスアプリケーションズ', '労務・給与計算'),
(2, 'COMPANY Web Service', '株式会社ワークスアプリケーションズ', '申請・ワークフロー'),
(3, 'HRMOS採用管理システム', '株式会社ビズリーチ', '採用管理');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_master`
--
ALTER TABLE `company_master`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
