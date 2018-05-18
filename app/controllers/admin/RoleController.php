<?php

namespace app\controllers\admin;


use app\models\Role;

class RoleController extends AdminController
{

    public function indexAction()
    {
        $roles = Role::findAll();

        $this->view->render('/admin/roles/index', [
            'roles' => $roles
        ]);
    }
}