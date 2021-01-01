@extends('layouts.app')

@section('content')

<div class="container-fluid">
	<div class="animate fadeIn">
        <div class="row justify-content-center" style="margin-top:20px;">
            <div class="col-sm-12">
                @if ($message = Session::get('message'))
                    <div class="alert alert-danger alert-block" style="margin-top:1.5rem">
                        <button href="javascript:history.go(-1)" type:button class="close" data-dismiss="alert">x</button>
                        <strong>{{ $message }}</strong>
						<a href="javascript:history.go(-1)">kembali</a>
                    </div>
                @else
                    <div class="alert alert-danger alert-block" style="margin-top:1.5rem">
                        <button href="javascript:history.go(-1)" type:button class="close" data-dismiss="alert">x</button>
                        <strong>Gagal, silahkan </strong>
						<a href="javascript:history.go(-1)">kembali</a>
                    </div>
                @endif
            </div>
        </div>
	</div>
</div>

@endsection
