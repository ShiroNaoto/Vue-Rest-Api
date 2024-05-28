<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Carbon\Carbon;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasApiTokens;

    protected $fillable = [
        'name',
        'acctype',
        'username',
        'division_id',
        'email',
        'status',
        'password',
    ];

    

    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->format('F j, Y');
    }

    public function getUpdatedAtAttribute($value)
    {
        return Carbon::parse($value)->format('F j, Y');
    }

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

}