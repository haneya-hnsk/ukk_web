@extends('../layout/app')

@section('main')
<div class="row ms-4 me-4">
    @foreach($librarians as $librarian)
    <div class="col-3 mt-2">
        <div class="card">
            <div class="card-body">
                <div class="card-title">
                    <h3>{{ $librarian->username }} <span class="badge bg-success">{{ $librarian->level }}</span></h3><p>{{ $librarian->nama_lengkap}}</p>
               
                </div>
                <p>
                    Email : {{ $librarian->email }}
                </p>
            </div>
        </div>
    </div>
    @endforeach
</div>
@endsection