-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2023 lúc 11:18 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmot`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(50) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `giam_gia` int(11) DEFAULT 0,
  `hinh` varchar(50) NOT NULL,
  `ngay_nhap` date DEFAULT NULL,
  `mo_ta` text NOT NULL,
  `dac_biet` int(1) NOT NULL DEFAULT 0,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `ma_loai`) VALUES
(39, 'Giày AF1 Trắng', 3199999, 200000, 'g1.jpg', '2023-12-07', '', 0, 28, 16),
(40, 'Giày New Balance 300 CRT', 2999999, 300000, 'g2.jpg', '2023-12-07', '', 0, 1, 6),
(41, 'Giày New Balance 550', 2599999, 200000, 'g3.jpg', '2023-12-07', '  ', 0, 2, 6),
(42, 'Giày New Balance 574', 2500000, 200001, 'g4.jpg', '2023-12-07', '  ', 1, 3, 6),
(43, 'Giày AF1 Trắng Xanh', 3000000, 200000, 'g5.jpg', '2023-12-07', ' ', 1, 3, 16),
(44, 'Giày Convers Chuck Taylor 1970s', 2500000, 200000, 'g6.jpg', '2023-12-07', '', 0, 0, 14),
(45, 'Giày Converse  All Star Classic Low ', 1500000, 150000, 'g7.jpg', '2023-12-07', '', 0, 0, 14),
(46, 'Giày Adidas Forum 84 Low', 2000000, 200000, 'g9.jpg', '2023-12-07', ' ', 0, 0, 8),
(47, 'Giày_Adidas Superstar', 2500000, 200000, 'g10.jpg', '2023-12-07', '', 0, 0, 8),
(48, 'Giày Puma Trắng', 2600000, 250000, 'g8.jpg', '2023-12-07', ' ', 1, 1, 1),
(49, 'Giày Puma Butter', 2500000, 150000, 'g11.jpg', '2023-12-07', '', 0, 0, 1),
(50, 'Giày Vans Vault Old Skool', 2000000, 200000, 'g12.jpg', '2023-12-07', ' ', 1, 1, 7),
(51, 'Giày Vans Caro', 1800000, 150000, 'g13.jpg', '2023-12-07', ' ', 0, 1, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(20) NOT NULL COMMENT 'mã đăng nhập',
  `mat_khau` varchar(50) NOT NULL COMMENT 'mật khẩu',
  `ho_ten` varchar(50) NOT NULL COMMENT 'họ tên',
  `kich_hoat` bit(1) NOT NULL DEFAULT b'0' COMMENT 'trạng thái kích hoạt',
  `hinh` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `vai_tro` bit(1) NOT NULL DEFAULT b'0' COMMENT 'vai trò true là nv'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `mat_khau`, `ho_ten`, `kich_hoat`, `hinh`, `email`, `vai_tro`) VALUES
('admin', '290904', 'Minh Chiến', b'1', 'Screenshot_20221211_055004.png', 'minhchien@gmail.com', b'1'),
('congtuan', '123456', 'Công Tuấn ', b'1', 'Screenshot 2023-06-08 223419.png', 'congtuan@gmail.com', b'0'),
('vanthien', '123456', 'Văn Thiện', b'1', 'as.jpg', 'vanthien@gmail.com', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int(11) NOT NULL COMMENT 'mã loại hàng',
  `ten_loai` varchar(50) NOT NULL COMMENT 'tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(1, 'Puma'),
(6, 'New Balance'),
(7, 'Vans'),
(8, 'Adidas'),
(14, 'Converse'),
(16, 'Nike');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã loại hàng', AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
