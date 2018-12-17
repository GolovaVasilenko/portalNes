<?php

namespace app\controllers\admin;


use app\models\Page;

class PageController extends AdminController
{
    public function indexAction()
    {
        $pages = Page::findAll();

        $this->view->render('admin/pages/index', ['pages' => $pages]);
    }
}