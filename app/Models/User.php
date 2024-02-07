<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username',
        'email',
        'password',
        'level',
        'nama_lengkap',
        'alamat',
    ];


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    function peminjaman(){
    return $this->hasManyu(Peminjaman::class); 
    
    }

    function ulasan(){
        return $this->hasMany(UlasanBuku::class);

    }

    function koleksi_pribadi(){
        return $this->hasMany(KoleksiPribadi::class);
    }

    public function scopeFilter($query, $text){
        // dd($text);
        if($text){
            return $query->where('username', 'like', '%' . $text . '%')->orWhere('nama_lengkap', 'like', '%' . $text . '%')->orWhere('email', 'like', '%' . $text . '%')->orWhere('alamat', 'like', '%' . $text . '%');
        }
    }


}
