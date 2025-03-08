<?php

namespace Modules\Cinema\Import;

use Modules\Cinema\Models\Cinema;
use Modules\Cinema\Models\CinemaDetail;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Collection;
use App\Helpers\GlobalHelper;

class CinemaImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        foreach ($rows as $index => $row) {
            if ($index === 0) continue; // Skip header

            $cinemaName = trim($row[1]); // Kolom B = Nama Cinema
            $cinemaType = cinemaTypeId(trim($row[2]));
            $city = CityCode(trim($row[3])); // Kolom C = Kota
            $province = ProvinceCode(trim($row[4])); // Kolom D = Provinsi
            $totalStudio = (int) trim($row[5]); // Kolom E = Total Studio
            $normalPrice = (int) trim($row[6]); // Kolom F = Harga Normal
            $holidayPrice = (int) trim($row[7]); // Kolom G = Harga Holiday
            $weekendPrice = (int) trim($row[8]); // Kolom H = Harga Weekend

            if (empty($cinemaName)) continue;

            // Simpan Cinema
            $cinema = Cinema::updateOrCreate(
                [
                    'name' => $cinemaName,
                    'city_code' => $city,
                    'province_code' => $province,
                    'cinema_type_id' => $cinemaType
                ]
            );

            // Simpan Studio Detail
            for ($i = 1; $i <= $totalStudio; $i++) {
                $cinema->details()->updateOrCreate(
                    ['studio_number' => $i],
                    [
                        'normal_price' => $normalPrice,
                        'holiday_price' => $holidayPrice,
                        'weekend_price' => $weekendPrice,
                    ]
                );
            }
        }
    }
}
