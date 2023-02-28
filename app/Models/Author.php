<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Author extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];

    // RELATIONSHIPS

    public function books()
    {
        return $this->hasMany(Book::class);
    }

    public function book()
    {
        return $this->belongsTo(Book::class);
    }    
}
