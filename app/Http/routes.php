<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::resource('dashboard', 'HomeController');

/*Route::get('/', function () {
     return view('auth.login');
 });*/
Route::resource('/', 'HomeController');
Route::auth();

// utilisateur
Route::resource('utilisateurs','utilisateursController');
Route::get('enable_users/{id}','utilisateursController@enable_users');
Route::get('edit_profile/{id}','utilisateursController@edit_profile');
Route::get('desable_users/{id}','utilisateursController@desable_users');
Route::get('visible_users/{id}','utilisateursController@visible_users');


// region
Route::resource('regions','regionsController');
Route::get('visibleRegions/{id}','regionsController@visible');
// pays
Route::resource('pays','paysController');
Route::get('visiblePays/{id}','paysController@visible');
// editer un mot de passe
Route::get('password_edit/{id}','passwordController@password_edit');
Route::put('password_update/{id}','passwordController@password_update');
Route::get('password_reset', 'passwordController@index');
Route::post('confirme','passwordController@confirme_email');
Route::get('password_replace/{id}','passwordController@password_edit');
// Accueil
Route::get('home', 'HomeController@index');

/**		TYPE_USERS	**/
Route::resource('type_users','TypeUsersController');
Route::get('type_users/visible/{id}','TypeUsersController@visible');
Route::get('attribuer_type_users/{id}','TypeUsersController@type_utilisateur');
Route::post('attribuer_type_users_post','TypeUsersController@type_utilisateur_post');
Route::get('droits_type_users/{id}','TypeUsersController@droits');
Route::post('droits_type_users_post','TypeUsersController@droits_post');
Route::get('type_users/list_by/{id}','TypeUsersController@listBy');

/**		MENUS	**/
Route::resource('menus','MenusController');
Route::get('menus/visible/{id}','MenusController@visible');

/**		SOUS_MENUS	**/
Route::resource('sous_menus','SousMenusController');
Route::get('sous_menus/visible/{id}','SousMenusController@visible');
Route::get('sous_menus/list_by/{id}','SousMenusController@listBy');

/**		Droits	**/
Route::resource('droits','DroitsController');
Route::get('droits_users/{id}','utilisateursController@droits');

/*********PARTIE D'ADMIISTRATION DU SITE WEB*******/

Route::group([
	'prefix' => 'admin', 
	'middleware' => 'auth'
	], function ()
	{ 
		Route::resource('configurations', 'Admin\\ConfigurationsController');
		Route::resource('sections', 'Admin\\SectionsController');
		Route::resource('pages', 'Admin\\PagesController');
		Route::resource('categories', 'Admin\\CategoriesController');
		Route::get('categories/list_by/{id}', 'Admin\\CategoriesController@listBy');
		Route::resource('articles', 'Admin\\ArticlesController');
		Route::get('articles/list_by/{id}', 'Admin\\ArticlesController@listBy');
		Route::resource('albums', 'Admin\\AlbumsController');		
		Route::get('albums/list_by/{id}', 'Admin\\AlbumsController@listBy');
		Route::resource('photos', 'Admin\\PhotosController');		
		Route::get('photos/list_by/{id}', 'Admin\\PhotosController@listBy');
	}); 