@extends('layouts.app')

@section('content')

<div class="container-fluid">
	<div class="animate fadeIn">
        <div class="row justify-content-center" style="margin-top:20px;">
            <div class="col-sm-12">
                @if ($message = Session::get('success'))
                    <div class="alert alert-success alert-block" style="margin-top:1.5rem">
                        <button type:button class="close" data-dismiss="alert">x</button>
                        <strong>{{ $message }}</strong>
                    </div>
                    @endif
                    @if ($message = Session::get('error'))
                    <div class="alert alert-danger alert-block" style="margin-top:1.5rem">
                        <button type:button class="close" data-dismiss="alert">x</button>
                        <strong>{{ $message }}</strong>
                    </div>
                @endif
                <div class="card">
                    <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('BayarTransaksi') }}">
                        @csrf
						<div class="row register-form">
						<div class="col-md-6">
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Tanggal Periksa') }}</label>

								<div class="col-md-6">
									<input id="tanggal" type="text" class="form-control" name="tanggal" readonly autofocus value="{{$data['tanggal'] ?? ''}}">
								</div>
							</div>  

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nomor RM') }}</label>

								<div class="col-md-6">
									<input id="norm" type="text" class="form-control" name="norm" readonly autofocus value="{{$data['norm'] ?? ''}}">
								</div>
							</div>
							
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nomor Transaksi') }}</label>

								<div class="col-md-6">
									<input id="no_transaksi" type="text" class="form-control" name="no_transaksi" readonly autofocus value="{{$data['no_transaksi'] ?? ''}}">
								</div>
							</div>
						</div>
						<div class="col-md-6">	
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama Pasien') }}</label>

								<div class="col-md-6">
									<input id="nama_pasien" type="text" class="form-control" name="nama_pasien" readonly autofocus value="{{$data['nama_pasien'] ?? ''}}">
								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Poli') }}</label>

								<div class="col-md-6">
									<input id="poli" type="text" class="form-control" name="poli" readonly autofocus value="{{$data['poli'] ?? ''}}">
								</div>
							</div>						

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama Dokter') }}</label>

								<div class="col-md-6">
									<input id="nama_dokter" type="text" class="form-control" name="nama_dokter" readonly autofocus value="{{$data['nama_dokter'] ?? ''}}">
								</div>
							</div>							
                        </div>							
                        </div>							
						
						<div class="container">
							<div class="row justify-center">
							  <div class="col-12">
								<header>
								  <h1>Daftar Tindakan</h1>
								</header>
								<div class="form-group row">		
									<div class="col-md-3">
										<div class="input-group-append">
											<label for="name" class="col-form-label text-md-right">{{ __('Tindakan') }}</label>
										</div>
									</div>
									<div class="col-md-6">
										<select class="js-example-basic-single" id="userinput" name="tindakan[]" style="width: 100%;">
											<option class="hidden" selected="" disabled=""> Pilih Tindakan . . .  *</option>
											<option value="Isi disini"> Isi sendiri . . . </option>
											@foreach($data['tindakan'] as $tdk)
												<option id="{{$tdk->deskripsi}}" value="{{$tdk->deskripsi}}" {{(request()->input("deskripsi")==$tdk->deskripsi) ? "selected" : ""}}>{{$tdk->deskripsi}}</option>
											@endforeach
										</select>																						
									</div>
									<div class="col-md-3">
										<div class="input-group-append">
											<button class="btn btn-outline-info" id="enter" type="button">Add</button>
										</div>
									</div>
								</div>								

							  </div>
							  <div class="col-12">
								<ul id="list-add" name="list-add" class="list-group">
								</ul>
							  </div>
							</div>
						</div>
						<!--
						<div class="form-group row">
                            <label for="name" class="col-md-10 col-form-label text-md-right">{{ __('Harga total') }}</label>

                            <div class="col-md-2">
                                <input readonly autofocus value="Rp1.500.000">
                            </div>
                        </div>
						-->
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Kirim ke Kasir') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <a href="#filter-asset" class="collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Pencarian</strong><small> Transaksi</small></a>
                    </div>
                    <div class="card-body collapse" id="filter-asset">
                        <form class="form-horizontal" action="#" method="POST">
                            @csrf
                            <div class="form-group row">
                                <label class="col-md-2 col-form-label" for="hf-email">Nomor Rekam Medis</label>
                                <div class="col-md-4">
                                    <input class="form-control" id="hf-email" type="text" name="store_code" placeholder="Enter Store Code.." autocomplete="email">
                                </div>
                                <label class="col-md-2 col-form-label" for="hf-email">Tanggal pendaftaran</label>
                                <div class="col-md-4">
                                    <input class="form-control" id="tanggal" type="date" name="address_code" placeholder="Enter Address Code.." autocomplete="email">
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <div class="col-sm-6">
                                    <input type="submit" name="submit" class="btn btn-info btn-sm" value="Search">
                                    <input type="submit" name="export" class="btn btn-info btn-sm" value="Export">
                                    <input type="reset" name="reset" class="btn btn-info btn-sm" value="Clear">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
				<div class="card">
                    <div class="card-header">
                        <a href="#daftarPasien" class="collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Daftar</strong><small> Transaksi</small></a>
                    </div>				
                    <div class="card-body collapse" id="daftarPasien" style="overflow-x:auto;">
                        <table class="table table-responsive-sm">
						<thead>
							<tr>
								<th>No</th>
								<th>Tanggal</th>
								<th>No. Rekam Medis</th>
								<th>Nama Pasien</th>
								<th>Status</th>
								<th style="text-align:center">Aksi</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>


                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

@endsection
