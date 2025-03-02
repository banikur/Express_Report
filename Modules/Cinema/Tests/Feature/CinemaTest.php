<?php

use Modules\Cinema\Models\Cinema;

uses(Tests\TestCase::class);

test('can see cinema list', function() {
    $this->authenticate();
   $this->get(route('app.cinema.index'))->assertOk();
});

test('can see cinema create page', function() {
    $this->authenticate();
   $this->get(route('app.cinema.create'))->assertOk();
});

test('can create cinema', function() {
    $this->authenticate();
   $this->post(route('app.cinema.store', [
       'name' => 'Joe',
       'email' => 'joe@joe.com'
   ]))->assertRedirect(route('app.cinema.index'));

   $this->assertDatabaseCount('cinema', 1);
});

test('can see cinema edit page', function() {
    $this->authenticate();
    $cinema = Cinema::factory()->create();
    $this->get(route('app.cinema.edit', $cinema->id))->assertOk();
});

test('can update cinema', function() {
    $this->authenticate();
    $cinema = Cinema::factory()->create();
    $this->patch(route('app.cinema.update', $cinema->id), [
        'name' => 'Joe Smith',
       'email' => 'joe@joe.com'
    ])->assertRedirect(route('app.cinema.index'));

    $this->assertDatabaseHas('cinema', ['name' => 'Joe Smith']);
});

test('can delete cinema', function() {
    $this->authenticate();
    $cinema = Cinema::factory()->create();
    $this->delete(route('app.cinema.delete', $cinema->id))->assertRedirect(route('app.cinema.index'));

    $this->assertDatabaseCount('cinema', 0);
});