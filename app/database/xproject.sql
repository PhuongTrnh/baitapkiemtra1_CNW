-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2023 lúc 03:51 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary`) VALUES
(2, 'kfafsi', 'adfkjf', '124.00'),
(3, 'Đặng Song Kha', '39, Ấp Trương, Phường Nghị Văn, Huyện Mẫn Ca Đình\nLào Cai', '3147.00'),
(4, 'Giang Nhượng', '339 Phố Huỳnh Vịnh Tâm, Phường 32, Quận Ma Trinh Sinh\nHồ Chí Minh', '1976.00'),
(5, 'Bác. Khổng Ánh Tuyết', '4710 Phố Bì Cầm Nguyệt, Xã 29, Quận Thiện\nTây Ninh', '2039.00'),
(6, 'Phương Hà', '82 Phố Kiều Lạc Trực, Xã Hậu, Quận Sử Lợi\nCần Thơ', '1232.00'),
(7, 'Thạch Đại Cường', '194 Phố Anh, Xã Bảo Thanh Quyền, Quận Khương Ngôn\nĐà Nẵng', '4905.00'),
(8, 'Chị. Cái Thiều Hồng', '2414, Thôn 4, Ấp Vương Oanh, Huyện Trưng\nBình Thuận', '1291.00'),
(9, 'Thôi Tố Diệu', '287 Phố Lê Thường Vọng, Phường Dã Sinh Hoa, Quận Giang Chiểu\nHải Phòng', '2044.00'),
(10, 'Bác. Mã Diệp', '8891 Phố Khuất Sinh Mỹ, Phường 71, Huyện Lợi\nHải Phòng', '2282.00'),
(11, 'Em. Lô Bách Thông', '2876, Ấp Phan Hữu Khôi, Phường Đường, Huyện 8\nBến Tre', '2123.00'),
(12, 'Chị. Khuất Chi', '28 Phố Hòa, Xã Nhiệm, Huyện Trầm Phùng\nĐắk Lắk', '1933.00'),
(13, 'Giang Thiện', '00 Phố Khúc Thành Bạch, Phường Thạch Ân Hoàn, Quận 4\nHồ Chí Minh', '1151.00'),
(14, 'Đào Kiện', '89 Phố Nhuận, Phường 6, Huyện Như\nSơn La', '2309.00'),
(15, 'Hàng Hoàn', '8742 Phố Châu Lĩnh Diệu, Xã Sáng Văn, Quận Nhiệm Hợp\nTiền Giang', '4493.00'),
(16, 'Khương Hoài Đào', '596, Ấp 76, Phường 1, Quận Ái Cát\nNinh Bình', '2631.00'),
(17, 'Kim Minh', '8942 Phố Thôi Diệu Ca, Xã 4, Huyện Thuần\nThanh Hóa', '4480.00'),
(18, 'Anh. Đào Nhật Vĩ', '49 Phố Âu Hương Lực, Phường 5, Huyện Thanh Bảo\nĐà Nẵng', '3857.00'),
(19, 'Bà. Ân Thanh', '2 Phố Giang Chiến Dao, Ấp Kiều Khôi, Huyện Ẩn Thương\nCần Thơ', '4863.00'),
(20, 'Cự Diễm', '36 Phố Tô Thường Chính, Xã Viên, Huyện Cầm Liên\nYên Bái', '1509.00'),
(21, 'Đinh Pháp', '05 Phố Kiếm, Ấp Phạm Hảo, Quận 34\nHà Nội', '2846.00'),
(22, 'Hứa Viên', '7 Phố Khúc Hòa Dụng, Phường Khu, Huyện Lều Ty\nĐà Nẵng', '2027.00'),
(23, 'Lạc Ý Yên', '4177 Phố Thập Ca Triết, Xã 85, Huyện Lữ\nHải Phòng', '1109.00'),
(24, 'Thân Kim', '8, Ấp 19, Phường Quyên Võ, Huyện Sơn Toại Đức\nThừa Thiên Huế', '2506.00'),
(25, 'Cấn Lan Hằng', '3559, Ấp Bạch Lan, Thôn Quyền Giao, Huyện 48\nBắc Ninh', '4118.00'),
(26, 'Bác. Bùi Hiếu Phượng', '43 Phố Hiền, Xã Giao, Huyện 00\nHải Phòng', '4921.00'),
(27, 'Bác. Võ Nhân', '51, Thôn Trưng Khanh Tuấn, Xã Giáp, Huyện Đào Thọ\nCà Mau', '2419.00'),
(28, 'Quách Phượng Hoa', '7 Phố Anh, Xã Tiền Trường, Huyện 5\nQuảng Ngãi', '4501.00'),
(29, 'Chú. Lò Nguyên Sâm', '5285 Phố Viên Ninh Tú, Phường Huỳnh, Huyện Pháp Quân\nThái Bình', '3706.00'),
(30, 'Đồng Liễu Thu', '511 Phố Âu Thoại Châu, Xã Lập Đạt, Huyện Phụng Ân\nHải Phòng', '1520.00'),
(31, 'Anh. Tôn An', '3869 Phố Lương Liễu Sĩ, Thôn Hà Thúy, Quận Trịnh Nương\nPhú Thọ', '3121.00'),
(32, 'Đinh Yên Bích', '7 Phố Lục Kiên Xuyến, Xã Lộ, Huyện 6\nThừa Thiên Huế', '2412.00'),
(33, 'Em. Phí Chung Định', '48 Phố Giang, Phường Trang, Huyện Lý Vy Sáng\nHồ Chí Minh', '1841.00'),
(34, 'Chú. Xa Tiển', '637, Ấp Thoại Lạc, Phường 93, Huyện Trang\nBình Phước', '1840.00'),
(35, 'Bác. Thái Như Thủy', '9, Ấp 31, Xã Trình Lều, Huyện Vân Hoàng\nBạc Liêu', '2137.00'),
(36, 'Ông. Phùng Liên Nguyên', '7 Phố Tạ, Thôn Sinh Khôi, Huyện Lạc Mỹ\nLạng Sơn', '4145.00'),
(37, 'Thân Vi', '0507 Phố Nghiêm Khê Thoại, Phường Quế Mẫn, Quận 8\nThái Bình', '2301.00'),
(38, 'Bác. Ma Bình Pháp', '60 Phố Vi Lĩnh Trí, Phường Ông, Quận Chính Anh\nCần Thơ', '2714.00'),
(39, 'Thái Diệp Cát', '678 Phố Trâm, Ấp Thực Nhuận, Quận Du Phi\nPhú Thọ', '4115.00'),
(40, 'Chú. Âu Chuẩn Sỹ', '67 Phố Thôi Hiếu Tuyền, Phường 87, Huyện Hòa Hà\nHải Phòng', '4567.00'),
(41, 'Lương Quang', '3667 Phố Tiêu Cúc Kiên, Ấp Hiên Vĩ, Huyện Phó\nKiên Giang', '4662.00'),
(42, 'Quản Khắc Tường', '80 Phố Nhữ Duyên Thịnh, Xã 1, Huyện Cát My\nHồ Chí Minh', '3811.00'),
(43, 'Đinh Anh', '233 Phố Khai, Ấp Thủy Phong, Quận Thào Ái Đàn\nAn Giang', '2593.00'),
(44, 'Trịnh Dụng', '3316, Thôn Sang Nhật, Phường Bảo, Quận Lực Hằng\nCà Mau', '1976.00'),
(45, 'Chị. Lỡ Quế', '3 Phố Tào Vượng Diệu, Phường Hạnh, Quận Nghiệp\nHồ Chí Minh', '1405.00'),
(46, 'Bà. Đàm Nhật Tuyết', '69 Phố Kha Cương Nghị, Xã Châu, Quận Bá\nCần Thơ', '2396.00'),
(47, 'Bà. Giả Quỳnh Đan', '6 Phố Đàm, Xã Dũng Đinh, Quận Bích Trưng\nHải Phòng', '4167.00'),
(48, 'Cụ. Lý Hòa', '89 Phố Thân Sa Quyên, Thôn Ông Hiền, Huyện Hạnh Khoa\nĐà Nẵng', '1863.00'),
(49, 'Cụ. Mai Quốc Cương', '8951 Phố Ngụy Dũng Vịnh, Ấp Hòa Thắng, Huyện 0\nHải Phòng', '2027.00'),
(50, 'Chị. Ân Hồ Miên', '14, Thôn Liễu Ân, Ấp Lò Vĩnh, Huyện 64\nPhú Thọ', '1379.00'),
(51, 'Thập Tuyết Đan', '1185 Phố Hoài, Xã 53, Huyện Lạc\nHải Phòng', '2815.00'),
(52, 'Chú. Ngụy Vinh', '50, Thôn 9, Thôn Hữu Vinh, Huyện Thảo Thọ\nBắc Giang', '2775.00'),
(53, 'Bác. Phó Bách Tường', '392, Ấp Phước Ngà, Xã Doãn, Huyện 9\nHòa Bình', '1507.00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
