<?php

namespace app\models;

use core\BaseModel;
use core\DataBase;

class User extends BaseModel
{
    public $id;
    public $login;
    public $email;
    public $token;
    public $status;
    public $password;

    const TABLE = 'users';

    public static function add($data)
    {
        $user = new self;
        $user->dataInit(self::clearData($data));
        $id = $user->save();
        if(!empty($data['roles']))
            $user->setConnection($id, $data['roles']);
        return $user;
    }

    public static function removeById($id)
    {
        $user = self::findById($id);

        if($user){
            $user->delete();
        }
    }

    public static function removeByEmail($email)
    {
        $user = self::findByColumn('email', $email);

        if($user){
            $user->delete();
        }
    }

    public static function checkoutUser($email, $password)
    {
        return User::where(['email' => $email, 'password' => $password]);
    }

    public static function toggleStatus($id)
    {
        $user = self::findById($id);

        $user->status = $user->status ? 0 : 1;

        return $user;
    }

    public function getRoles()
    {
        $db = DataBase::getInstance();

        $sql = "SELECT r.id, r.name FROM roles r 
                INNER JOIN user_roles ur ON r.id = ur.role_id 
                INNER JOIN users u ON u.id = ur.user_id 
                WHERE u.id = :id";

        return $db->query($sql, get_called_class() , ['id' => $this->id]);
    }

    public function setConnection($userId, $rolesArray)
    {
        $db = DataBase::getInstance();
        $this->removeConnection($db, $userId);

        $values = '';
        $count = 1;

        foreach($rolesArray as $key => $value){
            $values .= '(' . $userId . ',' . $key . ')';
            if(count($rolesArray) > $count){
                $values .= ',';
            }
            $count++;
        }

        $sql = "INSERT INTO user_roles (user_id, role_id) VALUES " . $values;

        return $db->execute($sql);
    }

    protected function removeConnection($dbObj, $userId)
    {
        $sql = "DELETE FROM user_roles WHERE user_id = :user_id";

        return $dbObj->execute($sql, ['user_id' => $userId]);
    }

}