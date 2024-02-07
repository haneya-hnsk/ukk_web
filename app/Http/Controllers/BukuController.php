<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use App\Models\KategoriBuku;
use App\Models\UlasanBuku;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class BukuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        return view('librarian.book.index', [
            'books' => Buku::filter(['kategori' => $request->kategori, 'text' => $request->text])->get(),
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
        return view('librarian.book.create' , [
            'categories' => KategoriBuku::all(),
        ]);
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
            'judul' => 'required',
            'penulis' => 'required',
            'kategori_id' => 'required',
            'penerbit' => 'required',
            'tahun_terbit' => 'required',
            'file' => 'required',
            'thumbnail' => 'required',
        ]);

        $thumbnail = $request->file('thumbnail');
        $thumbnail->storeAs('/public/book/thumbnail/', $thumbnail->hashName());

        $file = $request->file('file');
        $file->storeAs('/public/book/file/', $file->hashName());


        Buku::create([
            'judul' => $request->judul,
            'penulis' => $request->penulis,
            'kategori_id' => $request->kategori_id,
            'penerbit' => $request->penerbit,
            'tahun_terbit' => $request->tahun_terbit,
            'file' => $file->hashName(),
            'thumbnail' => $thumbnail->hashName(),
        ]);

        Log::info('Buku Berhasil Ditambahkan');
        return redirect('/librarian/buku')->with(['success' => 'Buku Berhasil Ditambahkan']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $book = Buku::where('id', $id)->get()->first();
         return redirect('librarian.book.show', [
            'book' => $book,
            'reviews' => UlasanBuku::where('buku_id', $id)->get(),
         ]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('librarian.book.edit' , [
            'book' => Buku::where('id', $id)->get()->first(),
            'categories' => KategoriBuku::all(),
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

        $book = Buku::where('id', $id)->get()->first();
        // dd('pepler');

        $request->validate([
            'judul' => 'required',
            'penulis' => 'required',
            'kategori_id' => 'required',
            'penerbit' => 'required',
            'tahun_terbit' => 'required',

        ]);

        if ($request->file('thumbnail')) {

            $thumbnail = $request->file('thumbnail');
            $thumbnail->storeAs('/public/book/thumbnail/', $thumbnail->hashName());
            $book->update(['thumbnail' => $thumbnail->hashName()]);

        }

        if ($request->file('file')) {

            $file = $request->file('file');
            $file->storeAs('/public/book/file/', $file->hashName());
            $book->update(['file' => $file->hashName()]);

        }

        $book->update([
            'judul' => $request->judul,
            'penulis' => $request->penulis,
            'kategori_id' => $request->kategori_id,
            'penerbit' => $request->penerbit,
            'tahun_terbit' => $request->tahun_terbit,
            // 'file' => $file->hashName(),
            // 'thumbnail' => $thumbnail->hashName(),
        ]);

        Log::info('Buku Berhasil Diubah');
        return redirect('/librarian/buku')->with(['success' => 'Buku Berhasil Diubah']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Buku::where('id', $id)->get()->first();

        $book->delete();

        Log::info('Buku Berhasil Dihapus');

        return redirect('librarian/buku')->with(['success' => 'Buku Berhasil Dihapus']);
        
    }
}
