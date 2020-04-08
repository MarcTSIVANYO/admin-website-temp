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
Route::get('/', function () {
     return view('frontend.templates.base_blue');
});

Route::resource('dashboard', 'HomeController');
// Route::get('/', function () {
//     return view('auth.login');
// });
Route::auth();
// *********************************************************
//						 **Auteur:Marc AMEDONOU**
//						**Email: marco252@pologmail.com**
// utilisateur
Route::resource('utilisateurs','utilisateursController');
Route::get('enable/{id}','utilisateursController@enable');
Route::get('desable/{id}','utilisateursController@desable');
Route::get('visible/{id}','utilisateursController@visible');


// region
Route::resource('regions','regionsController');
Route::get('visibleRegions/{id}','regionsController@visible');
// pays
Route::resource('pays','paysController');
Route::get('visiblePays/{id}','paysController@visible');
// abonners
Route::resource('abonners','abonnersController');
Route::get('visibleAbonners/{id}','abonnersController@visible');
// langues
Route::resource('langues','languesController');
Route::get('visibleLangues/{id}','languesController@visible');
// domaines
Route::resource('domaines','domainesController');
Route::get('domaines/visible/{id}','domainesController@visible');
// sous domaines
Route::resource('sous_domaines','sousdomainesController');
Route::get('sous_domaines/visible/{id}','sousdomainesController@visible');
// editer un mot de passe
Route::get('password_edit/{id}','passwordController@password_edit');
Route::put('password_update/{id}','passwordController@password_update');
Route::get('password_reset', 'passwordController@index');
Route::post('confirme','passwordController@confirme_email');
Route::get('password_replace/{id}','passwordController@password_edit');
// Accueil
Route::get('home', 'HomeController@index');
// Article
Route::resource('articles', 'articlesController');
Route::get('enable/{id}','articlesController@enable');
Route::get('desable/{id}','articlesController@desable');
Route::get('visible_articles/{id}','articlesController@visible');

// Articles seletionner pour traduire
Route::resource('article_traduits', 'article_traduitsController');
Route::get('enable_article_traduits/{id}','article_traduitsController@enable_article_traduits');
Route::get('desable_article_traduits/{id}','article_traduitsController@desable_article_traduits');
Route::get('visible_article_traduits/{id}','article_traduitsController@visible_article_traduits');
Route::get('articles_a_traduire','article_traduitsController@articles_a_traduire');
Route::get('articles_selectionner/{id}','article_traduitsController@articles_selectionner');
Route::get('lire_plus/{id}','article_traduitsController@lire_plus');
// commentaires
Route::resource('commentaires', 'commentairesController');



/****************************************************************************/
/**		Yao C. Routes	**/
/**		TYPE_USERS	**/
Route::resource('type_users','TypeUsersController');
Route::get('type_users/visible/{id}','TypeUsersController@visible');
Route::get('attribuer_type_users/{id}','TypeUsersController@type_utilisateur');
Route::post('attribuer_type_users_post','TypeUsersController@type_utilisateur_post');
Route::get('droits_type_users/{id}','TypeUsersController@droits');
Route::post('droits_type_users_post','TypeUsersController@droits_post');
Route::get('type_users/list_by/{id}','TypeUsersController@listBy');


//en attente
Route::get('articles_en_attente','ArticleTraduitController@articles_en_attente');
Route::get('historique_des_corrections','ArticleTraduitController@historique_des_corrections');
Route::get('articles_a_corriger','ArticleTraduitController@a_valider');
Route::get('articles_a_valider','ArticleTraduitController@articles_a_valider');
Route::get('historique_des_articles_valides','ArticleTraduitController@historique_des_articles_valides');
Route::get('articles_en_attente/edit/{id_articles}/{id_suggestions}','ArticleTraduitController@articles_en_attente_edit');
Route::patch('articles_en_attente/update/{id}','ArticleTraduitController@update');
Route::get('corriger/{id}','ArticleTraduitController@corriger');
Route::get('corriger_article/{id}','ArticleTraduitController@corriger_article');
Route::get('corriger_article_en_attente/{id_articles}/{id_suggestions}','ArticleTraduitController@corriger_article_en_attente');
Route::get('show/{id_articles}/{id_suggestions}','ArticleTraduitController@show');
Route::get('show_senior/{id_articles}/{id_suggestions}','ArticleTraduitController@show_senior');
Route::get('choisir_article/{id}','ArticleTraduitController@choisir_article');
Route::post('envoyer_la_correction/{id}','ArticleTraduitController@envoyer_la_correction');
Route::post('corriger_article_plutard/{id}','ArticleTraduitController@corriger_article_plutard');
Route::get('valider_article/{id}','ArticleTraduitController@valider');

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
/**		Yao C. Routes	**/
/****************************************************************************/


