<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resource('setting', SettingController::class);
    $router->resource('banner', BannersController::class);
    $router->resource('products', ProductController::class);
    $router->resource('menus', MenuController::class);
    $router->resource('official-stores', OfficialStoreController::class);
    $router->resource('promotions', PromotionController::class);
});
