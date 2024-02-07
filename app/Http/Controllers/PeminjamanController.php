<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use Illuminate\Http\Request;

class PeminjamanController extends Controller
{
    public function index()
    {
        return view('member.borrow.index', [
            'borrows' => Peminjaman::where('user_id', auth()->user()->id)->with(['buku'])->get()->first(),
        ]);
    }

    public function store($id)
    {

        // $peminjaman 

        if (Peminjaman::where('user_id', auth()->user()->id)->where('buku_id', $id)->where('status', 'dipinjam')->get()->first()) {
            return redirect()->back()->with(['error' => 'Buku Sudah Dipinjam']);
        }


        Peminjaman::create([
            'user_id' => auth()->user()->id,
            'buku_id' => $id,
            'tanggal_peminjaman' => date('y-m-d'),
            'status' => 'dipinjam',
        ]);

        // return response()->json(['success' => 'Buku Berhasil Dipinjam']);

        return redirect()->back()->with(['success' => 'Buku Berhasil Dipinjam']);

    }

    public function pengembalian($id)
    {
        $book = Peminjaman::where('user_id', auth()->user()->id)->where('buku_id', $id)->where('status', 'dipinjam')->get()->first();
        // dd($book);

        $book->update([
            'status' => 'dikembalikan',
            'tanggal_pengembalian' => date('y-m-d')
        ]);

        return redirect()->back()->with(['success' => 'Buku Berhasil Dikembalikan']);

    }
}
