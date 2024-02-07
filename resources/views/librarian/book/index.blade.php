@extends('../../layout/appAdmin')

@section('main')

<div class="row d-flex justify-content-center mt-3">
    <div class="col-10">
        <form method="get" action="/librarian/buku" class="d-flex">
            <!-- @csrf -->


            <div class="col-lg-2 me-2">
                <select name="kategori" id="kategori" onchange="this.form.submit()" class="form-control">
                    <option value="">Semua Kategori</option>
                    @foreach ($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->nama_kategori }}</option>
                    @endforeach

                </select>
            </div>
            <div class="col-lg d-flex me-2">
                <input type="text" name="text" id="text" value="{{ request()->text ?? '' }}" class="form-control">

                <button type="submit" class="btn btn-success ms-2 mp-2"> Cari</button>

            </div>
        </form>
        <div class="card mt-3">
            <div class="card-header">
                <div class="d-flex justify-content-between">

                    <h4>
                        Buku
                    </h4>

                    <a href="/librarian/buku/create" class="btn btn-primary">Tambah Buku +</a>
                </div>
            </div>
            <div class="card-body">
                <table class="table">
                    <th>
                    <td><b>Judul</b></td>
                    <td><b>kategori</b></td>
                    <td><b>Penulis</b></td>
                    <td><b>Penerbit</b></td>
                    <td><b>Tahun Terbit</b></td>
                    <td><b>file</b></td>
                    <td><b>thumbnail</b></td>
                    <td><b>Ditambahkan </b></td>
                    <td>
                       <b>aksi<b>
                    </td>
                    </th>
                    @foreach($books as $book)
                    <tr>
                        <td></td>
                        <td>{{$book->judul}}</td>
                        <td>{{$book->kategori->nama_kategori}}</td>
                        <td>{{$book->penulis}}</td>
                        <td>{{$book->penerbit}}</td>
                        <td>{{$book->tahun_terbit}}</td>
                        <td>{{$book->file ? 'Aktif' : ''}}</td>
                        <td>
                            <img src="{{ asset('storage/book/thumbnail/'. $book->thumbnail) }}" style="max-height:80px; max-width:80px;" alt="" srcset="">
                        </td>
                        <td>{{$book->created_at}}</td>
                        <td class="d-flex justofy-content-between">
                            <a href="/librarian/buku/{{$book->id}}/edit" class="btn btn-success">Edit</a>
                            <form action="/librarian/buku/{{$book->id}}" method="post">
                                @csrf
                                @method('delete')
                                <button type="submit" class="btn btn-danger ms-2" onclick="return confirm('Hapus Buku INi?')"> Hapus</button>
                            </form>
                        </td>
                    </tr>

                    @endforeach
                </table>
            </div>
        </div>
    </div>
</div>


@endsection