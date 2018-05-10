<?php
namespace core;

class View
{

    public $layout    = 'main';

    public $widgets   = array();

    public $meta_data = array();

    public $info;

    public $errors;

    public $old;

    protected $data   = array();

    public function render($template , $data = [])
    {
        extract($data);

        $this->info = $this->getInfo();
        $this->errors = $this->getErrors();
        $this->old = $this->getOldData();

        if(!empty($this->widgets)){
            extract($this->widgets);
        }
        if(!empty($this->meta_data)){
            extract($this->meta_data);
        }

        ob_start();
        include_once (APP . '/views/' . $template . '.php');

        $content = ob_get_contents();
        ob_end_clean();
        require_once (ROOT . '/templates/'. $this->layout . '.php');
    }

    public function getErrors()
    {
        return Session::getValue('errors') ?: null;
    }

    public function getInfo()
    {
        return Session::getValue('info') ?: null;
    }

    public function getOldData()
    {
        return Session::getValue('oldData') ?: null;
    }

}