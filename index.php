<?php

session_start();
error_reporting(E_ALL);
ini_set("display_errors", 1);

$query = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');

define("PUBLIC", dirname(__DIR__) . "/public");
define("CORE", dirname(__DIR__) . "/core");
//define("LIBS", dirname(__DIR__) . "/vendor/libs");
define("ROOT", dirname(__DIR__));
define("APP", dirname(__DIR__) . "/app");
