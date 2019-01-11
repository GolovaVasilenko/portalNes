<?php


namespace app\models;


use core\BaseModel;

class Menu extends BaseModel
{
    public $id;
    public $name;

    const TABLE = 'menus';

    public function items()
    {
        return MenuItems::where(['menu_id' => $this->id]);
    }
}