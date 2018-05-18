<?php

namespace app\models;


use core\BaseModel;
use core\DataBase;

class Role extends BaseModel
{
    const TABLE = 'roles';

    public $id;

    public $name;

    public function getPermissions()
    {
        $db = DataBase::getInstance();
        $sql = "SELECT p.id, p.name FROM permissions p 
                INNER JOIN role_permissions rp ON p.id = rp.permission_id  
                INNER JOIN roles r ON r.id = rp.role_id
                WHERE p.id = :id";

        return $db->query($sql, get_called_class() , ['id' => $this->id]);
    }


}