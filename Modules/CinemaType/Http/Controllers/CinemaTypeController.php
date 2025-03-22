<?php

namespace Modules\CinemaType\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller;
use Modules\CinemaType\Models\CinemaType;
use RealRashid\SweetAlert\Facades\Alert;
use Symfony\Component\HttpFoundation\Response;

class CinemaTypeController extends Controller
{
    public function index()
    {
        $x['title']     = "Cinema Type";
        $x['data']      = CinemaType::get();

        return view('cinematype::index', $x);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => ['required', 'string', 'max:255'],
            'logo'      => ['required', 'file', 'mimes:jpeg,png,jpg,gif', 'max:2048']
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)
                ->withInput();
        }
        try {
            $logoPath = $request->file('logo')->store('logos', 'public');

            $cinematype = CinemaType::create([
                'name'      => $request->name,
                'logo'      => $logoPath
            ]);
            Alert::success('Pemberitahuan', 'Data <b>' . $cinematype->name . '</b> berhasil dibuat')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $cinematype->name . '</b> gagal dibuat : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }

    public function show(Request $request)
    {
        $cinematype = CinemaType::find($request->id);
        return response()->json([
            'status'    => Response::HTTP_OK,
            'message'   => 'Data cinematype by id',
            'data'      => $cinematype
        ], Response::HTTP_OK);
    }

    public function update(Request $request)
{
    $validator = Validator::make($request->all(), [
        'name'  => ['required', 'string', 'max:255'],
        'logo'  => ['nullable', 'file', 'mimes:jpeg,png,jpg,gif', 'max:2048'] // Logo bisa optional
    ]);

    if ($validator->fails()) {
        return back()->withErrors($validator)->withInput();
    }

    try {
        $cinematype = CinemaType::findOrFail($request->id); // Ambil data berdasarkan ID

        // Jika ada file logo yang diunggah, simpan & update
        if ($request->hasFile('logo')) {
            $logoPath = $request->file('logo')->store('logos', 'public');
            $cinematype->logo = $logoPath;
        }

        // Update nama
        $cinematype->name = $request->name;
        $cinematype->save(); // Simpan perubahan

        Alert::success('Pemberitahuan', 'Data <b>' . $cinematype->name . '</b> berhasil diperbarui')->toToast()->toHtml();
    } catch (\Throwable $th) {
        Alert::error('Pemberitahuan', 'Data gagal diperbarui : ' . $th->getMessage())->toToast()->toHtml();
    }

    return back();
}

    public function destroy(Request $request)
    {
        try {
            $cinematype = CinemaType::find($request->id);
            $cinematype->delete();
            Alert::success('Pemberitahuan', 'Data <b>' . $cinematype->name . '</b> berhasil dihapus')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $cinematype->name . '</b> gagal dihapus : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }
}
