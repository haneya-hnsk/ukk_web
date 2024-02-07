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
        <th>Username</th>
        <th>Buku</th>
        <th>Ulasan</th>
        <th>Rating</th>
        <th>Waktu</th>
        <th>Aksi</th>

        @foreach($reviews as $review)
        <tr>
      
                <td>{{  $review->user->username }}</td>
                <td>{{  $review->buku->judul }}</td>
                <td>{{  $review->ulasan }}</td>
                <td>{{  $review->rating }}</td>
                <td>{{  $review->created_at }}</td>
                <td>
                    <form action="/librarian/hapusUlasan/{{$review->id}}" method="post">
                @csrf
                <button type="submit" class="btn btn-danger">Hapus</button>
            </form>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>
</div>

@endsection