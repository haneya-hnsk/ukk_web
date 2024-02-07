<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KoleksiPribadi extends Model
{
    use HasFactory;
    protected $table = 'koleksi_pribadi';

    protected $guarded = ['id'];

    function buku(){
        return $this->belongsTo(Buku::class);
    }

    function user(){
        return $this->belongsTo(User::class);
    }
}
