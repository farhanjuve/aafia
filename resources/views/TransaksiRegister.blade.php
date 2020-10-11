@extends('layouts.app')

@section('content')
<style>
h5.ex1 {
  margin-top: 45px;
}
</style>
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
                        <a><strong>Pasien</strong><small> Formulir</small></a>
                    </div>
                    <div class="card-body">
                        <form class="form-horizontal" action="#" method="POST">
                            @csrf
                            <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Nama lengkap*" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control" placeholder="NIK*" value="">
                                        </div>
                                        <div class="form-group">
											<i>Jenis Kelamin</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked="">
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
										<div class="form-group">
											<i>Golongan darah</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked="">
                                                    <span> A </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>B </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked="">
                                                    <span> AB </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>O </span> 
                                                </label>
												
                                            </div>
                                        </div>
										
										
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Tempat tanggal lahir *" value="">
                                        </div>
										<div class="form-group">
                                            <input type="text" class="form-control" placeholder="Berat badan" value="">
                                        </div>
										<div class="form-group">
                                            <input type="text" class="form-control" placeholder="Tinggi badan" value="">
                                        </div>
										
										
										<h5 class="ex1">Wali/Keluarga</h5>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="telepon" class="form-control" placeholder="Nomor telepon*" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Pekerjaan*" value="">
                                        </div>
										<div class="form-group">
											<i>Status pernikahan</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked="">
                                                    <span> Lajang </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Menikah </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Cerai hidup</span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Cerai meninggal</span> 
                                                </label>
                                            </div>
                                        </div>
										<div class="form-group">
											<i>Agama</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked="">
                                                    <span> Islam </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Kristen </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Hindu </span> 
                                                </label>
												
                                            </div>
                                        </div>
										<div class="form-group">
                                            <input type="text" class="form-control" placeholder="Alamat*" value="">
                                        </div>
										<div class="form-group">
                                            <input type="text" class="form-control" placeholder="Tekanan darah" value="">
                                        </div>
										<div class="form-group">
                                            <input type="text" class="form-control" placeholder="Suhu badan" value="">
                                        </div>
										
                                    </div>
                                </div>
								<div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Nama Wali/Keluarga*" value="" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAfBJREFUWAntVk1OwkAUZkoDKza4Utm61iP0AqyIDXahN2BjwiHYGU+gizap4QDuegWN7lyCbMSlCQjU7yO0TOlAi6GwgJc0fT/fzPfmzet0crmD7HsFBAvQbrcrw+Gw5fu+AfOYvgylJ4TwCoVCs1ardYTruqfj8fgV5OUMSVVT93VdP9dAzpVvm5wJHZFbg2LQ2pEYOlZ/oiDvwNcsFoseY4PBwMCrhaeCJyKWZU37KOJcYdi27QdhcuuBIb073BvTNL8ln4NeeR6NRi/wxZKQcGurQs5oNhqLshzVTMBewW/LMU3TTNlO0ieTiStjYhUIyi6DAp0xbEdgTt+LE0aCKQw24U4llsCs4ZRJrYopB6RwqnpA1YQ5NGFZ1YQ41Z5S8IQQdP5laEBRJcD4Vj5DEsW2gE6s6g3d/YP/g+BDnT7GNi2qCjTwGd6riBzHaaCEd3Js01vwCPIbmWBRx1nwAN/1ov+/drgFWIlfKpVukyYihtgkXNp4mABK+1GtVr+SBhJDbBIubVw+Cd/TDgKO2DPiN3YUo6y/nDCNEIsqTKH1en2tcwA9FKEItyDi3aIh8Gl1sRrVnSDzNFDJT1bAy5xpOYGn5fP5JuL95ZjMIn1ya7j5dPGfv0A5eAnpZUY3n5jXcoec5J67D9q+VuAPM47D3XaSeL4AAAAASUVORK5CYII=&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">
                                        </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control" placeholder="Nomor telepon*" value="">
                                        </div>
                                        
                                        
                                    </div>
                                    <div class="col-md-6">    
										<div class="form-group">
                                            <input type="text" class="form-control" placeholder="Status wali/keluarga" value="">
                                        </div>                                    
										<div class="form-group">
											<i>Wali atau keluarga?</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked="">
                                                    <span> Wali </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Keluarga </span> 
                                                </label>
												
                                            </div>
                                        </div>
										
                                        <input type="submit" class="btnRegister" value="Register">
                                    </div>
                                </div>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <a href="#filter-asset" class="collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Pencarian</strong><small> Pasien</small></a>
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
                        <a href="#daftarPasien" class="collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="filter-asset"><strong>Daftar</strong><small> Pasien</small></a>
                    </div>				
                    <div class="card-body collapse" id="daftarPasien" style="overflow-x:auto;">
                        <table class="table table-responsive-sm">
                            <thead>
                                <tr>
                                    <th>No. Rekam Medis</th>
                                    <th>Nama Pasien</th>
                                    <th>NIK</th>
                                    <th>Nomor Telepon</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Alamat</th>
                                    <th style="text-align:center">Delete</th>
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
