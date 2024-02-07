<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use App\Models\UlasanBuku;
use Illuminate\Http\Request;

class LibrarianController extends Controller
{
    public function peminjaman(){
        return view('librarian.peminjaman', [
            'borrows' => Peminjaman::all(),
        ]);
    }

    public function hapusUlasan($id){
        $ulasan = UlasanBuku::where('id', $id)->get()->first()->delete();

        return redirect()->back()->with(['success' => 'Berhasil  Menhapus Ulasan']);
    }

    public function hapusPinjam($id){
        $pinjam = Peminjaman::where('id', $id)->get()->first();

        $pinjam->update([
            'status' => 'dikembalikan',
            'tanggal_pengembalian' => date('y-m-d')
        ]);

        return redirect()->back()->with(['success' => 'Berhasil  Mengembalikan Buku']);
    }
    public function ulasan(){
        return view('librarian.ulasan', [
            'reviews' => UlasanBuku::all(),
        ]);
    }
}
