<?php

namespace app\controllers;

use core\AppController;

class PageController extends AppController
{
    public function homeAction()
    {
        return $this->view->render('pages/home');
    }
}