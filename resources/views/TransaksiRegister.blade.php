@extends('layouts.app')

@section('content')

	<script type="text/javascript">
		  // Wait for the DOM to be ready
		$(function() {
			$('.aa').select2();


		});
	</script>
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
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
                    <div class="card-header">{{ __('Pendaftaran') }}</div>

					<div class="card-body">
						<form method="POST" action="{{ route('Registernew') }}">
							@csrf

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">Nama Pasien</label>
															
								<div class="col-md-6">								
									<select class="js-example-basic-single" id="identitas" name="identitas" style="width: 100%;">
										<option class="hidden" selected="" disabled="">Nama*</option>
										@foreach($norm as $rmno)
										<!--	<option value="{{$rmno->no_rm}}" {{(request()->input("norm")==$rmno) ? "selected" : ""}}>{{$rmno->no_rm}}</option>
										-->@endforeach
										@foreach($nama_pasien as $nama)
											<option value="{{$nama->name}}" {{(request()->input("nama_pasien")==$nama) ? "selected" : ""}}>{{$nama->name}}</option>
										@endforeach
									</select>
									
								</div>
							</div>
							
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Jenis Poli') }}</label>

								<div class="col-md-6">								
									<select class="js-example-basic-single" id="poli" name="poli" style="width: 100%;">
										<option class="hidden" selected="" disabled="">pilih jenis poli disini*</option>
										<option value="gigi">Gigi</option>
										<option value="umum">Umum</option>
										
									</select>
									
								</div>
							</div>                        														

							<div class="form-group row mb-0">
								<div class="col-md-6 offset-md-4">
									<button type="submit" name="submit" value="Register" class="btn btn-primary">
										{{ __('Daftarkan') }}
									</button>
								</div>
							</div>
						</form>
					</div>
                </div>
				<div class="card">
                    <div class="card-header">
                        <a href="#daftarPasien" class="collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Daftar</strong><small> Transaksi</small></a>
                    </div>				
                    <div class="card-body" id="daftarPasien" style="overflow-x:auto;">
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
							@foreach($listTransaksi as $data)
							<tr>
								<td>{{"1"}}</td>
								<td>{{\Carbon\Carbon::parse($data->created_at)->format("d M Y")}}</td>
								<td>{{$data->nomor_rm}}</td>
								<td>{{$data->nama_pasien}}</td>
								<td>{{$data->status ? $data->status : "Null"}}</td>
								@if($data->status == "Menunggu Pembayaran")
								<td style="text-align:center"><a href="{{ route('BayarBeneran', ['created_at' => $data->nomor_transaksi]) }}"><button class="btn btn-primary"><i class="fa fa-edit"></i></button></a></td>
								@else
								<td style="text-align:center">
									<form class="{{ $data->id }}" action="{{ route('transaction-destroy', ['id' => $data->nomor_transaksi]) }}" method="post">
										   @csrf
										   @method('DELETE')
										<a><button class="btn btn-danger"><i class="fa fa-trash"></i></button></a>
									</form>
								</td>
								@endif
							</tr>
							@endforeach
						</tbody>
					</table>


                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
@endsection
