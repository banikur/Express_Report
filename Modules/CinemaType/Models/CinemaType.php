<?php

namespace Modules\CinemaType\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Modules\CinemaType\Database\Factories\CinemaTypeFactory;

class CinemaType extends Model
{
    use HasFactory;
    protected $fillable = ['name'];
    protected $table = 'cinema_type';
    protected static function newFactory()
    {
        return CinemaTypeFactory::new();
    }
}
