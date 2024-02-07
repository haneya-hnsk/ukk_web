@extends('../layout/appPlain')

@section('main')

<div class="row ms-4 me-4">
   
    @foreach($tersimpan as $item)
            <div class="col-lg-3 col-md-4 col-sm-10 mt-3">
                <div class="card">
                    <div class="card-body">
                        <div class="" style="background-color: rgba(0, 0, 0, .5);">
                        <div class="d-flex justify-content-center" style="background-image: url({{ asset('storage/book/thumbnail/' . $item->buku->thumbnail) }});   background-repeat: no-repeat;
  background-size: 700px 400px;">
                                <img src="{{  asset('storage/book/thumbnail/'. $item->buku->thumbnail) }}" alt="" srcset="" class="card-img" style="max-width: 130px;max-height:200px;">
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">

                            <div class="kiri">
                                <div class="card-title ">
                                    <b>{{ $item->buku->judul }}</b>
                                    <span class="badge bg-success">{{ $item->buku->kategori->nama_kategori }}</span>
                                    <br>
                                    <p>{{ $item->buku->penulis }}</p>
                                </div>

                            </div>
                            <div class="kanan mt-3">
                                <a href="/buku/{{$item->buku->id}}" class="btn btn-primary">Lihat</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
</div>
@endsection