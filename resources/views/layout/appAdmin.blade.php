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

<body>
    <div class="row " >

        <div class="col-1" >

            <div class="d-flex flex-column p-3 bg-light position-fixed" style="height:100vh; width:200px;           " >
                <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                    <span class="fs-4">Aku Pustakawan</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <a href="/librarian/buku" class="nav-link link-dark {{ request()->path() == 'librarian/buku' ? 'active' : '' }}" aria-current="page">
                            Buku 
                        </a>
                    </li>
                    <li>
                        <a href="/librarian/kategori" class="nav-link link-dark  {{ request()->path() == 'librarian/kategori' ? 'active' : '' }}">
                            Kategori
                        </a>
                    </li>
                    <li>
                        <a href="/librarian/user" class="nav-link link-dark  {{ request()->path() == 'librarian/user' ? 'active' : '' }}">
                            User
                        </a>
                    </li>
                    <li>
                        <a href="/librarian/laporan" class="nav-link link-dark  {{ request()->path() == 'librarian/laporan' ? 'active' : '' }}">
                            Laporan
                        </a>
                    </li>
                    <li>
                        <a href="/librarian/ulasan" class="nav-link link-dark  {{ request()->path() == 'librarian/ulasan' ? 'active' : '' }}">
                            Ulasan
                        </a>
                    </li>
                    <li>
                        <a href="/librarian/peminjaman" class="nav-link link-dark  {{ request()->path() == 'librarian/peminjaman' ? 'active' : '' }}">
                            Peminjaman
                        </a>
                    </li>
                 
                </ul>
                <hr>
                <br>
                <div class="dropdown">
                    <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>{{ auth()->user()->username }}</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                        <!-- <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li> -->
                        <li><form action="/logout" method="post" class="dropdown-item">
                            @csrf
                            <button type="submit" class="btn btn-danger">Sign Out</button>
                        </form></li>
                    </ul>
                </div>
                <br>
            </div>
        </div>
        <div class="col-10">
            
            
            @yield('main')
            
        </div>
        
    </div>
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.js') }}"></script>
    <script src="{{ asset('jquery/jquery.min.js') }}"></script>
</body>

</html>