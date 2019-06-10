<?php

use Illuminate\Http\Request;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::group(['namespace'=>'Api'],function (){
    Route::post('login', 'UsersController@login');
    Route::post('sendSms', 'UsersController@sms_code');
    Route::post('smsLogin', 'UsersController@smsLogin');
    Route::group(['middleware'=>'api.auth'],function () {
        Route::post('logout', 'UsersController@logout');
        Route::post('refresh', 'UsersController@refresh');
    });
});