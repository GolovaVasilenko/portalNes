<?php


namespace app\models;


use core\BaseModel;

class MenuItems extends BaseModel
{
    const TABLE = 'menu_items';

    public $id;
    public $label;
    public $link;
}