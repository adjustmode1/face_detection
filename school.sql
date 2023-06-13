-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2023 lúc 07:34 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `school`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `quyen` int(11) NOT NULL,
  `sdt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id`, `ten`, `hinhanh`, `gioitinh`, `ngaysinh`, `matkhau`, `quyen`, `sdt`) VALUES
('1', '1', '/static/uploads/teachers/hmcjthmgtrxofij.jpg', 0, '2023-06-01', '1', 1, '1'),
('a', 'abc', '/static/uploads/teachers/eljfhrwnajfvywr.jpg', 1, '2023-05-05', '1', 1, '012'),
('GV0001', 'nguyen van a', '', 0, '2023-05-10', '1', 0, ''),
('GV0002', 'nguyen van b', '', 0, '2023-05-18', '1', 1, ''),
('GV0003', 'aaa', '/static/uploads/teachers/jjjrvisjkgltvcu.jpg', 1, '2023-06-03', '1', 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`id`, `ten`, `hinhanh`, `gioitinh`, `ngaysinh`) VALUES
(1, '1', '/static/uploads/pgnhdhtwxzrzysp.webp', 1, '2023-06-09'),
(13, 'Nguyễn Thành Huy', 'zbgyxhpdiyeekvu.png', 1, '2023-05-06'),
(22, '1', '/static/uploads/dkmyvjzwhxacipt.webp', 1, '2023-06-02'),
(23, 'Nguyễn Thành Huy', '/static/uploads/keajvtdvdiqonyu.jpg', 1, '2023-06-02'),
(24, 'Nguyễn Thành Huy', '/static/uploads/evmvwsbxgxozeca.jpg', 1, '2023-06-02'),
(25, 'Nguyễn Thành Huy', '/static/uploads/tbquiowvidqdzhv.jpg', 1, '2023-06-02'),
(26, 'Nguyễn Thành Huy', '/static/uploads/uzzuipoynkjposr.webp', 0, '2023-06-02'),
(27, '111', '', 1, '2023-06-09'),
(28, 'ten', '', 1, '2023-06-03'),
(29, '123', '/static/uploads/nncodqbadynuyeh.jpg', 1, '2023-06-10'),
(30, 'tem', '', 1, '2023-06-04'),
(31, 'temp', '', 1, '2023-06-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`id`, `name`) VALUES
(1, '1A'),
(2, '2A');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc_giaovien`
--

CREATE TABLE `lophoc_giaovien` (
  `id_lophoc` int(11) NOT NULL,
  `id_giaovien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc_giaovien`
--

INSERT INTO `lophoc_giaovien` (`id_lophoc`, `id_giaovien`) VALUES
(1, 'GV0001'),
(2, 'GV0002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc_hocsinh`
--

CREATE TABLE `lophoc_hocsinh` (
  `id_lophoc` varchar(255) NOT NULL,
  `id_giaovien` varchar(255) NOT NULL,
  `id_hocsinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc_hocsinh`
--

INSERT INTO `lophoc_hocsinh` (`id_lophoc`, `id_giaovien`, `id_hocsinh`) VALUES
('1', 'GV0002', 1),
('2', 'GV0002', 13),
('2', 'GV0002', 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuhuynh`
--

CREATE TABLE `phuhuynh` (
  `id` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuhuynh`
--

INSERT INTO `phuhuynh` (`id`, `ten`, `hinhanh`, `gioitinh`, `sodienthoai`, `ngaysinh`, `diachi`) VALUES
('jxdacbrmkuqwobm', '1', 'static/uploads/imgs/jxdacbrmkuqwobm.jpg', 1, '1', '0000-00-00', '1'),
('lqalglsgtossmik', '123123', 'static/uploads/imgs/lqalglsgtossmik.jpg', 1, '0339188535', '2023-06-03', 'cần thơ'),
('ntjptmupjsyeppz', 'Nguyễn Thành Huy', 'static/uploads/imgs/ntjptmupjsyeppz.jpg', 1, '1', '0000-00-00', '1'),
('sawharjvwllifez', 'Nguyễn Thành Huy', 'static/uploads/imgs/sawharjvwllifez.jpg', 1, '0339188535', '2023-06-09', 'cần thơ'),
('uypctcagftskboy', '111', 'static/uploads/imgs/uypctcagftskboy.jpg', 1, '1', '0000-00-00', '1'),
('vmoevnveldgssxp', 'a', 'static/uploads/imgs/vmoevnveldgssxp.jpg', 1, '0339188535', '2023-05-13', 'cần thơ'),
('wjypzfnbcdkjhog', 'a', 'static/uploads/imgs/wjypzfnbcdkjhog.jpg', 1, '0339188535', '0000-00-00', '1'),
('zmhvndfgobozpab', 'Nguyễn Thành Huy', 'static/uploadsimgs/zmhvndfgobozpab.jpg', 1, '0339188535', '2023-05-06', 'cần thơ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuhuynh_hocsinh`
--

CREATE TABLE `phuhuynh_hocsinh` (
  `id_phuhuynh` varchar(255) NOT NULL,
  `id_hocsinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuhuynh_hocsinh`
--

INSERT INTO `phuhuynh_hocsinh` (`id_phuhuynh`, `id_hocsinh`) VALUES
('azlfjsybypkxczr', 1),
('hlziwhwytlhefav', 13),
('jvpyacadiuwqych', 1),
('jxdacbrmkuqwobm', 10),
('lqalglsgtossmik', 1),
('ntjptmupjsyeppz', 13),
('uypctcagftskboy', 0),
('vmoevnveldgssxp', 1),
('wjypzfnbcdkjhog', 13),
('zyixzxwbmgbpmln', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lophoc_giaovien`
--
ALTER TABLE `lophoc_giaovien`
  ADD PRIMARY KEY (`id_lophoc`,`id_giaovien`);

--
-- Chỉ mục cho bảng `lophoc_hocsinh`
--
ALTER TABLE `lophoc_hocsinh`
  ADD PRIMARY KEY (`id_lophoc`,`id_giaovien`,`id_hocsinh`);

--
-- Chỉ mục cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phuhuynh_hocsinh`
--
ALTER TABLE `phuhuynh_hocsinh`
  ADD PRIMARY KEY (`id_phuhuynh`,`id_hocsinh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
