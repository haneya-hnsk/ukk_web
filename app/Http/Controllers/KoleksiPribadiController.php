<?php

namespace App\Http\Controllers;

use App\Models\KoleksiPribadi;
use App\Models\UlasanBuku;
use Illuminate\Http\Request;

class KoleksiPribadiController extends Controller
{
    public function index(){
        return view('member.collection.index',[
            'collection' => KoleksiPribadi::where('user_id', auth()->user()->id)
        ]);
    }

    public function store( $id){
        // $request->validate([
        //     'buku_id' => 'required',
        // ]);

        KoleksiPribadi::create([
            'buku_id' => $id,
            'user_id' => auth()->user()->id,
        ]);

        return response()->json(['success ' =>'Berhasil Ditambahkan Ke Favorit']);
    }

    public function delete($id, $user){
        $collection = KoleksiPribadi::where('buku_id', $id)->where('user_id', $user)->get()->first();
        // dd($id);

        $collection->delete();

        return response()->json(['success ' =>'Berhasil Dihapus Dari Favorit']);
    }
}
