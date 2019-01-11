<?php


namespace app\controllers\admin;


use app\models\Menu;
use app\models\MenuItems;
use core\Session;

class MenuController extends AdminController
{
    public function indexAction()
    {
        $menus = Menu::findAll();

        $this->view->render('admin/menu/index', ['menus' => $menus]);
    }

    public function addAction()
    {
        $this->view->render('admin/menu/add');
    }

    public function storeAction()
    {
        $model = new Menu();
        $model->dataInit($this->request->ispost());
        $model->save();

        Session::sessionInit('success', ['Создание меню прошло успешно']);
        $this->redirect('/admin/menu');
    }

    public function editAction($id)
    {
        $menu = Menu::findById($id);
        $this->view->render('admin/menu/edit', ['menu' => $menu]);
    }

    public function updateAction()
    {
        $id = $this->request->post('id', null);
        $model = Menu::findById($id);
        $model->dataInit($this->request->ispost());
        $model->save();

        Session::sessionInit('success', ['Редактирование меню прошло успешно']);
        $this->redirect('/admin/menu/edit/' . $id);
    }

    public function deleteAction($id)
    {
        $model = Menu::findById($id);
        $model->delete();

        Session::sessionInit('success', ['Удаление меню прошло успешно']);
        $this->redirect('/admin/menu');
    }

    public function addItemAction($id)
    {
        $menu = Menu::findById($id);
        $menu_items = $menu->items();
        $this->view->render('admin/menu/add-item', ['menu_id' => $id, 'menu_items' => $menu_items]);
    }

    public function storeItemAction()
    {
        $model = new MenuItems();

    }
}