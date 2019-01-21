<?php


namespace app\controllers\admin;

use app\models\MenuItems;

class MenuItemsController extends AdminController
{
    public function changePositionAction()
    {
        $array = $this->request->isPost();
        $items = json_decode($array['output']);

        $this->setPosition($items);
    }

    private function setPosition($arrayData, $parent = 0)
    {
        $count = 0;

        foreach($arrayData as $item) {
            $model = MenuItems::findById($item->id);
            $model->position = $count++;
            $model->parent_id = $parent;

            $model->save();
            if(isset($item->children)) {
                $this->setPosition($item->children, $item->id);
            }

        }

    }

}