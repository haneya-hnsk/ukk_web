<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tahu</title>

    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('PDFs/pdf_viewer.min.css') }}">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
    <script src="{{ asset('PDFs/pdf.min.js') }}"></script>
</head>

<body style="" class="">



    <div class="row d-flex justify-content-center" style="margin-top: 20vh;">
        <div class="col-6">
            <div class="card p-4" style="">
                <div class="row ">

                    <div class="col-5 pe-4">
                        <img src="{{ asset('bg.png') }}" alt="" srcset="" style="max-height:300px; max-width:300px;">
                    </div>
                    <div class="col-7">
                        <div class="card-body">
                            <card class="title">
                                <h2>Login</h2>
                            </card>

                            <form action="/registrasi" method="post">
                                @csrf
                                <div class="row">

                                    <div class="col-4">

                                        <div class="mt-3">
                                            <label for="username">Username</label>
                                            <input type="text" name="username" id="username" class="form-control" value="{{ old('username') }}">
                                        </div>
                                    </div>
                                    <div class="col-8">

                                        <div class="mt-3">
                                            <label for="nama_lengkap">Nama Lengkap</label>
                                            <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control" value="{{ old('nama_lengkap') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-6">

                                        <div class="mt-3">
                                            <label for="password">Password</label>
                                            <input type="password" name="password" id="password" class="form-control" value="{{ old('password') }}">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mt-3">

                                            <label for="email">Email</label>
                                            <input type="email" name="email" id="email" class="form-control" value="{{ old('email') }}">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">

                                            <label for="alamat">Alamat</label>
                                            <textarea name="alamat" id="" cols="32" rows="5" class="form-control" value="{{ old('alamat') }}"></textarea>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-center mt-3">
                                        <button type="submit" class="btn btn-primary">Registrasi</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    </div>
    </div>

    <script src="{{ asset('bootstrap/js/bootstrap.bundle.js') }}"></script>
    <script src="{{ asset('jquery/jquery.min.js') }}"></script>
</body>

</html>