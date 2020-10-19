<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use App\Models\Dokter;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'kode' => ['required', 'string', 'max:255'],
            'lp' => ['required', 'string', 'max:2'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
		//return var_dump($data);
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'kode' => $data['kode'] ?? "Dokter",
            'lp' => $data['lp'],
            'alamat' => $data['alamat'] ?? null,
            'telp' => $data['telp'] ?? null,
            'gigi_umum' => $data['gigi_umum'] ?? null,
        ]);
    }
	
	public function daftarDokter(Request $request) {
		Dokter::create([
			'name' => $request->name,
			'ttl' => $request->kota ? $request->kota . ", " . $request->tanggal : null,
			'lp' => $request->lp,
			'alamat' => $request->alamat ?? null,
			'telp' => $request->telp ?? null,
			'umum_gigi' => $request->gigi_umum ?? null,
		]);
		
		User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'kode' => $data['kode'] ?? "Dokter",
            'lp' => $request->lp,
            'alamat' => $request->alamat ?? null,
            'telp' => $request->telp ?? null,
            'gigi_umum' => $request->gigi_umum ?? null,
        ]);
		
		//return $request;
		return redirect()->route('DokterTransaksi');
	}
}
