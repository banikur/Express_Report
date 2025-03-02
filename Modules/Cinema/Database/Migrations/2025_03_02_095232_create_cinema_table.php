<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCinemaTable extends Migration
{
    public function up()
    {
        Schema::create('cinema', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('location_id');
            $table->integer('cinema_type');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('cinema');
    }
}
