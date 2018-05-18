<?php

namespace app\controllers\admin;


use app\models\Permission;
use app\models\Role;
use core\Session;

class RoleController extends AdminController
{

    public function indexAction()
    {
        $roles = Role::findAll();

        $this->view->render('/admin/roles/index', [
            'roles' => $roles
        ]);
    }

    public function addAction()
    {
        $permissions = Permission::findAll();

        $this->view->render('/admin/roles/add', [
            'permissions' => $permissions
        ]);
    }

    public function storeAction()
    {
        if($post = $this->request->ispost()) {
            $role = new Role();
            $role->name = $post['name'];

            $id = $role->save();

            if(!empty($post['perm']))
                $role->setConnection($id, $post['perm']);

        }
        $this->redirect('/admin/role');
    }

    public function editAction($id)
    {
        $role = Role::findById($id);
        $permissions = Permission::findAll();

        if(!$role){
            Session::sessionInit('errors', ['Элемент с такими параметрами не найден']);
            $this->redirect('/admin/role');
        }

        $this->view->render('admin/roles/edit', [
            'permissions' => $permissions,
            'role' => $role,
            'activePerm' => $role->getPermissions()
        ]);
    }

    public function updateAction($id)
    {

    }

    public function deleteAction($id)
    {

    }
}