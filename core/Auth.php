<?php

namespace core;

use app\models\User;

class Auth
{

    public static function isAuth()
    {
        return Session::getValue('currentUser');
    }

    public static function getUser()
    {
        return User::findById(Session::getValue('currentUser'));
    }

    public static function checkUser($email, $password)
    {
        $password = Registration::hashPassword($password);
        return User::checkoutUser($email, $password);
    }
}