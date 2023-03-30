-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 01, 2022 lúc 05:40 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgiaymvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Giày Boot Nữ', 'giay-boot-nu', 2, 3, '0', '2019-05-22 16:15:39', '4', '2022-06-01 09:03:16', '1', 1, 1),
(2, 'SanDal Nam', 'sandal-nam', 2, 4, '0', '2019-05-22 16:13:24', '4', '2022-06-01 09:00:34', '1', 1, 1),
(3, 'Giày cho Nữ', 'giay-cho-nu', 1, 0, '0', '2019-05-22 16:09:41', '4', '2022-06-01 08:54:24', '1', 1, 1),
(4, 'Giày cho Nam', 'giay-cho-nam', 1, 0, '1', '2019-05-23 21:33:25', '1', '2022-06-01 08:54:08', '1', 1, 1),
(6, 'Giày Slip On', 'giay-slip-on', 2, 4, '1', '2019-06-03 21:38:28', '1', '2022-06-01 08:57:45', '1', 1, 1),
(9, 'Giày Tây', 'giay-tay', 2, 4, '0', '2019-06-03 21:40:38', '1', '2022-06-01 08:57:00', '1', 1, 1),
(10, 'Phụ Kiện', 'phu-kien', 1, 0, '2', '2019-06-03 22:19:53', '1', '2022-04-28 16:18:57', '1', 1, 1),
(11, 'Giày thể thao nam', 'giay-the-thao-nam', 2, 4, '1', '2019-06-03 22:37:59', '1', '2022-06-01 08:56:02', '1', 1, 1),
(14, 'SanDal nữ', 'sandal-nu', 2, 3, '1', '2022-04-01 15:23:43', '1', '2022-06-01 09:03:01', '1', 1, 1),
(15, 'Giày cao gót', 'giay-cao-got', 2, 3, '2', '2022-04-01 15:24:34', '1', '2022-06-01 09:02:26', '1', 1, 1),
(16, 'Giày thể thao Nữ', 'giay-the-thao-nu', 2, 3, '3', '2022-04-01 15:24:57', '1', '2022-06-01 09:02:16', '1', 1, 1),
(17, 'Dây Giày', 'day-giay', 2, 10, '0', '2022-04-01 15:28:05', '1', '2022-06-01 09:03:44', '1', 1, 1),
(18, 'Vớ Giày', 'vo-giay', 2, 10, '1', '2022-04-01 15:28:27', '1', '2022-06-01 09:03:30', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'n2ftechnology@gmail.com', 'n2ftechnology@gmail.com', 'n2ftechnology@gmail.com', '30000', 'Đồ chơi thông minh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(12, 'aa', '0394073758', 'levanca@gmail.com', 'vvvv', '2022/6/1', 0, 1, 'levanc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(11, 'Giày mang cũ gửi trả', 'giay-mang-cu-gui-tra', '', '<p><a href=\"http://snkrvn.com/tag/adidas\">adidas</a>&nbsp;Stan Smith &ldquo;Made To Be Remade&rdquo; l&agrave; đ&ocirc;i sneakers được ph&aacute;t h&agrave;nh trong dự &aacute;n nhằm gi&uacute;p adidas đẩy mạnh việc bảo vệ m&ocirc;i trường. adidas ra mắt chiến dịch n&agrave;y bằng một m&atilde; QR Code gắn tr&ecirc;n lưỡi gi&agrave;y, sau đ&oacute; bạn đăng k&yacute; member th&agrave;nh vi&ecirc;n th&ocirc;ng qua apps (ứng dụng) của adidas. Bạn mang gi&agrave;y một thời gian nếu kh&ocirc;ng x&agrave;i được nữa th&igrave; h&atilde;y gửi trả lại theo địa chỉ trong apps đ&atilde; được th&ocirc;ng b&aacute;o trước đ&oacute;, adidas sẽ gửi lại cho bạn một đ&ocirc;i sneakers ho&agrave;n to&agrave;n mới.</p>\r\n\r\n<p><img alt=\"adidas Stan Smith Made To Be Remade\" src=\"https://snkrvn.com/wp-content/uploads/2021/10/adidas-Stan-Smith-Made-to-be-remade-4.jpg\" style=\"height:1140px; width:1140px\" /></p>\r\n\r\n<p>M&atilde; QR Code tr&ecirc;n đ&ocirc;i&nbsp;<a href=\"https://snkrvn.com/tag/adidas-stan-smith/\">adidas Stan Smith</a>&nbsp;sẽ link đến apps của adidas, bạn c&oacute; thể đăng k&yacute; th&agrave;nh vi&ecirc;n &amp; chương tr&igrave;nh Made To Be Remade</p>\r\n\r\n<p>Để &yacute; thấy rằng đ&ocirc;i adidas&nbsp;<a href=\"https://snkrvn.com/?s=Stan+Smith\">Stan Smith</a>&nbsp;lần n&agrave;y c&oacute; mức gi&aacute; l&ecirc;n đến 180 USD, c&oacute; thể về tay khoảng 4 triệu VNĐ. C&ugrave;ng với đ&oacute;, những vật liệu tr&ecirc;n đ&ocirc;i Stan Smith lần n&agrave;y được sử dụng đều l&agrave; nhựa t&aacute;i chế. Kh&aacute; đẹp mắt &amp; thiết kế tinh gọn vẫn l&agrave; tinh thần của Stan Smith. Upper được dệt knit. phần g&oacute;t gi&agrave;y bằng nhựa trong t&aacute;i chế. B&ecirc;n cạnh đ&oacute;, chỉ kh&acirc;u phần th&acirc;n gi&agrave;y &amp;&nbsp; đế gi&agrave;y theo h&igrave;nh xương c&aacute;, kh&aacute;c hẳn với vậy may ch&igrave;m dọc th&acirc;n như những sản phẩm trước đ&acirc;y.</p>\r\n\r\n<p><img alt=\"adidas Stan Smith Made to be remade\" src=\"https://snkrvn.com/wp-content/uploads/2021/10/adidas-Stan-Smith-Made-to-be-remade-3.jpg\" style=\"height:800px; width:1140px\" /></p>\r\n\r\n<p>M&igrave;nh th&iacute;ch tổng thể kh&aacute; đơn giản nhưng đẹp mắt của đ&ocirc;i&nbsp;<a href=\"https://snkrvn.com/tag/adidas-stan-smith/\">adidas Stan Smith</a>&nbsp;MTBR lần n&agrave;y.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; tổng quan đ&ocirc;i gi&agrave;y tr&ocirc;ng rất đẹp &amp; đ&acirc;y cũng được xem l&agrave; dự &aacute;n kh&aacute; th&uacute; vị. Tuy nhi&ecirc;n, dự &aacute;n n&agrave;y kh&ocirc;ng biết đ&atilde; triển khai ở thị trường lớn hay to&agrave;n cầu v&igrave; hạn chế về việc logistics kh&ocirc;ng phải l&agrave; dễ d&agrave;ng tr&ecirc;n khắp thế giới. Nhưng nếu th&agrave;nh c&ocirc;ng &amp; xử l&yacute; được những hạn chế, chắc chắn rằng dự &aacute;n n&agrave;y sẽ mang lại một lượng kh&aacute;ch h&agrave;ng trung th&agrave;nh cho adidas n&oacute;i chung &amp; đ&ocirc;i sneaker Stan Smith n&oacute;i ri&ecirc;ng.</p>\r\n\r\n<p>Bạn sẵn s&agrave;ng bỏ ra 180 USD v&agrave; sau khi mang gi&agrave;y gửi trả cho adidas &amp; nhận về một đ&ocirc;i sneakers ho&agrave;n to&agrave;n mới chứ? Comment ngay &yacute; kiến của bạn c&ugrave;ng&nbsp;<a href=\"http://facebook.com/snkrvn\">@SNKRVN</a>&nbsp;nh&eacute;. Cũng đừng qu&ecirc;n theo d&otilde;i @SNKRVN để cập nhật những tin tức mới nhất nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://snkrvn.com/wp-content/uploads/2021/10/adidas-Stan-Smith-Made-to-be-remade-5.jpg\" style=\"height:1140px; width:1140px\" /><img alt=\"adidas Stan Smith Made to be remade\" src=\"https://snkrvn.com/wp-content/uploads/2021/10/adidas-Stan-Smith-Made-to-be-remade-2.jpg\" style=\"height:800px; width:1140px\" /></p>\r\n', 'adidas-Stan-Smith-Made-to-be-remade-960x640.jpg', '2022-06-01 09:41:46', '1', '2022-06-01 09:41:46', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(82, 'Lê Văn C', 'levanc', '25f9e794323b453885f5181f1b624d0b', '', '0394073645', 'minhnguyenhoang1809@gmail.com', '2022-06-01 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
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
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(13, 'CAOTHANG', 150000, 200, 0, '2022-07-26', 100000, 'Giảm 150k', '2022-05-03', 1, 1, 1),
(21, 'TESTGG', 500000, 1, 1, '2022-05-27', 10000000, 'giảm giá test', '2022-05-01', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
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
(618, 'Huyện Ia H\ Drai', 'Huyện', 62),
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
(645, 'Huyện Ea H\leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\Đrắk', 'Huyện', 66),
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

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
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
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(91, 'QqGo4hOV', 82, '2022-06-01 13:05:09', 'Lê Văn C', '0394073645', 360000, 30000, 100000, 79, 778, '123 Trần Hưng Đạo', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(123, 91, 99, 2, 215000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'DIGIWORLD Chuyên Cung Cấp Giày', 'DIGIWORLD', 'bangiay', '2019-05-22 16:08:31', 4, '2022-06-01 08:48:59', 1, 1, 1),
(2, 'Kho Giày Gò Vấp Hà Nội', 'GOVAPPRODUCER', 'bangiay', '2019-06-12 23:30:37', 1, '2022-06-01 08:48:44', 1, 1, 1),
(3, 'Xưởng Giày TGDD miền Trung', 'TGDDCODE', 'bangiay', '2019-05-22 16:06:31', 4, '2022-06-01 08:49:13', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
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
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(96, 17, 'Dây Giày Thể Thao', 'day-giay-the-thao', 'ebcbb26e844262355255df651eda1772.jpg', '68289a0345f2db5cef433411f89f82fa.jpg#16774033995ff71839113fd1a5629891.jpg', 'Dây Giày Thể Thao Bản Tròn MWC- 9007', '<p><img alt=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" src=\"https://mwc.com.vn/FolderUpload/7.4.22/9014/9015/z3321542915739_a2834b839f88c58acfc40a8165b953d4.jpg\" style=\"height:2048px; width:2048px\" title=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" /><img alt=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" src=\"https://mwc.com.vn/FolderUpload/7.4.22/9014/9015/z3321542916015_36fa9ff35b042c0682c663f8035fa6a1.jpg\" style=\"height:2048px; width:2048px\" title=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" /><img alt=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" src=\"https://mwc.com.vn/FolderUpload/7.4.22/9014/9015/z3321542918657_c260bc726f2590d40ab9d80c220598a2.jpg\" style=\"height:2048px; width:2048px\" title=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" /><img alt=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" src=\"https://mwc.com.vn/FolderUpload/7.4.22/9014/9015/z3321542918981_2b022847173250ab99b34d34d51264df.jpg\" style=\"height:2048px; width:2048px\" title=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" /><img alt=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" src=\"https://mwc.com.vn/FolderUpload/7.4.22/9014/9015/z3321542919296_81d10574dc388f2967aef49c08216899.jpg\" style=\"height:2048px; width:2048px\" title=\"Dây Giày Thể Thao Bản Tròn MWC- 9007\" /><br />\r\n<img alt=\"Dây giày thể thao bản tròn MWC- 9007\" src=\"https://mwc.com.vn/FolderUpload/41504/z3215035913919_3d1e0a2a97c7e0208089d32f52f14c3a.jpg\" style=\"height:2040px; width:2040px\" title=\"Dây giày thể thao bản tròn MWC- 9007\" /></p>\r\n', 2, 100, 0, 0, 55000, 55000, '2022-06-01 09:25:20', '1', '2022-06-01 09:25:20', '1', 1, 1),
(98, 1, 'Giày Oxford MWC NUOX', 'giay-oxford-mwc-nuox', 'a9acc56dd76c36d84b9fd0400f940748.jpg', '311ab1a3be838b82059e1ae256835014.jpg#26dbf22c2d54cf02e21c07b58560ada6.jpg#e24ca4b78de7fac3dcff1666943410e2.jpg', 'Giày Oxford MWC NUOX- 9608 với thiết phối khóa xinh xắn giúp bạn dễ dàng phối hợp với nhiều trang phục để có một phong cách thời trang thật sành điệu và nữ tính. Giày được làm từ chất liệu da cao cấp, đường chỉ may chắc chắn giúp sản phẩm có độ bền tối ưu và nâng niu từng bước chân của bạn.', '<p>Đặc điểm sản phẩm:<br />\r\n- Chất liệu da cao cấp<br />\r\n- Mặt l&oacute;t in t&ecirc;n thương hiệu.<br />\r\n- Form gi&agrave;y may đ&uacute;ng ti&ecirc;u chuẩn đem lại sự thoải m&aacute;i khi mang.<br />\r\n- Đường may tỉ mỉ v&agrave; tinh xảo gi&uacute;p sản phẩm lu&ocirc;n bền đẹp theo thời gian.<br />\r\n- M&agrave;u sắc trang nh&atilde;, dễ phối c&ugrave;ng nhiều kiểu trang phục kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020063163_28bb55d8108b396a033b6f7a97edeacb.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020061775_e89561cc8fe57a4da894b291c2e124fe.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020073816_a561dcf3056b844e54e2b902cc7f07d3.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020088356_f8ee9f4e6d25efb4813637f11fa8781a.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020065950_8c6640a9a6321362cd897b800ba54c00.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020079875_62d0ea7a697ff8ba993efc31b20e635d.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020091133_0b0eddc1a134add8d33370b6385259dd.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020104746_a475f9ef1dab92057a07076e1443c535.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020079081_d730b0bbb30901563944ea6a4d9eba3b.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /><img alt=\"Giày Oxford MWC NUOX- 9608\" src=\"https://mwc.com.vn/FolderUpload/24.5.22/067001/z3441020084827_d026af82e96de2d84f397d74a19ed39f.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Oxford MWC NUOX- 9608\" /></p>\r\n', 1, 100, 0, 10, 200000, 180000, '2022-06-01 09:28:09', '1', '2022-06-01 09:28:09', '1', 1, 1),
(99, 2, 'Giày Sandal Nam MWC', 'giay-sandal-nam-mwc', '8eef7dfcd05d1163d6c8bd47608987e7.jpg', '487401d4bae27865b9dc19f2f1709982.jpg#b8b3b5541e55522185151457490e0d8a.jpg#4ab1b2549685dae50d560bad2bee4757.jpg', 'Sandal nam MWC NASD- 7062 với form quai ngang lót dán, dễ dàng tùy chỉnh giày theo size chân, cực cool ngầu nhưng không kém phần tiện lợi.\r\nSản phẩm dành riêng cho giới Streetwear, với cách phối màu siêu COOL NGẦU cho các bạn cá tính, năng động.', '<p>Gi&agrave;y sandal nam MWC NASD- 7062</p>\r\n\r\n<ul>\r\n	<li>Kiểu d&aacute;ng:&nbsp;Gi&agrave;y Sandal&nbsp;</li>\r\n	<li>Độ cao đế:&nbsp;2cm</li>\r\n	<li>M&agrave;u sắc: Đen / X&aacute;m</li>\r\n	<li>K&iacute;ch cỡ: 39 - 40 - 41 - 42 - 43&nbsp;</li>\r\n</ul>\r\n\r\n<p>M&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<ul>\r\n	<li>Sandal&nbsp;nam MWC NASD- 7062 với form quai ngang l&oacute;t d&aacute;n, dễ d&agrave;ng t&ugrave;y chỉnh gi&agrave;y theo size ch&acirc;n, cực cool ngầu nhưng kh&ocirc;ng k&eacute;m phần ti&ecirc;̣n lợi.</li>\r\n	<li>Sản phẩm d&agrave;nh ri&ecirc;ng cho giới Streetwear, với c&aacute;ch phối m&agrave;u si&ecirc;u COOL NGẦU cho c&aacute;c bạn c&aacute; t&iacute;nh, năng động.</li>\r\n	<li>Được sản xuất theo c&ocirc;ng nghệ mới</li>\r\n	<li>Kiểu d&aacute;ng thời trang, năng động , th&iacute;ch hợp cho nhiều loại trang phục</li>\r\n	<li><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063741992_9060759dcdc4db974b55f13310f73efb.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063742735_0fa457c4172eda4c7ed6b75c9d8b9035.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063743491_1aaaeccb1704ed515e3cba245a63451c.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063744066_99d690aabf544a457e4ea9d73666f605.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063744611_1ceb823f69c9049cd32351508814fd49.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063745170_768f565995bba413383a0183efdabf62.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063745733_e86b4f5d86461e526985d52480c0495b.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063746640_90c4c6f537d65b046c22d5ee1a007eb3.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063747203_1cddef9425fe021868bc241e01a536e5.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063748566_c38f3b99a7994297c2c06e6c8cf87e5f.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063748929_4fb3e1f6967be0a3cd05c4d8b8d664da.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /><img alt=\"Giày sandal nam MWC NASD- 7062\" src=\"https://mwc.com.vn/FolderUpload/15.5/7062/z3415063749556_b7f35d56fca4d811c93a13697552fd3a.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày sandal nam MWC NASD- 7062\" /></li>\r\n</ul>\r\n', 1, 100, 2, 10, 350000, 215000, '2022-06-01 09:30:07', '1', '2022-06-01 09:30:07', '1', 1, 1),
(100, 9, 'Giày Mọi Nam MWC', 'giay-moi-nam-mwc', 'e5083a2f0dc49a3e394692c07a7c1e76.jpg', '35f025ef6e62a99cf0a679a6991d2e25.jpg#ddd5526da2044f27c793d7daaa8e3da4.jpg#149d3e8263d6ee4d186475fecf1ab11d.jpg', 'Điểm nổi bật:  Sản phẩm hoàn hảo từ thiết kế, kiểu dáng cho tới chất liệu. Chất da nguyên miếng nhập khẩu tạo nên vẻ bóng lì rất hút mắt và sang trọng khi đặt cạnh những chất da khác. Từng đường kim mũi chỉ trên thân giày đều đặn, chắc chắn, cho độ bền ở mức cao nhất. Đế giày kết hợp cao su chóng trơn trượt và đế phíp đẳng cấp đẹp mắt. ', '<ul>\r\n	<li>\r\n	<p>Gi&agrave;y mọi nam MWC NAMO- 6624<br />\r\n	<br />\r\n	Chất liệu: Da c&aacute; sấu</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng:&nbsp;<a href=\"http://www.giaytot.com/giay-luoi-nam.html\">Gi&agrave;y lười</a></p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u sắc: Đen, N&acirc;u</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>- Điểm nổi bật:&nbsp; Sản phẩm ho&agrave;n hảo từ thiết kế, kiểu d&aacute;ng cho tới chất liệu. Chất da nguy&ecirc;n miếng nhập khẩu tạo n&ecirc;n vẻ b&oacute;ng l&igrave; rất h&uacute;t mắt v&agrave; sang trọng khi đặt cạnh những chất da kh&aacute;c. Từng đường kim mũi chỉ tr&ecirc;n th&acirc;n gi&agrave;y đều đặn, chắc chắn, cho độ bền ở mức cao nhất. Đế gi&agrave;y kết hợp cao su ch&oacute;ng trơn trượt v&agrave; đế ph&iacute;p đẳng cấp đẹp mắt.&nbsp;</p>\r\n\r\n<p>- Điểm kh&aacute;c biệt:&nbsp;Sản phẩm&nbsp;Gi&agrave;y mọi nam MWC NAMO- 6624&nbsp;mang vẻ đẹp đầy quyền uy m&agrave; vẫn thời thượng, hiện đại. Khi sử dụng, bạn sẽ cực kỳ tự tin với một đ&ocirc;i gi&agrave;y &ecirc;m ch&acirc;n v&agrave; kh&ocirc;ng g&acirc;y bức b&iacute; kh&oacute; chịu.&nbsp;</p>\r\n\r\n<p>- Mix đồ:&nbsp;Thiết kế n&agrave;y rất &quot;dễ t&iacute;nh&quot; khi phối đồ. Bạn c&oacute; thể mix gi&agrave;y c&ugrave;ng trang phục trẻ trung như sơ mi d&aacute;ng &ocirc;m v&agrave; quần chinos c&oacute; độ d&agrave;i tr&ecirc;n mắt c&aacute; ch&acirc;n. Những bộ suit may đo lịch l&atilde;m cũng sẽ th&ecirc;m phần hiện đại khi được phối c&ugrave;ng sản phẩm n&agrave;y.</p>\r\n\r\n<p><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938252472_68de0bdbffd65a43f3cdf3148e2af559.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938257473_2430829a96433cfe5cebabe0ed8517fa.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938260264_a11b602ee0dca914976742ae0e2436a5.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2515045800372_aff66835946fa6ffca44b671e37438ab.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938860730_591c5ff3a500ec4de233ab8315ff6319.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938863187_886038a6d35d660f2cbabd0240e5c2ec.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938873390_1b8e5c3f81a6b9e255b06645191d6ad2.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2515045834841_debb4e734ec9231eea346be2cb980814.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2543938876511_a3db77f3b8a1aafdf95459a47a2a129f.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /><img alt=\"Giày mọi nam MWC NAMO- 6624\" src=\"https://mwc.com.vn/FolderUpload/6624-/z2515045778651_633d0712c66dc27b17f9a4e859e5018b.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày mọi nam MWC NAMO- 6624\" /></p>\r\n', 2, 100, 0, 10, 400000, 360000, '2022-06-01 09:31:59', '1', '2022-06-01 09:31:59', '1', 1, 1),
(101, 18, 'Vớ Nam Nữ MWC', 'vo-nam-nu-mwc', '94f15080ce0fea5f24ab9a9082693b8f.jpg', 'a8f9bb4a41c957e6a36bb827339d4e59.jpg#b6a2114561d75d6ca483bffe787a0096.jpg#cc850e82a0c465b7ff1fa622f476d93d.jpg', 'Vớ Nam Nữ MWC - AT106', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://mwc.com.vn/FolderUpload/at_14/at_16/at_106/55483150_990732991116415_3636028117753004032_n.jpg\" style=\"height:1080px; width:1080px\" /><img alt=\"\" src=\"https://mwc.com.vn/FolderUpload/at_14/at_16/at_106/55551339_333593754172371_8774774178940190720_n.jpg\" style=\"height:1080px; width:1080px\" /><img alt=\"\" src=\"https://mwc.com.vn/FolderUpload/at_14/at_16/at_106/55564404_2296734330366269_4597500291204513792_n.jpg\" style=\"height:1080px; width:1080px\" /><img alt=\"\" src=\"https://mwc.com.vn/FolderUpload/at_14/at_16/at_106/55604064_408189186636178_5673227279153496064_n.jpg\" style=\"height:1080px; width:1080px\" /><img alt=\"\" src=\"https://mwc.com.vn/FolderUpload/at_14/at_16/at_106/55611021_280438732874103_7405349446025740288_n.jpg\" style=\"height:1080px; width:1080px\" /></p>\r\n', 1, 100, 0, 10, 30000, 27000, '2022-06-01 09:33:51', '1', '2022-06-01 09:33:51', '1', 1, 1),
(102, 14, 'Giày Sandal Nữ', 'giay-sandal-nu', '243f00232e59cf9eb7ca388300e11de4.jpg', '4d58d67e6ada8189e6941bde58e51e0a.jpg#c9859769d12891a5ab7bfe97f47df004.jpg#a4e71315bdfbe6a06ca02b1ce8801d88.jpg', 'Giày sandal nữ MWC NUSD- 2887 sử dụng chất liệu da lộn bền đẹp, lớp lót giày mềm mại cực kỳ êm chân. Đường may tỉ mỉ, form giày chuẩn đem lại cảm giác thoải mái cho bạn gái khi mang.', '<p>Gi&agrave;y sandal nữ MWC NUSD- 2887&nbsp;sử dụng chất liệu da lộn bền đẹp, lớp l&oacute;t gi&agrave;y mềm mại cực kỳ &ecirc;m ch&acirc;n. Đường may tỉ mỉ, form gi&agrave;y chuẩn đem lại cảm gi&aacute;c thoải m&aacute;i cho bạn g&aacute;i khi mang.<br />\r\n- B&ecirc;n cạnh đ&oacute;, sản phẩm<em>&nbsp;Gi&agrave;y sandal nữ MWC NUSD- 2887&nbsp;</em>c&oacute; kiểu d&aacute;ng hiện đại, thời trang gi&uacute;p t&ocirc;n vinh đ&ocirc;i ch&acirc;n của ph&aacute;i nữ.<br />\r\n- C&oacute; thể phối hợp với nhiều phong c&aacute;ch, ph&ugrave; hợp với nhiều ho&agrave;n cảnh như đi l&agrave;m, đi học, đi chơi, ....&nbsp;<br />\r\n<img alt=\"Giày sandal nữ MWC NUSD- 2887\" src=\"https://mwc.com.vn/FolderUpload/2887/z2926694879460_581c61091f0eca7b544a46c16fb5232b.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày sandal nữ MWC NUSD- 2887\" /><img alt=\"Giày sandal nữ MWC NUSD- 2887\" src=\"https://mwc.com.vn/FolderUpload/2887/z2926694880795_713a387833f9a076c3b563b36e9ab533.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày sandal nữ MWC NUSD- 2887\" /><img alt=\"Giày sandal nữ MWC NUSD- 2887\" src=\"https://mwc.com.vn/FolderUpload/2887/z2926694883522_ff2e048be406db395c12efd78bab5fbb.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày sandal nữ MWC NUSD- 2887\" /><img alt=\"Giày sandal nữ MWC NUSD- 2887\" src=\"https://mwc.com.vn/FolderUpload/2887/z2926694889697_f9f6670279872b849ff0d58f9a80e503.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày sandal nữ MWC NUSD- 2887\" /><img alt=\"Giày sandal nữ MWC NUSD- 2887\" src=\"https://mwc.com.vn/FolderUpload/2887/z2926694889781_5d3a7ce018314116b22a3efca7a3560c.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày sandal nữ MWC NUSD- 2887\" /></p>\r\n', 3, 100, 0, 0, 200000, 200000, '2022-06-01 09:35:09', '1', '2022-06-01 09:35:09', '1', 1, 1),
(103, 6, 'Giày Slipon Nam', 'giay-slipon-nam', '1caea7d3c468f88fefad623ab72bb5b4.jpg', 'c8ad9edfaf28b963a6944299b8b14f8c.jpg#b8839351666464f0620a48e1eee59a0c.jpg#fd591325644033b2d2aebd8ba69a0790.jpg', 'Giày Slipon nam MWC NASL- 6064 mang đến cho người mang phong cách năng động, trẻ trung. Trong những năm gần đây, giày slipon trở thành một trong những item không thể thiếu của giới trẻ bở sự thoải mái và tiện dụng của nó', '<p>Gi&agrave;y Slipon nam MWC NASL- 6064&nbsp;mang đến cho người mang phong c&aacute;ch năng động, trẻ trung. Trong những năm gần đ&acirc;y, gi&agrave;y slipon trở th&agrave;nh một trong những item kh&ocirc;ng thể thiếu của giới trẻ bở sự thoải m&aacute;i v&agrave; tiện dụng của n&oacute;. Với những ưu điểm tr&ecirc;n gi&agrave;y slipon kh&ocirc;ng chỉ gi&uacute;p bạn thể hiện phong c&aacute;ch thời trang ri&ecirc;ng biệt m&agrave; c&ograve;n dễ d&agrave;ng ph&ocirc;́i c&ugrave;ng nhiều trang phục như: quần jean, &aacute;o thun hay phụ kiện kh&aacute;c để trở n&ecirc;n thật cá tính và thời trang. Ngo&agrave;i ra&nbsp;<em>gi&agrave;y Slipon nam MWC NASL- 6064</em>&nbsp;c&ograve;n l&agrave; người bạn đồng h&agrave;nh si&ecirc;u bền bỉ cho bạn trong c&aacute;c hoạt động hằng ng&agrave;y.</p>\r\n\r\n<h3>Đặc điểm sản phẩm:</h3>\r\n\r\n<p>- Đường may tỉ mỉ, chắc chắn<br />\r\n- Chất liệu chọn lọc<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i mang lại cảm gi&aacute;c thoải m&aacute;i<br />\r\n- Đế chắc chắn v&agrave; chống trơn trượt<br />\r\n<img alt=\"Giày Slipon nam MWC NASL- 6064\" src=\"https://mwc.com.vn/FolderUpload/6064a2/z3100927540667_2e07f77e27a4ff9c75e0c094b46fbd5e.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày Slipon nam MWC NASL- 6064\" /><img alt=\"Giày Slipon nam MWC NASL- 6064\" src=\"https://mwc.com.vn/FolderUpload/6064a2/z3100927545412_1601043d38a5162482c5358bb63a27b2.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày Slipon nam MWC NASL- 6064\" /><img alt=\"Giày Slipon nam MWC NASL- 6064\" src=\"https://mwc.com.vn/FolderUpload/6064a2/z3100927556798_0c7bd0d69305e836a9e7540d391553bf.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày Slipon nam MWC NASL- 6064\" /><img alt=\"Giày Slipon nam MWC NASL- 6064\" src=\"https://mwc.com.vn/FolderUpload/6064a2/z3036124002322_1bc3efcde21aefcf2572337f2ff86a22.jpg\" style=\"height:2560px; width:2560px\" title=\"Giày Slipon nam MWC NASL- 6064\" /></p>\r\n', 3, 100, 0, 0, 300000, 300000, '2022-06-01 09:36:40', '1', '2022-06-01 09:36:40', '1', 1, 1),
(104, 11, 'Giày Thể Thao Nam', 'giay-the-thao-nam', '39d32197ec73a85535a2940c6fe2ca2b.jpg', '8a05d7fbbaca1b5621709d665bd96d09.jpg#79b57de44907256aa3649f00ba329d50.jpg#92f046c731ed088827d9b5590afe99b0.jpg', 'Giày Thể Thao Nam MWC NATT - 5363 là mẫu giày được thiết kế theo phong cách hiện đại, màu sắc khỏe khoắn, sang trọng mang đến cho bạn 1 diện mạo hoàn toàn cá tính. Đặc biệt sản phẩm sử dụng chất liệu cao cấp có độ bền tối ưu giúp bạn thoải mái trong mọi hoàn cảnh.', '<p>Gi&agrave;y Thể Thao Nam MWC NATT - 5363&nbsp;l&agrave; mẫu gi&agrave;y được thiết kế theo phong c&aacute;ch hiện đại, m&agrave;u sắc khỏe khoắn, sang trọng mang đến cho bạn 1 diện mạo ho&agrave;n to&agrave;n c&aacute; t&iacute;nh. Đặc biệt sản phẩm sử dụng chất liệu cao cấp c&oacute; độ bền tối ưu gi&uacute;p bạn thoải m&aacute;i trong mọi ho&agrave;n cảnh.<br />\r\nChất liệu cao cấp :&nbsp;tho&aacute;ng kh&iacute; cả mặt trong lẫn mặt ngo&agrave;i khiến người mang lu&ocirc;n cảm thấy dễ chịu d&ugrave; hoạt động trong thời gian d&agrave;i.<br />\r\nThiết kế th&ocirc;ng minh:&nbsp;<br />\r\n- Giày c&oacute; trọng lượng nhẹ.<br />\r\n- Lớp l&oacute;t c&oacute; lỗ th&ocirc;ng hơi giúp đ&ocirc;i giày lu&ocirc;n thoáng khí, kh&ocirc;ng g&acirc;y hầm b&iacute; hay kh&oacute; chịu khi mang.<br />\r\n- Đặc biệt phần đế được làm bằng cao su t&ocirc;̉ng hợp, &ecirc;m ái, thi&ecirc;́t k&ecirc;́ ch&ocirc;́ng trơn trượt cực k&igrave; hi&ecirc;̣u quả&nbsp;<br />\r\nTh&iacute;ch hợp với mọi hoạt động:&nbsp;Sản phẩm thích hợp cho các hoạt đ&ocirc;̣ng thể thao như: đi bộ, chạy bộ, đi l&agrave;m, đi chơi hay tập luyện..</p>\r\n\r\n<p><img alt=\"Giày Thể Thao Nam MWC NATT - 5364\" src=\"https://mwc.com.vn/FolderUpload/31.5.22/3693/5364/z3455150495433_b2e698e6e4a5c9d853de88e9326eedf9.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Thể Thao Nam MWC NATT - 5364\" /><img alt=\"Giày Thể Thao Nam MWC NATT - 5364\" src=\"https://mwc.com.vn/FolderUpload/31.5.22/3693/5364/z3455150496478_c4bbd2df6e75a6e330e8a8db47dec9ca.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Thể Thao Nam MWC NATT - 5364\" /><img alt=\"Giày Thể Thao Nam MWC NATT - 5364\" src=\"https://mwc.com.vn/FolderUpload/31.5.22/3693/5364/z3455150497945_eb784bf0c204913c02202e38943a0947.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Thể Thao Nam MWC NATT - 5364\" /><img alt=\"Giày Thể Thao Nam MWC NATT - 5364\" src=\"https://mwc.com.vn/FolderUpload/31.5.22/3693/5364/z3455150499977_98c1991a901e7dd3a7cc4b262d054ebe.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Thể Thao Nam MWC NATT - 5364\" /><img alt=\"Giày Thể Thao Nam MWC NATT - 5364\" src=\"https://mwc.com.vn/FolderUpload/31.5.22/3693/5364/z3455150499042_b05e260a21347d3d1f7883619d4d770f.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày Thể Thao Nam MWC NATT - 5364\" /></p>\r\n', 1, 100, 0, 0, 350000, 350000, '2022-06-01 09:38:04', '1', '2022-06-01 09:38:04', '1', 1, 1),
(105, 15, 'Giày cao gót MWC', 'giay-cao-got-mwc', '088da12da53666bfd8488b0f7d025bff.jpg', '3169c1f1df235e54ce7542d68d61fb63.jpg#3f8e5ef6a23465df94153365d9fe017c.jpg#9c303ce7e4e92bad43bf8b8439a1337e.jpg', 'Giày cao gót MWC NUCG-4325  sử dụng chất liệu da tổng hợp bền đẹp, lớp lót giày mềm mại cực kỳ êm chân. Đường may tỉ mỉ, form giày chuẩn đem lại cảm giác thoải mái cho bạn gái khi mang.', '<p>Gi&agrave;y cao g&oacute;t MWC NUCG-4325&nbsp;&nbsp;sử dụng chất liệu da tổng hợp bền đẹp, lớp l&oacute;t gi&agrave;y mềm mại cực kỳ &ecirc;m ch&acirc;n. Đường may tỉ mỉ, form gi&agrave;y chuẩn đem lại cảm gi&aacute;c thoải m&aacute;i cho bạn g&aacute;i khi mang.<br />\r\n- B&ecirc;n cạnh đ&oacute;, sản phẩm<em>&nbsp;Gi&agrave;y cao g&oacute;t MWC NUCG-4325&nbsp;</em>c&oacute; kiểu d&aacute;ng hiện đại, thời trang gi&uacute;p t&ocirc;n vinh đ&ocirc;i ch&acirc;n của ph&aacute;i nữ.<br />\r\n- C&oacute; thể phối hợp với nhiều phong c&aacute;ch, ph&ugrave; hợp với nhiều ho&agrave;n cảnh như đi l&agrave;m, dự tiệc, đi chơi, ....&nbsp;</p>\r\n\r\n<p><img alt=\"Giày cao gót MWC NUCG- 4325\" src=\"https://mwc.com.vn/FolderUpload/18.5.22/4325/z3392810019930_f1cfe1e5664d441b15be5ce8c9f43805.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày cao gót MWC NUCG- 4325\" /><img alt=\"Giày cao gót MWC NUCG- 4325\" src=\"https://mwc.com.vn/FolderUpload/18.5.22/4325/z3392810030685_6cdb175c9a030a7fe7cd9ecf5b0fbcdc.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày cao gót MWC NUCG- 4325\" /><img alt=\"Giày cao gót MWC NUCG- 4325\" src=\"https://mwc.com.vn/FolderUpload/18.5.22/4325/z3392810008729_661598b8d5befac515b7c61ce79e65bf.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày cao gót MWC NUCG- 4325\" /><img alt=\"Giày cao gót MWC NUCG- 4325\" src=\"https://mwc.com.vn/FolderUpload/18.5.22/4325/z3392810003834_e4770c95093972bfb4ae5b11c20b6e6e.jpg\" style=\"height:2048px; width:2048px\" title=\"Giày cao gót MWC NUCG- 4325\" /></p>\r\n', 2, 100, 0, 0, 240000, 240000, '2022-06-01 09:39:14', '1', '2022-06-01 09:39:14', '1', 1, 1),
(106, 16, 'Giày thể thao nữ', 'giay-the-thao-nu', '232f377667ce55315814c676927476c0.jpg', '6c4f13773a3e7eaa1ee718e11aa52ea8.jpg#2022c23c00a9eabd8774977544926fd0.jpg#209926142c150b79c49eb13df1566c40.jpg', 'Giày thể thao nữ MWC NUTT- 0690 sở hữu thiết kế thời trang, năng động cùng chất liệu bền bỉ hỗ trợ vận động tốt và bảo vệ đôi chân cho người mang.', '<p>Giày th&ecirc;̉ thao nữ MWC NUTT- 0690&nbsp;sở hữu thiết kế thời trang, năng động c&ugrave;ng chất liệu bền bỉ hỗ trợ vận động tốt v&agrave; bảo vệ đ&ocirc;i ch&acirc;n cho người mang.<br />\r\n- Đế cao su mềm, &ecirc;m &aacute;i gi&uacute;p bạn cảm thấy dễ chịu khi di chuyển trong thời gian d&agrave;i. Th&ecirc;m v&agrave;o đ&oacute;, giày th&ecirc;̉ thao nữ MWC NUTT- 0690&nbsp;c&oacute; t&iacute;nh năng tho&aacute;ng kh&iacute;, gi&uacute;p c&acirc;n bằng nhiệt v&agrave; độ ẩm trong những điều kiện m&ocirc;i trường kh&aacute;c nhau.<br />\r\n- Sản phẩm hướng theo phong c&aacute;ch hiện đại, khỏe khoắn, m&agrave;u sắc trẻ trung ph&ugrave; hợp với nhiều lứa tuổi v&agrave; d&aacute;ng người.<br />\r\n- Đường may tỉ mỉ, tinh tế tạo cho bạn cảm gi&aacute;c y&ecirc;n t&acirc;m về chất lượng.<br />\r\n- Sản phẩm c&oacute; t&iacute;nh ứng dụng cao: th&iacute;ch hợp mang khi tập luyện thể thao, đi l&agrave;m, đi chơi v&agrave; tham gia c&aacute;c hoạt động thường ng&agrave;y...</p>\r\n\r\n<p><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/10.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/8.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/11.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/7.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/9.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/6.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /><img alt=\"Giày thể thao nữ MWC NUTT- 0690\" src=\"https://mwc.com.vn/FolderUpload/01.06.22/0690/3.png\" style=\"height:1000px; width:1000px\" title=\"Giày thể thao nữ MWC NUTT- 0690\" /></p>\r\n', 1, 100, 0, 0, 320000, 320000, '2022-06-01 09:40:24', '1', '2022-06-01 09:40:24', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
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

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(3, 'trang chu 1', 'trang-chu', 'banner-quang-cao-giay-4.png', '2019-07-03 17:05:52', '1', '2022-06-01 09:43:00', '', 1, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'banner-quang-cao-giay-3.png', '2019-07-03 17:06:38', '1', '2022-06-01 09:42:55', '', 1, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', '9_banner_nike.jpg', '2019-07-03 17:06:58', '1', '2022-06-01 09:42:49', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
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
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Gò vấp', 'user-group.png', '2022-04-23 09:16:16', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
