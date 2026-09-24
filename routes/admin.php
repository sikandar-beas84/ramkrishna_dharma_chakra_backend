<?php

Route::group(['namespace' => 'Admin'], function() {

    Route::get('/', 'HomeController@index')->name('admin.dashboard');

    // Login
    Route::get('login', 'Auth\LoginController@showLoginForm')->name('admin.login');
    Route::post('login', 'Auth\LoginController@login');
    Route::get('logout', 'Auth\LoginController@logout')->name('admin.logout');

    // Register
    Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('admin.register');
    Route::post('register', 'Auth\RegisterController@register');

    // Passwords
    // Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    // Route::post('password/reset', 'Auth\ResetPasswordController@reset');
    // Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    // Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('admin.password.reset');



     // forget-password
    Route::get('forget-password','Auth\ForgotPasswordController@index')->name('admin.forget.password');
    Route::post('forget-password/email','Auth\ForgotPasswordController@forgetpassword')->name('admin.forget.password.email');
    Route::get('reset-password/{id}/{vcode}','Auth\ForgotPasswordController@resetPassowrd')->name('admin.forget.password.email.verify');
    Route::post('reset-new-password','Auth\ForgotPasswordController@newPassword')->name('admin.reset.new.password');
    // banner-image
    Route::post('/save-banner-image', 'HomeController@saveBannerImage')->name('admin.save.banner.image');
    Route::get('/delete-banner-image/{id}', 'HomeController@deleteBannerImage')->name('admin.delete.banner.image');
    Route::get('/status-banner-image/{id}', 'HomeController@statusBannerImage')->name('admin.status.banner.image');
    // change-password
    Route::get('change-password','HomeController@changeView')->name('admin.change.password');
    Route::get('change-password/check-old-password','HomeController@checkOld')->name('admin.change.password.check');
    Route::post('change-password/confirm-password','HomeController@confrim')->name('admin.change.password.confirm');
    // admin-profile 
    Route::get('profile','HomeController@profile')->name('admin.profile');
    Route::get('profile/check-email','HomeController@checkemail')->name('admin.manage.profile.checkemail');
    Route::post('profile/update','HomeController@profileUpdate')->name('admin.manage.profile.update');

    // parampara
    Route::get('parampara','Modules\Parampara\ParamparaController@index')->name('admin.manage.parampara');
    Route::get('parampara/add','Modules\Parampara\ParamparaController@addView')->name('admin.manage.parampara.add.view');
    Route::post('parampara/insert','Modules\Parampara\ParamparaController@add')->name('admin.manage.parampara.add');
    Route::get('parampara/edit/{id}','Modules\Parampara\ParamparaController@edit')->name('admin.manage.parampara.edit');
    Route::post('parampara/update','Modules\Parampara\ParamparaController@update')->name('admin.manage.parampara.update');
    Route::get('parampara/status/{id}','Modules\Parampara\ParamparaController@status')->name('admin.manage.parampara.status');
    Route::get('parampara/delete/{id}','Modules\Parampara\ParamparaController@delete')->name('admin.manage.parampara.delete');


    // social-activities
    Route::get('social-activities','Modules\Social\SocialController@index')->name('admin.manage.social-activities');
    Route::get('social-activities/add','Modules\Social\SocialController@addView')->name('admin.manage.social-activities.add.view');
    Route::post('social-activities/insert','Modules\Social\SocialController@add')->name('admin.manage.social-activities.add');
    Route::get('social-activities/edit/{id}','Modules\Social\SocialController@edit')->name('admin.manage.social-activities.edit');
    Route::post('social-activities/update','Modules\Social\SocialController@update')->name('admin.manage.social-activities.update');
    Route::get('social-activities/status/{id}','Modules\Social\SocialController@status')->name('admin.manage.social-activities.status');
    Route::get('social-activities/delete/{id}','Modules\Social\SocialController@delete')->name('admin.manage.social-activities.delete');

    // religious-program
    Route::get('religious-program','Modules\Religious\ReligiousController@index')->name('admin.manage.religious-program');
    Route::get('religious-program/add','Modules\Religious\ReligiousController@addView')->name('admin.manage.religious-program.add.view');
    Route::post('religious-program/insert','Modules\Religious\ReligiousController@add')->name('admin.manage.religious-program.add');
    Route::get('religious-program/edit/{id}','Modules\Religious\ReligiousController@edit')->name('admin.manage.religious-program.edit');
    Route::post('religious-program/update','Modules\Religious\ReligiousController@update')->name('admin.manage.religious-program.update');
    Route::get('religious-program/status/{id}','Modules\Religious\ReligiousController@status')->name('admin.manage.religious-program.status');
    Route::get('religious-program/delete/{id}','Modules\Religious\ReligiousController@delete')->name('admin.manage.religious-program.delete');

    // life-our-ashram
    // Route::get('life-our-ashram','HomeController@saveBannerImage')->name('admin.manage.life-our-ashram');
    // Route::post('/save-life-our-ashram', 'HomeController@saveBannerImage')->name('admin.save.banner.image');
    // Route::get('/delete-life-our-ashram/{id}', 'HomeController@deleteBannerImage')->name('admin.delete.banner.image');
    // Route::get('/status-life-our-ashram/{id}', 'HomeController@statusBannerImage')->name('admin.status.banner.image');


    // publication
    Route::get('publication','Modules\Publication\PublicationController@index')->name('admin.manage.publication');
    Route::get('publication/add','Modules\Publication\PublicationController@addView')->name('admin.manage.publication.add.view');
    Route::post('publication/insert','Modules\Publication\PublicationController@add')->name('admin.manage.publication.add');
    Route::get('publication/edit/{id}','Modules\Publication\PublicationController@edit')->name('admin.manage.publication.edit');
    Route::post('publication/update','Modules\Publication\PublicationController@update')->name('admin.manage.publication.update');
    Route::get('publication/status/{id}','Modules\Publication\PublicationController@status')->name('admin.manage.publication.status');
    Route::get('publication/delete/{id}','Modules\Publication\PublicationController@delete')->name('admin.manage.publication.delete');
    Route::get('publication/available/{id}','Modules\Publication\PublicationController@available')->name('admin.manage.publication.available');

    // gallery
    Route::get('gallery','Modules\Gallery\GalleryController@index')->name('admin.manage.gallery');
    Route::get('gallery/add','Modules\Gallery\GalleryController@addView')->name('admin.manage.gallery.add.view');
    Route::post('gallery/post','Modules\Gallery\GalleryController@post')->name('admin.manage.gallery.add.post');
    Route::get('gallery/status/{id}','Modules\Gallery\GalleryController@status')->name('admin.manage.gallery.status');
    Route::get('gallery/delete/{id}','Modules\Gallery\GalleryController@delete')->name('admin.manage.gallery.delete');
    Route::get('gallery/edit/{id}','Modules\Gallery\GalleryController@edit')->name('admin.manage.gallery.edit');
    Route::post('gallery/update','Modules\Gallery\GalleryController@update')->name('admin.manage.gallery.add.update');
    Route::get('gallery/show-at-home/{id}','Modules\Gallery\GalleryController@show_home')->name('admin.manage.gallery.show.at.home');
    // administration
    Route::get('manage-administration','Modules\Admin\AdminController@index')->name('admin.manage.administration');
    Route::get('manage-administration/add','Modules\Admin\AdminController@addView')->name('admin.manage.administration.add.view');
    Route::post('manage-administration/insert','Modules\Admin\AdminController@insert')->name('admin.manage.administration.insert');
    Route::get('manage-administration/edit/{id}','Modules\Admin\AdminController@edit')->name('admin.manage.administration.edit');
    Route::post('manage-administration/update','Modules\Admin\AdminController@update')->name('admin.manage.administration.update');
    Route::get('manage-administration/delete/{id}','Modules\Admin\AdminController@delete')->name('admin.manage.administration.delete');

    // about
    Route::get('manage-about','Modules\About\AboutController@aboutView')->name('admin.manage.about.view');
    Route::post('manage-about/update','Modules\About\AboutController@aboutUpdate')->name('admin.manage.about.update');

    // donate
    Route::get('manage-donate','Modules\About\AboutController@donateView')->name('admin.manage.donate.view');
    Route::post('manage-donate/update','Modules\About\AboutController@donateUpdate')->name('admin.manage.donate.update');


    // welcome-text
    Route::get('welcome-text','Modules\About\AboutController@welcomeView')->name('welcome.text');
    Route::post('welcome-text-update','Modules\About\AboutController@welcomeUpdate')->name('welcome.text.update');


    // welcome-text
    Route::get('footer-text','Modules\About\AboutController@footerView')->name('footer.text');
    Route::post('footer-text-update','Modules\About\AboutController@footerUpdate')->name('footer.text.update');



});