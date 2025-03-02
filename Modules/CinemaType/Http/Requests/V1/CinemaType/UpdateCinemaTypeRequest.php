<?php

namespace App\Http\Requests\V1\CinemaType;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCinemaTypeRequest extends FormRequest
{
    public function rules(): array
    {
        return [
            'name' => 'required'
        ];
    }
}
