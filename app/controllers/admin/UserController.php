<?php

namespace app\controllers\admin;

use app\models\User;
use core\Errors;
use core\Session;
use core\Validator;
use core\Registration;

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
            else {
                $postData['password'] = Registration::hashPassword($postData['password']);
                $postData['token'] = 1;
                $postData['status'] = 1;
                $user = User::add($postData);
                $this->redirect('/admin/user');
            }
        }
        $this->redirect('/admin/user/add');
    }

    public function editAction($id)
    {
        $user = User::findById($id);
        if(!$user){
            Session::sessionInit('errors', ['Пользователь не найден']);
            $this->redirect('/admin/user');
        }

        $this->view->render('admin/users/edit', ['user' => $user]);
    }

    public function updateAction($id)
    {
        if($postData = $this->request->ispost()){
            $user = User::findById($id);
            $valid = new Validator([
                'login' => 'required',
                'email' => 'email',
            ]);
        }
        $errors = $valid->validation($postData);

        if(!empty($errors)){
            Session::sessionInit('errors', $errors);
        }
        else {

            $user->login = $postData['login'];
            $user->email = $postData['email'];
            $user->save();
            $this->redirect('/admin/user/edit/'. $id);
        }
    }

    public function statusAction($id)
    {
        $user = User::toggleStatus($id);
        $user->save();

        $this->redirect('/admin/user');
    }

    public function deleteAction($id)
    {
        User::removeById($id);

        $this->redirect('/admin/user');
    }
}