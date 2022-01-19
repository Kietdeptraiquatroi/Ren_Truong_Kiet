<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\APILTDDController;

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
Route::get('/formthemdiadanh',[APILTDDController::class,'fromThemDiaDanh']);
Route::post('/themdiadanh',[APILTDDController::class,'themDiaDanh'])->name('them_dia_danh');

Route::get('/formthemkhachsan',[APILTDDController::class,'fromThemKhachSan']);
Route::post('/themkhachsan',[APILTDDController::class,'themKhachSan'])->name('them_khach_san');

Route::get('/formthemnhahang',[APILTDDController::class,'fromThemNhaHang']);
Route::post('/themnhahang',[APILTDDController::class,'themNhaHang'])->name('them_nha_hang');

Route::get('/formthemtaikhoan',[APILTDDController::class,'fromThemTaiKhoan']);
Route::post('/themtaikhoan',[APILTDDController::class,'themTaiKhoan'])->name('them_tai_khoan');

Route::get('/formthemthongbao',[APILTDDController::class,'fromThemThongBao']);
Route::post('/themthongbao',[APILTDDController::class,'themThongBao'])->name('them_thong_bao');


