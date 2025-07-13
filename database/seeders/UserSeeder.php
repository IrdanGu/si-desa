<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Admin Default
        User::create([
            'name' => 'Admin SI-DESA',
            'email' => 'admin@sidesa.com',
            'password' => Hash::make('admin123'),
            'level' => 'admin'
        ]);

        // User Irdan
        User::create([
            'name' => 'Irdan',
            'email' => 'irdan@gmail.com',
            'password' => Hash::make('irdan123'),
            'level' => 'admin'
        ]);

        // Karang Taruna
        User::create([
            'name' => 'Karang Taruna',
            'email' => 'karangtaruna@sidesa.com',
            'password' => Hash::make('karangtaruna123'),
            'level' => 'karangtaruna'
        ]);

        // User Biasa
        User::create([
            'name' => 'User Demo',
            'email' => 'user@sidesa.com',
            'password' => Hash::make('user123'),
            'level' => 'user'
        ]);
    }
}
