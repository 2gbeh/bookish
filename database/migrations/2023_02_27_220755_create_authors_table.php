<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('authors', function (Blueprint $table) {
            $table->increments('id');
            // $table->unsignedInteger('user_id')->unique()->references('id')->on('users')->onDelete('cascade');
            $table->string('photo')->nullable();
            $table->string('author')->unique();
            $table->string('pen_name')->nullable();
            $table->string('notes')->nullable();
            $table->tinyInteger('status')->default(0);            
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('authors');
    }
};
