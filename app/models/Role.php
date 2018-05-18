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
                WHERE r.id = :id";

        return $db->query($sql, get_called_class() , ['id' => $this->id]);
    }

    public function setConnection($roleId, $permArrayId)
    {
        $db = DataBase::getInstance();
        $this->removeConnection($db, $roleId);
        $values = '';
        $count = 1;

        foreach($permArrayId as $key => $value){
            $values .= '(' . $roleId . ',' . $key . ')';
            if(count($permArrayId) > $count){
                $values .= ',';
            }
            $count++;
        }

        $sql = "INSERT INTO role_permissions (role_id, permission_id) VALUES " . $values;

        return $db->execute($sql);

    }

    protected function removeConnection($dbObj, $roleId)
    {
        $sql = "DELETE FROM role_permissions WHERE role_id = :role_id";

        return $dbObj->execute($sql, ['role_id' => $roleId]);
    }
}