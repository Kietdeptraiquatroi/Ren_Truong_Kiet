<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\APILTDDController;
use App\Http\Controllers\DiaDanhController;
use App\Http\Controllers\KhachSanController;
use App\Http\Controllers\NhaHangController;
use App\Http\Controllers\TaiKhoanController;
use App\Http\Controllers\ThongBaoController;
use App\Http\Controllers\BaiDangController;
use App\Http\Controllers\BinhLuanController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/dsjson',[APILTDDController::class,'dsJson']);


//Địa danh
Route::get('/themdiadanh/{tenDD}/{diachi}/{mota}/{imgDD}/{danhgia}/{luotdanhgia}',[DiaDanhController::class,'themDiaDanh']);
Route::get('/suadiadanh/{tenDD}/{diachi}/{mota}/{imgDD}/{danhgia}/{luotdanhgia}/{id}',[DiaDanhController::class,'suaDiaDanh']);
Route::get('/xoadiadanh/{id}',[DiaDanhController::class,'xoaDiaDanh']);

//Khách sạn
Route::get('/themkhachsan/{tenKS}/{loai}/{imgKS}/{diachi}/{MoTa}/{SDT}/{danhgia}/{Luotdanhgia}',[KhachSanController::class,'themKhachSan']);
Route::get('/suakhachsan/{tenKS}/{loai}/{imgKS}/{diachi}/{MoTa}/{SDT}/{danhgia}/{Luotdanhgia}/{id}',[KhachSanController::class,'suaKhachSan']);
Route::get('/xoakhachsan/{id}',[KhachSanController::class,'xoaKhachSan']);


//Nhà hàng
Route::get('/themnhahang/{tenNhaHang}/{imgNhaHang}/{diachi}/{SDT}/{MoTa}/{danhgia}/{Luotdanhgia}',[NhaHangController::class,'themNhaHang']);
Route::get('/suanhahang/{tenNhaHang}/{imgNhaHang}/{diachi}/{SDT}/{MoTa}/{danhgia}/{Luotdanhgia}/{id}',[NhaHangController::class,'suaNhaHang']);
Route::get('/xoanhahang/{id}',[NhaHangController::class,'xoaNhaHang']);


//Tài khoản
Route::get('/themtaikhoan/{TenKH}/{imgTK}/{Ngaysinh}/{gioitinh}/{SDT}/{email}/{password}',[TaiKhoanController::class,'themTaiKhoan']);
Route::get('/suataikhoan/{TenKH}/{imgTK}/{Ngaysinh}/{gioitinh}/{email}/{SDT/{password}/{id}',[TaiKhoanController::class,'suaTaiKhoan']);
Route::get('/xoataikhoan/{id}',[TaiKhoanController::class,'xoaTaiKhoan']);


//Thông báo
Route::get('/themthongbao/{img}/{tieuDe}/{noiDung}',[ThongBaoController::class,'themThongBao']);
Route::get('/suathongbao/{img}/{tieuDe}/{noiDung}/{id}',[ThongBaoController::class,'suaThongBao']);
Route::get('/xoathongbao/{id}',[ThongBaoController::class,'xoaThongBao']);

//Bài đăng
Route::get('/thembaidang/{tai_khoan_id}/{noi_dung_bai_dang}/{img}/{ten}/{dia_chi}/{luot_like}',[BaiDangController::class,'themBaiDang']);
Route::get('/suabaidang/{tai_khoan_id}/{noi_dung_bai_dang}/{img}/{ten}/{dia_chi}/{luot_like}/{id}',[BaiDangController::class,'suaBaiDang']);
Route::get('/xoabaidang/{id}',[BaiDangController::class,'xoaBaiDang']);

//Bình luận
Route::get('/thembinhluan/{tai_khoan_id}/{bai_dang_id}/{noi_dung}',[BinhLuanController::class,'themBinhLuan']);
Route::get('/suabinhluan/{tai_khoan_id}/{bai_dang_id}/{noi_dung}/{id}',[BinhLuanController::class,'suaBinhLuan']);
Route::get('/xoabinhluan/{id}',[BinhLuanController::class,'xoaBinhLuan']);

