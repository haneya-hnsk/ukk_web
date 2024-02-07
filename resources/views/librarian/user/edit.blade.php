@extends('../../layout/appAdmin')

@section('main')
<div class="row  d-flex justify-content-center mt-4">
    <div class="col-10">

        <form action="/librarian/user" method="post">
            @csrf
            <div class="card">
                <div class="card-body">
                    <div class="card-title">
                        <h3>
                            Tambah User
                        </h3>
                    </div>
                    <div class="mt-3">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="username" class="form-control" value="{{ old('username',  $user->username) }}">
                    </div>
                    <div class="mt-3">
                        <label for="password">password</label>
                        <input type="password" name="password" id="password" class="form-control disabled" disabled value="{{ old('password', $user->password) }}">
                    </div>
                    <div class="mt-3">
                        <label for="email">email</label>
                        <input type="email" name="email" id="email" class="form-control" value="{{ old('email', $user->email) }}">
                    </div>
                    <div class="mt-3">
                        <label for="nama_lengkap">nama_lengkap</label>
                        <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control" value="{{ old('nama_lengkap', $user->nama_lengkap) }}">
                    </div>
                    <div class="mt-3">
                        <label for="level">level</label>
                        <select name="level" id="level" class="form-control" value="{{ old('level') }}">

                            <option {{ $user->level == 'petugas' ? 'selected' : '' }} value="petugas" >Petugas</option>
                            <option {{ $user->level == 'member' ? ' selected' : '' }} value="member">Member</option>
                            <option {{ $user->level == 'admin' ? 'selected' : '' }} value="admin">Admin</option>
                        </select>
                    </div>

                    <div class="mt-3">
                        <label for="alamat">Alamat</label>
                        <textarea name="alamat" id="alamat" cols="30" rows="5" class="form-control" {{ $user->level == 'admin' ? 'selected' : '' }}value="{{ old('alamat', $user->username) }}"></textarea>
                    </div>
                    
                    <div class="mt-3 d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Simpan</button>

                        </div>
                    
                </div>
            </div>

        </form>

    </div>
</div>

<!-- <div class="col-5">
    </div>v

        </div> -->
</div>
@endsection