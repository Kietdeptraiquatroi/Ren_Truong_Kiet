class DiaDanh_Model {
  String tenDD;
  String diachi;
  String mota;
  String imgDD;
  int danhgia;
  int luotdanhgia;

  DiaDanh_Model(
      {this.tenDD = "",
      this.diachi = "",
      this.mota = "",
      this.imgDD = "",
      this.danhgia,
      this.luotdanhgia});

  factory DiaDanh_Model.fromJson(Map<String, dynamic> json) {
    return DiaDanh_Model(
      tenDD: json['tenDD'],
      diachi: json['diachi'],
      mota: json['mota'],
      imgDD: json['imgDD'],
      danhgia: json['danhgia'],
      luotdanhgia: json['Luotdanhgia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenDD'] = this.tenDD;
    data['diachi'] = this.diachi;
    data['mota'] = this.mota;
    data['imgDD'] = this.imgDD;
    data['danhgia'] = this.danhgia;
    data['Luotdanhgia'] = this.luotdanhgia;
    return data;
  }
}

class KhachSan_Model {
  String tenKS;
  String loai;
  String imgKS;
  String diachi;
  String SDT;
  int danhgia;
  int luotdanhgia;

  KhachSan_Model(
      {this.tenKS = "",
      this.loai = "",
      this.imgKS = "",
      this.diachi = "",
      this.SDT = "",
      this.danhgia,
      this.luotdanhgia});

  factory KhachSan_Model.fromJson(Map<String, dynamic> json) {
    return KhachSan_Model(
      tenKS: json['tenKS'],
      loai: json['loai'],
      imgKS: json['imgKS'],
      diachi: json['diachi'],
      SDT: json['SDT'],
      danhgia: json['danhgia'],
      luotdanhgia: json['Luotdanhgia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenKS'] = this.tenKS;
    data['loai'] = this.loai;
    data['imgKS'] = this.imgKS;
    data['diachi'] = this.diachi;
    data['SDT'] = this.SDT;
    data['danhgia'] = this.danhgia;
    data['Luotdanhgia'] = this.luotdanhgia;
    return data;
  }
}

class NhaHang_Model {
  String tenNhaHang;
  String imgNhaHang;
  String diachi;
  String SDT;
  int danhgia;
  int luotdanhgia;

  NhaHang_Model(
      {this.tenNhaHang = "",
      this.imgNhaHang = "",
      this.diachi = "",
      this.SDT = "",
      this.danhgia,
      this.luotdanhgia});

  factory NhaHang_Model.fromJson(Map<String, dynamic> json) {
    return NhaHang_Model(
      tenNhaHang: json['tenNhaHang'],
      imgNhaHang: json['imgNhaHang'],
      diachi: json['diachi'],
      SDT: json['SDT'],
      danhgia: json['danhgia'],
      luotdanhgia: json['Luotdanhgia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenNhaHang'] = this.tenNhaHang;
    data['imgNhaHang'] = this.imgNhaHang;
    data['diachi'] = this.diachi;
    data['SDT'] = this.SDT;
    data['danhgia'] = this.danhgia;
    data['Luotdanhgia'] = this.luotdanhgia;
    return data;
  }
}

class TaiKhoan_Model {
  String tenKH;
  String imgTK;
  String ngaysinh;
  String diachi;
  String gioitinh;
  String email;
  String password;

  TaiKhoan_Model(
      {this.tenKH = "",
      this.imgTK = "",
      this.ngaysinh = "",
      this.diachi = "",
      this.gioitinh = "",
      this.email = "",
      this.password = ""});

  factory TaiKhoan_Model.fromJson(Map<String, dynamic> json) {
    return TaiKhoan_Model(
      tenKH: json['TenKH'],
      imgTK: json['imgTK'],
      ngaysinh: json['Ngaysinh'],
      diachi: json['diachi'],
      gioitinh: json['gioitinh'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TenKH'] = this.tenKH;
    data['imgTK'] = this.imgTK;
    data['Ngaysinh'] = this.ngaysinh;
    data['diachi'] = this.diachi;
    data['gioitinh'] = this.gioitinh;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

class ThongBao_Model {
  String img;
  String tieude;
  String noiDung;

  ThongBao_Model({this.img = '', this.tieude = '', this.noiDung = ''});

  factory ThongBao_Model.fromJson(Map<String, dynamic> json) {
    return ThongBao_Model(
      img: json['img'],
      tieude: json['tieuDe'],
      noiDung: json['noiDung'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['tieuDe'] = this.tieude;
    data['noiDung'] = this.noiDung;
    return data;
  }
}
