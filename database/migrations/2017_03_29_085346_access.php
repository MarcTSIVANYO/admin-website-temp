<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Access extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->increments('id_menus');
            $table->string('titre_menus',100);
            $table->string('libelle_menus',200);
            $table->string('lien_menus',200);
            $table->integer('indice_menus');
            $table->boolean('publier_menus')->default(true);
            $table->boolean('visible_menus')->default(true);
            $table->timestamps();
        });

        Schema::create('domaines', function (Blueprint $table) {
            $table->increments('id_domaines')->unsigned();
            $table->string('titre_domaines',100);
            $table->string('description_domaines',255);
            $table->boolean('publier_domaines')->default(true);
            $table->boolean('visible_domaines')->default(true);
            $table->timestamps();
        });

        

        Schema::create('type_users', function (Blueprint $table) {
            $table->increments('id_type_users')->unsigned();
            $table->string('libelle_type_users',150);
            $table->boolean('visible_type_users')->default(true);
            $table->timestamps();
        });

       
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id_users')->unsigned();
            $table->string('nom_users',255);
            $table->string('prenoms_users',255);
            $table->string('sexe_users',255);
            $table->string('date_users',255);
            $table->string('email',255);
            $table->string('adresse_users',255);
            $table->string('contact_users',255);
            $table->string('logo_users',255);
            $table->string('ville_users',255);
            $table->string('login_users', 64)->unique()->nullable();
            $table->string('password', 64)->nullable();
            $table->rememberToken()->nullable();
            $table->boolean('publier_users')->default(true);
            $table->boolean('visible_users')->default(true);
            $table->timestamps();
        });

        Schema::create('regions', function (Blueprint $table) {
            $table->increments('id_regions')->unsigned();
            $table->string('titre_regions',255);
            $table->boolean('publier_regions')->default(true);
            $table->boolean('visible_regions')->default(true);
            $table->timestamps();
        });

       
        Schema::create('sous_menus', function (Blueprint $table) {
            $table->increments('id_sous_menus')->unsigned();
            $table->string('titre_sous_menus',255);
            $table->string('libelle_sous_menus',200);
            $table->string('lien_sous_menus',200);
            $table->integer('indice_sous_menus');
            $table->boolean('publier_sous_menus')->default(true);
            $table->boolean('visible_sous_menus')->default(true);
            $table->timestamps();

            $table->integer('id_menus')->unsigned();
            $table->foreign('id_menus')->references('id_menus')->on('menus')->onupdate('cascade')->onDelete('cascade');
        });

        Schema::create('sous_domaines', function (Blueprint $table) {
            $table->increments('id_sous_domaines')->unsigned();
            $table->string('titre_sous_domaines',255);
            $table->boolean('publier_sous_domaines')->default(true);
            $table->boolean('visible_sous_domaines')->default(true);
            $table->timestamps();

            $table->integer('id_domaines')->unsigned();
            $table->foreign('id_domaines')->references('id_domaines')->on('domaines')->onupdate('cascade')->onDelete('cascade');;
        });


        Schema::create('pays', function (Blueprint $table) {
            $table->increments('id_pays')->unsigned();
            $table->string('titre_pays',255);
            $table->boolean('publier_pays')->default(true);
            $table->boolean('visible_pays')->default(true);
            $table->timestamps();

            $table->integer('id_regions')->unsigned();
            $table->foreign('id_regions')->references('id_regions')->on('regions')->onupdate('cascade')->onDelete('cascade');;
        });


        Schema::create('droits', function (Blueprint $table) {
            $table->increments('id_droits')->unsigned();
            $table->boolean('publier_droits')->default(true);
            $table->boolean('visible_droits')->default(true);
            $table->timestamps();


            $table->integer('id_sous_menus')->unsigned();
            $table->foreign('id_sous_menus')->references('id_sous_menus')->on('sous_menus')->onupdate('cascade')->onDelete('cascade');

            $table->integer('id_users')->unsigned();
            $table->foreign('id_users')->references('id_users')->on('users')->onupdate('cascade')->onDelete('cascade');
         });

        Schema::create('groupe_users', function (Blueprint $table) {
            $table->increments('id_groupe_users')->unsigned();
            $table->boolean('publier_groupe_users')->default(true);
            $table->boolean('visible_groupe_users')->default(true);
            $table->timestamps();

            $table->integer('id_users')->unsigned();
            $table->foreign('id_users')->references('id_users')->on('users')->onupdate('cascade')->onDelete('cascade');

            $table->integer('id_type_users')->unsigned();
            $table->foreign('id_type_users')->references('id_type_users')->on('type_users')->onupdate('cascade')->onDelete('cascade');
        });


    } 
    /**
     * Reverse the migrations.
     *
     * @return void
     
    public function down()
    {
        Schema::dropIfExists('');
    }*/
}
