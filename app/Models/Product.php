<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'description', 'price', 'status'
    ];

    // scope added for multiple filters
    public function scopeFilter($query, $filters)
    {
        return $filters->apply($query);
    }
}
