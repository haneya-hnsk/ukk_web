@extends('../../layout/appAdmin')

@section('main')
<div class="row  d-flex justify-content-center mt-4">
    <div class="col-10">

        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between">
                    <div class="h3">
                        Tambah Users
                    </div>
                    <a href="/librarian/create" class="btn btn-success">+ Tambah User</a>


                </div>

                <table class="table">
                    <th>
                    <td>Username</td>
                    <td>Nama Lengkap</td>
                    <td>Level</td>
                    <td>Email</td>
                    <td>Alamat</td>
                    <td>Aksi</td>
                    </th>
                    @foreach($users as $user)
                    <tr>
                        <td></td>
                        <td>{{ $user->username }}</td>
                        <td>{{ $user->nama_lengkap }}</td>
                        <td>{{ $user->level }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->alamat }}</td>
                        <td class="d-flex justify-content-between">
                            <a href="/librarian/user/{{ $user->id }}/edit" class="btn btn-success">Edit</a>

                            <form action="/librarian/user/{{ $user->id }}" method="post">
                                @csrf
                                @method('delete')
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Hapus ?')">Hapus</button>
                            </form>
                        </td>
                    </tr>

                    @endforeach
                </table>


            </div>
            <div class="card-body">



            </div>
        </div>

    </div>
</div>

<!-- <div class="col-5">
    </div>v

        </div> -->
</div>
@endsection