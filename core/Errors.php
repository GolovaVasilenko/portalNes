<?php

namespace core;


class Errors extends \Exception
{
    protected $message = '';
    protected $code;
    protected $view;

    public function __construct($message, $code = '404')
    {
        $this->message = $message;
        $this->code = $code;
        $this->view = new View;
    }

    public function index()
    {
        $code = $this->code;
        $message = $this->message;
        $this->view->render('error/index', ['code' => $code, 'message' => $message]);
    }
}