@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    
						
					<div class="col-md-12 register-right">
						<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Non Dokter</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Dokter</a>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
								<form method="POST" action="{{ route('tambahKaryawan') }}">
								@csrf
								<h3 class="register-heading">Non Dokter</h3>
								<div class="row register-form">
									<div class="col-md-6">
										<div class="form-group">
											<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nama lengkap *">
											@error('name')
												<span class="invalid-feedback" role="alert">
													<strong>{{ $message }}</strong>
												</span>
											@enderror
										</div>
										<div class="form-group">
											<select class="form-control" id="lp" name="lp">
												<option class="hidden" selected="" disabled="">Jenis Kelamin *</option>
												<option value="L">Laki-laki</option>
												<option value="P">Perempuan</option>
											</select>
										</div>																									
										<div class="form-group">
											<input id="alamat" type="text" name="alamat" class="form-control" placeholder="Alamat *" value="">
										</div>
										<div class="form-group">
											<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder={{ __('Password') }} name="password" required autocomplete="new-password">
										</div>                                        
									</div>
									<div class="col-md-6">								
										<div class="form-group">
											<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder={{ __('E-Mail Address') }}>
											@error('email')
												<span class="invalid-feedback" role="alert">
													<strong>{{ $message }}</strong>
												</span>
											@enderror
										</div>							
										<div class="form-group">
											<select class="form-control" id="kode" name="kode">
												<option class="hidden" selected="" disabled="">Role *</option>
												<option value="super-admin">SUPER ADMIN</option>
												<option value="admin">ADMIN</option>
												<option value="kasir">Kasir</option>
												<option value="pendaftaran">Pendaftaran</option>
											</select>
										</div>										
										<div class="form-group">
											<input minlength="10" maxlength="15" id="telp" type="number" name="telp" class="form-control" placeholder="Nomor Telepon *" value="">
										</div>                        						
										<div class="form-group">
											<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder={{ __('Confirm Password') }}>
										</div>
									</div>
								</div>
								<div class="form-group row mb-0">
									<div class="col-md-6 offset-md-4">
										<button type="submit" class="btn btn-primary">
											{{ __('Register') }}
										</button>
									</div>
								</div>
								</form>
							</div>
							<div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
								<form method="POST" action="{{ route('tambahKaryawan') }}">
								@csrf
								<h3 class="register-heading">Dokter</h3>
								<div class="row register-form">
									<div class="col-md-6">
										<div class="form-group">
											<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nama lengkap *">
											@error('name')
												<span class="invalid-feedback" role="alert">
													<strong>{{ $message }}</strong>
												</span>
											@enderror
										</div>
										<div class="form-group">
											<select class="form-control" id="lp" name="lp">
												<option class="hidden" selected="" disabled="">Jenis Kelamin *</option>
												<option value="L">Laki-laki</option>
												<option value="P">Perempuan</option>
											</select>
										</div>																									
										<div class="form-group">
											<input id="alamat" type="text" name="alamat" class="form-control" placeholder="Alamat *" value="">
										</div>
										<div class="form-group">
											<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder={{ __('Password') }} name="password" required autocomplete="new-password">
										</div>                                        
									</div>
									<div class="col-md-6">								
										<div class="form-group">
											<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder={{ __('E-Mail Address') }}>
											@error('email')
												<span class="invalid-feedback" role="alert">
													<strong>{{ $message }}</strong>
												</span>
											@enderror
										</div>							
										<div class="form-group">
											<select class="form-control" id="gigi_umum" name="gigi_umum">
												<option class="hidden" selected="" disabled="">Gigi/Umum *</option>
												<option value="gigi">Gigi</option>
												<option value="umum">Umum</option>
											</select>
										</div>										
										<div class="form-group">
											<input minlength="10" maxlength="15" id="telp" type="number" name="telp" class="form-control" placeholder="Nomor Telepon *" value="">
										</div>                        						
										<div class="form-group">
											<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder={{ __('Confirm Password') }}>
										</div>
									</div>
								</div>
								<div class="form-group row mb-0">
									<div class="col-md-6 offset-md-4">
										<button type="submit" class="btn btn-primary">
											{{ __('Register') }}
										</button>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
					
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
