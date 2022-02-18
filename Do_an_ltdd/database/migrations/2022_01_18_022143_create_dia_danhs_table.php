<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiaDanhsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diadanh', function (Blueprint $table) {
            $table->id();
            $table->String('tenDD');
            $table->String('diachi');
            $table->String('mota');
            $table->String('imgDD');
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
        Schema::dropIfExists('dia_danhs');
    }
}
