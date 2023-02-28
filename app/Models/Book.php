<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];

    protected $appends = ['publisher', 'country', 'number_of_pages_formatted', 'release_date_formatted'];

    // ACCESSORS

    public function getAuthorsAttribute($value)
    {
        $assoc = json_decode($value, true);
        return Author::whereIn('id', $assoc)->get();
    }

    public function getPublisherAttribute()
    {
        return Publisher::find($this->publisher_id);
    }

    public function getCountryAttribute()
    {
        return Country::find($this->country_id);
    }

    public function getNumberOfPagesFormattedAttribute()
    {
        return number_format($this->number_of_pages);
    }

    public function getReleaseDateFormattedAttribute()
    {
        return date('M j, Y', strtotime($this->release_date));
    }

    // RELATIONSHIPS

    public function authors()
    {
        return $this->hasMany(Author::class);
    }

    public function author()
    {
        return $this->belongsTo(Author::class);
    }

    public function publisher()
    {
        return $this->belongsTo(Publisher::class);
    }
}
