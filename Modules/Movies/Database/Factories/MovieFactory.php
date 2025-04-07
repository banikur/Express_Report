<?php
namespace Modules\Movies\Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Modules\Movies\Models\Movie;

class MovieFactory extends Factory
{
    protected $model = Movie::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->name()
        ];
    }
}