<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use App\Models\Peminjaman;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LaporanController extends Controller
{
    public function index(Request $request)
    {

        // $
// dd(request()->id);
       
        // dd( DB::table('all_borrow')->select('*')->orderByDesc('alltime')[0]);

        // dd(Buku::all()->count()); 
        // Peminjaman::

        return view('librarian.report.index', [
            'books_total' => Buku::all()->count(),
            'users_total' => User::all()->count(),
            'buku_dipinjam' => Peminjaman::where('status', 'dipinjam')->count(),
            'buku_dikembalikan' => Peminjaman::where('status', 'dikembalikan')->count(),

            'buku_tahun' => Buku::where('tahun_terbit', $request->tahun_terbit)->get(),
            // 'sering_dipinjam' => DB::table('all_borrow')->select()->orderByDesc('alltime'),

        ]);
    }
}
