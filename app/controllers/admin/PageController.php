<?php

namespace app\controllers\admin;


use app\models\Page;
use core\Request;

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
        $this->redirect('/admin/page');
    }

    public function editAction()
    {

    }
}