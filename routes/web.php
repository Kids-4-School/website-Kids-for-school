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
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//Route for Admin
Route::namespace('Admin')->prefix('admin')->middleware(['auth','auth.admin'])->name('admin.')->group(function(){

    Route::resource('/users', 'UserController',['except' => ['show','store','create']]);

});

//Route to Show Users for admin
Route::get('all/users','Admin\UserController@viewUsers')->name('view.users')->middleware(['auth','auth.admin']);

//Route for Profiles 
Route::get('/profile' , 'ProfileController@index')->name('profiles');
Route::get('/profile/create','ProfileController@create')->name('create.profile');
Route::post('/profile/new','ProfileController@store')->name('profile.new');



//Route for Services 
Route::get('/services' , 'ServicesController@index')->name('services');
Route::get('/services/all' , 'ServicesController@manageServices')->name('services.all')->middleware(['auth','auth.admin']);
Route::get('/service/create','ServicesController@create')->name('create.service');
Route::post('/service/new','ServicesController@store')->name('service.new');
Route::get('/service/edit/{id}','ServicesController@edit')->name('edit.service');
Route::post('/service/update/{id}','ServicesController@update')->name('update.service');
Route::get('/service/delete/{id}','ServicesController@destroy')->name('delete.service');

//Route for Courses 
Route::get('/courses' , 'CoursesController@index')->name('courses');
Route::get('/courses/all' , 'CoursesController@manageCourses')->name('courses.all')->middleware(['auth','auth.admin']);
Route::get('/course/create','CoursesController@create')->name('create.course');
Route::post('/course/new','CoursesController@store')->name('course.new');
Route::get('/course/show/{id}','CoursesController@show')->name('show.course');
Route::get('/course/edit/{id}','CoursesController@edit')->name('edit.course');
Route::post('/course/update/{id}','CoursesController@update')->name('update.course');
// Route::get('/video/delete/{id}','CoursesController@destroy')->name('delete.video');



