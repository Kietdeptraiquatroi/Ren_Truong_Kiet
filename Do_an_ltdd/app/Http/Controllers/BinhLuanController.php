<?php

namespace App\Http\Controllers;
use App\Models\BinhLuan;
use Illuminate\Http\Request;

class BinhLuanController extends Controller
{
    public function themBinhLuan($tai_khoan_id,$bai_dang_id,$noi_dung)
    {
    
        $BinhLuan= new BinhLuan;
        $BinhLuan->tai_khoan_id=$tai_khoan_id;
        $BinhLuan->bai_dang_id=$bai_dang_id;
        $BinhLuan->noi_dung=$noi_dung;
        $BinhLuan->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaBinhLuan($tai_khoan_id,$bai_dang_id,$noi_dung,$id)
    {
    
        $BinhLuan=BinhLuan::find($id);
        $BinhLuan->tai_khoan_id=$tai_khoan_id;
        $BinhLuan->bai_dang_id=$bai_dang_id;
        $BinhLuan->noi_dung=$noi_dung;
        $BinhLuan->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaBinhLuan($id)
    {
    
        $BinhLuan=BinhLuan::find($id);
        $BinhLuan->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
