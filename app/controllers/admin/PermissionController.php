<?php

namespace app\controllers\admin;


use app\models\Permission;
use core\Session;

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

    public function deleteAction($id)
    {
        $perm = Permission::findById($id);

        if(!$perm){
            Session::sessionInit('errors', ['Элемент с такими параметрами не найден']);
            $this->redirect('/admin/permission');
        }

        $perm->delete();

        $this->redirect('/admin/permission');
    }
}