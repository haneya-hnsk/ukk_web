<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use App\Models\KategoriBuku;
use App\Models\KoleksiPribadi;
use App\Models\Peminjaman;
use App\Models\UlasanBuku;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    public function bacaBuku($id){
        return view('member.book.read', [
            'book' => Buku::where('id', $id)->get()->first()->file(),
        ]);
    }

    public function lihatBuku($id){
        return view('member/book/show', [
            'book' => Buku::where('id', $id)->get()->first(),
            'reviews' => UlasanBuku::where('buku_id', $id)->get(),
            'myReview' => UlasanBuku::where('buku_id', $id)->where('user_id', auth()->user()->id)->get()->first(),
            'terpinjam' => Peminjaman::where('buku_id', $id)->where('user_id', auth()->user()->id)->where('status', 'dipinjam')->get()->first() ?? '',
            'tersimpan' => KoleksiPribadi::where('buku_id', $id)->where('user_id', auth()->user()->id)->get()->first() ?? '',
        ]);
    }

    public function index(Request $request){
        // dd(KoleksiPribadi::all()->isNotEmpty());
        return view('member.book.index', [
            'books' => Buku::filter(['kategori' => $request->kategori, 'text' => $request->text])->get(),
            'categories' => KategoriBuku::all(),
            'collection' => KoleksiPribadi::all()->isEmpty() ? false : KoleksiPribadi::all(),
        ]);
    }
    public function koleksiPribadi(){
        return view('member.koleksiPribadi', [
            'tersimpan' => KoleksiPribadi::where('user_id', auth()->user()->id)->get()
        ]);
    }
    public function lihatTerpinjam(){
        return view('member.peminjaman', [
            'peminjaman' => Peminjaman::where('user_id', auth()->user()->id)->where('status', 'dipinjam')->get()
        ]);
    }
}
