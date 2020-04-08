<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\User;

use Illuminate\Support\Facades\Session;

use Illuminate\Support\Facades\Hash;

use Auth;

use DB;

class passwordController extends Controller
{

  public function index()
  {
    # code...
    return view('auth/passwords/confirmation_email');
  }
    // Function pour modifier le mot de passe utilisateur.
    public function password_edit($id)
    {
        # code...
        $utilisateurs=user::find($id);
        // dd($utilisateurs);
        return view('auth/passwords/password_edit',compact('utilisateurs'));
    }

    public function password_update(request $request,$id)
    {
        // $this->validate($request,user::rules(),user::messages());
// code de mise a jour du mo de passe
        
        if ($request->password_confirmation==$request->password) {
                    # code...
           $pass=user::find($id);
           $pass->login_users=$request->login_users;
           $pass->password=Hash::make($request->password);
           $pass->save();
           if (Auth::check()) {
            // on verifie si l'user est connecter avant de le rediriger
             # code...
           $msg="Mot de passe modifi&eacute;e avec succes !";
           Session::flash('flash_message',$msg);
           return redirect()->back();
           } else {
             # code...
            $msg="Mot de passe modifi&eacute;e avec succes reconnecter vous !";
           Session::flash('flash_message',$msg);
            return redirect()->action('HomeController@index');
           }
           
           
           
       }else{
       	$msg="Mot de passe erron&eacute; !";
         Session::flash('flash_message',$msg);
         return redirect()->back();
       }
       
        // return view('auth/password_edit',compact('pass'));
   }
   // fonction de verification de confirmation d'email

       public function confirme_email(request $request)
    {
      $email=new user();
      $email->email=$request->email;
      $utilisateurs=DB::table('users')->where('email','=',$request->email)->first();
          if ($utilisateurs==null) {
               $msg="Email erron&eacute; !";
               Session::flash('flash_message',$msg);
               return redirect()->back();
          }elseif ($utilisateurs->id_users != null && $utilisateurs->id_users > 0) {
              # code...
                $msg="Email confirm&eacute; avec succes !";
               Session::flash('flash_message',$msg);
             // return view('auth/passwords/password_edit',compact('utilisateurs'));
              // return redirect()->route('password_edit',[1]);
              return redirect()->action('passwordController@password_edit',$utilisateurs->id_users);
            
         }

    }

}
