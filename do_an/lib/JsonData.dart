import 'package:flutter/services.dart';

class DiaDanhDataJson {
  String tenDD;
  String diachi;
  String mota;
  String imgDD;
  String Binhluan;
  int danhgia;
  int Luotdanhgia;

  DiaDanhDataJson(
      {this.tenDD,
      this.diachi,
      this.mota,
      this.imgDD,
      this.Binhluan,
      this.danhgia,
      this.Luotdanhgia});

  DiaDanhDataJson.fromJson(Map<String, dynamic> json) {
    tenDD = json['tenDD'];
    diachi = json['diachi'];
    mota = json['mota'];
    imgDD = json['imgDD'];
    Binhluan = json['Binhluan'];
    danhgia = json['danhgia'];
    Luotdanhgia = json['Luotdanhgia'];
  }
}

class KhachSanDataJson {
  String tenKS;
  String loai;
  String imgKS;
  String diachi;

  KhachSanDataJson({
    this.tenKS,
    this.loai,
    this.imgKS,
    this.diachi,
  });

  KhachSanDataJson.fromJson(Map<String, dynamic> json) {
    tenKS = json['tenKS'];
    loai = json['loai'];
    imgKS = json['imgKS'];
    diachi = json['diachi'];
  }
}

class NhaHangDataJson {
  String tenNhaHang;
  String imgNhaHang;
  String diachi;

  NhaHangDataJson({
    this.tenNhaHang,
    this.imgNhaHang,
    this.diachi,
  });

  NhaHangDataJson.fromJson(Map<String, dynamic> json) {
    tenNhaHang = json['tenNhaHang'];
    imgNhaHang = json['imgNhaHang'];
    diachi = json['diachi'];
  }
}

class TaiKhoanDataJson {
  String TenKH;
  String imgTK;
  String Ngaysinh;
  String diachi;
  bool gioitinh;
  String email;
  String password;

  TaiKhoanDataJson(
      {this.TenKH,
      this.imgTK,
      this.Ngaysinh,
      this.diachi,
      this.gioitinh,
      this.email,
      this.password});

  TaiKhoanDataJson.fromJson(Map<String, dynamic> json) {
    TenKH = json['TenKH'];
    imgTK = json['imgTK'];
    Ngaysinh = json['Ngaysinh'];
    diachi = json['diachi'];
    gioitinh = json['gioitinh'];
    email = json['email'];
    password = json['password'];
  }
}
