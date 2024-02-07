<?php

namespace App\Http\Controllers;

use App\Models\UlasanBuku;
use Illuminate\Http\Request;

class UlasanBukuController extends Controller
{
    public function store(Request $request, $id){
        $request->validate([
            'ulasan' => 'required',
            'rating' => 'required'
        ]);

        $review = UlasanBuku::where('user_id', auth()->user()->id)->where('buku_id', $id)->get()->first();
        if($review){
        return redirect()->back()->with(['error' => 'Kamu Sudah Punya Ulasan Disini']);

        }



        UlasanBuku::create([
            'buku_id' => $id,
            'user_id' => auth()->user()->id,
            'ulasan' => $request->ulasan,
            'rating' => $request->rating,
        ]);

        // return response()->json(['succes' => 'Berhasil Memberikan Ulasan']);

        return redirect()->back()->with(['success' => 'Berhasil Menambah Ulasan']);
    }

    public function update(Request $request, $id){
        $review = UlasanBuku::where('id', $id)->get()->first();
        $request->validate([
            'ulasan' => 'required',
            'rating' => 'required'
        ]);

        $review->update([
            // 'buku_id' => $id,
            // 'user_id' => auth()->user()->id,
            'ulasan' => $request->ulasan,
            'rating' => $request->rating,
        ]);

        return response()->json(['succes' => 'Berhasil Memberikan Ulasan']);
    }

    public function delete($id){
        $review = UlasanBuku::where('id', $id)->get()->first();
        $review->delete();

        return redirect()->back()->with(['succes' => 'Berhasil Menghapus Ulasan']);

    }
}
