<?php

namespace app\models;


use core\BaseModel;

class Permission extends BaseModel
{
    const TABLE = 'permissions';

    public $id;

    public $name;
}