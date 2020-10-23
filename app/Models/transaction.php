<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;
	protected $table = 'transaction_tbl';
	const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

	protected $fillable = [
        'nomor_rm',
        'nomor_transaksi',
        'tindakan',
        'status',
        'harga'
    ];
}
