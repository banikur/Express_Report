<?php

namespace App\Http\Requests\V1\Cinema;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCinemaRequest extends FormRequest
{
    public function rules(): array
    {
        return [
            'name' => 'required',
            'location_id' => 'required',
            'cinema_type' => 'required',
            'total_studio' => 'required|integer|min:1',
        ];
    }
}
