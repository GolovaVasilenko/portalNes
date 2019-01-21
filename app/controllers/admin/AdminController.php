<?php

namespace app\controllers\admin;

use core\BaseController;
use core\Auth;
use core\Guard;
use core\Session;

class AdminController extends BaseController
{
    public function __construct()
    {

        if(!Auth::isAuth() && Guard::can(['manager', 'admin'])){
            $this->redirect('/login');
        }
        parent::__construct();
        $this->view->layout = 'admin';

    }

    public function indexAction()
    {
        $this->view->render('admin/dashboard/index');
    }

    protected function getElementById($id, $class, $redirect = '')
    {
        $obj = $class::findById($id);
        if(!$obj){
            Session::sessionInit('errors', ['Элемент с такими параметрами не найден']);
            $this->redirect('/admin/' . $redirect);
        }
        return $obj;
    }
}