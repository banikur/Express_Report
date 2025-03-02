<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/cinematype', function (Request $request) {
    return $request->user();
});