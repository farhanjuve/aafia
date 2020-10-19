<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Transaction;
use App\Models\Tindakan;
use App\Models\Pasien;
use Illuminate\Support\Facades\DB;

class TransactionController extends Controller
{
    //
	public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
		//return $request;
		$data = array();
		
		if($request->submit) {
			return $request;
			$tindakan = DB::table('tindakan_tbl')->get();
			$dataPasien = Pasien::where('no_rm', $request->identitas)->orWhere('name', $request->identitas)->first();

			foreach ($tindakan as $key => $value) {
				$newTransaction = new Transaction();
				
				$newTransaction->nomor_rm = $dataPasien->no_rm;
				$newTransaction->nama_pasien = $dataPasien->name;
				$newTransaction->tindakan = $value->kode;
				$newTransaction->status = "mencari_dokter";

				$newTransaction->save();

			}
			
			$data['message'] = "Pasien sukses didaftarkan. Silahkan masuk";
		}
		
		$statusTransaksi = array("mencari_dokter", "bayar" );
		

		$data['norm'] = Pasien::select('no_rm')->get();
		$data['nama_pasien'] = Pasien::select('name')->get();
		//return $data;
		
		$data['message'] = null;
		//$data['norm'] = null;
		
		//$cek = Transaction::whereIn('status', $statusTransaksi)->get();
		$cek = Transaction::distinct()->select('nomor_rm');
		$data['cek'] = $cek;
				
        return view('TransaksiRegister', $data);
    }
	
	public function dokter(){
		$data = array();
		$cek = DB::table('transaction_tbl')
			   ->distinct()
			   ->orderBy('created_at', 'asc')
			   ->where('status', "mencari_dokter")
			   ->get();
		//$cek = Transaction::distinct('created_at')->where('status', "mencari_dokter")->get();
		//$cek = \App\Models\Transaction::distinct()->select('nomor_rm');
		
		
		$data['cek'] = $cek;
		//return $data;
		return view('TransaksiDokter', $data);
	}
	
	public function tindakan_transaksi($created_at){
		//return $created_at;
		$data = array();
		$cek = Transaction::where('status', "mencari_dokter")
				->where('created_at', $created_at)
				->first();
		$daftarTransaksi = Transaction::where('status', "mencari_dokter")->get();
		$tindakan = Tindakan::select('deskripsi')->get();
		$userini = Auth::user();
		$data['daftarTransaksi'] = $daftarTransaksi;

		$data['norm'] = $cek->nomor_rm;
		$data['poli'] = $cek->poli;
		$data['tanggal'] = \Carbon\Carbon::now()->toFormattedDateString();
		$data['tindakan'] = $tindakan;
		$data['nodaftar'] = $cek->id;
		$data['nama_pasien'] = $cek->nama_pasien;
		$data['nama_dokter'] = $userini->name;
		//$data['tindakan'] = array("mencari_dokter", "bayar" );
		
		//return $data['tindakan'];

		return view('TransaksiTindakan', ['data' => $data, 'created_at' => $created_at]);
	}
	
	public function bayar(Request $request){
		
		return $request;
		//return view('TransaksiBayar');
	}

}
