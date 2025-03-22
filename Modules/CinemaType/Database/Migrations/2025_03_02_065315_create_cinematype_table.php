<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCinemaTypeTable extends Migration
{
    public function up()
    {
        Schema::create('cinema_type', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('logo');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('cinema_type');
    }
}
