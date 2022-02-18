<?php

namespace App\Http\Controllers;
use App\Models\ThongBao;
use Illuminate\Http\Request;

class ThongBaoController extends Controller
{

    public function themThongBao($img,$tieuDe,$noiDung)
    {
    
        $thongbao= new ThongBao;
        $thongbao->img=$img;
        $thongbao->tieuDe=$tieuDe;
        $thongbao->noiDung=$noiDung;
        $thongbao->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaThongBao($img,$tieuDe,$noiDung ,$id)
    {
    
        $thongbao=ThongBao::find($id);
        $thongbao->img=$img;
        $thongbao->tieuDe=$tieuDe;
        $thongbao->noiDung=$noiDung;
        $thongbao->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaThongBao($id)
    {
        $thongbao=ThongBao::find($id);
        $thongbao->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
