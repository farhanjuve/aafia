<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pasien;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Session;

class PasienController extends Controller
{
    public function daftarPasien(Request $request){
		$data = array();
		$pasienDB = Pasien::where('nik', NULL)->first();
		$kosongkah = empty($pasienDB);
		//return $kosongkah;
		//$kosongkah = is_object($pasienDB->no_rm);
		//return $pasienDB->no_rm;
		
		if($request->submit) {
			if($kosongkah == 1){
				$pasienDB = new Pasien();
				
				//$pasienDB->no_rm = Carbon::now()->format('dHis'); sprintf("%'.06d\n", $id->id);
				$id = Pasien::select(DB::raw("MAX(no_rm) as id"))->first();
				$pasienDB->no_rm = sprintf("%'.06d\n", $id->id + 1);				
				Session::put('message', 'Pasien berhasil di daftarkan dengan nomor RM : ' . sprintf("%'.06d\n", $id->id + 1));
			}
			//return $request;
			$pasienDB->name = $request->name ?? null;
			$pasienDB->nik = $request->nik ?? null;
			$pasienDB->lp = $request->gender ?? "";
			$pasienDB->goldar = $request->goldar ?? null;
			$pasienDB->agama = $request->agama ?? null;
			$pasienDB->ttl = $request->ttl ?? null;
			$pasienDB->alamat = $request->alamat ?? null;
			$pasienDB->telp = $request->telepon ?? null;
			$pasienDB->sts_nikah = $request->sts_nikah ?? null;
			$pasienDB->pekerjaan = $request->pekerjaan ?? null;
			$pasienDB->kel_wali = $request->wali_kel ?? null;
			$pasienDB->sts_kel = $request->sts_kel ?? null;
			$pasienDB->name_kel = $request->wali_name ?? null;
			$pasienDB->telp_kel = $request->wali_telp ?? null;
			$pasienDB->tekanan_darah = $request->tekanan_darah ?? null;
			$pasienDB->suhu = $request->suhu ?? null;
			$pasienDB->bb = $request->bb;
			$pasienDB->tb = $request->tb;
			
			$pasienDB->opname = $request->opname ?? null;
			$pasienDB->operasi = $request->operasi ?? null;
			$pasienDB->alergi = $request->alergi ?? null;
			$pasienDB->jantung = $request->jantung ?? null;
			$pasienDB->diabetes = $request->diabetes ?? null;
			$pasienDB->hemofilia = $request->hemofilia ?? null;
			$pasienDB->hepatitis = $request->hepatitis ?? null;
			$pasienDB->gastring = $request->gastring ?? null;
			$pasienDB->ginjal = $request->ginjal ?? null;
			$pasienDB->asma = $request->asma ?? null;
			$pasienDB->tbc = $request->tbc ?? null;
			$pasienDB->rheu = $request->rheu ?? null;
			$pasienDB->lainlain = $request->lainlain ?? null;
			$pasienDB->kebiasaan = $request->kebiasaan ?? null;
			
			$pasienDB->save();

			//return "success";
			//new->where("task", $request->utc);
			if($kosongkah){
				
			} else {
				Session::put('message', 'Pasien berhasil di daftarkan dengan nomor RM : ' . $pasienDB->no_rm);
			}
		}
		$passien = DB::table('pasien_tbl')->where('nik', '<>', NULL)->get();
		$data['pasien'] = $passien;
		//return $request;

		return view('PasienRegister', $data);
	}
	
	public function editPasien(Request $request, $id){
		
		$data = array();
		$user = Pasien::find($id);
		
		//return $request;
		//return $user->firstorfail();
		
		if($request->nik){
			$user->name = $request->name ?? null;
			$user->nik = $request->nik;
			$user->ttl = $request->ttl ?? null;
			$user->bb = $request->bb;
			$user->tb = $request->tb;

			$user->telp = $request->telepon ?? null;
			$user->pekerjaan = $request->pekerjaan ?? null;
			$user->suhu = $request->suhu ?? null;
			$user->alamat = $request->alamat ?? null;
			$user->tekanan_darah = $request->tekanan_darah ?? null;			
			
			$user->name_kel = $request->name_kel ?? null;
			$user->telp_kel = $request->telp_kel ?? null;
			
			$user->opname = $request->opname ?? null;
			$user->operasi = $request->operasi ?? null;
			$user->alergi = $request->alergi ?? null;
			$user->jantung = $request->jantung ?? null;
			$user->diabetes = $request->diabetes ?? null;
			$user->hemofilia = $request->hemofilia ?? null;
			$user->hepatitis = $request->hepatitis ?? null;
			$user->gastring = $request->gastring ?? null;
			$user->ginjal = $request->ginjal ?? null;
			$user->asma = $request->asma ?? null;
			$user->tbc = $request->tbc ?? null;
			$user->rheu = $request->rheu ?? null;
			$user->lainlain = $request->lainlain ?? null;
			$user->kebiasaan = $request->kebiasaan ?? null;
			$user->save();
			
			$data["status"] = "success";
			$message = 'Sukses ganti NIK';
			$data['message'] = $message;
			$pasien = DB::table('pasien_tbl')
			   ->get();
			$data['pasien'] = $pasien;
			Session::put('message', 'Pasien berhasil di edit, silahkan cek');

			return view('vDataPasien', $data)->with(['success' => $data["message"]]);
		} else {
			$data['user'] = $user;
			return view('PasienEdit', $data);
		}
	}
	
	public function hapusPasien($id){
		try{
            $data = array();
            
            $user = Pasien::find($id);
            $data["nama"] = $user->name;
			//return $id;
            $user->nik = null;
            $user->name = null;
            $user->save();
			//Session()->forget('message');
			Session::put('message', 'Pasien ' . $data["nama"] . ' berhasil dihapus');

            $data["status"] = "success";
        }
        catch(\Illuminate\Database\QueryException $e){
            $data["status"] = "error";
            $data["message"] = "Error delete ";
        }

        if ($data["status"] == "success") {
            //return \Redirect::route('RegisPasien')->with(['success' => $data["message"]]);
			$pasien = DB::table('pasien_tbl')
			   ->where('nik', '<>', null)
			   ->get();
			$data['pasien'] = $pasien;
			Session::put('message', 'Pasien ' . $data["nama"] . ' berhasil dihapus');
			return view('vDataPasien', $data);
        }
        else{
			$pasien = DB::table('pasien_tbl')
			   ->where('nik', '<>', null)
			   ->get();
			$data['pasien'] = $pasien;
			return view('vDataPasien', $data);
            //return \Redirect::route('RegisPasien')->with(['error' => $data["message"]]);
        }
	}
}
