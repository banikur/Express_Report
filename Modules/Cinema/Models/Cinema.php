<?php

namespace Modules\Cinema\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Modules\Cinema\Database\Factories\CinemaFactory;

class Cinema extends Model
{
    use HasFactory;
    protected $table = 'cinema';
    protected $fillable = ['name','location_id','cinema_type'];
    
    protected static function newFactory()
    {
        return CinemaFactory::new();
    }
}
