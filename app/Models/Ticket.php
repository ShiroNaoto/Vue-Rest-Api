<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'state',
        'severity',
        'category',
        'description',
        'remark',
    ];

    public function usered()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
