<?php

namespace app\controllers;

use core\BaseController;
use app\models\User;
use core\Registration;
use core\Session;
use core\Validator;

class RegisterController extends BaseController
{
    public function showFormAction()
    {
        $this->view->render('pages/register');
    }

    public function registrationAction()
    {
        if($postData = $this->request->ispost()) {
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
                if(Registration::confirmationPasswords($postData['password'], $postData['password_confirm'])) {

                    $postData['password'] = Registration::hashPassword($postData['password']);
                    $postData['token'] = Registration::tokenGeneration(36);
                    $postData['status'] = 1;

                    $user = User::add($postData);

                    $this->redirect('/login');
                }
                else{
                    Session::sessionInit('errors', ['Пароли должны совпадать']);
                }
            }

        }
        $this->redirect('/register');
    }
}