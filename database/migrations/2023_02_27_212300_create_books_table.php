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
        Schema::create('books', function (Blueprint $table) {
            $table->increments('id');
            $table->string('cover')->nullable();
            $table->string('name')->unique();
            $table->string('short_name')->nullable();
            $table->longText('authors'); // $table->json('authors');
            $table->string('isbn')->nullable();
            $table->unsignedInteger('number_of_pages')->nullable();
            $table->string('publisher_id')->nullable()->references('id')->on('publishers')->onDelete('set null');
            $table->string('country_id')->nullable()->references('id')->on('countries')->onDelete('set null');
            $table->date('release_date')->nullable();
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
        Schema::dropIfExists('books');
    }
};
