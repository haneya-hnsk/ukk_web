<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tahu</title>

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('PDFs/pdf_viewer.min.css') }}">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
    <script src="{{ asset('PDFs/pdf.min.js') }}"></script>
</head>

<body>
    <div class="head" style="background-image:url( {{ asset('bg.jpg') }} );">
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <div class="kiri">

                    <h4><a class="navbar-brand" href="/">Eleventh Library</a></h4>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="kanan">

                    <div class="collapse navbar-collapse" id="navbarNavDropdown">


                        <ul class="navbar-nav d-flex justify-content-end">
                            <li class="nav-item">
                                <a class="nav-link {{ request()->path() == 'buku' ? 'active' : ''}}" aria-current="page" href="/buku">Buku</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="#">Features</a>
                            </li> -->
                            <li class="nav-item">
                                <a class="nav-link {{ request()->path() == 'pustakawan' ? 'active' : ''}}" href="/pustakawan">Pustakawan</a>
                            </li>

                            @if(auth()->user()->id)
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    {{ auth()->user()->username }}
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="/koleksiPribadi">Koleksi Pribadi</a></li>
                                    <li><a class="dropdown-item" href="/lihatTerpinjam">Buku Dipinjam</a></li>
                                    <li >

                                        <form action="/logout" method="post" class="dropdown-item">
                                            @csrf
                                            <button type="submit" class="btn btn-danger">Logout</button>
                                        </form>
                                    </li>
                                    <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                                </ul>
                            </li>
                           
                            @endif
                        </ul>
                    </div>

                </div>
            </div>
        </nav>
    </div>

    @yield('main')


    <script src="{{ asset('bootstrap/js/bootstrap.bundle.js') }}"></script>
    <script src="{{ asset('jquery/jquery.min.js') }}"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        })
    </script>

    @yield('script')
</body>

</html>