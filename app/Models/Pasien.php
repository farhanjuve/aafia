<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Pasien extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
	protected $table = 'pasien_tbl';

    protected $fillable = [
        'no_rm',
        'name',
        'nik',
        'lp',
        'goldar',
        'agama',
        'ttl',
        'alamat',
        'telp',
        'sts_nikah',
        'pekerjaan',
        'kel_wali',
        'sts_kel',
        'name_kel',
        'telp_kel',
        'tekanan_darah',
        'suhu',
        'bb',
        'tb',
		
        'opname', 'operasi', 'alergi', 'jantung', 'diabetes', 'hemofilia',
        'hepatitis',
        'gastring',
        'ginjal',
        'asma',
        'tbc',
        'rheu',
        'lainlain',
        'kebiasaan'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
	
    ];
}
