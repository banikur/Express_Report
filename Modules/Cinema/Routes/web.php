<?php

use Modules\Cinema\Http\Controllers\CinemaController;
use Illuminate\Support\Facades\Route;
app()->make('router')->aliasMiddleware('permisson', \Spatie\Permission\Middlewares\PermissionMiddleware::class);

Route::middleware('auth')->prefix('admin/cinema')->group(function() {
    Route::controller(CinemaController::class)->group(function () {
        Route::get('/', 'index')->middleware(['permisson:read cinema'])->name('cinema.index');
        Route::post('/', 'store')->middleware(['permisson:create cinema'])->name('cinema.store');
        Route::post('/show', 'show')->middleware(['permisson:read cinema'])->name('cinema.show');
        Route::put('/', 'update')->middleware(['permisson:update cinema'])->name('cinema.update');
        Route::delete('/', 'destroy')->middleware(['permisson:delete cinema'])->name('cinema.destroy');
        Route::post('/import', 'import')->middleware(['permisson:import cinema'])->name('cinema.import');
        Route::post('/preview', 'preview')->middleware(['permisson:import cinema'])->name('cinema.preview');
    });
});
