<?php

namespace Modules\Movies\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller;
use Modules\Movies\Models\Movie;
use RealRashid\SweetAlert\Facades\Alert;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Genres;
use App\Models\MovieMedia;

class MoviesController extends Controller
{
    public function index()
    {
        $x['title']     = "Movie";
        $x['data']      = Movie::get();
        $x['genres']    = Genres::get();
        $x['movieMedia'] = MovieMedia::get();


        return view('movies::index', $x);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title'                 => ['required', 'string', 'max:255'],
            'tagline'               => ['required', 'string', 'max:255'],
            'synopsis'              => ['required', 'string'],
            'release_date'          => ['required', 'date'],
            'runtime'               => ['required', 'integer'],
            'age_rating'            => ['required', 'string', 'max:10'],
            'original_language'     => ['required', 'string', 'max:50'],
            'country'               => ['required', 'string', 'max:100'],
            'format'                => ['required', 'string', 'max:50'],
            'genre_id'              => ['required', 'exists:genres,id'],
            'budget'                => ['required', 'numeric'],
            'box_office'            => ['required', 'numeric'],
            'imdb_rating'           => ['required', 'numeric', 'between:0,10'],
            'rotten_tomatoes_rating' => ['required', 'numeric', 'between:0,100']
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)
                ->withInput();
        }
        try {
            $movie = Movie::create([
                'title'                 => $request->title,
                'tagline'               => $request->tagline,
                'synopsis'              => $request->synopsis,
                'release_date'          => $request->release_date,
                'runtime'               => $request->runtime,
                'age_rating'            => $request->age_rating,
                'original_language'     => $request->original_language,
                'country'               => $request->country,
                'format'                => $request->format,
                'genre_id'              => $request->genre_id,
                'budget'                => $request->budget,
                'box_office'            => $request->box_office,
                'imdb_rating'           => $request->imdb_rating,
                'rotten_tomatoes_rating' => $request->rotten_tomatoes_rating
            ]);
            Alert::success('Pemberitahuan', 'Data <b>' . $movie->title . '</b> berhasil dibuat')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $movie->title . '</b> gagal dibuat : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }

    public function show(Request $request)
    {
        $movie = Movie::find($request->id);
        return response()->json([
            'status'    => Response::HTTP_OK,
            'message'   => 'Data movie by id',
            'data'      => $movie
        ], Response::HTTP_OK);
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title'                 => ['required', 'string', 'max:255'],
            'tagline'               => ['required', 'string', 'max:255'],
            'synopsis'              => ['required', 'string'],
            'release_date'          => ['required', 'date'],
            'runtime'               => ['required', 'integer'],
            'age_rating'            => ['required', 'string', 'max:10'],
            'original_language'     => ['required', 'string', 'max:50'],
            'country'               => ['required', 'string', 'max:100'],
            'format'                => ['required', 'string', 'max:50'],
            'genre_id'              => ['required', 'exists:genres,id'],
            'budget'                => ['required', 'numeric'],
            'box_office'            => ['required', 'numeric'],
            'imdb_rating'           => ['required', 'numeric', 'between:0,10'],
            'rotten_tomatoes_rating' => ['required', 'numeric', 'between:0,100']
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator)
                ->withInput();
        }
        try {
            $movie = Movie::find($request->id);
            $movie->update([
                'title'                 => $request->title,
                'tagline'               => $request->tagline,
                'synopsis'              => $request->synopsis,
                'release_date'          => $request->release_date,
                'runtime'               => $request->runtime,
                'age_rating'            => $request->age_rating,
                'original_language'     => $request->original_language,
                'country'               => $request->country,
                'format'                => $request->format,
                'genre_id'              => $request->genre_id,
                'budget'                => $request->budget,
                'box_office'            => $request->box_office,
                'imdb_rating'           => $request->imdb_rating,
                'rotten_tomatoes_rating' => $request->rotten_tomatoes_rating
            ]);
            Alert::success('Pemberitahuan', 'Data <b>' . $movie->name . '</b> berhasil disimpan')->toToast()->toHtml(); 
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $movie->name . '</b> gagal disimpan : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }

    public function destroy(Request $request)
    {
        try {
            $movie = Movie::find($request->id);
            $movie->delete();
            Alert::success('Pemberitahuan', 'Data <b>' . $movie->name . '</b> berhasil dihapus')->toToast()->toHtml();
        } catch (\Throwable $th) {
            Alert::error('Pemberitahuan', 'Data <b>' . $movie->name . '</b> gagal dihapus : ' . $th->getMessage())->toToast()->toHtml();
        }
        return back();
    }
}
