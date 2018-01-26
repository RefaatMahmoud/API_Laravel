<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiresource('/products','ProductController');

Route::prefix('products')->group(function () {
    Route::apiresource('/{product}/review','ReviewController');
});