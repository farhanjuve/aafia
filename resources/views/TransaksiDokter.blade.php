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
                    <div class="card-header">
                        <a href="#daftarPasien" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Daftar</strong><small> Pasien</small></a>
                    </div>				
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
							@foreach($cek as $data)
							<tr>
								<td>{{"1"}}</td>
								<td>{{\Carbon\Carbon::parse($data->created_at)->format("d M Y")}}</td>
								<td>{{$data->nomor_rm}}</td>
								<td>{{$data->nama_pasien}}</td>
								<td>{{$data->status ? "Mencari dokter" : "Null"}}</td>
								<td style="text-align:center"><a href="{{ route('TindakanTransaksi', ['created_at' => $data->created_at]) }}"><button class="btn btn-primary"><i class="fa fa-edit"></i></button></a></td>							
							</tr>
							@endforeach
						</tbody>
					</table>

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
            </div>
        </div>
	</div>
</div>
@endsection
