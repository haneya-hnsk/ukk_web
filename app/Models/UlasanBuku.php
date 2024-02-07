<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UlasanBuku extends Model
{
    use HasFactory;
    protected $table = 'ulasan_buku';
    
    protected $guarded = ['id'];

    // protected $casts = [
    
    function buku(){
        return $this->belongsTo(Buku::class);
    }

    function user(){
        return $this->belongsTo(User::class);
    }
}
