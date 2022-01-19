<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DiaDanh;
use App\Models\KhachSan;
use App\Models\NhaHang;
use App\Models\TaiKhoan;
use App\Models\ThongBao;


class APILTDDController extends Controller
{
    public function dsJson()
    {
        $diaDanh=DiaDanh::all();
        $khachSan=KhachSan::all();
        $nhaHang=NhaHang::all();
        $taiKhoan=TaiKhoan::all();
        $thongBao=ThongBao::all();
        return json_encode([
            "diadanh"=>$diaDanh,
            "khachsan"=>$khachSan,
            "nhahang"=>$nhaHang,
            "taikhoan"=>$taiKhoan,
            "thongbao"=>$thongBao,
        ]);
    }
    public function fromThemDiaDanh()
    {
        return view('diadanh');
    }
    public function fromThemKhachSan()
    {
        return view('khachsan');
    }
    public function fromThemNhaHang()
    {
        return view('nhahang');
    }
    public function fromThemTaiKhoan()
    {
        return view('taikhoan');
    }
    public function fromThemThongBao()
    {
        return view('thongbao');
    }
    public function themDiaDanh(Request $req)
    {
    
        $them= new DiaDanh;
        $them->tenDD=$req->tenDD;
        $them->diachi=$req->diachi;
        $them->mota=$req->mota;
        $them->imgDD=$req->imgDD;
        $them->danhgia=$req->danhgia;
        $them->Luotdanhgia=$req->Luotdanhgia;
        $them->save();
        return redirect()->back();
    }
    public function themKhachSan(Request $req)
    {
    
        $them= new KhachSan;
        $them->tenKS=$req->tenKS;
        $them->loai=$req->loai;
        $them->imgKS=$req->imgKS;
        $them->diachi=$req->diachi;
        $them->MoTa=$req->MoTa;
        $them->SDT=$req->SDT;
        $them->danhgia=$req->danhgia;
        $them->Luotdanhgia=$req->Luotdanhgia;
        $them->save();
        return redirect()->back();
    }
    public function themNhaHang(Request $req)
    {
    
        $them= new NhaHang;
        $them->tenNhaHang=$req->tenNhaHang;
        $them->imgNhaHang=$req->imgNhaHang;
        $them->diachi=$req->diachi;
        $them->SDT=$req->SDT;
        $them->MoTa=$req->MoTa;
        $them->danhgia=$req->danhgia;
        $them->Luotdanhgia=$req->Luotdanhgia;
        $them->save();
        return redirect()->back();
    }
    public function themTaiKhoan(Request $req)
    {
    
        $them= new TaiKhoan;
        $them->TenKH=$req->TenKH;
        $them->imgTK=$req->imgTK;
        $them->Ngaysinh=$req->Ngaysinh;
        $them->gioitinh=$req->gioitinh;
        $them->email=$req->email;
        $them->password=$req->password;
        $them->save();
        return redirect()->back();
    }
    public function themThongBao(Request $req)
    {
    
        $them= new ThongBao;
        $them->img=$req->img;
        $them->tieuDe=$req->tieuDe;
        $them->noiDung=$req->noiDung;
        $them->save();
        return redirect()->back();
    }
}
