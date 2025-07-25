<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{
    use HasFactory;
    protected $table = 'agenda';
    protected $guarded = [];
    protected $primaryKey = 'id';

    public function user(){
        return $this->belongsTo("App\Models\User");
    }

}
