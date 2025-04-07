<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/movies', function (Request $request) {
    return $request->user();
});