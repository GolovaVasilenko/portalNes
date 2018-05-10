<?php

namespace app\models;

use core\BaseModel;

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
        $user->save();
        return $user;
    }

    public function removeById($id)
    {
        $user = self::findById($id);

        if($user){
            $user->delete();
        }
    }

    public function removeByEmail($email)
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
}