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
        $permissions = Permission::findAll();

        $role = $this->getElementById($id, Role::class, 'role');

        $this->view->render('admin/roles/edit', [
            'permissions' => $permissions,
            'role' => $role,
            'activePerm' => $role->getPermissions()
        ]);
    }

    public function updateAction($id)
    {
        if($post = $this->request->ispost()) {

            $role = $this->getElementById($id, Role::class, 'role');

            $role->name = $post['name'];

            $role->save();

            if(!empty($post['perm']))
                $role->setConnection($id, $post['perm']);

        }
        $this->redirect('/admin/role');
    }

    public function deleteAction($id)
    {
        $role = $this->getElementById($id, Role::class, 'role');

        $role->delete();

        $this->redirect('/admin/role');
    }
}