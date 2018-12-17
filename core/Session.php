<?php

namespace core;


class Session
{
    public static function sessionInit($key, $value)
    {
        $_SESSION[$key] = $value;
    }

    public static function getValue($key)
    {
        if(!empty($_SESSION[$key]))
            return $_SESSION[$key];
        return null;
    }

    public static function sessionRemove($key)
    {
        unset($_SESSION[$key]);
    }

    public static function flashErrors()
    {
        $html = '<div class="alert alert-danger">';
        foreach($_SESSION['errors'] as $item) {
            $html .= '<p>' . $item . '</p>';
        }
        $html .= '</div>';
        self::sessionRemove('errors');
        echo $html;

    }

    public static function flashSuccess()
    {
        $html = '<div class="alert alert-success">';
        foreach($_SESSION['success'] as $item) {
            $html .= '<p>' . $item . '</p>';
        }
        $html .= '</div>';
        self::sessionRemove('success');
        echo $html;
    }
}