-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2023 lúc 05:16 PM
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
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `ten_sp` varchar(200) NOT NULL,
  `hinh_anh_sp` varchar(200) NOT NULL,
  `gia_sp` varchar(200) NOT NULL,
  `soluong_sp` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `ten_sp`, `hinh_anh_sp`, `gia_sp`, `soluong_sp`) VALUES
(27, 2, 'Chocolate Cupcake', 'https://live.staticflickr.com/65535/52806634282_f5af94c865_m.jpg', '52000', 2),
(28, 2, 'Strawberry Milk Tea', 'https://live.staticflickr.com/65535/52806620232_7b851d73fa_m.jpg', '45000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten_sp` varchar(255) NOT NULL,
  `hinh_anh_sp` varchar(255) NOT NULL,
  `gia_sp` varchar(255) NOT NULL,
  `loai_sp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_sp`, `hinh_anh_sp`, `gia_sp`, `loai_sp`) VALUES
(1, 'Olong Tea', 'https://live.staticflickr.com/65535/52806616072_36a3fde810_m.jpg', '45000', 'Trà'),
(2, 'Pearl Milk Tea', 'https://live.staticflickr.com/65535/52807581845_c9a645a85f_m.jpg', '15000', 'Trà'),
(3, 'Chocolate Milk Tea', 'https://live.staticflickr.com/65535/52807625263_cfeeb17f96_m.jpg', '45000', 'Trà'),
(4, 'Mango Milk Tea', 'https://live.staticflickr.com/65535/52807412864_6c1d233a25_m.jpg', '45000', 'Trà'),
(5, 'Blueberry Milk Tea', 'https://live.staticflickr.com/65535/52807412804_57fe381906_m.jpg', '45000', 'Trà'),
(6, 'Strawberry Milk Tea', 'https://live.staticflickr.com/65535/52806620232_7b851d73fa_m.jpg', '45000', 'Trà'),
(7, 'Chocolate Donut', 'https://live.staticflickr.com/65535/52807592915_c1ff32137e_m.jpg', '45000', 'Bánh'),
(8, 'Matcha Donut', 'https://live.staticflickr.com/65535/52807592865_9cc9a816be_m.jpg', '51000', 'Bánh'),
(9, 'Brown Sugar Peanut Donut', 'https://live.staticflickr.com/65535/52807635038_f83d6fe185_m.jpg', '52000', 'Bánh'),
(10, 'Strawberry Cupcake', 'https://live.staticflickr.com/65535/52807638418_485e4cd25a_m.jpg', '50000', 'Bánh'),
(11, 'Lemon Cupcake', 'https://live.staticflickr.com/65535/52807189316_8a340c37c6_m.jpg', '55000', 'Bánh'),
(12, 'Chocolate Cupcake', 'https://live.staticflickr.com/65535/52806634282_f5af94c865_m.jpg', '52000', 'Bánh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'hue@gmail.com', '123'),
(2, 'giang@gmail.com', '123'),
(3, 'phamtrithinh123', 'thinh2003'),
(4, 'phamtrithinh12@gmail.com', '12'),
(5, 'giang@gmail.com', 'haha'),
(6, 'thinh@gmail.com', '123'),
(7, 'thanh@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
