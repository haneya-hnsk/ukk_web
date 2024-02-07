@extends('../layout/appAdmin')

@section('main')

<div class="row d-flex justify-content-center mt-4 ms-4">
    <div class="col-11">
        <div class="card">
            <div class="card-header">
                <h1>Ulasan</h1>
            </div>
            <div class="card-body">
            </div>
            <table class="table">
                <tr>

                    <th>Username</th>
                    <th>Buku</th>
                    <th>Status</th>
                    <th>Tanggal Pinjam</th>
                    <th>Tanggal Kembali</th>
                    <th>Aksi</th>

                </tr>
                <!-- <th>Aksi</th> -->


                @foreach($borrows as $borrow)
                <tr>

                    <td>{{ $borrow->user->username }}</td>
                    <td>{{ $borrow->buku->judul }}</td>
                    <td>{{ $borrow->status }}</td>
                    <td>{{ $borrow->created_at }}</td>
                    <td>{{ $borrow->tanggal_pengembalian }}</td>
                    <td>
                        <form action="/librarian/hapusPinjam/{{ $borrow->id }}" method="post">
                            @csrf
                            <button type="submit" class="btn btn-danger">Kembalikan</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>
@endsection