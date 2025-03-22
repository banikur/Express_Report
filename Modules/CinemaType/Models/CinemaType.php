<?php

namespace Modules\CinemaType\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Modules\CinemaType\Database\Factories\CinemaTypeFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class CinemaType extends Model
{
    use HasFactory;
    use SoftDeletes;
    
    protected $fillable = ['name','logo'];
    protected $table = 'cinema_type';
    protected static function newFactory()
    {
        return CinemaTypeFactory::new();
    }
}
