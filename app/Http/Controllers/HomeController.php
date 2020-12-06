<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Pasien;
use Carbon\Carbon;
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
		$mytime = Carbon::now();
		//return $mytime->toDateString();
		$cek = DB::table('transaction_tbl')
			   ->get()
			   ->unique('nomor_transaksi');
		$today = DB::table('transaction_tbl')
			   ->whereDate('created_at', Carbon::today())
			   ->get()
			   ->unique('nomor_transaksi');
		$running = DB::table('transaction_tbl')
			   ->whereDate('created_at', Carbon::today())
			   ->where('status', '<>', 'Selesai')
			   ->get()
			   ->unique('nomor_transaksi');
		$pasien = DB::table('pasien_tbl')
			   ->get()
			   ->unique('no_rm');
		$data['total'] = count($cek);
		$data['today'] = $today;
		$data['jml_pasien'] = count($pasien);
		$data['running'] = count($running);
		//return $today;
		//return $data['today'];
        return view('admin_template', $data);
    }
	
	public function dataKaryawan(){
		$karyawan = DB::table('users')
			   ->where('kode', '<>', 'dokter')
			   ->get();
		$data['karyawan'] = $karyawan;
        return view('vDataKaryawan', $data);
	}
	
	public function dataDokter(){
		$dokter = DB::table('users')
				->where('kode', 'dokter')
				->get();
		$data['dokter'] = $dokter;
        return view('vDataDokter', $data);
	}
	
	public function dataPasien(){
		$pasien = DB::table('pasien_tbl')
			   ->get();
		$data['pasien'] = $pasien;
        return view('vDataPasien', $data);
	}
	
	public function dataTransaksi(){
		$transaksi = DB::table('transaction_tbl')
			   ->get()
			   ->unique('nomor_transaksi');
		$data['transaksi'] = $transaksi;
        return view('vDataTransaksi', $data);
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
