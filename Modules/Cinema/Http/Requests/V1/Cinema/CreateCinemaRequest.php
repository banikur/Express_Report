<?php

namespace App\Http\Requests\V1\Cinema;

use Illuminate\Foundation\Http\FormRequest;;

class CreateCinemaRequest extends FormRequest
{
    public function rules(): array
    {
        return [
            'name' => 'required'
        ];
    }
}
