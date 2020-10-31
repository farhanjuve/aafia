<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Transaction;
use App\Models\Tindakan;
use App\Models\Pasien;
use App\Models\Dokter;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

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
			//return $request;
			$tindakan = DB::table('tindakan_tbl')->get();
			$dataPasien = Pasien::where('no_rm', $request->identitas)->orWhere('name', $request->identitas)->first();

			foreach ($tindakan as $key => $value) {
				$newTransaction = new Transaction();
				
				$newTransaction->nomor_rm = $dataPasien->no_rm;
				$newTransaction->nomor_transaksi = Carbon::now()->format('dmy_Hi');
				$newTransaction->poli = $request->poli;
				$newTransaction->nama_pasien = $dataPasien->name;
				$newTransaction->tindakan = $value->deskripsi;
				$newTransaction->status = "Mencari Dokter";

				$newTransaction->save();

			}
			
			$data['message'] = "Pasien sukses didaftarkan. Silahkan masuk";
		}
		$listTransaksi = DB::table('transaction_tbl')
					   ->where('status', 'Menunggu Pembayaran')
					   ->orWhere('status', 'Mencari Dokter')
					   ->orderBy('created_at', 'asc')
					   ->get()
					   ->unique('created_at');
		$statusTransaksi = array("Mencari Dokter", "Menunggu Pembayaran" );
		

		$data['norm'] = Pasien::select('no_rm')->get();
		$data['nama_pasien'] = Pasien::select('name')->get();
		//return $data;
		
		$data['message'] = null;
		//$data['norm'] = null;
		
		//$cek = Transaction::whereIn('status', $statusTransaksi)->get();
		$cek = Transaction::distinct()->select('nomor_rm');
		$data['listTransaksi'] = $listTransaksi;
				
        return view('TransaksiRegister', $data);
    }
	
	public function dokter(){
		$data = array();
		$userini = Auth::user();
		//return $userini->gigi_umum;

		//$cek = Transaction::select('name')->get();
		$cek = DB::table('transaction_tbl')
			   ->where('poli', $userini->gigi_umum)
			   ->where('status', 'Mencari Dokter')
			   ->orwhere('nama_dokter', $userini->name)
			   ->where('harga', null)
			   ->orderBy('created_at', 'asc')
			   //->groupByRaw('created_at')
			   ->get()
			   ->unique('created_at');
		//return $cek;
		//$cek = DB::select('SELECT * FROM transaction_tbl GROUP BY created_at');
		//$cek = Transaction::select('*')->groupBy('created_at')->get();
		//$cek2 = Transaction::select(DB::raw('distinct(created_at)'))->get();
		
		foreach ($cek as $trf => $value){
			$tt = $trf;
			$data[$trf+1] = $value;
			$cek1 = DB::table('transaction_tbl')
			   ->select('id')
			   ->where('created_at', $cek[$trf]->created_at)
			   ->where('poli', $userini->gigi_umum)
			   ->where('status', 'Mencari Dokter')
			   ->orwhere('nama_dokter', $userini->name)
			   ->first();
			$aa[$trf+1] = $cek1;
		}
		
		$data['cek'] = $cek;
		return view('TransaksiDokter', $data);
	}
	
	public function tindakan_transaksi($created_at){
		//return $created_at;
		$data = array();
		$userini = Auth::user();
		$cek = Transaction::where('created_at', $created_at)
				->get();
		//return $cek;
		foreach($cek as $i => $value){
			$value->status = "Mendapat Dokter";
			$value->nama_dokter = $userini->name;
			$value->save();
			
			$daftarTransaksi = Transaction::where('status', "Mencari Dokter")->get();
			$tindakan = Tindakan::select('deskripsi')->get();
			$data['daftarTransaksi'] = $daftarTransaksi;

			$data['norm'] = $value->nomor_rm;
			$data['no_transaksi'] = $value->nomor_transaksi;
			$data['poli'] = $value->poli;
			$data['tanggal'] = \Carbon\Carbon::now()->toFormattedDateString();
			$data['tindakan'] = $tindakan;
			$data['nodaftar'] = $value->id;
			$data['nama_pasien'] = $value->nama_pasien;
			$data['nama_dokter'] = $userini->name;
		}
		//$data['tindakan'] = array("Mencari Dokter", "bayar" );
		
		//return $data['tindakan'];

		return view('TransaksiTindakan', ['data' => $data, 'created_at' => $created_at]);
	}
	
	public function bayar(Request $request){
		$hargatotal = 0;
		$data = array();
		//return $request;
		$data['req'] = $request;
		$data['tindakan'] = $request->name;
		$data['tanggal'] = $request->tanggal;
		$data['nama_pasien'] = $request->nama_pasien;
		$data['poli'] = $request->poli;
		$data['message'] = "Selesai, pasien dimohon membayar ke kasir";
		
		foreach($request->name as $tindakan => $value){
			//echo $value;
			$cek1 = Transaction::where('tindakan', $value)
					->first();
			return $cek1;
			if($cek1){
				$cek1->tindakan_isPick = 1;
				$cek1->save();

				$harga = Tindakan::where('deskripsi', $value)
						->select('harga')
						->first();
				$hargatotal += $harga->harga;
			} else {
				$newTransaction = new Transaction();
				
				$newTransaction->nomor_transaksi = $request->no_transaksi;
				$newTransaction->nomor_rm = $request->norm;
				$newTransaction->poli = $request->poli;
				$newTransaction->nama_pasien = $request->nama_pasien;
				$newTransaction->nama_dokter = $request->nama_dokter;
				$newTransaction->tindakan = $value;
				$newTransaction->tindakan_isPick = 1;
				$newTransaction->status = "Mendapat Dokter";
				$newTransaction->harga = "0";

				$newTransaction->save();
			}
		}
		//return $hargatotal;
		$cek2 = Transaction::where('nomor_transaksi', $request->no_transaksi)
				->get();
				
		foreach($cek2 as $saving){
			$saving->status = "Menunggu Pembayaran"; 
			$saving->harga = $hargatotal; 
			$saving->save(); 
		}
		/*
		if($request->cancel){
			$cek = Transaction::where('status', "Mencari Dokter")
				->where('created_at', $created_at)
				->get();
		}
		*/
		
		//return $data['tindakan'];
		return \Redirect::route('DokterTransaksi')->with(['success' => $data["message"]]);
	}
	
	public function kasirBayar($created_at){
		$cek = DB::table('transaction_tbl')
			   ->where('created_at', $created_at)
			   ->first();
		$cek2 = DB::table('transaction_tbl')
				//->select('tindakan')
				->where('created_at', $created_at)
				->where('tindakan_isPick', 1)
				->get();
			   
			$data['no_transaksi'] = $cek->nomor_transaksi;
			$data['nama_dokter'] = $cek->nama_dokter;
			$data['poli'] = $cek->poli;
			$data['norm'] = $cek->nomor_rm;
			$data['hargatotal'] = $cek->harga;
			
			$data['nama_pasien'] = $cek->nama_pasien;
			$data['poli'] = $cek->poli;
		//foreach($cek as $data => $value){
		//}
		$data['tanggal'] = \Carbon\Carbon::now()->toFormattedDateString();
		$data['tindakan'] = $cek2;
		//return $data['tindakan'];
			   //->unique('created_at');
		
		
		return view('TransaksiBayar', ['data' => $data, 'created_at' => $created_at]);
	}

}
