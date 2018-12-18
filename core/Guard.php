<?php


namespace core;


class Guard
{
    public static function can($rolesArray = array())
    {
        $user = Auth::getUser();
        if($user) {
            $roles = $user->getRoles();

            foreach($roles as $value) {
                if(in_array($value->name, $rolesArray)){
                    return true;
                }
            }
        }
        return false;
    }


}