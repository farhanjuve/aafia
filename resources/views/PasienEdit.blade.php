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
                        <a><strong>Edit</strong><small> Pasien</small></a>
                    </div>
                    <div class="card-body">
                        <form class="form-horizontal" action="{{ route('editPasien-post', ['id' => $user->id]) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row register-form">
                                    <div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Nama Pasien</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="name" name="name" value="{{ $user->name ?? "" }}" required autofocus placeholder="Nama lengkap *">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">NIK</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="nik" name="nik" value="{{ $user->nik}}" required autofocus placeholder="NIK *">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">TTL</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="ttl" name="ttl" value="{{ $user->ttl ?? "" }}"  placeholder="TTL *">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Berat badan</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="bb" name="bb" value="{{ $user->bb ?? "" }}"  placeholder="Berat badan *">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Tinggi badan</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="tb" name="tb" value="{{ $user->tb ?? "" }}" placeholder="Tinggi badan *">
											</div>
										</div>
										<h5 class="ex1">Wali/Keluarga</h5>
                                        
                                    </div>
                                    <div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Nomor telepon *</label>
											<div class="col-sm-10">
											  <input type="text" minlength="6" maxlength="16" id="telepon" name="telepon" class="form-control" placeholder="Nomor telepon*" value="{{ $user->telp ?? "" }}" required>
											</div>
										</div>

                                        <div class="form-group row">
											<label class="col-sm-2 col-form-label">Pekerjaan</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="pekerjaan" name="pekerjaan" value="{{ $user->pekerjaan ?? "" }}"  placeholder="Pekerjaan *">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Suhu badan</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="suhu" name="suhu" value="{{ $user->suhu ?? "" }}">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Alamat *</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="alamat" name="alamat" value="{{ $user->alamat ?? "" }}">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Tekanan darah</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="tekanan_darah" name="tekanan_darah" value="{{ $user->tekanan_darah ?? "" }}">
											</div>
										</div>
										
                                    </div>
                                </div>
								<div class="row register-form">
                                    <div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Nama Wali/Keluarga</label>
											<div class="col-sm-8">
											  <input type="text" class="form-control" id="name_kel" name="name_kel" value="{{ $user->name_kel ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Nomor telepon Wali/Keluarga</label>
											<div class="col-sm-8">
											  <input type="text" class="form-control" id="telp_kel" name="telp_kel" value="{{ $user->telp_kel ?? "" }}">
											</div>
										</div>
                                        
                                        <h5 class="ex1">Riwayat Kesehatan</h5>
                                    </div>
                                </div>
								<div class="row register-form">
                                    <div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Opname</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="opname" name="opname" value="{{ $user->opname ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Operasi</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="operasi" name="operasi" value="{{ $user->operasi ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Alergi</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="alergi" name="alergi" value="{{ $user->alergi ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Penyakit Jantung</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="jantung" name="jantung" value="{{ $user->jantung ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Diabetes</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="diabetes" name="diabetes" value="{{ $user->diabetes ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Hemofilia</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="hemofilia" name="hemofilia" value="{{ $user->hemofilia ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Hepatitis</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="hepatitis" name="hepatitis" value="{{ $user->hepatitis ?? "" }}">
											</div>
										</div>
										
                                    </div>
                                    <div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Gastring</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="gastring" name="gastring" value="{{ $user->gastring ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Penyakit Ginjal</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="ginjal" name="ginjal" value="{{ $user->ginjal ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Asma</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="asma" name="asma" value="{{ $user->asma ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">TBC</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="tbc" name="tbc" value="{{ $user->tbc ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Rheu. Fever</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="rheu" name="rheu" value="{{ $user->rheu ?? "" }}">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Lain-lain</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="lainlain" name="lainlain" value="{{ $user->lainlain ?? "" }}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Kebiasaan buruk</label>
											<div class="col-sm-10">
											  <input type="text" class="form-control" id="kebiasaan" name="kebiasaan" value="{{ $user->kebiasaan ?? "" }}">
											</div>
										</div>
										<button type="submit" class="btn btn-primary" name="Submit" value="submit">Simpan</button>
									</div>
                                </div>
                        </form>
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
