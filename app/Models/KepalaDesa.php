<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KepalaDesa extends Model
{
    use HasFactory;
    protected $table = 'kepala_desa';
    protected $guarded = [];
    protected $primaryKey = 'id';

}
