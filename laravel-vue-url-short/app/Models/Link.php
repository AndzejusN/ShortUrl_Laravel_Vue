<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    use HasFactory;

    protected $table = 'links';
    public $timestamps = false;
    protected $fillable = [
        'id',
        'long_link',
        'short_link',
    ];
}
