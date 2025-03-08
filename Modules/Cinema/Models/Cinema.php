<?php

namespace Modules\Cinema\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Cinema\Database\Factories\CinemaFactory;
use App\Models\City;
use App\Models\Province;
use Modules\CinemaType\Models\CinemaType;

class Cinema extends Model
{
    use HasFactory;
    protected $table = 'cinema';
    protected $fillable = ['name', 'province_code','city_code', 'cinema_type_id'];

    use SoftDeletes;
    protected static function newFactory()
    {
        return CinemaFactory::new();
    }

    public function details()
    {
        return $this->hasMany(CinemaDetail::class, 'cinema_id', 'id');
    }
    function City(){
        return $this->hasOne(City::class, 'code','city_code');
    }
    function Province(){
        return $this->hasOne(Province::class,'code','province_code');
    }
    function CinemaType() {
        return $this->hasOne(CinemaType::class,'id','cinema_type_id');
    }
}
