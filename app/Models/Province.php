<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Models\City;


class Province extends Model
{
    protected $table = 'm_provinsi';
    public function City()
    {
        return $this->hasMany(City::class, 'provinsi_id', 'id');
    }
}
