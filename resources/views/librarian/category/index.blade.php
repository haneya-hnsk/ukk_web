@extends('../../layout/appAdmin')

@section('main')

<div class="row  d-flex justify-content-center mt-2">
    <div class="col-6">
        <div class="card">
           <form action="/librarian/kategori" method="post">
            @csrf


                <div class="card-body">
                    <div class="card-title">
                        <h4>Tambah Kategori baru</h4>
                    </div>
                    <div class="mt-2">

                        <label for="kategori">Kategori</label>
                        <input type="text" name="nama_kategori" id="kategori" class="form-control">
                    </div>
                    <div class="d-flex justify-content-center mt-2">
                        <button type="submit" class="btn btn-primary">Tambah Kategori</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
<div class="row d-flex justify-content-center">
    <div class="col-6">

        <div class="card mt-4">
            <div class="card-header">
                <h3>Kategori
                </h3>
            </div>
            <div class="card-body">
                <table class="table">
                    <th>
                        <!-- <td>no</td> -->
                    <td>Id</td>
                    <td>Nama Kategori</td>
                    <td>Aksi</td>
                    </th>
                    @foreach($categories as $category)
                    <tr>
                        <td>

                        </td>
                        <td>{{$category->id}}</td>
                        <td>{{$category->nama_kategori}}</td>
                        <td>
                            <div class="ms-2 d-flex">
                                <a href="/librarian/kategori/{{ $category->id }}/edit" class="btn btn-success ms-2">Edit</a>
                                <form action="/librarian/kategori/{{ $category->id }}" method="post">
                                    @csrf
                                    @method('delete')

                                    <button type="submit" class="btn btn-danger ms-2" onclick="return confirm('Yakin Akan Hapus Kategori ?')">Hapus</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
    <!-- <div class="col-5">

    </div> -->
</div>
@endsection