<?php

namespace app\widgets\Menu;

class MenuWidget
{
    protected $tpl = '';

    protected $menuHtml;

    protected $container = 'ul';

    protected $prepend = '';

    protected $class = 'menu-site';

    protected $data;

    protected $attrs = [];

    public function __construct($data, $options = [])
    {
        $this->tpl = __DIR__ . '/tpl/menu_tpl.php';
        $this->getOptions($options);
        $this->data = $data;
        $this->run();
    }

    protected function getOptions($options)
    {
        foreach($options as $key => $value){
            if(property_exists($this, $key)) {
                $this->$key = $value;
            }
        }
    }

    protected function run()
    {
        //To do cache data
        $this->menuHtml = $this->getMenuHtml($this->data, ' ');
        $this->output();
    }

    protected function getMenuHtml($tree, $tab = '')
    {
        $str = '';
        foreach($tree as $id => $category) {
            $str .= $this->catToTemplate($category, $tab, $id);
        }
        return $str;
    }
    protected function catToTemplate($category, $tab, $id)
    {
        ob_start();
        require $this->tpl;
        return ob_get_clean();
    }

    protected function output() {
        $attrs = '';
        if(!empty($this->attrs)){
            foreach ($this->attrs as $k => $v){
                $attrs .= ' ' . $k . '="' . $v . '"';
            }
        }
        echo "<{$this->container} class={$this->class} {$attrs}>";
        echo $this->prepend;
        echo $this->menuHtml;
        echo "</{$this->container}>";
    }
}