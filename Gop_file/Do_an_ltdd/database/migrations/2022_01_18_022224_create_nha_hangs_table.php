<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNhaHangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nhahang', function (Blueprint $table) {
            $table->id();
          $table->String('tenNhaHang');
          $table->String('imgNhaHang');
          $table->String('diachi');
          $table->String('SDT');
          $table->String('MoTa');
          $table->integer('danhgia');
          $table->integer('Luotdanhgia');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nha_hangs');
    }
}
