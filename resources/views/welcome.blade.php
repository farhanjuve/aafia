<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Klinik Aafia</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<h1>Halaman Admin</h1>
        <style>
             
          body{
            font-family: 'Nunito', sans-serif;
            padding: 50px;
          }
          .card{
              border-radius: 4px;
              background: #fff;
              box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05);
                transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
            padding: 14px 80px 18px 36px;
            cursor: pointer;
            margin-bottom: 20px;
          }

          .card:hover{
               transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
          }

          .card h3{
            font-weight: 600;
          }

          .card img{
            position: absolute;
            top: 20px;
            right: 15px;
            max-height: 120px;
          }

          .card-1{
            background-image: url({{asset('images/nokia-logo.jpg')}});
                background-repeat: no-repeat;
              background-position: right;
              background-size: 80px;
          }

          .card-ikea{
             background-image: url({{asset('images/ikea-logo.jpg')}});
                background-repeat: no-repeat;
              background-position: right;
              background-size: 80px;
          }

          .card-3{
             background-image: url(https://ionicframework.com/img/getting-started/theming-card.png);
                background-repeat: no-repeat;
              background-position: right;
              background-size: 80px;
          }

          .card-bcp{
              background-image: url({{asset('images/bcp-logo.png')}});
              background-repeat: no-repeat;
              background-position: right;
              background-size: 80px;
          }

          .card-configuration{
              background-image: url({{asset('images/configuration.png')}});
              background-repeat: no-repeat;
              background-position: right;
              background-size: 80px;
          }

         
          @media(max-width: 990px){
            .card{
              margin: 20px;
            }
          } 

        </style>
    </head>
    <body> 
      <div class="container">
        <div class="row">

          <div class="col-md-5 ml-3">
            <a href="{{route('home')}}">
              <div class="card card-1">
                <h3>Dashboard</h3>
                <p>Rekapitulasi utama aplikasi</p>
              </div>
            </a> 
          </div>  

          <div class="col-md-5 ml-3">
		  @if($kode == 'Dokter')
			<a href="{{route('DokterTransaksi')}}">
              <div class="card card-ikea">
                <h3>Transaksi</h3>
                <p>Halaman dokter untuk membuat nota tindakan</p>
              </div>
            </a> 
		  @else			  
            <a href="{{route('RegisTransaksi')}}">
              <div class="card card-ikea">
                <h3>Transaksi</h3>
                <p>Halaman dokter untuk membuat nota tindakan</p>
              </div>
            </a> 
		  @endif
          </div> 

          <div class="col-md-5">
            <a href="{{route('RegisPasien')}}">
              <div class="card card-csa">
                <h3>Pendaftaran Pasien</h3> 
                <p>Halaman untuk pendaftaran pasien</p>
              </div>
            </a> 
          </div>

          <div class="col-md-5">
            <a href="{{ url('/register')}}">
              <div class="card card-configuration">
                <h3>Configuration</h3> 
                <p>Khusus admin + penambahan user dan dokter</p>
              </div>
            </a> 
          </div>

      </div>
    </body>
</html>
