<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Controllers
use App\Http\Controllers\Api\V1\UserController;
use App\Http\Controllers\Api\V1\TicketController;
use App\Http\Controllers\Api\V1\DivisionController;
use App\Http\Controllers\Api\V1\CountController;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\DivSelectController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1'], function () {

    Route::middleware('throttle:api')->group(function () {

    Route::apiResource('users', UserController::class);
    Route::apiResource('tickets', TicketController::class);
    Route::apiResource('divisions', DivisionController::class);

    Route::apiResource('divselect', DivSelectController::class);
    Route::apiResource('counts', CountController::class);

    Route::post('login', [AuthController::class, 'login']);
    Route::middleware('auth:sanctum')->post('logout', [AuthController::class, 'logout']);
});
});
