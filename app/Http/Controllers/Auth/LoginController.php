<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;
	public function authenticated()
	{
		$data['user'] = Auth::user();
		if($data['user']->kode == "Dokter")
		{
			return redirect()->route('DokterTransaksi');
		} 
		if($data['user']->kode == "kasir")
		{
			return redirect()->route('RegisTransaksi');
		} 
		if($data['user']->kode == "pendaftaran")
		{
			return redirect()->route('RegisPasien');
		} 

		return redirect()->route('welcome');
	}

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::WELCOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
