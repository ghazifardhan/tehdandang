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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('create_symlink', function() {

    $target = "/home/thdndcom/public_html/tehdandang_new/public/storage";
    $link = "/home/thdndcom/public_html/tehdandang_new/storage/app/public";
    symlink($link, $target);

});
