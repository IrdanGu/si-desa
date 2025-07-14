<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            // Cek apakah kolom level sudah ada
            if (!Schema::hasColumn('users', 'level')) {
                $table->enum('level', ['admin', 'karangtaruna', 'user'])->default('user')->after('email');
            }

            // Cek apakah kolom role sudah ada, jika ada, rename ke level
            if (Schema::hasColumn('users', 'role')) {
                $table->renameColumn('role', 'level');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (Schema::hasColumn('users', 'level')) {
                $table->dropColumn('level');
            }
        });
    }
};
