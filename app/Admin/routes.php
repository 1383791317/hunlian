<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->any('config/system', 'ConfigController@system');
    $router->resource('users', UsersController::class);
//    $router->any('users/index/create', 'UsersController@userCreate');
//    $router->any('users/index/{id}/edit', 'UsersController@userEdit');
//    $router->any('ceshi/index', 'CeshiController@index');
});
