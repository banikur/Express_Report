<?php

namespace App\Helpers;

use Modules\CinemaType\Models\CinemaType;
use App\Models\Province;
use App\Models\City;

class GlobalHelper
{
    function cinemaTypeName($id)
    {
        try {
            $data = CinemaType::find($id)->first();
            return !empty($data) ? $data->name : '-';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    function ProvinceName($code)
    {
        try {
            $data = Province::where('code', $code)->first();
            return !empty($data) ? $data->name : '-';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    function CityName($code)
    {
        try {
            $data = City::where('code', $code)->first();
            return !empty($data) ? $data->name : '-';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    function ProvinceCode($name)
    {
        try {
            $data = Province::where('name', 'like', '%' . $name . '%')->first();
            return !empty($data) ? $data->code : 'Tidak Ditemukan';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    function CityCode($name)
    {
        try {
            $data = City::where('name',  'like', '%' . $name . '%')->first();
            return !empty($data) ? $data->code : 'Tidak Ditemukan';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    function cinemaTypeId($name)
    {
        try {
            $data = CinemaType::where('name', 'like', '%' . $name . '%')->first();
            return !empty($data) ? $data->id : 'Tidak Ditemukan';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }
}
