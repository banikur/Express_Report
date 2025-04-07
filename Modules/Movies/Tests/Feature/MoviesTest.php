<?php

use Modules\Movies\Models\Movie;

uses(Tests\TestCase::class);

test('can see movie list', function() {
    $this->authenticate();
   $this->get(route('app.movies.index'))->assertOk();
});

test('can see movie create page', function() {
    $this->authenticate();
   $this->get(route('app.movies.create'))->assertOk();
});

test('can create movie', function() {
    $this->authenticate();
   $this->post(route('app.movies.store', [
       'name' => 'Joe',
       'email' => 'joe@joe.com'
   ]))->assertRedirect(route('app.movies.index'));

   $this->assertDatabaseCount('movies', 1);
});

test('can see movie edit page', function() {
    $this->authenticate();
    $movie = Movie::factory()->create();
    $this->get(route('app.movies.edit', $movie->id))->assertOk();
});

test('can update movie', function() {
    $this->authenticate();
    $movie = Movie::factory()->create();
    $this->patch(route('app.movies.update', $movie->id), [
        'name' => 'Joe Smith',
       'email' => 'joe@joe.com'
    ])->assertRedirect(route('app.movies.index'));

    $this->assertDatabaseHas('movies', ['name' => 'Joe Smith']);
});

test('can delete movie', function() {
    $this->authenticate();
    $movie = Movie::factory()->create();
    $this->delete(route('app.movies.delete', $movie->id))->assertRedirect(route('app.movies.index'));

    $this->assertDatabaseCount('movies', 0);
});