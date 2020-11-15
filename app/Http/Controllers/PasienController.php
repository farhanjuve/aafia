<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pasien;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;


class PasienController extends Controller
{
    public function daftarPasien(Request $request){
		$data = array();
		
		if($request->submit) {
			//return $request;
			$pasienDB = new Pasien();
			
			$pasienDB->no_rm = Carbon::now()->format('dHis');
			$pasienDB->name = $request->name ?? "";
			$pasienDB->nik = $request->nik ?? "";
			$pasienDB->lp = $request->gender ?? "";
			$pasienDB->goldar = $request->goldar ?? "";
			$pasienDB->agama = $request->agama ?? "";
			$pasienDB->ttl = $request->ttl ?? "";
			$pasienDB->alamat = $request->alamat ?? "";
			$pasienDB->telp = $request->telepon ?? "";
			$pasienDB->sts_nikah = $request->sts_nikah ?? "";
			$pasienDB->pekerjaan = $request->pekerjaan ?? "";
			$pasienDB->kel_wali = $request->wali_kel ?? "";
			$pasienDB->sts_kel = $request->sts_kel ?? "";
			$pasienDB->name_kel = $request->wali_name ?? "";
			$pasienDB->telp_kel = $request->wali_telp ?? "";
			$pasienDB->tekanan_darah = $request->tekanan_darah ?? "";
			$pasienDB->suhu = $request->suhu ?? "";
			$pasienDB->bb = $request->bb;
			$pasienDB->tb = $request->tb;
			
			$pasienDB->opname = $request->opname ?? "";
			$pasienDB->operasi = $request->operasi ?? "";
			$pasienDB->alergi = $request->alergi ?? "";
			$pasienDB->jantung = $request->jantung ?? "";
			$pasienDB->diabetes = $request->diabetes ?? "";
			$pasienDB->hemofilia = $request->hemofilia ?? "";
			$pasienDB->hepatitis = $request->hepatitis ?? "";
			$pasienDB->gastring = $request->gastring ?? "";
			$pasienDB->ginjal = $request->ginjal ?? "";
			$pasienDB->asma = $request->asma ?? "";
			$pasienDB->tbc = $request->tbc ?? "";
			$pasienDB->rheu = $request->rheu ?? "";
			$pasienDB->lainlain = $request->lainlain ?? "";
			$pasienDB->kebiasaan = $request->kebiasaan ?? "";
			
			
			$pasienDB->save();

			//return "success";
			//new->where("task", $request->utc);
			$message = 'success';
			$data['message'] = $message;
        }
		$passien = DB::table('pasien_tbl')->get();
		$data['pasien'] = $passien;
		return view('PasienRegister', $data);
	}
	
	public function hapusPasien($id){
		try{
            $data = array();
            
            $user = Pasien::find($id);
            $user->delete();

            $data["status"] = "success";
            $data["message"] = "Success delete " .$user->name;
        }
        catch(\Illuminate\Database\QueryException $e){
            $data["status"] = "error";
            $data["message"] = "Error delete ";
        }

        if ($data["status"] == "success") {
            return \Redirect::route('RegisPasien')->with(['success' => $data["message"]]);
        }
        else{
            return \Redirect::route('RegisPasien')->with(['error' => $data["message"]]);
        }
	}
}
