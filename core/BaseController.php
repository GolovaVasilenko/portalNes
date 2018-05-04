<?php


namespace core;


class BaseController
{
    protected $view;

    protected function loadView()
    {
        $this->view = new View();
    }

    public function redirect($path)
    {
        header("Location: " . $path);
        exit;
    }
}