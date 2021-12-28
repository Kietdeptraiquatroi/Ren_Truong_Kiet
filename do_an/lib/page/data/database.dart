import 'package:flutter/material.dart';

class DiaDanh {
  String tenDD, diachi, mota;
  Image imgDD;
  String Binhluan;
  int danhgia, Luotdanhgia;
  DiaDanh(
    this.tenDD,
    this.diachi,
    this.mota,
    this.imgDD,
    this.Binhluan,
    this.danhgia,
    this.Luotdanhgia,
  );

  List<DiaDanh> _diadanh = [
    DiaDanh(
        'Đảo Lý Sơn',
        'thôn đông, an hải, lý sơn, quảng ngãi,',
        'Lý Sơn là một huyện đảo thuộc tỉnh Quảng Ngãi, Việt Nam.'
            'Trước đây Lý Sơn được gọi là Cù lao Ré theo cách lý giải của dân gian là cù lao có nhiều cây Ré'
            'Hòn đảo là vết tích còn lại của một núi lửa với 5 miệng, được hình thành cách đây khoảng 25-30 triệu năm.'
            '5 ngọn núi là nguồn giữ các mạch nước ngầm chính cung cấp nguồn nước cho toàn bộ người dân trên đảo.',
        Image.asset('images\DiaDanh\1.ipg'),
        'Đảo Lý Sơn quả thật rất đẹp',
        5,
        500),
    DiaDanh(
        'Bãi Sau Biển Vũng Tàu',
        'Vũng tàu',
        'Bãi Sau là tên một bãi biển thuộc thành phố Vũng Tàu, tỉnh Bà Rịa-Vũng Tàu, Việt Nam.'
            ' Bãi Sau tọa lạc tại bờ biển phía đông của Vũng Tàu',
        Image.asset('images\DiaDanh\2.ipg'),
        'Thật Tuyệt',
        5,
        3000),
    DiaDanh(
        'Đảo Phú Quốc',
        'Kiên Giang',
        'Phú Quốc là hòn đảo lớn nhất Việt Nam, nằm trong vịnh Thái Lan.'
            ' Đảo Phú Quốc cùng với các đảo nhỏ hơn ở lân cận và quần đảo Thổ Chu nằm cách đó 55 hải lý về phía tây nam',
        Image.asset('images\DiaDanh\3.ipg'),
        'Thật vui khi được đến 1 nơi xinh đẹp như đảo phú quốc',
        5,
        4000),
    DiaDanh(
        'Vịnh Hạ Long',
        'Quảng Ninh',
        'Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam'
            ' bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh.',
        Image.asset('images\DiaDanh\4.ipg'),
        'Cảnh vật thực sự quá đẹp',
        5,
        2100),
    DiaDanh(
        'Hang Sơn Đoòng',
        'Quảng Bình',
        'Hang Sơn Đoòng là một hang động tự nhiên tại xã Tân Trạch, huyện Bố Trạch, tỉnh Quảng Bình, Việt Nam.'
            ' Hang Sơn Đoòng được coi là hang động tự nhiên lớn nhất thế giới đã biết. Hang này nằm trong quần thể hang động Phong Nha-Kẻ Bàng',
        Image.asset('images\DiaDanh\5.ipg'),
        'Đây là hang động đẹp nhất mà tôi từng thấy',
        5,
        832),
  ];
}

class Khachsan {
  String tenKS, loai;
  Image imgKS;
  String diachi;

  Khachsan(this.tenKS, this.loai, this.imgKS, this.diachi);

  List<Khachsan> _khachsan = [
    Khachsan('Nhà nghỉ Hoàng Thông (Hoang Thong Motel)', 'Nhà Nghỉ',
        Image.asset('images\KhachSan\1.ipg'), 'Quảng Ngãi'),
    Khachsan('Mường Thanh Holiday Lý Sơn (Muong Thanh Holiday Ly Son)',
        'Khách Sạn', Image.asset('images\KhachSan\2.ipg'), 'Quảng Ngãi'),
    Khachsan('Sun Hill Hotel', 'Khách Sạn',
        Image.asset('images\KhachSan\3.ipg'), 'Vũng Tàu'),
    Khachsan('Hoa Mai Hotel', 'Khách Sạn', Image.asset('images\KhachSan\4.ipg'),
        'Quảng Bình'),
    Khachsan('Draha Halong Hotel', 'Khách Sạn',
        Image.asset('images\KhachSan\5.ipg'), 'Quảng Ninh'),
  ];
}

class NhaHang {
  String tenNhaHang;
  Image imgNhaHang;
  String diaChi;

  NhaHang(this.tenNhaHang, this.imgNhaHang, this.diaChi);

  List<NhaHang> _quanan = [
    //đảo lý sơn
    NhaHang('Cơm Hải Sản Đại Hằng', Image.asset('img/NhaHang/1.1.jpg'),
        'Quảng Ngãi'),
    NhaHang('Nhà Hàng Hoàng Khuyên', Image.asset('img/NhaHang/1.2.jpg'),
        'Quảng Ngãi'),
    NhaHang(
        'Hải Sản Thành Lợi', Image.asset('img/NhaHang/1.3.jpg'), 'Quảng Ngãi'),
    //vũng tàu
    NhaHang('Horizon Bar', Image.asset('img/NhaHang/2.1.jpg'), 'Vũng Tàu'),
    NhaHang('Nhà Hàng Thu Ba', Image.asset('img/NhaHang/2.2.jpg'), 'Vũng Tàu'),
    NhaHang('Ốc Thiên Nhiên Bãi Sau', Image.asset('img/NhaHang/2.3.jpg'),
        'Vũng Tàu'),
    //đảo phú quốc
    NhaHang('Nhà hàng Phú Quốc Mỹ Lan', Image.asset('img/NhaHang/3.1.jpg'),
        'Kiên Giang'),
    NhaHang('Nhà hàng Phú Quốc Sông Xanh', Image.asset('img/NhaHang/3.2.jpg'),
        'Kiên Giang'),
    NhaHang('Biển Xanh', Image.asset('img/NhaHang/3.3.jpg'), 'Kiên Giang'),
    //vịnh hạ long
    NhaHang(
        'Nhà Hàng Linh Đan', Image.asset('img/NhaHang/4.1.jpg'), 'Quảng Ninh'),
    NhaHang(
        'Nhà hàng Avocado', Image.asset('img/NhaHang/4.2.jpg'), 'Quảng Ninh'),
    NhaHang(
        'Nhà Hàng Vịnh Cát', Image.asset('img/NhaHang/4.3.jpg'), 'Quảng Ninh'),
    //hang sơn đoòng
    NhaHang('Momma Ds Rooftop Lounge & Soiree',
        Image.asset('img/NhaHang/5.1.jpg'), 'Quảng Bình'),
    NhaHang('The Villas Restaurant', Image.asset('img/NhaHang/5.2.jpg'),
        'Quảng Bình'),
    NhaHang('A Little Leaf', Image.asset('img/NhaHang/5.3.jpg'), 'Quảng Bình'),
  ];
}

class TaiKhoan {
  String TenKH;
  Image imgTK;
  String Ngaysinh;
  String diachi;
  bool gioitinh;
  String email, password;

  TaiKhoan(this.TenKH, this.imgTK, this.Ngaysinh, this.diachi, this.gioitinh,
      this.email, this.password);

  List<TaiKhoan> _taikhoan = [
    TaiKhoan('admin', Image.asset('img/TaiKhoan/admin.jpg'), '01/11/2001',
        'Tp.HCM', true, 'admin.@gmail.com', 'admin'),
    TaiKhoan('Lê Thị Thu Lan', Image.asset('img/TaiKhoan/1.jpg'), '03/12/2001',
        'Tiềng Giang', false, 'LTTL.@gmail.com', '1234'),
    TaiKhoan('Dương Nhi', Image.asset('img/TaiKhoan/2.jpg'), '01/6/2001',
        'Vũng Tàu', false, 'duongnhi.@gmail.com', '1234'),
    TaiKhoan('Khả Hân', Image.asset('img/TaiKhoan/3.jpg'), '23/11/2001',
        'Tp.HCM', false, 'khahan.@gmail.com', '1234'),
    TaiKhoan('Nguyễn Thị Khánh Trường', Image.asset('img/TaiKhoan/4.jbg'),
        '12/01/2001', 'Quảng Ngãi', false, 'khanhtruong.@gmail.com', '1234'),
  ];
}
