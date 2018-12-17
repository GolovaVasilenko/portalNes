<?php

namespace app\controllers\admin;


use app\models\Page;
use core\Session;

class PageController extends AdminController
{
    public function indexAction()
    {
        $pages = Page::findAll();

        $this->view->render('admin/pages/index', ['pages' => $pages]);
    }

    public function addAction()
    {
        $this->view->render('admin/pages/add');
    }

    public function createAction()
    {
        $modelPage = new Page();
        $modelPage->dataInit($this->request->ispost());
        $modelPage->save();

        Session::sessionInit('success', ['Создание новой страницы прошло успешно']);
        $this->redirect('/admin/page');
    }

    public function editAction($id)
    {
        $this->view->render('admin/pages/edit', [
            'page' => Page::findById($id)
        ]);
    }

    public function updateAction()
    {
        $id = $this->request->post('id', null);
        $modelPage = Page::findById($id);
        $modelPage->dataInit($this->request->ispost());
        $modelPage->save();

        Session::sessionInit('success', ['Редактирование страницы прошло успешно']);
        $this->redirect('/admin/page/edit/' . $id);
    }

    public function deleteAction($id)
    {
        $modelPage = Page::findById($id);
        $modelPage->delete();

        Session::sessionInit('success', ['Удаление страницы прошло успешно']);
        $this->redirect('/admin/page');
    }
}