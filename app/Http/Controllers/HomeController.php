<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Pasien;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Session;


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
	
	protected $alphabet = array (
        "", "A",  "B",  "C",  "D",  "E",  "F",  "G",  "H",  "I",  "J",  "K",  "L",  "M",  "N",  "O",  "P",  "Q",  "R",  "S",  "T",  "U",  "V",  "W",  "X",  "Y",  "Z",
        "AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "AZ",
        "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY", "BZ"
    );

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
		$data['kode'] = Auth::user()->kode;
		$karyawan = DB::table('users')
			   ->where('kode', '<>', 'dokter')
			   ->get();
		$data['karyawan'] = $karyawan;
        return view('vDataKaryawan', $data);
	}
	
	public function dataDokter(){
		$data['kode'] = Auth::user()->kode;
		$dokter = DB::table('users')
				->where('kode', 'dokter')
				->get();
		$data['dokter'] = $dokter;
        return view('vDataDokter', $data);
	}
	
	public function hapusKaryawanDokter($id){
		try{
            $data = array();
            
			$role = DB::table('users')
			   ->where('id', $id)
			   ->first();
			//return $role->kode;
            $karyawan = User::find($id);
            $karyawan->delete();

            $data["status"] = "success";
            $data["role"] = $role->kode;
            $data["message"] = "Success delete " .$karyawan->name;
			$data['kode'] = Auth::user()->kode;

        }
        catch(\Illuminate\Database\QueryException $e){
            $data["status"] = "error";
            $data["message"] = "Error delete ";
        }

        if ($data["status"] == "success") {
			if ($data["role"] == "Dokter") {
				$dokter = DB::table('users')
					->where('kode', 'dokter')
					->get();
				$data['dokter'] = $dokter;
				return view('vDataDokter', $data);
			} else {
            //return \Redirect::route('RegisPasien')->with(['success' => $data["message"]]);
				$karyawan = DB::table('users')
				   ->where('kode', '<>', 'dokter')
				   ->get();
				$data['karyawan'] = $karyawan;
				return view('vDataKaryawan', $data);
			}
        }
        else{
			$pasien = DB::table('pasien_tbl')
			   ->get();
			$data['pasien'] = $pasien;
			return view('vDataPasien', $data);
            //return \Redirect::route('RegisPasien')->with(['error' => $data["message"]]);
        }
	}
	
	public function dataPasien(){
		$pasien = DB::table('pasien_tbl')
			   ->get();
		$data['pasien'] = $pasien;
        return view('vDataPasien', $data);
	}
	
	public function dataTransaksi(Request $request){
		$data = array();

		/*return $request;
		$transaksi = DB::table('transaction_tbl')
			   ->get()
			   ->unique('nomor_transaksi');*/
		$transaksi = \App\Models\Transaction::where('id', '<>', null);
		
		if($request->dokter){
			$transaksi->where('nama_dokter', $request->dokter);
			//return $transaksi;
		}
		
		if($request->pasien){
			$transaksi->where('nama_pasien', $request->pasien);
			//return $transaksi;
		}

		if($request->poli){
			$transaksi->where('poli', $request->poli);
			//return $transaksi;
		}
		
		if($request->download_report) {
			//return $transaksi->get()->unique('nomor_transaksi');
			//$transaksi=$transaksi->get()->unique('nomor_transaksi');
            $this->export_transaction($transaksi); 
        }
		
		$transaksi=$transaksi->get()->unique('nomor_transaksi');
		$data['transaksi'] = $transaksi;
        return view('vDataTransaksi', $data);
	}
	
	public function export_transaction($query)
    { 
        $export = array();
        $spreadsheet = new \PhpOffice\PhpSpreadsheet\Spreadsheet();
        $spreadsheet->getProperties()->setCreator('Achmad Farhan Mustaqim')
            ->setLastModifiedBy('Aafia.my.id')
            // ->setTitle('download ')
            // ->setSubject('integrate codeigniter with PhpExcel')
            ->setDescription('Aafia Transaction Report');
    
        $styleArray = array(
            'font' => array('name' => 'Arial', 'size'=>9)
            ); 
        $spreadsheet->getActiveSheet()->getStyle('A:AZ')->applyFromArray($styleArray);

        //autofit
        foreach(range('A','AZ') as $columnID) {
            $spreadsheet->getActiveSheet()->getColumnDimension($columnID)
                ->setAutoSize(true);
        } 

        $columnNames = array ( 
            "Nomor Transaksi", "Nama Pasien", "Poli", "Nama Dokter", "Status", "Harga",
            "Tanggal"
        );

        foreach ($columnNames as $key => $col) {
        # code...
            $spreadsheet->setActiveSheetIndex(0) ->setCellValue($this->alphabet[$key+1]."1", $col);
        } 

        $spreadsheet->getActiveSheet()->getStyle('A1:AZ1')->getFill()
            ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
            ->getStartColor()->setARGB('FF8800');

        $query = $query->get()->unique('nomor_transaksi'); 
        foreach ($query as $key => $req) { 
        # code... 
        
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue($this->alphabet[1].($key+2) , $req->nomor_transaksi)
            ->setCellValue($this->alphabet[2].($key+2) , $req->nama_pasien)
            ->setCellValue($this->alphabet[3].($key+2) , $req->poli)
            ->setCellValue($this->alphabet[4].($key+2) , $req->nama_dokter)
            ->setCellValue($this->alphabet[5].($key+2) , $req->status)
            ->setCellValue($this->alphabet[6].($key+2) , $req->harga)
            ->setCellValue($this->alphabet[7].($key+2) , Carbon::parse($req->updated_at)->format('Y-m-d'))
            ;
        }

        // rename worksheet
        $spreadsheet->getActiveSheet()->setTitle("Aafia Transaction Report");
        $spreadsheet->setActiveSheetIndex(0);
    
        //download file
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="'."aafia".date('Ymd_his').'.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        //header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT+7'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1 

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    
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
