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
						<form method="POST" action="{{ route('editPasien-post', ['id' => $user->id]) }}">
							@csrf>
						  <div class="form-group">
							<label>Nama Pasien</label>
							<input type="text" class="form-control" readonly placeholder="{{ $user->name }}" >
						  </div>
						  <div class="form-group">
							<label>NIK</label>
							<input type="text" name="nik" class="form-control" placeholder="{{ $user->nik }}">
						  </div>
						  <button type="submit" class="btn btn-primary" value="submit">Submit</button>
						</form>
					</div>
                </div>
            </div>
        </div>
	</div>
</div>
@endsection
