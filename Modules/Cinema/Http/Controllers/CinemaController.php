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
use Modules\Cinema\Models\CinemaDetail;
use League\Csv\Reader;
use App\Helpers\GlobalHelper;

class CinemaController extends Controller
{
    public function index()
    {
        $x['title']     = "Cinema";
        $x['data']      = Cinema::with('CinemaType')
            ->with('details')
            ->with('Province')
            ->with('City')->get();
        // dd($x);
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
        $file = $request->file('file');
        if (!$file->isValid()) {
            return response()->json(['error' => 'File tidak valid!'], 400);
        }

        $csv = Reader::createFromPath($file->getPathname(), 'r');
        $csv->setHeaderOffset(0); // Baris pertama sebagai header

        $data = [];
        foreach ($csv as $row) {
            $data[] = [
                'name' => $row['name'],
                'city_code' => CityName($row['city_code']),
                'province_code' => ProvinceName($row['province_code']),
                'cinema_type' => cinemaTypeName($row['cinema_type']),
                'studio_number' => $row['studio_number'],
                'normal_price' => number_format(str_replace(',', '', $row['normal_price']), 0, ',', '.'),
                'weekend_price' => number_format(str_replace(',', '', $row['weekend_price']), 0, ',', '.'),
                'holiday_price' => number_format(str_replace(',', '', $row['holiday_price']), 0, ',', '.'),
            ];
        }

        return response()->json(['data' => $data]);
    }
}
