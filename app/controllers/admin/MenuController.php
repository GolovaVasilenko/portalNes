<?php


namespace app\controllers\admin;


use app\models\Menu;
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

    public function store()
    {
        $model = new Menu();
        $model->dataInit($this->request->ispost());
        $model->save();

        Session::sessionInit('success', ['Создание меню прошло успешно']);
        $this->redirect('/admin/menu');
    }
}