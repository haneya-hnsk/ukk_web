@extends('../../layout/appAdmin')

@section('main')

<div class="row d-flex justify-content-center">
    <div class="col-10">
        <div class="row  d-flex justify-content-center mt-2">
            <div class="col-8">
                <div class="card">
                   <form action="/librarian/kategori/{{ $category->id }}" method="post">
                    @csrf
                    @method('put')


                        <div class="card-body">
                            <div class="card-title">
                                <h4>Tambah Kategori baru</h4>
                            </div>
                            <div class="mt-2">

                                <label for="kategori">Kategori</label>
                                <input type="text" name="nama_kategori" id="kategori" class="form-control" value="{{ old('nama_kategori', $category->nama_kategori) }}">
                            </div>
                            <div class="d-flex justify-content-center mt-2">
                                <button type="submit" class="btn btn-primary">Ubah Kategori</button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>

       
@endsection