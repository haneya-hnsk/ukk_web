@extends('../layout/app')

@section('main')
<div class="row mt-2 ms-2 d-flex justify-content-center">
    <div class="col-10">

        <form method="get" action="/buku" class="d-flex">
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

        <div class="row">
            @foreach($books as $book)
            <div class="col-lg-3 col-md-4 col-sm-10 mt-3">
                <div class="card">
                    <div class="card-body">
                        <div class="" style="background-color: rgba(0, 0, 0, .5);">
                        <div class="d-flex justify-content-center" style="background-image: url({{ asset('storage/book/thumbnail/' . $book->thumbnail) }});   background-repeat: no-repeat;
  background-size: 700px 400px;">
                                <img src="{{  asset('storage/book/thumbnail/'. $book->thumbnail) }}" alt="" srcset="" class="card-img" style="max-width: 130px;max-height:200px;">
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">

                            <div class="kiri">
                                <div class="card-title ">
                                    <b>{{ $book->judul }}</b>
                                    <span class="badge bg-success">{{ $book->kategori->nama_kategori }}</span>
                                    <br>
                                    <p>{{ $book->penulis }}</p>
                                </div>

                            </div>
                            <div class="kanan mt-3">
                                <a href="/buku/{{$book->id}}" class="btn btn-primary">Lihat</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>


        @endsection