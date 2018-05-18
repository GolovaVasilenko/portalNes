<?php

namespace app\controllers\admin;


use app\models\Permission;

class PermissionController extends AdminController
{
    public function indexAction()
    {
        $permissions = Permission::findAll();

        $this->view->render('admin/permissions/index', ['permissions' => $permissions]);
    }

    public function addAction()
    {
        $this->view->render('admin/permissions/add');
    }

    public function storeAction()
    {

        if($post = $this->request->ispost()){

            $perm  = new Permission();
            $perm->dataInit($post);
            $perm->save();

        }
        $this->redirect('/admin/permission');
    }
}