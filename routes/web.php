<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
    Use this to procect routes = ->middleware('customer.verified')->name('/account')
*/

Route::get('/','IndexController@index');

//List Routes
Route::get('/list', 'ListController@index');
Route::get('/filter', 'ListController@filter');
Route::get('/list/{selector}/id={id}', 'ListController@show');
Route::post('/list/search', 'ListController@search');


//Product Routes
Route::get('/product', 'ProductController@index');
Route::get('/product/skuid={id}', 'ProductController@show');

Route::get('/login', function () {
    return view('login');
});


//Checkout Controller
Route::get('/checkout', function () {
    return view('checkout');
});
Route::get('/account', 'UserController@index')->middleware('customer.verified')->name('/account');
Route::POST('/account/update', 'UserController@update')->middleware('customer.verified')->name('/account/update');


//Cart Controllers
Route::post('/cart/skuid={id}', 'CartController@addProduct');
Route::post('/cart/remove/skuid={id}', 'CartController@removeProduct');
Route::post('/cart/update/skuid={id}', 'CartController@updateProduct');
Route::post('/cart/clear', 'CartController@clearCart');
Route::get('/cart', 'CartController@index');

//Orders Controller
Route::post('/orders/cancel', 'OrdersController@cancel');

//Checkout Controllers
Route::post('/confirm', 'Checkout@confirm')->middleware('customer.verified')->name('/confirm');



//Page Routes
Route::get('/cancellation', 'PageController@cancellation');
Route::get('/terms', 'PageController@terms');
Route::get('/privacy', 'PageController@privacy');
Route::get('/about', 'PageController@about');
Route::get('/contact', 'PageController@contact');


//Test route
Route::any('/customer', function () {
    return redirect('/');
});
Route::get('/mail', 'Mail@index');




//Admin Controllers
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
