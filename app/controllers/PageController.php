<?php

namespace app\controllers;

use core\BaseController;

class PageController extends BaseController
{
    public function homeAction()
    {
        $this->view->render('pages/home');
    }
}