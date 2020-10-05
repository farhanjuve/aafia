<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta name="description" content="DMS">
    <meta name="author" content="Iqbal Taufiq Ahmad Nur">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.29.2/sweetalert2.all.js"></script>
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <title>DMS</title>
</head>
<body class="app" style="background">
    <div id="app">
        <header class="app-header navbar" style="padding: 0rem 1rem;">
			<a class="navbar-brand" href="{{ url('digital-dashboard-dms') }}">
				<img style="width:100%;" src="{{ asset('assets/img/dhl-logo.png')}}" alt="">
			</a>
			<a>
				<span><strong>{{\Carbon\Carbon::now('Asia/Jakarta')->format("d-m-Y h:i")}}</strong></span>
			</a>
		</header>
        <div class="app-body">
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
        
    </script>
</body>
<style>
	body{
		background-image: url("{{url('/assets/img/background-dhl.jpg')}}");
			  background-position: center;
			  background-repeat: no-repeat;
			  height: 100%;				
			  min-height: 580px;
			  overflow:hidden !important;
	}
	
</style>
<script>
	setInterval(function() {
		window.location.replace("{{route('digital-dashboard-dms')}}");
	}, 10000); 
</script>
</html>