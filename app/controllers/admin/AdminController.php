<?php

namespace app\controllers\admin;

use core\BaseController;
use core\Auth;

class AdminController extends BaseController
{
    public function __construct()
    {
        if(!Auth::isAuth()){
            $this->redirect('/login');
        }
        parent::__construct();
        $this->view->layout = 'admin';
    }

    public function indexAction()
    {
        $this->view->render('admin/dashboard/index');

    }
}