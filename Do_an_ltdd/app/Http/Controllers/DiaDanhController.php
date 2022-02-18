<?php

namespace App\Http\Controllers;
use App\Models\DiaDanh;
use Illuminate\Http\Request;

class DiaDanhController extends Controller
{
    public function themDiaDanh($tenDD,$diachi,$mota,$imgDD,$danhgia,$luotdanhgia)
    {
    
        $diadanh= new DiaDanh;
        $diadanh->tenDD=$tenDD;
        $diadanh->diachi=$diachi;
        $diadanh->mota=$mota;
        $diadanh->imgDD=$imgDD;
        $diadanh->danhgia=$danhgia;
        $diadanh->Luotdanhgia=$luotdanhgia;
        $diadanh->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function suaDiaDanh($tenDD,$diachi,$mota,$imgDD,$danhgia,$luotdanhgia,$id)
    {
    
        $diadanh=DiaDanh::find($id);
        $diadanh->tenDD=$tenDD;
        $diadanh->diachi=$diachi;
        $diadanh->mota=$mota;
        $diadanh->imgDD=$imgDD;
        $diadanh->danhgia=$danhgia;
        $diadanh->Luotdanhgia=$luotdanhgia;
        $diadanh->save();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
    public function xoaDiaDanh($id)
    {
    
        $diadanh=DiaDanh::find($id);
        $diadanh->delete();
        return json_encode([
            "thong_bao"=>"thành công"
        ]);
    }
}
