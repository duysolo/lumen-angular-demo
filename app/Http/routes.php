<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

/*
|--------------------------------------------------------------------------
| START Routes for admin actions
|--------------------------------------------------------------------------
*/
$app->group(['namespace' => 'App\Http\Controllers\Admin'], function($app) {
    /*User*/
    $app->group(['prefix' => 'users', 'namespace' => 'App\Http\Controllers\Admin'], function($app){
        $app->get('/', 'UserController@index');
        $app->get('/{id}', 'UserController@show');
        $app->post('/authenticate', 'UserController@authenticate');
        $app->post('/create', 'UserController@create');
    });

    /*Pages*/
    $app->group(['prefix' => 'pages', 'namespace' => 'App\Http\Controllers\Admin'], function($app){
        $app->get('/', 'PageController@index');
        $app->post('/create', 'PageController@create');
        $app->get('/{id}', 'PageController@show');
        $app->put('/{id}', 'PageController@edit');
    });

    /*Settings*/
    $app->group(['prefix' => 'settings', 'namespace' => 'App\Http\Controllers\Admin'], function($app){
        $app->get('/', 'SettingController@index');
        $app->post('/', 'SettingController@update');
    });
});
/*
|--------------------------------------------------------------------------
| END Routes for admin actions
|--------------------------------------------------------------------------
*/

/*
|--------------------------------------------------------------------------
| START Routes for api actions
|--------------------------------------------------------------------------
*/

$app->group(['namespace' => 'App\Http\Controllers\Api'], function($app) {
    /*User*/
    $app->group(['prefix' => 'api/global', 'namespace' => 'App\Http\Controllers\Api'], function($app){
        $app->get('/timezone-list', 'GlobalController@getTimezoneList');
        $app->get('/country-list', 'GlobalController@getCountryList');
        $app->get('/city-list', 'GlobalController@getCityList');
        $app->get('/page-templates', 'GlobalController@getPageTemplates');
    });
});
/*
|--------------------------------------------------------------------------
| END Routes for api actions
|--------------------------------------------------------------------------
*/