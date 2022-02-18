<?php

namespace App\Http\Controllers;
use App\Models\TaiKhoan;
use Illuminate\Http\Request;

class TaiKhoanController extends Controller
{
   
    public function themTaiKhoan($TenKH,$imgTK,$Ngaysinh,$gioitinh ,$SDT,$email,$password)
    {
    
        $taikhoan= new TaiKhoan;
        $taikhoan->TenKH=$TenKH;
        $taikhoan->imgTK=$imgTK;
        $taikhoan->Ngaysinh=$Ngaysinh;
        $taikhoan->gioitinh=$gioitinh;
        $taikhoan->email=$email;
        $taiKhoan->SDT=$SDT;
        $taikhoan->password=$password;
        $taikhoan->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaTaiKhoan($TenKH,$imgTK,$Ngaysinh,$gioitinh,$SDT,$email,$password, $id)
    {
        $taikhoan=TaiKhoan::find($id);
        $taikhoan->TenKH=$TenKH;
        $taikhoan->imgTK=$imgTK;
        $taikhoan->Ngaysinh=$Ngaysinh;
        $taikhoan->gioitinh=$gioitinh;
        $taiKhoan->SDT=$SDT;
        $taikhoan->email=$email;
        $taikhoan->password=$password;
        $taikhoan->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaTaiKhoan($id)
    {
        $taiKhoanXoa=TaiKhoan::find($id);
        $taiKhoanXoa->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
