<?php

namespace app\controllers\admin;

use app\models\Role;
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
        $roles = Role::findAll();

        $this->view->render('admin/users/add', [
            'roles' => $roles
        ]);
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
        $roles = Role::findAll();

        $user = $this->getElementById($id, User::class, 'user');

        $activeRoles = $user->getRoles();

        $this->view->render('admin/users/edit', [
            'user' => $user,
            'roles' => $roles,
            'activeRoles' => $activeRoles
        ]);
    }

    public function updateAction($id)
    {
        if($postData = $this->request->ispost()){
            $user = $this->getElementById($id, User::class, 'user');
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
            $user->status = $postData['status'];
            $user->save();

            if(!empty($postData['roles']))
                $user->setConnection($id, $postData['roles']);

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