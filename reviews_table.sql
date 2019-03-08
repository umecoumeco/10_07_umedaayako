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
-- テーブルの構造 `reviews_table`
--

CREATE TABLE IF NOT EXISTS `reviews_table` (
`id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `service_id` int(8) NOT NULL,
  `responda_a` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responda_b` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responda_c` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_all` int(3) NOT NULL,
  `reviews_point_a` int(3) NOT NULL,
  `reviews_point_b` int(3) NOT NULL,
  `reviews_point_c` int(3) NOT NULL,
  `reviews_point_d` int(3) NOT NULL,
  `reviews_point_e` int(3) NOT NULL,
  `reviews_point_f` int(3) NOT NULL,
  `reviews_text_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviews_text_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviews_text_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviews_text_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviews_text_e` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviews_text_f` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `reviews_table`
--

INSERT INTO `reviews_table` (`id`, `user_id`, `service_id`, `responda_a`, `responda_b`, `responda_c`, `reviews_all`, `reviews_point_a`, `reviews_point_b`, `reviews_point_c`, `reviews_point_d`, `reviews_point_e`, `reviews_point_f`, `reviews_text_a`, `reviews_text_b`, `reviews_text_c`, `reviews_text_d`, `reviews_text_e`, `reviews_text_f`, `service_name`) VALUES
(1, 1, 1, '10000名以上', '製造業', 'ユーザー', 4, 4, 3, 5, 4, 3, 4, '年間1000万円のコストダウンに成功している。', 'ユーザーインターフェースはあまりよくない。なれるまでに時間がかかる。', 'リリースのタイミングが年4回あり、要望が機能に反映されやすい。', '機能網羅率が高く、ほぼ標準機能でカバーできている。', 'ユーザー会で、他社の利用方法を聞いたり、他社の効果が高い使い方を参考にすることができる。', 'ノーカスタマイズのため、バージョンアップに時間がかからない。', 'COMPANY人事給与'),
(2, 1, 1, '5000名～10000名', 'サービス業', '決裁者', 3, 4, 5, 5, 4, 2, 4, 'コストダウンの効果測定はこれからである。', 'ユーザーインターフェースはもう少し使いやすくなってほしいと思う。', 'バージョンアップの回数が多く満足している。', '標準で備わっている機能は多い。', '毎月のお知らせで新機能や他社の成功事例がでているのがとてもよい。', 'マイナンバー等の対応がとても早くてよかった。', 'COMPANY人事給与');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews_table`
--
ALTER TABLE `reviews_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews_table`
--
ALTER TABLE `reviews_table`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
