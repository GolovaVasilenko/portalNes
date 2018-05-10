<?php


namespace app\controllers\admin;


use app\models\User;
use core\Session;
use core\Validator;

class UserController extends AdminController
{
    public function indexAction()
    {
        $users = User::findAll();
        $this->view->render('admin/users/index', ['users' => $users]);
    }

    public function addAction()
    {
        $this->view->render('admin/users/add');
    }

    public function storeAction()
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
        }
    }
}