-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 18, 2022 lúc 11:43 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `do_an_ltdd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadanh`
--

CREATE TABLE `diadanh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenDD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgDD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhgia` int(11) NOT NULL,
  `Luotdanhgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diadanh`
--

INSERT INTO `diadanh` (`id`, `tenDD`, `diachi`, `mota`, `imgDD`,`SDT`, `danhgia`, `Luotdanhgia`) VALUES
(1, 'Đảo Lý Sơn', 'Thôn Đông, An Hải, Lý Sơn, Quảng Ngãi', 'Lý Sơn là một huyện đảo thuộc tỉnh Quảng Ngãi, Việt Nam. Trước đây Lý Sơn được gọi là Cù lao Ré theo cách lý giải của dân gian là cù lao có nhiều cây Ré', 'images/DiaDanh/1.jpg','0349376837', 0, 0),
(2, 'Bãi Sau Biển Vũng Tàu', 'Phan Văn Trị, P. Thắng Tam, Thành phố Vũng Tàu, T. Bà Rịa - Vũng Tàu', 'Bãi Sau là tên một bãi biển thuộc thành phố Vũng Tàu, tỉnh Bà Rịa-Vũng Tàu, Việt Nam. Bãi Sau tọa lạc tại bờ biển phía đông của Vũng Tàu', 'images/DiaDanh/2.jpg','0349376837', 0, 0),
(3, 'Đảo Phú Quốc', 'Đảo Phú Quốc, Tt. Dương Đông, H. Phú Quốc, T. Kiên Giang', 'Phú Quốc là hòn đảo lớn nhất Việt Nam, nằm trong vịnh Thái Lan. Đảo Phú Quốc cùng với các đảo nhỏ hơn ở lân cận và quần đảo Thổ Chu nằm cách đó 55 hải lý về phía tây nam', 'images/DiaDanh/3.jpg','0349376837', 0, 0),
(4, 'Vịnh Hạ Long', 'Vịnh Hạ Long, Tp. Hạ Long, Quảng Ninh', 'Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh.', 'images/DiaDanh/4.jpg','0349376837', 0, 0),
(5, 'Hang Sơn Đoòng', 'Xã Tân Trạch, H. Bố Trạch, T. Quảng Bình', 'Hang Sơn Đoòng là một hang động tự nhiên tại xã Tân Trạch, huyện Bố Trạch, tỉnh Quảng Bình, Việt Nam. Hang Sơn Đoòng được coi là hang động tự nhiên lớn nhất thế giới đã biết. Hang này nằm trong quần thể hang động Phong Nha-Kẻ Bàng', 'images/DiaDanh/5.jpg','0349376837', 0, 0),
(6, 'Cù Lao Chàm', 'Xã đảo Tân Hiệp, thành phố Hội An, tỉnh Quảng Nam', 'Cù lao Chàm là một cụm đảo, về mặt hành chính trực thuộc xã đảo Tân Hiệp, thành phố Hội An, tỉnh Quảng Nam.  Nằm cách bờ biển Cửa Đại 16 km và đã được UNESCO công nhận là khu dự trữ sinh quyển thế giới', 'images/DiaDanh/6.jpg','0349376837', 0, 0),
(7, 'Chùa Thiên Mụ', 'Đồi Hà Khê, 148, Nguyễn Phúc Nguyên, P. Hương Long, Thành phố Huế, T. Thừa Thiên Huế', 'Chùa Thiên Mụ hay còn gọi là chùa Linh Mụ là một ngôi chùa cổ nằm trên đồi Hà Khê, tả ngạn sông Hương, cách trung tâm thành phố Huế (Việt Nam) khoảng 5 km về phía tây. Chùa Thiên Mụ chính thức khởi lập năm Tân Sửu (1601), đời chúa Tiên Nguyễn Hoàng - vị chúa Nguyễn đầu tiên ở Đàng', 'images/DiaDanh/7.jpg','0349376837', 0, 0),
(8, 'Phố cổ Hội An', 'Thành phố Hội An, T. Quảng Nam', 'Phố cổ Hội An là một đô thị cổ nằm ở hạ lưu sông Thu Bồn, thuộc vùng đồng bằng ven biển tỉnh Quảng Nam, Việt Nam. cách thành phố Đà Nẵng khoảng 30 km về phía Nam. Nhờ những yếu tố địa lý và khí hậu thuận lợi', 'images/DiaDanh/8.jpg','0349376837', 0, 0),
(9, 'Đèo Hải Vân', 'P. Hòa Hiệp Bắc, Q. Liên Chiểu, Tp. Đà Nẵng', 'Đèo Hải Vân còn có tên là đèo Ải Vân (vì trên đỉnh đèo xưa kia có một cửa ải) hay đèo Mây (vì đỉnh đèo thường có mây che phủ),  cao 500 m (so với mực nước biển), dài 20 km, cắt ngang dãy núi Bạch Mã (là một phần của dãy Trường Sơn chạy cắt ra sát biển', 'images/DiaDanh/9.jpg','0349376837', 0, 0),
(10, 'Đồi Cát Bay - Mũi Né', 'khu phố 5, phường Mũi Né, thành phố Phan Thiết, Bình Thuận', 'Đồi Cát Mũi Né (tên gọi khác: Đồi Cát Bay, Đồi Hồng) là một trong những bãi cát trải dài nhiêu cây số và lan rộng ở một diện tích không nhất định với tổng thể lớn.', 'images/DiaDanh/10.jpg','0349376837', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachsan`
--

CREATE TABLE `khachsan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `danhgia` int(11) NOT NULL,
  `Luotdanhgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachsan`
--

INSERT INTO `khachsan` (`id`, `tenKS`, `loai`, `imgKS`, `diachi`, `MoTa`, `SDT`, `danhgia`, `Luotdanhgia`) VALUES
(1, 'Nhà nghỉ Hoàng Thông (Hoang Thong Motel)', 'Nhà Nghỉ', 'images/KhachSan/1.jpg', 'Ben Dinh Thon Dong, An Vinh, Ly Son, Quang Ngai', 'Nhắm tới đối tượng du khách cần địa điểm lưu trú giá rẻ, Nhà nghỉ Hoàng Thông (Hoang Thong Motel) cung cấp dịch vụ nghỉ dưỡng với những tiện nghi cơ bản nhưng vẫn tạo cho du khách cảm giác thoải mái nhất khi ở đây.','0336558779', 0, 0),
(2, 'Mường Thanh Holiday Lý Sơn (Muong Thanh Holiday Ly Son)', 'Khách Sạn', 'images/KhachSan/2.jpg', 'Thôn Đông, Xã An Vĩnh, H. Lý Sơn, T. Quảng Ngãi', 'Được xây dựng ở vị trí khá đẹp, các phòng nghỉ ở đây có view hướng ra núi hoặc vườn. Từ sân bay về khách sạn chỉ cách chừng 35km. Các phòng nghỉ được trang bị đầy đủ tiện nghi, không gian thoáng mát, sạch sẽ.\"','0336558749', 0, 0),
(3, 'Sun Hill Hotel', 'Khách Sạn', 'images/KhachSan/3.jpg', 'H60 Phan Chu Trinh, Phường 2, Tp. Vũng Tàu, Vũng Tàu', 'Sở hữu tổng cộng 60 phòng nghỉ, Khách sạn Sun Hill Hotel cung cấp dịch vụ nghỉ dưỡng với chất lượng 3 sao. Không đơn thuần cung cấp dịch vụ lưu trú, ở tầng 1 của khách sạn là nơi có thể tổ chức các buổi tiệc lớn với sức chứa lên tới 300 chỗ ngồi. Nhà hàng ở đây chuyên phục vụ các món Á, Âu rất hấp dẫn.','0336558179', 0, 0),
(4, 'Hoa Mai Hotel', 'Khách Sạn', 'images/KhachSan/4.jpg', '44, Đường 17/8, P. Minh Xuân, Thành phố Tuyên Quang, T. Tuyên Quang', 'Hoa Mai Hotel chuyên cung cấp dịch vụ lưu trú giá rẻ cho du khách khi tới Tuyên Quang. Với giá phòng bình dân nhưng các phòng nghỉ ở đây vẫn được trang bị đầy đủ tiện nghi cơ bản. Không gian phòng tương đối rộng, được bài trí đơn giản, gọn gàng, sạch sẽ.','0336558279', 0, 0),
(5, 'Draha Halong Hotel', 'Khách Sạn', 'images/KhachSan/5.jpg', 'Phu Gia 4, Vinhomes Dragon Bay, Ward Hon Gai, Ha Long City, Quang Ninh Province, Hạ Long, Việt Nam', 'Draha Halong Hotel chỉ ᴠới 35 phòng nghỉ nhưng đều ѕạch, đẹp, đầу đủ tiện nghi. Diện tích phòng cũng khá rộng để khách cảm thấу thoải mái khi nghỉ dưỡng.','0336558379', 0, 0),
(6, 'Nhà nghỉ Trường Thu', 'Nhà Nghỉ', 'images/KhachSan/6.jpg', 'Thôn 4, Đức Chánh, Mộ Đức, Quảng Ngãi', 'Phòng nghỉ ѕạch ѕẽ, ѕang trọng, thái độ nhân ᴠiên phục ᴠụ ân cần, chu đáo. Khách ѕạn có dịch ᴠụ ăn uống khá ngon ᴠà đảm bảo chất lượng cho du khách. Bên cạnh đó phòng ăn lớn, không gian thoáng đãng.','0336558579', 0, 0),
(7, 'Van Truong Holiday Lý Sơn', 'Khách Sạn', 'images/KhachSan/7.jpg', 'Thôn 1, Đức Chánh, Mộ Đức, Quảng Ngãi', 'Van Truong Holiday Lý Sơn nằm ở ᴠị trí trung tâm thuận lợi, là khách ѕạn Quảng Ngãi 4 ѕao hiện đại, ѕang trọng, bậc nhất ở đâу.Với 150 phòng được thiết kế tiện nghi, thanh lịch, chắc chắc ѕẽ làm hài lòng kể cả ᴠị khách khó tính nhất. Khách ѕạn còn cung cấp nhiều dịch ᴠụ tiện ích, hoàn hảo nhất như bể bơi bốn mùa, ẩm thực Á – Âu đa dạng, ѕpa, maѕѕage thư giãn,…','0336558679', 0, 0),
(8, 'Anh Kiet Hotel', 'Khách Sạn', 'images/KhachSan/8.jpg', '169, Thùy Vân, P. 8, Thành phố Vũng Tàu, T. Bà Rịa - Vũng Tàu', 'Được xây dựng từ năm 2009, với tổng cộng 90 phòng nghỉ chất lượng. Mỗi phòng ở đây đều được trang bị tiện nghi sang trọng, có thêm két sắt mini để bạn có thể cất các đồ có giá trị. Trong khách sạn có tích hợp thêm nhà hàng với sức chứa từ 300-500 chỗ ngồi, chuyên phục vụ các món Á, Âu','0336558779', 0, 0),
(9, 'Tam Tu Sat Hotel', 'Khách Sạn', 'images/KhachSan/9.jpg', '405 Trương Pháp, Biển Nhật Lệ, TP. Đồng Hới, Quảng Bình\"', 'Sở hữu tổng cộng 60 phòng nghỉ, Tam Tu Sat Hotel cung cấp dịch vụ nghỉ dưỡng với chất lượng 3 sao. Từ đây bạn có thể ngắm nhìn vẻ đẹp thơ mộng của thành phố','0336558779', 0, 0),
(10, 'Uchiha Sasuren Hotel', 'Khách Sạn', 'images/KhachSan/10.jpg', 'Trần Nhân Tông, P. Yên Thanh, Thành phố Uông Bí, T. Quảng Ninh', 'Được xây dựng ở vị trí khá đẹp, các phòng nghỉ ở đây có view hướng ra núi hoặc vườn. Từ sân bay về khách sạn chỉ cách chừng 35km. Các phòng nghỉ được trang bị đầy đủ tiện nghi, không gian thoáng mát, sạch sẽ.','0336558979', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_01_18_022143_create_dia_danhs_table', 1),
(2, '2022_01_18_022204_create_khach_sans_table', 1),
(3, '2022_01_18_022224_create_nha_hangs_table', 1),
(5, '2022_01_18_022304_create_thong_baos_table', 1),
(6, '2022_01_18_022241_create_tai_khoans_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhahang`
--

CREATE TABLE `nhahang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenNhaHang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgNhaHang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `MoTa` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhgia` int(11) NOT NULL,
  `Luotdanhgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhahang`
--

INSERT INTO `nhahang` (`id`, `tenNhaHang`, `imgNhaHang`, `diachi`, `SDT`, `MoTa`, `danhgia`, `Luotdanhgia`) VALUES
(1, 'Kawaii Sushi', 'images/NhaHang/1.jpg', 'Nguyễn Thiệu, P. Nghĩa Chánh, Thành phố Quảng Ngãi, T. Quảng Ngãi','0336558371', 'Là cái tên được nhắc đến đầu tiên trong danh sách nhà hàng ngon tại Quảng Ngãi thực khách nhất định phải đến thử dù chỉ một lần. Ở đây chuyên phục vụ các món ăn Nhật Bản và Hàn Quốc.', 0, 0),
(2, 'Nhà Hàng Hoàng Khuyên', 'images/NhaHang/2.jpg', 'Tổ dân phố 1, Quốc lộ 1A, Tt. Mộ Đức, H. Mộ Đức, T. Quảng Ngãi','0336558371', 'Nếu đã thử qua các món ở các nhà hàng ngon tại Quảng Ngãi được giới thiệu trên đây và bạn muốn thay đổi không khí tạo cảm giác mới lạ, thì hãy ghé ngay Quán Ngon. Ở đây nổi tiếng với các món như: Cá lóc nướng mọi, cá rô chiên giòn, sò huyết rang me, lẩu ốc riêu cua, gà ta luộc, ếch nướng lá chanh, tôm đất rang muối...', 0, 0),
(3, 'Hải Sản Thành Lợi', 'images/NhaHang/3.jpg', 'Quốc lộ 1A, Xã Đức Nhuận, H. Mộ Đức, T. Quảng Ngãi','0336558373', 'Hải Sản Thành Lợi là cái tên thứ ba góp mặt trong danh sách nhà hàng ngon tại Quảng Ngãi chuyên phục vụ các món ăn hải sản tươi sống được chế biến tại chỗ. Ở đây có đa dạng loại hải sản chế biến với nhiều hình thức khác nhau phù hợp với sở thích của mỗi người.', 0, 0),
(4, 'Nhà Hàng Eo Biển Xanh', 'images/NhaHang/4.jpg', '714A, Đường 30/4, P. 11, Thành phố Vũng Tàu, T. Bà Rịa - Vũng Tàu','0336558374', 'Tọa lạc tại khu vực Bãi Dâu Vũng Tàu thơ mộng, cách trung tâm thành phố 5km - Nhà Hàng Hải Sản Eo Biển Xanh là điểm đến lý tưởng hứa hẹn nhiều điều bất ngờ cho du khách gần xa. Địa thế nhà hàng nằm sát mặt biển, với sức chứa 1.500 khách & hồ hải sản hình lục giác lớn nhất Vũng Tàu, phong phú & đa dạng về chủng loại hải sản từ các vùng biển đảo hội tụ về đây, sẽ mang lại cho bạn sự thích thú, khám phá & trải nghiệm những hải sản từ thiên nhiên.', 0, 0),
(5, 'La Sirena Seafood Restaurant', 'images/NhaHang/5.jpg', 'Trần Hưng Đạo, P. 3, Thành phố Vũng Tàu, T. Bà Rịa - Vũng Tàu','0336558375', 'La Sirena Seafood Restaurant là nhà hàng có vị trí tuyệt đẹp hướng ra biển, tạo cảm giác gần gũi thiên nhiên, thoáng đãng, trong lành. Cảm giác này lại càng được nhân đôi với thiết kế mở của nhà hàng mang phong cách châu Mĩ thoải mái nhưng vẫn sang trọng.', 0, 0),
(6, 'Cơm niêu Đại Việt', 'images/NhaHang/6.jpg', '78-80, Hạ Long, P. 2, Thành phố Vũng Tàu, T. Bà Rịa - Vũng Tàu','0336558376', 'Không nằm ngoài danh sách này, Cơm niêu Đại Việt cũng là một cái tên nổi bật trong số các quán cơm niêu ngon và chất lượng nhất Vũng Tàu mà Toplist muốn nhắc đến ngày hôm nay.Nhà hàng cơm niêu Đại Việt mang đến cho thực khách những món ăn ngon và tốt cho sức khoẻ với nguyên liệu tươi mới, giàu dinh dưỡng, giá cả hợp lý.', 0, 0),
(7, 'Nhà hàng Gió Biển', 'images/NhaHang/7.jpg', '644 Đường 3/2, Đối diện Dê Đức Tài 1, Rạch Giá, Kiên Giang','0336558377', 'Nhà hàng Gió Biển có nhiều năm kinh nghiệm phục vụ các món ăn đặc sản từ rừng và biển. Thực đơn phong phú với hàng trăm món ăn đem đến cho thực khách nhiều lựa chọn. Hơn nữa, nhà hàng sở hữu đội ngũ nhân viên phục vụ tận tình và chuyên nghiệp.', 0, 0),
(8, 'Soowon BBQ Rạch Giá', 'images/NhaHang/8.jpg', 'Lô G8-33+34 đường 3/2 - Đối diện cục thuế Kiên Giang, Kiên Giang','0336558378', 'Muốn sở hữu một bữa tiệc thịt nướng đích thực trong một không gian đậm màu sắc Hàn Quốc thì các bạn hãy nhanh chân đến với Soowon BBQ. Nhà hàng này mê hoặc mọi tín đồ cuồng nướng - lẩu tại Kiên Giang. Đến với Soowon, chắc chắn bạn sẽ yêu ngay không gian nhà hàng. Nhà hàng mang đậm phong cách quán nướng Hàn Quốc với hệ thống bàn nướng hiện đại, an toàn, màu sắc nhà hàng tối giản nhưng vẫn gợi lên sự sang trọng.', 0, 0),
(9, 'Biển Xanh', 'images/NhaHang/9.jpg', 'Nguyễn An Ninh, Rạch Giá, Kiên Giang','0326558379', 'Là quán ăn ngon ở Rạch Giá mà thực khách không thể bỏ qua. Đây là địa điểm ăn sáng thân quen của người dân Rạch Giá.Dù nằm ở tuyến đường vắng, hơi khó tìm nhưng quán vẫn rất đông đúc khách ra vào.', 0, 0),
(10, 'Nhà hàng Góc Việt Quán', 'images/NhaHang/10.jpg', 'Đình Uông, P. Thanh Sơn, Thành phố Uông Bí, T. Quảng Ninh','0336558370', 'Nhà hàng Góc Việt Quán chính xác là một trong những câu trả lời hoàn hảo nhất dành cho bạn. Mặc dù mới thành lập cách đây hơn vài năm, thế nhưng Góc Việt Quán đã có những bước phát triển mạnh mẽ, được khách hàng và khách du lịch lựa chọn là điểm ghé qua mỗi khi đến Uông Bí, Quảng Ninh.', 0, 0),
(11, 'Hải sản Thiên Anh', 'images/NhaHang/11.jpg', 'Lê Văn Lương, P. Bãi Cháy, Thành phố Hạ Long, T. Quảng Ninh','0331558379', 'Giống như nhiều nhà hàng hải sản khác, ở Hải sản Thiên Anh khách chọn hải sản và đặt món ở tầng 1 rồi lên các tầng trên để ăn. Hải sản Thiên Anh không phải là quán sang trọng, nhưng cũng phục vụ vẫn lịch sự và phục vụ khá nhanh. Đồ hải sản tươi, ngon.', 0, 0),
(12, 'Quán Nướng Ngon', 'images/NhaHang/12.jpg', 'Ngõ 6, Hải Thịnh, P. Hồng Hải, Thành phố Hạ Long, T. Quảng Ninh','0332558379', 'Quán Nướng Ngon phục vụ khá nhiều món ăn khác nhau, từ lẩu, nướng, các món Hàn Quốc (cơm trộn,...) đến bún mẹt phù hợp cả hè hay đông. Các món ăn đều được ướp gia vị đậm đà, ăn không bị ngán. Ở đây, rau sống hay nhúng lẩu đều rửa sạch sẽ, kĩ càng. Nhân viên của quán Nướng Ngon phục vụ nhanh, nhiệt tình.', 0, 0),
(13, 'Nhà hàng Sabochi', 'images/NhaHang/13.jpg', 'ĐT20, Phong Nha, Bố Trạch, Quảng Bình','0333558379', 'Nhà hàng Sabochi với diện tích gần 10.000 m2 tọa lạc ngay trung tâm thành phố Đồng Hới. Nhà hàng có không gian ngoài trời và trong nhà với nhiều phòng Vip phục vụ du khách. Đặc biệt nhà hàng chuyên phục vụ khách Tour ăn sáng và các bữa ăn được chế biến từ Sâm Bố Chính.', 0, 0),
(14, 'hà hàng Đức Hạnh', 'images/NhaHang/14.jpg', 'Nguyễn Du, Đồng Mỹ, Tp. Đồng Hới, Quảng Bình','0334558379', 'Nhà hàng Đức Hạnh là nhà hàng đạt chuẩn phục vụ khách Du lịch do sở Văn hóa Thể thao Du lịch Quảng Bình cấp. Nhà hàng có không gian rộng rãi, thoáng mát, nhìn ra biển có sức chứa hơn 400 khách. Nhà hàng Đức Hạnh thuộc top những nhà hàng Quảng Bình có đội ngũ nhân viên nhiệt tình, thân thiện, đầu bếp giỏi chuyên phục vụ cho khách du lịch đến Quảng Bình.', 0, 0),
(15, 'Nhà hàng Phú Cường', 'images/NhaHang/15.jpg', 'Tiểu khu 13, Lý Thường Kiệt, P. Bắc Lý, Thành phố Đồng Hới, T.Quảng Bình','0335558379', 'Nhà hàng Phú Cường chuyên phục vụ các món ăn hải sản tươi sống đặc trưng của vùng biển Nhật Lệ như: tôm, cua, ghẹ, cá mú, các thu, sò, ốc, đẻn, ….khách hàng đến với Phú Cường sẽ được đi chợ hải sản trực tiếp, thoải mái lựa chọn cho mình những món hợp với khẩu vị và sở thích cá nhân. Nhà hàng này luôn là một trong những nhà hàng Quảng Bình được lòng của du khách du lịch mỗi khi tới đây.', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TenKH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgTK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngaysinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `TenKH`, `imgTK`, `Ngaysinh`,`SDT`, `gioitinh`, `email`, `password`) VALUES
(1, 'admin', 'images/TaiKhoan/admin.jpg', '01/11/2001','0322682753', 'true', 'admin@example.com', 'admin'),
(2, 'Lê Thị Thu Lan', 'images/TaiKhoan/1.jpg', '03/12/2001','0322669533', 'false', 'LTTL.@gmail.com', '1234'),
(3, 'Dương Nhi', 'images/TaiKhoan/2.jpg', '01/6/2001','0322456753', 'false', 'duongnhi.@gmail.com', '1234'),
(4, 'Khả Hân', 'images/TaiKhoan/3.jpg', '12/01/2001','0322789753', 'false', 'khahan.@gmail.com', '1234'),
(5, 'Nguyễn Thị Khánh Trường', 'images/TaiKhoan/4.jpg','0322456753', '01/11/2001', 'false', 'khanhtruong.@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noiDung` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `img`, `tieuDe`, `noiDung`) VALUES
(1, 'images/ThongBao/1.jpg', 'Ghé thâm những bến cảng đẹp nhất Việt Nam', 'Đường bờ biển dài của Việt Nam là điều kiện lý tưởng cho các bãi biển đẹp tuyệt vời \'trú ngụ\'. Nhờ địa hình tự nhiên có nhiều ưu đãi mà giao thương hàng hải của nước ta không kém phần nhộn nhịp, nhiều ra đời là đầu mối vô cùng quan trọng gắn kết Việt Nam với nền khinh tế thế giới. Những bến cảng từ lâu đã trở thành nơi hút khách du lịch vì sầm uất và sang chảnh của những chiếc du thuyền neo đậu chờ khách nơi đây.'),
(2, 'images/ThongBao/2.jpg', 'Những sân bay trực thăng \'có một không hai\' ở Việt Nam', 'Nằm ở nơi xa xôi nhất, từng là nơi tập kết xác lính Mỹ... là nét đẹp đặt biệt của những sân bay trức thăng có một không hai ở Việt Nam.'),
(3, 'images/ThongBao/3.jpg', '8 thành phố nên khám phá bằng xe đạp ở Việt Nam', 'Những con dốc nhỏ, góc cua gấp, cơn gió lạ, hàng quán vỉa hè... là những lý do để bạn lên kế hoạch cho hành trình đạp xa khám phá.'),
(4, 'images/ThongBao/4.jpg', 'Nóng trời thèm chén xu xoa', 'Mùa nóng, nhắc đến rau câu là tôi hình dung ra miếng xu xoa mát lạnh. Lập tức hai câu: \'Xu xoa ít vốn nhiều lời. Anh về bỏ vợ cưới người xa xa\' hiển hiện trong tâm trí. Để có những cọng rau câu sạch trơn bùn đất và rong rêu thì khâu ngâm, gặt, đập, chàn... tốn nhiều thời gian.'),
(5, 'images/ThongBao/5.jpg', 'Mắm cua - ngửi ghê ghê ăn dễ mê', 'Nhiều người mới ngửi lắc đầu, bịt mũi rồi vội né xa chẳng khác gì Tây ăn mắm tôm, nhưng khi đã \'chịu được mùi\' là ghiềng lúc nào không hay.'),
(6, 'images/ThongBao/6.jpg', 'Về đồng ăn bông', '\'Gió đưa gió đẩy về rẫy ăn còng, về sông ăn cá về đồng ăn... bông\', câu ca dao dó người Nam bộ đã trở nên nổi tiếng khi bông hoa các loại càng ngày được bà con miệt vườn tận tình đưa vào bữa ăn hằng ngày.'),
(7, 'images/ThongBao/7.jpg', 'Ốc tỏi, món ngon biển đảo Tây Nam', 'Là một trong những loài ốc ngon, giá trị dinh dưỡng cao,ốc tỏi có mặt nhiều ở đảo Phú Quốc, Hòn Tre, Hòn Nghệ, quần đảo Nam Du (Kiêng Giang) và các khu du lịch Hà Tiên, Cà Mau,..'),
(8, 'images/ThongBao/8.jpg', 'Hòn đảo hoang sơ đẹp ngất ngây của Việt Nam', 'Mùa hè - mùa tận hưởng của những chuyến du lịch gia đình thoải mái. Và biển luôn là tiếng vẫy gọi đầu tiên trong lòng mỗi người. Bởi ra biển sẽ được ngâm mình, được đi dạo trên những bãi cát, đón bình minh cũng như hoàng hôn trong không gian lãng mạn và đặc biệt thưởng thức các đặc sản biển.'),
(9, 'images/ThongBao/9.jpg', 'Vườn quốc gia nổi tiếng ở Việt Nam', 'Đối với những người ưa thích khám phá thì một chuyến du lịch đên tham gia vườn quốc gia là một gợi ý không tồi. Dưới đây là tổng hợp những khu vườn quốc gia nổi tiếng đẹp nhất mà bạn không thể bỏ qua.'),
(10, 'images/ThongBao/10.jpg', 'Rừng khộp Tây Nguyên mùa thay lá', 'Những ngày này, rừng khộp ở Tây Nguyên bước vào mùa đẹp nhất trong năm, khi lá cây đồng loạt chuyển sắc vàng sắc đỏ, rực rỡ đến mê hoạt lòng người. Một mù thay lá nữa lại về.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diadanh`
--
ALTER TABLE `diadanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhahang`
--
ALTER TABLE `nhahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `diadanh`
--
ALTER TABLE `diadanh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhahang`
--
ALTER TABLE `nhahang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
