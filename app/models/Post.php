<?php

namespace app\models;


use core\BaseModel;

class Post extends BaseModel
{
    public $id;
    public $title;
    public $slug;
    public $body;
    public $image;
    public $cdate;
    public $meta_title;
    public $meta_desc;

    const TABLE = 'posts';
}