-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 03:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `nodejsapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cumrap`
--

CREATE TABLE `cumrap` (
  `cid` int(11) NOT NULL,
  `maCumRap` varchar(255) NOT NULL,
  `tenCumRap` varchar(255) NOT NULL,
  `diaChi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cumrap`
--

INSERT INTO `cumrap` (`cid`, `maCumRap`, `tenCumRap`, `diaChi`) VALUES
(1, 'bhd-star-cineplex-3-2', 'BHD Star Cineplex - 3/2', 'L5-Vincom 3/2, 3C Đường 3/2, Q.10'),
(2, 'bhd-star-cineplex-bitexco', 'BHD Star Cineplex - Bitexco', 'L3-Bitexco Icon 68, 2 Hải Triều, Q.1'),
(3, 'bhd-star-cineplex-pham-hung', 'BHD Star Cineplex - Phạm Hùng', 'L4-Satra Phạm Hùng, C6/27 Phạm Hùng, Bình Chánh'),
(4, 'bhd-star-cineplex-vincom-le-van-viet', 'BHD Star Cineplex - Vincom Lê Văn Việt', 'L4-Vincom Plaza, 50 Lê Văn Việt, Q.9'),
(5, 'bhd-star-cineplex-vincom-quang-trung', 'BHD Star Cineplex - Vincom Quang Trung', 'B1-Vincom QT, 190 Quang Trung, Gò Vấp'),
(6, 'bhd-star-cineplex-vincom-thao-dien', 'BHD Star Cineplex - Vincom Thảo Điền', 'L5-Megamall, 159 XL Hà Nội, Q.2');

-- --------------------------------------------------------

--
-- Table structure for table `cumrapvalichchieuinsert`
--

CREATE TABLE `cumrapvalichchieuinsert` (
  `clid` int(11) NOT NULL,
  `cumrap` int(11) NOT NULL,
  `lichchieuinsert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cumrapvalichchieuinsert`
--

INSERT INTO `cumrapvalichchieuinsert` (`clid`, `cumrap`, `lichchieuinsert`) VALUES
(1, 1, 15235),
(2, 2, 16531),
(3, 3, 15289),
(4, 4, 15343),
(5, 6, 16532),
(6, 1, 16540);

-- --------------------------------------------------------

--
-- Table structure for table `danhsachrap`
--

CREATE TABLE `danhsachrap` (
  `did` int(11) NOT NULL,
  `maRap` varchar(255) NOT NULL,
  `tenRap` varchar(255) NOT NULL,
  `maCumRap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhsachrap`
--

INSERT INTO `danhsachrap` (`did`, `maRap`, `tenRap`, `maCumRap`) VALUES
(1, '451', 'Rạp 1', 1),
(2, '452', 'Rạp 2', 1),
(3, '453', 'Rạp 3', 1),
(4, '454', 'Rạp 4', 1),
(5, '455', 'Rạp 5', 1),
(6, '456', 'Rạp 6', 1),
(7, '457', 'Rạp 7', 1),
(8, '458', 'Rạp 8', 1),
(9, '459', 'Rạp 9', 1),
(10, '460', 'Rạp 10', 1),
(11, '461', 'Rạp 1', 2),
(12, '462', 'Rạp 2', 2),
(13, '463', 'Rạp 3', 2),
(14, '464', 'Rạp 4', 2),
(15, '465', 'Rạp 5', 2),
(16, '466', 'Rạp 6', 2),
(17, '467', 'Rạp 7', 2),
(18, '468', 'Rạp 8', 2),
(19, '469', 'Rạp 9', 2),
(20, '470', 'Rạp 10', 2),
(21, '471', 'Rạp 1', 3),
(22, '472', 'Rạp 2', 3),
(23, '473', 'Rạp 3', 3),
(24, '474', 'Rạp 4', 3),
(25, '475', 'Rạp 5', 3),
(26, '476', 'Rạp 6', 3),
(27, '477', 'Rạp 7', 3),
(28, '478', 'Rạp 8', 3),
(29, '479', 'Rạp 9', 3),
(30, '480', 'Rạp 10', 3),
(31, '481', 'Rạp 1', 4),
(32, '482', 'Rạp 2', 4),
(33, '483', 'Rạp 3', 4),
(34, '484', 'Rạp 4', 4),
(35, '485', 'Rạp 5', 4),
(36, '486', 'Rạp 6', 4),
(37, '487', 'Rạp 7', 4),
(38, '488', 'Rạp 8', 4),
(39, '489', 'Rạp 9', 4),
(40, '490', 'Rạp 10', 4),
(41, '491', 'Rạp 1', 5),
(42, '492', 'Rạp 2', 5),
(43, '493', 'Rạp 3', 5),
(44, '494', 'Rạp 4', 5),
(45, '495', 'Rạp 5', 5),
(46, '496', 'Rạp 6', 5),
(47, '497', 'Rạp 7', 5),
(48, '498', 'Rạp 8', 5),
(49, '499', 'Rạp 9', 5),
(50, '500', 'Rạp 10', 5),
(51, '501', 'Rạp 1', 6),
(52, '502', 'Rạp 2', 6),
(53, '503', 'Rạp 3', 6),
(54, '504', 'Rạp 4', 6),
(55, '505', 'Rạp 5', 6),
(56, '506', 'Rạp 6', 6),
(57, '507', 'Rạp 7', 6),
(58, '508', 'Rạp 8', 6),
(59, '509', 'Rạp 9', 6),
(60, '510', 'Rạp 10', 6);

-- --------------------------------------------------------

--
-- Table structure for table `danhsachvedat`
--

CREATE TABLE `danhsachvedat` (
  `vid` int(11) NOT NULL,
  `maLichChieu` int(11) NOT NULL,
  `taiKhoanNguoiDung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `danhsachvedatvevm`
--

CREATE TABLE `danhsachvedatvevm` (
  `vmid` int(11) NOT NULL,
  `danhSachVeDatId` int(11) NOT NULL,
  `veVMId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datve`
--

CREATE TABLE `datve` (
  `maGhe` int(11) NOT NULL,
  `tenGhe` varchar(255) NOT NULL,
  `loaiGhe` varchar(255) NOT NULL,
  `giaVe` double NOT NULL,
  `taiKhoanNguoiDat` varchar(255) NOT NULL,
  `maLichChieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datve`
--

INSERT INTO `datve` (`maGhe`, `tenGhe`, `loaiGhe`, `giaVe`, `taiKhoanNguoiDat`, `maLichChieu`) VALUES
(26, '26', 'Thuong', 75000, 'admin', 16532),
(31, '31', 'Thuong', 75000, 'admin', 16532),
(42, '42', 'Thuong', 75000, 'admin', 16532),
(43, '43', 'Thuong', 75000, 'admin', 16532),
(44, '44', 'Thuong', 75000, 'admin', 15289),
(45, '45', 'Vip', 90000, 'admin', 16532),
(46, '46', 'Vip', 90000, 'admin', 15289),
(61, '61', 'Vip', 90000, 'admin', 16532),
(63, '63', 'Vip', 90000, 'admin', 16532),
(159, '159', 'Thuong', 75000, 'admin', 16532),
(160, '0', 'Thuong', 75000, 'admin', 16532),
(161, '45', 'Vip', 90000, 'admin', 15289),
(162, '61', 'Vip', 90000, 'admin', 15289),
(163, '77', 'Vip', 90000, 'admin', 15289),
(164, '0', 'Thuong', 75000, 'admin', 15289),
(165, '78', 'Vip', 90000, 'admin', 15289),
(166, '142', 'Thuong', 75000, 'admin', 15289),
(167, '159', 'Thuong', 75000, 'admin', 15289);

-- --------------------------------------------------------

--
-- Table structure for table `hethongrap`
--

CREATE TABLE `hethongrap` (
  `hid` int(11) NOT NULL,
  `maHeThongRap` varchar(255) NOT NULL,
  `tenHeThongRap` varchar(255) NOT NULL,
  `biDanh` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hethongrap`
--

INSERT INTO `hethongrap` (`hid`, `maHeThongRap`, `tenHeThongRap`, `biDanh`, `logo`) VALUES
(1, 'BHDStar', 'BHD Star Cineplex', 'bhd-star-cineplex', 'http://movie0706.cybersoft.edu.vn/hinhanh/bhd-star-cineplex.png'),
(2, 'CGV', 'cgv', 'cgv', 'http://movie0706.cybersoft.edu.vn/hinhanh/cgv.png'),
(3, 'CineStar', 'CineStar', 'cineStar', 'http://movie0706.cybersoft.edu.vn/hinhanh/cinestar.png'),
(4, 'Galaxy', 'Galaxy Cinema', 'galaxy-cinema', 'http://movie0706.cybersoft.edu.vn/hinhanh/galaxy-cinema.png'),
(5, 'LotteCinima', 'Lotte Cinema', 'lotte-cinema', 'http://movie0706.cybersoft.edu.vn/hinhanh/lotte-cinema.png'),
(6, 'MegaGS', 'MegaGS', 'megags', 'http://movie0706.cybersoft.edu.vn/hinhanh/megags.png');

-- --------------------------------------------------------

--
-- Table structure for table `hethongrapvacumrap`
--

CREATE TABLE `hethongrapvacumrap` (
  `hcid` int(11) NOT NULL,
  `hethongrap` int(11) NOT NULL,
  `cumrap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hethongrapvacumrap`
--

INSERT INTO `hethongrapvacumrap` (`hcid`, `hethongrap`, `cumrap`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `hethongrapvaphim`
--

CREATE TABLE `hethongrapvaphim` (
  `hpid` int(11) NOT NULL,
  `maHeThongRap` int(11) NOT NULL,
  `maPhim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hethongrapvaphim`
--

INSERT INTO `hethongrapvaphim` (`hpid`, `maHeThongRap`, `maPhim`) VALUES
(2, 1, 1322),
(3, 1, 1282),
(4, 1, 1284),
(5, 1, 1283);

-- --------------------------------------------------------

--
-- Table structure for table `laythongtincanhanvm`
--

CREATE TABLE `laythongtincanhanvm` (
  `id` int(11) NOT NULL,
  `taiKhoan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lichchieuinsert`
--

CREATE TABLE `lichchieuinsert` (
  `maLichChieu` int(11) NOT NULL,
  `ngayChieuGioChieu` varchar(255) NOT NULL,
  `maRap` int(11) NOT NULL,
  `tenRap` varchar(255) NOT NULL,
  `giaVe` double NOT NULL,
  `thoiLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lichchieuinsert`
--

INSERT INTO `lichchieuinsert` (`maLichChieu`, `ngayChieuGioChieu`, `maRap`, `tenRap`, `giaVe`, `thoiLuong`) VALUES
(15235, '2019-01-01T10:10:00', 451, 'Rạp 1', 75000, 120),
(15289, '2019-01-01T10:10:00', 452, 'Rạp 2', 75000, 120),
(15343, '2019-01-01T10:10:00', 453, 'Rạp 3', 75000, 120),
(16531, '2019-01-01T10:10:00', 475, 'Rạp 5', 75000, 120),
(16532, '2019-01-01T12:10:00', 476, 'Rạp 6', 75000, 120),
(16540, '20/06/2022 06:10:00', 460, 'Rạp 10', 75000, 120);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidungvm`
--

CREATE TABLE `nguoidungvm` (
  `id` int(11) NOT NULL,
  `taiKhoan` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `soDt` varchar(255) NOT NULL,
  `maNhom` varchar(255) NOT NULL,
  `maLoaiNguoiDung` varchar(255) NOT NULL,
  `hoTen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoidungvm`
--

INSERT INTO `nguoidungvm` (`id`, `taiKhoan`, `matKhau`, `email`, `soDt`, `maNhom`, `maLoaiNguoiDung`, `hoTen`) VALUES
(3, 'admin', '098f6bcd4621d373cade4e832627b4f6', 'admin@gmail.com', '044444444', 'GP09', 'QuanTri', 'Admin'),
(4, 'user', '098f6bcd4621d373cade4e832627b4f6', 'user@gmail.com', '0659874511', 'GP09', 'KhachHang', 'Thien'),
(5, 'user2', '098f6bcd4621d373cade4e832627b4f6', 'user2@gmail.com', '0659824511', 'GP09', 'KhachHang', 'Thien2'),
(6, 'plz', 'e10adc3949ba59abbe56e057f20f883e', 'plz@gmail.com', '0654235988', 'GP09', 'KhachHang', 'plz'),
(7, 'plzz', 'e10adc3949ba59abbe56e057f20f883e', 'plzz@gmail.com', '0654232388', 'GP09', 'KhachHang', 'plzz'),
(8, 'jkg', '202cb962ac59075b964b07152d234b70', 'jkg@gmail.com', '0658987544', 'GP09', 'KhachHang', 'jkg'),
(9, 'jkgl', '202cb962ac59075b964b07152d234b70', 'jkgl@gmail.com', '0258987544', 'GP09', 'KhachHang', 'jkgl'),
(10, 'jkgl', '202cb962ac59075b964b07152d234b70', 'jkgl@gmail.com', '0258987544', 'GP09', 'KhachHang', 'jkgl'),
(11, 'jkg2l', '202cb962ac59075b964b07152d234b70', 'jkgl@gmail.com', '0258987544', 'GP09', 'KhachHang', 'jkgl'),
(12, 'jkg2l', '202cb962ac59075b964b07152d234b70', 'jkgl@gmail.com', '0258987544', 'GP09', 'KhachHang', 'jkgl'),
(13, 'jkg2ls', '202cb962ac59075b964b07152d234b70', 'jkgls@gmail.com', '0458987544', 'GP09', 'KhachHang', 'jkgls'),
(14, 'jkg2ls', '202cb962ac59075b964b07152d234b70', 'jkgls@gmail.com', '0458987544', 'GP09', 'KhachHang', 'jkgls'),
(15, 'j23ls', '202cb962ac59075b964b07152d234b70', 'jkg3ls@gmail.com', '0338987544', 'GP09', 'KhachHang', 'j23ls'),
(16, 'final', '202cb962ac59075b964b07152d234b70', 'final@gmail.com', '0654748511', 'GP09', 'KhachHang', 'final'),
(17, 'ttt', '9990775155c3518a0d7917f7780b24aa', 'ttt@gmail.com', '0654859688', 'GP09', 'KhachHang', 'ttt'),
(18, 'done', '202cb962ac59075b964b07152d234b70', 'done@gmail.com', '0865474855', 'GP09', 'KhachHang', 'done'),
(19, 'dones', '202cb962ac59075b964b07152d234b70', 'dones@gmail.com', '0548745155', 'GP09', 'KhachHang', 'dones'),
(20, 'zzz', '202cb962ac59075b964b07152d234b70', 'zzz@gmail.com', '0654812577', 'GP09', 'KhachHang', 'zzz'),
(21, 'swal', '202cb962ac59075b964b07152d234b70', 'swal@gmail.com', '0541258488', 'GP09', 'KhachHang', 'swal');

-- --------------------------------------------------------

--
-- Table structure for table `phiminsert`
--

CREATE TABLE `phiminsert` (
  `maPhim` int(11) NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `biDanh` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `moTa` varchar(255) NOT NULL,
  `maNhom` varchar(255) NOT NULL,
  `ngayKhoiChieu` varchar(255) NOT NULL,
  `danhGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phiminsert`
--

INSERT INTO `phiminsert` (`maPhim`, `tenPhim`, `biDanh`, `trailer`, `hinhAnh`, `moTa`, `maNhom`, `ngayKhoiChieu`, `danhGia`) VALUES
(1282, 'Ban tay diet quy', 'ban-tay-diet-quy', 'https://www.youtube.com/embed/uqJ9u7GSaYM', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/b/t/btdq_main_poster.jpg', 'Newlywed couple Ted and Tami-Lynn want to have a baby, but in order to qualify to be a parent, Ted will have to prove he\'s a person in a court of law.', 'GP09', '2021-08-19T10:52:41.677', 5),
(1283, 'Lat mat 48h', 'lat-mat-48h', 'https://www.youtube.com/embed/w3VI43L_Mn8', 'http://movie0706.cybersoft.edu.vn/hinhanh/trainwreck.jpg', 'Having thought that monogamy was never possible, a commitment-phobic career woman may have to face her fears when she meets a good guy.', 'GP09', '2019-07-29T00:00:00', 5),
(1284, 'Cuộc Chiến Sinh Tử', 'cuoc-chien-sinh-tu-abc', 'https://www.youtube.com/embed/_rUC3-pNLyc', 'http://movie0706.cybersoft.edu.vn/hinhanh/insideout.jpg', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'GP09', 'Invalid Date', 6),
(1322, 'John Wick', 'john-wick', 'https://www.youtube.com/embed/XGk2EfbD_Ps', 'http://movie0706.cybersoft.edu.vn/hinhanh/john-wick-iiisssssssssxxxssssssssssssssssssss_gp09.jpg', 'Mạng đổi mạng là một bộ phim hành động Mỹ sản xuất năm 2014, được đạo diễn bởi Chad Stahelski. Phim có sự tham gia của các diễn viên Keanu Reeves, Michael Nyqvist, Alfie Allen, Adrianne Palicki, Bridget Moynahan, Ian McShane, Willem Dafoe, John Leguizamo ', 'GP09', '2022-01-24T00:00:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phiminsertvalichchieuinsert`
--

CREATE TABLE `phiminsertvalichchieuinsert` (
  `plid` int(11) NOT NULL,
  `phiminsert` int(11) NOT NULL,
  `lichchieuinsert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phiminsertvalichchieuinsert`
--

INSERT INTO `phiminsertvalichchieuinsert` (`plid`, `phiminsert`, `lichchieuinsert`) VALUES
(1, 1322, 16531),
(2, 1322, 16532),
(3, 1282, 15289),
(4, 1284, 15343),
(5, 1283, 15235),
(10, 1322, 16540);

-- --------------------------------------------------------

--
-- Table structure for table `thongtindangnhapvm`
--

CREATE TABLE `thongtindangnhapvm` (
  `id` int(11) DEFAULT NULL,
  `taiKhoan` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vevm`
--

CREATE TABLE `vevm` (
  `id` int(11) NOT NULL,
  `maGhe` int(11) NOT NULL,
  `giaVe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cumrap`
--
ALTER TABLE `cumrap`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cumrapvalichchieuinsert`
--
ALTER TABLE `cumrapvalichchieuinsert`
  ADD PRIMARY KEY (`clid`),
  ADD KEY `cumraps` (`cumrap`),
  ADD KEY `lichchieuinsert` (`lichchieuinsert`);

--
-- Indexes for table `danhsachrap`
--
ALTER TABLE `danhsachrap`
  ADD PRIMARY KEY (`did`),
  ADD KEY `maCumRap` (`maCumRap`);

--
-- Indexes for table `danhsachvedat`
--
ALTER TABLE `danhsachvedat`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `danhsachvedatvevm`
--
ALTER TABLE `danhsachvedatvevm`
  ADD PRIMARY KEY (`vmid`),
  ADD KEY `danhSachVeDatId` (`danhSachVeDatId`),
  ADD KEY `veVMId` (`veVMId`);

--
-- Indexes for table `datve`
--
ALTER TABLE `datve`
  ADD PRIMARY KEY (`maGhe`),
  ADD KEY `mlc` (`maLichChieu`);

--
-- Indexes for table `hethongrap`
--
ALTER TABLE `hethongrap`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hethongrapvacumrap`
--
ALTER TABLE `hethongrapvacumrap`
  ADD PRIMARY KEY (`hcid`),
  ADD KEY `hethongrap` (`hethongrap`),
  ADD KEY `cumrap` (`cumrap`);

--
-- Indexes for table `hethongrapvaphim`
--
ALTER TABLE `hethongrapvaphim`
  ADD PRIMARY KEY (`hpid`),
  ADD KEY `maHeThongRap` (`maHeThongRap`),
  ADD KEY `maPhim` (`maPhim`);

--
-- Indexes for table `laythongtincanhanvm`
--
ALTER TABLE `laythongtincanhanvm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lichchieuinsert`
--
ALTER TABLE `lichchieuinsert`
  ADD PRIMARY KEY (`maLichChieu`);

--
-- Indexes for table `nguoidungvm`
--
ALTER TABLE `nguoidungvm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phiminsert`
--
ALTER TABLE `phiminsert`
  ADD PRIMARY KEY (`maPhim`);

--
-- Indexes for table `phiminsertvalichchieuinsert`
--
ALTER TABLE `phiminsertvalichchieuinsert`
  ADD PRIMARY KEY (`plid`),
  ADD UNIQUE KEY `lichchieuinsert` (`lichchieuinsert`),
  ADD KEY `cphim` (`phiminsert`);

--
-- Indexes for table `vevm`
--
ALTER TABLE `vevm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cumrap`
--
ALTER TABLE `cumrap`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cumrapvalichchieuinsert`
--
ALTER TABLE `cumrapvalichchieuinsert`
  MODIFY `clid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `danhsachrap`
--
ALTER TABLE `danhsachrap`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `danhsachvedat`
--
ALTER TABLE `danhsachvedat`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhsachvedatvevm`
--
ALTER TABLE `danhsachvedatvevm`
  MODIFY `vmid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datve`
--
ALTER TABLE `datve`
  MODIFY `maGhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `hethongrap`
--
ALTER TABLE `hethongrap`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hethongrapvacumrap`
--
ALTER TABLE `hethongrapvacumrap`
  MODIFY `hcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hethongrapvaphim`
--
ALTER TABLE `hethongrapvaphim`
  MODIFY `hpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laythongtincanhanvm`
--
ALTER TABLE `laythongtincanhanvm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lichchieuinsert`
--
ALTER TABLE `lichchieuinsert`
  MODIFY `maLichChieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16541;

--
-- AUTO_INCREMENT for table `nguoidungvm`
--
ALTER TABLE `nguoidungvm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `phiminsert`
--
ALTER TABLE `phiminsert`
  MODIFY `maPhim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1345;

--
-- AUTO_INCREMENT for table `phiminsertvalichchieuinsert`
--
ALTER TABLE `phiminsertvalichchieuinsert`
  MODIFY `plid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vevm`
--
ALTER TABLE `vevm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cumrapvalichchieuinsert`
--
ALTER TABLE `cumrapvalichchieuinsert`
  ADD CONSTRAINT `cumraps` FOREIGN KEY (`cumrap`) REFERENCES `cumrap` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lichchieuinsert` FOREIGN KEY (`lichchieuinsert`) REFERENCES `lichchieuinsert` (`maLichChieu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `danhsachrap`
--
ALTER TABLE `danhsachrap`
  ADD CONSTRAINT `maCumRap` FOREIGN KEY (`maCumRap`) REFERENCES `cumrap` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `danhsachvedatvevm`
--
ALTER TABLE `danhsachvedatvevm`
  ADD CONSTRAINT `danhSachVeDatId` FOREIGN KEY (`danhSachVeDatId`) REFERENCES `danhsachvedat` (`vid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `veVMId` FOREIGN KEY (`veVMId`) REFERENCES `vevm` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `datve`
--
ALTER TABLE `datve`
  ADD CONSTRAINT `mlc` FOREIGN KEY (`maLichChieu`) REFERENCES `lichchieuinsert` (`maLichChieu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hethongrapvacumrap`
--
ALTER TABLE `hethongrapvacumrap`
  ADD CONSTRAINT `cumrap` FOREIGN KEY (`cumrap`) REFERENCES `cumrap` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hethongrap` FOREIGN KEY (`hethongrap`) REFERENCES `hethongrap` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hethongrapvaphim`
--
ALTER TABLE `hethongrapvaphim`
  ADD CONSTRAINT `maHeThongRap` FOREIGN KEY (`maHeThongRap`) REFERENCES `hethongrap` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maPhim` FOREIGN KEY (`maPhim`) REFERENCES `phiminsert` (`maPhim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phiminsertvalichchieuinsert`
--
ALTER TABLE `phiminsertvalichchieuinsert`
  ADD CONSTRAINT `clichchieu` FOREIGN KEY (`lichchieuinsert`) REFERENCES `lichchieuinsert` (`maLichChieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cphim` FOREIGN KEY (`phiminsert`) REFERENCES `phiminsert` (`maPhim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
