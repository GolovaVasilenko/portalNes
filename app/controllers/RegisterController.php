<?php

namespace app\controllers;

use core\BaseController;
use app\models\User;
use core\Registration;
use core\Session;

class RegisterController extends BaseController
{
    public function showFormAction()
    {
        $this->view->render('pages/register');
    }

    public function registrationAction()
    {
        if($postData = $this->request->ispost()) {
            if(Registration::confirmationPasswords($postData['password'], $postData['password_confirm'])) {
                $postData['password'] = Registration::hashPassword($postData['password']);
                $user = User::add($postData);

                $this->redirect('/login');
            }
            else{
                Session::sessionInit('errors', 'Пароли должны совпадать');
            }
        }
        $this->redirect('/register');
    }
}