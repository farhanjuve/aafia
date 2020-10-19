<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Pasien;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
		$data = array();
		$data['user'] = Auth::user();
		$data['kode'] = $data['user']->kode;
        return view('welcome', $data);
    }
	public function dashboard()
    {
        return view('home');
    }
	
	public function RegisPasien()
    {
        //return redirect()->route('daftarPasien');
		//return route('daftarPasien');
		$data = array();
		
		$passien = DB::table('pasien_tbl')->get();
		$data['pasien'] = $passien;
		return view('PasienRegister', $data);
    }
	public function RegisTransaksi()
    {
        return route('RegisTransaksi');
    }
	
}
