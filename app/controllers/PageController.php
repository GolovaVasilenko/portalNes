<?php

namespace app\controllers;

use core\BaseController;
use core\Session;

class PageController extends BaseController
{
    public function homeAction()
    {
        var_dump(Session::getValue('currentUser'));
        $this->view->render('pages/home');
    }
}