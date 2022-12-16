-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 22, 2022 lúc 08:16 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoppingmall`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

DROP TABLE IF EXISTS `db_category`;
CREATE TABLE IF NOT EXISTS `db_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(46, 'Laptop', 'laptop', 1, 0, '', '2022-11-10 14:22:22', '1', '2022-11-10 14:22:22', '1', 1, 1),
(47, 'Laptop Gaming', 'laptop-gaming', 1, 0, '', '2022-11-10 14:22:37', '1', '2022-11-10 14:22:37', '1', 1, 1),
(48, 'Máy tính để bàn', 'may-tinh-de-ban', 1, 0, '', '2022-11-10 14:22:49', '1', '2022-11-10 14:22:49', '1', 1, 1),
(49, 'Linh kiện máy tính', 'linh-kien-may-tinh', 1, 0, '', '2022-11-10 14:23:03', '1', '2022-11-10 14:23:03', '1', 1, 1),
(50, 'Màn hình', 'man-hinh', 1, 0, '', '2022-11-10 14:23:15', '1', '2022-11-10 14:23:15', '1', 1, 1),
(51, 'Gaming Gear', 'gaming-gear', 1, 0, '', '2022-11-10 14:23:28', '1', '2022-11-10 14:23:28', '1', 1, 1),
(52, 'Thiết bị ngoại vi', 'thiet-bi-ngoai-vi', 1, 0, '0', '2022-11-10 14:23:41', '1', '2022-11-19 21:19:00', '1', 1, 1),
(53, 'Thiết bị văn phòng', 'thiet-bi-van-phong', 1, 0, '', '2022-11-10 14:23:53', '1', '2022-11-10 14:23:53', '1', 1, 1),
(54, 'test Võ Trường', 'test-vo-truong', 1, 0, '0', '2022-11-19 21:08:03', '1', '2022-11-19 21:08:03', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

DROP TABLE IF EXISTS `db_config`;
CREATE TABLE IF NOT EXISTS `db_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'truong.vd2000@gmail.com', 'uerhehipolmuwlnk', 'truong.vd2000@gmail.com', '25000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

DROP TABLE IF EXISTS `db_contact`;
CREATE TABLE IF NOT EXISTS `db_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trash` int(11) NOT NULL DEFAULT '1',
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(1, 'Not validation my password with Codeigniter', '08768484671', 'truong.vd2000@gmail.com', 'hello there', '2022/11/19', 1, 1, 'Võ Đang Trường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

DROP TABLE IF EXISTS `db_content`;
CREATE TABLE IF NOT EXISTS `db_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(2, 'BỘ 3 PHIÊN BẢN LG GRAM 2022 CÓ GÌ ĐẶC BIỆT ???', 'bo-3-phien-ban-lg-gram-2022-co-gi-dac-biet', 'Laptop LG gram 2022 ra mắt với 3 phiên bản đặc biệt và quen thuộc tương ứng với 3 kích thước: 14 inch, 16 inch và 17 inch. Điểm đặt biệt ở đây đáng được nhắc đến đó chính là việc được tích hợp chiếc CPU gen 12 dòng P cực kỳ mạnh mẽ, màn hình cũng được thiết kế lại nhìn sáng và đẹp hơn. Và còn điều đặc biệt nhất nữa là LG GRAM 2022 hộ trợ nhiều tính năng bảo mật cực kỳ cao cấp.', '<p><img alt=\"BỘ 3 PHIÊN BẢN LG GRAM 2022 CÓ GÌ ĐẶC BIỆT ???\" src=\"https://file.hstatic.net/1000233206/article/314912917_5737439509649836_5060808872754320490_n_8cf84102acae4ba0a3485d05aa08014c.jpg\" /></p>\r\n\r\n<p><strong><a href=\"https://hangchinhhieu.vn/collections/laptop-lg-gram-2022\">Laptop LG gram 2022</a></strong>&nbsp;ra mắt với 3 phi&ecirc;n bản đặc biệt v&agrave; quen thuộc tương&nbsp;ứng với 3 k&iacute;ch thước: 14 inch, 16 inch v&agrave; 17 inch. Điểm đặt biệt ở đ&acirc;y đ&aacute;ng được nhắc đến đ&oacute; ch&iacute;nh l&agrave;&nbsp;việc được t&iacute;ch hợp chiếc CPU gen 12 d&ograve;ng P cực kỳ mạnh mẽ, m&agrave;n h&igrave;nh cũng được thiết kế lại nh&igrave;n s&aacute;ng v&agrave; đẹp hơn. V&agrave; c&ograve;n điều đặc biệt nhất nữa l&agrave; LG GRAM 2022 hộ trợ nhiều t&iacute;nh năng bảo mật cực kỳ cao cấp.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/lg-gram-2022-khi-nao-ra-mat-2-min_794ce6167182449ab6e94e6887de0ecd_grande.jpg\" /></p>\r\n\r\n<p>Kh&aacute; bất ngời đ&uacute;ng kh&ocirc;ng n&agrave;o, c&ugrave;ng chờ đ&oacute;n những điều b&iacute; ẩn sắp được bật m&iacute; c&ugrave;ng H&agrave;ng Ch&iacute;nh Hiệu nh&eacute; !!!</p>\r\n\r\n<p><strong>Về thiết kế th&igrave; c&oacute; g&igrave; thay đổi ???</strong></p>\r\n\r\n<p>Bộ 3 phi&ecirc;n bản Laptop quốc d&acirc;n LG GRAM 2022 so với c&aacute;c phi&ecirc;n bản&nbsp;<strong><a href=\"https://hangchinhhieu.vn/collections/laptop-lg-gram-2021\">LG GRAM 2021</a></strong>&nbsp;th&igrave; kh&ocirc;ng c&oacute; qu&aacute; nhiều sự thay đổi.&nbsp;Với khối lượng chưa đến 1 kg, bạn dễ d&agrave;ng mang LG gram 2022, thậm ch&iacute; kh&ocirc;ng cần mang theo bộ sạc v&igrave; thời lượng pin đến 23,5 giờ trong một lần sạc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/2_f2eb4819f5c8425082780f6b8e156431_grande.jpg\" /></p>\r\n\r\n<p>Về mặt thiết kế&nbsp;Khung m&aacute;y l&agrave;m từ hợp kim magie-nano carbon đạt độ bền ti&ecirc;u chuẩn qu&acirc;n đội MIL-STD-810G.&nbsp;Cho độ bền cao c&ugrave;ng c&acirc;n nặng cũng kh&aacute; ấn tượng tương ứng,&nbsp;17 inch - 1350 gram , 16 inch - 1190 gram, 14 inch -&nbsp; 999 gram.&nbsp;Trải qua nhiều b&agrave;i test khắc&nbsp;nghiệt n&ecirc;n cho d&ugrave;&nbsp;bị rơi hay xe c&aacute;n qua, m&aacute;y vẫn hoạt động tốt.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cho bộ 03 phi&ecirc;n bản quốc d&acirc;n n&agrave;y vẫn được giữ nguy&ecirc;n về k&iacute;ch thước. Tỷ lệ m&agrave;n h&igrave;nh 16:10 tiện dụng hơn cho những người d&ugrave;ng văn ph&ograve;ng, s&aacute;ng tạo.&nbsp;Phi&ecirc;n bản LG GRAM 14 t&iacute;ch hợp m&agrave;n h&igrave;nh 14 inch độ ph&acirc;n giải FHD+, c&ograve;n LG GRAM 16 l&agrave; 16 inch v&agrave; LG GRAM 17 l&agrave; 17 inch đồng nhất độ ph&acirc;n giải&nbsp;2K+.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/311168001_5640347729359015_1371030758523502912_n_b9d1ee180dc84e0b8f124dd10db1efaa_grande.jpg\" /></p>\r\n\r\n<p>Một sự thay đổi kh&aacute;c đ&oacute; ch&iacute;nh l&agrave;<a href=\"https://hangchinhhieu.vn/collections/laptop-lg-gram-2022\">&nbsp;LG GRAM 2022</a>&nbsp;đ&atilde; loại bỏ m&agrave;n h&igrave;nh gương, thay v&agrave;o đ&oacute; l&agrave; c&ocirc;ng nghệ m&agrave;n h&igrave;nh nh&aacute;m cho khả năng hiển thị m&agrave;u sắc, độ s&aacute;ng, chống phản chiếu h&igrave;nh ảnh b&ecirc;n ngo&agrave;i v&agrave;o m&agrave;n h&igrave;nh cho chất lượng h&igrave;nh ảnh được tốt hơn rất nhiều.</p>\r\n\r\n<p><strong>Bảo mật hơn, thoải m&aacute;i l&agrave;m việc</strong></p>\r\n\r\n<p>T&iacute;nh năng bảo mật chống nh&igrave;n trộm tr&ecirc;n m&aacute;y gi&uacute;p nhận diện khi bạn quay đi hướng kh&aacute;c hoặc người kh&aacute;c nh&igrave;n v&agrave;o m&agrave;n h&igrave;nh. Chưa hết, trải nghiệm l&agrave;m việc ban ng&agrave;y ngo&agrave;i trời vẫn được đảm bảo v&igrave; m&agrave;n h&igrave;nh được trang bị tấm nền chống l&oacute;a, đảm bảo hiển thị r&otilde; n&eacute;t, chi tiết. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-lg-gram-2022\">LG gram 2022</a>&nbsp;sẽ nhanh ch&oacute;ng gửi cảnh b&aacute;o nếu ph&aacute;t hiện bạn ngồi sai tư thế.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/31d05763-e8a9-4851-812f-47eaf9b99665_a451def2e1434cbfba6ef8cb8d0f16fd_grande.png\" /></p>\r\n\r\n<p>D&ugrave; hyrid working hay l&agrave;m ở văn ph&ograve;ng theo c&aacute;ch truyền thống, chọn đ&uacute;ng h&agrave;nh trang v&agrave; bỏ t&uacute;i b&iacute; k&iacute;p l&agrave;m việc hiệu quả tr&ecirc;n, bạn sẽ lu&ocirc;n ho&agrave;n th&agrave;nh tốt c&ocirc;ng việc nhẹ nh&agrave;ng, đơn giản; đồng thời c&oacute; th&ecirc;m cảm hứng để tạo n&ecirc;n nhiều gi&aacute; trị mới.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/313402912_5717669001626887_5686732188970903372_n_ac425210f60e4fed88e89953e8789100_grande.jpg\" /></p>\r\n\r\n<p><a href=\"https://hangchinhhieu.vn/collections/laptop-lg-gram-2022\">LG gram 2022</a>&nbsp;gồm 3 m&agrave;u thời trang: Trắng, đen, x&aacute;m than, ch&iacute;nh thức l&ecirc;n kệ&nbsp;<a href=\"https://hangchinhhieu.vn/\">H&agrave;ng Ch&iacute;nh Hiệu</a>&nbsp;với gi&aacute; từ 21,990,000 đồng. Ngo&agrave;i ra khi mua sản phẩm LG GRAM 2022 phi&ecirc;n bản 14inch, kh&aacute;ch h&agrave;ng sẽ được nhận ngay 1 tai nghe nghe Tone Free FP8 trị gi&aacute;&nbsp;4,190,000đ. &Aacute;p dụng với phi&ecirc;n bản 16 &amp; 17 inch kh&aacute;ch h&agrave;ng sẽ nhận ngay&nbsp;m<strong>&agrave;n h&igrave;nh mở rộng LG Gram View 16inch 2K QHD trị gi&aacute;</strong><strong>&nbsp;</strong><strong>9.890.000đ</strong></p>\r\n', '314912917_5737439509649836_5060808872754320490_n_8cf84102acae4ba0a3485d05aa08014c.webp', '2022-11-16 19:46:53', '1', '2022-11-16 19:50:01', '1', 1, 1),
(3, 'Hybrid working hiệu quả cho dân công sở, bạn cần gì ?', 'hybrid-working-hieu-qua-cho-dan-cong-so-ban-can-gi', 'Mô hình hybrid working trở thành xu hướng sau thời gian dài thích ứng với dịch Covid-19. Người lao động được linh hoạt chọn giữa làm việc tại văn phòng, ở nhà hay ra ngoài, từ đó chủ động cân bằng cuộc sống - công việc. Tuy mang lại tinh thần thoải mái, tạo năng suất và hiệu quả làm việc tối ưu hơn, mô hình hybrid working vẫn khiến hội công sở “rớt nước mắt”', '<div class=\"box-article-heading clearfix\" style=\"-webkit-text-stroke-width:0px; margin-bottom:30px; padding:0px; text-align:start; text-indent:0px\">\r\n<div class=\"background-img\" style=\"padding:0px\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img alt=\"Hybrid working hiệu quả cho dân công sở, bạn cần gì ?\" src=\"https://file.hstatic.net/1000233206/article/7_921ba003add84251889eaa3cbd9477b9.jpeg\" /></span></span></span></div>\r\n</div>\r\n\r\n<div class=\"article-table-contents box-article-detail typeList-style\" style=\"-webkit-text-stroke-width:0px; margin-bottom:30px; padding:0px; text-align:start; text-indent:0px\">\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><em><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">M&ocirc; h&igrave;nh hybrid working trở th&agrave;nh xu hướng sau thời gian d&agrave;i th&iacute;ch ứng với dịch Covid-19. Người lao động được linh hoạt chọn giữa l&agrave;m việc tại văn ph&ograve;ng, ở nh&agrave; hay ra ngo&agrave;i, từ đ&oacute; chủ động c&acirc;n bằng cuộc sống - c&ocirc;ng việc.&nbsp;</span></span></span><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">Tuy mang lại tinh thần thoải m&aacute;i, tạo năng suất v&agrave; hiệu quả l&agrave;m việc tối ưu hơn, m&ocirc; h&igrave;nh hybrid working vẫn khiến hội c&ocirc;ng sở &ldquo;rớt nước mắt&rdquo;</span></span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><strong><span style=\"font-family:Arial,sans-serif\">Những &nbsp;&ldquo;nổi lo lắng&rdquo; của d&acirc;n văn ph&ograve;ng về hybrid working</span></strong></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:17.3333px\"><strong>V&aacute;c &quot;cả thế giới&quot; ra ngo&agrave;i l&agrave;m việc</strong></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">Khi phải &ldquo;di dời&rdquo; kh&ocirc;ng gian l&agrave;m việc, d&acirc;n c&ocirc;ng sở cần mang theo nhiều đồ đạc như chiếc laptop nặng hơn 2 kg, bộ sạc, ổ cứng, t&agrave;i liệu... Điều n&agrave;y kh&ocirc;ng kh&aacute;c mấy so với việc soạn đồ đi du lịch ngắn ng&agrave;y. Đ&oacute; l&agrave; chưa kể nếu lỡ tay l&agrave;m rơi, laptop v&agrave; c&aacute;c thiết bị kh&aacute;c c&oacute; thể bị hỏng, g&acirc;y mất dữ liệu quan trọng. Việc văn ph&ograve;ng tưởng nhẹ ho&aacute; ra lại kh&aacute; nặng. Với những người l&agrave;m nhiều việc c&ugrave;ng l&uacute;c (multitasking), chiếc laptop cấu h&igrave;nh yếu lu&ocirc;n l&agrave; nỗi &aacute;m ảnh.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><strong><span style=\"color:#222222\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:17.3333px\">Kh&ocirc;ng c&oacute; sự ri&ecirc;ng tư v&agrave; bảo mật cao.</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">Khi l&agrave;m việc b&ecirc;n ngo&agrave;i, th&ocirc;ng tin v&agrave; dữ liệu quan trọng của c&ocirc;ng ty cũng kh&oacute; đảm bảo t&iacute;nh bảo mật. Chưa kể, tại qu&aacute;n c&agrave; ph&ecirc; hay nh&agrave; h&agrave;ng, bạn kh&oacute; tr&aacute;nh khỏi t&igrave;nh huống bị nh&igrave;n trộm m&agrave;n h&igrave;nh laptop. Một bất cẩn nhỏ c&oacute; thể l&agrave;m lộ th&ocirc;ng tin c&ocirc;ng ty ra ngo&agrave;i.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><strong><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">C&oacute; thật sự tốt khi chọn&nbsp;Hybrid working ???</span></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">Sức khỏe cũng l&agrave; một trong những nỗi lo của hội c&ocirc;ng sở khi hybrid working. B&agrave;n ghế văn ph&ograve;ng được thiết kế đ&uacute;ng ti&ecirc;u chuẩn để đảm bảo sức khoẻ. Tuy nhi&ecirc;n, khi l&agrave;m việc tại nh&agrave;, nhiều người thường nằm l&agrave;m việc tr&ecirc;n giường hay ngồi tr&ecirc;n sofa với chiếc laptop tr&ecirc;n đ&ugrave;i. Tư thế l&agrave;m việc kh&ocirc;ng ph&ugrave; hợp suốt thời gian d&agrave;i sẽ g&acirc;y đau cột sống, tho&aacute;i ho&aacute; đốt sống cổ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#222222\">Hybrid working cũng khiến một số người vượt khỏi ranh giới tự do v&agrave; trở n&ecirc;n thiếu kỷ luật. Quản l&yacute; thời gian k&eacute;m khiến bạn kh&oacute; đảm bảo chất lượng c&ocirc;ng việc, cuối c&ugrave;ng ảnh hưởng đến tiến độ của tập thể. Thậm ch&iacute;, bạn phải đối diện sự &ldquo;rớt nhịp&rdquo; khi quay lại h&igrave;nh thức l&agrave;m việc truyền thống.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><strong><span style=\"font-family:Arial,sans-serif\">Hybrid working hiệu quả, th&igrave; bạn phải l&agrave;m như thế n&agrave;o ?</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\">Những lợi &iacute;ch của hybrid working cũng đi k&egrave;m nhiều kh&oacute; khăn kh&aacute;c. Tuy nhi&ecirc;n khoan h&atilde;y nản, bạn chỉ cần l&ecirc;n d&acirc;y c&oacute;t sẵn s&agrave;ng với LG gram 2022.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img src=\"https://file.hstatic.net/1000233206/file/4_85a0d2c4577d4436b855313de27eae48_grande.jpg\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><strong><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\">Trang bị chiếc Laptop gọn nhẹ nhất c&oacute; thể.</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\">Với khối lượng chưa đến 1 kg, bạn dễ d&agrave;ng mang LG gram 2022, thậm ch&iacute; kh&ocirc;ng cần mang theo bộ sạc v&igrave; thời lượng pin đến 23,5 giờ trong một lần sạc. Khung m&aacute;y l&agrave;m từ hợp kim magie-nano carbon đạt độ bền ti&ecirc;u chuẩn qu&acirc;n đội MIL-STD-810G. D&ugrave; bị rơi hay xe c&aacute;n qua, m&aacute;y vẫn hoạt động tốt.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img src=\"https://file.hstatic.net/1000233206/file/27266_14zd980_5_99ff178c86804b48b75b65979bf7847e_grande.jpg\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><strong><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:17.3333px\">Bộ vi xử l&iacute; mượt m&agrave; để giải quyết c&ocirc;ng việc nhanh ch&oacute;ng</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\">Trang bị bộ xử l&yacute; Intel Core thế hệ 12,&nbsp;<a href=\"https://hangchinhhieu.vn/search?type=product&amp;q=LG%20GRAM%202022\">LG gram 2022</a>&nbsp;c&oacute; tốc độ xử l&yacute; nhanh ch&oacute;ng, mượt m&agrave; khi mở nhiều file/tab c&ugrave;ng l&uacute;c. Ngo&agrave;i ra, bộ xử l&yacute; Intel Wifi 6E c&ograve;n giảm độ trễ v&agrave; tăng tốc độ kết nối khi nhiều thiết bị c&ugrave;ng sử dụng Wi-Fi nơi c&ocirc;ng cộng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><strong><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\">Bảo mật hơn, thoải m&aacute;i l&agrave;m việc</span></span></span></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial,sans-serif\">T&iacute;nh năng bảo mật chống nh&igrave;n trộm tr&ecirc;n m&aacute;y gi&uacute;p nhận diện khi bạn quay đi hướng kh&aacute;c hoặc người kh&aacute;c nh&igrave;n v&agrave;o m&agrave;n h&igrave;nh. Chưa hết, trải nghiệm l&agrave;m việc ban ng&agrave;y ngo&agrave;i trời vẫn được đảm bảo v&igrave; m&agrave;n h&igrave;nh được trang bị tấm nền chống l&oacute;a, đảm bảo hiển thị r&otilde; n&eacute;t, chi tiết. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://hangchinhhieu.vn/search?type=product&amp;q=LG%20GRAM%202022\">LG gram 2022</a>&nbsp;sẽ nhanh ch&oacute;ng gửi cảnh b&aacute;o nếu ph&aacute;t hiện bạn ngồi sai tư thế.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img src=\"https://file.hstatic.net/1000233206/file/a8720ed39af64b856ddfe4c231d5f57d21b34c95_0ca6826a781c4af19792535ad44e92d8_grande.jpeg\" /></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><strong><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:17.3333px\">Đảm bảo được sức khoẻ v&agrave; tư thế ngồi v&igrave; c&oacute; sự nhắc nhở của &quot;b&aacute;c sĩ&quot; LG GRAM 2022.</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"color:var(--text-color)\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial,sans-serif\">D&ugrave; hyrid working hay l&agrave;m ở văn ph&ograve;ng theo c&aacute;ch truyền thống, chọn đ&uacute;ng h&agrave;nh trang v&agrave; bỏ t&uacute;i b&iacute; k&iacute;p l&agrave;m việc hiệu quả tr&ecirc;n, bạn sẽ lu&ocirc;n ho&agrave;n th&agrave;nh tốt c&ocirc;ng việc nhẹ nh&agrave;ng, đơn giản; đồng thời c&oacute; th&ecirc;m cảm hứng để tạo n&ecirc;n nhiều gi&aacute; trị mới.</span></span></span></span></span></span></span></span></p>\r\n</div>\r\n', '7_921ba003add84251889eaa3cbd9477b9.webp', '2022-11-16 19:50:42', '1', '2022-11-16 19:50:46', '1', 1, 1),
(4, 'Rò rỉ sức mạnh khủng khiếp của Dimensity 9200, vượt qua cả chip M1 của Apple', 'ro-ri-suc-manh-khung-khiep-cua-dimensity-9200-vuot-qua-ca-chip-m1-cua-apple', 'MediaTek được cho là sẽ ra mắt phiên bản kế nhiệm của chipset Dimensity 9000+ từng làm mưa làm gió trong phân khúc flagship, Gaming Phone, được gọi là Dimensity 9200 vào tháng 11 tới. Chipset này sẽ là chipset mạnh mẽ hàng đầu của MediaTek, có nghĩa là nó sẽ cạnh tranh trực tiếp với đối thủ A16 Bionic của Apple và Qualcomm Snapdragon 8 Gen 2 sắp ra mắt.\r\n', '<div class=\"box-article-heading clearfix\" style=\"-webkit-text-stroke-width:0px; margin-bottom:30px; padding:0px; text-align:start; text-indent:0px\">\r\n<div class=\"background-img\" style=\"padding:0px\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img alt=\"Rò rỉ sức mạnh khủng khiếp của Dimensity 9200, vượt qua cả chip M1 của Apple\" src=\"https://file.hstatic.net/1000233206/article/c_6e0a8a2fc29e48d2996692c2ae7cc1fe.png\" /></span></span></span></div>\r\n</div>\r\n\r\n<div class=\"article-table-contents box-article-detail typeList-style\" style=\"-webkit-text-stroke-width:0px; margin-bottom:30px; padding:0px; text-align:start; text-indent:0px\">\r\n<p><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"background-color:white\"><span style=\"font-family:Arial,sans-serif\">MediaTek được cho l&agrave; sẽ ra mắt phi&ecirc;n bản kế nhiệm của chipset Dimensity 9000+ từng l&agrave;m mưa l&agrave;m gi&oacute; trong ph&acirc;n kh&uacute;c flagship, Gaming Phone, được gọi l&agrave; Dimensity 9200 v&agrave;o th&aacute;ng 11 tới. Chipset n&agrave;y sẽ l&agrave; chipset mạnh mẽ h&agrave;ng đầu của MediaTek, c&oacute; nghĩa l&agrave; n&oacute; sẽ cạnh tranh trực tiếp với đối thủ A16 Bionic của Apple v&agrave; Qualcomm Snapdragon 8 Gen 2 sắp ra mắt.</span></span><br />\r\n<br />\r\n<span style=\"font-family:Arial,sans-serif\"><span style=\"background-color:white\">C&aacute;c b&aacute;o c&aacute;o trước đ&acirc;y n&oacute;i rằng chipset sẽ được sản xuất tr&ecirc;n tiến tr&igrave;nh 4nm của TSMC v&agrave; c&oacute; khả năng sẽ sử dụng c&ugrave;ng c&aacute;c l&otilde;i Cortex-A710 v&agrave; Cortex-A510 như trước đ&acirc;y. Ở thời điểm hiện tại, vẫn c&ograve;n qu&aacute; sớm để biết được sức mạnh của chipset n&agrave;y tuy nhi&ecirc;n một r&ograve; rỉ mới đ&acirc;y đ&atilde; cho thấy sức mạnh v&ocirc; c&ugrave;ng khủng khiếp của Dimensity 9200 tr&ecirc;n một chiếc smartphone chưa được tiết lộ.</span><br />\r\n<br />\r\n<span style=\"background-color:white\">Cụ thể một r&ograve; rỉ điểm AnTuTu Benchmark tiết lộ rằng Dimensity 9200 của MediaTek đ&atilde; đ&aacute;nh bại chipset M1 của Apple trong iPad Pro Gen 5 với điểm số AnTuTu l&ecirc;n tới 1.266.102 điểm. , đ&aacute;nh bại iPad Pro M1, theo bảng xếp hạng của AnTuTu , đạt điểm tổng thể l&agrave; 1.251.547.</span></span></span></span><br />\r\n&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img src=\"https://file.hstatic.net/1000233206/file/a_d2a4aa938d6340d0b46e986978d4ace1_grande.png\" /><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:Arial,sans-serif\">​</span></span></span></span></span></span></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:Arial,sans-serif\"><span style=\"background-color:white\">R&ograve; rỉ n&agrave;y đến từ leaker nổi tiếng tr&ecirc;n Weibo l&agrave; DCS đ&atilde; chia sẻ ảnh chụp m&agrave;n h&igrave;nh của một mẫu smartphone b&iacute; ẩn chạy chipset Dimensity 9200. DCS n&oacute;i rằng thử nghiệm được thực hiện ở nhiệt độ ph&ograve;ng, thường l&agrave; khoảng 20 &deg; C v&agrave; theo thử nghiệm, nhiệt độ cao nhất của chipset kh&ocirc;ng vượt qu&aacute; 37 &deg; C, duy tr&igrave; mức 36 &deg; C. Nhiệt độ thấp n&agrave;y cho thấy mẫu smartphone được sử dụng để kiểm tra Dimensity 9200 c&oacute; khả năng được trang bị hệ thống tản nhiệt v&ocirc; c&ugrave;ng hiệu quả cộng với tiến tr&igrave;nh 4nm hiệu quả của TSMC cũng đ&oacute;ng vai tr&ograve; ho&agrave;n hảo của n&oacute;.</span><br />\r\n<br />\r\n<span style=\"background-color:white\">Trước đ&oacute;, Snapdragon 8 Plus Gen 1 , được sản xuất h&agrave;ng loạt sử dụng c&ugrave;ng một kiến tr&uacute;c 4nm đ&atilde; c&oacute; m&agrave;n thể hiện chơi game kh&ocirc;ng k&eacute;m g&igrave; A15 Bionic, cho thấy sự kh&aacute;c biệt khổng lồ c&oacute; thể đạt được bằng c&aacute;ch chuyển đổi nh&agrave; sản xuất từ Samsung sang TSMC. Sẽ rất th&uacute; vị khi thấy Dimensity 9200 so s&aacute;nh với Snapdragon 8 Gen 2 sắp tới , vốn cũng được đồn đại l&agrave; được sản xuất tr&ecirc;n tiến tr&igrave;nh 4nm của TSMC.</span></span></span></span><br />\r\n&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><img src=\"https://file.hstatic.net/1000233206/file/d_63781cec973a401cac91e2713267444f_grande.png\" /></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:Arial,sans-serif\">​</span></span></span></span><br />\r\n<span style=\"font-size:13pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:Arial,sans-serif\"><span style=\"background-color:white\">Xem x&eacute;t kỹ hơn c&aacute;c con số hiệu suất, Dimensity 9200 vượt trội hơn ROG Phone 6D Ultimate trang bị chipset Dimensity 9000+ khoảng 12.000 điểm trong b&agrave;i kiểm tra GPU, tuy nhi&ecirc;n, b&agrave;i kiểm tra CPU kh&ocirc;ng cho thấy bất kỳ cải tiến n&agrave;o. So s&aacute;nh với phi&ecirc;n bản ROG Phone 6 Pro sử dụng chipset Snapdragon 8 Plus Gen 1, Dimensity 9200 vượt trội trong điểm chuẩn CPU v&agrave; đ&aacute;nh bại n&oacute; một c&aacute;ch thuyết phục trong b&agrave;i kiểm tra GPU.</span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#252a2b\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:17.3333px\">Nguồn: Techrum.</span></span></span></span></span></p>\r\n</div>\r\n', 'c_6e0a8a2fc29e48d2996692c2ae7cc1fe.webp', '2022-11-16 19:53:10', '1', '2022-11-16 19:53:10', '1', 1, 1),
(5, 'TRẢI NGHIỆM LATOP LG GRAM 17 CÓ GÌ HOT ???', 'trai-nghiem-latop-lg-gram-17-co-gi-hot', 'Dòng máy tính xách tay Gram của thương hiệu LG vẫn luôn gây ấn tượng và được biết đến với tiêu chí “Nhẹ và khoẻ”. Mới đây LG đã trình làng 2 mẫu Laptop LG Gram 16 và LG Gram 17, đây là hai mẫu laptop có kích thước màn hình thuộc loại “siêu to khổng lồ” nhưng trọng lượng siêu nhẹ chỉ 1.35 kg – nhẹ ngang với các mẫu laptop 13inch khác. Cùng Hàng Chính Hiệu trải nghiệm thử xem nó có gì khác biệt so với phiên bản LG GRAM 14inch nhé.', '<p><img alt=\"TRẢI NGHIỆM LATOP LG GRAM 17 CÓ GÌ HOT ???\" src=\"https://file.hstatic.net/1000233206/article/lg-gram-2022_52b0469b739341bdb93fd51bc247a3ca.jpg\" /></p>\r\n\r\n<p>C&aacute;c nội dung ch&iacute;nh[<a href=\"javascript:void(0)\">Ẩn</a>]</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_thiet_ke_\">Về thiết kế.</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_man_hinh_\">Về m&agrave;n h&igrave;nh.</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_webcam_\">Về Webcam.</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_hieu_nang_\">Về hiệu năng.</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_ban_phim\">Về b&agrave;n ph&iacute;m</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_cong_ket_noi_\">Về cổng kết nối.</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#ve_thoi_luong_pin\">Về thời lượng pin</a></li>\r\n	<li><a href=\"https://hangchinhhieu.vn/blogs/tin-cong-nghe/trai-nghiem-latop-lg-gram-17-co-gi-hot#man_hinh_roi_lg_gram_view_huu_dung_voi_nguoi_hay_da_nhiem__dung_video\">M&agrave;n h&igrave;nh rời LG gram View hữu dụng với người hay đa nhiệm, dựng video</a></li>\r\n</ul>\r\n\r\n<p><em>D&ograve;ng&nbsp;m&aacute;y t&iacute;nh x&aacute;ch tay&nbsp;Gram của thương hiệu LG vẫn lu&ocirc;n g&acirc;y ấn tượng v&agrave; được biết đến với ti&ecirc;u ch&iacute; &ldquo;Nhẹ v&agrave; khoẻ&rdquo;. Mới đ&acirc;y LG đã trình làng 2 m&acirc;̃u Laptop LG Gram 16 và LG Gram 17, đ&acirc;y là hai m&acirc;̃u laptop có kích thước màn hình thu&ocirc;̣c loại &ldquo;si&ecirc;u to kh&ocirc;̉ng l&ocirc;̀&rdquo; nhưng trọng lượng si&ecirc;u nhẹ chỉ 1.35 kg &ndash; nhẹ ngang với các m&acirc;̃u laptop 13inch khác. C&ugrave;ng H&agrave;ng Ch&iacute;nh Hiệu trải nghiệm thử xem n&oacute; c&oacute; g&igrave; kh&aacute;c biệt so với phi&ecirc;n bản&nbsp;<a href=\"https://hangchinhhieu.vn/search?type=product&amp;q=LG%20GRAM%2014\">LG GRAM 14inch</a>&nbsp;nh&eacute;.</em></p>\r\n\r\n<h2><strong>Về thiết kế.</strong></h2>\r\n\r\n<p>Phi&ecirc;n bản LG gram 2022 vẫn giứ nguy&ecirc;n bản m&agrave;u như hiện tại, nhưng c&oacute; th&ecirc;m một m&agrave;u mới đ&oacute; ch&iacute;nh l&agrave; m&agrave;u Gray, để c&oacute; ttheercho kh&aacute;ch h&agrave;ng c&oacute; nhiều sự lựa chọn khi mua sản phẩm.</p>\r\n\r\n<p>Với phi&ecirc;n bản<strong>&nbsp;<a href=\"https://hangchinhhieu.vn/search?type=product&amp;q=LG%20gram%2017%202022\">LG gram 17 2022</a></strong><strong>,</strong>&nbsp;thiết kế của gram gần như được giữ nguy&ecirc;n so với người anh em ti&ecirc;̀n nhi&ecirc;̣m, Vẫn l&agrave; kiểu d&aacute;ng vu&ocirc;ng vắn, tối giản, với duy nhất logo gram diện t&iacute;ch khi&ecirc;m tốn nằm ở ch&iacute;nh giữa vỏ ngo&agrave;i.</p>\r\n\r\n<p>Trọng lượng của gram 17 2022 tương tự thế hệ 2021 với con số 1,35Kg. Vẫn giữ nguy&ecirc;n vị tr&iacute; l&agrave; chiếc&nbsp;<strong>laptop 17 inch nhẹ nhất</strong><strong>&nbsp;<strong>hiện nay</strong></strong>. Trong khi, độ d&agrave;y cũng ở mức 17,7mm, mỏng hơn một ch&uacute;t so với năm ngo&aacute;i (17,8mm).</p>\r\n\r\n<h2><strong>Về m&agrave;n h&igrave;nh.</strong></h2>\r\n\r\n<p>M&agrave;n h&igrave;nh&nbsp;của chiếc m&aacute;y t&iacute;nh&nbsp;n&agrave;y ch&iacute;nh l&agrave; một trong những điểm quan trọng v&agrave; nhận được v&ocirc; số lời khen ngợi. M&agrave;n h&igrave;nh của Gram 17 2022 tuy kh&ocirc;ng c&oacute; qu&aacute; nhiều sự n&acirc;ng cấp nhưng vẫn rất xuất sắc. Với&nbsp;tấm nền IPS&nbsp;17 inch &ldquo;si&ecirc;u khủng&rdquo;, tỷ lệ khung h&igrave;nh&nbsp;<strong>16:10</strong>&nbsp;v&agrave; độ ph&acirc;n giải&nbsp;<strong>WQXGA (2560 x 1600)</strong>&nbsp;hứa hẹn sẽ mang lại h&igrave;nh ảnh hiển thị cực sắc n&eacute;t. Ngo&agrave;i ra, với độ bao phủ m&agrave;u rộng l&ecirc;n tới&nbsp;<strong>99% DCI-P3</strong>&nbsp;n&ecirc;n khả năng t&aacute;i tạo m&agrave;u sắc tr&ecirc;n d&ograve;ng m&aacute;y n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; cực tốt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/dscf2825-1655293557-2_803fe846f5f74e83bd1457d402d5187e_grande.jpg\" /></p>\r\n\r\n<h2><strong>Về Webcam.</strong></h2>\r\n\r\n<p>Điểm cải tiến lớn tr&ecirc;n webcam của gram 2022 l&agrave; độ ph&acirc;n giải được tăng l&ecirc;n mức Full HD, t&iacute;ch hợp cả cảm biến hồng ngoại để mở kh&oacute;a khu&ocirc;n mặt Windows Hello. Tốc độ mở kh&oacute;a khu&ocirc;n mặt rất nhanh nhẹn, ngay cả trong đ&ecirc;m tối n&ecirc;n việc thiếu đi cảm biến v&acirc;n tay t&iacute;ch hợp n&uacute;t nguồn như ở đời 2021 kh&ocirc;ng c&ograve;n l&agrave; vấn đề lớn.</p>\r\n\r\n<p>Webcam Full HD 1080p 2MP cho độ n&eacute;t tốt hơn đ&aacute;ng kể so với c&aacute;c webcam HD 1MP phổ biến tr&ecirc;n laptop hiện nay nhưng c&acirc;n bằng trắng vẫn chưa chuẩn lắm, hơi &aacute;m xanh l&aacute;. M&aacute;y c&oacute; 2 mic t&iacute;ch hợp c&ocirc;ng nghệ khử ồn AI Noise Cancelation hoạt động hiệu quả, lọc được đ&aacute;ng kể tiếng ồn m&ocirc;i trường như xe cộ qua lại.</p>\r\n\r\n<p>Đặc biệt, tr&ecirc;n gram 17 2022, LG c&ograve;n t&iacute;ch hợp bộ c&ocirc;ng cụ LG Glance by Mirametrix mang tới khả năng chống nh&igrave;n trộm, tự động l&agrave;m mờ m&agrave;n h&igrave;nh v&agrave; hiện cảnh b&aacute;o khi ph&aacute;t hiện c&oacute; người đang nh&igrave;n qua vai bạn. T&iacute;nh năng n&agrave;y sẽ rất hữu dụng khi bạn đang l&agrave;m việc với c&aacute;c t&agrave;i liệu, nội dung b&iacute; mật, nhạy cảm, kh&ocirc;ng muốn người kh&aacute;c nh&igrave;n thấy.</p>\r\n\r\n<p>C&ocirc;ng cụ LG Glance by Mirametrix sử dụng webcam Full HD của gram để ph&aacute;t hiện khu&ocirc;n mặt nhờ thế m&agrave; c&ograve;n mang đến nhiều t&iacute;nh năng hữu dụng kh&aacute;c, c&oacute; thể kể đến như khi bạn quay mặt đi, kh&ocirc;ng nh&igrave;n v&agrave;o m&agrave;n h&igrave;nh, m&aacute;y sẽ tự động l&agrave;m mờ m&agrave;n h&igrave;nh, Nếu bạn rời khỏi m&aacute;y 30 gi&acirc;y, m&aacute;y cũng sẽ tự động được kh&oacute;a lại, nhạc v&agrave; video cũng được tự động tạm dừng. Khi sử dụng 2 m&agrave;n h&igrave;nh, khi bạn nh&igrave;n v&agrave;o m&agrave;n h&igrave;nh n&agrave;o, con trỏ chuột sẽ tự động chuyển sang m&agrave;n h&igrave;nh đ&oacute;, v&agrave; l&agrave;m mờ m&agrave;n h&igrave;nh c&ograve;n lại&hellip;. v&agrave; rất nhiều t&iacute;nh năng hữu &iacute;ch kh&aacute;c nữa. &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>Về hiệu năng.</strong></h2>\r\n\r\n<p>LG Gram 17 sẽ trang bị chip&nbsp;Core i7-1260P&nbsp;chỉ d&agrave;nh cho kiểu m&aacute;y 17 inch.&nbsp;So với model năm ngo&aacute;i, LG cho biết phi&ecirc;n bản Core i7 nhanh hơn tới&nbsp;70%.&nbsp;Một số kiểu m&aacute;y cũng sẽ c&oacute;&nbsp;GPU rời NVIDIA GeForce RTX 2050.&nbsp;Đ&acirc;y l&agrave; lần đầu ti&ecirc;n một m&aacute;y t&iacute;nh x&aacute;ch tay LG Gram c&oacute; đồ họa rời n&oacute; sẽ gi&uacute;p xử l&yacute; c&aacute;c t&aacute;c vụ đồ họa v&agrave; chơi game mượt m&agrave; hơn.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra 2 mẫu m&aacute;y n&agrave;y đều c&oacute; RAM LPDDR5 l&ecirc;n đến 32GB v&agrave; SSD Pcle Gen 4, RAM sẽ được h&agrave;n k&ecirc;n bo mạch chủ. Bộ nhớ c&oacute; thể được n&acirc;ng cấp v&agrave; th&acirc;m ch&iacute; c&ograve;n c&oacute; một khe trống để mở rộng dễ d&agrave;ng hơn</p>\r\n\r\n<h2><strong>Về b&agrave;n ph&iacute;m</strong></h2>\r\n\r\n<p>B&agrave;n ph&iacute;m v&agrave; touchpad l&agrave; những điểm LG đ&atilde; l&agrave;m tốt tr&ecirc;n thế hệ Gram 17 2021 n&ecirc;n kh&ocirc;ng ngạc nhi&ecirc;n khi h&atilde;ng kh&ocirc;ng c&oacute; thay đổi gì tr&ecirc;n thế hệ 2022. Vẫn l&agrave; b&agrave;n ph&iacute;m full size với cụm ph&iacute;m số Numpad thuận tiện cho việc nhập số liệu. Cảm gi&aacute;c g&otilde; ph&iacute;m đ&atilde; tay với h&agrave;nh tr&igrave;nh s&acirc;u, &ecirc;m &aacute;i, kh&ocirc;ng ph&aacute;t ra tiếng ồn n&agrave;o đ&aacute;ng kể. Hệ thống đ&egrave;n nền 2 mức s&aacute;ng đủ để l&agrave;m việc tốt trong đ&ecirc;m m&agrave; kh&ocirc;ng cần bật th&ecirc;m đ&egrave;n b&agrave;n.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/311134091_5646970792030042_7380211388318779501_n_62d0ce447fb94ee4b9c8f0c7ddd4f9a9_grande.jpg\" /></p>\r\n\r\n<p>Touchpad k&iacute;ch thước rất lớn, hỗ trợ c&aacute;c thao t&aacute;c đa điểm cuộn&nbsp;chuột, ph&oacute;ng to thu nhỏ, chuyển app hay tiến l&ugrave;i mượt m&agrave;, đủ để đ&aacute;p ứng gần như mọi thao t&aacute;c cơ bản m&agrave; kh&ocirc;ng cần d&ugrave;ng th&ecirc;m chuột ngo&agrave;i.</p>\r\n\r\n<h2><strong>Về cổng kết nối.</strong></h2>\r\n\r\n<p>Tuy kh&ocirc;ng đa dạng về những cổng kết nối nhưng Gram 17 2022 cũng gần giống như những thế hệ trước khi một b&ecirc;n sẽ được trang bị hai cổng&nbsp;USB-C&nbsp;đều hỗ trợ&nbsp;Thunderbolt 4,&nbsp;DisplayPort,&hellip; B&ecirc;n c&ograve;n lại cũng c&oacute; hai cổng USB 3.0 c&ugrave;ng cổng&nbsp;HDMI,&nbsp;jack 3.5 mm,&hellip; C&oacute; thể thấy c&aacute;c cổng kết nối tr&ecirc;n sản phẩm n&agrave;y chỉ dừng lại ở mức ổn định v&agrave; đủ d&ugrave;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/310683393_5637171283009993_5676811497249358147_n_e7ccb57e9e804a8590fb2289019eb7e1_grande.jpg\" /></p>\r\n\r\n<h2><strong>Về thời lượng pin</strong></h2>\r\n\r\n<p>LG l&agrave; một trong những h&atilde;ng ti&ecirc;n phong trang bị pin dung lượng lớn tr&ecirc;n laptop v&agrave; gram 17 2022 tiếp tục ph&aacute;t huy điều n&agrave;y với vi&ecirc;n pin lớn 80Wh, tương đương thế hệ 2021. LG c&ocirc;ng bố thời lượng hoạt động của gram 17 2022 c&oacute; thể l&ecirc;n đến 17,5 giờ nhưng tất nhi&ecirc;n con số n&agrave;y l&agrave; khi m&aacute;y chỉ ph&aacute;t video offline, độ s&aacute;ng m&agrave;n h&igrave;nh 150 nit (khoảng 40%), tăt hết WiFi, Bluetooth v&agrave; cắm tai nghe.</p>\r\n\r\n<p>Thực tế sử dụng m&igrave;nh c&oacute; thể đạt được tối đa khoảng 8 tiếng với laptop Gram 17 2022 khi bật chế độ tiết kiệm pin, m&agrave;n h&igrave;nh độ s&aacute;ng khoảng 50%, bật WiFi, chủ yếu d&ugrave;ng với c&aacute;c t&aacute;c vụ như soạn thảo văn bản bằng Word, duyệt web với Chrome khoảng 10 tab. Đ&acirc;y vẫn l&agrave; mức thời lượng pin rất tốt, nhất l&agrave; khi x&eacute;t đến một chiếc laptop c&oacute; m&agrave;n h&igrave;nh lớn như gram 17. Thời lượng pin n&agrave;y đủ cho một ng&agrave;y l&agrave;m việc th&ocirc;ng thường, v&agrave; gần như m&igrave;nh kh&ocirc;ng phải lo về việc sạc pin cho m&aacute;y khi ra ngo&agrave;i nữa.</p>\r\n\r\n<p>Củ sạc đi k&egrave;m với&nbsp;c&ocirc;ng suất 65W&nbsp;của gram cũng rất gọn nhẹ, c&oacute; thể sạc đầy pin cho m&aacute;y trong khoảng 2 giờ. Ngo&agrave;i ra, bạn cũng c&oacute; thể sử dụng những cục sạc dự ph&ograve;ng hỗ trợ chuẩn PD với c&ocirc;ng suất đầu ra khoảng 45W trở l&ecirc;n l&agrave; c&oacute; thể sạc pin cho gram.</p>\r\n\r\n<h2><strong><a href=\"https://hangchinhhieu.vn/products/man-hinh-di-dong-lg-gram-16mq70-asda5-16-2k-wqxga-2560-x-1600-ips\">M&agrave;n h&igrave;nh rời LG gram View</a>&nbsp;hữu dụng với người hay đa nhiệm, dựng video</strong></h2>\r\n\r\n<p>Nếu cảm thấy m&agrave;n h&igrave;nh 17 inch của gram vẫn chưa đủ &ldquo;sướng&rdquo;, bạn c&oacute; thể sử dụng k&egrave;m m&agrave;n h&igrave;nh mở rộng LG gram View. Đ&acirc;y cũng l&agrave; qu&agrave; tặng d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng khi mua laptop gram 2022 từ h&ocirc;m nay đến hết 31/12/2022.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/301304884_5523900344337088_2523095618396997163_n_dbe4b0431a8c4220b59cb1fbf7716e50_grande.jpg\" /></p>\r\n\r\n<p>Gram + View l&agrave; m&agrave;n h&igrave;nh di động được LG tối ưu cho laptop gram với k&iacute;ch thước lớn 16 inch nhưng c&acirc;n nặng cũng rất nhẹ nh&agrave;ng, chỉ 670g (990g khi gắn th&ecirc;m vỏ bảo vệ ki&ecirc;m ch&acirc;n đế), độ d&agrave;y chỉ 8,3mm. Thiết kế của gram + View gần giống với một chiếc m&aacute;y t&iacute;nh bảng cỡ lớn, nhất l&agrave; khi gắn vỏ bảo vệ ki&ecirc;m ch&acirc;n đế đi k&egrave;m. To&agrave;n bộ lớp vỏ ph&iacute;a sau được l&agrave;m bằng nh&ocirc;m, c&aacute;c g&oacute;c cạnh cắt v&aacute;t kim cương cao cấp.</p>\r\n\r\n<p>Điểm th&uacute; vị l&agrave; gram + View c&oacute; cảm biến tự động xoay dọc m&agrave;n h&igrave;nh (cần c&agrave;i th&ecirc;m phần mềm LG OnScreen Control) n&ecirc;n rất hữu dụng khi cần chỉnh sửa video Tiktok, YouTube Short, Facebook Reels hay khi thiết kế poster, lập tr&igrave;nh, xem c&aacute;c nội dung dạng dọc&hellip; &nbsp;</p>\r\n\r\n<p>Trăm nghe kh&ocirc;ng bằng một thấy, để c&oacute; thể hiểu hơn về những hiệu năng cực k&igrave; &ldquo;si&ecirc;u&rdquo; n&agrave;y, th&igrave; chỉ c&oacute; c&aacute;ch l&agrave; bạn tự trải nghiệm th&ocirc;i.&nbsp;<a href=\"https://hangchinhhieu.vn/\">H&agrave;ng Ch&iacute;nh Hiệu</a>&nbsp;đang c&oacute; chương tr&igrave;nh khuyến m&atilde;i &ldquo;<a href=\"https://hangchinhhieu.vn/blogs/tin-khuyen-mai/back-to-school-hang-chinh-hieu-tu-ngay-22-09-2022-15-10-2022\">Back To School</a>&rdquo; với mức gi&aacute; &ldquo;tốt&rdquo;, nếu bạn l&agrave; sinh vi&ecirc;n, đừng bỏ lỡ nh&eacute; !!</p>\r\n', 'lg-gram-2022_52b0469b739341bdb93fd51bc247a3ca.webp', '2022-11-16 19:55:21', '1', '2022-11-16 19:55:21', '1', 1, 1),
(6, 'Apple thừa nhận lỗi trên tính năng Sao chép và Dán của iOS 16, hứa sẽ khắc phục.', 'apple-thua-nhan-loi-tren-tinh-nang-sao-chep-va-dan-cua-ios-16-hua-se-khac-phuc', 'Trên iOS 16, mỗi khi người dùng thực hiện thao tác sao chép và dán nội dung từ ứng dụng này sang ứng dụng khác, hệ thống sẽ hiện một cửa sổ thông báo nhỏ yêu cầu người dùng xác nhận thao tác bằng cách nhấn vào dòng Allow Paste hoặc hủy hành động với tùy chọn Don’t Allow Paste. Việc cửa sổ xác nhận thao tác dán xuất hiện thường xuyên đã tạo ra sự khó chịu đối với người dùng trong quá trình sử dụng.  Nhiều người dùng đã lên tiếng chỉ trích về vấn đề này và gọi là nó lỗi thay vì tính năng.', '<p><img alt=\"Apple thừa nhận lỗi trên tính năng Sao chép và Dán của iOS 16, hứa sẽ khắc phục.\" src=\"https://file.hstatic.net/1000233206/article/tinh-nang-sao-chep-va-dan-tren-ios-16-apple-xac-nhan-loi_144a6fddbb7b4d2b87d4be4db409b049.jpg\" /></p>\r\n\r\n<p>Tr&ecirc;n iOS 16, mỗi khi người d&ugrave;ng thực hiện thao t&aacute;c sao ch&eacute;p v&agrave; d&aacute;n nội dung từ ứng dụng n&agrave;y sang ứng dụng kh&aacute;c, hệ thống sẽ hiện một cửa sổ th&ocirc;ng b&aacute;o nhỏ y&ecirc;u cầu người d&ugrave;ng x&aacute;c nhận thao t&aacute;c bằng c&aacute;ch nhấn v&agrave;o d&ograve;ng<strong>&nbsp;</strong><strong>Allow Paste</strong><strong>&nbsp;</strong>hoặc hủy h&agrave;nh động với t&ugrave;y chọn&nbsp;<strong>Don&rsquo;t Allow Paste</strong>. Việc cửa sổ x&aacute;c nhận thao t&aacute;c d&aacute;n xuất hiện thường xuy&ecirc;n đ&atilde; tạo ra sự kh&oacute; chịu đối với người d&ugrave;ng trong qu&aacute; tr&igrave;nh sử dụng.&nbsp; Nhiều người d&ugrave;ng đ&atilde; l&ecirc;n tiếng chỉ tr&iacute;ch về vấn đề n&agrave;y v&agrave; gọi l&agrave; n&oacute; lỗi thay v&igrave; t&iacute;nh năng.</p>\r\n\r\n<p>Trước h&agrave;ng loạt những bức x&uacute;c của người d&ugrave;ng về vấn đề n&agrave;y, Apple cuối c&ugrave;ng cũng đ&atilde; l&ecirc;n tiếng phản hồi, họ n&oacute;i rằng đ&acirc;y l&agrave; một&nbsp;<strong>lỗi nằm ngo&agrave;i dự kiến</strong>&nbsp;v&agrave; Apple kh&ocirc;ng c&oacute; chủ đ&iacute;ch tạo ra t&iacute;nh năng n&agrave;y với sự kh&oacute; chịu như vậy. C&acirc;u trả lời n&agrave;y nằm trong email phản hồi khi ph&oacute;ng vi&ecirc;n Kieran (<em>Macrumors</em>) gửi c&acirc;u hỏi đến cho Craig Federighi v&agrave; Tim Cook để ph&agrave;n n&agrave;n về cửa sổ th&ocirc;ng b&aacute;o x&aacute;c nhận; cũng như đề xuất về c&aacute;ch giải quyết của vấn đề n&agrave;y. Apple ho&agrave;n to&agrave;n c&oacute; thể đưa việc xử l&yacute; quyền truy cập v&agrave;o bộ nhớ tạm tương tự như c&aacute;ch m&agrave; iOS đ&atilde; xử l&yacute; quyền truy cập của b&ecirc;n thứ ba v&agrave;o vị tr&iacute;, m&aacute;y ảnh, micr&ocirc;,&hellip;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/ios16-copy-paste_084f84b89eee4f849d1f803d001f398b_grande.jpg\" /></p>\r\n\r\n<p>Ron Huang, một quản l&yacute; cấp cao tại Apple, đ&atilde; trả lời email n&oacute;i rằng đ&acirc;y kh&ocirc;ng phải l&agrave; dự định ban đầu của Apple khi thiết kế t&iacute;nh năng n&agrave;y, n&oacute; l&agrave; lỗi nằm ngo&agrave;i dự kiến của Apple v&agrave; họ sẽ t&igrave;m hiểu kỹ về vấn đề n&agrave;y. Về đề xuất của Kieran để giải quyết, Ron Huang phản hồi rằng, Apple sẽ sớm c&oacute; chỉnh sửa với t&iacute;nh năng n&agrave;y cũng như cải tiến, mở rộng c&aacute;ch thức hoạt động của t&iacute;nh năng, đưa n&oacute; về đ&uacute;ng quỹ đạo m&agrave; Apple đ&atilde; dự định từ đầu cho n&oacute;.</p>\r\n\r\n<p><em>The Verge</em><em>&nbsp;</em>nhận định rằng, điều n&agrave;y khiến qu&aacute; tr&igrave;nh sử dụng của người d&ugrave;ng kh&ocirc;ng c&ograve;n giữ được sự liền mạch. Do vậy, cần phải c&oacute; một giải ph&aacute;p tốt hơn. Khay nhớ tạm tr&ecirc;n iPhone thường chứa những dữ liệu nhạy cảm, bao gồm mật khẩu, h&igrave;nh ảnh ri&ecirc;ng tư, mật khẩu x&aacute;c thực 2 lớp, v.v&hellip; Trong nhiều trường hợp, một số ứng dụng c&oacute; thể tự &yacute; truy xuất đến th&ocirc;ng tin n&agrave;y m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước với người d&ugrave;ng. Việc Apple li&ecirc;n tục hỏi c&oacute; muốn d&aacute;n từ ứng dụng n&agrave;y sang ứng dụng kh&aacute;c hay kh&ocirc;ng l&agrave; một c&aacute;ch để bảo mật lượng dữ liệu tr&ecirc;n.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, mặt tr&aacute;i của n&oacute; l&agrave; khiến cho việc sao ch&eacute;p nội dung trở n&ecirc;n k&eacute;m tự nhi&ecirc;n, liền mạch. Chẳng hạn, mỗi lần người d&ugrave;ng t&aacute;ch một chủ thể rồi cắt ch&uacute;ng trong ứng dụng Ảnh, sau đ&oacute; d&aacute;n v&agrave;o ứng dụng tin nhắn, họ sẽ gặp một pop-up y&ecirc;u cầu x&aacute;c nhận. Hay khi d&aacute;n v&agrave;o ứng dụng Ghi ch&uacute;, Apple cũng lặp lại c&acirc;u hỏi tr&ecirc;n.</p>\r\n\r\n<p>Nguồn:&nbsp;vatvostudio</p>\r\n', 'tinh-nang-sao-chep-va-dan-tren-ios-16-apple-xac-nhan-loi_144a6fddbb7b4d2b87d4be4db409b049.webp', '2022-11-16 19:56:02', '1', '2022-11-16 19:56:02', '1', 1, 1);
INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(7, 'Card đồ họa Nvidia RTX 3070 Ti có thể sớm được nâng cấp lớn.', 'card-do-hoa-nvidia-rtx-3070-ti-co-the-som-duoc-nang-cap-lon', 'Nvidia có thể đang chuẩn bị một vòng quay mới trên GeForce RTX 3070 Ti thông qua rò rỉ mới nhất liên quan đến card đồ họa của Team Green .Điều này đã được phát sóng bởi leaker nổi bật @ harukaze5719 trên Twitter (được đánh dấu bởi Wccftech(mở trong tab mới)), người đã phát hiện ra một biến thể RTX 3070 Ti mới được Gigabyte liệt kê với EEC.', '<p><img alt=\"Card đồ họa Nvidia RTX 3070 Ti có thể sớm được nâng cấp lớn.\" src=\"https://file.hstatic.net/1000233206/article/rtx3070ti-hang-chinh-hieu_bada74b0dec24fcca4ab405f60d13446.jpg\" /></p>\r\n\r\n<p>Nvidia c&oacute; thể đang chuẩn bị một v&ograve;ng quay mới tr&ecirc;n GeForce RTX 3070 Ti th&ocirc;ng qua r&ograve; rỉ mới nhất li&ecirc;n quan đến&nbsp;card đồ họa&nbsp;của Team Green .</p>\r\n\r\n<p>Điều n&agrave;y đ&atilde; được ph&aacute;t s&oacute;ng bởi leaker nổi bật @ harukaze5719 tr&ecirc;n Twitter (được đ&aacute;nh dấu bởi&nbsp;Wccftech(mở trong tab mới)), người đ&atilde; ph&aacute;t hiện ra một biến thể RTX 3070 Ti mới được Gigabyte liệt k&ecirc; với&nbsp;EEC.</p>\r\n\r\n<p>Trong số rất nhiều danh s&aacute;ch cho một số thẻ kh&aacute;c - chủ yếu l&agrave; c&aacute;c mẫu hiện c&oacute;, nhưng c&oacute; thể c&oacute; sự thay đổi về điều đ&oacute;, ch&uacute;ng ta sẽ quay lại vấn đề đ&oacute; sau - c&oacute; một danh s&aacute;ch d&agrave;nh cho &#39;GV-N307T GAMING OC ST-16GD&#39;, c&oacute; nghĩa l&agrave; một card đồ họa Gigabyte RTX 3070 Ti Gaming OC với 16GB VRAM.</p>\r\n\r\n<p>Như bạn c&oacute; thể biết,&nbsp;phi&ecirc;n bản RTX 3070 Ti hiện đang tồn tại&nbsp;bị giới hạn ở 8GB RAM video - c&ugrave;ng số lượng với RTX 3070 - v&igrave; vậy khả năng l&agrave;m mới n&agrave;y tr&ecirc;n cạc đồ họa sẽ tăng gấp đ&ocirc;i, một n&acirc;ng cấp bộ nhớ lớn.</p>\r\n\r\n<p>Điều th&uacute; vị l&agrave; ch&uacute;ng ta đ&atilde; thấy Gigabyte trước đ&acirc;y đ&atilde; cung cấp phi&ecirc;n bản RTX 3070 Ti 16GB với EEC, ngay v&agrave;o đầu năm nay.&nbsp;R&otilde; r&agrave;ng l&agrave; điều đ&oacute; chưa bao giờ xảy ra, nhưng c&oacute; vẻ như kế hoạch c&oacute; thể đ&atilde; trở lại.</p>\r\n\r\n<p><strong>Ph&acirc;n t&iacute;ch: Th&ecirc;m bằng chứng về c&aacute;ch chiến lược &#39;ph&acirc;n lớp&#39; của Nvidia c&oacute; thể hoạt động?</strong></p>\r\n\r\n<p>Việc nộp hồ sơ EEC trước đ&oacute; nhấn mạnh l&yacute; do tại sao ch&uacute;ng ta n&ecirc;n lu&ocirc;n nghi ngờ về những r&ograve; rỉ như thế n&agrave;y.&nbsp;Chỉ v&igrave; một mẫu card đồ họa xuất hiện tại EEC - điều thường xảy ra khi sản phẩm gần được ph&aacute;t h&agrave;nh - kh&ocirc;ng c&oacute; nghĩa l&agrave; n&oacute; nhất thiết phải l&ecirc;n kệ.&nbsp;Đ&ocirc;i khi c&aacute;c hồ sơ suy đo&aacute;n được thực hiện với tổ chức, c&aacute;c mục nhập giữ chỗ kh&ocirc;ng th&agrave;nh hiện thực, như ch&uacute;ng ta đ&atilde; thấy với 3070 Ti 16GB trước đ&acirc;y của Gigabyte.</p>\r\n\r\n<p>Tất nhi&ecirc;n, điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; n&oacute; sẽ kh&ocirc;ng xảy ra trong khoảng thời gian n&agrave;y, v&agrave; &#39;tuy nhi&ecirc;n&#39; lớn ở đ&acirc;y l&agrave; gần đ&acirc;y ch&uacute;ng t&ocirc;i đ&atilde; nghe thấy những lời b&agrave;n t&aacute;n tr&ecirc;n vườn nho về việc&nbsp;l&agrave;m mới RTX 3070 Ti sử dụng GPU GA102&nbsp;(c&agrave;ng cao- chip cuối l&agrave; động cơ của RTX 3080 v&agrave; 3090), chứ kh&ocirc;ng phải l&agrave; GA104 điều khiển RTX 3070 Ti hiện tại.</p>\r\n\r\n<p>V&agrave; khi những tin đồn trở lại lẫn nhau như thế n&agrave;y, họ sẽ c&oacute; th&ecirc;m một ch&uacute;t uy t&iacute;n - mặc d&ugrave; ch&uacute;ng t&ocirc;i vẫn rất thận trọng về vấn đề n&agrave;y.&nbsp;Cũng cần lưu &yacute; rằng tin đồn trước đ&oacute; cho thấy rằng v&ograve;ng quay mới tr&ecirc;n RTX 3070 Ti c&oacute; thể được giới hạn ở một khu vực, c&oacute; lẽ (c&oacute; thể l&agrave; Trung Quốc).&nbsp;Hơn nữa, r&ograve; rỉ trước đ&acirc;y cũng kh&ocirc;ng đề cập đến việc n&acirc;ng cấp VRAM (mặc d&ugrave; ch&uacute;ng t&ocirc;i thậm ch&iacute; c&oacute; thể nhận được một phi&ecirc;n bản với VRAM gấp đ&ocirc;i v&agrave; chip GA102 mới đ&oacute;).</p>\r\n\r\n<p>Tin đồn cuối c&ugrave;ng đ&oacute; cũng th&uacute;c đẩy quan điểm rằng Nvidia đang sẵn s&agrave;ng kh&ocirc;ng chỉ l&agrave; một biến thể RTX 3070 Ti, m&agrave; l&agrave;&nbsp;RTX 3060&nbsp;&nbsp;với 8GB VRAM (thay v&igrave; 12GB).&nbsp;B&acirc;y giờ, hồ sơ EEC từ Gigabyte kh&ocirc;ng hiển thị mục đ&iacute;ch l&agrave;m mới n&agrave;y - c&oacute; một thẻ 3060 mới được liệt k&ecirc;, nhưng vẫn c&oacute; 12GB.&nbsp;V&igrave; vậy, h&atilde;y l&agrave;m điều đ&oacute; những g&igrave; bạn sẽ l&agrave;m, nhưng cũng đ&atilde; c&oacute; cuộc thảo luận về RTX 3060 Ti với bộ nhớ GDDR6X nhanh hơn - 8GB trong trường hợp n&agrave;y, đ&acirc;y l&agrave; mức tải ti&ecirc;u chuẩn với cạc đồ họa hiện tại - v&agrave; mẫu RTX 3060 Ti mới được liệt k&ecirc; ở đ&acirc;y .&nbsp;V&igrave; vậy, c&oacute; thể đ&oacute; l&agrave; một phi&ecirc;n bản với VRAM pepped-up n&oacute;i tr&ecirc;n.</p>\r\n\r\n<p>Cuối c&ugrave;ng, ch&uacute;ng t&ocirc;i kh&ocirc;ng thể chắc chắn về bất kỳ điều g&igrave; trong số n&agrave;y, nhưng những g&igrave; ch&uacute;ng t&ocirc;i c&oacute; thể n&oacute;i l&agrave; c&aacute;c tin đồn đang ng&agrave;y c&agrave;ng chỉ ra rằng Nvidia &iacute;t nhất sẽ đưa ra một hoặc hai phi&ecirc;n bản mới của card đồ họa Ampere hiện c&oacute; của m&igrave;nh (c&oacute; thể sớm nhất l&agrave; trong th&aacute;ng tới).</p>\r\n\r\n<p>Đ&acirc;y dường như l&agrave; một phần của chiến lược triển khai GPU tổng thể trong tương lai gần cho Team Green, v&igrave; c&ocirc;ng ty đ&atilde; n&oacute;i rằng họ dự định xếp&nbsp;lớp c&aacute;c dịch vụ thế hệ hiện tại với thế hệ tiếp theo&nbsp;.&nbsp;V&agrave; với c&aacute;c card đồ họa RTX 4000 cao cấp ra mắt đầu ti&ecirc;n, c&oacute; thể l&agrave; RTX 4090 v&agrave; 4080, c&oacute; nghĩa l&agrave; RTX 3070 v&agrave; 3060 sẽ l&agrave; bản cập nhật nhiều lớp để khắc phục mọi thứ cho đến khi người kế nhiệm Lovelace của ch&uacute;ng xuất hiện, c&oacute; thể phải đến năm 2023.</p>\r\n\r\n<p>RTX 4060 chắc chắn kh&ocirc;ng được mong đợi cho đến năm sau, v&agrave; c&agrave;ng nghe nhiều, ch&uacute;ng t&ocirc;i c&agrave;ng nghĩ rằng đ&acirc;y c&oacute; thể l&agrave; trường hợp của RTX 4070, với Nvidia c&oacute; chủ đ&iacute;ch đang xem x&eacute;t tung ra&nbsp;hai phi&ecirc;n bản kh&aacute; kh&aacute;c nhau của RTX 4080&nbsp;, một trong đ&oacute; c&oacute; thể thay cho 4070 tr&ecirc;n l&yacute; thuyết.&nbsp;Phải thừa nhận rằng đ&oacute; sẽ l&agrave; một động th&aacute;i kỳ lạ, nhưng ch&uacute;ng ta sẽ kh&ocirc;ng phải chờ l&acirc;u để t&igrave;m hiểu xem điều đ&oacute; c&oacute; đ&uacute;ng kh&ocirc;ng -&nbsp;tiết lộ lớn của Nvidia về GPU Lovelace thế hệ tiếp theo&nbsp;chỉ c&ograve;n v&agrave;i ng&agrave;y nữa.</p>\r\n\r\n<p><em>Nguồn: Techradar.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'rtx3070ti-hang-chinh-hieu_bada74b0dec24fcca4ab405f60d134462.webp', '2022-11-16 20:21:10', '1', '2022-11-16 20:21:10', '1', 1, 1),
(8, '9 lý do nên mua laptop sử dụng CPU AMD Ryzen 5000 & 6000 Series thay vì Intel Gen 12.', '9-ly-do-nen-mua-laptop-su-dung-cpu-amd-ryzen-5000-6000-series-thay-vi-intel-gen-12', 'Dù những bộ xử lý tiết kiệm năng lượng (dòng U) của Intel Gen 12 sở hữu tới 10 nhân, tuy nhiên trên thực tế lại chỉ có 2 nhân P-core hiệu năng cao còn lại là 8 nhân E-core xung nhịp rất thấp cho tổng cộng chỉ 12 luồng. Chúng cũng chỉ được sản xuất trên tiến trình 10nm không thực sự tối ưu cho laptop mỏng nhẹ.', '<p><img alt=\"9 lý do nên mua laptop sử dụng CPU AMD Ryzen 5000 &amp; 6000 Series thay vì Intel Gen 12.\" src=\"https://file.hstatic.net/1000233206/article/pasted_image_0__3__9ab1c137fd9d4014b4f1024475967f12.png\" /></p>\r\n\r\n<p>D&ugrave; bộ xử l&yacute; Intel thế hệ 12 đ&atilde; cải thiện đ&aacute;ng kể về hiệu suất, tuy nhi&ecirc;n nếu so với bộ xử l&yacute; AMD Ryzen 5000 &amp; 6000 Series th&igrave; xem ra Intel c&ograve;n phải cải thiện nhiều thứ.</p>\r\n\r\n<p><strong>1. AMD Ryzen sở hữu hiệu năng mạnh mẽ, nhiều nh&acirc;n hiệu năng cao cho laptop mỏng nhẹ</strong></p>\r\n\r\n<p>D&ugrave; những bộ xử l&yacute; tiết kiệm năng lượng (d&ograve;ng U) của Intel Gen 12 sở hữu tới 10 nh&acirc;n, tuy nhi&ecirc;n tr&ecirc;n thực tế lại chỉ c&oacute; 2 nh&acirc;n P-core hiệu năng cao c&ograve;n lại l&agrave; 8 nh&acirc;n E-core xung nhịp rất thấp cho tổng cộng chỉ 12 luồng. Ch&uacute;ng cũng chỉ được sản xuất tr&ecirc;n tiến tr&igrave;nh 10nm kh&ocirc;ng thực sự tối ưu cho laptop mỏng nhẹ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot_2022-08-18_141032_4d528b7d227545cf84890daff7d7ebf0_grande.jpg\" /></p>\r\n\r\n<p>Trong khi đ&oacute; bộ xử l&yacute; AMD Ryzen 5000 &amp; 6000 series đều được sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm/6nm tiết kiệm năng lượng. Bộ xử l&yacute; Ryzen 5 sở hữu 6 nh&acirc;n 12 luồng v&agrave; tất nhi&ecirc;n đều l&agrave; nh&acirc;n hiệu năng cao. Ryzen 7 sở hữu 8 nh&acirc;n 16 luồng cho hiệu suất tổng thể cực kỳ mạnh mẽ cho laptop mỏng nhẹ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot_2022-08-18_141018_cfbd51b411394c1f94109dc9b2781399_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot_2022-08-18_140951_e76f3176b297457484bd38b6361130a3_grande.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; CPU AMD Ryzen 5000 &amp; 6000 series cũng m&aacute;t hơn, tiết kiệm pin hơn v&agrave; c&oacute; thể duy tr&igrave; hiệu suất tốt hơn ngay cả khi kh&ocirc;ng cấp nguồn.</p>\r\n\r\n<p><strong>2. Đồ họa t&iacute;ch hợp mạnh mẽ nhất thế giới.</strong></p>\r\n\r\n<p>Trong khi Intel Gen 12 vẫn chỉ được trang bị GPU Iris Xe giống hệt như thế hệ cũ th&igrave; AMD đ&atilde; mang đồ họa t&iacute;ch hợp ho&agrave;n to&agrave;n mới l&ecirc;n bộ xử l&yacute; Ryzen 6000 series. Với Đồ họa AMD Radeon 600M series, hiệu suất chơi game v&agrave; l&agrave;m việc đều ho&agrave;n to&agrave;n vượt trội.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0_9d994d7dd3c34acaba68813f7eeef8b3_grande.png\" /></p>\r\n\r\n<p>Ngay cả với AMD Ryzen 5000 series sử dụng đồ họa t&iacute;ch hợp AMD Radeon cũ hơn vẫn đủ sức đ&aacute;nh bại đồ họa t&iacute;ch hợp tr&ecirc;n Intel Gen 12.</p>\r\n\r\n<p><strong>3. Sử dụng hiệu quả năng lượng hơn khi chơi game.</strong></p>\r\n\r\n<p>Tr&ecirc;n d&ograve;ng H-series, bộ xử l&yacute; Ryzen 6000 của AMD sử dụng &iacute;t năng lượng hơn Intel Gen 12 8% gi&uacute;p cho m&aacute;y m&aacute;t hơn, k&eacute;o d&agrave;i thời lượng pin đồng thời gi&uacute;p c&aacute;c h&atilde;ng sản xuất laptop c&oacute; thể tạo ra những chiếc m&aacute;y t&iacute;nh chơi game mỏng nhẹ hơn m&agrave; vẫn đảm bảo khả năng tản nhiệt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0__1__80fa28cc5fac476a97bf29616940e4ef_grande.png\" /></p>\r\n\r\n<p><strong>4. Chiến game mượt hơn.</strong></p>\r\n\r\n<p>Với c&ugrave;ng một GPU, bộ xử l&yacute; AMD Ryzen 7 6800H cho fps cao hơn trung b&igrave;nh 7% so với Intel Core i7-12700H trong nhiều tựa game phổ biến.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0__2__ae030496dd7b464db5571747b90b1155_grande.png\" /></p>\r\n\r\n<p>C&oacute; nhiều l&yacute; do gi&uacute;p cho laptop sử dụng CPU AMD c&oacute; fps cao hơn trong game.</p>\r\n\r\n<p>Đầu ti&ecirc;n phải kể đến l&agrave; thiết kế cụm nh&acirc;n mới gi&uacute;p giảm độ trễ. Cụ thể, trước đ&acirc;y một CPU 8 nh&acirc;n sẽ gồm 2 cụm CCX, mỗi cụm 4 nh&acirc;n. Hai cụm nh&acirc;n n&agrave;y sẽ c&oacute; một cầu nối để &ldquo;giao tiếp&rdquo; với nhau. Nhưng chuyển sang kiến tr&uacute;c Zen 3 tr&ecirc;n AMD Ryzen 5000 series v&agrave; 6000 series th&igrave; AMD đ&atilde; thiết kế lại với cả 8 nh&acirc;n nằm tr&ecirc;n một CCX duy nhất, nhờ đ&oacute; độ trễ sẽ được giảm đến mức tối đa.</p>\r\n\r\n<p>Việc hợp nhất 8 nh&acirc;n lại v&agrave;o một CCX cũng gi&uacute;p cho c&aacute;c nh&acirc;n c&oacute; thể truy cập v&agrave;o nhiều Cache L3 hơn. V&iacute; dụ, vẫn l&agrave; 16MB Cache L3 nhưng nếu chia l&agrave;m hai cụm nh&acirc;n th&igrave; mỗi cụm nh&acirc;n sẽ d&ugrave;ng chung 8MB Cache. Trong khi đ&oacute;, với một cụm nh&acirc;n hợp nhất th&igrave; cả 8 nh&acirc;n đều c&oacute; quyền truy cập v&agrave;o 16MB Cache v&agrave; điều n&agrave;y cũng giảm độ trễ, tăng hiệu quả khi chơi game.</p>\r\n\r\n<p>Kiến tr&uacute;c Zen 3+ mới cũng được thiết kế lại cho hiệu quả tr&ecirc;n xung nhịp cao hơn cho hiệu năng trong mọi t&aacute;c vụ nhanh hơn đ&aacute;ng kể.</p>\r\n\r\n<p>Một yếu tố &iacute;t được nhắc tới kh&aacute;c l&agrave; đồ họa t&iacute;ch hợp tr&ecirc;n CPU AMD cực kỳ mạnh mẽ, đặc biệt l&agrave; đồ họa Radeon 680M tr&ecirc;n Ryzen 7 6800H trở l&ecirc;n. Radeon 680M sở hữu tới 12 cụm nh&acirc;n (768 nh&acirc;n), xung nhịp 2200&nbsp; - 2400MHz cho hiệu năng cực kỳ ấn tượng, cao hơn cả NVIDIA MX450. Nếu m&aacute;y t&iacute;nh của bạn kh&ocirc;ng c&oacute; MUX Switch hoặc bạn kh&ocirc;ng bật t&iacute;nh năng n&agrave;y khi chơi game th&igrave; tất cả h&igrave;nh ảnh đ&atilde; được t&iacute;nh to&aacute;n bằng card rời đều được chuyển sang GPU t&iacute;ch hợp để xuất l&ecirc;n m&agrave;n h&igrave;nh. GPU t&iacute;ch hợp mạnh mẽ g&oacute;p phần tăng fps cho rất nhiều tựa game bắn s&uacute;ng v&iacute; dụ như CS:GO.</p>\r\n\r\n<p><strong>5. Đồ họa trong game đẹp hơn.</strong></p>\r\n\r\n<p>Một chiếc laptop c&oacute; c&ugrave;ng hệ thống tản nhiệt, c&ugrave;ng GPU, c&ugrave;ng c&ocirc;ng suất nguồn r&otilde; r&agrave;ng chiếc laptop d&ugrave;ng CPU AMD c&oacute; lợi thế hơn về đồ họa. Nghe c&oacute; vẻ như v&ocirc; l&yacute; nhưng lại cực kỳ thuyết phục, nguy&ecirc;n nh&acirc;n l&agrave; v&igrave; CPU AMD tối ưu năng lượng tốt hơn, tỏa nhiệt &iacute;t hơn từ đ&oacute; điện năng v&agrave; hệ thống tản nhiệt c&oacute; thể dồn cho card đồ họa.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0__3__28ce54e7d4ea4b8f996624fe4ff77cc9_grande.png\" /></p>\r\n\r\n<p>Trong khi đ&oacute; với laptop chạy CPU Intel th&igrave; một lượng lớn điện năng được d&ugrave;ng cho CPU, hệ thống tản nhiệt cũng phải l&agrave;m việc vất vả hơn do CPU tỏa qu&aacute; nhiều nhiệt.</p>\r\n\r\n<p><strong>6. Hiệu suất tốt hơn tr&ecirc;n mỗi watt.</strong></p>\r\n\r\n<p>C&ocirc;ng bằng m&agrave; n&oacute;i th&igrave; hiệu năng của AMD Ryzen 7 6800H kh&ocirc;ng thực sự qu&aacute; vượt trội, suy cho c&ugrave;ng th&igrave; đ&acirc;y chỉ l&agrave; một phi&ecirc;n bản được tối ưu của AMD Ryzen 7 5800. Bộ xử l&yacute; AMD sử dụng năng lượng đặc biệt hiệu quả ở d&agrave;i hiệu suất thấp, từ l&agrave; c&aacute;c t&aacute;c vụ văn ph&ograve;ng, l&agrave;m việc cơ bản. Ch&iacute;nh nhờ ưu điểm đ&oacute; m&agrave; những chiếc laptop gaming d&ugrave;ng chip AMD cho thời gian sử dụng pin trong những t&aacute;c vụ văn ph&ograve;ng c&oacute; thể k&eacute;o d&agrave;i đến 6 - 8 giờ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0__4__069191c696ba4c15a0b332cdb0df1f28_grande.png\" /></p>\r\n\r\n<p>Đồng thời, việc sử dụng năng lượng hiệu quả cũng l&agrave;m cho m&aacute;y m&aacute;t mẻ, y&ecirc;n tĩnh, đặc biệt ph&ugrave; hợp để đi học, đi l&agrave;m.</p>\r\n\r\n<p><strong>7. C&ocirc;ng nghệ sản xuất ti&ecirc;n tiến.</strong></p>\r\n\r\n<p>Như đ&atilde; nhắc đến ở tr&ecirc;n, bộ xử l&yacute; Intel Gen 12 vẫn sử dụng c&ocirc;ng nghệ 10nm đ&atilde; kh&aacute; lỗi thời, trong khi đ&oacute; Bộ vi xử l&yacute; AMD Ryzen 6000 Series được sản xuất tr&ecirc;n tiến tr&igrave;nh 6nm hiệu quả cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0__5__e88e7759dabc450ca24853daf2d1b275_grande.png\" /></p>\r\n\r\n<p><strong>8. Thời lượng pin vượt trội.</strong></p>\r\n\r\n<p>Thử nghiệm với HP EliteBook 865 GP trang bị AMD Ryzen 7 6800U, thời lượng pin khi ph&aacute;t video đạt tới 29 giờ.&nbsp;</p>\r\n\r\n<p>O</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/pasted_image_0__6__c517b4ae1e4b46e69edadbd9bd54bc80_grande.png\" /></p>\r\n\r\n<p>Trong l&agrave;m việc thực tế, những chiếc laptop văn ph&ograve;ng sử dụng bộ xử l&yacute; AMD đều cho thời lượng pin tuyệt vời.</p>\r\n\r\n<p><strong>9. Sự c&acirc;n bằng ho&agrave;n hảo</strong></p>\r\n\r\n<p>Bộ vi xử l&yacute; AMD Ryzen mang đến sự c&acirc;n bằng l&yacute; tưởng về tốc độ, sức mạnh v&agrave; hiệu quả năng lượng để cung cấp những g&igrave; một người &ldquo;th&iacute;ch x&ecirc; dịch&rdquo; cần: thời lượng pin d&agrave;i, hiệu suất mạnh mẽ để l&agrave;m việc, s&aacute;ng tạo v&agrave; chơi game mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Nh&igrave;n chung, ở thời điểm hiện tại, những chiếc laptop sử dụng bộ xử l&yacute; AMD Ryzen 5000 &amp; 6000 Series vẫn l&agrave; lựa chọn l&yacute; tưởng cho cả nhu cầu học tập, văn ph&ograve;ng, gaming lẫn c&aacute;c c&ocirc;ng việc s&aacute;ng tạo với nhiều ưu điểm về hiệu suất, sử dụng năng lượng hiệu quả v&agrave; đặc biệt l&agrave; mức gi&aacute; cũng cực kỳ cạnh tranh.&nbsp;</p>\r\n\r\n<p>C&ograve;n bạn, bạn c&oacute; nghĩ vậy kh&ocirc;ng?</p>\r\n', 'pasted_image_0__3__9ab1c137fd9d4014b4f1024475967f12_large.webp', '2022-11-16 20:21:48', '1', '2022-11-16 20:21:48', '1', 1, 1),
(12, 'HƯỚNG DẪN SỬ DỤNG “PERSONAL VAULT” CỦA ONEDRIVE ĐỂ LƯU DỮ LIỆU NHẠY CẢM', 'huong-dan-su-dung-personal-vault-cua-onedrive-de-luu-du-lieu-nhay-cam', '\"Personal Vault\" (Két sắt cá nhân) là tính năng có trên dịch vụ lưu trữ đám mây OneDrive của Microsoft để bạn lưu trữ các dữ liệu nhạy cảm của bản thân. Tính năng \"Personal Vault\" trên OneDrive đã chính thức được tung ra cho người dùng toàn thế giới vào ngày 30 tháng 9 năm 2019. Các tập tin khi được đưa vào \"Personal Vault\" sẽ được mã hoá và bảo vệ bởi các phương thức xác thực hai lớp.', '<p><img alt=\"HƯỚNG DẪN SỬ DỤNG “PERSONAL VAULT” CỦA ONEDRIVE ĐỂ LƯU DỮ LIỆU NHẠY CẢM\" src=\"https://file.hstatic.net/1000233206/article/xs_1da6c6f52d86424d8760746d5bea7853.jpg\" /></p>\r\n\r\n<p>&quot;Personal Vault&quot; (K&eacute;t sắt c&aacute; nh&acirc;n) l&agrave; t&iacute;nh năng c&oacute; tr&ecirc;n dịch vụ lưu trữ đ&aacute;m m&acirc;y OneDrive của Microsoft để bạn lưu trữ c&aacute;c dữ liệu nhạy cảm của bản th&acirc;n. T&iacute;nh năng &quot;Personal Vault&quot; tr&ecirc;n OneDrive đ&atilde; ch&iacute;nh thức được tung ra cho người d&ugrave;ng to&agrave;n thế giới v&agrave;o ng&agrave;y 30 th&aacute;ng 9 năm 2019. C&aacute;c tập tin khi được đưa v&agrave;o &quot;Personal Vault&quot; sẽ được m&atilde; ho&aacute; v&agrave; bảo vệ bởi c&aacute;c phương thức x&aacute;c thực hai lớp.</p>\r\n\r\n<p><strong>THẾ MẠNH BẢO MẬT CỦA PERSONAL VAULT</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/a_b829ab4f0a5d433286bed6d06ffe2d68_grande.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Khi muốn mở Personal Vault, bạn sẽ được y&ecirc;u cầu phải x&aacute;c thực hai lớp để c&oacute; thể ruy cập v&agrave;o c&aacute;c tập tin, t&agrave;i liệu b&ecirc;n trong.&nbsp;</li>\r\n	<li>Sau khi được mở kho&aacute;, Personal Vault sẽ tự động kho&aacute; lại sau 20 ph&uacute;t m&agrave; bạn kh&ocirc;ng c&oacute; hoạt động hay tương t&aacute;c g&igrave;, bạn phải x&aacute;c thực lại một lần nữa nếu muốn truy cập. Nếu truy cập Personal Vault qua trang web OneDrive, c&aacute;c dữ liệu sẽ kh&ocirc;ng được tr&igrave;nh duyệt cache lại.</li>\r\n	<li>File được lưu trong Vault sẽ kh&ocirc;ng thể chia sẻ với bất cứ ai kh&aacute;c. Kể cả khi bạn đ&atilde; chia sẻ một file rồi mới chuyển n&oacute; v&agrave;o Vault, file đ&oacute; sau đ&oacute; vẫn kh&ocirc;ng thể chia sẻ được. Điều n&agrave;y nghĩa l&agrave; khi đ&atilde; lưu file v&agrave;o Vault, sẽ kh&ocirc;ng bao giờ c&oacute; chuyện bạn lỡ gửi nhầm cho ai được.</li>\r\n	<li>Với ứng dụng OneDrive tr&ecirc;n thiết bị di động, bạn c&oacute; thể scan t&agrave;i liệu hoặc chụp ảnh rồi đưa trực tiếp v&agrave;o Personal vault, lưu trữ ch&uacute;ng ở một vị tr&iacute; an to&agrave;n ngay lập tức m&agrave; kh&ocirc;ng cần phải &quot;lưu tạm&quot; v&agrave;o đ&acirc;u đ&oacute; tr&ecirc;n m&aacute;y rồi mới đưa v&agrave;o &quot;k&eacute;t&quot;.</li>\r\n	<li>Hiện tại, c&aacute;c dịch vụ lưu trữ đ&aacute;m m&acirc;y lớn kh&aacute;c như Dropbox, Google Drive v&agrave; iCloud Drive của Apple vẫn chưa c&oacute; t&iacute;nh năng n&agrave;o tương tự như Personal Vault của Microsoft.</li>\r\n</ul>\r\n\r\n<p><strong>T&Iacute;NH NĂNG PERSONAL VAULT CỰC KỲ HIỆU QUẢ VỚI G&Oacute;I MICROSOFT 365</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/dff_d57600d0714e44309f29c0e85844d706_grande.jpg\" /></p>\r\n\r\n<p>Nếu bạn đang sử dụng phi&ecirc;n bản OneDrive 5GB miễn ph&iacute; v&agrave; g&oacute;i lưu trữ 100GB OneDrive (kh&ocirc;ng k&egrave;m bộ phần mềm Office), bạn sẽ chỉ lưu tối đa 3 tập tin trong Personal Vault.</p>\r\n\r\n<p>Nếu sử dụng g&oacute;i thu&ecirc; bao Microsoft 365 Personal chỉ với 82k/th&aacute;ng hoặc Microsoft 365 Family khoảng 20k/th&aacute;ng/6 người sử dụng, bạn c&oacute; thể lưu trữ bao nhi&ecirc;u tập tin tuỳ th&iacute;ch trong Personal Vault v&agrave; khối lượng lưu trữ l&ecirc;n đến 1TB.</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG PERSONAL VAULT</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/xadd_7da2457676c0471a919a119c5e48aee7_grande.jpg\" /></p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Để sử dụng Personal Vault, đầu ti&ecirc;n bạn chỉ cần mở thư mục OneDrive v&agrave; nhấn v&agrave;o thư mục &quot;Personal Vault&quot;. Bạn c&oacute; thể mở tr&ecirc;n trang web&nbsp;<a href=\"https://onedrive.live.com/\">https://onedrive.live.com</a>&nbsp;hoặc tr&ecirc;n tập tin m&aacute;y t&iacute;nh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/xsa_8c55df5ea52c4839a50847451fdb1242_grande.jpg\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;X&aacute;c thực th&ocirc;ng tin hai lớp qua User Account Control để k&iacute;ch hoạt Personal Vault. Nhấn chọn &ldquo;verify your identity&rdquo; (x&aacute;c thực t&agrave;i khoản của bạn)</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/cvbg_52e71a0fe51b48bca48334431b7e6adf_grande.jpg\" /></p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Hệ thống sẽ y&ecirc;u cầu bạn bảo mật qua số điện thoại hoặc email. Một m&atilde; mật khẩu sẽ được gửi đến bạn th&ocirc;ng qua tin nhắn hoặc email. Bạn cần nhập đ&uacute;ng để c&oacute; thể đăng nhập v&agrave;o Personal Vault.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/utgh_fd5ab96fe3ca49dc8a9699a5acd88b9e_grande.jpg\" /></p>\r\n\r\n<p><strong>Bước 4:</strong>&nbsp;Sau khi v&agrave;o đươc Personal , h&atilde;y di chuyển/sao ch&eacute;p bất kỳ tập tin n&agrave;o bạn muốn bảo mật v&agrave;o thư mục Personal Vault n&agrave;y.</p>\r\n\r\n<p>Về cơ bản, t&iacute;nh năng Personal Vault l&agrave; một khu vực lưu trữ được bảo mật cao hơn tr&ecirc;n OneDrive d&agrave;nh cho những tập tin nhạy cảm của bạn, chẳng hạn như c&aacute;c t&agrave;i liệu t&agrave;i ch&iacute;nh nhạy cảm, c&aacute;c hợp đồng bảo mật hoặc bản sao hộ chiếu, chứng minh nh&acirc;n d&acirc;n, căn cước c&ocirc;ng d&acirc;n, &hellip;</p>\r\n\r\n<p><strong>SAY</strong><strong>&nbsp;&ldquo;NO&rdquo; VỚI CRACK, C</strong><strong>&Agrave;I</strong><strong>&nbsp;ĐẶT&nbsp;</strong><strong>MICROSOFT&nbsp;</strong><strong>365&nbsp;</strong><strong>BẢN</strong><strong>&nbsp;QUYỀN ĐỂ M&Aacute;Y KH&Ocirc;NG BỊ VIRUS GH&Eacute; THĂM V&Agrave; TẬN HƯỞNG C&Aacute;C T&Iacute;NH NĂNG NỘI BẤT CỦA OFFICE (WORD, EXCEL, POWERPOINT)</strong></p>\r\n\r\n<p>Rất nhiều bạn t&acirc;m l&yacute; dung&nbsp;bản crack, c&oacute; đủ Word, Excel, Powerpoint l&agrave; ổn rồi. Nhưng bản crack của Office Word, Excel, Powerpoint rất hay &ldquo;out&rdquo; trong khi đang l&agrave;m, đồng nghĩa với việc nếu bạn kh&ocirc;ng &ldquo;save&rdquo; thường xuy&ecirc;n th&igrave; những nội dung c&oacute; thể bị &ldquo;bay m&agrave;u&quot; bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>T&aacute;c hại của việc sử dụng c&aacute;c phần mềm bẻ kh&oacute;a n&agrave;y c&ograve;n nguy hiểm&nbsp;hơn,&nbsp;bản crack dễ l&agrave;m m&aacute;y t&iacute;nh bị virus &ldquo;gh&eacute; thăm&rdquo; hay bị d&iacute;nh c&aacute;c vấn đề li&ecirc;n quan đến bảo mật m&aacute;y t&iacute;nh v&agrave; dữ liệu. C&agrave;ng sử dụng nhiều phần mềm crack tr&ecirc;n m&aacute;y t&iacute;nh th&igrave; nguy cơ bị d&iacute;nh virus, trojan, m&atilde; độc&hellip;. c&agrave;ng cao.</p>\r\n\r\n<p>Khi sử dụng c&aacute;c phần mềm crack m&agrave; bị gắn m&atilde; độc th&igrave; hacker sẽ kiểm so&aacute;t được ho&agrave;n to&agrave;n m&aacute;y t&iacute;nh của bạn, mọi th&ocirc;ng tin m&agrave; bạn truy xuất, t&igrave;m kiếm tr&ecirc;n internet đều bị hacker theo d&otilde;i. Ngay cả mật khẩu của c&aacute;c t&agrave;i khoản m&agrave; bạn đăng nhập cũng vậy, bạn c&oacute; thể bị mất t&agrave;i khoản bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>V&igrave; vậy h&atilde;y trang bị cho m&igrave;nh Office bản quyền với Microsoft 365, chỉ từ 19k/th&aacute;ng. Vừa tiết kiệm chi ph&iacute; vừa bảo vệ m&aacute;y t&iacute;nh của bạn, y&ecirc;n t&acirc;m l&agrave;m việc.</p>\r\n\r\n<p>', 'xs_1da6c6f52d86424d8760746d5bea7853.webp', '2022-11-18 08:57:14', '3', '2022-11-18 08:57:14', '3', 1, 1),
(13, 'LG Gram 2022 ra mắt người dùng có gì mới ???', 'lg-gram-2022-ra-mat-nguoi-dung-co-gi-moi', 'LG Electronics (LG) đã công bố ra mắt toàn cầu dòng máy tính xách tay cao cấp LG gram 2022 của mình. Lý tưởng cho nhiều đối tượng người dùng, các mẫu laptop mới tiếp tục kế thừa di sản của thương hiệu về tính di động cao nhất với thiết kế kiểu dáng đẹp, siêu nhẹ đồng thời áp dụng phần mềm sáng tạo và phần cứng mới nhất để mang lại nhiều sức mạnh và sự tiện lợi hơn nữa.', '<p><img alt=\"LG Gram 2022 ra mắt người dùng có gì mới ???\" src=\"https://file.hstatic.net/1000233206/article/1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-1_f704188567c74251b8ddcd5aa1b08f23.jpg\" /></p>\r\n\r\n<p><em>LG Electronics (LG) đ&atilde; c&ocirc;ng bố ra mắt to&agrave;n cầu d&ograve;ng m&aacute;y t&iacute;nh x&aacute;ch tay cao cấp&nbsp;<strong>LG gram 2022</strong>&nbsp;của m&igrave;nh.&nbsp;L&yacute; tưởng cho nhiều đối tượng người d&ugrave;ng, c&aacute;c mẫu laptop mới tiếp tục kế thừa di sản của thương hiệu về t&iacute;nh di động cao nhất với thiết kế kiểu d&aacute;ng đẹp, si&ecirc;u nhẹ đồng thời &aacute;p dụng phần mềm s&aacute;ng tạo v&agrave; phần cứng mới nhất để mang lại nhiều sức mạnh v&agrave; sự tiện lợi hơn nữa.</em></p>\r\n\r\n<p><strong>1. C&aacute;c m&atilde; laptop LG Gram 2022</strong></p>\r\n\r\n<p>D&ograve;ng sản phẩm&nbsp;<strong>LG gram 2022</strong>&nbsp;c&oacute; bảy mẫu mới: gram 17 (17Z90Q), gram 16 (16Z90Q), gram 15 (15Z90Q), gram 14 (14Z90Q), gram 2 trong 1 (16T90Q v&agrave; 14T90Q) v&agrave; d&ograve;ng đầu ti&ecirc;n - m&agrave;n h&igrave;nh di động&nbsp;+ view cho LG gram (16MQ70).&nbsp;</p>\r\n\r\n<p>C&oacute; 3 m&agrave;u sắc cho bạn lựa chọn : Snow White, Charcoal Gray, Obsidian Black.</p>\r\n\r\n<p><strong>2. Hiệu năng&nbsp;</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-2_ffe3ddcf4e2b48179fa9440ad8776f98_grande.jpg\" /></p>\r\n\r\n<p><strong>LG gram 2022</strong>&nbsp;đều cung cấp hiệu suất mạnh mẽ được hỗ trợ bởi bộ xử l&yacute; Intel&nbsp;<sup>&reg;</sup>&nbsp;Core &trade; thế hệ thứ 12.&nbsp;M&aacute;y t&iacute;nh x&aacute;ch tay năm nay cũng đ&atilde; được n&acirc;ng cấp l&ecirc;n SSD Gen4 NVMe &trade; mới nhất v&agrave; sử dụng RAM LPDDR5 điện &aacute;p thấp để đạt được hiệu suất tăng khoảng 22% so với c&aacute;c mẫu 2021 gram.&nbsp;Được chứng nhận&nbsp;Nền tảng Intel&nbsp;<sup>&reg;</sup>&nbsp;Evo &trade;, LG gram 2022 đảm bảo tuổi thọ pin tuyệt vời, cho ph&eacute;p người d&ugrave;ng tự do l&agrave;m việc hoặc giải tr&iacute;, bất cứ nơi n&agrave;o trong ng&agrave;y của họ.</p>\r\n\r\n<p><strong>2. M&agrave;n h&igrave;nh</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-3_9c4bbdaf89dc4bc7ae628b2d21ab2aac_grande.jpg\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh<strong>&nbsp;LG gram 2022</strong>&nbsp;vẫn giữ nguy&ecirc;n với tỷ lệ khung h&igrave;nh 16:10, tấm nền IPS độ ph&acirc;n giải WQXGA (2560 x 1600),&nbsp;gam m&agrave;u mới cung cấp h&igrave;nh ảnh sắc n&eacute;t, sống động với độ s&aacute;ng cao, độ bao phủ 99% của kh&ocirc;ng gian m&agrave;u DCI-P3 v&agrave; nhiều diện t&iacute;ch m&agrave;n h&igrave;nh để đ&aacute;p ứng người d&ugrave;ng &#39;năng suất v&agrave; nhu cầu giải tr&iacute; đa dạng. Điểm kh&aacute;c biệt hơn, m&agrave;n h&igrave;nh LG gram 2022 c&oacute; khả năng chống ch&oacute;i,&nbsp;giảm phản xạ g&acirc;y mất tập trung v&agrave; gi&uacute;p người d&ugrave;ng dễ d&agrave;ng nh&igrave;n thấy những g&igrave; họ đang l&agrave;m, bất kể điều kiện &aacute;nh s&aacute;ng xung quanh.</p>\r\n\r\n<p><strong>3. N&acirc;ng cao trải nghiệm người d&ugrave;ng</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-5_6da6198ad039467f93b4a0e47d3681d0_grande.jpg\" /></p>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay LG gram 2022 n&acirc;ng cao trải nghiệm người d&ugrave;ng với LG Glance của Mirametrix&nbsp;<sup>&reg;</sup>&nbsp;, một giải ph&aacute;p phần mềm dựa tr&ecirc;n AI s&aacute;ng tạo nhằm n&acirc;ng cao t&iacute;nh bảo mật v&agrave; tiện lợi.&nbsp;LG Glance by Mirametrix&nbsp;<sup>&reg;</sup>&nbsp;tự động kh&oacute;a m&agrave;n h&igrave;nh nếu người d&ugrave;ng bước ra khỏi m&aacute;y t&iacute;nh x&aacute;ch tay của họ.&nbsp;N&oacute; cũng cảnh b&aacute;o người d&ugrave;ng v&agrave; l&agrave;m mờ nội dung họ đang l&agrave;m việc nếu ai đ&oacute; đang nh&igrave;n trộm m&agrave;n h&igrave;nh từ tr&ecirc;n vai của họ.&nbsp;</p>\r\n\r\n<p>Thuận tiện, nếu một m&agrave;n h&igrave;nh ri&ecirc;ng biệt được kết nối, con trỏ chuột v&agrave; cửa sổ hiện đang được sử dụng sẽ tự động di chuyển đến bất kỳ m&agrave;n h&igrave;nh n&agrave;o m&agrave; người d&ugrave;ng đang nh&igrave;n.&nbsp;Ngo&agrave;i ra, c&aacute;c m&ocirc; h&igrave;nh năm nay cung cấp một m&ocirc;i trường tối ưu h&oacute;a cho hội nghị truyền h&igrave;nh với c&aacute;c t&iacute;nh năng như đăng nhập bằng khu&ocirc;n mặt, khử tiếng ồn bằng AI v&agrave; webcam Full HD t&iacute;ch hợp.</p>\r\n\r\n<p><strong>4. Thiết kế v&agrave; độ bền qu&acirc;n đội&nbsp;</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-6_9842a251d571442480cf4de7c09b0f05_grande.jpg\" /></p>\r\n\r\n<p>C&aacute;c gam mới nhất vẫn đ&uacute;ng với bản sắc cốt l&otilde;i của thương hiệu, mang đến thiết kế nhỏ gọn, si&ecirc;u nhẹ m&agrave; kh&ocirc;ng ảnh hưởng đến độ bền hoặc hiệu suất.&nbsp;Với thiết kế viền si&ecirc;u mỏng 4 chiều, mỗi mẫu đều mang lại tỷ lệ m&agrave;n h&igrave;nh so với th&acirc;n m&aacute;y tuyệt vời v&agrave; đủ chắc chắn để đ&aacute;p ứng ti&ecirc;u chuẩn MIL-STD-810G nghi&ecirc;m ngặt của qu&acirc;n đội Hoa Kỳ.&nbsp;Hơn hết, tất cả c&aacute;c sản phẩm LG gram 2022 đều được đ&oacute;ng g&oacute;i trong bao b&igrave; c&oacute; &yacute; thức về m&ocirc;i trường, thể hiện khả năng t&aacute;i sử dụng chu đ&aacute;o sau khi mở hộp - chuyển đổi kh&eacute;o l&eacute;o th&agrave;nh lịch để b&agrave;n v&agrave; hộp đựng b&uacute;t ch&igrave;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-4_e08d8c02c8c94cb882be2027d3cf6881_grande.jpg\" /></p>\r\n\r\n<p>L&agrave; thiết bị đa năng cho ph&eacute;p người d&ugrave;ng chuyển đổi giữa m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; m&aacute;y t&iacute;nh bảng chỉ trong v&agrave;i gi&acirc;y, c&aacute;c mẫu LG gram 2 trong 1 16 v&agrave; 14 inch mới được c&agrave;i đặt sẵn c&aacute;c ứng dụng vẽ v&agrave; ghi ch&uacute; được tối ưu h&oacute;a cho LG Stylus Pen (Wacom AES 2.0) .&nbsp;Với sự kết hợp của hỗ trợ b&uacute;t cảm ứng được t&iacute;ch hợp trơn tru v&agrave; giao diện người d&ugrave;ng dựa tr&ecirc;n AI của LG, c&aacute;c sản phẩm chuyển đổi gram mới nhất mang lại hiệu quả c&ocirc;ng việc cao hơn cũng như trải nghiệm viết v&agrave; ph&aacute;c thảo nhanh nhạy v&agrave; th&uacute; vị.</p>\r\n\r\n<p>D&ograve;ng sản phẩm gram năm nay cũng ch&agrave;o đ&oacute;n + view cho LG gram, một m&agrave;n h&igrave;nh 16 inch di động với nắp c&oacute; thể th&aacute;o rời kết nối qua USB-C để mở rộng kh&ocirc;ng gian l&agrave;m việc kỹ thuật số.&nbsp;16MQ70 c&oacute; thể được đặt cạnh m&aacute;y t&iacute;nh x&aacute;ch tay theo hướng ngang hoặc dọc,&nbsp;v&agrave; l&agrave; một kết hợp ho&agrave;n hảo cho LG gram 16;&nbsp;kết hợp để cung cấp giao diện liền mạch v&agrave; tấm nền IPS tỷ lệ khung h&igrave;nh 32:10 cho đa nhiệm n&acirc;ng cao.</p>\r\n\r\n<p>Seo Young-jae, ph&oacute; chủ tịch cấp cao ki&ecirc;m trưởng bộ phận kinh doanh CNTT của C&ocirc;ng ty Giải ph&aacute;p Kinh doanh LG Electronics cho biết: &ldquo;D&ograve;ng sản phẩm 2022 gram t&ocirc;n vinh bản sắc v&agrave; di sản của thương hiệu với t&iacute;nh di động cao nhất, hiệu suất vượt trội v&agrave; trải nghiệm người d&ugrave;ng được tối ưu h&oacute;a.&nbsp;&ldquo;L&yacute; tưởng cho những người năng động hay di chuyển, c&aacute;c sản phẩm của LG gram được thiết kế để tối đa h&oacute;a năng suất cho d&ugrave; bạn đang ở đ&acirc;u hay đang l&agrave;m g&igrave;&rdquo;.</p>\r\n\r\n<p><strong>LG Gram 2022</strong>&nbsp;đ&aacute;ng mong chờ đ&uacute;ng kh&ocirc;ng mọi người.</p>\r\n', '1305_lg-gram-16-va-gram-17-2022-chinh-thuc-ra-mat-cau-hinh-manh-2_ffe3ddcf4e2b48179fa9440ad8776f98_grande.webp', '2022-11-18 08:59:20', '3', '2022-11-18 08:59:20', '3', 1, 1),
(14, 'TOP NHỮNG KIỂU MÁY GAMING DƯỚI 20 TRIỆU CẤU HÌNH MẠNH ĐÁP ỨNG PHẦN MỀM KĨ THUẬT ĐỒ HOẠ TỐT NHẤT 2022.', 'top-nhung-kieu-may-gaming-duoi-20-trieu-cau-hinh-manh-dap-ung-phan-mem-ki-thuat-do-hoa-tot-nhat-2022', 'Những dòng laptop gaming khác đỉnh cao hơn thì có giá lên đến vài chục triệu, thậm chí là cả trăm triệu. Và đây quả thật là một thử thách không thể vượt qua của đại đa số các bạn sinh viên. Do đó Hangchinhhieu.vn đã tổng hợp ra những chiếc laptop tốt nhất để bạn có thể chiến game mượt mà chỉ có giá dao động chưa đến 20 triệu đồng mà có thể đáp ứng nhứng tác vụ mà các bạn cần đến !!!', '<p><em>Bạn l&agrave; sinh vi&ecirc;n v&agrave; đang t&igrave;m cho m&igrave;nh 1 chiếc Laptop Gaming&nbsp;c&oacute; cấu h&igrave;nh mạnh mẽ, tốc độ phản hồi si&ecirc;u nhanh c&ugrave;ng khả năng xử l&yacute; đồ họa tuyệt vời, nhưng t&agrave;i ch&iacute;nh dưới 20 triệu ???</em></p>\r\n\r\n<p><em>Những d&ograve;ng laptop gaming kh&aacute;c đỉnh cao hơn th&igrave; c&oacute; gi&aacute; l&ecirc;n đến v&agrave;i chục triệu, thậm ch&iacute; l&agrave; cả trăm triệu.&nbsp;</em><em>V&agrave; đ&acirc;y quả thật l&agrave; một thử th&aacute;ch kh&ocirc;ng thể vượt qua của đại đa số c&aacute;c bạn sinh vi&ecirc;n. Do đ&oacute; Hangchinhhieu.vn&nbsp;đ&atilde; tổng hợp ra những chiếc laptop tốt nhất để bạn c&oacute; thể chiến game mượt m&agrave;&nbsp;chỉ c&oacute; gi&aacute; dao động chưa đến 20 triệu đồng m&agrave; c&oacute; thể đ&aacute;p ứng nhứng t&aacute;c vụ m&agrave; c&aacute;c bạn cần đến !!!</em></p>\r\n\r\n<h2><a href=\"https://hangchinhhieu.vn/products/laptop-acer-aspire-7-a715-42g-r4xx-r5-5500u\">Laptop Acer Aspire 7 A715-42G-R4XX&nbsp;</a></h2>\r\n\r\n<p><strong>Trong ph&acirc;n kh&uacute;c gaming phổ th&ocirc;ng gi&aacute; rẻ đ&aacute;ng n&oacute;i đến nổi bật l&agrave; d&ograve;ng&nbsp;</strong>Acer Aspire 7 A715 42G<strong>, mẫu laptop c&oacute; ngoại h&igrave;nh văn ph&ograve;ng, cấu h&igrave;nh gaming, k&egrave;m theo dịch vụ&nbsp;</strong><strong>bảo h&agrave;nh si&ecirc;u tốc 3S1</strong><strong>&nbsp;v&agrave; một mức gi&aacute; cực kỳ hợp l&yacute;.</strong></p>\r\n\r\n<p>Chiếc Laptop n&agrave;y c&ograve;n được trang bị th&ecirc;m một GPU GTX. Điều n&agrave;y sẽ gi&uacute;p Acer Aspire 7 A715-42G-R4XX trở n&ecirc;n đa dụng hơn rất nhiều so với những mẫu laptop văn ph&ograve;ng kh&aacute;c, bạn c&oacute; thể chơi game, edit video, sử dụng c&aacute;c phần mềm tận dụng được GPU v&agrave; tất nhi&ecirc;n l&agrave; c&acirc;n tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/ckeditor_3451860_e3c8a37305f84596a15e465e97cd6acc_grande.jpg\" /></p>\r\n\r\n<p>Với 18 triệu đồng, game thủ sẽ sở hữu ngay một chiếc laptop c&oacute; ngoại h&igrave;nh văn ph&ograve;ng, cấu h&igrave;nh gaming gi&uacute;p bạn vừa c&oacute; thể l&agrave;m việc v&agrave; chơi game. Tuy kh&ocirc;ng được thay đổi nhiều về mặt h&igrave;nh thức nhưng cấu h&igrave;nh tr&ecirc;n.&nbsp;được n&acirc;ng cấp mạnh hơn rất nhiều so với phi&ecirc;n bản tiền nhiệm . Hiện tại đ&acirc;y l&agrave; sự lựa chọn số một d&agrave;nh cho game thủ cần t&igrave;m mua một chiếc laptop gaming với mức ng&acirc;n s&aacute;ch dưới 20 triệu đồng.</p>\r\n\r\n<h2><a href=\"https://hangchinhhieu.vn/products/laptop-asus-tuf-gaming-f15-fx506lh-hn188w-i5-10300h\">Laptop ASUS TUF Gaming F15 FX506LH-HN188W&nbsp;</a></h2>\r\n\r\n<p>Với cấu h&igrave;nh khoẻ từ card rời NVIDIA GeForce GTX c&ugrave;ng một thiết kế ấn tượng, sẽ mang đến nhiều trải nghiệm th&uacute; vị cho c&aacute;c game thủ</p>\r\n\r\n<p>laptop Asus TUF Gaming FX506LH i5 (HN188W)&nbsp;sở hữu chip Intel&nbsp;<strong>Core i5 Comet Lake 10300H</strong>&nbsp;v&agrave; card&nbsp;<strong>GeForce GTX&nbsp;1650 4 GB</strong>&nbsp;từ nh&agrave; NVIDIA xử l&yacute; ho&agrave;n hảo mọi nhu cầu từ văn ph&ograve;ng đến đồ họa nặng hay thậm ch&iacute; hỗ trợ bạn chiến c&aacute;c tựa game hấp dẫn: CS:GO, Fifa Online 4, GTA V,...&nbsp;C&ugrave;ng&nbsp;<strong>RAM 8 GB</strong>&nbsp;v&agrave;&nbsp;<strong>SSD 512 GB</strong>&nbsp;n&acirc;ng cao tốc độ phản hồi, hạn chế t&igrave;nh trạng giật hay lag m&aacute;y khi bạn mở nhiều ứng dụng c&ugrave;ng l&uacute;c hay chuyển đổi qua lại, tối ưu hiệu suất cho&nbsp;laptop..</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-1_9c92c6aea3184e04a97d6c957f300bb4_grande.jpg\" /></p>\r\n\r\n<p>ASUS TUF FX506LH-HN188W đ&atilde;&nbsp;vượt qua b&agrave;i thử nghiệm độ bền chuẩn qu&acirc;n đội MIL-STD-810H. C&aacute;c thử nghiệm như thả rơi, chống rung, nhiệt độ cao, nhiệt độ thấp hay độ ẩm đều đ&atilde; được vượt qua tr&ecirc;n chiếc TUF Gaming F15, để khi đến tay người ti&ecirc;u d&ugrave;ng, đ&oacute; sẽ l&agrave; một chiếc laptop gaming v&ocirc; c&ugrave;ng bền vững.</p>\r\n\r\n<h2><a href=\"https://hangchinhhieu.vn/products/laptop-acer-nitro-5-an515-45-r6ev-r5-5600h\">Laptop Acer Nitro 5 AN515-45-R6EV</a></h2>\r\n\r\n<p>Đ&aacute;nh bại mọi đối thủ trong mọi trận chiến với bộ vi xử l&yacute;&nbsp;AMD Ryzen 5&nbsp;5600H với 6 nh&acirc;n 12 luồng mang đến tốc độ cơ bản 3.30 GHz v&agrave; đạt tối đa l&ecirc;n đến 4.2 GHz nhờ Turbo Boost, c&ugrave;ng bộ nhớ đệm 16 MB mang đến hiệu suất c&ocirc;ng việc bất ngờ khi hỗ trợ trong mọi c&ocirc;ng việc văn ph&ograve;ng từ cơ bản đến n&acirc;ng cao với Word, Excel, ... hay thậm ch&iacute; c&ograve;n xử l&yacute; c&aacute;c nhu cầu thiết kế đồ hoạ, thiết kế posters, banners, chỉnh sửa h&igrave;nh ảnh vơi lightroom hay xuất video ... ấn tượng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-5_e45b6a7e9a33466fa982385d385239ff_grande.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng những hỗ trợ bạn tối đa trong việc chiến những trận game LOL, Total War: Warhammer,... đầy kịch t&iacute;nh, card đồ họa rời NVIDIA GeForce GTX 1650 4 GB c&ograve;n cho ph&eacute;p đồ họa hiện thị một c&aacute;ch r&otilde; n&eacute;t c&ugrave;ng sắc m&agrave;u ch&acirc;n thật, thực hiện c&ocirc;ng việc s&aacute;ng tạo một c&aacute;ch hiệu quả hơn với c&aacute;c phần mềm thiết kế Lightroom, AI, Photoshop,...</p>\r\n\r\n<h2><a href=\"https://hangchinhhieu.vn/products/laptop-gigabyte-g5-gd-51s1123so-72-ntsc-i5-11400h\">Laptop Gigabyte G5 GD-51S1123SO</a></h2>\r\n\r\n<p>Laptop Gigabyte GAMING G5 GD-51S1123SO&nbsp;được trang bị bộ vi xử l&yacute;&nbsp;<em>Intel Core i5-11400H, Intel Core thế hệ thứ 11</em>&nbsp;ho&agrave;n to&agrave;n mới mang lại hiệu năng cao với sức mạnh tuyệt vời gi&uacute;p đ&aacute;p ứng ho&agrave;n hảo mọi nhu cầu l&agrave;m việc, học tập v&agrave; giải tr&iacute;. Mức hiệu năng tốc độ m&agrave; chip Intel thế hệ 11 đem lại gi&uacute;p cho &ldquo;cỗ m&aacute;y&rdquo; ho&agrave;n th&agrave;nh nhanh ch&oacute;ng mọi khối lượng c&ocirc;ng việc hằng ng&agrave;y. Với việc sở hữu sẵn tới&nbsp;16GB RAM&nbsp;hiệu năng cao v&agrave;&nbsp;<strong>512GB SSD</strong>&nbsp;c&oacute; khả năng đa nhiệm xuất sắc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/gigabyte_g5_1280x720-800-resize_00d0ad14ce4e4d4183a7c7a9998230b0_grande.jpg\" /></p>\r\n\r\n<p>Sản phẩm Gigabyte&nbsp;G5 GD n&agrave;y c&ograve;n được trang bị card đồ hoạ rời&nbsp;NVIDIA GeForce RTX 3050 4GB GDDR6 / Intel UHD Graphics,&nbsp;đ&acirc;y được xem l&agrave; card đồ họa y&ecirc;u th&iacute;ch của c&aacute;c gamer lẫn designer với sức mạnh vượt trội. Card đồ hoạ ti&ecirc;n tiến n&agrave;y c&ograve;n mang đến cho laptop khả năng xử l&yacute; đồ họa ấn tượng khi sử dụng c&ugrave;ng l&uacute;c&nbsp;Photoshop, Lightroom v&agrave; một số phần mềm kh&aacute;c&nbsp;m&agrave; kh&ocirc;ng gặp bất k&igrave; kh&oacute; khăn n&agrave;o.</p>\r\n\r\n<p>Với hiệu suất vượt trội kể tr&ecirc;n, Gigabyte GAMING G5&nbsp;c&oacute; thể ho&agrave;n to&agrave;n tự tin &ldquo;c&acirc;n&rdquo; được những tựa game rất nặng tr&ecirc;n thị trường hiện nay như GTA5, Horizon Zero Dawn,&hellip;với thiết đặt đồ hoạ hợp l&yacute;.</p>\r\n\r\n<h2><a href=\"https://hangchinhhieu.vn/products/laptop-hp-victus-16-e0175ax-4r0u8pa-r5-5600h\">Laptop HP Victus 16-e0175AX (4R0U8PA)</a></h2>\r\n\r\n<p>Mang tr&ecirc;n m&igrave;nh vẻ ngo&agrave;i lịch l&atilde;m với thiết kế đơn giản.&nbsp;M&aacute;y chủ yếu được l&agrave;m từ nhựa được phủ nh&aacute;m mờ mang đến cảm gi&aacute;c cực kỳ cao cấp.&nbsp;HP Victus trang bị Ryzen 5 5600H, bộ vi xử l&yacute; thuộc series 5000 mới nhất từ&nbsp;CPU&nbsp;AMD. Với ưu điểm l&agrave; sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm ti&ecirc;n tiến, c&oacute; tới 6 l&otilde;i 12 luồng, tốc độ tối đa 4.2GHz v&agrave; TDP 45W, Ryzen 5 5600H vừa mang đến hiệu suất mạnh mẽ, vừa tiết kiệm năng lượng, lại vừa c&oacute; khả năng duy tr&igrave; xung nhịp cao trong thời gian d&agrave;i. Ch&iacute;nh v&igrave; thế, HP Victus kh&ocirc;ng chỉ chơi game tốt m&agrave; c&ograve;n đạt hiệu quả cao trong c&ocirc;ng việc, đ&aacute;p ứng được những c&ocirc;ng việc chuy&ecirc;n nghiệp, đ&ograve;i hỏi hiệu suất cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/maxresdefault_d8ac3f4bfab14a2cbf91f4fc0ef970fb_grande.jpg\" /></p>\r\n\r\n<p>D&ugrave; c&oacute; m&agrave;n h&igrave;nh lớn 16,1 inch nhưng HP Victus vẫn rất gọn g&agrave;ng với trọng lượng chỉ 2,46kg v&agrave; độ mỏng 2,35cm. Viền m&agrave;n h&igrave;nh cực mỏng ở 3 cạnh c&ugrave;ng trọng lượng tương đối nhẹ gi&uacute;p HP Victus c&oacute; t&iacute;nh di động cao, dễ d&agrave;ng để bạn mang đi bất cứ đ&acirc;u.</p>\r\n\r\n<p>Đ&oacute; l&agrave; top 5 những mẫu Laptop gaming trong ph&acirc;n kh&uacute;c dưới 20 triệu tốt nhất để bạn c&oacute; thể tham khảo v&agrave; lựa chọn. Vừa giải tr&iacute; c&ugrave;ng những tựa game đỉnh cao, vừa c&oacute; thể đ&aacute;p ứng nhu cầu học tập, với mức gi&aacute; &ldquo;hấp dẫn&rdquo; n&agrave;y th&igrave; đến&nbsp;<a href=\"https://hangchinhhieu.vn/\">Hangchinhhieu.vn</a>&nbsp;ngay th&ocirc;i để &ldquo;sở hữu&rdquo; sản phẩm sớm nhất !!!</p>\r\n', 'asus-tuf-gaming-a15-fa506-man-hinh_c113a9c2a3af4e558ef4d33fd75ec9fd.webp', '2022-11-18 09:00:12', '3', '2022-11-18 09:00:12', '3', 1, 1),
(15, 'VỚI ONEDRIVE, BẠN CÓ THỂ TRUY CẬP Ở CHẾ ĐỘ NGOẠI TUYẾN?', 'voi-onedrive-ban-co-the-truy-cap-o-che-do-ngoai-tuyen', 'Khác với những ứng dụng lưu trữ khác, bạn có thể truy cập ngoại tuyến các file trên OneDrive khi không có internet bằng việc lựa chọn công cụ “hiển thị khi ngoại tuyến”. Giờ đây dù đang ở bên ngoài hay những nơi không có kết nối, bạn vẫn có thể truy cập thông tin trên OneDrive dễ dàng.', '<p><img alt=\"VỚI ONEDRIVE, BẠN CÓ THỂ TRUY CẬP Ở CHẾ ĐỘ NGOẠI TUYẾN?\" src=\"https://file.hstatic.net/1000233206/article/anh9_fa6c1a3204214dc39d26667dd439488e.jpg\" /></p>\r\n\r\n<p>Kh&aacute;c với những ứng dụng lưu trữ kh&aacute;c, bạn c&oacute; thể truy cập ngoại tuyến c&aacute;c file tr&ecirc;n OneDrive khi kh&ocirc;ng c&oacute; internet bằng việc lựa chọn c&ocirc;ng cụ &ldquo;hiển thị khi ngoại tuyến&rdquo;. Giờ đ&acirc;y d&ugrave; đang ở b&ecirc;n ngo&agrave;i hay những nơi kh&ocirc;ng c&oacute; kết nối, bạn vẫn c&oacute; thể truy cập th&ocirc;ng tin tr&ecirc;n OneDrive dễ d&agrave;ng.</p>\r\n\r\n<p>Chẳng hạn, ạn chuẩn bị đi du lịch v&agrave; đến khu vực kh&ocirc;ng c&oacute; kết nối, nhưng bạn vẫn muốn xem một số file online lưu tr&ecirc;n OneDrive m&agrave; kh&ocirc;ng cần phải tải về m&aacute;y, tiết kiệm dung lượng. H&atilde;y thử ngay t&iacute;nh năng &ldquo;truy cập ngoại tuyến&rdquo; của OneDrive.</p>\r\n\r\n<p><strong><em>Lưu &yacute;:</em></strong>&nbsp;<em>Khi bạn ngoại tuyến, bạn chỉ c&oacute; thể mở c&aacute;c tệp được lưu trữ tr&ecirc;n thiết bị của m&igrave;nh. Để chỉnh sửa hay tạo file mới, th&igrave; phải cần c&oacute; internet bạn mới sử dụng được.</em></p>\r\n\r\n<p><strong>C&Aacute;C BƯỚC ĐỂ BẬT CHẾ ĐỘ HIỂN THỊ NGOẠI TUYẾN TR&Ecirc;N ONEDRIVE</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/anh10_439d116b34d141c49bb6aad6d2529a9c_grande.jpg\" /></p>\r\n\r\n<p>Đầu ti&ecirc;n, bạn chọn folder bạn muốn hiển thị ngo&agrave;i tuyến v&agrave; bật chế độ &ldquo;Make available offline&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau khi chọn xong, folder được chọn sẽ c&oacute; dấu &ldquo;tick&rdquo; x&aacute;m.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/anh11_76ea9b878257412cbc35536da6de26f2_grande.jpg\" /></p>\r\n\r\n<p>B&acirc;y giờ, mặc d&ugrave; kh&ocirc;ng c&oacute; internet nhưng bạn vẫn c&oacute; thể mở được file b&ecirc;n trong folder đ&atilde; chọn. Thật vi diệu đ&uacute;ng kh&ocirc;ng n&agrave;o? Đ&acirc;y l&agrave; t&iacute;nh năng đặc biệt của OneDrive, m&agrave; Google Drive hay Dropbox đều kh&ocirc;ng c&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>SAY</strong><strong>&nbsp;&ldquo;NO&rdquo; VỚI CRACK, C</strong><strong>&Agrave;I</strong><strong>&nbsp;ĐẶT&nbsp;</strong><strong>MICROSOFT&nbsp;</strong><strong>365&nbsp;</strong><strong>BẢN</strong><strong>&nbsp;QUYỀN ĐỂ M&Aacute;Y KH&Ocirc;NG BỊ VIRUS GH&Eacute; THĂM V&Agrave; TẬN HƯỞNG 1TB ONEDRIVE MIỄN PH&Iacute;</strong></p>\r\n\r\n<p>Rất nhiều bạn t&acirc;m l&yacute; dung&nbsp;bản crack, c&oacute; đủ Word, Excel, Powerpoint l&agrave; ổn rồi. Nhưng bản crack của Office Word, Excel, Powerpoint rất hay &ldquo;out&rdquo; trong khi đang l&agrave;m, đồng nghĩa với việc nếu bạn kh&ocirc;ng &ldquo;save&rdquo; thường xuy&ecirc;n th&igrave; những nội dung c&oacute; thể bị &ldquo;bay m&agrave;u&quot; bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>T&aacute;c hại của việc sử dụng c&aacute;c phần mềm bẻ kh&oacute;a n&agrave;y c&ograve;n nguy hiểm&nbsp;hơn,&nbsp;bản crack dễ l&agrave;m m&aacute;y t&iacute;nh bị virus &ldquo;gh&eacute; thăm&rdquo; hay bị d&iacute;nh c&aacute;c vấn đề li&ecirc;n quan đến bảo mật m&aacute;y t&iacute;nh v&agrave; dữ liệu. C&agrave;ng sử dụng nhiều phần mềm crack tr&ecirc;n m&aacute;y t&iacute;nh th&igrave; nguy cơ bị d&iacute;nh virus, trojan, m&atilde; độc&hellip;. c&agrave;ng cao.</p>\r\n\r\n<p>Khi sử dụng c&aacute;c phần mềm crack m&agrave; bị gắn m&atilde; độc th&igrave; hacker sẽ kiểm so&aacute;t được ho&agrave;n to&agrave;n m&aacute;y t&iacute;nh của bạn, mọi th&ocirc;ng tin m&agrave; bạn truy xuất, t&igrave;m kiếm tr&ecirc;n internet đều bị hacker theo d&otilde;i. Ngay cả mật khẩu của c&aacute;c t&agrave;i khoản m&agrave; bạn đăng nhập cũng vậy, bạn c&oacute; thể bị mất t&agrave;i khoản bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>V&igrave; vậy h&atilde;y trang bị cho m&igrave;nh Office bản quyền với Microsoft 365, chỉ từ 19k/th&aacute;ng. Vừa tiết kiệm chi ph&iacute; vừa bảo vệ m&aacute;y t&iacute;nh của bạn, y&ecirc;n t&acirc;m l&agrave;m việc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/anh12_74f716eea0054fa7b0d81109f3ea2fc0_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'anh9_fa6c1a3204214dc39d26667dd439488e.webp', '2022-11-18 09:01:10', '3', '2022-11-18 09:13:02', '3', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

DROP TABLE IF EXISTS `db_customer`;
CREATE TABLE IF NOT EXISTS `db_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(1, 'Võ Đang Trường', 'truongvobin', '8e67cfe9b5daec65ecd5ba1271ec6225', '', '0768484671', 'truong.vd2000@gmail.com', '2022-11-13 00:00:00', 1, 1),
(4, 'Võ hột vịt', 'truong.vd1503', '8e67cfe9b5daec65ecd5ba1271ec6225', '', '0728372637', 'truong.vd1503@gmail.com', '2022-11-21 00:00:00', 1, 1),
(5, 'Võ Vy', 'truongvohaha', '8e67cfe9b5daec65ecd5ba1271ec6225', '', '0785372638', 'truongvobin@gmail.com', '2022-11-22 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

DROP TABLE IF EXISTS `db_discount`;
CREATE TABLE IF NOT EXISTS `db_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, '100nghin', 100000, 50, 0, '0000-00-00', 0, '', '2022-11-13', 1, 1, 1),
(2, 'X1GSZW0WH3B8', 100000, 1, 0, '2022-12-13', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-11-13', 0, 1, 1),
(3, 'HBFIE9XNDTWY', 100000, 1, 0, '2022-12-21', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-11-21', 0, 1, 1),
(4, '1WKLBER5CVAK', 100000, 1, 0, '2022-12-22', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-11-22', 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

DROP TABLE IF EXISTS `db_district`;
CREATE TABLE IF NOT EXISTS `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `matp` (`provinceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

DROP TABLE IF EXISTS `db_order`;
CREATE TABLE IF NOT EXISTS `db_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  `payment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerid` (`customerid`),
  KEY `province` (`province`),
  KEY `district` (`district`),
  KEY `province_2` (`province`),
  KEY `district_2` (`district`),
  KEY `province_3` (`province`),
  KEY `district_3` (`district`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `notes`, `trash`, `status`, `payment`) VALUES
(1, '9023hTkD', 1, '2022-11-14 09:50:19', 'Raphael - Võ Đang Trường', '+84707816283', 16522500, 30000, 0, 79, 785, '673/5/3 Tỉnh Lộ 10', 'asdasas', 0, 0, NULL),
(2, 'VxOYDpQM', 1, '2022-11-14 11:06:12', 'Võ Đang Trường', '08768484671', 2147483647, 30000, 0, 92, 926, '270  Đường số 1A, Phường Bình Trị Đông B, Quận Bình Tân, Hồ Chí Minh', 'asdasdasdasdasdasdsadas', 1, 2, NULL),
(3, '1UP4tTeW', 1, '2022-11-15 09:50:37', 'Raphael - Võ Đang Trường', '+84707816283', 14422800, 30000, 0, 79, 787, '673/5/3 Tỉnh Lộ 10', 'trqweqweq', 1, 0, NULL),
(4, 'eHNsbDyn', 1, '2022-11-15 09:58:52', 'Raphael - Võ Đang Trường', '+84707816283', 14422800, 30000, 0, 79, 787, '673/5/3 Tỉnh Lộ 10', 'qwewqeqweeqweqw', 1, 4, 'Chuyển khoản qua ngân hàng'),
(5, 'HnUZ8PI7', 1, '2022-11-15 20:25:34', 'Võ Đang Trường', '0768484671', 284311500, 30000, 0, 79, 777, 'F2/44/68 Ấp 6, Xã Hưng Long, Huyện Bình Chánh, Thành phố Hồ Chí Minh, VIỆT NAM', NULL, 1, 2, NULL),
(6, 'z87PpKBL', 1, '2022-11-15 20:34:03', 'Võ Đang Trường', '0768484671', 43208400, 30000, 0, 31, 318, 'sadasdas', NULL, 1, 2, NULL),
(7, 'cz1Ry6Q0', 1, '2022-11-21 14:07:04', 'Võ Đang Trường', '0768484671', 26207000, 25000, 0, 92, 926, 'fdqweqweqw', NULL, 1, 0, NULL),
(8, 'fiV0HhBR', 1, '2022-11-21 14:15:29', 'Võ Đang Trường', '0768484671', 17958300, 25000, 0, 79, 787, '673/5/3 Tỉnh Lộ 10', NULL, 1, 1, NULL),
(9, 'GrJmTcRD', 1, '2022-11-21 14:17:33', 'Võ Đang Trường', '0768484671', 14417800, 25000, 0, 79, 787, 'weqeqweqw', NULL, 1, 3, NULL),
(10, 'amf4Ukph', 4, '2022-11-21 22:29:28', 'Võ hột vịt', '0728372637', 113297400, 25000, 0, 79, 785, 'F2/44/68 Ấp 6, Xã Hưng Long', NULL, 1, 0, NULL),
(11, 'UZIkFSzd', 4, '2022-11-22 09:54:40', 'Võ hột vịt', '0728372637', 30086200, 25000, 0, 31, 318, '674/5/3 khu pho 2, Bình tân', 'Giao hàng trong giờ hành chính', 1, 1, 'Thanh toán khi giao hàng (COD)'),
(12, 'SU3RTIg7', 4, '2022-11-22 10:58:50', 'Võ hột vịt', '0728372637', 18977100, 25000, 0, 79, 785, '673/5/3 Tỉnh Lộ 10', 'giao hàng nhanh', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(13, '0cRgzm4n', 4, '2022-11-22 11:04:15', 'Võ hột vịt', '0728372637', 18977100, 25000, 0, 79, 787, '673/5/3 Tỉnh Lộ 10', 'sadasdasdas', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(14, '4oUXKVL9', 4, '2022-11-22 11:23:14', 'Võ hột vịt', '0728372637', 6570500, 25000, 0, 79, 787, '673/5/3 Tỉnh Lộ 10', 'eqweqweqweqeqw', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(15, '0XjEJn6m', 4, '2022-11-22 11:42:34', 'Võ hột vịt', '0728372637', 34015000, 25000, 0, 1, 277, 'dasdas', 'asdasdasdasdasda', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(16, 'jdL5ROXo', 4, '2022-11-22 11:44:53', 'Võ hột vịt', '0728372637', 16517500, 25000, 0, 31, 313, '674/5/3 khu pho 2, Bình tân', 'sadaas', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(17, 'y9PTDnGB', 4, '2022-11-22 11:48:06', 'Võ hột vịt', '0728372637', 6570500, 25000, 0, 79, 787, 'F2/44/68 Ấp 6, Xã Hưng Long, Huyện Bình Chánh, Thành phố Hồ Chí Minh, VIỆT NAM', 'sddasda', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(18, '3qmKQWn9', 4, '2022-11-22 11:51:14', 'Võ hột vịt', '0728372637', 23055400, 25000, 0, 79, 787, 'F2/44/68 Ấp 6, Xã Hưng Long, Huyện Bình Chánh, Thành phố Hồ Chí Minh, VIỆT NAM', 'test', 1, 0, 'Thanh toán khi giao hàng (COD)'),
(19, 'yPXGLaIo', 4, '2022-11-22 11:53:30', 'Võ hột vịt', '0728372637', 18977100, 25000, 0, 92, 925, 'sad', 'asdasdads', 1, 0, 'Thanh toán khi giao hàng (COD)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

DROP TABLE IF EXISTS `db_orderdetail`;
CREATE TABLE IF NOT EXISTS `db_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `productid` (`productid`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(1, 1, 59, 1, 16492500, 1, 1),
(2, 2, 52, 701, 19872900, 1, 1),
(3, 3, 58, 1, 14392800, 1, 1),
(4, 4, 58, 1, 14392800, 1, 1),
(5, 5, 60, 15, 18952100, 1, 1),
(6, 6, 58, 3, 14392800, 1, 1),
(7, 7, 61, 4, 6545500, 1, 1),
(8, 8, 55, 1, 17933300, 1, 1),
(9, 9, 58, 1, 14392800, 1, 1),
(10, 10, 58, 2, 14392800, 1, 1),
(11, 10, 61, 1, 6545500, 1, 1),
(12, 10, 57, 1, 20920900, 1, 1),
(13, 10, 50, 1, 23030400, 1, 1),
(14, 10, 56, 1, 33990000, 1, 1),
(15, 11, 51, 2, 15030600, 1, 1),
(16, 12, 60, 1, 18952100, 1, 1),
(17, 13, 60, 1, 18952100, 1, 1),
(18, 14, 61, 1, 6545500, 1, 1),
(19, 15, 56, 1, 33990000, 1, 1),
(20, 16, 59, 1, 16492500, 1, 1),
(21, 17, 61, 1, 6545500, 1, 1),
(22, 18, 50, 1, 23030400, 1, 1),
(23, 19, 60, 1, 18952100, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

DROP TABLE IF EXISTS `db_producer`;
CREATE TABLE IF NOT EXISTS `db_producer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `trash` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(7, 'Hàng Chính Hiệu', 'hangchinhhieu', 'hangchinhhieu', '2022-11-10 14:21:32', 1, '2022-11-10 14:21:32', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

DROP TABLE IF EXISTS `db_product`;
CREATE TABLE IF NOT EXISTS `db_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  `sku` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producer` (`producer`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `sku`) VALUES
(49, 46, 'Laptop HP Envy X360 13-bf0090TU (76B13PA) (i7-1250U | 16GB | 512B | Intel Iris Xe Graphics | 13.3\' 2.8K OLED Touch | Win 11)', 'laptop-hp-envy-x360-13-bf0090tu-76b13pa-i7-1250u-16gb-512b-intel-iris-xe-graphics-13-3-2-8k-oled-touch-win-11', 'c41f4dd4f4e8ff35c088851ebe9101b2.webp', '4168039319e2aedf469537388cd98806.webp#56ef17748da17efb8a54871946698e5e.webp#40623ffc2545e2bc2f3d5c4147c4dff8.webp#bf49783b1e26473b2b61aa076a257161.webp#d6016d39195155de90d834baacf43caa.webp', 'Bảo hành 12 tháng chính hãng\r\nĐổi mới sản phẩm trong 7 ngày\r\nKho: Hàng có sẵn\r\nQuà tặng:\r\nBalo cao cấp\r\nChuột Wireless HP Z3700\r\nBút cảm ứng HP Pen*\r\nÁo thun HP Uniqlo trị giá 499.000đ (Số lượng giới hạn)\r\nNâng cấp Ram / SSD giảm đến 200.000đ\r\nƯu đãi khi mua Microsoft 365 bản quyền', '<p><strong>Laptop&nbsp;</strong>&nbsp;<strong>HP 340s G7 224L1PA</strong>&nbsp;sở hữu lớp vỏ nhựa chắc chắn với một lớp phủ m&agrave;u x&aacute;m mạnh mẽ, hiện đại. Với trọng lượng 1.47kg c&ugrave;ng k&iacute;ch thước 32.4 x 22.5 x 1.79 cm, em laptop n&agrave;y đ&atilde; thu h&uacute;t những t&iacute;n đồ y&ecirc;u th&iacute;ch sự gọn nhẹ, gi&uacute;p bạn dễ d&agrave;ng mang laptop theo bất cứ nơi đ&acirc;u m&agrave; kh&ocirc;ng sợ cồng kềnh, nặng nhọc.&nbsp;</p>\r\n\r\n<p>B&agrave;n ph&iacute;m của em laptop n&agrave;y được thiết kế c&ocirc;ng th&aacute;i học, kết cấu một mảnh chắc chắn mang lại trải nghiệm g&otilde; thoải m&aacute;i cho người d&ugrave;ng, được phủ sần kh&ocirc;ng b&aacute;m mồ h&ocirc;i v&agrave; dấu v&acirc;n tay, chống phai chữ khi sử dụng sau một thời gian d&agrave;i. B&ecirc;n cạnh đ&oacute;, phần touchpad cảm ứng đa điểm với thiết kế đủ rộng cho người d&ugrave;ng sử dụng một c&aacute;ch tiện lợi nhất m&agrave; kh&ocirc;ng cần phải sử dụng đến sự trợ gi&uacute;p của chuột rời.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/hp-340s-g7-i3-224l1pa-302720-092751-600x600_2e6e23256f4c4787bcb30021a863a596_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, với chế độ bảo mật v&acirc;n tay, thay v&igrave; nhập mật khẩu, bạn c&oacute; thể dễ d&agrave;ng mở m&aacute;y bằng v&acirc;n tay tương tự như tr&ecirc;n c&aacute;c d&ograve;ng điện thoại th&ocirc;ng minh hiện nay. Điều n&agrave;y gi&uacute;p cho người d&ugrave;ng bảo mật th&ocirc;ng tin được dễ d&agrave;ng hơn bao giờ hết.&nbsp;</p>\r\n\r\n<p>Chiếc&nbsp;<strong>laptop</strong>&nbsp;<strong>HP 340s G7 224L1PA&nbsp;</strong>mỏng nhẹ n&agrave;y c&oacute; đầy đủ những cổng giao tiếp cần thiết cho c&ocirc;ng việc văn ph&ograve;ng cũng như học tập bao gồm 2 cổng USB 3.1 gen 1, 1 cổng USB 3.1 Type-C&trade;, 1 cổng HDMI 1.4 v&agrave; 1 cổng cắm headphone th&ocirc;ng dụng cho ph&eacute;p truyền dữ liệu tốc độ cao v&agrave; tương th&iacute;ch với nhiều thiết bị phổ biến hiện nay.</p>\r\n\r\n<p>Với chuẩn Realtek Wi-Fi 5 (2x2) v&agrave; Bluetooth&reg; 5 combo (MU-MIMO supported), chiếc laptop n&agrave;y c&oacute; thể dễ d&agrave;ng kết nối với c&aacute;c thiết bị ngoại vi một c&aacute;ch ổn định, gi&uacute;p cho việc học tập trực tuyến, hay thực hiện c&aacute;c t&aacute;c vụ giải tr&iacute; m&agrave; kh&ocirc;ng lo bị gi&aacute;n đoạn đường truyền.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh sắc n&eacute;t</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/34459_18191_hp_340s_g7_224l0pa_4_2998afda0284494d8876079a6cbc20a7_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Laptop HP&nbsp;340s G7 224L1PA</strong>&nbsp;c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh 14 inch c&oacute; độ ph&acirc;n giải Full HD (1920 x 1080), độ s&aacute;ng 250 nits kết hợp ho&agrave;n hảo với tấm nền IPS gi&uacute;p cho người d&ugrave;ng c&oacute; thể đắm ch&igrave;m v&agrave;o những khung h&igrave;nh sinh động, gi&uacute;p đảm bảo giữ cho m&agrave;u sắc kh&ocirc;ng bị biến đổi khi nh&igrave;n nghi&ecirc;ng.</p>\r\n\r\n<p>Với rải m&agrave;u 45% NTSC, h&igrave;nh ảnh tr&ecirc;n&nbsp;<strong>laptop HP 340s G7 224L1PA</strong>&nbsp;sẽ đem đến m&agrave;n h&igrave;nh ch&acirc;n thực v&agrave; sống động hơn bao giờ hết. Ngo&agrave;i ra, với phần m&agrave;n h&igrave;nh kết hợp c&ocirc;ng nghệ anti-glare display, chiếc laptop n&agrave;y thực sự sẽ mang lại trải nghiệm m&agrave;n h&igrave;nh mượt m&agrave;, bảo vệ đ&ocirc;i mắt của người d&ugrave;ng ngay cả khi sử dụng trong một khoảng thời gian d&agrave;i. Tuy nhi&ecirc;n, bạn h&atilde;y c&acirc;n đối thời gian sử dụng m&aacute;y t&iacute;nh để đảm bảo sức khỏe đ&ocirc;i mắt của bạn nh&eacute;!</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, em&nbsp;laptop&nbsp;n&agrave;y&nbsp;cũng sở hữu hệ thống loa k&eacute;p của cũng mang đến &acirc;m thanh ch&acirc;n thật, sống động với c&ocirc;ng nghệ Realtek High Definition Audio. Nhờ v&agrave;o c&ocirc;ng nghệ n&agrave;y m&agrave; người d&ugrave;ng c&oacute; thể điều chỉnh &acirc;m thanh cho ph&ugrave; hợp với những t&aacute;c vụ giải tr&iacute; như xem phim hay nghe nhạc,.... Ngo&agrave;i ra, HP c&ograve;n được lắp HD webcam cho bạn dễ d&agrave;ng thực hiện c&aacute;c cuộc gọi video, chat, học trực tuyến một c&aacute;ch tiện lợi nhất.&nbsp;</p>\r\n\r\n<p><strong>Hiệu năng ổn định</strong></p>\r\n\r\n<p><strong>Laptop HP 340s G7 224L1PA</strong>&nbsp;sử dụng&nbsp;vi xử l&yacute;&nbsp;Intel&reg; Core&trade; i3-1005G1 2 nh&acirc;n 4 luồng c&oacute; xung nhịp trung b&igrave;nh khoảng 1.2 GHz v&agrave; tối đa l&agrave; 3.4 GHz nhờ sự hỗ trợ của c&ocirc;ng nghệ Turbo Boost. Kết hợp với đ&oacute; l&agrave;&nbsp;card đồ họa&nbsp;Intel&reg; UHD Graphics, bạn c&oacute; thể sử dụng văn ph&ograve;ng, học tập cơ bản một c&aacute;ch thoải m&aacute;i, xem phim, giải tr&iacute; trực tuyến mượt m&agrave;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/43471_hp_340s_g7_ha3_a58e0ebc67be40e697397ed1eaa39bc9_grande.jpg\" /></p>\r\n\r\n<p>Em laptop n&agrave;y c&oacute; bộ nhớ RAM 4GB(1 x 4GB) DDR4 2666Mhz (2 khe) cũng cho ph&eacute;p sử dụng được c&ugrave;ng l&uacute;c nhiều ứng dụng, nhiều tab c&ugrave;ng l&uacute;c, rất thuận tiện trong việc tra cứu th&ocirc;ng tin, học tập c&ugrave;ng một l&uacute;c.</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, ổ cứng 512GB PCIe&reg; NVMe&trade; SSD của em laptop n&agrave;y cũng cho ph&eacute;p lưu trữ một lượng lớn dữ liệu như phim ảnh, t&agrave;i liệu, file nhạc,... Dung lượng 512GB cũng gi&uacute;p cho người d&ugrave;ng dự trữ dữ liệu như t&agrave;i liệu học tập, h&igrave;nh ảnh, &acirc;m thanh được dễ d&agrave;ng hơn bao giờ hết.</p>\r\n', 7, 500, 0, 3, 32990000, 31990000, '2022-11-10 14:29:21', '1', '2022-11-12 15:18:00', '1', 1, 1, 'LP02'),
(50, 46, 'Laptop Dell Inspiron 16 5620 (N5620-i5P165W11SLU) (i5-1240P | 16GB | 512GB | Intel Iris Xe Graphics | 16\' FHD | Win 11 | Office)', 'laptop-dell-inspiron-16-5620-n5620-i5p165w11slu-i5-1240p-16gb-512gb-intel-iris-xe-graphics-16-fhd-win-11-office', '888be3e2c3ac15bfcc5674ffec3f3271.webp', '48297c8dd30b1ff341871ba405e0635d.webp#ca38ec84571703ddc8eb15eb7f2a5627.webp#4b8b38645c03e5d715ccd338b23ed1ef.webp#e1eac7ef6039184d0b796e5d90226197.webp#0bdfca9620c6395615ba64c259dc306f.webp#42d9992ef6ee2fed8f2a00e037480ca9.webp', 'Dell Inspiron 16 5620 (N5620-i5P165W11SLU) là dòng sản phẩm laptop mỏng nhẹ của Dell, có thiết kế bằng nhôm, kiểu dáng sang trọng, cấu hình đáp ứng tốt cho nhu cầu làm việc và học tập online,', '<p><strong>Dell Inspiron 16 5620 (N5620-i5P165W11SLU) l&agrave; d&ograve;ng sản phẩm laptop mỏng nhẹ&nbsp;của Dell, c&oacute; thiết kế bằng nh&ocirc;m, kiểu d&aacute;ng&nbsp;sang trọng, cấu h&igrave;nh đ&aacute;p ứng tốt&nbsp;cho nhu cầu l&agrave;m việc v&agrave; học tập online, sản phẩm hiện đang được ph&acirc;n phối ch&iacute;nh thức tại Hangchinhhieu.vn</strong><br />\r\n', 7, 666, 0, 4, 23990000, 23030400, '2022-11-12 21:15:54', '1', '2022-11-12 21:15:54', '1', 1, 1, 'LP01'),
(51, 46, 'Laptop ASUS VivoBook 14X M1403QA-LY023W (R5-5600H | 8GB | 512GB | AMD Radeon™ Graphics | 14\' WUXGA | Win 11)', 'laptop-asus-vivobook-14x-m1403qa-ly023w-r5-5600h-8gb-512gb-amd-radeon-graphics-14-wuxga-win-11', '01353ee8fb339502bb10a737b0441092.webp', '85ec6482347b13ab28cb8787750d9991.webp#d1412cd12b2e0adc2d8fd97aaf9b4412.webp#94e1cade12593d8d49525ccdf8ea3b2f.webp#2f7b7f8c366a8d5f9f9fcd4c7088be50.webp#06fc91a41562b22238e9d0358952c5c9.webp#0c18e565e37898a3bc073766396f26a4.webp', 'Tỏa sáng với cả thế giới cùng ASUS Vivobook 14X, máy tính xách tay đầy đủ tính năng với màn hình cực sáng. Vivobook 14X cho phép hoàn thành mọi việc dễ dàng, mọi lúc mọi nơi: mọi khía cạnh đều được cải tiến, từ bộ vi xử lý di động lên đến AMD Ryzen™ 7 mạnh mẽ tới bản lề duỗi thẳng 180°, thiết kế hình học thanh mảnh và màu sắc hiện đại. Bắt đầu ngày mới đầy hứng khởi với Vivobook 14X!', '<h2><strong>Giới thiệu ASUS VivoBook 14X M1403QA-LY023W</strong></h2>\r\n\r\n<p><strong>Tỏa s&aacute;ng với cả thế giới c&ugrave;ng ASUS Vivobook 14X, m&aacute;y t&iacute;nh x&aacute;ch tay đầy đủ t&iacute;nh năng với m&agrave;n h&igrave;nh cực s&aacute;ng. Vivobook 14X cho ph&eacute;p ho&agrave;n th&agrave;nh mọi việc dễ d&agrave;ng, mọi l&uacute;c mọi nơi: mọi kh&iacute;a cạnh đều được cải tiến, từ bộ vi xử l&yacute; di động l&ecirc;n đến AMD Ryzen&trade; 7 mạnh mẽ tới bản lề duỗi thẳng 180&deg;, thiết kế h&igrave;nh học thanh mảnh v&agrave; m&agrave;u sắc hiện đại. Bắt đầu ng&agrave;y mới đầy hứng khởi với Vivobook 14X!</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/kv_18173a0eb54d439ebeed9bb192eeda76_grande.png\" /></p>\r\n\r\n<p><strong>Hiệu năng thế hệ mới</strong></p>\r\n\r\n<p><strong>Vivobook 14X l&agrave; người bạn đồng h&agrave;nh cuốn h&uacute;t h&agrave;ng ng&agrave;y của bạn, lu&ocirc;n sẵn s&agrave;ng thực hiện mọi t&aacute;c vụ một c&aacute;ch dễ d&agrave;ng cho d&ugrave; bạn l&agrave;m việc văn ph&ograve;ng hay c&aacute; nh&acirc;n, chuẩn bị b&agrave;i thuyết tr&igrave;nh hay giải tr&iacute;. Với c&aacute;c t&aacute;c vụ đ&ograve;i hỏi cao, bộ vi xử l&yacute; l&ecirc;n đến AMD Ryzen&trade; 7 5800H với bộ nhớ 8 GB v&agrave; ổ SSD 512 GB tốc độ cao, bạn lu&ocirc;n c&oacute; th&ecirc;m sức mạnh dự ph&ograve;ng khi cần.</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1._hieu_nang_99bf24f34e9848f6923ae0aba7453967_grande.png\" /></p>\r\n\r\n<p><strong>Dễ d&agrave;ng n&acirc;ng cấp, tiết kiệm chi ph&iacute;&nbsp;</strong></p>\r\n\r\n<p><strong>ASUS Vivobook 14X mới nhất đều được trang bị bộ nhớ RAM mặc định từ 8GB v&agrave; c&oacute; thể n&acirc;ng cấp l&ecirc;n đến 24GB. D&ugrave; c&oacute; vẻ ngo&agrave;i rất mỏng nhẹ, m&aacute;y lại ẩn chứa &quot;sức mạnh v&ocirc; bi&ecirc;n&quot; gi&uacute;p người d&ugrave;ng tha hồ thực hiện t&aacute;c vụ đa nhiệm. ASUS Vivobook 14X trang bị c&ocirc;ng nghệ hiệu năng th&ocirc;ng minh độc quyền AIPT, gi&uacute;p tăng hiệu suất CPU đến 40%, cảm biến th&ocirc;ng minh v&agrave; thiết kế quạt IceBlade kh&iacute; động học để mang lại hiệu năng tản nhiệt tốt.</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/2.man_hinh_oled_5cecd9726ab74b038e4d1c1da7372b2f_grande.png\" /></p>\r\n\r\n<p><strong>Kh&aacute;m ph&aacute; m&agrave;n h&igrave;nh mới rực rỡ</strong></p>\r\n\r\n<p><strong>Chi&ecirc;u đ&atilde;i cho đ&ocirc;i mắt bạn với m&agrave;n h&igrave;nh NanoEdge ba cạnh trong trẻo của Vivobook 14X. M&agrave;n h&igrave;nh c&oacute; g&oacute;c nh&igrave;n rộng v&agrave; đạt chứng nhận T&Uuml;V Rheinland về mức &aacute;nh s&aacute;ng xanh dương, gi&uacute;p giảm mỏi mắt khi sử dụng trong thời gian d&agrave;i. H&atilde;y để Vivobook 14X dẫn dắt h&agrave;nh tr&igrave;nh s&aacute;ng tạo của bạn với trải nghiệm h&igrave;nh ảnh ho&agrave;n to&agrave;n mới.</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/3._nang_cap_97027024d8e94fceb930dfe6368d5632_grande.png\" /></p>\r\n\r\n<p><strong>Lớp bảo vệ kh&aacute;ng khuẩn ASUS AntiBacteria</strong></p>\r\n\r\n<p><strong>Khả năng ức chế 99% sự ph&aacute;t triển của vi khuẩn. Sức khỏe của bạn được bảo vệ. Bề mặt của bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;o cũng chứa h&agrave;ng ng&agrave;n vi khuẩn tiềm ẩn nguy hại. Để giữ cho m&aacute;y t&iacute;nh x&aacute;ch tay của bạn lu&ocirc;n vệ sinh, ch&uacute;ng t&ocirc;i đ&atilde; sử dụng Lớp kh&aacute;ng khuẩn ASUS AntiBacterial Guard &mdash; một lớp xử l&yacute; bề mặt đặc biệt gi&uacute;p ngăn chặn vi khuẩn. Tr&ecirc;n thực tế, Antibacterial Guard đ&atilde; được chứng minh về mặt khoa học l&agrave; c&oacute; khả năng ức chế sự h&igrave;nh th&agrave;nh của vi khuẩn tới hơn 99% trong thời gian 24 giờ, đảm bảo c&aacute;c bề mặt m&aacute;y t&iacute;nh x&aacute;ch tay của bạn lu&ocirc;n sạch sẽ v&agrave; vệ sinh l&acirc;u d&agrave;i hơn v&agrave; giảm thiểu sự ph&aacute;t t&aacute;n c&aacute;c vi khuẩn g&acirc;y hại qua tiếp x&uacute;c.</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/4._diet_khuan_7d17306301c3441ca5ea35da8e2e3563_grande.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/hoang_mai.gif\" /></p>\r\n', 7, 500, 0, 6, 15990000, 15030600, '2022-11-12 21:37:53', '1', '2022-11-12 21:37:53', '1', 1, 1, 'M1403QA-LY023W'),
(52, 46, 'Laptop HP Victus 16-d0293TX (5Z9R4PA) (i5-11400H | 8GB | 512GB | GeForce RTX™ 3050Ti 4GB | 16.1\' FHD 144Hz | Win 11)', 'laptop-hp-victus-16-d0293tx-5z9r4pa-i5-11400h-8gb-512gb-geforce-rtx-3050ti-4gb-16-1-fhd-144hz-win-11', 'f811f0910db8d9517b99e3d95b6196bb.webp', '92bec0281e694a89a464b8809c299802.webp#cc5f3c0efa2383bc32f02d5a1dea928a.webp#d797e1145fad4f132ec275cd179527e2.webp#0dbe568c756b9c38ed3c7bcc54c27e56.webp', 'HP đã công bố các dòng sản phẩm laptop gaming 2021, ngoài dòng sản phẩm Omen đã quá nổi danh, còn có thương hiệu mới là Victus hay còn gọi là Victus by HP', '<h2><strong>Victus by HP chiến m&atilde; mới gia nhập đường đua laptop gaming 2021.</strong></h2>\r\n\r\n<p>HP đ&atilde; c&ocirc;ng bố c&aacute;c d&ograve;ng sản phẩm&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-choi-game-gaming\"><strong>laptop gaming 2021</strong></a>, ngo&agrave;i d&ograve;ng sản phẩm Omen đ&atilde; qu&aacute; nổi danh, c&ograve;n c&oacute; thương hiệu mới l&agrave; Victus&nbsp;hay c&ograve;n gọi l&agrave; Victus by HP. HP Victus c&oacute; sẵn tuỳ chọn cpu Intel v&agrave; AMD, c&ugrave;ng với m&agrave;n h&igrave;nh hiển thị FHD 144Hz c&oacute; thể l&ecirc;n đến QHD 165Hz.&nbsp;<strong>Victus by Hp 16</strong>&nbsp;được thiết kế để phục vụ c&aacute;c bạn sinh vi&ecirc;n, người d&ugrave;ng cần một chiếc m&aacute;y c&oacute; phần cứng mạnh nhưng mức gi&aacute; phải chăng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/laptop_hp_victus_16_gaming_5e7e60e2d82d4f04a5cf36ad93636bdf.jpg\" /></p>\r\n\r\n<p>HP đ&atilde; mang đến một thiết kế mới cho c&aacute;c mẫu laptop gaming của họ năm nay.&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-gaming-hp-victus\"><strong>HP Victus Gaming</strong></a>&nbsp;c&oacute; diện mạo ho&agrave;n to&agrave;n kh&aacute;c với c&aacute;c d&ograve;ng sản phẩm trước đ&acirc;y về cả thiết kế cũng như thẩm mỹ. Logo biểu tượng &ldquo;V&rdquo; phản kim loại đồng bộ hợp thời trang. Với c&aacute;c m&agrave;u sắc tươi trẻ&nbsp;<strong>Mica Silver</strong>,&nbsp;<strong>Performance Blue</strong>,&nbsp;<strong>Ceramic White</strong>, mang lại một tổng thể trang nh&atilde;, lịch sự điểm một ch&uacute;t n&eacute;t gaming.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/logo_victus_tinh_te_sang_trong_a3a2ecc14dc442ff93c7da050bdb6894.png\" /></p>\r\n\r\n<p>Bản lề v&agrave; c&aacute;c khu vực kh&aacute;c của m&aacute;y c&oacute; thương hiệu&nbsp;<strong>Victus</strong>, nhưng kh&ocirc;ng c&oacute; dấu hiệu của HP tr&ecirc;n m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; nếu kh&ocirc;ng được th&ocirc;ng b&aacute;o, bạn sẽ kh&ocirc;ng thể nhận ra rằng m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;y l&agrave; của HP. Khe tho&aacute;t kh&iacute; n&oacute;ng si&ecirc;u rộng vừa tạo điểm nhấn vừa n&acirc;ng cao hiệu suất tản nhiệt.</p>\r\n\r\n<p>Với thiết kế viền si&ecirc;u mỏng, HP đ&atilde; gi&uacute;p mang lại tỷ lệ m&agrave;n h&igrave;nh so với th&acirc;n m&aacute;y cao hơn, một chiếc m&agrave;n h&igrave;nh 16.1 icnh trong th&acirc;n m&aacute;y 15.6 inch. Trong năm 2021, laptop với m&agrave;n 16 inch đang l&agrave; trend với sự ra đời của nhiều d&ograve;ng sản phẩm như LG-Gram,&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-gaming-lenovo-legion\"><strong>Lenovo Legion 5 Pro</strong></a>&nbsp;hay&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-gaming-acer-predator-triton\"><strong>Triton 500 SE 2021</strong>.</a></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/man_hinh_16.1_inch_to_hon_choi_game_suong_hon_tren_victus_936a5e9ba39348339196159de03a5392.png\" /></p>\r\n\r\n<p>Một chiếc laptop với b&agrave;n ph&iacute;m full-size t&iacute;ch hợp n&uacute;t nguồn v&agrave; ph&iacute;m tắt nhanh, cụm ph&iacute;m &ldquo;<strong>Numpad</strong>&rdquo; hỗ trợ tất cả chức năng từ cơ bản đến n&acirc;ng cao. Đặc biệt thanh &ldquo;Space bar&rdquo; &amp; cụm &ldquo;ph&iacute;m điều hướng&rdquo; được l&agrave;m to v&agrave; độc lập nhằm tăng t&iacute;nh linh hoạt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/ban_phim_full_size_cung_touchpad_rong_c32dda5cece449ffb68e5534bffc9d02.png\" /></p>\r\n\r\n<p>Trackpad tr&ecirc;n&nbsp;<strong>HP Victus 16-d0293TX (5Z9R4PA)</strong>&nbsp;lớn hơn 19% so với c&aacute;c m&aacute;y t&iacute;nh x&aacute;ch tay thế hệ trước. B&agrave;n di chuột đặc biệt mượt m&agrave; v&agrave; phản ứng tốt với c&aacute;c cử chỉ như chụm để thu ph&oacute;ng, hai ng&oacute;n tay để k&eacute;o, v.v. Kh&ocirc;ng c&oacute; n&uacute;t chuột hiển thị tr&ecirc;n đầu b&agrave;n di chuột. Cả nhấp chuột tr&aacute;i v&agrave; nhấp chuột phải đều hiển thị dưới b&agrave;n di chuột.</p>\r\n\r\n<p>Loa tr&ecirc;n M&aacute;y t&iacute;nh x&aacute;ch tay HP Victus 16 được cung cấp bởi một thương hiệu nổi tiếng đ&atilde; qu&aacute; quen thuộc với chuổi sản phẩm laptop HP c&oacute; t&ecirc;n&nbsp;<strong>Bang &amp; Olufsen (B &amp; O)</strong>. Dải loa n&agrave;y c&oacute; độ lớn vừa phải với độ r&otilde; r&agrave;ng tốt khi nghe nhạc, được thiết kế hoa văn c&aacute;ch điệu để tạo th&ecirc;m điểm nhấn v&agrave; được hỗ trợ Audio Boots độc quyền từ HP.</p>\r\n\r\n<p>Về phần cổng kết nối ở ph&iacute;a b&ecirc;n phải của m&aacute;y t&iacute;nh x&aacute;ch tay, bạn sẽ t&igrave;m thấy 2 cổng USB, c&ograve;n ở ph&iacute;a b&ecirc;n tr&aacute;i của m&aacute;y t&iacute;nh x&aacute;ch tay, bạn sẽ t&igrave;m thấy một cổng sạc, một cổng RJ45, một cổng HDMI 2.1, một cổng USB kh&aacute;c v&agrave; một cổng&nbsp;<strong>USB type C</strong>. Cổng USB type C cũng hỗ trợ&nbsp;<strong>displayport 1.4</strong>. Ngo&agrave;i ra, bạn cũng sẽ t&igrave;m thấy một khe cắm Thẻ nhớ SD để truyền ảnh từ m&aacute;y ảnh sang m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; một cổng kết hợp Tai nghe / micr&ocirc; 3,5 mm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/cong_ket_noi_da_dang_7e674b901ce44bd6b9a31130425b0b45.png\" /></p>\r\n\r\n<p>Kết nối kh&ocirc;ng d&acirc;y bao gồm Bluetooth 5.0 được cung cấp để tạo điều kiện chia sẻ tệp liền mạch. V&agrave; để đảm bảo kết nối internet được ổn định v&agrave; mạnh mẽ, chiếc laptop gaming n&agrave;y được trang bị&nbsp;<strong>Wifi 6 AX201</strong>, mang đến trải nghiệm lướt web v&agrave; chơi game mượt m&agrave; nhất.</p>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay HP Victus c&oacute; vi&ecirc;n pin&nbsp;<strong>4 Cell 70Whr</strong>, ph&ugrave; hợp với một m&aacute;y t&iacute;nh x&aacute;ch tay chơi game hiện đại. M&aacute;y t&iacute;nh x&aacute;ch tay được cho l&agrave; sẽ hoạt động trong 4-5 giờ với một lần sạc đầy nếu bạn chỉ lướt web với một tuỳ chỉnh chế độ pin hợp l&iacute;. Tuy nhi&ecirc;n, nếu bạn muốn chơi game tr&ecirc;n m&aacute;y t&iacute;nh x&aacute;ch tay, h&atilde;y kết nối m&aacute;y t&iacute;nh x&aacute;ch tay với bộ sạc.</p>\r\n\r\n<p>Laptop HP Victus 16 mạnh mẽ với bộ vi xử l&yacute;&nbsp;<strong>Ryzen 5 Zen 3</strong>&nbsp;của AMD&nbsp;- với tốc độ l&ecirc;n tới 4.2GHz ở chế độ Turbo. Bạn c&oacute; thể sử dụng c&aacute;c t&aacute;c vụ đa nhiệm với cpu 8 nh&acirc;n v&agrave; 16 luồng n&agrave;y, bạn cứ thể thoải m&aacute;i l&agrave;m việc với c&aacute;c phần mềm như Photoshop, Premiere Pro. V&agrave; hiệu năng tối thượng từ&nbsp;<strong>GPU Nivdia Geforce RTX 30 Series</strong>&nbsp;sẽ hỗ trợ bạn vượt qua c&aacute;c trận chiến khốc liệt trong c&aacute;c tựa game AAA. Bộ nhớ RAM 16 GB c&ugrave;ng với SSD&nbsp;<strong>512 GB chuẩn PCIe</strong>&nbsp;tốc độ cao bổ sung cho hiệu suất ấn tượng của m&aacute;y t&iacute;nh x&aacute;ch tay. Với sự kết hợp n&agrave;y, bạn c&oacute; thể chạy bất kỳ tr&ograve; chơi n&agrave;o ở c&agrave;i đặt trung b&igrave;nh đến cao một c&aacute;ch dễ d&agrave;ng!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/victus_suc_manh_tuyet_doi_8871ea08b8d2448e9554066ebfe3f749.png\" /></p>\r\n\r\n<p>Một m&aacute;y t&iacute;nh x&aacute;ch tay chơi game cần một bộ l&agrave;m m&aacute;t th&iacute;ch hợp để tản nhiệt v&agrave; ngăn chặn sự điều tiết nhiệt. Tản nhiệt tr&ecirc;n m&aacute;y t&iacute;nh x&aacute;ch tay l&agrave; t&iacute;nh năng sống c&ograve;n của laptop gaming v&agrave; mọi hiệu suất đều dựa tr&ecirc;n c&aacute;ch kiểm so&aacute;t v&agrave; quản l&yacute; nhiệt trong m&aacute;y t&iacute;nh x&aacute;ch tay.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/laptop_hp_victus_voi_he_thong_tan_nhiet_tot_2b7ec1bd38844001ac5609093e4c91f8.png\" /></p>\r\n\r\n<p>Với m&aacute;y t&iacute;nh x&aacute;ch tay&nbsp;<strong>Victus 16</strong>, HP đ&atilde; n&acirc;ng cấp giải ph&aacute;p l&agrave;m m&aacute;t của họ v&agrave; thiết kế n&oacute; để kh&ocirc;ng kh&iacute; lưu th&ocirc;ng hoạt động như hai chiều b&ecirc;n trong m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; ba chiều ra khỏi m&aacute;y t&iacute;nh x&aacute;ch tay. Điều n&agrave;y c&oacute; nghĩa l&agrave; ng&agrave;y c&agrave;ng nhiều nhiệt được đẩy ra khỏi hệ thống với sự trợ gi&uacute;p của hai quạt, hiện cũng được n&acirc;ng cấp từ 47 c&aacute;nh l&ecirc;n&nbsp;<strong>83</strong>&nbsp;c&aacute;nh. Do đ&oacute; diện t&iacute;ch quạt cũng tăng l&ecirc;n. HP cũng tăng chiều d&agrave;i ống dẫn nhiệt l&ecirc;n&nbsp;<strong>18%</strong>&nbsp;để truyền nhiệt tối đa. Victus 16 mới đ&atilde; tăng&nbsp;<strong>14%</strong>&nbsp;tổng lượng gi&oacute; với c&aacute;nh quạt d&agrave;y hơn v&agrave; khả năng h&uacute;t gi&oacute; tốt hơn, gi&uacute;p duy tr&igrave; nhiệt độ tốt hơn cho m&aacute;y t&iacute;nh x&aacute;ch tay. Đ&acirc;y ch&iacute;nh l&agrave; c&ocirc;ng nghệ l&agrave;m m&aacute;t độc quyền&nbsp;<strong>OMEN tempest cooling</strong>&nbsp;độc quyền tr&ecirc;n c&aacute;c chiếc laptop gaming HP 2021.</p>\r\n\r\n<p>HP đ&atilde; mang đến Victus 16 2021 phần mềm quản trị hệ thống&nbsp;<strong>OMEN gaming HUB</strong>. C&aacute;c th&ocirc;ng số hoạt động của m&aacute;y, tuỳ chỉnh băng th&ocirc;ng mạng, c&aacute;c chế độ quạt, hiệu suất m&aacute;y,&hellip; đều thể hiện r&otilde; r&agrave;ng v&agrave; tương t&aacute;c dễ d&agrave;ng th&ocirc;ng qua phần mềm n&agrave;y.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/omen_gaming_hub_kiem_soat_toan_bo_he_thong_c93813cab3014a078776c5afc3fdc467.png\" /></p>\r\n\r\n<p>Mức gi&aacute; cho phi&ecirc;n bản sử dụng AMD&nbsp;R5-5600H, RAM 8GB, ROM 512GB v&agrave; RTX 3050 4GB l&agrave; 24,5 triệu đồng trong khi đ&oacute; bản Core i7-11800H, RAM 8GB, ROM 512GB, RTX 3050Ti 4GB c&oacute; gi&aacute; 32,5&nbsp;triệu đồng.</p>\r\n\r\n<p><strong>HP&nbsp;Victus 16-d0294TX (5Z9R5PA)</strong>&nbsp;sẽ sớm về h&agrave;ng tại Hangchinhhieu.vn, c&aacute;c bạn nhớ theo d&otilde;i website v&agrave; fanpage của Hangchinhhieu.vn để cập nhật thời gian về h&agrave;ng cũng như gi&aacute; của sản phẩm nh&eacute;.</p>\r\n', 7, 500, 701, 29, 27990000, 19872900, '2022-11-12 22:13:14', '1', '2022-11-12 22:13:14', '1', 1, 1, '5Z9R4PA'),
(54, 52, 'Thiết bị ngoại vi', 'thiet-bi-ngoai-vi', 'e29a64b9c961b6590bf871e30907a904.jpeg', '587f6723bc74c78e5891f3a423745b82.jpeg#2e576fc0e0cb524153fecd607b3f0a12.jpeg#8a3602c956d766bb62399d8f205d5b33.jpeg', 'asdas', '<p>dasdasdas</p>\r\n', 7, 5, 0, 10, 17500000, 15750000, '2022-11-13 09:14:51', '1', '2022-11-13 09:14:51', '1', 0, 1, 'wa'),
(55, 46, 'Laptop ASUS ExpertBook B5302CEA-KG0456T (i5-1135G7 | 8GB | 512GB | Intel Iris Xe Graphics | 13.3\' FHD OLED DCI-P3 100% | Win 10)', 'laptop-asus-expertbook-b5302cea-kg0456t-i5-1135g7-8gb-512gb-intel-iris-xe-graphics-13-3-fhd-oled-dci-p3-100-win-10', '6c1615e302344b0b170df375f78ecae3.webp', 'b41aa1d792ece0ae6ab1b169b9639d87.webp#099e64f365ff27f75d8ffb2d0b36c7bc.webp#d2cc7f0b987547fc27b5a22ba4fe0799.webp#fd9febcac087cf29f39138a581307f5d.webp#db3ffccf833e9e6eeabfb864e109ea89.webp#58c8fd289c2cdec52f703dfb56a9d8f9.webp', 'ASUS ExpertBook B5302CEA-KG0456T được thiết kế để hướng tới sự thành công trong kinh doanh về phong cách, với khung máy tối giản và được gia công chính xác nhằm vượt qua giới hạn của sự mỏng nhẹ. Nó cũng được thiết kế cho những chuyến du lịch nghiêm túc với thời lượng pin đáng kinh ngạc kéo dài 14 giờ và được thiết kế với nhiều công nghệ tiên tiến để cải thiện hiệu quả công việc khi di chuyển của bạn. Chúng bao gồm bộ xử lý Intel® Core ™ i5 thế hệ thứ 11, loại bỏ tiếng ồn AI và hỗ trợ RAID SSD kép, ASUS NumberPad 2.0. Nó cũng được tích hợp các tính năng để bảo vệ quyền riêng tư và dữ liệu kinh doanh của bạn, bao gồm cảm biến vân tay tích hợp và chip TPM 2.0. Với chứng nhận Intel Evo, ExpertBook B5 là đối tác mạnh mẽ, di động hoàn hảo của bạn cho thế giới doanh nghiệp', '<h3><strong>Giới thiệu&nbsp;ASUS ExpertBook&nbsp;B5302CEA-KG0456T</strong></h3>\r\n\r\n<p><strong>ASUS ExpertBook B5302</strong><br />\r\n<strong>Laptop doanh nh&acirc;n 13&quot; thời lượng l&ecirc;n đến 24 tiếng, nhẹ nhất thế giới</strong></p>\r\n\r\n<h3><strong>Nhẹ nhất, bền nhất, di động nhất</strong></h3>\r\n\r\n<p>Cả nắp tr&ecirc;n v&agrave; dưới của&nbsp;<strong>ExpertBook B5&nbsp;B5302CEA-KG0456T</strong>&nbsp;đều được chế t&aacute;c từ nh&ocirc;m nguy&ecirc;n chất, trong khi khu vực xung quanh b&agrave;n ph&iacute;m l&agrave; hợp kim nh&ocirc;m-magi&ecirc; - gi&uacute;p trọng lượng của m&aacute;y chỉ xuống mức 1.2 kg. Bỏ ExpertBook B5 v&agrave;o một chiếc cặp để n&oacute; lu&ocirc;n b&ecirc;n bạn, sẵn s&agrave;ng cho năng suất l&agrave;m việc trong hoặc ngo&agrave;i văn ph&ograve;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus_expertbook-b5-b5302c_mong_nhe_lam_viec_moi_noi_0f066fd6d2a8423498d6d1adfc157b1a.jpg\" /></p>\r\n\r\n<h3><strong>Ho&agrave;n th&agrave;nh c&ocirc;ng việc dễ d&agrave;ng</strong></h3>\r\n\r\n<p>Để thực hiện mọi t&aacute;c vụ c&ocirc;ng việc của bạn một c&aacute;ch nhẹ nh&agrave;ng,&nbsp;<strong>ASUS ExpertBook B5302CEA-KG0456T</strong>&nbsp;được trang bị bộ vi xử l&yacute; Intel Core i5 thế hệ thứ 11 l&ecirc;n đến đồ họa Iris Xe v&agrave; Intel WiFi 6 si&ecirc;u nhanh, cung cấp hiệu suất m&aacute;y t&iacute;nh, mạng v&agrave; đồ họa nhanh ch&oacute;ng v&agrave; đ&aacute;p ứng với khả năng quản l&yacute; cấp doanh nghiệp. N&oacute; cũng c&oacute; hai ổ SSD để cung cấp dung lượng l&ecirc;n tới 1 TB k&eacute;p v&agrave; tốc độ nhanh hơn, đồng thời hỗ trợ c&ocirc;ng nghệ RAID2 để cải thiện độ tin cậy của dữ liệu hoặc hoạt động nhanh hơn.&nbsp;<strong>ExpertBook B5 2021</strong>&nbsp;cũng l&agrave; một m&aacute;y t&iacute;nh x&aacute;ch tay Intel Evo đ&atilde; được x&aacute;c minh, v&igrave; vậy bạn c&oacute; thể y&ecirc;n t&acirc;m rằng n&oacute; cung cấp hiệu suất, hiệu quả v&agrave; khả năng kết nối tốt nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/cau_hinh_manh_me_dap_ung_moi_nhu_cau_29e7512339a1415698c9cc2362047067.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh chống ch&oacute;i ho&agrave;n hảo</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh rực rỡ cũng được hưởng lợi từ lớp ho&agrave;n thiện chống ch&oacute;i để giảm thiểu độ phản xạ, cho ph&eacute;p bạn sử dụng&nbsp;<strong>ExpertBook B5302CEA 2021</strong>&nbsp;từ trong ra ngo&agrave;i. Với t&iacute;nh năng chăm s&oacute;c mắt được chứng nhận bởi T&Uuml;V Rheinland, m&agrave;n h&igrave;nh viền mỏng ch&igrave;m đắm n&agrave;y l&agrave; một thiết bị ho&agrave;n hảo tuyệt vời cho c&ocirc;ng việc hoặc giải tr&iacute;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/vien_man_hinh_sieu_mong_hien_thi_anh_sac_net_b6b2e171704f4e47b92c16b1b6a91d02.jpg\" /></p>\r\n\r\n<h3><strong>K&eacute;o d&agrave;i hơn, sạc nhanh hơn</strong></h3>\r\n\r\n<p><strong>ExpertBook B5</strong>&nbsp;sẽ kh&ocirc;ng bao giờ khiến bạn thất vọng trong suốt cả ng&agrave;y l&agrave;m việc hoặc một chuyến bay đường d&agrave;i. N&oacute; cung cấp thời lượng pin cả ng&agrave;y chỉ với một lần sạc, được hỗ trợ bởi c&ocirc;ng nghệ Panel Self Refresh tiết kiệm năng lượng. Tr&ecirc;n hết, c&ocirc;ng nghệ sạc nhanh cho ph&eacute;p bạn sạc lại pin tới&nbsp;<strong>60% dung lượng</strong>&nbsp;chỉ trong v&ograve;ng&nbsp;<strong>39 ph&uacute;t</strong>, v&igrave; vậy bạn c&oacute; thể thiết lập v&agrave; sử dụng nhanh ch&oacute;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/hoat_dong_ben_bi_ca_ngay_dai_1ee363c5bb7f4c7f8e06e70d6d2c3ead.jpg\" /></p>\r\n\r\n<h3><strong>Độ bền chuẩn qu&acirc;n sự, bảo mật chuẩn doanh nghiệp</strong></h3>\r\n\r\n<p>Cuộc sống tr&ecirc;n đường rất kh&oacute; khăn, v&igrave; vậy&nbsp;<strong>ExpertBook B5 2021</strong>&nbsp;được thiết kế để đ&aacute;p ứng v&agrave; vượt qua c&aacute;c ngưỡng ch&iacute;nh x&aacute;c của ng&agrave;nh - bao gồm cả ti&ecirc;u chuẩn qu&acirc;n sự Mỹ&nbsp;<strong>MIL-STD 810H</strong>&nbsp;cực kỳ khắt khe. N&oacute; được x&acirc;y dựng để tồn tại trong mọi thời điểm khắc nghiệt, từ nhiệt độ đ&oacute;ng băng đến c&aacute;i n&oacute;ng gay gắt của b&atilde;o sa mạc v&agrave; những c&uacute; sốc tốc độ cao cho đến những va chạm h&agrave;ng ng&agrave;y.&nbsp;<strong>ASUS ExpertBook B5</strong>&nbsp;cũng trải qua qu&aacute; tr&igrave;nh thử nghiệm nội bộ nghi&ecirc;m ngặt, bao gồm c&aacute;c thử nghiệm &aacute;p suất bảng điều khiển, va đập v&agrave; rơi để đảm bảo độ bền nghi&ecirc;m trọng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/dat_do_ben_chuan_quan_doi_df3c248e94a34b5bb6e767e35ddd9263.jpg\" /></p>\r\n\r\n<h3><strong>Đem đến trải nghiệm tuyệt vời</strong></h3>\r\n\r\n<p>Từ b&agrave;n ph&iacute;m đến b&agrave;n di chuột, thao t&aacute;c nhập v&agrave; điều khiển con trỏ tr&ecirc;n ExpertBook B5 l&agrave; một trải nghiệm th&uacute; vị, với một loạt c&aacute;c t&iacute;nh năng v&agrave; cải tiến gi&uacute;p n&acirc;ng cao cả năng suất v&agrave; sự thoải m&aacute;i.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/touchpad_ho_tro_cong_nghe_numberpad_tien_loi_3eeb42e2026c420f8350db9638c2dfd7.jpg\" /></p>\r\n\r\n<h3><strong>Kết nối to&agrave;n diện kh&ocirc;ng c&oacute; sự thỏa hiệp</strong></h3>\r\n\r\n<p>Mặc d&ugrave; c&oacute; cấu h&igrave;nh mỏng, ExpertBook B5 được trang bị c&aacute;c cổng I / O. Ch&uacute;ng bao gồm&nbsp;<strong>Thunderbolt &trade; 4</strong>&nbsp;ti&ecirc;n tiến, thế hệ tiếp theo của giải ph&aacute;p kết nối c&aacute;p đa năng cung cấp hỗ trợ cho giao diện USB4 cấp độ tiếp theo, tốc độ truyền dữ liệu&nbsp;<strong>40 Gbps</strong>, đầu ra m&agrave;n h&igrave;nh&nbsp;<strong>4K</strong>&nbsp;v&agrave; sạc nhanh. M&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;y cũng cung cấp USB Type-A v&agrave; đầu ra HDMI, c&ugrave;ng với kết nối mạng c&oacute; d&acirc;y với địa chỉ MAC duy nhất để dễ d&agrave;ng quản l&yacute; thiết bị.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/da_dang_cong_ket_noi_tien_dung_c2530e01fb0e48cb95743aa5a645cb76.jpg\" /></p>\r\n\r\n<p>Laptop&nbsp;<strong>ASUS ExpertBook B5302CEA-KG0456T</strong>&nbsp;được ph&acirc;n phối tại&nbsp;<a href=\"https://hangchinhhieu.vn/\"><strong>Hangchinhhieu.vn</strong></a>&nbsp;với mức gi&aacute; cực tốt. Đ&acirc;y l&agrave; chiếc laptop doanh nh&acirc;n cao cấp đ&aacute;ng tiền nhất hiện nay.</p>\r\n\r\n<hr />\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/hoang_mai.gif\" /></p>\r\n', 7, 500, 0, 23, 23290000, 17933300, '2022-11-13 09:16:57', '1', '2022-11-13 09:16:57', '1', 1, 1, 'B5302CEA-KG0538W'),
(56, 48, 'PC GAMING MSI MAG INFINTE S3 12TC (i5-12400F | 16GB | 512GB | GeForce® RTX 3060 12GB | Win 11)', 'pc-gaming-msi-mag-infinte-s3-12tc-i5-12400f-16gb-512gb-geforcer-rtx-3060-12gb-win-11', '9b74fee8e5381c03e7ae174f1b8f3035.webp', '8ab665ba770ad6c958d211c662671e65.webp#945313ee97427ca9fa2d751726c81ab0.webp#c4b3c472efa2b72c06ca5e6c7c551dcd.webp#0455c9fcbc58f1fede4e51e4477fa502.webp#249f0b66e2b6ebe709ecf8ac9d5a3295.webp#7a7def62bb6080f47a7872bf1fd24d2f.webp', 'Được sinh ra từ bản phác thảo nhằm mục đích cung cấp trải nghiệm chơi game tốt nhất, MAG Infinite S3 kết hợp hiệu suất với sự đổi mới. Ngoài nút nguồn thời trang, nó còn có các đường nét sắc sảo trên bảng điều khiển phía trước. Các lỗ thông hơi lớn giúp thông gió tốt giúp thiết bị không bị quá nóng trong khi hệ thống đèn RGB có thể tùy chỉnh giúp mang lại sức sống cho hệ thống của bạn. MAG Infinite S3 có thiết kế độc đáo mà không ảnh hưởng đến chức năng', '<p><img src=\"https://file.hstatic.net/1000233206/file/s3_11_cf04eb8fc2a54174bb6de781858daf42_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_12_4137f10c54564972a2a3913f6988213c_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_13_1b47e11685304b29a0b10757c172ba4f_grande.jpg\" /></p>\r\n\r\n<h3>C&Acirc;U CHUYỆN THIẾT KẾ</h3>\r\n\r\n<p>Được sinh ra từ bản ph&aacute;c thảo nhằm mục đ&iacute;ch cung cấp trải nghiệm chơi game tốt nhất, MAG Infinite S3 kết hợp hiệu suất với sự đổi mới. Ngo&agrave;i n&uacute;t nguồn thời trang, n&oacute; c&ograve;n c&oacute; c&aacute;c đường n&eacute;t sắc sảo tr&ecirc;n bảng điều khiển ph&iacute;a trước. C&aacute;c lỗ th&ocirc;ng hơi lớn gi&uacute;p th&ocirc;ng gi&oacute; tốt gi&uacute;p thiết bị kh&ocirc;ng bị qu&aacute; n&oacute;ng trong khi hệ thống đ&egrave;n RGB c&oacute; thể t&ugrave;y chỉnh gi&uacute;p mang lại sức sống cho hệ thống của bạn. MAG Infinite S3 c&oacute; thiết kế độc đ&aacute;o m&agrave; kh&ocirc;ng ảnh hưởng đến chức năng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_14_5963eaf7582a4e8cafa3bf2713598b05_grande.jpg\" /></p>\r\n\r\n<h3>T&Aacute;I TẠO HIỆU SUẤT</h3>\r\n\r\n<p>Bộ xử l&yacute; Intel Core thế hệ thứ 11 mới nhất c&oacute; kiến ​​tr&uacute;c mới s&aacute;ng tạo m&ocirc; phỏng lại hiệu suất th&ocirc;ng minh (AI) để đưa người d&ugrave;ng kiểm so&aacute;t trải nghiệm thế giới thực quan trọng nhất đối với họ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_15_aaa08a68b1834b68b236be5f7696825e_grande.jpg\" /></p>\r\n\r\n<h3>Card đồ họa GeForce RTX&trade;</h3>\r\n\r\n<p>Được x&acirc;y dựng với Card đồ họa MSI GeForce RTX &trade;, l&ecirc;n đến 40% hiệu suất cao hơn thế hệ trước.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_16_de07dc07da3a41ceab515efdfc3eeeea_grande.jpg\" /></p>\r\n\r\n<h3>D&Ograve;NG KH&Ocirc;NG KH&Iacute; LỚN</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh để b&agrave;n chơi game MAG Infinite S3 được thiết kế để l&agrave;m m&aacute;t tối ưu. N&oacute; c&oacute; nhiều kh&ocirc;ng gian cho luồng kh&ocirc;ng kh&iacute; v&agrave; tối đa h&oacute;a khả năng l&agrave;m m&aacute;t bằng nhiệt với cửa h&uacute;t gi&oacute; bề mặt lớn. Hệ thống th&ocirc;ng gi&oacute; gi&uacute;p bạn dễ d&agrave;ng đạt được hiệu suất l&agrave;m m&aacute;t cực cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_17_789cc783c573465a9dbca08543e84e6c_grande.jpg\" /></p>\r\n\r\n<h3>XEM-QUA CỬA SỔ</h3>\r\n\r\n<p>MAG Infinite S3 c&oacute; cửa sổ b&ecirc;n trong cho ph&eacute;p bạn hiển thị m&agrave;n h&igrave;nh nền được c&aacute; nh&acirc;n h&oacute;a của m&igrave;nh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_19_b31a83a59c134b1a841011029fd9b370_grande.jpg\" /></p>\r\n\r\n<h3>MYSTIC LIGHT</h3>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_18_11fe81c9b04a4f70a08089ed56f3bef2_grande.jpg\" /></p>\r\n\r\n<h3>KINH NGHIỆM KH&Ocirc;NG D&Acirc;Y NGO&Agrave;I TRỜI</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh để b&agrave;n RẤT ĐẦU TI&Ecirc;N được trang bị Wi-Fi 6E tr&ecirc;n thế giới. Wi-Fi 6E mới nhất mang đến tốc độ tuyệt vời đồng thời giữ cho mạng mượt m&agrave; v&agrave; ổn định ngay cả khi chia sẻ mạng với nhiều người d&ugrave;ng. Với th&ocirc;ng lượng vượt trội v&agrave; độ trễ thấp, bạn c&oacute; thể đ&aacute;nh bại những người kh&aacute;c về n&oacute;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_20_a56ec0648482428da8f1a61dd3de848c_grande.jpg\" /></p>\r\n\r\n<h3>DỄ N&Acirc;NG CẤP</h3>\r\n\r\n<p>Lu&ocirc;n c&oacute; được hiệu suất tốt nhất từ ​​hệ thống của bạn với c&aacute;c c&ocirc;ng nghệ mới nhất. C&aacute;c th&agrave;nh phần b&ecirc;n trong M&aacute;y t&iacute;nh để b&agrave;n chơi game MSI c&oacute; thể dễ d&agrave;ng truy cập v&agrave; sẵn s&agrave;ng n&acirc;ng cấp bất cứ l&uacute;c n&agrave;o. Cho d&ugrave; bạn đang mở rộng bộ nhớ hay n&acirc;ng cấp bộ xử l&yacute; hoặc cạc đồ họa của m&igrave;nh, bạn lu&ocirc;n c&oacute; thể cập nhật hệ thống tr&ograve; chơi của m&igrave;nh với phần cứng mới nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/s3_21_fcba7798e4304e628681f9b9da303de4_grande.jpg\" /></p>\r\n', 7, 601, 0, 0, 33990000, 33990000, '2022-11-13 09:19:39', '1', '2022-11-13 10:14:09', '1', 1, 1, 'MAG-Infinite-S3-12TC'),
(57, 46, 'Laptop Dell Inspiron 14 5420 (N5420-i5U085W11SLU) (i5-1235U | 8GB | 512GB | Intel Iris Xe Graphics | 14\' FHD | Win 11 | Office)', 'laptop-dell-inspiron-14-5420-n5420-i5u085w11slu-i5-1235u-8gb-512gb-intel-iris-xe-graphics-14-fhd-win-11-office', '59a86a0f7a8963bbb6424101a8c2afb1.webp', 'ae9a2aa860431e8029096afdd00de14a.webp#fb661eba6311aefd02e77a531d16e13e.webp#8882ca995d6f679e76d2b4a9e4d72caf.webp#0ea048bd6d6ade7ae9572834722d37f7.webp#713aa784160c56932e804d029084c401.webp#91b69f0f9310fe13a3c67bae2eea90c7.webp', 'Dell Inspiron 14 5420 (N5420-i5U085W11SLU) là dòng sản phẩm laptop mỏng nhẹ của Dell, có thiết kế bằng nhôm, kiểu dáng sang trọng, cấu hình đáp ứng tốt cho nhu cầu làm việc và học tập online, sản phẩm hiện đang được phân phối chính thức tại Hangchinhhieu.vn', '<p><strong>Dell Inspiron 14 5420 (N5420-i5U085W11SLU) l&agrave; d&ograve;ng sản phẩm laptop mỏng nhẹ&nbsp;của Dell, c&oacute; thiết kế bằng nh&ocirc;m, kiểu d&aacute;ng&nbsp;sang trọng, cấu h&igrave;nh đ&aacute;p ứng tốt&nbsp;cho nhu cầu l&agrave;m việc v&agrave; học tập online, sản phẩm hiện đang được ph&acirc;n phối ch&iacute;nh thức tại Hangchinhhieu.vn</strong><br />\r\n', 7, 555, 0, 9, 22990000, 20920900, '2022-11-13 09:54:37', '1', '2022-11-13 09:54:37', '1', 1, 1, 'N5420-i5U085W11SLU'),
(58, 47, 'Laptop Acer Aspire 7 A715-42G-R4XX (R5-5500U | 8GB | 256GB | GeForce® GTX 1650 4GB | 15.6\' FHD | Win 11)', 'laptop-acer-aspire-7-a715-42g-r4xx-r5-5500u-8gb-256gb-geforcer-gtx-1650-4gb-15-6-fhd-win-11', 'd2d625ab0a2c49185bbbd187ed7501d8.webp', 'c361c29c97c66d1d17aa24e3cd7fd122.webp#404d683aa350fec1bf849ff48fb197c4.webp#35ca2d74e05958c3e64c1e40a7da8f21.webp#c48dd8555333b7ab3562a97553261bde.webp#499241ca2ea1f0d2683866b38bfb2542.webp', 'Acer Aspire 7 A715-42G-R4XX là chiếc laptop gaming có thiết kế gọn gàng, không quá hầm hố như dòng Nitro hay Predator nên Aspire 7 phù hợp để bạn sử dụng trong hầu hết trường hợp, dù là chiến game tại nhà hay khi làm việc. Ngoài ra, với các tựa game ngày càng chú trọng về đồ họa, laptop Aspire 7 cũng đã kịp thời trang bị màn hình FullHD IPS cho các bạn yên tâm chơi game với màu sắc trong game sẽ cực kì sống động, được tái tạo với độ chính xác cao.', '<h2><strong>Giới thiệu Acer Aspire 7 2021 A715-42G-R4XX</strong></h2>\r\n\r\n<p>Đằng sau thiết kế tinh tế của&nbsp;<a href=\"https://hangchinhhieu.vn/products/laptop-acer-aspire-7-a715-42g-r4xx-r5-5500u\"><strong>Aspire 7 2021&nbsp;A715-42G-R4XX</strong></a>&nbsp;ẩn chứa khả năng xử l&yacute; v&agrave; đồ họa mạnh mẽ, gi&uacute;p người d&ugrave;ng tận dụng tối đa m&agrave;n h&igrave;nh 15,6 inch với tỷ lệ m&agrave;n h&igrave;nh lớn tr&ecirc;n th&acirc;n m&aacute;y. Kh&ocirc;ng chỉ vậy, Acer Aspire 7 cũng bao gồm Wi-Fi độ nhanh v&agrave; dung lượng lưu trữ v&agrave; bộ nhớ.</p>\r\n\r\n<p><a href=\"https://hangchinhhieu.vn/products/laptop-acer-aspire-7-a715-42g-r4xx-r5-5500u\"><img src=\"https://file.hstatic.net/1000233206/file/acer_aspire_7_2021_a715-42g-r6zr_a12d097e60254a4a994e064a87a16246.jpg\" /></a></p>\r\n\r\n<h3><strong>LAPTOP GAMING TỐT NHẤT PH&Acirc;N KH&Uacute;C</strong></h3>\r\n\r\n<p>Acer Aspire 7 l&agrave; chiếc&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-choi-game-gaming\"><strong>laptop gaming 2021</strong></a>&nbsp;được t&iacute;ch hợp rất nhiều sức mạnh v&agrave;o khung m&aacute;y. Với&nbsp;<strong>NVIDIA&reg; graphic GTX 1650</strong>&nbsp;mới nhất gi&uacute;p tăng khả năng xử l&yacute; c&ocirc;ng việc v&agrave; giải tr&iacute; của bạn, đồng thời&nbsp;<strong>CPU AMD Ryzen &trade; 5000</strong>&nbsp;gi&uacute;p mọi thứ hoạt động ở tốc độ tối ưu.&nbsp;Anh em dễ d&agrave;ng &quot;vi vu&quot; mượt m&agrave; những tựa game online như Li&ecirc;n Minh Huyền Thoại, Fifa Online 4, Valorant, CS:GO ở mức đồ họa cao nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_2021_ket_hop_suc_manh_cua_amd_va_nvidia_543235e48c8046a68d71b74712b1dbbc.png\" /></p>\r\n\r\n<p>Test game nhanh c&aacute;c bạn c&oacute; thể thấy phi&ecirc;n bản Aspire 7 2021 cho hiệu năng mạnh mẽ v&agrave; tản nhiệt tốt như thế n&agrave;o</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_2021_gaming_28748149c8d7442ea866f6537a7767f0.jpg\" /></p>\r\n\r\n<h3>B&ugrave;ng nổ thị gi&aacute;c</h3>\r\n\r\n<p>Nhờ tỷ lệ m&agrave;n h&igrave;nh so với th&acirc;n m&aacute;y l&agrave;&nbsp;<strong>81,61%</strong>, người d&ugrave;ng c&oacute; thể thưởng thức h&igrave;nh ảnh rộng hơn tr&ecirc;n m&agrave;n h&igrave;nh 15,6 inch viền hẹp FHD tuyệt đẹp. Để tối ưu ho&aacute; h&igrave;nh ảnh trực quan,&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-acer-aspire-7\"><strong>Aspire 7 2021</strong></a>&nbsp;được t&iacute;ch hợp th&ecirc;m&nbsp;<strong>Acer Color Intelligence&trade;</strong>&nbsp;v&agrave;&nbsp;<strong>Acer ExaColor&trade;.</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_2021_voi_vien_man_hinh_sieu_mong_507c9d42f7494e9d95061f3959c192af.png\" /></p>\r\n\r\n<h3>V&ocirc; v&agrave;n sức mạnh</h3>\r\n\r\n<p>Với khả năng n&acirc;ng cấp của&nbsp;<strong>A715-42G-R4XX</strong>&nbsp;l&ecirc;n đến&nbsp;1TB ổ cứng M.2 PCIe SSD v&agrave; 32 GB RAM DDR4 (SO-DIMM) tối đa, người d&ugrave;ng c&oacute; đủ năng lượng v&agrave; bộ nhớ để thực hiện c&aacute;c t&aacute;c vụ của m&igrave;nh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_thiet_ke_linh_dong_17d56d99b3fe4140997b62e137603791.png\" /></p>\r\n\r\n<h3>Kết nối mới nhất</h3>\r\n\r\n<p>Th&ocirc;ng qua việc sử dụng USB-C&trade;, người d&ugrave;ng c&oacute; thể truyền dữ liệu si&ecirc;u nhanh qua USB SuperSpeed 5Gbps.&nbsp;<strong>Aspire 7 2021&nbsp;A715-42G-R4XX</strong>&nbsp;cũng bao gồm tổng cộng bốn USB: một cổng USB 2.0 v&agrave; một cổng HDMI v&agrave; hai cổng SuperSpeed USB 5Gbps Type-A, một trong hai cổng c&oacute; thể được sử dụng để sạc ngoại tuyến.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_ket_noi_da_phuong_tien_toc_do_cao_ba7623fa330b42e7b4924fa595a7fcef.png\" /></p>\r\n\r\n<p><em>Wi-Fi băng tần k&eacute;p:&nbsp;</em><em>Kết nối của Wi-Fi được cung cấp bởi Intel&reg; Wi-Fi 6 (GIG +) (802.11ax) băng tần k&eacute;p, cho ph&eacute;p tốc độ tải xuống 1, 700 Mbps, độ trễ thấp hơn 75 % v&agrave; Cải thiện bảo mật.</em></p>\r\n\r\n<p><em>MU-MIMO:&nbsp;</em><em>MU-MIMO c&oacute; thể xử l&yacute; nhiều thiết bị kh&ocirc;ng d&acirc;y c&ugrave;ng l&uacute;c với tốc độ nhanh hơn v&agrave; nhanh hơn gấp 3 lần so với MIMO d&agrave;nh cho một người d&ugrave;ng.</em></p>\r\n\r\n<p><em>USB-C&trade;:&nbsp;</em><em>Một đầu nối duy nhất được sử dụng để truyền dữ liệu cực nhanh v&agrave; nhanh hơn 10 lần so với USB 2.0.</em></p>\r\n\r\n<p>Đặc biệt, Acer cho ph&eacute;p người d&ugrave;ng kiểm so&aacute;t nhiều hơn việc l&agrave;m m&aacute;t của&nbsp;<strong>Aspire 7 2021</strong>, với ph&iacute;m tắt mới (<strong>Fn + F</strong>) để chuyển đổi giữa c&aacute;c chế độ l&agrave;m m&aacute;t im lặng, b&igrave;nh thường v&agrave; hiệu suất - bạn chọn chế độ ph&ugrave; hợp hơn với c&ocirc;ng việc của m&igrave;nh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/phu_hop_voi_moi_nganh_nghe_57330077713e487fb0e43760a589c97d.png\" /></p>\r\n\r\n<h3>Kết nối Wifi nhanh</h3>\r\n\r\n<p>Người d&ugrave;ng dễ d&agrave;ng cập nhật th&ocirc;ng tin mới nhất với&nbsp;<strong>Acer Aspire 7&nbsp;A715-42G-R4XX</strong>&nbsp;đầy đủ c&aacute;c cổng kết nối.&nbsp;<strong>Wi-Fi 6</strong>&nbsp;băng tần k&eacute;p (802.11ax) cải thiện th&ocirc;ng lượng mạng trung b&igrave;nh l&ecirc;n đến 3 lần 2 v&agrave; giảm 3 độ trễ l&ecirc;n đến 75% so với Wi-Fi 5 (802.11ac).</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_ksp_3_88782eb3e5a54f858785cbee3d1ab2eb.jpg\" /></p>\r\n\r\n<h3>Vẻ ngo&agrave;i chuy&ecirc;n nghiệp</h3>\r\n\r\n<p>Với thiết kế tối giản tinh tế v&agrave;&nbsp;<strong>b&agrave;n ph&iacute;m c&oacute; đ&egrave;n nền</strong>, Aspire 7 2021 thể hiện phong c&aacute;ch chuy&ecirc;n nghiệp, nổi bật ở bất kỳ nơi đ&acirc;u v&agrave; l&yacute; tưởng để l&agrave;m việc trong m&ocirc;i trường thiếu &aacute;nh s&aacute;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_ksp_6_a909222cc22443bd8af99c02cd8df24b.jpg\" /></p>\r\n\r\n<h3>Dịch vụ bảo h&agrave;nh 3S1</h3>\r\n\r\n<p><strong>3S1</strong>&nbsp;l&agrave; ch&iacute;nh s&aacute;ch bảo h&agrave;nh nhanh của Acer d&agrave;nh cho game thủ. Duy nhất tại Việt Nam, những d&ograve;ng sản phẩm cao cấp như&nbsp;<strong>Aspire 7</strong>&nbsp;sẽ được kiểm tra, bảo h&agrave;nh v&agrave; gửi lại kh&aacute;ch chỉ trong thời gian ngắn: 03 ng&agrave;y (<strong>72 giờ</strong>) bao gồm cả thứ 7, Chủ nhật. Đặc biệt hơn nữa, kh&aacute;ch h&agrave;ng sẽ được nhận sản phẩm mới c&ugrave;ng loại hoặc tương đương (<strong>1 đổi 1</strong>) cho c&aacute;c trường hợp kh&ocirc;ng ho&agrave;n th&agrave;nh bảo h&agrave;nh trong 03 ng&agrave;y t&iacute;nh từ l&uacute;c nhận sản phẩm.&nbsp;</p>\r\n\r\n<p>Đặc biệt đối với c&aacute;c sản phẩm&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-choi-game-acer\"><strong>Laptop Acer Gaming 2021</strong></a>&nbsp;trong suốt thời gian bảo h&agrave;nh, c&aacute;c bạn c&oacute; thể mang m&aacute;y đến trung t&acirc;m bảo h&agrave;nh Acer to&agrave;n quốc để l&agrave;m vệ sinh, tra keo tản nhiệt để chiếc laptop của m&igrave;nh lu&ocirc;n sạch sẽ, m&aacute;t mẻ. Đ&acirc;y l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu đối với laptop gaming, giữ cho hiệu suất v&agrave; độ bền m&aacute;y lu&ocirc;n tốt nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/aspire_7_duoc_huong_chinh_sach_bao_hanh_vip_3s1_cua_acer_c027d7405d7f4af1a6cb30ce98b61988.png\" /></p>\r\n', 7, 501, 3, 28, 19990000, 14392800, '2022-11-13 10:07:59', '1', '2022-11-13 10:14:04', '1', 1, 1, 'A715-42G-R4XX');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `sku`) VALUES
(59, 47, 'Laptop ASUS TUF Gaming F15 FX506LHB-HN188W (i5-10300H | 8GB | 512GB | GeForce® GTX 1650 4GB | 15.6\' FHD 144Hz | Win 11)', 'laptop-asus-tuf-gaming-f15-fx506lhb-hn188w-i5-10300h-8gb-512gb-geforcer-gtx-1650-4gb-15-6-fhd-144hz-win-11', '0b17f2191e741028dd56dcb111e98bf6.webp', '16dc646522133cda1a617029bd226fdd.webp#2ec7586dea8a601290406172f8af424f.webp#b3b3a51d89ae216d3c39742402812ef7.webp#8efa6a9a0f651d46ea620e61f0bdf307.webp#4d20304e5edf497ddef5b929f6162c71.webp#747e43f25cdacd2fd7c4f9cfbe7a0561.webp', 'Được trang bị với độ bền phù hợp với các tác vụ thực tế và chơi game, ASUS TUF Gaming F15 FX506LHB-HN188W là laptop gaming chạy Windows 11 Home có thể giúp bạn giành chiến thắng. Với CPU Intel Core i5-10300H và GPU GeForce GTX™ 1650 mới nhất, các tựa game hành động sẽ chạy nhanh, mượt mà và khai thác tối đa màn hình IPS tần số quét 144Hz. Mặc dù có khung máy di động và nhỏ hơn so với thế hệ tiền nhiệm, chiếc laptop gaming này vẫn có tùy chọn dung lượng pin (48Wh/90Wh) cho thời lượng pin dài. Hệ thống tản nhiệt tự làm sạch hiệu quả kết hợp với độ bền đạt chuẩn quân đội của TUF giúp chiếc máy trở thành chiến binh bền bỉ đáng tin cậy cho các game thủ.', '<h2><strong>Giới thiệu ASUS TUF Gaming F15 FX506LHB-HN188W mới ra mắt năm 2021</strong></h2>\r\n\r\n<p><a href=\"https://hangchinhhieu.vn/products/laptop-asus-tuf-gaming-f15-fx506lh-hn188w-i5-10300h\"><strong><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15_10ff459c8de14522995b8a4522778475.png\" /></strong></a></p>\r\n\r\n<p><strong>ĐẲNG CẤP CHIẾN BINH</strong></p>\r\n\r\n<p>Được trang bị với độ bền ph&ugrave; hợp với c&aacute;c t&aacute;c vụ thực tế v&agrave; chơi game,&nbsp;<strong>ASUS TUF Gaming F15 FX506LHB-HN188W</strong>&nbsp;l&agrave; laptop gaming chạy Windows 11 Home c&oacute; thể gi&uacute;p bạn gi&agrave;nh chiến thắng. Với&nbsp;<strong>CPU Intel Core i5-10300H</strong><strong>&nbsp;</strong>v&agrave;&nbsp;<strong>GPU GeForce GTX&trade; 1650</strong>&nbsp;mới nhất, c&aacute;c tựa game h&agrave;nh động sẽ chạy nhanh, mượt m&agrave; v&agrave; khai th&aacute;c tối đa m&agrave;n h&igrave;nh&nbsp;<strong>IPS</strong>&nbsp;tần số qu&eacute;t&nbsp;<strong>144H</strong>z. Mặc d&ugrave; c&oacute; khung m&aacute;y di động v&agrave; nhỏ hơn so với thế hệ tiền nhiệm, chiếc laptop gaming n&agrave;y vẫn c&oacute; t&ugrave;y chọn dung lượng pin (48Wh/90Wh) cho thời lượng pin d&agrave;i. Hệ thống tản nhiệt tự l&agrave;m sạch hiệu quả kết hợp với độ bền đạt chuẩn qu&acirc;n đội của TUF gi&uacute;p chiếc m&aacute;y trở th&agrave;nh chiến binh bền bỉ đ&aacute;ng tin cậy cho c&aacute;c game thủ.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"371\" src=\"https://www.youtube.com/embed/kwlOAeFLKH0\" width=\"660\"></iframe></p>\r\n\r\n<p><strong>HIỆU NĂNG TUYỆT VỜI</strong><br />\r\n<strong>SỨC MẠNH CHO MỌI T&Aacute;C VỤ</strong></p>\r\n\r\n<p>Trang bị sức mạnh để giải quyết mọi t&aacute;c vụ,&nbsp;<strong>ASUS TUF Gaming F15 FX506LH</strong>&nbsp;mang đến hiệu năng tin cậy để chơi game, ph&aacute;t trực tiếp v&agrave; thực hiện mọi hoạt động. CPU 8 nh&acirc;n Intel i5 tốc độ cao c&oacute; thể k&iacute;ch hoạt tới 16 luồng để xử l&yacute; đa nhiệm nặng. Kết hợp với GPU rời GeForce GTX&trade; 1650Ti, m&aacute;y c&oacute; thể đ&aacute;p ứng tốc độ khung h&igrave;nh cao của nhiều tựa game phổ biến. Tăng tốc độ tải ứng dụng với ổ SSD 512GB NVMe PCIe&reg; v&agrave; kh&ocirc;ng gian cho ổ SSD thứ hai.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15_e4b32bba34d24d43a500f1c1d5ede3bf.png\" /></p>\r\n\r\n<p><strong>HOẠT ĐỘNG L&Acirc;U V&Agrave; BỀN BỈ HƠN</strong></p>\r\n\r\n<p>Mặc d&ugrave; c&oacute; khung m&aacute;y nhỏ hơn v&agrave; nhẹ hơn so với thế hệ trước,&nbsp;<strong>ASUS TUF Gaming F15</strong>&nbsp;c&oacute; pin lớn hơn v&agrave; tuổi thọ pin d&agrave;i hơn. Đ&acirc;y l&agrave;&nbsp;<strong><a href=\"https://hangchinhhieu.vn/collections/laptop-choi-game-gaming\">laptop gaming</a></strong>&nbsp;được trang bị bộ xử l&yacute; Intel hiệu suất sử dụng năng lượng cao v&agrave; pin dung lượng 48WHr.&nbsp;Nhẹ hơn v&agrave; thời lượng pin d&agrave;i hơn, bạn c&oacute; thể tự do sử dụng chiếc m&aacute;y n&agrave;y khi di chuyển như mong muốn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-1_62b4c51fc3d8482f840dc428be01183c.png\" /></p>\r\n\r\n<p><strong>THIẾT KẾ</strong><br />\r\n<strong>THANH THO&Aacute;T V&Agrave; ẤN TƯỢNG</strong></p>\r\n\r\n<p>Hai kiểu thiết kế tinh xảo gi&uacute;p game thủ tự do thể hiện phong c&aacute;ch c&aacute; nh&acirc;n của m&igrave;nh. Lựa chọn giữa thiết kế Fortress Gray thanh tho&aacute;t ấn tượng hoặc thiết kế Bonfire Black bắt mắt với c&aacute;c sọc đỏ. Hoạ tiết tổ ong xung quanh đế m&aacute;y th&ecirc;m c&aacute;c sọc v&agrave; tấm gia cường h&igrave;nh lục gi&aacute;c xung quanh khung m&aacute;y, trong khi c&aacute;c đường kẻ ở phần k&ecirc; tay gi&uacute;p m&aacute;y tr&ocirc;ng thanh tho&aacute;t v&agrave; gọn g&agrave;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-2_8d6737fae69e45d3a1b1ad000524cec2.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-3_14cfd517d90849d9bb036a1a889286a9.png\" /></p>\r\n\r\n<p><strong>BỀN BỈ</strong><br />\r\n<strong>ĐỘ BỀN BỈ ĐẠT TI&Ecirc;U CHUẨN QU&Acirc;N ĐỘI</strong></p>\r\n\r\n<p>Để xứng đ&aacute;ng với t&ecirc;n gọi&nbsp;<strong>ASUS TUF Gaming</strong>, chiếc laptop n&agrave;y phải vượt qua b&agrave;i thử nghiệm độ bền&nbsp;<strong>MIL-STD-810H</strong>. Thiết bị được thử nghiệm thả rơi, rung lắc, hoạt động trong độ ẩm v&agrave; nhiệt độ khắc nghiệt để đảm bảo độ bền. Hoạt động được trong cả những điều kiện khắc nghiệt nhất, A15 dễ d&agrave;ng chịu đựng được c&aacute;c va đập trong cuộc sống h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-4_ab883d8135a549b6be619c2ff98351c4.png\" /></p>\r\n\r\n<p><strong>H&Igrave;NH ẢNH</strong><br />\r\n<strong>MỞ RỘNG KH&Ocirc;NG GIAN HIỂN THỊ</strong></p>\r\n\r\n<p>Trang bị m&agrave;n h&igrave;nh&nbsp;<strong>IPS</strong>&nbsp;tần số qu&eacute;t l&ecirc;n tới&nbsp;<strong>144Hz</strong>, ASUS TUF Gaming F15 ho&agrave;n hảo cho c&aacute;c tựa game tốc độ cao. Với adaptive sync, tần số qu&eacute;t của m&agrave;n h&igrave;nh sẽ đồng bộ với tốc độ khung h&igrave;nh của GPU để giảm thiểu hiện tượng lag, giật h&igrave;nh v&agrave; loại bỏ x&eacute; h&igrave;nh để c&oacute; trải nghiệm chơi game si&ecirc;u mượt m&agrave; v&agrave; đắm ch&igrave;m. Dễ d&agrave;ng kết nối với một m&agrave;n h&igrave;nh b&ecirc;n ngo&agrave;i để l&agrave;m việc đa nhiệm qua USB 3.2 thế hệ 2 Type-C&trade; với G-SYNC&reg; hỗ trợ DisplayPort&trade; 1.4 v&agrave; ph&aacute;t c&aacute;c bộ phim, video v&agrave; chơi game 4K Ultra HD tr&ecirc;n tivi m&agrave;n h&igrave;nh lớn qua HDMI 2.0b.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-5_dd1f1db4aa8c4756a3234a3f2720a8bc.png\" /></p>\r\n\r\n<p><strong>B&Agrave;N PH&Iacute;M</strong><br />\r\n<strong>TỐI ƯU CHO CHƠI GAME</strong></p>\r\n\r\n<p>Trang bị cho bạn b&agrave;n ph&iacute;m kiểu m&aacute;y t&iacute;nh để b&agrave;n tối ưu cho hoạt động chơi game. Đ&egrave;n nền RGB đồng bộ cho ph&eacute;p bạn thể hiện c&aacute; t&iacute;nh của m&igrave;nh trong khi ph&iacute;m WASD nổi bật gi&uacute;p bạn dễ d&agrave;ng nh&igrave;n thấy ph&iacute;m để thực hiện c&aacute;c lệnh di chuyển. C&ocirc;ng nghệ Overstroke k&iacute;ch hoạt vị tr&iacute; nhận lệnh cao hơn ở mỗi ph&iacute;m để đem lại tốc độ phản hồi nhanh hơn v&agrave; dễ điều khiển hơn. L&agrave; một sản phẩm TUF thực thụ, mỗi ph&iacute;m c&oacute; độ bền tới 20 triệu lần bấm với độ ch&iacute;nh x&aacute;c v&agrave; tin cậy l&acirc;u d&agrave;i.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-6_a2c291e4bbc7499c97ecd9047ef7eba2.png\" /></p>\r\n\r\n<p><strong>&Acirc;M THANH</strong><br />\r\n<strong>ĐẮM CH&Igrave;M V&Agrave;O &Acirc;M THANH V&Ograve;M</strong></p>\r\n\r\n<p>Hai loa n&acirc;ng cấp với bốn &acirc;m thanh đầu ra gấp 1,8 lần v&agrave; &acirc;m bass trầm hơn 2,7 lần so với thế hệ trước để c&oacute; trải nghiệm &acirc;m thanh tuyệt vời hơn. C&ocirc;ng nghệ DTS:X&trade; đem lại &acirc;m thanh v&ograve;m ảo 7.1 cho chất lượng &acirc;m thanh như trong nh&agrave; h&aacute;t với tai nghe stereo. G&acirc;y bất ngờ cho kẻ địch nhờ khả năng nhận diện kh&ocirc;ng gian tăng cường từ hệ thống &acirc;m th&agrave;nh v&ograve;m hoặc tận thưởng nhiều lớp sắc th&aacute;i &acirc;m nhạc. 8 chế độ để nghe nhạc, xem phim v&agrave; chơi game gi&uacute;p tối ưu h&oacute;a trải nghiệm của bạn trong khi bộ c&acirc;n bằng t&iacute;ch hợp sẽ gi&uacute;p bạn điều chỉnh theo &yacute; muốn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-7_f45cf021d6b2490aa63dc98722bcba86.png\" /></p>\r\n\r\n<p><strong>TẢN NHIỆT</strong><br />\r\n<strong>LU&Ocirc;N M&Aacute;T MẺ</strong></p>\r\n\r\n<p>Hệ thống tản nhiệt to&agrave;n diện đảm bảo mỗi laptop&nbsp;<strong>TUF Gaming F15 2021</strong>&nbsp;c&oacute; thể duy tr&igrave; hiệu năng cao v&agrave; t&iacute;nh hiệu quả trong v&ograve;ng đời d&agrave;i của m&igrave;nh. Nhiều ống tản nhiệt v&agrave; 3 ống dẫn nhiệt đưa nhiệt những th&agrave;nh phần quan trọng v&agrave; tản nhiệt nhanh ch&oacute;ng trong qu&aacute; tr&igrave;nh chơi game nặng. Thiết kết l&agrave;m m&aacute;t tự l&agrave;m sạch đảm bảo hệ thống tản nhiệt của thiết bị hoạt động ổn định trong thời gian d&agrave;i, trong khi chế độ hoạt động c&acirc;n bằng hiệu năng v&agrave; độ ồn cho c&aacute;c t&aacute;c vụ đang xử l&yacute;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-8_58e37769a59c42f29ca28348dd6e7829.png\" /></p>\r\n\r\n<p><strong>KHẢ NĂNG N&Acirc;NG CẤP</strong><br />\r\n<strong>DỄ D&Agrave;NG THỰC HIỆN N&Acirc;NG CẤP</strong></p>\r\n\r\n<p>N&acirc;ng cấp RAM v&agrave; SSD dễ d&agrave;ng nhờ thiết kế cho ph&eacute;p bạn nhanh ch&oacute;ng tiếp cận khe bộ nhớ v&agrave; khay ổ cứng. Với một chiếc tua v&iacute;t ti&ecirc;u chuẩn, bạn c&oacute; thể dễ d&agrave;ng th&aacute;o ốc ở mặt sau khung m&aacute;y để tiến h&agrave;nh n&acirc;ng cấp. C&oacute; một chiếc ốc kiểu bật l&ecirc;n đặc biệt ở g&oacute;c mặt đ&aacute;y, gi&uacute;p bạn mở m&aacute;y ra dễ d&agrave;ng. Nhanh ch&oacute;ng n&acirc;ng cấp hoặc thay thế RAM v&agrave; tăng dung lượng ổ SSD bằng c&aacute;ch th&ecirc;m ổ PCIe&reg; thứ hai.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-9_c3f57225325e40149caf75341a8e768d.png\" /></p>\r\n\r\n<p>*Khe SSD bổ sung chỉ c&oacute; tr&ecirc;n model GTX1660Ti trở đi.<br />\r\n*Khe HDD bổ sung kh&ocirc;ng c&oacute; tr&ecirc;n model pin 90WH.</p>\r\n\r\n<p><strong>CỔNG KẾT NỐI</strong><br />\r\n<strong>KHẢ NĂNG KẾT NỐI TO&Agrave;N DIỆN</strong></p>\r\n\r\n<p>Nhiều cổng I/O cho ph&eacute;p bạn kết nối tới thiết bị ưa th&iacute;ch v&agrave; bắt đầu l&agrave;m việc mọi nơi. Hai cổng USB 3.2 Type-A cho ph&eacute;p truyền dữ liệu tốc độ cao v&agrave; th&ecirc;m một cổng USB 2.0 Type-A nữa để c&oacute; tổng cộng 3 cổng kết nối đến thiết bị ngoại vi. Bluetooth gi&uacute;p bạn kết nối chuột, tai nghe v&agrave; c&aacute;c thiết bị tương th&iacute;ch kh&aacute;c ở chế độ l&agrave;m việc kh&ocirc;ng d&acirc;y. Sử dụng USB 3.2 gen 2 Type-C&trade; với DisplayPort&trade; 1.4 để kết nối tới m&agrave;n h&igrave;nh G-SYNC&trade; si&ecirc;u nhanh cho trải nghiệm chơi game mượt m&agrave;. Kết nối mạng nhanh ch&oacute;ng với Wi-Fi 802.11ax (2x2) bất cứ đ&acirc;u c&oacute; Wi-Fi.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-10_2ea94b65b5044355b4ef78611f4392f0.png\" /></p>\r\n\r\n<p><strong>PHẦN MỀM ĐỘC QUYỀN</strong><br />\r\n<strong>TINH CHỈNH V&Agrave; C&Aacute; NH&Acirc;N H&Oacute;A HỆ THỐNG ĐỒNG NHẤT</strong></p>\r\n\r\n<p><strong>Armoury Crate</strong>&nbsp;hợp nhất chức năng điều khiển hệ thống v&agrave; &aacute;nh s&aacute;ng để đưa những t&ugrave;y chọn c&agrave;i đặt thiết yếu đến ngay trong tầm tay bạn trong một tiện &iacute;ch duy nhất. T&ugrave;y chọn t&ugrave;y biến cho ph&eacute;p bạn c&aacute; nh&acirc;n h&oacute;a hiệu ứng thẩm mỹ, hồ sơ game v&agrave; thay đổi thiết lập &acirc;m thanh theo sở th&iacute;ch. Với Scenario Profiles, bạn c&oacute; thể định nghĩa v&agrave; t&ugrave;y chỉnh sở th&iacute;ch để tự động điều chỉnh hiệu năng v&agrave; c&aacute;c thiết lập kh&aacute;c khi bạn khởi chạy game v&agrave; ứng dụng ưa th&iacute;ch của m&igrave;nh. Ho&agrave;n to&agrave;n kiểm so&aacute;t trải nghiệm c&aacute; nh&acirc;n của bạn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/asus-tuf-gaming-a15-11_62778adb56544a3dbe9af4c873fff302.png\" /></p>\r\n\r\n<p><strong>ASUS TUF Gaming F15&nbsp;FX506LHB-HN188W&nbsp;</strong>được ph&acirc;n phối tại&nbsp;<a href=\"https://hangchinhhieu.vn/\"><strong>Hangchinhhieu.vn&nbsp;</strong></a>với mức gi&aacute; 21.990.000đ<strong>.&nbsp;</strong>Đ&acirc;y l&agrave; d&ograve;ng<strong>&nbsp;laptop gaming phổ th&ocirc;ng&nbsp;</strong>đang được ưu th&iacute;ch nhất hiện nay v&igrave; gi&aacute; th&agrave;nh phải chăng nhưng mang lại hiệu năng mạnh mẽ.</p>\r\n\r\n<p>Ngo&agrave;i ra c&aacute;c bạn c&oacute; thể xem th&ecirc;m c&aacute;c d&ograve;ng&nbsp;<strong>ASUS TUF Gaming</strong>&nbsp;kh&aacute;c&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-asus-tuf-gaming\">tại đ&acirc;y</a></p>\r\n\r\n<hr />\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/hoang_mai.gif\" /></p>\r\n', 7, 701, 0, 25, 21990000, 16492500, '2022-11-13 10:11:05', '1', '2022-11-13 10:13:57', '1', 1, 1, 'FX506LHB-HN188W '),
(60, 47, 'Laptop ASUS ROG Strix G15 G513IH-HN015W (R7-4800H | 8GB | 512GB | GeForce® GTX 1650 4GB | 15.6\' FHD 144Hz | Win 11)', 'laptop-asus-rog-strix-g15-g513ih-hn015w-r7-4800h-8gb-512gb-geforcer-gtx-1650-4gb-15-6-fhd-144hz-win-11', '256765aba8f54351e2c19722788dc28b.webp', '920fc6415c18f5a40d9c12c882b62933.webp#2a4bcb265ce736240bf96f69c8d004a8.webp#6115f4c19909534efe6e599e08687c2d.webp#4759586ad8d6a3806abaaaef12ac6287.webp#6fff87ec301caa69014f26a2a10b8ac5.webp#ceea004282e7583231e78ebc663dc9b2.webp', 'Được trang bị CPU lên đến Ryzen™ 7 5800H cùng card đồ họa RTX™ 3070, 32GB RAM DDR4 và SSD 1TB PCI-e. Với cấu hình này thì những game thủ không còn lo lắng bất kỳ điều gì khi chơi những tựa game AAA trên sản phẩm ASUS ROG Strix G15 (2021). Được trang bị lên đến 32 GB RAM DDR4-3200 hiệu năng cao, bạn có thể chơi game, phát trực tuyến và render một cách dễ dàng, nhanh chóng. Bộ nhớ SSD NVMe lên đến 1TB giúp tăng tốc thời gian tải cho các game và phần mềm, đồng thời khe cắm M.2 thứ hai cho phép bạn thêm một ổ đĩa khác để mở rộng dung lượng lưu trữ của mình.', '<h2><strong>Giới thiệu ASUS ROG Strix G15 G513IH-HN015W</strong></h2>\r\n\r\n<p><strong>Chỉ một v&agrave;i tuần trước tại CES2021 ASUS đ&atilde; c&ocirc;ng bố h&agrave;ng loạt sản phẩm gaming tiếp nối thế hệ trước với một phi&ecirc;n bản mới mạnh mẽ v&agrave; cao cấp đặc biệt l&agrave; về khả năng tản nhiệt. Như anh em đ&atilde; biết th&igrave; d&ograve;ng Strix G l&agrave; d&ograve;ng laptop gaming phổ th&ocirc;ng trong cấu h&igrave;nh mạnh như c&oacute; mức gi&aacute; vừa phải nhưng năm nay&nbsp;ROG Strix G15 G513 đ&atilde; được ASUS thay đổi v&agrave; hướng đến đối tượng người d&ugrave;ng l&agrave; game thủ chuy&ecirc;n nghiệp đi k&egrave;m c&acirc;u slogan&nbsp;&quot;For Those Who Dare&quot; v&agrave; tất nhi&ecirc;n d&agrave;nh cho những ai c&oacute; tinh thần&nbsp;d&aacute;m đổi mới d&aacute;m s&aacute;ng tạo. C&ugrave;ng Hangchinhhieu.vn đ&aacute;nh gi&aacute; nhanh em&nbsp;ASUS ROG Strix G15 G513 2021 ở b&agrave;i viết n&agrave;y nh&eacute;.</strong></p>\r\n\r\n<p><a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-strix-g15-g513ih-hn015w-r7-4800h\"><img src=\"https://file.hstatic.net/1000233206/file/7-laptop-amd-5000-series-va-rtx-3070-dau-tien-xuat-hien-tai-viet-nam-5_3728a9dc82e5485f9bdb8ea45de1555d_1024x1024.jpg\" /></a></p>\r\n\r\n<h2><br />\r\n<strong>THIẾT KẾ ĐẬM CHẤT GAMING</strong></h2>\r\n\r\n<p>Ngoại h&igrave;nh được thay đổi mạnh mẽ đậm chất game thủ, vỏ ngo&agrave;i phần thiết kế đ&oacute; l&agrave; mặt A kim loại v&agrave;&nbsp;logo c&oacute; đ&egrave;n LED trắng, chiếu nghỉ tay soft-touch sờ cực ph&ecirc;. Phần tản nhiệt của&nbsp;<a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-strix-g15-g513ih-hn015w-r7-4800h\"><strong>ASUS ROG Strix G15 G513IH-HN015W</strong></a>&nbsp;được n&acirc;ng cấp l&ecirc;n 4 khe gi&oacute; v&agrave; keo tản nhiệt kim loại lỏng việc trang bị 4 khe tản nhiệt sẽ gi&uacute;p cho chiếc m&aacute;y đẩy luồng kh&iacute; n&oacute;ng ra ngo&agrave;i hiệu quả hơn v&agrave; h&uacute;t kh&iacute; m&aacute;t nhiều hơn.&nbsp;Bản lề chắc chắn v&agrave; rộng r&atilde;i n&ecirc;n dễ d&agrave;ng mở bằng một tay, nhưng em&nbsp;ROG Strix G15&nbsp;G513 kh&ocirc;ng được trang bị webcam anh em nh&eacute;.</p>\r\n\r\n<p><a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-strix-g17-g713qr-hg072t-r7-5800h?fbclid=IwAR2L7fyImWYfzhFoUXksJdjSU3KP_x9-WIx4BL9L2qBSmIOF_bvwetM-N-o\" target=\"_blank\"><img src=\"https://file.hstatic.net/1000233206/file/7-laptop-amd-5000-series-va-rtx-3070-dau-tien-xuat-hien-tai-viet-nam-6_2eb0f65f0d3e4e95acf05afbc1959329_1024x1024.jpg\" /></a></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>M&Agrave;N H&Igrave;NH ĐẸP VỚI&nbsp;TẤM NỀN IPS V&Agrave; TẦN SỐ KHỦNG</strong></h2>\r\n\r\n<p>M&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch Full HD</strong>&nbsp;với tấm nền IPS chất lượng cao c&ugrave;ng tần số qu&eacute;t khủng&nbsp;<strong>144Hz/3ms</strong>&nbsp;ngo&agrave;i ra&nbsp;m&agrave;n h&igrave;nh m&aacute;y&nbsp;c&ograve;n c&oacute; độ phủ m&agrave;u cao 100% sRGB cho nhu cầu l&agrave;m việc&nbsp;ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m những c&ocirc;ng việc về đồ hoạ với độ ch&iacute;nh x&aacute;c m&agrave;u cao.&nbsp;Một chiếc&nbsp;<a href=\"https://hangchinhhieu.vn/collections/laptop-choi-game-gaming\"><strong>laptop gaming</strong></a>&nbsp;với tốc độ l&agrave;m tươi cao như vậy th&igrave; trải nghiệm l&agrave;m việc, l&agrave;m đồ hoạ hay văn ph&ograve;ng lại c&agrave;ng mượt m&agrave; v&agrave; chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/g513_display_a7c87b075cd3458d927351248bbbef77.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>CẤU H&Igrave;NH KHỦNG&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>&bull;&nbsp; CPU:&nbsp;<strong>Ryzen 7 4800H</strong>&nbsp;8 nh&acirc;n 16 luồng, xung base 2.9GHz v&agrave; turbo boost l&ecirc;n tới 4.2GHz, Cache L3 8MB.</li>\r\n	<li>&bull;&nbsp; GPU:&nbsp;NVIDIA&nbsp;<strong>GTX 1650</strong>&nbsp;4GB DDR6.</li>\r\n	<li>&bull;&nbsp; RAM: 8GB DDR4-3200MHz.</li>\r\n	<li>&bull;&nbsp; SSD: 512GB&nbsp;SSD PCIE G3X4</li>\r\n</ul>\r\n\r\n<p>► Xem cấu h&igrave;nh chi tiết hơn tại đ&acirc;y&nbsp;<a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-strix-g15-g513ih-hn015w-r7-4800h\"><strong>TẠI Đ&Acirc;Y</strong></a></p>\r\n\r\n<p>Được trang bị CPU l&ecirc;n đến Ryzen&trade; 7 5800H c&ugrave;ng card đồ họa RTX&trade; 3070, 32GB RAM DDR4 v&agrave; SSD 1TB PCI-e. Với cấu h&igrave;nh n&agrave;y th&igrave; những game thủ kh&ocirc;ng c&ograve;n lo lắng bất kỳ điều g&igrave; khi chơi những tựa game AAA tr&ecirc;n sản phẩm&nbsp;<strong>ASUS ROG Strix G15&nbsp;(2021)</strong>.&nbsp;Được trang bị l&ecirc;n đến 32 GB RAM DDR4-3200 hiệu năng cao, bạn c&oacute; thể chơi game, ph&aacute;t trực tuyến v&agrave; render một c&aacute;ch dễ d&agrave;ng, nhanh ch&oacute;ng. Bộ nhớ SSD NVMe l&ecirc;n đến 1TB gi&uacute;p tăng tốc thời gian tải cho c&aacute;c game v&agrave; phần mềm, đồng thời khe cắm M.2 thứ hai cho ph&eacute;p bạn th&ecirc;m một ổ đĩa kh&aacute;c để mở rộng dung lượng lưu trữ của m&igrave;nh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/g513_liquid_metal_d88bb16122d548d8b43c24e07488fd63.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>KẾT QUẢ TEST</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau đ&acirc;y l&agrave; một v&agrave;i b&agrave;i test phổ biến với nhiều&nbsp;tựa game khủng hiện nay như Resident Evil 3, Tomb Raider, FF XV, Horizon Zero Dawn, GTA V...cho đến c&aacute;c tựa game online nhẹ nh&agrave;ng như CS:GO, Valorant th&igrave; kết quả fps cho ra đều rất ổn v&agrave; nhiệt độ của CPU lẫn GPU đều kh&ocirc;ng qu&aacute; 85 độ. Đ&acirc;y l&agrave; con số thực sự đ&aacute;ng kinh ngạc với một chiếc m&aacute;y gaming phổ th&ocirc;ng như ROG Strix G.&nbsp;</p>\r\n\r\n<p><em>*Cấu h&igrave;nh sản phẩm thử nghiệm: ROG Strix G17 phi&ecirc;n bản 17.3&rdquo; của G15 (R7-5800H, RTX 3070, FHD 300Hz, 16GB RAM, 1TB SSD). Chế độ quạt Turbo, max to&agrave;n bộ thiết lập đồ họa, nhiệt độ ph&ograve;ng b&igrave;nh thường.</em></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/5320408_screenshot_28_cc00ab181d584efb82d94223224657a0_1024x1024.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-58-1024x576_3731c53c5b91474f9732dae983a67611_1024x1024.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-44-1024x576_9f6e6e4cbf79408f95674fe094842baa_1024x1024.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-79-1024x576_c42ba742b7854d81aa04be4ebe7cacf3_1024x1024.png\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>3D MARK V&Agrave; PC MARK</strong></h2>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;,&nbsp;<strong>ASUS ROG Strix G17 G713</strong>&nbsp;c&ograve;n cho c&aacute;c b&agrave;i test benchmark 3D Mark v&agrave; PC Mark cao, rất ấn tượng. Chiếc laptop đ&atilde; ho&agrave;n th&agrave;nh tốt c&aacute;c b&agrave;i test 3D Mark v&agrave; PC Mark với điểm số ấn tượng</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-1-1024x576_49fe37dbf416427b80f7a4dfadb6714e_1024x1024.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-2-1024x576_fb7610e14f2041018c3376449654620c_1024x1024.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-3-1024x576_9c1aea7264f74333813f0f908b06c262_1024x1024.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/screenshot-66-1024x576_cf41691de3a145d89a79237bd544251d_1024x1024.png\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>CỔNG KẾT NỐI ĐẦY ĐỦ</strong></h2>\r\n\r\n<h2>Thiết kế c&aacute;c cổng kết nối ở giữa 2 khe tản nhiệt nhằm gi&uacute;p người d&ugrave;ng c&oacute; được kh&ocirc;ng gian thao t&aacute;c tốt nhất m&agrave; kh&ocirc;ng bị vướng d&acirc;y, c&aacute;c cổng cắm như cổng mạng&nbsp;LAN, cổng HDMI 2.0b, cổng USB-C 3.2 Gen 2 (hỗ trợ xuất h&igrave;nh Display Port, sạc chuẩn PD), cổng USB-A 3.2 Gen 1 v&agrave; cổng sạc.&nbsp;Cạnh phải kh&ocirc;ng c&oacute; bất cứ cổng kết nối n&agrave;o cho n&ecirc;n cũng&nbsp;tạo sự&nbsp;thuận tiện cho việc r&ecirc; chuột khi chơi game v&agrave;&nbsp;l&agrave;m việc.<br />\r\n<br />\r\n<strong>KẾT</strong></h2>\r\n\r\n<p>Nh&igrave;n chung, ASUS ROG Strix G15 G513 l&agrave; một chiếc laptop gaming rất tiềm năng của ASUS trong thế giới gaming năm nay với&nbsp;những thay đổi v&agrave; cải tiến của ASUS&nbsp;d&ograve;ng Strix G n&agrave;y&nbsp;c&oacute; thể coi như lời th&aacute;ch thức &quot;ngầm&quot; của đội đỏ với đội xanh. Hiện&nbsp;<strong>ASUS ROG Strix G15 G513IH-HN015W&nbsp;</strong>đang được kinh doanh tại Hangchinhhieu.vn với mức gi&aacute;&nbsp;l&agrave;&nbsp;<strong>23,990,000 triệu đồng,&nbsp;<a href=\"https://hangchinhhieu.vn/products/laptop-asus-rog-strix-g15-g513ih-hn015w-r7-4800h\" target=\"_blank\">tại đ&acirc;y</a></strong></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/hoang_mai.gif\" /></p>\r\n', 7, 555, 15, 21, 23990000, 18952100, '2022-11-13 10:13:50', '1', '2022-11-13 10:13:50', '1', 1, 1, 'G513IH-HN015W'),
(61, 49, 'RAM PC CORSAIR DOMINATOR PLATINUM RGB 32GB DDR4 2x16GB 3200MHz CMT32GX4M2E3200C16', 'ram-pc-corsair-dominator-platinum-rgb-32gb-ddr4-2x16gb-3200mhz-cmt32gx4m2e3200c16', 'a9d64d631f8320350440e5f4ccc7a29e.webp', '7350a90e2581e35993e13999e0373cfa.webp#e758ea936d5851eb13a68cbd1f6f1bc8.jpg#08c1cdca791b2b69a5da1d8b6a7c2d42.webp', 'DOMINATOR PLATINUM RGB có sẵn ở tốc độ hiệu suất cao lên đến 4.800MHz - trở thành bộ nhớ sản xuất được làm mát bằng không khí nhanh nhất thế giới - với khoảng không ép xung rộng rãi để đẩy hiệu suất lên cao hơn nữa.', '<h2>KỶ NIỆM 25 NĂM X&Acirc;Y DỰNG BỘ NHỚ LỚP THẾ GIỚI</h2>\r\n\r\n<p>CORSAIR DOMINATOR từ l&acirc;u đ&atilde; trở th&agrave;nh gương mặt của bộ nhớ cao cấp, hiệu suất cao.&nbsp;Di sản v&agrave; kinh nghiệm đ&oacute; đ&atilde; dẫn đến điều n&agrave;y: bộ nhớ DDR4 ti&ecirc;n tiến nhất m&agrave; ch&uacute;ng t&ocirc;i từng tạo ra.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/2_dda4204cd91a401d838a4eea76fa835d_1024x1024.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>4800&nbsp;MHZ</h2>\r\n\r\n<p>DOMINATOR PLATINUM RGB c&oacute; sẵn ở tốc độ hiệu suất cao l&ecirc;n đến 4.800MHz - trở th&agrave;nh bộ nhớ sản xuất được l&agrave;m m&aacute;t bằng kh&ocirc;ng kh&iacute; nhanh nhất thế giới - với khoảng kh&ocirc;ng &eacute;p xung rộng r&atilde;i để đẩy hiệu suất l&ecirc;n cao hơn nữa.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/dominator-platinum-rgb-ddr4-08_b502052fab664787b7df1a86e972a157_1024x1024.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i bắt đầu với&nbsp;PCB hiệu suất cao 10 lớp t&ugrave;y chỉnh&nbsp;đảm bảo chất lượng t&iacute;n hiệu v&agrave; sự ổn định cho khả năng &eacute;p xung vượt trội.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/tai_xuong__2__df1c9629046a4f67abd82f2e18cf3b71_1024x1024.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c&nbsp;chip nhớ được&nbsp;ph&acirc;n loại thủ c&ocirc;ng,&nbsp;s&agrave;ng lọc chặt chẽ&nbsp;đảm bảo hiệu suất tần số cao v&agrave; thời gian phản hồi chặt chẽ, với khoảng trống để &eacute;p xung.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/tai_xuong__3__9e45fe9c0ce24902af46d5d62716012d_1024x1024.png\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ&nbsp;l&agrave;m m&aacute;t&nbsp;Dual-Path DHX đ&atilde; được cấp bằng s&aacute;ng chế&nbsp;của ch&uacute;ng t&ocirc;i&nbsp;l&agrave;m&nbsp;m&aacute;t bộ nhớ th&ocirc;ng qua cả PCB v&agrave; vỏ ngo&agrave;i - cho ph&eacute;p m&ocirc;-đun lu&ocirc;n m&aacute;t mẻ ngay cả khi chịu &aacute;p lực cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/tai_xuong_df9c2c30915c488aac8651d85accaa03_1024x1024.png\" /></p>\r\n\r\n<p>Cuối c&ugrave;ng, 12 đ&egrave;n LED CAPELLIX RGB si&ecirc;u s&aacute;ng c&oacute; thể định địa chỉ ri&ecirc;ng lẻ nằm tr&ecirc;n c&ugrave;ng của m&ocirc;-đun, chiếu s&aacute;ng hơn, l&acirc;u hơn v&agrave; ti&ecirc;u thụ &iacute;t điện năng hơn c&aacute;c đ&egrave;n LED th&ocirc;ng thường.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/tai_xuong__1__ca96e3b0061c434e85a477dbfc34ba94_1024x1024.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>ICUE</h2>\r\n\r\n<p>Chiếu s&aacute;ng hệ thống của bạn với h&agrave;ng chục cấu h&igrave;nh &aacute;nh s&aacute;ng tuyệt đẹp được thiết lập trước hoặc tạo của ri&ecirc;ng bạn với khả năng t&ugrave;y chỉnh gần như v&ocirc; hạn.&nbsp;Đồng bộ h&oacute;a &aacute;nh s&aacute;ng của bạn tr&ecirc;n tất cả c&aacute;c sản phẩm tương th&iacute;ch với iCUE của bạn, đồng thời cập nhật th&ocirc;ng tin về nhiệt độ v&agrave; tần số đọc trong thời gian thực bằng phần mềm CORSAIR iCUE mạnh mẽ.</p>\r\n\r\n<p><img alt=\"44930_Press_06-04-18_05.png (1000×600)\" src=\"https://www.hanoicomputer.vn/media/lib/44930_Press_06-04-18_05.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>HỖ TRỢ&nbsp;INTEL&nbsp;&nbsp;XMP 2.0</h2>\r\n\r\n<p>C&agrave;i đặt một c&agrave;i đặt đơn giản.</p>\r\n\r\n<h2>TƯƠNG TH&Iacute;CH RỘNG</h2>\r\n\r\n<p>Được tối ưu h&oacute;a cho bo mạch chủ Intel&reg; v&agrave; AMD DDR4 mới nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000233206/file/1_936274f5253c4d72a202698e1dde744b_1024x1024.jpg\" /></p>\r\n', 7, 1, 0, 5, 6890000, 6545500, '2022-11-13 10:15:55', '1', '2022-11-19 00:04:35', '1', 1, 1, 'CMT32GX4M2E3200C16 '),
(62, 53, 'VỚI ONEDRIVE, BẠN CÓ THỂ TRUY CẬP Ở CHẾ ĐỘ NGOẠI TUYẾN?', 'voi-onedrive-ban-co-the-truy-cap-o-che-do-ngoai-tuyen', 'd00c48a21fa20b28ad6655e69418b7da.webp', '531c7d0f6ecd1b0ef0897488ffc625be.webp#98082127c3eee1e5b16c3272b36b1279.webp#0a03ccb628d1c8aaa6e36c9533d64afa.webp#b5183cd57dcd5de0c65fbf0c8cf47f83.webp#0971b53107beb9af73779393d59fa714.webp#d184f85a6fff07d5468bf1ae22e6d31f.webp#047831139714a378434cbddc549', 'sadasdas', '<h2>Switches</h2>\r\n\r\n<p>A switch has the markup of a custom checkbox but uses the&nbsp;<code>.form-switch</code>&nbsp;class to render a toggle switch. Consider using&nbsp;<code>role=&quot;switch&quot;</code>&nbsp;to more accurately convey the nature of the control to assistive technologies that support this role. In older assistive technologies, it will simply be announced as a regular checkbox as a fallback. Switches also support the&nbsp;<code>disabled</code>&nbsp;attribute.</p>\r\n', 7, 1, 0, 50, 100000, 50000, '2022-11-18 21:43:23', '1', '2022-11-18 21:43:23', '1', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

DROP TABLE IF EXISTS `db_province`;
CREATE TABLE IF NOT EXISTS `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

DROP TABLE IF EXISTS `db_slider`;
CREATE TABLE IF NOT EXISTS `db_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(31, '1', '1', 'slide_1_img.webp', '2022-11-09 21:27:00', '1', '2022-11-09 21:27:00', '1', 1, 1),
(32, '2', '2', 'slide_5_img.webp', '2022-11-09 21:27:05', '1', '2022-11-09 21:27:05', '1', 1, 1),
(33, '3', '3', 'slide_3_img.webp', '2022-11-09 21:27:13', '1', '2022-11-09 21:27:13', '1', 1, 1),
(34, '4', '4', 'slide_4_img.webp', '2022-11-09 21:27:22', '1', '2022-11-09 21:27:22', '1', 1, 1),
(35, '5', '5', 'slide_7_img.webp', '2022-11-09 21:27:29', '1', '2022-11-09 21:27:29', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

DROP TABLE IF EXISTS `db_user`;
CREATE TABLE IF NOT EXISTS `db_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'HCM', 'user-group.png', '2019-04-23 09:16:16', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

DROP TABLE IF EXISTS `db_usergroup`;
CREATE TABLE IF NOT EXISTS `db_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
