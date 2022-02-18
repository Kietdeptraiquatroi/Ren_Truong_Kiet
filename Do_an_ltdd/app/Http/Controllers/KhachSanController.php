<?php

namespace App\Http\Controllers;
use App\Models\KhachSan;
use Illuminate\Http\Request;

class KhachSanController extends Controller
{
     
    public function themKhachSan($tenKS,$loai,$imgKS,$diachi,$MoTa,$SDT,$danhgia,$Luotdanhgia)
    {
    
        $khachsan= new KhachSan;
        $khachsan->tenKS=$tenKS;
        $khachsan->loai=$loai;
        $khachsan->imgKS=$imgKS;
        $khachsan->diachi=$diachi;
        $khachsan->MoTa=$MoTa;
        $khachsan->SDT=$SDT;
        $khachsan->danhgia=$danhgia;
        $khachsan->Luotdanhgia=$Luotdanhgia;
        $khachsan->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaKhachSan($tenKS,$loai,$imgKS,$diachi,$MoTa,$SDT,$danhgia,$Luotdanhgia,$id)
    {
    
        $khachsan=KhachSan::find($id);
        $khachsan->tenKS=$tenKS;
        $khachsan->loai=$loai;
        $khachsan->imgKS=$imgKS;
        $khachsan->diachi=$diachi;
        $khachsan->MoTa=$MoTa;
        $khachsan->SDT=$SDT;
        $khachsan->danhgia=$danhgia;
        $khachsan->Luotdanhgia=$Luotdanhgia;
        $khachsan->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaKhachSan($id)
    {
    
        $khachsan=KhachSan::find($id);
        $khachsan->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
