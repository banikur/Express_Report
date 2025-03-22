<?php

namespace Modules\Cinema\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller;
use Modules\Cinema\Models\Cinema;
use RealRashid\SweetAlert\Facades\Alert;
use Symfony\Component\HttpFoundation\Response;
use Modules\CinemaType\Models\CinemaType;
use Illuminate\Support\Facades\DB;
use App\Models\Province;
use App\Models\City;
use Modules\Cinema\Models\CinemaDetail;
use League\Csv\Reader;


use Maatwebsite\Excel\Facades\Excel;

use PhpOffice\PhpSpreadsheet\IOFactory;

class CinemaController extends Controller
{
    public function index()
    {
        $x['title']     = "Cinema";
        $x['data']      = Cinema::with('CinemaType')
            ->with('details')
            ->with('Province')
            ->with('City')->get();
        $x['location'] = Province::with('City')->get();
        $x['cinema_type'] = CinemaType::get();

        return view('cinema::index', $x);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => ['required', 'string', 'max:255']
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)
                ->withInput();
        }
        //dd($request->all());
        try {
            $cinema = Cinema::create([
                'name'      => $request->name,
                'province_code'      => substr($request->id_location, 0, 2),
                'city_code'      => substr($request->id_location, -2),
                'cinema_type_id'      => $request->cinema_type,
            ]);
            foreach ($request->cinema_details as $detail) {
                CinemaDetail::create([
                    'cinema_id' => $cinema->id,
                    'studio_number' => $detail['studio_number'],
                    'normal_price' => str_replace(',', '', $detail['normal_price']),
                    'weekend_price' =>  str_replace(',', '', $detail['weekend_price']),
                    'holiday_price' =>  str_replace(',', '', $detail['holiday_price'])
                ]);
            }
            Alert::success('Pemberitahuan', 'Data <b>' . $cinema->name . '</b> berhasil dibuat')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $request->name . '</b> gagal dibuat : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }

    public function show(Request $request)
    {
        $cinema = Cinema::with('details')->find($request->id);
        return response()->json([
            'status'    => Response::HTTP_OK,
            'message'   => 'Data cinema by id',
            'data'      => $cinema
        ], Response::HTTP_OK);
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => ['required', 'string', 'max:255']
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)
                ->withInput();
        }
        try {
            $cinema = Cinema::find($request->id);
            $cinema->update([
                'name'  => $request->name
            ]);
            Alert::success('Pemberitahuan', 'Data <b>' . $cinema->name . '</b> berhasil disimpan')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $cinema->name . '</b> gagal disimpan : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }

    public function destroy(Request $request)
    {
        try {
            $cinema = Cinema::find($request->id);
            $cinema->delete();
            Alert::success('Pemberitahuan', 'Data <b>' . $cinema->name . '</b> berhasil dihapus')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $cinema->name . '</b> gagal dihapus : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }

    public function preview(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:xlsx,xls|max:2048'
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()->first()], 400);
        }

        try {
            $file = $request->file('file');
            $spreadsheet = IOFactory::load($file->getPathname());
            $sheet = $spreadsheet->getActiveSheet();
            $rows = $sheet->toArray(null, true, true, true); // Konversi ke array

            // Ambil header dari baris pertama (jika tidak dipakai, bisa dihapus)
            array_shift($rows);

            $data = [];
            foreach ($rows as $row) {
                $data[] = [
                    'name'          => $row['B'],
                    'city_code'     => $this->CityCode($row['C']),
                    'province_code' =>  $this->ProvinceCode($row['D']),
                    'cinema_type'   =>  $this->cinemaTypeId($row['E']),
                    'studio_number' => $row['F'],
                    'normal_price'  => number_format(str_replace(',', '', $row['G']), 0, ',', '.'),
                    'holiday_price' => number_format(str_replace(',', '', $row['H']), 0, ',', '.'),
                    'weekend_price' => number_format(str_replace(',', '', $row['I']), 0, ',', '.'),
                ];
            }
            $names = array_column($data, 'name');
            $duplicateNames = array_filter(array_count_values($names), fn($count) => $count > 1);

            // Hapus duplikasi berdasarkan seluruh kolom
            $uniqueData = array_map('unserialize', array_unique(array_map('serialize', $data)));
            Alert::success('Pemberitahuan', 'Data <b>' . $file->getFilename() . '</b> berhasil dibuat')->toToast()->toHtml();
            return response()->json(['success' => true, 'data' => $uniqueData]);
        } catch (\Throwable $th) {
            return response()->json(['error' => 'Terjadi kesalahan: ' . $th->getMessage()], 500);
        }
    }

    private function ProvinceCode($name)
    {
        try {
            $data = Province::where('name', 'like', '%' . $name . '%')->first();
            return !empty($data) ? $data->code : 'Tidak Ditemukan';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    private function CityCode($name)
    {
        try {
            $data = City::where('name',  'like', '%' . $name . '%')->first();
            return !empty($data) ? $data->code : 'Tidak Ditemukan';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }

    private function cinemaTypeId($name)
    {
        try {
            $data = CinemaType::where('name', 'like', '%' . $name . '%')->first();
            return !empty($data) ? $data->id : 'Tidak Ditemukan';
        } catch (\Throwable $th) {
            return 'Tidak Ditemukan';
        }
    }
}
