<?php

use Modules\CinemaType\Models\CinemaType;

uses(Tests\TestCase::class);

test('can see cinematype list', function() {
    $this->authenticate();
   $this->get(route('app.cinematype.index'))->assertOk();
});

test('can see cinematype create page', function() {
    $this->authenticate();
   $this->get(route('app.cinematype.create'))->assertOk();
});

test('can create cinematype', function() {
    $this->authenticate();
   $this->post(route('app.cinematype.store', [
       'name' => 'Joe',
       'email' => 'joe@joe.com'
   ]))->assertRedirect(route('app.cinematype.index'));

   $this->assertDatabaseCount('cinematype', 1);
});

test('can see cinematype edit page', function() {
    $this->authenticate();
    $cinematype = CinemaType::factory()->create();
    $this->get(route('app.cinematype.edit', $cinematype->id))->assertOk();
});

test('can update cinematype', function() {
    $this->authenticate();
    $cinematype = CinemaType::factory()->create();
    $this->patch(route('app.cinematype.update', $cinematype->id), [
        'name' => 'Joe Smith',
       'email' => 'joe@joe.com'
    ])->assertRedirect(route('app.cinematype.index'));

    $this->assertDatabaseHas('cinematype', ['name' => 'Joe Smith']);
});

test('can delete cinematype', function() {
    $this->authenticate();
    $cinematype = CinemaType::factory()->create();
    $this->delete(route('app.cinematype.delete', $cinematype->id))->assertRedirect(route('app.cinematype.index'));

    $this->assertDatabaseCount('cinema_type', 0);
});