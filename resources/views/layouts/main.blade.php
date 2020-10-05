<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta name="description" content="Klinik Aafina">
    <meta name="author" content="Achmad Farhan Mustaqim">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Scripts -->
	<script src="https://dots.dhl.com/app3/js/app.js" defer></script>
    <script src="https://dots.dhl.com/app3/js/sweetalert2.all.js"></script>
    <script src="https://kit.fontawesome.com/4f5fb3f187.js" crossorigin="anonymous"></script>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.29.2/sweetalert2.all.js"></script>
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <title>Dashboard Klinik</title>
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show pace-done">
    <div id="app">
        @include('layouts.header')
        <div class="app-body">
            @include('layouts.sidebar')
            <main class="main">
                <div class="container-fluid">
                    <div class="animated fadeIn">
                        @yield('content')
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script>
        function deleteTruck(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }

        function reset(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.reset_'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }

        function deleteStock(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }

        function deletePicking(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }

        function deleteLoading(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }

        function deleteDriverTask(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }

        function deleteUser(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }
    </script>
</body>
</html>