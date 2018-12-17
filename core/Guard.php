<?php


namespace core;


use app\models\User;

class Guard
{
    public $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function can($rolesArray = array())
    {
        $roles = $this->user->getRoles();

        foreach($roles as $value) {
            if(in_array($value->name, $rolesArray)){
                return true;
            }
        }

        return false;
    }


}