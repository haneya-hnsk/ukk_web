@extends('../../layout/appAdmin')

@section('main')

<div class="row d-flex justify-content-center mt-4">
    <div class="col-8">
        <div class="card">
            <div class="card-header">
                Tambah Buku
            </div>
            <div class="card-body">
                <form action="/librarian/buku" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="mt-3">
                        <label for="judul">Judul</label>
                        <input class="form-control" type="text" name="judul" value="{{ old('judul') }}" id="judul">
                    </div>
                    <div class="mt-3">
                        <label for="penulis">penulis</label>
                        <input class="form-control" type="text" name="penulis" value="{{ old('penulis') }}" id="penulis">
                    </div>
                    <div class="mt-3">
                        <label for="penerbit">penerbit</label>
                        <input class="form-control" type="text" name="penerbit" value="{{ old('penerbit') }}" id="penerbit">
                    </div>
                    <div class="mt-3">
                        <label for="tahun_terbit">Tahun Teerbit</label>
                        <input type="number" min="1000" max="2099" step="1" value="2016" class="form-control" name="tahun_terbit" value="{{ old('tahun_terbit') }}" id="tahun_terbit"/>

                        <!-- <input  type="date" > -->
                    </div>
                    <div class="mt-3">
                        <label for="kategori_id">Kategori</label>
                        <select name="kategori_id" id="kategori_id" class="form-control">
                            <option value="" selected></option>
                            @foreach($categories as $category)
    <option value="{{ $category->id }}"> {{  $category->nama_kategori }}</option>

@endforeach
                        </select>
                    </div>
                    <div class="mt-3">
                        <label for="file">file</label>
                        <input class="form-control" type="file" name="file" value="{{ old('file') }}" id="file">
                    </div>  
                    <div class="mt-3">
                        <label for="thumbnail">thumbnail</label>
                        <input class="form-control" type="file" name="thumbnail" value="{{  old('thumbnail') }}" id="thumbnail">
                    </div>
                    <div class="mt-3 d-flex justify-content-center" >
                        <button type="submit" class="btn btn-primary">Tambah Buku</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>
<script>
    $(function() {
    $( "#tahun_terbit" ).datepicker({dateFormat: 'yy'});
});​
</script>

@endsection