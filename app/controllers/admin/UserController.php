<?php


namespace app\controllers\admin;


use app\models\User;

class UserController extends AdminController
{
    public function indexAction()
    {
        $users = User::findAll();
        $this->view->render('admin/users/index', ['users' => $users]);
    }
}