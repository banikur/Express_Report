<?php
namespace Modules\CinemaType\Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Modules\CinemaType\Models\CinemaType;

class CinemaTypeFactory extends Factory
{
    protected $model = CinemaType::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'logo' => $this->faker->logo()
        ];
    }
}