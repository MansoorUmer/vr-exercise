<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ExerciseController;
use App\Http\Controllers\ImageProcessingController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('signup', [AuthController::class, 'signup']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware(['auth:sanctum'])->group(function () {

    Route::post('/add-user-report', [UserController::class, 'store']);
    Route::get('/user-reports', [UserController::class, 'index']);
    Route::get('/user-single-report/{id}', [UserController::class, 'show']);
    Route::get('/profile', [UserController::class, 'profile']);

    Route::post('exercises', [ExerciseController::class, 'store']);
    Route::get('exercises', [ExerciseController::class, 'index']);
    Route::post('users/current-exercise', [ExerciseController::class, 'setCurrentExercise']);

    Route::post('/process-images',[ImageProcessingController::class,'processImages']);

});
Route::get('/login', function () {
    return response()->json(['status'=>false,'message' => 'you are not authorised'], 401);
})->name('login');
