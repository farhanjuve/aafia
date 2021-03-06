<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
	<script src="https://kit.fontawesome.com/4f5fb3f187.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>

	
	<!-- Swal -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.9/sweetalert2.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.9/sweetalert2.min.js"></script>
	 
	<!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css">

	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
	
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <script type="text/javascript">
		  // Wait for the DOM to be ready
		function printDiv(divName) {
			console.log("hai");
			 var printContents = document.getElementById(divName).innerHTML;
			 var originalContents = document.body.innerHTML;

			 document.body.innerHTML = printContents;

			 window.print();

			 document.body.innerHTML = originalContents;
		}
		function PrintElem(elem)
		{
			var mywindow = window.open('', 'PRINT', 'height=400,width=600');

			mywindow.document.write('<html><head><title>' + document.title  + '</title>');
			mywindow.document.write('</head><body >');
			mywindow.document.write('<h1>' + document.title  + '</h1>');
			mywindow.document.write(document.getElementById(elem).innerHTML);
			mywindow.document.write('</body></html>');

			mywindow.document.close(); // necessary for IE >= 10
			mywindow.focus(); // necessary for IE >= 10*/

			mywindow.print();
			mywindow.close();

			return true;
		}
		function printContent(el){
		var restorepage = $('body').html();
		var printcontent = $('#' + el).clone();
		$('body').empty().html(printcontent);
		window.print();
		$('body').html(restorepage);
		}
		
		function deleteUser(params) {
            swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.value) {
                    $('.'+params).submit();
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    swal(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                    )
                }
            });
        }
		
		
		$(function() {
			$('.js-example-basic-single').select2();

		});
		
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
		$(function() {
			var i = 0;
			var input = document.getElementById("userinput");
			var button = document.getElementById("enter");
			//var ul = document.querySelector("ul");
			var ul = document.getElementById("list-add");
			button.addEventListener("click", myFunction);
			$( "p" ).text( "The DOM is now loaded and can be manipulated." );
			function myFunction() {
				i++;
				var li = document.createElement("li");
				
				li.className = 'list-group-item';
				li.textContent = input.value;
				ul.innerHTML += '<td><input type="text" name="name[]" placeholder="Tindakan disini" class="form-control name_list" value="'+input.value+'"/></td>';
				
				//td.className = 'form-control name_list';
				//td.textContent = input.value;
				//<tr id="row'+i+'"><td><input type="text" name="name[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>'); 
				//ul.html('<td><input type="text" name="name[]" placeholder="Enter your Name" class="form-control name_list" value="'+input.value+'"/>'+input.value+'</td>');
				//ul.appendChild(li);
			};
		});
		
	</script>
	
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
@php
$url = url('/');
if(Auth::user()){
switch (Auth::user()->kode) {
    case "kasir":
        $url = route('RegisTransaksi');
        break;
	case "Dokter":
        $url = route('DokterTransaksi');
        break;
    default:
        $url = url('/');
}
}
@endphp
                <a class="navbar-brand" href="{{ $url }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="#">{{ __('Hello!') }}</a>
                            </li>
                            
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
