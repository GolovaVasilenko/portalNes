<?php

namespace app\controllers\Admin;

use core\BaseController;
use core\Auth;

class AdminController extends BaseController
{
    public function __construct()
    {
        if(!Auth::isAuth()){
            $this->redirect('/login');
        }
    }

    public function indexAction()
    {

    }
}