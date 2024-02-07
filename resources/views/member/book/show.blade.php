@extends('../layout/app')

@section('main')
<div class="row mt-2 ms-2 d-flex justify-content-center">
    <div class="col-8">

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-3">
                        <img src="{{ asset('storage/book/thumbnail/' . $book->thumbnail) }} " alt="" srcset="">
                        <!-- <div class="vr"></div> -->
                        <!-- <hr> -->
                    </div>
                    <!-- <div class="vr"></div> -->
                    <div class="col">

                        <h2>
                            {{ $book->judul }}
                            <!-- <span class="badge bg-success">{{ $book->kategori->nama_kategori }}</span> -->
                        </h2>
                        <div class="row d-flex justify-content-between">


                            <div class="col-3">

                                <table class="table table-borderless">
                                    <!-- <tr>
                                    <td><h5>Judul</h5></td>
                                    <td></td>
                                </tr> -->
                                    <tr>
                                        <td>
                                            <h5>Penulis</h5>
                                        </td>
                                        <td> </td>
                                        <td>{{ $book->penulis }}</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Penerbit</h5>
                                        </td>
                                        <td> </td>
                                        <td>{{ $book->penerbit }}</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Tahun Terbit</h5>
                                        </td>
                                        <td> </td>
                                        <td>{{ $book->tahun_terbit }}</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Kategori</h5>
                                        </td>
                                        <td> </td>
                                        <td>{{ $book->kategori->nama_kategori }}</td>
                                    </tr>
                                </table>
                            </div>
                            @if(!$terpinjam)
                            <div class="col-3">
                                <form action="/pinjamBuku/{{ $book->id }}" method="post">
                                    @csrf
                                    <button type="submit" class="btn btn-primary btn-lg" onclick="return confirm('Yakin akan meminjam Buku ?')">Pinjam</button>
                                </form>
                            </div>
                            @else

                            <div class="col-4 ms-2">
                                <div class="d-flex justify-content-between">
                                    <form action="/kembalikanBuku/{{ $book->id }}" method="post">
                                        @csrf
                                        <button type="submit" class="btn btn-danger btn-lg" onclick="return confirm('Yakin Akan Mengembalikan Buku ?')">Kembalikan</button>
                                    </form>
                                    <a href="/bacaBuku/{{$book->id}}" class="btn btn-primary btn-lg">Baca</a>
                                </div>
                            </div>
                            @endif
                        </div>

                        @if(!$tersimpan)
                        <form action="/tambahKoleksi/{{$book->id}}" method="post">
                            @csrf
                            <button type="button" class="btn btn-outline-warning" id="tambah">+ Tambah Koleksi</button>
                        </form>
                        <button type="button" class="btn btn-warning hidden" id="kembali">- Hapus Koleksi</button>

                   

                        @else
                        <form action="/hapusKoleksi/{{$tersimpan->id}}" method="post">
                            @csrf
                            <button type="button" class="btn btn-warning" id="kembali">-  Hapus Koleksi</button>
                        </form>
                        <form action="/tambahKoleksi/{{$book->id}}" method="post">
                            @csrf
                            <button type="button" class="btn btn-outline-warning hidden" id="tambah">+ Tambah Koleksi</button>
                        </form>
                        @endif

                    </div>
                </div>

                <div class="row d-flex justify-content-center">

                    <div class="col-10">
                        <h2>Ulasan</h2>

                        @if ($myReview)
                        <div class="card  mt-2">
                            <div class="card-body">

                                <div class="d-flex justify-content-between">
                                    <div class="">
                                        <div class="card-title">
                                            <div class="d-flex">
                                                <h4> {{ $myReview->user->username . '  ' }} </h4>
                                                <p class="ms-2 mt-1"> at {{ $myReview->created_at }}</p>
                                            </div>

                                        </div>
                                        <div class="p" id="ulasan">
                                            {{ $myReview->ulasan }}
                                        </div>
                                    </div>
                                    <div class="kanan">
                                        <h3><span class="badge bg-danger" id="rating">{{ $myReview->rating }}</span></h3>
                                    </div>

                                </div>
                                <div class="mt-2  d-flex justify-content-end">

                                    <button type="button " class="btn btn-success" id="edit">Edit</button>
                                </div>
                            </div>

                        </div>

                        <div class="card-body">
                            <form action="/ulasan/update/{{ $myReview->id }}" method="post" id="newForm">

                                @csrf
                                <div class="row">
                                    <input type="hidden" name="id" id="id" value="{{ $myReview->id }}">

                                    <div class="col-6">
                                        <label for="ulasan">Ulasan</label>
                                        <textarea name="ulasan" id="newUlasan" cols="20" rows="5" class="form-control">{{ $myReview->ulasan }}</textarea>
                                    </div>
                                    <div class="col-6">
                                        <label for="rating">rating</label>
                                        <input type="range" name="rating" step="1" style="width: fit-content;" max="10" min="1" id="newRating" value="{{ $myReview->rating }}">
                                    </div>
                                    <div class="mt-2">
                                        <button type="button" class="btn btn-primary" id="push">Ubah Ulasan
                                            Saya</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        @else
                        <div class="card-body">
                            <form action="/ulasan/{{ $book->id }}" method="post">

                                @csrf
                                <!-- <input type="hidden" name="buku_id" > -->
                                <div class="col">
                                    <label for="ulasan">Ulasan</label>
                                    <textarea name="ulasan" id="ulasan" cols="10" rows="5" class="form-control"></textarea>
                                </div>
                                <div class="col">
                                    <div class="mt-3">
                                        <label for="rating">rating</label>
                                        <input type="range" name="rating" step="1" max="10" min="1" id="rating" value="">
                                    </div>
                                </div>
                                <div class="mt-2 ">
                                    <button type="submit" class="btn btn-primary">Berikan Ulasan</button>
                                </div>
                            </form>
                        </div>
                        @endif
                    </div>


                    @if ($myReview)
                    @foreach ($reviews as $review)
                    @if ($review->id == $myReview->id)
                    @elseif ($review->id != $myReview->id)
                    <div class="card  mt-2 ms-3 me-3">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="">
                                    <div class="card-title">
                                        <div class="d-flex">
                                            <h4> {{ $review->user->username . '  ' }} </h4>
                                            <p class="ms-2 mt-1"> at {{ $review->created_at }}</p>
                                        </div>

                                    </div>
                                    <div class="p">
                                        {{ $review->ulasan }}
                                    </div>
                                </div>
                                <div class="kanan">
                                    <h3><span class="badge bg-danger">{{ $review->rating }}</span></h3>
                                </div>

                            </div>

                        </div>
                    </div>
                    @endif
                    @endforeach
                    @elseif(!$myReview)
                    @foreach ($reviews as $review)
                    <div class="card  mt-2 ms-3 me-3">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="">
                                    <div class="card-title">
                                        <div class="d-flex">
                                            <h4> {{ $review->user->username . '  ' }} </h4>
                                            <p class="ms-2 mt-1"> at {{ $review->created_at }}</p>
                                        </div>

                                    </div>
                                    <div class="p">
                                        {{ $review->ulasan }}
                                    </div>
                                </div>
                                <div class="kanan">
                                    <h3><span class="badge bg-danger">{{ $review->rating }}</span></h3>
                                </div>

                            </div>

                        </div>
                    </div>
                    @endforeach
                    @endif


                </div>

            </div>

        </div>
    </div>
</div>
</div>
@endsection


@section('script')
<script>

    $('#tambah').click(()=>{
        $.ajax({
            type:'post',
            url : '/tambahKoleksi/{{ $book->id }}',
            success:()=>{
                $('#tambah').addClass('hidden')
                $('#kembali').removeClass('hidden')
            }
        })
    })

    $('#kembali').click(()=>{
        // console.log('penis')
        $.ajax({
            type:'post',
            url : '/hapusKoleksi/{{ $book->id }}/{{ auth()->user()->id }}',
            success:()=>{
                $('#tambah').removeClass('hidden')
                $('#kembali').addClass('hidden')
            }
        })
    })


    console.log($('#newUlasan').val())
    $('#document').ready(() => {
        $('#newForm').hide()
    })

    $('#edit').click(() => {
        // $('#newForm').hide()
        $('#edit').hide()
        $('#newForm').show()
    })



    $('#push').click((e) => {

        e.preventDefault()

        $.ajax({
            'type': 'POST',
            'url': '/ulasan/update/' + $('#id').val(),
            'data': {
                'ulasan': $('#newUlasan').val(),
                'rating': $('#newRating').val(),
            },
            success: () => {
                // console.log('penis ' + p.success)
                $('#newForm').hide()
                $('#edit').show()

                $('#ulasan').text($('#newUlasan').val())
                $('#rating').text($('#newRating').val())


            },
            // contentType: false,
            // processData: false,
        })
    })
</script>
@endsection