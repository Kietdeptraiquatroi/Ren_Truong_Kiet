<?php

namespace App\Http\Controllers;
use App\Models\BaiDang;
use Illuminate\Http\Request;

class BaiDangController extends Controller
{
    public function themBaiDang($tai_khoan_id,$noi_dung_bai_dang,$img,$ten,$dia_chi,$luot_like)
    {
        $BaiDang= new BaiDang;
        $BaiDang->tai_khoan_id=$tai_khoan_id;
        $BaiDang->noi_dung_bai_dang=$noi_dung_bai_dang;
        $BaiDang->img=$img;
        $BaiDang->ten=$ten;
        $BaiDang->dia_chi=$dia_chi;
        $BaiDang->luot_like=$luot_like;
        $BaiDang->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaBaiDang($tai_khoan_id,$noi_dung_bai_dang,$img,$ten,$dia_chi,$luot_like,$id)
    {
    
        $BaiDang=BaiDang::find($id);
        $BaiDang->tai_khoan_id=$tai_khoan_id;
        $BaiDang->noi_dung_bai_dang=$noi_dung_bai_dang;
        $BaiDang->img=$img;
        $BaiDang->ten=$ten;
        $BaiDang->dia_chi=$dia_chi;
        $BaiDang->luot_like=$luot_like;
        $BaiDang->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaBaiDang($id)
    {
    
        $BaiDang=BaiDang::find($id);
        $BaiDang->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
