<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKhachSansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('khachsan', function (Blueprint $table) {
            $table->id();
           $table->String('tenKS');
           $table->String('loai');
           $table->String('imgKS');
           $table->String('diachi');
           $table->String('MoTa');
           $table->String('SDT');
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
        Schema::dropIfExists('khach_sans');
    }
}
