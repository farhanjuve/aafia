<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePasienTbl extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pasien_tbl', function (Blueprint $table) {
            $table->id();
            $table->integer('no_rm');			
            $table->string('name');			
			$table->integer('nik');
            $table->string('lp');
            $table->string('goldar');
            $table->string('agama');
            $table->string('ttl');
            $table->string('alamat');
            $table->integer('telp');
            $table->string('sts_nikah');
            $table->string('pekerjaan');
            $table->string('kel_wali');
            $table->string('sts_kel');
            $table->string('name_kel');
            $table->string('telp_kel');
            $table->string('tekanan_darah');
            $table->string('suhu');
            $table->integer('tb');
            $table->integer('bb');
			
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pasien_tbl');
    }
}
