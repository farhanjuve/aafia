<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tindakan extends Model
{
    use HasFactory;
	protected $table = 'tindakan_tbl';
	const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

	protected $fillable = [
        'jenis',
        'deskripsi',
        'kode',
        'harga'
    ];
}
