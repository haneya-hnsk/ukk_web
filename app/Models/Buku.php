<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $table = 'buku';

    function kategori()
    {
        return $this->belongsTo(KategoriBuku::class);
    }

    function peminjaman()
    {
        return $this->hasMany(Peminjaman::class);

    }

    function ulasan()
    {
        return $this->hasMany(UlasanBuku::class);

    }

    function koleksi_pribadi()
    {
        return $this->hasMany(KoleksiPribadi::class);
    }

    public function scopeFilter($query,Array $data){

        if($data['kategori'] != null && $data['text'] != null){
            return $query->where('kategori_id', $data['kategori'])->where('judul', 'like' , '%'. $data['text'].'%')->orWhere('penulis', 'like' , '%' .$data['text']. '%')->orWhere('penerbit',  'like', '%' . $data['text'] . '%');

        }
       
        if ($data['text'] != null){
            return  $query->where('judul', 'like' , '%'. $data['text'].'%')->orWhere('penulis', 'like' , '%' .$data['text']. '%')->orWhere('penerbit',  'like', '%' . $data['text'] . '%');
        }

        if ($data['kategori'] != null ){
            return $query->where('kategori_id', $data['kategori']);
        }



    }
}
