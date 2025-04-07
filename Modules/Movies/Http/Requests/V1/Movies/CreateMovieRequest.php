<?php

namespace App\Http\Requests\V1\Movies;

use Illuminate\Foundation\Http\FormRequest;;

class CreateMovieRequest extends FormRequest
{
    public function rules(): array
    {
        return [
            'name' => 'required'
        ];
    }
}
