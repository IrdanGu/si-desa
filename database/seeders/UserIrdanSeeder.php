<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserIrdanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Cek struktur tabel users
        $columns = DB::select('SHOW COLUMNS FROM users');
        $columnNames = array_column($columns, 'Field');

        // Tentukan nama kolom role/level
        $roleColumn = in_array('level', $columnNames) ? 'level' : 'role';

        // Data user Irdan
        $userData = [
            'name' => 'Irdan',
            'email' => 'irdan@gmail.com',
            'password' => Hash::make('irdan123'),
            $roleColumn => 'admin',
            'created_at' => now(),
            'updated_at' => now()
        ];

        // Insert menggunakan raw SQL
        DB::table('users')->insert($userData);

        echo "User Irdan berhasil ditambahkan dengan role: $roleColumn = admin\n";
    }
}
