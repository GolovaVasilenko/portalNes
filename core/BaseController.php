<?php


namespace core;


class BaseController
{
    protected $view;
    protected $request;

    public function __construct()
    {
        $this->view = new View();
        $this->request = new Request();
    }

    public function redirect($path)
    {
        header("Location: " . $path);
        exit;
    }
}