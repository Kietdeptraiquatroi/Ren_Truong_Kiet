class DiaDanh_Model {
  int id;
  String tenDD;
  String diachi;
  String mota;
  String imgDD;
  String SDT;
  int danhgia;
  int luotdanhgia;

  DiaDanh_Model(
      {this.id = 0,
      this.tenDD = "",
      this.diachi = "",
      this.mota = "",
      this.imgDD = "",
      this.SDT = "",
      this.danhgia,
      this.luotdanhgia});

  factory DiaDanh_Model.fromJson(Map<String, dynamic> json) {
    return DiaDanh_Model(
      id: json['id'],
      tenDD: json['tenDD'],
      diachi: json['diachi'],
      mota: json['mota'],
      imgDD: json['imgDD'],
      SDT: json['SDT'],
      danhgia: json['danhgia'],
      luotdanhgia: json['Luotdanhgia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tenDD'] = this.tenDD;
    data['diachi'] = this.diachi;
    data['mota'] = this.mota;
    data['imgDD'] = this.imgDD;
    data['SDT'] = this.SDT;
    data['danhgia'] = this.danhgia;
    data['Luotdanhgia'] = this.luotdanhgia;
    return data;
  }
}

class KhachSan_Model {
  int id;
  String tenKS;
  String loai;
  String imgKS;
  String diachi;
  String mota;
  String SDT;
  int danhgia;
  int luotdanhgia;

  KhachSan_Model(
      {this.id = 0,
      this.tenKS = "",
      this.loai = "",
      this.imgKS = "",
      this.diachi = "",
      this.mota = "",
      this.SDT = "",
      this.danhgia,
      this.luotdanhgia});

  factory KhachSan_Model.fromJson(Map<String, dynamic> json) {
    return KhachSan_Model(
      id: json['id'],
      tenKS: json['tenKS'],
      loai: json['loai'],
      imgKS: json['imgKS'],
      diachi: json['diachi'],
      mota: json['MoTa'],
      SDT: json['SDT'],
      danhgia: json['danhgia'],
      luotdanhgia: json['Luotdanhgia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tenKS'] = this.tenKS;
    data['loai'] = this.loai;
    data['imgKS'] = this.imgKS;
    data['diachi'] = this.diachi;
    data['MoTa'] = this.mota;
    data['SDT'] = this.SDT;
    data['danhgia'] = this.danhgia;
    data['Luotdanhgia'] = this.luotdanhgia;
    return data;
  }
}

class NhaHang_Model {
  int id;
  String tenNhaHang;
  String imgNhaHang;
  String diachi;
  String SDT;
  String mota;
  int danhgia;
  int luotdanhgia;

  NhaHang_Model(
      {this.id = 0,
      this.tenNhaHang = "",
      this.imgNhaHang = "",
      this.diachi = "",
      this.SDT = "",
      this.mota = "",
      this.danhgia,
      this.luotdanhgia});

  factory NhaHang_Model.fromJson(Map<String, dynamic> json) {
    return NhaHang_Model(
      id: json['id'],
      tenNhaHang: json['tenNhaHang'],
      imgNhaHang: json['imgNhaHang'],
      diachi: json['diachi'],
      SDT: json['SDT'],
      mota: json['MoTa'],
      danhgia: json['danhgia'],
      luotdanhgia: json['Luotdanhgia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tenNhaHang'] = this.tenNhaHang;
    data['imgNhaHang'] = this.imgNhaHang;
    data['diachi'] = this.diachi;
    data['SDT'] = this.SDT;
    data['MoTa'] = this.mota;
    data['danhgia'] = this.danhgia;
    data['Luotdanhgia'] = this.luotdanhgia;
    return data;
  }
}

class TaiKhoan_Model {
  int id;
  String tenKH;
  String imgTK;
  String ngaysinh;
  String diachi;
  String gioitinh;
  String SDT;
  String email;
  String password;

  TaiKhoan_Model(
      {this.id = 0,
      this.tenKH = "",
      this.imgTK = "",
      this.ngaysinh = "",
      this.diachi = "",
      this.gioitinh = "",
      this.SDT = "",
      this.email = "",
      this.password = ""});

  factory TaiKhoan_Model.fromJson(Map<String, dynamic> json) {
    return TaiKhoan_Model(
      id: json['id'],
      tenKH: json['TenKH'],
      imgTK: json['imgTK'],
      ngaysinh: json['Ngaysinh'],
      diachi: json['diachi'],
      gioitinh: json['gioitinh'],
      SDT: json['SDT'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['TenKH'] = this.tenKH;
    data['imgTK'] = this.imgTK;
    data['Ngaysinh'] = this.ngaysinh;
    data['diachi'] = this.diachi;
    data['gioitinh'] = this.gioitinh;
    data['SDT'] = this.SDT;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

class ThongBao_Model {
  int id;
  String img;
  String tieude;
  String noiDung;

  ThongBao_Model(
      {this.id = 0, this.img = '', this.tieude = '', this.noiDung = ''});

  factory ThongBao_Model.fromJson(Map<String, dynamic> json) {
    return ThongBao_Model(
      id: json['id'],
      img: json['img'],
      tieude: json['tieuDe'],
      noiDung: json['noiDung'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['img'] = this.img;
    data['tieuDe'] = this.tieude;
    data['noiDung'] = this.noiDung;
    return data;
  }
}
