<?php

namespace core;


class Registration
{
    public static $saltPass = 'wD4y2fbex853iOfD51Es37gfd';

    public static function hashPassword($pass)
    {
        return md5($pass . self::$saltPass);
    }

    public static function confirmationPasswords($pass, $passConfirm)
    {
        return ($pass === $passConfirm);
    }

    public static function tokenGeneration($length)
    {
        return substr(str_shuffle(str_repeat($x='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length/strlen($x)) )),1,$length);
    }

}