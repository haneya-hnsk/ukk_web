@extends('../../layout/appAdmin')

@section('main')
<div class="col" style="margin-left: 80px;;">

    <h1 class="mt-4">Laporan</h1>
    <div class="row  d-flex justify-content-center mt-4 d-flex justify-content-center">

        <div class="col-12">
            <div class="row">
                <div class="col-2">
                    <div class="card">
                        <div class="card-header">
                            <h2>Total User</h2>
                        </div>
                        <div class="card-body">
                            <h4>
                                {{ $users_total }}
                            </h4>
                        </div>
                    </div>
                </div>

                <div class="col-2">
                    <div class="card">
                        <div class="card-header">
                            <h2>Total Buku</h2>
                        </div>
                        <div class="card-body">
                            <h4>
                                {{ $books_total }}
                            </h4>
                        </div>
                    </div>
                </div>

                <div class="col-2">
                    <div class="card">
                        <div class="card-header">
                            <h2>Pinjam Terjadi</h2>
                        </div>
                        <div class="card-body">
                            <h4>
                                {{ $buku_dipinjam }}
                            </h4>
                        </div>
                    </div>
                </div>

                <div class="col-2">
                    <div class="card">
                        <div class="card-header">
                            <h2>Pinjam Selesai</h2>
                        </div>
                        <div class="card-body">
                            <h4>
                                {{ $buku_dikembalikan }}
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-4">

            <form action="/librarian/laporan" method="get">
                @csrf
        
        
        
                <div class="mt-3">
                    <label for="tahun_terbit">Tahun Teerbit</label>
                    <input type="number" min="1000" max="2099" step="1" class="form-control" name="tahun_terbit" value="{{ old('tahun_terbit', request()->tahun_terbit) }}" id="tahun_terbit" />
        
                    <!-- <input  type="date" > -->
                </div>
                <button type="submit" class="btn btn-success mt-2">Cari</button>
            </form>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <div class="card">
                <div class="card-title">
                    <table class="table">
                        <tr>
                            <th>Id</th>
                            <th>id kategori</th>
                            <th>nama katgori</th>
                            <th>judul</th>
                            <th>penulis</th>
                            <th>penerbit</th>
                            <th>tahun terbit</th>
                            <th>thumbnail</th>
                            <th>file</th>
                            <th>created at</th>
                            <th>updated at</th>
                        </tr>
@foreach($buku_tahun as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->kategori_id }}</td>
                            <td>{{ $item->kategori->nama_kategori }}</td>
                            <td>{{ $item->judul }}</td>
                            <td>{{ $item->penulis }}</td>
                            <td>{{ $item->penerbit }}</td>
                            <td>{{ $item->tahun_terbit }}</td>
                            <td>{{ $item->thumbnail }}</td>
                            <td>{{ $item->file }}</td>
                            <td>{{ $item->created_at }}</td>
                            <td>{{ $item->updated_at }}</td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>

        </div>
    </div>

</div>

<!-- <div class="col-5">
    </div>v

        </div> -->
</div>
@endsection