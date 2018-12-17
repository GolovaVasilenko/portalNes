<?php

namespace app\models;

use core\BaseModel;
use core\DataBase;

class Page extends BaseModel
{
    public $id;
    public $title;
    public $body;
    public $slug;
    public $meta_title;
    public $meta_desc;

    const TABLE = 'pages';
}