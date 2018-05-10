<?php


namespace app\controllers;


use core\BaseController;
use core\Auth;
use core\Session;
use core\Validator;

class AuthController extends BaseController
{
    public function loginAction()
    {
        if($postData = $this->request->ispost()){
            $valid = new Validator([
                'login' => 'required',
                'email' => 'email',
                'password' => 'required',
            ]);
            $errors = $valid->validation($postData);

            if(!empty($errors)){
                Session::sessionInit('errors', $errors);
            }
            else {
                $user = Auth::checkUser($postData['email'], $postData['password']);
                if(!empty($user)){
                    Session::sessionInit('currentUser', $user->id);
                    $this->redirect('/');
                }
                else {
                    Session::sessionInit('errors', ['Не верный логин или пароль']);
                }
            }
        }

        $this->view->render('pages/auth');
    }


}