<!doctype html>
<html lang="en">
<head>
    <title>{{ $title ?? 'Sawaikar Dry Fruits' }}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Meta -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="{{ $title ?? 'Sawaikar Dry Fruits' }}">
    <meta property="og:locale" content="en_US"/>
    <meta property="og:type" content="website"/>
    <meta property="og:image" content="{{ asset('assets/img/cart.png') }}">

    <!-- Icons & Styles -->
    <link rel="shortcut icon" href="{{ asset('assets/img/cart.png') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{ asset('assets/css/main.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-custom shadow-sm py-1 fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}"><b>Sawaikar</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon text-dark pt-2"><i class="bi bi-list"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="{{ url('/') }}">Home</a></li>
                @foreach($categories as $category)
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ url('category/' . $category->id) }}">
                            {{ $category->category_name }}
                        </a>
                    </li>
                @endforeach
                <li class="nav-item">
                    @if(auth()->check())
                        <a class="nav-link active bg-primary text-white" href="{{ url('admin') }}">Dashboard</a>
                    @else
                        <a class="nav-link active" href="{{ url('login') }}">Login</a>
                    @endif
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#" data-bs-toggle="modal" data-bs-target="#searchModal">
                        <i class="bi bi-search"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main content -->
<div class="clearfix mt-5 pt-4"></div>
<div class="main">@yield('content')</div>

<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h4>Need Assistance?</h4>
                <i class="bi bi-clock"></i> 09:00 AM - 09:00 PM (Mon - Sun)<br>
                <i class="bi bi-envelope"></i> sawaikarcashewstore1980@gmail.com<br>
                <i class="bi bi-geo-alt"></i> Chogm Rd, Porvorim, Aradi Socorro, Goa 403521<br>
            </div>
            <div class="col-sm-4">
                <h4>Stay Connected</h4>
                <i class="bi bi-envelope"></i> sawaikarcashewstore1980@gmail.com<br>
                <i class="bi bi-instagram"></i> @sawaikarsgoancashews<br>
                <i class="bi bi-telephone"></i> +91 950 322 3046<br>
            </div>
        </div>
    </div>
</div>

<!-- Copyright -->
<div class="copyright text-center py-2">
    <div class="container">
        &copy; {{ date('Y') }} Sawaikar. All rights reserved.
    </div>
</div>

<!-- Search Modal -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form method="get" action="{{ url('search') }}">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="bi bi-search me-2"></i> Search Products</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" name="keyword" autocomplete="off" class="form-control" placeholder="Search here...">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
@yield('javascript')
</body>
</html>
