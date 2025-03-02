<?php
namespace Modules\Cinema\Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Modules\Cinema\Models\Cinema;

class CinemaFactory extends Factory
{
    protected $model = Cinema::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->name()
        ];
    }
}