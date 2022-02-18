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
 

  
  



}
