<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Klinik Aafia | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('admin-lte/plugins/fontawesome-free/css/all.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="{{ asset('admin-lte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{ asset('admin-lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <!-- JQVMap -->
  <link rel="stylesheet" href="{{ asset('admin-lte/plugins/jqvmap/jqvmap.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('admin-lte/dist/css/adminlte.min.css')}}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{ asset('admin-lte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="{{ asset('admin-lte/plugins/daterangepicker/daterangepicker.css')}}">
  <!-- summernote -->
  <link rel="stylesheet" href="{{ asset('admin-lte/plugins/summernote/summernote-bs4.css')}}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- HEADER -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{ url('/') }}" class="nav-link">Home</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ url('/') }}" class="brand-link">
      <img src="{{ asset('images/logo.png')}}" alt="Aafia Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Aafia Klinik</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('admin-lte/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
		  <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/dashboard" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Database Klinik
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ url('/datatransaksi') }}" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Transaksi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('/datapasien') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Pasien</p>
                </a>
              </li>
			  <li class="nav-item">
                <a href="{{ url('/datadokter') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Dokter</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('/datakaryawan') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Karyawan</p>
                </a>
              </li>
            </ul>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="{{ route('logout') }}"
			   onclick="event.preventDefault();
							 document.getElementById('logout-form').submit();">
				  <i class="fas fa-sign-out-alt"></i>
                  <p>Logout</p>	
			</a>
			<form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
				@csrf
			</form>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Transaksi</h1>	
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Data Transaksi</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
			<div class="card">
              <div class="card-header">
			    <a href="#filter-asset" class="collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Filter</strong><small> Dokter</small></a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
				<div class="card-body collapse" id="filter-asset">
					<form class="form-horizontal" action="{{ route('dttrx-filter') }}" method="POST">
						@csrf
						<div class="form-group row">

							<label class="col-md-2 col-form-label" for="hf-email">Nama Dokter</label>
							<div class="col-md-4">
								<select class="form-control" id="dokter" name="dokter" style="width: 100%;">
								@foreach($transaksi->unique('nama_dokter') as $trx)
									<option value="{{$trx->nama_dokter}}" {{(request()->input("dokter")==$trx->nama_dokter) ? "selected" : ""}}>{{$trx->nama_dokter}}</option>
								@endforeach
								</select>
							</div>
							<label class="col-md-2 col-form-label" for="hf-email">Nama Pasien</label>
							<div class="col-md-4">
								<select class="form-control" id="nama_pasien" name="nama_pasien" style="width: 100%;">
								@foreach($transaksi->unique('nama_pasien') as $trx)
									<option value="{{$trx->nama_pasien}}" {{(request()->input("dokter")==$trx->nama_pasien) ? "selected" : ""}}>{{$trx->nama_pasien}}</option>
								@endforeach
								</select>
							</div>
							<label class="col-md-2 col-form-label" for="hf-email">Poli</label>
							<div class="col-md-4">
								<select class="form-control" id="poli" name="poli" style="width: 100%;">
								@foreach($transaksi->unique('poli') as $trx)
									<option value="{{$trx->poli}}" {{(request()->input("dokter")==$trx->poli) ? "selected" : ""}}>{{$trx->poli}}</option>
								@endforeach
								</select>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-6">
								<input type="submit" name="submit" class="btn btn-info btn-sm" value="Search">
								<input type="submit" name="download_report" class="btn btn-info btn-sm" value="Download">
							</div>
						</div>
					</form>
				</div>			  
			  <!-- body -->
			  </div>
              <!-- /.card-body -->
            </div>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Data Transaksi</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>No</th>
                    <th>Nomor Transaksi</th>
                    <th>Nama Pasien</th>
                    <th>Nama Dokter</th>
                    <th>Poli</th>
                    <th>Status</th>
                    <th>Harga</th>
                    <th>Tanggal</th>
                  </tr>
                  </thead>
                  <tbody>
					<?php $i=0 ?>
					@foreach($transaksi as $key => $data)
					<tr>
						<td>{{ $i+1 }}</td>
						<td>{{$data->nomor_transaksi}}</td>
						<td>{{$data->nama_pasien}}</td>
						<td>{{$data->nama_dokter ?? null}}</td>
						<td>{{$data->poli}}</td>
						<td>{{$data->status}}</td>
						<td style="width:150px">{{ 'Rp '.number_format($data->harga,2,',','.')}}</td>
						<td>{{Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $data->updated_at)->format('M d Y')}}</td>
					</tr>
					<?php $i++; ?>
					@endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Nomor Transaksi</th>
                    <th>Nama Pasien</th>
                    <th>Nama Dokter</th>
                    <th>Poli</th>
                    <th>Status</th>
                    <th>Harga</th>
                    <th>Update Terakhir</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card 
			  <div>
				<button type="button" class="btn btn-primary">Download Laporan</button>
			  </div>
			-->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  <!-- /.content-wrapper -->


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{ asset('admin-lte/plugins/jquery/jquery.min.js')}}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{ asset('admin-lte/plugins/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{ asset('admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- ChartJS -->
<script src="{{ asset('admin-lte/plugins/chart.js/Chart.min.js')}}"></script>
<!-- Sparkline -->
<script src="{{ asset('admin-lte/plugins/sparklines/sparkline.js')}}"></script>
<!-- JQVMap -->
<script src="{{ asset('admin-lte/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{ asset('admin-lte/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
<!-- jQuery Knob Chart -->
<script src="{{ asset('admin-lte/plugins/jquery-knob/jquery.knob.min.js')}}"></script>
<!-- daterangepicker -->
<script src="{{ asset('admin-lte/plugins/moment/moment.min.js')}}"></script>
<script src="{{ asset('admin-lte/plugins/daterangepicker/daterangepicker.js')}}"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="{{ asset('admin-lte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
<!-- Summernote -->
<script src="{{ asset('admin-lte/plugins/summernote/summernote-bs4.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{ asset('admin-lte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('admin-lte/dist/js/adminlte.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{ asset('admin-lte/dist/js/pages/dashboard.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{ asset('admin-lte/dist/js/demo.js')}}"></script>
</body>
</html>
