<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Cek struktur tabel terlebih dahulu
        $columns = Schema::getColumnListing('users');
        $roleColumn = in_array('level', $columns) ? 'level' : (in_array('role', $columns) ? 'role' : null);
        
        if (!$roleColumn) {
            throw new \Exception('Neither level nor role column found in users table');
        }

        // Admin Default
        User::create([
            'name' => 'Admin SI-DESA',
            'email' => 'admin@sidesa.com',
            'password' => Hash::make('admin123'),
            $roleColumn => 'admin'
        ]);

        // User Irdan
        User::create([
            'name' => 'Irdan',
            'email' => 'irdan@gmail.com',
            'password' => Hash::make('irdan123'),
            $roleColumn => 'admin'
        ]);

        // Karang Taruna
        User::create([
            'name' => 'Karang Taruna',
            'email' => 'karangtaruna@sidesa.com',
            'password' => Hash::make('karangtaruna123'),
            $roleColumn => 'karangtaruna'
        ]);

        // User Biasa
        User::create([
            'name' => 'User Demo',
            'email' => 'user@sidesa.com',
            'password' => Hash::make('user123'),
            $roleColumn => 'user'
        ]);
    }
}