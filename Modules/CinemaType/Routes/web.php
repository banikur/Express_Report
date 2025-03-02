<?php

use Modules\CinemaType\Http\Controllers\CinemaTypeController;
use Illuminate\Support\Facades\Route;
app()->make('router')->aliasMiddleware('permisson', \Spatie\Permission\Middlewares\PermissionMiddleware::class);

Route::middleware('auth')->prefix('admin/cinema-type')->group(function() {
    Route::controller(CinemaTypeController::class)->group(function () {
        Route::get('/', 'index')->middleware(['permisson:read cinematype'])->name('cinematype.index');
        Route::post('/', 'store')->middleware(['permisson:create cinematype'])->name('cinematype.store');
        Route::post('/show', 'show')->middleware(['permisson:read cinematype'])->name('cinematype.show');
        Route::put('/', 'update')->middleware(['permisson:update cinematype'])->name('cinematype.update');
        Route::delete('/', 'destroy')->middleware(['permisson:delete cinematype'])->name('cinematype.destroy');
    });
});
