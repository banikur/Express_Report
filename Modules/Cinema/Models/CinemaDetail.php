<?php

namespace Modules\Cinema\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class CinemaDetail extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'cinema_detail';
    protected $fillable = ['cinema_id', 'studio_number', 'normal_price', 'holiday_price'];
}
