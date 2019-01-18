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
        return MenuItems::where(['menu_id' => $this->id], ['position' => 'ASC']);
    }

    public function itemsParent()
    {
        return MenuItems::where(['menu_id' => $this->id, 'parent_id' => 0], ['position' => 'ASC']);
    }

    public function itemsChildren($parent)
    {
        return MenuItems::where(['menu_id' => $this->id, 'id' => $parent], ['position' => 'ASC']);
    }

    public function tree()
    {
        $results = [];

        $parentItems = self::items();

        foreach($parentItems as $item) {
            if($item->parent_id > 0) {
                $this->setChildren($parentItems, $item);
            }
            else {
                $results[] = $item;
            }
        }

        return $results;
    }

    public function setChildren($array, $child) {
        $results = [];
        foreach($array as $i){
            if($i->id == $child->parent_id) {
                $results[$i->id] = $i->children[$child->id] = $child;
            }
        }
    }

}