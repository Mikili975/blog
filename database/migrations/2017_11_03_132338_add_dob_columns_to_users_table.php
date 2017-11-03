<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddDobColumnsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->integer('day_of_birth')->after('name')->nullable();
            $table->integer('month_of_birth')->after('day_of_birth')->nullable();
            $table->integer('year_of_birth')->after('month_of_birth')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('day_of_birth');
            $table->dropColumn('month_of_birth');
            $table->dropColumn('year_of_birth');
        });
    }
}
