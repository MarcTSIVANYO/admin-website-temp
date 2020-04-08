<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use DB;
use App\TypeUser;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /*$sql=DB::table('groupe_users')->select('*')->where('id_users','=',Auth::user()->id_users)->first();
        // dd($sql);
            if ($sql->id_type_users==1) {
                # code...
                    return view('dashboard/dashboard_juniors');
            } 
            if ($sql->id_type_users==2) {
                # code...
                    return view('dashboard/dashboard_seniors');
            } 
            if ($sql->id_type_users==3) {
                # code...
                    return view('dashboard/dashboard_traducteurs');
            }
             if ($sql->id_type_users==4) {
                # code...
                    return view('dashboard/dashboard_admin');
            }*/

            return view('templates/base');
    }
}
