<?php

namespace App\Http\Controllers;
use App\Models\NhaHang;
use Illuminate\Http\Request;

class NhaHangController extends Controller
{

    public function themNhaHang($tenNhaHang,$imgNhaHang,$diachi,$SDT,$MoTa,$danhgia,$Luotdanhgia)
    {
    
        $nhahang= new NhaHang;
        $nhahang->tenNhaHang=$tenNhaHang;
        $nhahang->imgNhaHang=$imgNhaHang;
        $nhahang->diachi=$diachi;
        $nhahang->SDT=$SDT;
        $nhahang->MoTa=$MoTa;
        $nhahang->danhgia=$danhgia;
        $nhahang->Luotdanhgia=$Luotdanhgia;
        $nhahang->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaNhaHang($tenNhaHang,$imgNhaHang,$diachi,$SDT,$MoTa,$danhgia,$Luotdanhgia,$id)
    {
    
        $nhahang=NhaHang::find($id);
        $nhahang->tenNhaHang=$tenNhaHang;
        $nhahang->imgNhaHang=$imgNhaHang;
        $nhahang->diachi=$diachi;
        $nhahang->SDT=$SDT;
        $nhahang->MoTa=$MoTa;
        $nhahang->danhgia=$danhgia;
        $nhahang->Luotdanhgia=$Luotdanhgia;
        $nhahang->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaNhaHang($id)
    {
    
        $nhahang=NhaHang::find($id);
       
        $nhahang->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
