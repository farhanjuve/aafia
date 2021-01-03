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
                @if ($message = Session::get('message'))
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
                        <form class="form-horizontal" action="{{route('daftarPasien')}}" id="contact_form" name="contact_form" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
											<input type="text" class="form-control" id="name" name="name" value="{{ $user->name ?? "" }}" required autofocus placeholder="Nama lengkap *">
											
                                        </div>
                                        <div class="form-group">
                                            <input id="nik" name="nik" type="number" class="form-control" placeholder="NIK*" value="" required>
                                        </div>
                                        <div class="form-group">
											<i>Jenis Kelamin</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="Laki-laki" checked="">
                                                    <span> Laki-laki </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="Perempuan">
                                                    <span> Perempuan </span> 
                                                </label>
                                            </div>
                                        </div>
										<div class="form-group">
											<i>Golongan darah</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="goldar" value="A" checked="">
                                                    <span> A </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="goldar" value="B">
                                                    <span>B </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="goldar" value="AB">
                                                    <span> AB </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="goldar" value="O">
                                                    <span>O </span> 
                                                </label>
												
                                            </div>
                                        </div>
										
										
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Tempat tanggal lahir, contoh : Solo, 31/12/2020" required>
                                        </div>
										<div class="form-group">
                                            <input id="bb" name="bb" type="number" class="form-control" placeholder="Berat badan">
                                        </div>
										<div class="form-group">
                                            <input id="tb" name="tb" type="number" class="form-control" placeholder="Tinggi badan">
                                        </div>
										
										
										<h5 class="ex1">Wali/Keluarga</h5>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" minlength="6" maxlength="16" id="telepon" name="telepon" class="form-control" placeholder="Nomor telepon*" value="">
                                        </div>
										<div class="col-sm-12 error-msg" style="margin-left: 15px;"></div>  

                                        <div class="form-group">
                                            <input id="pekerjaan" name="pekerjaan" type="text" class="form-control" placeholder="Pekerjaan" value="">
                                        </div>
										<div class="form-group">
											<i>Status pernikahan</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="sts_nikah" value="lajang" checked="">
                                                    <span> Lajang </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="sts_nikah" value="menikah">
                                                    <span> Menikah </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="sts_nikah" value="duda/janda">
                                                    <span> Duda/Janda</span> 
                                                </label>
                                            </div>
                                        </div>
										<div class="form-group">
											<i>Agama</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="agama" value="islam" checked="">
                                                    <span> Islam </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="agama" value="kristen">
                                                    <span> Kristen Protestan </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="agama" value="katolik">
                                                    <span> Katolik </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="agama" value="hindu">
                                                    <span> Hindu </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="agama" value="buddha">
                                                    <span> Buddha </span> 
                                                </label>
												<label class="radio inline"> 
                                                    <input type="radio" name="agama" value="khonghucu">
                                                    <span> Khonghucu </span> 
                                                </label>
												
                                            </div>
                                        </div>
										<div class="form-group">
                                            <input id="alamat" name="alamat" type="text" class="form-control" placeholder="Alamat *" value="" required>
                                        </div>
										<div class="form-group">
                                            <input id="tekanan_darah" name="tekanan_darah" type="text" class="form-control" placeholder="Tekanan darah" value="">
                                        </div>
										<div class="form-group">
                                            <input id="suhu" name="suhu" type="number" class="form-control" placeholder="Suhu badan" value="">
                                        </div>
										
                                    </div>
                                </div>
								<div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="wali_name" name="wali_name" type="text" class="form-control" placeholder="Nama Wali/Keluarga" value="" >
                                        </div>
                                        <div class="form-group">
                                            <input id="wali_telp" name="wali_telp" type="number" class="form-control" placeholder="Nomor telepon" value="">
                                        </div>
                                        
                                        <h5 class="ex1">Riwayat Kesehatan</h5>
                                    </div>
                                    <div class="col-md-6">    
										<div class="form-group">
                                            <input id="sts_kel" name="sts_kel" type="text" class="form-control" placeholder="Status wali/keluarga" value="">
                                        </div>                                    
										<div class="form-group">
											<i>Wali atau keluarga?</i>
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="wali_kel" value="wali" checked="">
                                                    <span> Wali </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="wali_kel" value="keluarga">
                                                    <span> Keluarga </span> 
                                                </label>
												
                                            </div>
                                        </div>
										
                                    </div>
                                </div>
								<div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="opname" name="opname" type="text" class="form-control" placeholder="Opname" value="">
                                        </div>
                                        <div class="form-group">
                                            <input id="operasi" name="operasi" type="text" class="form-control" placeholder="Operasi" value="">
                                        </div>
										<div class="form-group">
                                            <input id="alergi" name="alergi" type="text" class="form-control" placeholder="Alergi" value="">
                                        </div>
										
                                        <div class="form-group">
                                            <input id="jantung" name="jantung" type="text" class="form-control" placeholder="Penyakit Jantung" value="">
                                        </div>
                                        <div class="form-group">
                                            <input id="diabetes" name="diabetes" type="text" class="form-control" placeholder="Diabetes" value="">
                                        </div>
                                        <div class="form-group">
                                            <input id="hemofilia" name="hemofilia" type="text" class="form-control" placeholder="Hemofilia" value="">
                                        </div>
                                        <div class="form-group">
                                            <input id="hepatitis" name="hepatitis" type="text" class="form-control" placeholder="Hepatitis" value="">
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">    
										<div class="form-group">
                                            <input id="gastring" name="gastring" type="text" class="form-control" placeholder="Gastring" value="">
                                        </div>
										
										<div class="form-group">
                                            <input id="ginjal" name="ginjal" type="text" class="form-control" placeholder="Penyakit Ginjal" value="">
                                        </div>
										<div class="form-group">
                                            <input id="asma" name="asma" type="text" class="form-control" placeholder="Asma" value="">
                                        </div>
										<div class="form-group">
                                            <input id="tbc" name="tbc" type="text" class="form-control" placeholder="TBC" value="">
                                        </div>
										<div class="form-group">
                                            <input id="rheu" name="rheu" type="text" class="form-control" placeholder="Rheu. Fever" value="">
                                        </div>
										<div class="form-group">
                                            <input id="lainlain" name="lainlain" type="text" class="form-control" placeholder="Lain-lain" value="">
                                        </div>
										<div class="form-group">
                                            <input id="kebiasaan" name="kebiasaan" type="text" class="form-control" placeholder="Kebiasaan buruk" value="">
                                        </div>																				
                                        <input type="submit" name="submit" class="btn btn-warning" value="Daftarkan"></input>
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
                                @foreach($pasien as $data)
								<tr>
									<td>{{$data->no_rm}}</td>
									<td>{{$data->name}}</td>
									<td>{{$data->nik}}</td>
									<td>{{$data->telp}}</td>
									<td>{{$data->lp}}</td>
									<td>{{$data->alamat}}</td>
									<td style="text-align:center">
                                    <form class="{{ $data->id }}" action="{{ route('hapus-pasien', $data->id) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button type="button" class="btn btn-danger" onclick="deleteUser({{$data->id}})">
											<i class="fa fa-trash"></i>
										</button>
                                    </form>
                                </td> 
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
<script type="text/javascript">
  // Wait for the DOM to be ready
  $(function() {
    // Initialize form validation on the registration form.
    // It has the name attribute "registration"

    jQuery.validator.addMethod("specialChars", function( value, element ) {
        var regex = new RegExp("^[A-Za-z0-9_.]+$");
        var key = value;

        if (!regex.test(key)) {
           return false;
        }
        return true;
    }, "please use only alphanumeric or alphabetic characters");

    $("form[name='contact_form']").validate({
      // Specify validation rules
      rules: {
        // The key name on the left side is the name attribute
        // of an input field. Validation rules are defined
        // on the right side 
        telepon: "required",
      },
      // Specify validation error messages
      messages: { 
        telepon: "Nomor telepon minimal 10 hingga 16 karakter"
      },
      errorPlacement: function (error, element) {
          $(element).closest('.form-group').find('.error-msg').text(error.text());
      },
      // Make sure the form is submitted to the destination defined
      // in the "action" attribute of the form when valid
      submitHandler: function(form) { 
        form.submit();
      }
      
    });

    @if (strpos(request()->header('User-Agent'), 'Chrome') === false) 
      $( "input[type=date]" ).datepicker({
        changeMonth: true,
        changeYear: true
      });
      $( "input[type=date]" ).on( "change", function() {
        $( "input[type=date]" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
      }); 

    @endif
    
  });
</script>
@endsection
