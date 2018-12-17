<?php

namespace app\controllers;

use core\BaseController;
use core\Session;

class PageController extends BaseController
{
    public function homeAction()
    {
        $this->view->render('pages/home');
    }
}