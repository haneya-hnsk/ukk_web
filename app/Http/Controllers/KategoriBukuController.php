<?php

namespace App\Http\Controllers;

use App\Models\KategoriBuku;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class KategoriBukuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('librarian.category.index',  [
            'categories' => KategoriBuku::all(),

        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama_kategori' => 'required',
        ]);

        KategoriBuku::create([
            'nama_kategori' => $request->nama_kategori
        ]);

        Log::info('Kategori Baru Ditambhkan');

        return redirect('/librarian/kategori')->with(['success' => 'Kategori Baru Ditambhkan']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('librarian.category.edit', [
            'category' => KategoriBuku::where('id', $id)->get()->first(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $category = KategoriBuku::where('id', $id)->get()->first();

        $request->validate([
            'nama_kategori' => 'required',
        ]);

        $category->update([
            'nama_kategori' => $request->nama_kategori
        ]);

        Log::info('Kategori Berhasil Diubah');

        return redirect('/librarian/kategori')->with(['success' => 'Kategori Berhasil Diubah']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $category = KategoriBuku::where('id', $id)->get()->first();
        $category->delete();

        Log::info('Kategori Berhasil Dihapus');

        return redirect('/librarian/kategori')->with(['success' => 'Kategori Berhasil Dihapus']);
    }

    
}
