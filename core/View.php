<?php
namespace core;

class View
{
    protected $data   = array();
    public $layout    = 'main';
    public $widgets   = array();
    public $meta_data = array();

    public function render($template , $data = [])
    {
        extract($data);

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


}