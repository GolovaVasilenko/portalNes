<?php

namespace core;

use core\Session;

class Validator
{
    protected $rules = [];

    protected $errors = [];

    public function __construct($rules)
    {
        $this->rules = $rules;
    }

    public function validation($data = [])
    {
        foreach($data as $key => $value){
            if(array_key_exists($key, $this->rules)){
                $called = $this->rules[$key];
                $result = $this->$called($value, $key);
                if(-1 !== $result){
                    $this->errors[] = $result;
                }
            }
        }
        return $this->errors;
    }

    protected function required($data, $field)
    {
        return empty($data) ? 'Поле '. $field . ' должно быть заполнено' : -1;
    }

    protected function email($data, $field)
    {

        return preg_match('/.+@.+\.[a-zA-Z]+/', $data) ? -1 : 'Поле ' . $field . ' содержит не верный формат';
    }


}