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
                                    <td>{{$book->tahun_terbit}}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <h5>Kategori</h5>
                                    </td>
                                    <td> </td>
                                    <td>{{$book->kategori->nama_kategori}}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row d-flex justify-content-center">

                    <div class="col-8">
                        <h2>Ulasan</h2>

                        @if(myReview) 
                        <div class="card  mt-2">
                            <div class="card-body">

                                <div class="d-flex justify-content-between">
                                    <div class="">
                                        <div class="card-title">
                                            <div class="d-flex">
                                               <h4> {{ $myReview->user->username . '  ' }} </h4> <p class="ms-2 mt-1"> at {{ $myReview->created_at }}</p>
                                            </div>
                                           
                                        </div>
                                        <div class="p">
                                            {{ $myReview->ulasan }}
                                        </div>
                                    </div>
                                    <div class="kanan">
                                        <h3><span class="badge bg-danger">{{ $myReview->rating }}</span></h3>
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="card">
                            <div class="card-body">
                                <form action="/ulasan/update/{{ $myReview->id }}" method="post">

                                @csrf
                                <div class="col">
                                    
                                    <textarea name="ulasan" id="newUlasan" cols="30" rows="10" class="form-control">{{ $myReview->ulasan }}</textarea>
                                </div>
                                <div class="col">
                                        <input type="range" name="newRating" step="1" max="10" min="1" id="rating" value="{{ $myReview->rating }}">
                                </div>
                                <div class="mt-2">
                                    <button type="submit" class="btn btn-primary">Ubah Ulasan Saya</button>
                                </div>
                                </form>
                            </div>
                        </div>
                        @else
                        <div class="card-body">
                                <form action="/ulasan/create/{{ $book->id }}" method="post">

                                @csrf
                                <div class="col">
                                    
                                    <textarea name="ulasan" id="ulasan" cols="30" rows="10" class="form-control">{{ $myReview->ulasan }}</textarea>
                                </div>
                                <div class="col">
                                        <input type="range" name="rating" step="1" max="10" min="1" id="rating" value="{{ $myReview->rating }}">
                                </div>
                                <div class="mt-2">
                                    <button type="submit" class="btn btn-primary">Ubah Ulasan Saya</button>
                                </div>
                                </form>
                            </div>
                        @endif
                        </div>
                        @foreach($reviews as $review)
                        <div class="card  mt-2">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div class="">
                                        <div class="card-title">
                                            <div class="d-flex">
                                               <h4> {{ $review->user->username . '  ' }} </h4> <p class="ms-2 mt-1"> at {{ $review->created_at }}</p>
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
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>

@endsection