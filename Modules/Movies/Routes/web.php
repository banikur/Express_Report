<?php

use Modules\Movies\Http\Controllers\MoviesController;
use Illuminate\Support\Facades\Route;
app()->make('router')->aliasMiddleware('permisson', \Spatie\Permission\Middlewares\PermissionMiddleware::class);

Route::middleware('auth')->prefix('admin/movies')->group(function() {
    Route::controller(MoviesController::class)->group(function () {
        Route::get('/', 'index')->middleware(['permisson:read movies'])->name('movies.index');
        Route::post('/', 'store')->middleware(['permisson:create movies'])->name('movies.store');
        Route::post('/show', 'show')->middleware(['permisson:read movies'])->name('movies.show');
        Route::put('/', 'update')->middleware(['permisson:update movies'])->name('movies.update');
        Route::delete('/', 'destroy')->middleware(['permisson:delete movies'])->name('movies.destroy');
    });
});
