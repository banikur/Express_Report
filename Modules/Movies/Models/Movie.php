<?php

namespace Modules\Movies\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Modules\Movies\Database\Factories\MovieFactory;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Genres;
use App\Models\MovieMedia;  

class Movie extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'title',
        'tagline',
        'synopsis',
        'release_date',
        'runtime',
        'age_rating',
        'original_language',
        'country',
        'format',
        'genre_id',
        'budget',
        'box_office',
        'imdb_rating',
        'rotten_tomatoes_rating'
    ];
    
    protected static function newFactory()
    {
        return MovieFactory::new();
    }
    public function genre()
    {
        return $this->belongsTo(Genres::class, 'genre_id');
    }
    
    public function movieMedia()
    {
        return $this->hasMany(MovieMedia::class, 'movie_id');
    }
}
