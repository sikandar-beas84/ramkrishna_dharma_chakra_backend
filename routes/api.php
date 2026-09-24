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
 
// Route::group([
 
//    'middleware' => 'api',
 
// ], function ($router) {
 
//    Route::post('logout', 'AuthController@logout');
//    Route::post('refresh', 'AuthController@refresh');
//    Route::post('me', 'AuthController@me');

// });

Route::post('users', 'UserController@index');
Route::group([
    'middleware' => ['api','jwt.verify'],
], function ($router) {
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
});


Route::post('users', 'UserController@store');
Route::post('login', 'AuthController@login');
Route::post('send-otp','AuthController@sendOtp');
Route::post('verify-otp','AuthController@verifyOtp');
Route::post('new-password','AuthController@newPassword');




Route::get('homepage-details','Api\HomePage\HomePageController@homepage')->middleware('cors');
Route::get('religious-program-details','Api\HomePage\HomePageController@religious')->middleware('cors');
Route::get('social-activities-details','Api\HomePage\HomePageController@social')->middleware('cors'); 
Route::post('contact-us','Api\HomePage\HomePageController@contactUs')->middleware('cors');  
Route::get('publication','Api\HomePage\HomePageController@publication')->middleware('cors'); 
Route::get('religious-program-details/single/{id}','Api\HomePage\HomePageController@religious_details')->middleware('cors');
Route::get('social-activities-details/single/{id}','Api\HomePage\HomePageController@social_details')->middleware('cors'); 
Route::get('publication/details/{id}','Api\HomePage\HomePageController@publicationDetails')->middleware('cors');
Route::get('photo-gallery','Api\HomePage\HomePageController@photoGallery')->middleware('cors');
Route::get('video-gallery','Api\HomePage\HomePageController@videoGallery')->middleware('cors');
Route::get('administration','Api\HomePage\HomePageController@admini')->middleware('cors');
Route::get('about-us','Api\HomePage\HomePageController@about')->middleware('cors');
Route::get('footer-content','Api\HomePage\HomePageController@footer')->middleware('cors');

Route::any('contact-form','Api\HomePage\HomePageController@contactForm')->middleware('cors'); 
